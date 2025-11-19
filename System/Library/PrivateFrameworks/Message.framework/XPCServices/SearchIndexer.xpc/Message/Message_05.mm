uint64_t sub_10005A5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005A650()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10005A6C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_10005A6FC()
{
  result = sub_100093190(&off_100598F68);
  qword_1005DDF00 = result;
  return result;
}

uint64_t sub_10005A724()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004D0FC0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = &type metadata for DetectChangesToMessages;
  sub_100026044();

  sub_1004A6674();
  *(v1 + 80) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v1 + 128) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v1 + 176) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  *(v1 + 224) = type metadata accessor for FetchMessages(0);

  sub_1004A6674();
  *(v1 + 272) = type metadata accessor for FindMissingMessages(0);

  sub_1004A6674();
  *(v1 + 320) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v1;
}

uint64_t sub_10005A8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v32 = a2;
  v35 = a4;
  v5 = sub_10000C9C0(&qword_1005CE540, &unk_1004D0FD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v10 = *(MessagesVMa - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(MessagesVMa);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v34 = *(SearchResult - 8);
  v14 = *(v34 + 64);
  v15 = __chkstk_darwin(SearchResult);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 28);
  v19 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v29 = v20 + 56;
  v30 = v21;
  v21(v17 + v18, 1, 1, v19);
  *&v36 = a1;
  *(&v36 + 1) = sub_10005EC80;
  *&v37 = 0;
  *(&v37 + 1) = sub_100060E90;
  *&v38 = 0;
  *(&v38 + 1) = sub_100060EF4;
  v39 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10005EE60;
  *(v22 + 24) = 0;
  v23 = v37;
  *(v22 + 32) = v36;
  *(v22 + 48) = v23;
  *(v22 + 64) = v38;
  *(v22 + 80) = v39;
  v40[0] = a1;
  v40[1] = sub_10005EC80;
  v40[2] = 0;
  v40[3] = sub_100060E90;
  v40[4] = 0;
  v40[5] = sub_100061824;
  v40[6] = v22;
  swift_bridgeObjectRetain_n();
  sub_10005EEB0(v40, v8);
  if ((*(v10 + 48))(v8, 1, MessagesVMa) == 1)
  {

    sub_100025F40(v8, &qword_1005CE540, &unk_1004D0FD0);
    sub_100025F40(v17 + v18, &qword_1005CD510, &unk_1004CF2E0);
    return (*(v34 + 56))(v35, 1, 1, SearchResult);
  }

  else
  {
    v25 = v31;
    sub_100061968(v8, v31, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v26 = sub_100065B64(&v36);

    *v17 = v26;
    sub_100061968(v25, v17 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    v27 = v17 + *(SearchResult + 24);
    *v27 = v32;
    v27[8] = v33 & 1;
    sub_100025F40(v17 + v18, &qword_1005CD510, &unk_1004CF2E0);
    v30(v17 + v18, 1, 1, v19);
    v28 = v35;
    sub_100061830(v17, v35, type metadata accessor for FetchSearchResultMessages.Requests);
    (*(v34 + 56))(v28, 0, 1, SearchResult);
    return sub_100061898(v17, type metadata accessor for FetchSearchResultMessages.Requests);
  }
}

void sub_10005AD30(uint64_t a1)
{
  v2 = v1;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v5 = *(*(SearchResultMessages - 8) + 64);
  __chkstk_darwin(SearchResultMessages);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v67 - v8;
  v67 = type metadata accessor for MailboxTaskLogger(0);
  v9 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v67 - v23;
  v25 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v70 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v72 = &v67 - v30;
  __chkstk_darwin(v31);
  v73 = &v67 - v32;
  v71 = SearchResultMessages;
  v33 = v2 + *(SearchResultMessages + 48);
  sub_10005B6BC(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100025F40(v24, &qword_1005CD518, &qword_1004CF2F0);
    sub_100061830(a1, v14, type metadata accessor for MailboxTaskLogger);
    sub_100061830(a1, v11, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v34 = v68;
    sub_100061830(v2, v68, type metadata accessor for FetchSearchResultMessages);
    v35 = sub_1004A4A54();
    v36 = sub_1004A6034();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v37 = 68159491;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v38 = v67;
      v39 = &v11[*(v67 + 20)];
      *(v37 + 10) = *v39;
      *(v37 + 11) = 2082;
      v40 = &v14[*(v38 + 20)];
      *(v37 + 13) = sub_10015BA6C(*(v40 + 1), *(v40 + 2), &v76);
      *(v37 + 21) = 1040;
      *(v37 + 23) = 2;
      *(v37 + 27) = 512;
      LOWORD(v39) = *(v39 + 12);
      sub_100061898(v11, type metadata accessor for MailboxTaskLogger);
      *(v37 + 29) = v39;
      *(v37 + 31) = 2160;
      *(v37 + 33) = 0x786F626C69616DLL;
      *(v37 + 41) = 2085;
      v41 = *(v40 + 4);
      LODWORD(v39) = *(v40 + 10);

      sub_100061898(v14, type metadata accessor for MailboxTaskLogger);
      v74 = v41;
      v75 = v39;
      v42 = sub_1004A5824();
      v44 = sub_10015BA6C(v42, v43, &v76);

      *(v37 + 43) = v44;
      *(v37 + 51) = 2048;
      v45 = *(v71 + 48);
      SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
      v47 = v70;
      sub_10000E268(v34 + v45 + *(SearchResult + 20), v70, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v48 = MessageIdentifierSet.count.getter();
      sub_100025F40(v47, &unk_1005D91B0, &unk_1004CF400);
      sub_100061898(v34, type metadata accessor for FetchSearchResultMessages);
      *(v37 + 53) = v48;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, no UIDs to fetch.", v37, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100061898(v34, type metadata accessor for FetchSearchResultMessages);
      sub_100061898(v11, type metadata accessor for MailboxTaskLogger);

      sub_100061898(v14, type metadata accessor for MailboxTaskLogger);
    }
  }

  else
  {
    v49 = v73;
    sub_100025FDC(v24, v73, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061830(a1, v20, type metadata accessor for MailboxTaskLogger);
    sub_100061830(a1, v17, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v50 = v69;
    sub_100061830(v2, v69, type metadata accessor for FetchSearchResultMessages);
    sub_10000E268(v49, v72, &qword_1005CD1D0, &unk_1004CF2C0);
    v51 = sub_1004A4A54();
    v52 = sub_1004A6034();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v53 = 68159747;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      v54 = v67;
      v55 = &v17[*(v67 + 20)];
      *(v53 + 10) = *v55;
      *(v53 + 11) = 2082;
      v56 = &v20[*(v54 + 20)];
      *(v53 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), &v76);
      *(v53 + 21) = 1040;
      *(v53 + 23) = 2;
      *(v53 + 27) = 512;
      LOWORD(v55) = *(v55 + 12);
      sub_100061898(v17, type metadata accessor for MailboxTaskLogger);
      *(v53 + 29) = v55;
      *(v53 + 31) = 2160;
      *(v53 + 33) = 0x786F626C69616DLL;
      *(v53 + 41) = 2085;
      v57 = *(v56 + 4);
      LODWORD(v55) = *(v56 + 10);

      sub_100061898(v20, type metadata accessor for MailboxTaskLogger);
      v74 = v57;
      v75 = v55;
      v58 = sub_1004A5824();
      v60 = sub_10015BA6C(v58, v59, &v76);

      *(v53 + 43) = v60;
      *(v53 + 51) = 2048;
      v61 = *(v71 + 48);
      v62 = v50 + v61 + *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
      v63 = v70;
      sub_10000E268(v62, v70, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v64 = MessageIdentifierSet.count.getter();
      sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
      sub_100061898(v50, type metadata accessor for FetchSearchResultMessages);
      *(v53 + 53) = v64;
      *(v53 + 61) = 2048;
      v65 = v72;
      v66 = MessageIdentifierSet.count.getter();
      sub_100025F40(v65, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v53 + 63) = v66;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, %ld UIDs to fetch.", v53, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v72, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100061898(v50, type metadata accessor for FetchSearchResultMessages);
      sub_100061898(v17, type metadata accessor for MailboxTaskLogger);

      sub_100061898(v20, type metadata accessor for MailboxTaskLogger);
    }

    sub_100025F40(v73, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}

uint64_t sub_10005B6BC@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v58 - v6;
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v58 - v21;
  __chkstk_darwin(v22);
  v24 = &v58 - v23;
  __chkstk_darwin(v25);
  v27 = &v58 - v26;
  __chkstk_darwin(v28);
  v30 = &v58 - v29;
  __chkstk_darwin(v31);
  v64 = &v58 - v32;
  __chkstk_darwin(v33);
  v65 = &v58 - v34;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v35 = *(SearchResult + 20);
  v66 = v1;
  v36 = v1 + v35;
  sub_10000E268(v1 + v35, v15, &qword_1005CD1D0, &unk_1004CF2C0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MessageIdentifierSet.subtracting(_:)(v36 + *(MessagesVMa + 20), v27);
  sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v36 + *(MessagesVMa + 24), v9, &qword_1005CD510, &unk_1004CF2E0);
  v63 = v17;
  v38 = *(v17 + 48);
  if (v38(v9, 1, v16) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v38(v9, 1, v16) != 1)
    {
      sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v9, v24, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.subtracting(_:)(v24, v30);
  sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
  v39 = SearchResult;
  v40 = v66;
  v41 = v62;
  sub_10000E268(v66 + *(SearchResult + 28), v62, &qword_1005CD510, &unk_1004CF2E0);
  v42 = v38(v41, 1, v16);
  v43 = v61;
  if (v42 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v44 = v38(v41, 1, v16);
    v45 = v64;
    if (v44 != 1)
    {
      sub_100025F40(v41, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v41, v61, &unk_1005D91B0, &unk_1004CF400);
    v45 = v64;
  }

  MessageIdentifierSet.subtracting(_:)(v43, v45);
  sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
  v46 = (v40 + *(v39 + 24));
  if (v46[1])
  {
    v47 = v68;
    (*(v63 + 56))(v68, 1, 1, v16);
    sub_100016D2C();
    v48 = v67;
    sub_1004A7114();
    v49 = v38(v47, 1, v16);
    v50 = v65;
    if (v49 != 1)
    {
      sub_100025F40(v47, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v73 = *v46;
    v51 = sub_100016948();
    v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v51);
    sub_100016D2C();
    v52 = v68;
    sub_1004A7124();
    (*(v63 + 56))(v52, 0, 1, v16);
    v48 = v67;
    sub_100025FDC(v52, v67, &unk_1005D91B0, &unk_1004CF400);
    v50 = v65;
  }

  MessageIdentifierSet.subtracting(_:)(v48, v50);
  sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v50, &unk_1005D91B0, &unk_1004CF400);
    v56 = 1;
    v55 = v71;
  }

  else
  {
    v53 = v59;
    sub_100025FDC(v50, v59, &unk_1005D91B0, &unk_1004CF400);
    v54 = v53;
    v55 = v71;
    sub_100025FDC(v54, v71, &qword_1005CD1D0, &unk_1004CF2C0);
    v56 = 0;
  }

  return (*(v69 + 56))(v55, v56, 1, v70);
}

uint64_t sub_10005BE0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v69 = &v61 - v8;
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v61 - v14;
  __chkstk_darwin(v15);
  v70 = &v61 - v16;
  v17 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for NewServerMessages();
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  __chkstk_darwin(v21);
  v71 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v61 - v26;
  v28 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v61 - v33;
  __chkstk_darwin(v35);
  v37 = &v61 - v36;
  if (sub_1001120C4(a1, a2))
  {
    goto LABEL_15;
  }

  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v66 = v3;
  v38 = v3 + SearchResultMessages[12];
  sub_10005CCD4(v37);
  v62 = v10;
  v63 = v9;
  v64 = *(v10 + 48);
  v39 = v64(v37, 1, v9);
  sub_100025F40(v37, &qword_1005CD518, &qword_1004CF2F0);
  if (v39 == 1 || (SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0), sub_10000E268(v38 + *(SearchResult + 28), v27, &qword_1005CD510, &unk_1004CF2E0), v41 = 1, v42 = (*(v72 + 48))(v27, 1, v73), sub_100025F40(v27, &qword_1005CD510, &unk_1004CF2E0), v42 != 1))
  {
    v43 = SearchResultMessages[13];
    sub_10000E268(v66 + v43, v20, &qword_1005CE3B0, &unk_1004D1010);
    if ((*(v74 + 48))(v20, 1, v75) == 1)
    {
      sub_100025F40(v20, &qword_1005CE3B0, &unk_1004D1010);
      sub_10005B6BC(v34);
      v44 = v63;
      if (v64(v34, 1, v63) == 1)
      {
        v31 = v34;
LABEL_14:
        sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
LABEL_15:
        v41 = 1;
        goto LABEL_16;
      }

      sub_100025FDC(v34, v70, &qword_1005CD1D0, &unk_1004CF2C0);
      v46 = v69;
      MessageIdentifierSet.suffix(_:)(47, v73, v69);
      if (MessageIdentifierSet.count.getter() < 1)
      {
        sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
        v48 = 1;
      }

      else
      {
        v47 = v68;
        sub_100025FDC(v46, v68, &unk_1005D91B0, &unk_1004CF400);
        sub_100025FDC(v47, v31, &qword_1005CD1D0, &unk_1004CF2C0);
        v48 = 0;
      }

      (*(v62 + 56))(v31, v48, 1, v44);
      if (v64(v31, 1, v44) == 1)
      {
        sub_100025F40(v70, &qword_1005CD1D0, &unk_1004CF2C0);
        goto LABEL_14;
      }

      v51 = v67;
      sub_100025FDC(v31, v67, &qword_1005CD1D0, &unk_1004CF2C0);
      v52 = v66;
      v53 = *(v66 + 40);
      LODWORD(v73) = *(v66 + 48);
      v54 = v75;
      v45 = v71;
      sub_10000E268(v51, v71 + v75[5], &qword_1005CD1D0, &unk_1004CF2C0);
      v55 = SearchResultMessages[10];
      v56 = (v52 + SearchResultMessages[9]);
      LODWORD(v68) = *v56;
      LODWORD(v64) = v56[1];
      LODWORD(v63) = v56[2];
      v57 = v56[3];
      v58 = v56[4];
      LODWORD(v72) = *(v52 + v55);
      LODWORD(v69) = *(v52 + SearchResultMessages[11]);
      v59 = v54[9];

      sub_100025F40(v51, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v70, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v45 + v59) = _swiftEmptyArrayStorage;
      *v45 = v53;
      *(v45 + 8) = v73;
      v60 = (v45 + v54[6]);
      *v60 = v68;
      v60[1] = v64;
      v60[2] = v63;
      v60[3] = v57;
      v60[4] = v58;
      *(v45 + v54[7]) = v72;
      *(v45 + v54[8]) = v69;
      sub_100025F40(v52 + v43, &qword_1005CE3B0, &unk_1004D1010);
      sub_100061830(v45, v52 + v43, type metadata accessor for NewServerMessages);
      (*(v74 + 56))(v52 + v43, 0, 1, v54);
    }

    else
    {
      v45 = v71;
      sub_100061968(v20, v71, type metadata accessor for NewServerMessages);
    }

    sub_1000FAA84(v76);
    sub_100061898(v45, type metadata accessor for NewServerMessages);
    v41 = 0;
  }

LABEL_16:
  v49 = sub_10000C9C0(&qword_1005CE828, &unk_1004D1148);
  return (*(*(v49 - 8) + 56))(v76, v41, 1, v49);
}

const mach_header_64 *sub_10005C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a1;
  v66 = a3;
  v7 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v61 - v9;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v63 = *(SearchResult - 8);
  v64 = SearchResult;
  v12 = *(v63 + 64);
  __chkstk_darwin(SearchResult);
  v62 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v61 - v16;
  v18 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v61 - v20;
  v22 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v61 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v61 - v27;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v30 = *(SearchResultMessages + 48);
  v67 = v4;
  sub_10005CCD4(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v31 = &qword_1005CD518;
    v32 = &qword_1004CF2F0;
    v33 = v21;
  }

  else
  {
    sub_100025FDC(v21, v28, &qword_1005CD1D0, &unk_1004CF2C0);
    v68 = 1;
    if ((sub_10001F940(0x100000000uLL, a2, a4) & 1) == 0)
    {
      v38 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v39 = *(v38 + 48);
      v40 = *(v67 + 24);
      *v41 = *(v67 + 16);
      v41[1] = v40;
      sub_100025FDC(v28, v41 + v39, &qword_1005CD1D0, &unk_1004CF2C0);

      return &_mh_execute_header;
    }

    v31 = &qword_1005CD1D0;
    v32 = &unk_1004CF2C0;
    v33 = v28;
  }

  sub_100025F40(v33, v31, v32);
  v35 = v65;
  v34 = v66;
  if (sub_100019FEC(v65, a2, v66))
  {
    v69 = 1;
    if ((sub_10001F940(0x100000001uLL, a2, a4) & 1) == 0)
    {
      v36 = v67;
      sub_10000E268(v67 + *(SearchResultMessages + 52), v17, &qword_1005CE3B0, &unk_1004D1010);
      v37 = type metadata accessor for NewServerMessages();
      if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
      {
        sub_100025F40(v17, &qword_1005CE3B0, &unk_1004D1010);
      }

      else
      {
        v43 = *&v17[*(v37 + 36)];

        sub_100061898(v17, type metadata accessor for NewServerMessages);
        if (*(v43 + 16))
        {
          v44 = swift_allocObject();
          v45 = *(v36 + 24);
          *(v44 + 16) = *(v36 + 16);
          *(v44 + 24) = v45;
          *(v44 + 32) = v43;
          *(v44 + 40) = 0;
          *(v44 + 48) = 1;

          return &_mh_execute_header + 1;
        }
      }
    }
  }

  v46 = v67;
  sub_10005D774(v35, a2, v34, a4, v10);
  v47 = v64;
  if ((*(v63 + 48))(v10, 1, v64) == 1)
  {
    sub_100025F40(v10, &qword_1005CE550, &unk_1004D1260);
    return 0;
  }

  else
  {
    v48 = v62;
    sub_100061968(v10, v62, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v49 = *v48;
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    sub_10000C9C0(&qword_1005CE818, &qword_1004D1130);
    v51 = (sub_10000C9C0(&qword_1005CE820, &unk_1004D1138) - 8);
    v52 = *(*v51 + 72);
    v53 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1004CEAA0;
    v55 = v47;
    v56 = v54 + v53;
    v57 = v51[14];
    v58 = *(v46 + 48);
    *v56 = *(v46 + 40);
    *(v56 + 8) = v58;
    v59 = v61;
    sub_10000E268(v48 + *(v55 + 20), v61, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v59, v56 + v57, &unk_1005D91B0, &unk_1004CF400);
    v60 = sub_100162F48(v54);
    swift_setDeallocating();

    sub_100025F40(v56, &qword_1005CE820, &unk_1004D1138);
    swift_deallocClassInstance();
    sub_100061898(v48, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    result = v49;
    *(v50 + 24) = v60;
  }

  return result;
}

uint64_t sub_10005CCD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v114 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v3 = *(v114 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v114);
  v110 = &v90 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = *(v101 + 64);
  __chkstk_darwin(v6);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v113 = &v90 - v10;
  v11 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v90 - v16;
  __chkstk_darwin(v17);
  v19 = &v90 - v18;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v21 = *(SearchResult - 8);
  v98 = SearchResult;
  v99 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(SearchResult);
  v111 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  v116 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v105 = *(v116 - 8);
  v27 = *(v105 + 64);
  __chkstk_darwin(v116);
  v93 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v94 = &v90 - v30;
  __chkstk_darwin(v31);
  v96 = &v90 - v32;
  __chkstk_darwin(v33);
  v107 = &v90 - v34;
  __chkstk_darwin(v35);
  v100 = &v90 - v36;
  __chkstk_darwin(v37);
  v39 = &v90 - v38;
  __chkstk_darwin(v40);
  v106 = &v90 - v41;
  v97 = v2;
  v42 = *v2;
  v43 = sub_100016D2C();
  v112 = v39;
  v92 = v43;
  sub_1004A7114();
  v104 = v42;
  v44 = *(v42 + 16);
  v115 = v14;
  if (v44)
  {
    v45 = &v26[*(v98 + 20)];
    v46 = *(_s19UserInitiatedSearchV13FetchMessagesVMa(0) + 24);
    v47 = v104 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v48 = (v105 + 48);
    v49 = *(v99 + 72);
    v108 = v49;
    v109 = (v3 + 16);
    do
    {
      sub_100061830(v47, v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_10000E268(v45 + v46, v19, &qword_1005CD510, &unk_1004CF2E0);
      if ((*v48)(v19, 1, v116) == 1)
      {
        sub_100025F40(v19, &qword_1005CD510, &unk_1004CF2E0);
        v50 = v113;
        sub_10000E268(v45, v113, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v109)(v110, v50, v114);
        sub_1004A7104();
        v49 = v108;
        sub_100061898(v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v51 = v50;
        v52 = &unk_1005D91B0;
        v53 = &unk_1004CF400;
      }

      else
      {
        sub_100061898(v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v51 = v19;
        v52 = &qword_1005CD510;
        v53 = &unk_1004CF2E0;
      }

      sub_100025F40(v51, v52, v53);
      v47 += v49;
      --v44;
    }

    while (v44);
  }

  v54 = v106;
  sub_100025FDC(v112, v106, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1004A70C4())
  {
    sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
    v55 = 1;
    v56 = v102;
    v57 = v103;
    v58 = v101;
  }

  else
  {
    sub_10000E268(v54, v107, &unk_1005D91B0, &unk_1004CF400);
    v59 = v104;
    v60 = *(v104 + 16);
    v61 = v116;
    if (v60)
    {
      v62 = &v111[*(v98 + 20)];
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      v64 = v111;
      v112 = *(MessagesVMa + 24);
      v65 = v59 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v66 = (v105 + 48);
      v67 = *(v99 + 72);
      do
      {
        sub_100061830(v65, v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v71 = v115;
        sub_10000E268(v62 + v112, v115, &qword_1005CD510, &unk_1004CF2E0);
        if ((*v66)(v71, 1, v61) == 1)
        {
          sub_100061898(v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v68 = v115;
          v69 = &qword_1005CD510;
          v70 = &unk_1004CF2E0;
        }

        else
        {
          sub_100025F40(v115, &qword_1005CD510, &unk_1004CF2E0);
          v72 = v113;
          sub_10000E268(v62, v113, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_1004A70F4();
          v61 = v116;
          sub_100061898(v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v68 = v72;
          v69 = &unk_1005D91B0;
          v70 = &unk_1004CF400;
        }

        sub_100025F40(v68, v69, v70);
        v65 += v67;
        --v60;
        v64 = v111;
      }

      while (v60);
    }

    sub_100025FDC(v107, v100, &unk_1005D91B0, &unk_1004CF400);
    v73 = type metadata accessor for FetchSearchResultMessages.Requests(0);
    v74 = v97;
    v75 = v97 + *(v73 + 24);
    if (v75[8])
    {
      v76 = v105;
      v77 = v95;
      (*(v105 + 56))(v95, 1, 1, v61);
      v78 = v93;
      sub_1004A7114();
      v79 = (*(v76 + 48))(v77, 1, v61);
      v57 = v103;
      v58 = v101;
      if (v79 != 1)
      {
        sub_100025F40(v77, &qword_1005CD510, &unk_1004CF2E0);
      }
    }

    else
    {
      v118 = *v75;
      v80 = sub_100016948();
      v117 = Range<>.init<A>(_:)(&v118, &type metadata for UID, v80);
      v81 = v95;
      sub_1004A7124();
      (*(v105 + 56))(v81, 0, 1, v61);
      v78 = v93;
      sub_100025FDC(v81, v93, &unk_1005D91B0, &unk_1004CF400);
      v57 = v103;
      v58 = v101;
    }

    v82 = v94;
    v83 = v100;
    MessageIdentifierSet.subtracting(_:)(v78, v94);
    sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
    v84 = v74 + *(v73 + 20);
    v85 = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v86 = v96;
    MessageIdentifierSet.subtracting(_:)(v84 + *(v85 + 20), v96);
    sub_100025F40(v82, &unk_1005D91B0, &unk_1004CF400);
    v87 = MessageIdentifierSet.count.getter();
    sub_100025F40(v83, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v106, &unk_1005D91B0, &unk_1004CF400);
    if (v87 < 1)
    {
      sub_100025F40(v86, &unk_1005D91B0, &unk_1004CF400);
      v55 = 1;
    }

    else
    {
      v88 = v91;
      sub_100025FDC(v86, v91, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v88, v57, &qword_1005CD1D0, &unk_1004CF2C0);
      v55 = 0;
    }

    v56 = v102;
  }

  return (*(v58 + 56))(v57, v55, 1, v56);
}

uint64_t sub_10005D774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v21 = *(SearchResult - 8);
  v11 = *(v21 + 64);
  __chkstk_darwin(SearchResult);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 1;
  if (sub_10006FE14(0x100000000uLL, a1, a2, a4) & 1) != 0 || (sub_10005826C(a1, a2, a3) & 1) != 0 || (v24 = 1, (sub_10006FE14(0x100000001uLL, a1, a2, a4)))
  {
    v14 = *(v21 + 56);

    return v14(a5, 1, 1, SearchResult);
  }

  else
  {
    result = sub_10005D9E8(&v23);
    v16 = v23;
    v17 = *(v23 + 16);
    if (v17)
    {
      v18 = 0;
      while (v18 < *(v16 + 16))
      {
        sub_100061830(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v19 = *v13;
        v22 = 0;
        if ((sub_10001F940(v19, a2, a4) & 1) == 0)
        {

          sub_100061968(v13, a5, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v20 = 0;
          return (*(v21 + 56))(a5, v20, 1, SearchResult);
        }

        ++v18;
        result = sub_100061898(v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        if (v17 == v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      v20 = 1;
      return (*(v21 + 56))(a5, v20, 1, SearchResult);
    }
  }

  return result;
}

uint64_t sub_10005D9E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29[-v5];
  v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v29[-v12];
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v15 = *(*(SearchResult - 8) + 64);
  __chkstk_darwin(SearchResult - 8);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_100061830(v1 + *(SearchResultMessages + 48), v17, type metadata accessor for FetchSearchResultMessages.Requests);
  sub_10000E268(v1 + *(SearchResultMessages + 52), v6, &qword_1005CE3B0, &unk_1004D1010);
  v19 = type metadata accessor for NewServerMessages();
  if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
  {
    sub_100025F40(v6, &qword_1005CE3B0, &unk_1004D1010);
    v20 = 1;
  }

  else
  {
    sub_10000E268(&v6[*(v19 + 20)], v13, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v6, type metadata accessor for NewServerMessages);
    v20 = 0;
  }

  v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v21 - 8) + 56))(v13, v20, 1, v21);
  sub_10005B6BC(v10);
  v22 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = (*(*(v22 - 8) + 48))(v10, 1, v22);
  v24 = sub_100025F40(v10, &qword_1005CD518, &qword_1004CF2F0);
  v25 = *v17;
  if (v23 == 1)
  {
    v26 = *v17;
  }

  else
  {
    __chkstk_darwin(v24);
    *&v29[-16] = v17;
    *&v29[-8] = v13;

    sub_10009E950(sub_100062CFC, &v29[-32], v25);
    v25 = v27;
  }

  *a1 = v25;
  sub_100025F40(v13, &qword_1005CD518, &qword_1004CF2F0);
  return sub_100061898(v17, type metadata accessor for FetchSearchResultMessages.Requests);
}

void sub_10005DD90(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if ((a1 & 0x1FFFFFFFFLL) == &_mh_execute_header)
  {
    v10 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    v11 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
    v16 = v10;
    sub_10000E268(v10 + v11, v9, &qword_1005CD510, &unk_1004CF2E0);
    v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v9, 1, v12);
    sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    if (v14 == 1)
    {
      sub_100016D2C();
      sub_1004A7114();
      (*(v13 + 56))(v6, 0, 1, v12);
      sub_1000618F8(v6, v16 + v11);
    }
  }
}

uint64_t sub_10005DF64(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v11 = *(SearchResult - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(SearchResult - 8);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005D9E8(&v29);
  v28 = _swiftEmptySetSingleton;
  v15 = *(v29 + 16);
  if (v15)
  {
    v16 = v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_100061830(v16, v14, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_100088660(&v27, *v14);
      sub_100061898(v14, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v16 += v17;
      --v15;
    }

    while (v15);

    v18 = v28;
  }

  else
  {

    v18 = _swiftEmptySetSingleton;
  }

  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  sub_1000B649C(v18, v19, v20);

  sub_10005E210(v9);
  sub_10005E608(v6);
  sub_1000B6658(v19, v20, v9, v6);
  sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  v21 = *(v2 + 48);
  __chkstk_darwin(*(v2 + 40));
  v22 = v26;
  *(&v26 - 2) = v2;
  *(&v26 - 1) = v22;
  return sub_10012D0D0(v23, v24, sub_100062CE8, (&v26 - 4));
}

uint64_t sub_10005E210@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v28 = &v28 - v4;
  v5 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v22 = v1 + *(SearchResultMessages + 48);
  v23 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_10000E268(v22 + v23 + *(MessagesVMa + 20), v20, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v1 + *(SearchResultMessages + 52), v8, &qword_1005CE3B0, &unk_1004D1010);
  v25 = type metadata accessor for NewServerMessages();
  if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
  {
    sub_100025F40(v8, &qword_1005CE3B0, &unk_1004D1010);
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_100025F40(v12, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v26 = v28;
    sub_10000E268(&v8[*(v25 + 20)], v28, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v8, type metadata accessor for NewServerMessages);
    sub_100025FDC(v26, v12, &unk_1005D91B0, &unk_1004CF400);
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_100025FDC(v12, v17, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.union(_:)(v17, v29);
  sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10005E608@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v19 = *(SearchResult + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_10000E268(v17 + v19 + *(MessagesVMa + 24), v8, &qword_1005CD510, &unk_1004CF2E0);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v21(v8, 1, v9) != 1)
    {
      sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v8, v16, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_10000E268(v17 + *(SearchResult + 28), v5, &qword_1005CD510, &unk_1004CF2E0);
  if (v21(v5, 1, v9) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v21(v5, 1, v9) != 1)
    {
      sub_100025F40(v5, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v5, v13, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.union(_:)(v13, v24);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10005E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_10000E268(a3 + *(SearchResultMessages + 52), v11, &qword_1005CE3B0, &unk_1004D1010);
  v17 = type metadata accessor for NewServerMessages();
  if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
  {
    sub_100025F40(v11, &qword_1005CE3B0, &unk_1004D1010);
    v18 = 1;
  }

  else
  {
    sub_10000E268(&v11[*(v17 + 20)], v15, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v11, type metadata accessor for NewServerMessages);
    v18 = 0;
  }

  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  sub_100059B90(a1, a2 & 0x101010101FFFF01, v15, (a3 + *(SearchResultMessages + 28)), a4);
  return sub_100025F40(v15, &qword_1005CD518, &qword_1004CF2F0);
}

uint64_t sub_10005EB80()
{
  if (qword_1005CCE38 != -1)
  {
    swift_once();
  }
}

const mach_header_64 *sub_10005EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const mach_header_64 **a5@<X8>)
{
  result = sub_10005C604(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_10005EC80@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v9 = *(*(MessagesVMa - 8) + 64);
  __chkstk_darwin(MessagesVMa - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19UserInitiatedSearchVMa(0);
  sub_100061830(a1 + *(v12 + 20), v7, _s19UserInitiatedSearchV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100061968(v7, v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v13 = *a1;
    SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    sub_100061968(v11, a2 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    *a2 = v13;
    return (*(*(SearchResult - 8) + 56))(a2, 0, 1, SearchResult);
  }

  else
  {
    sub_100061898(v7, _s19UserInitiatedSearchV5StateOMa);
    v16 = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_10005EEB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v162 = &v153 - v5;
  v167 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v209 = *(v167 - 8);
  v6 = *(v209 + 64);
  __chkstk_darwin(v167);
  v166 = &v153 - v7;
  v160 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  v9 = __chkstk_darwin(v160);
  v156 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v161 = &v153 - v12;
  __chkstk_darwin(v11);
  v173 = &v153 - v13;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v189 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v154 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v158 = &v153 - v20;
  v21 = __chkstk_darwin(v19);
  v169 = &v153 - v22;
  __chkstk_darwin(v21);
  v157 = &v153 - v23;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v194 = *(MessagesVMa - 8);
  v25 = *(v194 + 64);
  __chkstk_darwin(MessagesVMa);
  v210 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = _s19UserInitiatedSearchVMa(0);
  v27 = *(v199 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v199);
  v177 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C9C0(&qword_1005CE548, &unk_1004D0FE0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v205 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v201 = &v153 - v34;
  v208 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v206 = *(v208 - 8);
  v35 = *(v206 + 64);
  v36 = __chkstk_darwin(v208);
  v171 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v200 = &v153 - v38;
  v39 = sub_10000C9C0(&qword_1005CE558, &qword_1004D0FF0);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v204 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v198 = &v153 - v44;
  __chkstk_darwin(v43);
  v197 = &v153 - v45;
  v46 = sub_10000C9C0(&qword_1005CE540, &unk_1004D0FD0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v203 = &v153 - v48;
  v49 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v155 = &v153 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v168 = &v153 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v153 - v56;
  v58 = __chkstk_darwin(v55);
  v185 = &v153 - v59;
  v60 = __chkstk_darwin(v58);
  v184 = &v153 - v61;
  v62 = __chkstk_darwin(v60);
  v163 = &v153 - v63;
  v64 = __chkstk_darwin(v62);
  v182 = &v153 - v65;
  v66 = __chkstk_darwin(v64);
  v68 = &v153 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = &v153 - v70;
  __chkstk_darwin(v69);
  v73 = &v153 - v72;
  v74 = *(v15 + 56);
  v74(&v153 - v72, 1, 1, v14);
  v193 = v71;
  v75 = v71;
  v76 = v57;
  v74(v75, 1, 1, v14);
  v181 = v74;
  result = (v74)(v68, 1, 1, v14);
  v78 = 0;
  v79 = *a1;
  v176 = a1[1];
  v80 = a1[3];
  v179 = a1[2];
  v175 = v80;
  v81 = a1[5];
  v178 = a1[4];
  v170 = v81;
  v172 = a1[6];
  v211 = v79;
  v196 = (v27 + 56);
  v174 = v27;
  v195 = (v27 + 48);
  v82 = v206;
  v206 += 48;
  v207 = (v82 + 56);
  v83 = *(v79 + 16);
  v190 = (v194 + 56);
  v188 = (v194 + 48);
  v187 = v15 + 56;
  v192 = (v15 + 48);
  v165 = (v209 + 16);
  v202 = v68;
  v191 = v73;
  v180 = v79;
  v194 = v83;
  v186 = v76;
  v183 = MessagesVMa;
  while (1)
  {
    v86 = v201;
    if (v78 == v83)
    {
      v87 = 1;
      v209 = v83;
      v88 = v200;
      goto LABEL_10;
    }

    if ((v78 & 0x8000000000000000) != 0)
    {
      break;
    }

    v88 = v200;
    if (v78 >= *(v79 + 16))
    {
      goto LABEL_49;
    }

    sub_100061830(v79 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v78, v201, _s19UserInitiatedSearchVMa);
    v87 = 0;
    v209 = v78 + 1;
LABEL_10:
    v89 = MessagesVMa;
    v90 = 1;
    v91 = v199;
    (*v196)(v86, v87, 1, v199);
    v92 = v86;
    v93 = v205;
    sub_100025FDC(v92, v205, &qword_1005CE548, &unk_1004D0FE0);
    v94 = (*v195)(v93, 1, v91);
    v95 = v198;
    if (v94 != 1)
    {
      v96 = v177;
      sub_100061968(v205, v177, _s19UserInitiatedSearchVMa);
      v176(v96);
      sub_100061898(v96, _s19UserInitiatedSearchVMa);
      v90 = 0;
    }

    v97 = *v207;
    v98 = v90;
    v99 = v208;
    (*v207)(v95, v98, 1, v208);
    v100 = *v206;
    if ((*v206)(v95, 1, v99) == 1)
    {
      sub_100025F40(v95, &qword_1005CE558, &qword_1004D0FF0);
      v101 = 1;
    }

    else
    {
      sub_100025FDC(v95, v88, &qword_1005CE550, &unk_1004D1260);
      v102 = v175(v88);
      if ((v102 & 1) == 0)
      {
        result = sub_100025F40(v88, &qword_1005CE550, &unk_1004D1260);
        MessagesVMa = v89;
        goto LABEL_4;
      }

      sub_100025FDC(v88, v197, &qword_1005CE550, &unk_1004D1260);
      v101 = 0;
    }

    v103 = 1;
    v104 = v197;
    v105 = v208;
    v97(v197, v101, 1, v208);
    v106 = v204;
    sub_100025FDC(v104, v204, &qword_1005CE558, &qword_1004D0FF0);
    if (v100(v106, 1, v105) != 1)
    {
      v107 = v171;
      sub_100025FDC(v204, v171, &qword_1005CE550, &unk_1004D1260);
      v170(v107);
      sub_100025F40(v107, &qword_1005CE550, &unk_1004D1260);
      v103 = 0;
    }

    v108 = *v190;
    v109 = v203;
    v110 = v89;
    (*v190)(v203, v103, 1, v89);
    v111 = (*v188)(v109, 1, v89);
    v112 = v192;
    if (v111 == 1)
    {
      sub_100025F40(&v211, &qword_1005CE560, &qword_1004D0FF8);

      v132 = v163;
      sub_10000E268(v73, v163, &qword_1005CD510, &unk_1004CF2E0);
      v133 = *v112;
      if ((*v112)(v132, 1, v189) == 1)
      {
        sub_100025F40(v132, &qword_1005CD510, &unk_1004CF2E0);
        v134 = 1;
        v135 = v164;
        v136 = v193;
      }

      else
      {
        v137 = v157;
        sub_100025FDC(v132, v157, &unk_1005D91B0, &unk_1004CF400);
        v138 = v158;
        sub_10000E268(v137, v158, &unk_1005D91B0, &unk_1004CF400);
        v139 = MessageIdentifierSet.count.getter();
        sub_100025F40(v137, &unk_1005D91B0, &unk_1004CF400);
        if (v139 <= 0)
        {
          sub_100025F40(v138, &unk_1005D91B0, &unk_1004CF400);
          v143 = 1;
          v142 = v162;
        }

        else
        {
          v140 = v156;
          sub_100025FDC(v138, v156, &unk_1005D91B0, &unk_1004CF400);
          v141 = v140;
          v142 = v162;
          sub_100025FDC(v141, v162, &qword_1005CD1D0, &unk_1004CF2C0);
          v143 = 0;
        }

        v144 = v161;
        v136 = v193;
        v145 = v159;
        v146 = v160;
        (*(v159 + 56))(v142, v143, 1, v160);
        if ((*(v145 + 48))(v142, 1, v146) == 1)
        {
          v147 = &qword_1005CD518;
          v148 = &qword_1004CF2F0;
          v149 = v142;
        }

        else
        {
          sub_100025FDC(v142, v144, &qword_1005CD1D0, &unk_1004CF2C0);
          v150 = v155;
          sub_10000E268(v136, v155, &qword_1005CD510, &unk_1004CF2E0);
          if (v133(v150, 1, v189) != 1)
          {
            v151 = v150;
            v152 = v154;
            sub_100025FDC(v151, v154, &unk_1005D91B0, &unk_1004CF400);
            v135 = v164;
            sub_100025FDC(v144, v164, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_100025FDC(v152, v135 + *(v110 + 20), &unk_1005D91B0, &unk_1004CF400);
            sub_10000E268(v202, v135 + *(v110 + 24), &qword_1005CD510, &unk_1004CF2E0);
            v134 = 0;
            goto LABEL_47;
          }

          sub_100025F40(v144, &qword_1005CD1D0, &unk_1004CF2C0);
          v147 = &qword_1005CD510;
          v148 = &unk_1004CF2E0;
          v149 = v150;
        }

        sub_100025F40(v149, v147, v148);
        v134 = 1;
        v135 = v164;
      }

LABEL_47:
      sub_100025F40(v202, &qword_1005CD510, &unk_1004CF2E0);
      sub_100025F40(v136, &qword_1005CD510, &unk_1004CF2E0);
      sub_100025F40(v73, &qword_1005CD510, &unk_1004CF2E0);
      return v108(v135, v134, 1, v110);
    }

    v113 = v210;
    sub_100061968(v109, v210, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v114 = v182;
    sub_10000E268(v73, v182, &qword_1005CD510, &unk_1004CF2E0);
    v115 = *v112;
    v116 = v189;
    v117 = (*v112)(v114, 1, v189);
    sub_100025F40(v114, &qword_1005CD510, &unk_1004CF2E0);
    if (v117 == 1)
    {
      sub_100025F40(v73, &qword_1005CD510, &unk_1004CF2E0);
      v118 = v173;
      sub_10000E268(v113, v173, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v118, v73, &unk_1005D91B0, &unk_1004CF400);
      v181(v73, 0, 1, v116);
    }

    else if (!v115(v73, 1, v116))
    {
      v119 = v173;
      sub_10000E268(v210, v173, &qword_1005CD1D0, &unk_1004CF2C0);
      (*v165)(v166, v119, v167);
      sub_1004A7104();
      sub_100025F40(v119, &unk_1005D91B0, &unk_1004CF400);
    }

    v120 = v193;
    v121 = v184;
    sub_10000E268(v193, v184, &qword_1005CD510, &unk_1004CF2E0);
    v122 = v115(v121, 1, v116);
    sub_100025F40(v121, &qword_1005CD510, &unk_1004CF2E0);
    MessagesVMa = v183;
    if (v122 == 1)
    {
      sub_100025F40(v120, &qword_1005CD510, &unk_1004CF2E0);
      sub_10000E268(v210 + *(MessagesVMa + 20), v120, &unk_1005D91B0, &unk_1004CF400);
      v181(v120, 0, 1, v116);
      v123 = v186;
      v124 = v202;
    }

    else
    {
      v125 = v115(v120, 1, v116);
      v123 = v186;
      v124 = v202;
      if (!v125)
      {
        (*v165)(v166, v210 + *(MessagesVMa + 20), v167);
        v124 = v202;
        sub_1004A7104();
      }
    }

    v126 = v185;
    sub_10000E268(v124, v185, &qword_1005CD510, &unk_1004CF2E0);
    v127 = v115(v126, 1, v116);
    sub_100025F40(v126, &qword_1005CD510, &unk_1004CF2E0);
    v128 = *(MessagesVMa + 24);
    v73 = v191;
    if (v127 == 1)
    {
      v84 = v210;
      v85 = v168;
      sub_10000E268(v210 + v128, v168, &qword_1005CD510, &unk_1004CF2E0);
      sub_100061898(v84, _s19UserInitiatedSearchV13FetchMessagesVMa);
      result = sub_1000618F8(v85, v124);
    }

    else
    {
      v129 = v210;
      sub_10000E268(v210 + v128, v123, &qword_1005CD510, &unk_1004CF2E0);
      if (v115(v123, 1, v116) == 1)
      {
        sub_100061898(v129, _s19UserInitiatedSearchV13FetchMessagesVMa);
        result = sub_100025F40(v123, &qword_1005CD510, &unk_1004CF2E0);
      }

      else
      {
        sub_100025FDC(v123, v169, &unk_1005D91B0, &unk_1004CF400);
        if (v115(v202, 1, v116))
        {
          sub_100025F40(v169, &unk_1005D91B0, &unk_1004CF400);
          v130 = v129;
        }

        else
        {
          v131 = v169;
          (*v165)(v166, v169, v167);
          sub_1004A7104();
          sub_100025F40(v131, &unk_1005D91B0, &unk_1004CF400);
          v130 = v210;
        }

        result = sub_100061898(v130, _s19UserInitiatedSearchV13FetchMessagesVMa);
      }
    }

    v79 = v180;
LABEL_4:
    v78 = v209;
    v83 = v194;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000603E8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v24 = a3;
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v15 = *(*(MessagesVMa - 8) + 64);
  __chkstk_darwin(MessagesVMa - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  sub_100061830(a1 + *(SearchResult + 20), v17, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v19 = type metadata accessor for FetchSearchResultMessages.Requests(0);
  sub_10000E268(a2 + *(v19 + 28), v8, &qword_1005CD510, &unk_1004CF2E0);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v20(v8, 1, v9) != 1)
    {
      sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v8, v13, &unk_1005D91B0, &unk_1004CF400);
  }

  v21 = sub_100060698(v13, v24, *(a2 + *(v19 + 24)), *(a2 + *(v19 + 24) + 8));
  sub_100061898(v17, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  return v21 & 1;
}

uint64_t sub_100060698(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  v70 = a4;
  v58 = a3;
  v61 = a2;
  v68 = a1;
  v6 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = &v58 - v14;
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v60 = *(v23 - 8);
  v24 = *(v60 + 64);
  __chkstk_darwin(v23);
  v69 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v63 = &v58 - v27;
  __chkstk_darwin(v28);
  v30 = &v58 - v29;
  __chkstk_darwin(v31);
  v33 = &v58 - v32;
  __chkstk_darwin(v34);
  v36 = &v58 - v35;
  __chkstk_darwin(v37);
  v62 = &v58 - v38;
  __chkstk_darwin(v39);
  v66 = &v58 - v40;
  __chkstk_darwin(v41);
  v67 = &v58 - v42;
  sub_10000E268(v5, v22, &qword_1005CD1D0, &unk_1004CF2C0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v43 = *(MessagesVMa + 20);
  v65 = v5;
  MessageIdentifierSet.subtracting(_:)(v5 + v43, v33);
  sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v61, v9, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
    v44 = v60;
    v61 = *(v60 + 56);
    v61(v17, 1, 1, v23);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v44 + 48))(v17, 1, v23) != 1)
    {
      sub_100025F40(v17, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_10000E268(v9, v17, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v9, &qword_1005CD1D0, &unk_1004CF2C0);
    v44 = v60;
    v61 = *(v60 + 56);
    v61(v17, 0, 1, v23);
    sub_100025FDC(v17, v30, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.subtracting(_:)(v30, v36);
  sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
  v45 = v64;
  sub_10000E268(v65 + *(MessagesVMa + 24), v64, &qword_1005CD510, &unk_1004CF2E0);
  v46 = *(v44 + 48);
  if (v46(v45, 1, v23) == 1)
  {
    sub_100016D2C();
    v47 = v63;
    sub_1004A7114();
    v48 = v46(v45, 1, v23);
    v49 = v66;
    if (v48 != 1)
    {
      sub_100025F40(v45, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v47 = v63;
    sub_100025FDC(v45, v63, &unk_1005D91B0, &unk_1004CF400);
    v49 = v66;
  }

  v50 = v62;
  MessageIdentifierSet.subtracting(_:)(v47, v62);
  sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v47, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.subtracting(_:)(v68, v49);
  sub_100025F40(v50, &unk_1005D91B0, &unk_1004CF400);
  if (v70)
  {
    v51 = v71;
    v61(v71, 1, 1, v23);
    sub_100016D2C();
    v52 = v69;
    sub_1004A7114();
    if (v46(v51, 1, v23) != 1)
    {
      sub_100025F40(v51, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v73 = v58;
    v53 = sub_100016948();
    v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v53);
    sub_100016D2C();
    v54 = v71;
    sub_1004A7124();
    v61(v54, 0, 1, v23);
    v52 = v69;
    sub_100025FDC(v54, v69, &unk_1005D91B0, &unk_1004CF400);
  }

  v55 = v67;
  MessageIdentifierSet.subtracting(_:)(v52, v67);
  sub_100025F40(v49, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v56 = sub_1004A70C4();
  sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
  return v56 & 1;
}

uint64_t sub_100060EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10000E268(a1, &v10 - v6, &qword_1005CE550, &unk_1004D1260);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  result = (*(*(SearchResult - 8) + 48))(v7, 1, SearchResult);
  if (result != 1)
  {
    return sub_100061968(v7, a2, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060FFC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v8 = *(*(SearchResult - 8) + 64);
  __chkstk_darwin(SearchResult - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 48);
  (*(a4 + 40))(a1);
  a2(v10);
  return sub_100061898(v10, type metadata accessor for FetchSearchResultMessages.Requests.Search);
}

BOOL sub_1000610D0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for FetchSearchResultMessages.Requests.Search(0) + 20);
  v20 = a1 + v19;
  v21 = a2 + v19;
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v23 = *(MessagesVMa + 20);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v24 = *(MessagesVMa + 24);
  v25 = &v20[v24];
  v26 = *(v18 + 48);
  sub_10000E268(v25, v17, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(&v21[v24], &v17[v26], &qword_1005CD510, &unk_1004CF2E0);
  v27 = *(v5 + 48);
  if (v27(v17, 1, v4) == 1)
  {
    if (v27(&v17[v26], 1, v4) == 1)
    {
      sub_100025F40(v17, &qword_1005CD510, &unk_1004CF2E0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_10000E268(v17, v12, &qword_1005CD510, &unk_1004CF2E0);
  if (v27(&v17[v26], 1, v4) == 1)
  {
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
LABEL_9:
    sub_100025F40(v17, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  sub_100025FDC(&v17[v26], v8, &unk_1005D91B0, &unk_1004CF400);
  v29 = sub_1004A7034();
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v17, &qword_1005CD510, &unk_1004CF2E0);
  return (v29 & 1) != 0;
}

BOOL sub_100061444(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  if ((sub_100101D68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (!sub_100185614(a1 + SearchResult[5], a2 + SearchResult[5]))
  {
    return 0;
  }

  v18 = SearchResult[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v19)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = SearchResult[7];
  v24 = a1 + v23;
  v25 = *(v13 + 48);
  sub_10000E268(v24, v16, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(a2 + v23, &v16[v25], &qword_1005CD510, &unk_1004CF2E0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    sub_10000E268(v16, v12, &qword_1005CD510, &unk_1004CF2E0);
    if (v26(&v16[v25], 1, v4) != 1)
    {
      sub_100025FDC(&v16[v25], v8, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v28 = sub_1004A7034();
      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
      return (v28 & 1) != 0;
    }

    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
LABEL_14:
    sub_100025F40(v16, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  if (v26(&v16[v25], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
  return 1;
}

uint64_t sub_1000617CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100061830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100061898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000618F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000619F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_10005826C(a2, a3, a4);
  if (result)
  {
    sub_100061830(a1, v15, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v24, v15, sizeof(v24));
      SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
      v18 = *(v6 + *(SearchResultMessages + 28) + 8);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v18 + 8 * v19 + 24);
      }

      else
      {
        v20 = 1;
      }

      v21 = *(SearchResultMessages + 52);
      v22 = type metadata accessor for NewServerMessages();
      if (!(*(*(v22 - 8) + 48))(v6 + v21, 1, v22))
      {
        sub_1000FAD60(v24, v20, a6);
      }

      return sub_100025D5C(v24);
    }

    else
    {
      return sub_100061898(v15, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_100061B9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v8 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v39 - v10);
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  __chkstk_darwin(v12);
  v42 = &v39 - v14;
  v15 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v39 - v17;
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  v44 = 1;
  result = sub_10006FE14(0x100000000uLL, a2, a3, a4);
  if (result)
  {
    v25 = v4;
    v26 = v4 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    sub_10005CCD4(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v27 = &qword_1005CD518;
      v28 = &qword_1004CF2F0;
      v29 = v18;
    }

    else
    {
      sub_100025FDC(v18, v23, &qword_1005CD1D0, &unk_1004CF2C0);
      if (((v43 >> 59) & 0x1E | (v43 >> 2) & 1) == 0xA)
      {
        v30 = swift_projectBox();
        sub_10000E268(v30, v11, &qword_1005CD4F8, &unk_1004CF790);
        v31 = *v11;
        v32 = *(v8 + 48);
        v33 = *(v8 + 64);
        if (*(v25 + 24) == v11[1])
        {
          v34 = sub_1000FFC98(*(v25 + 16), *v11);

          if (v34)
          {
            v35 = v42;
            sub_100025FDC(v11 + v32, v42, &unk_1005D91B0, &unk_1004CF400);
            sub_100016D2C();
            v36 = sub_1004A7034();
            sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_100025F40(v11 + v33, &qword_1005CD1D0, &unk_1004CF2C0);
            if (v36)
            {
              v37 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
              sub_100025F40(v26 + v37, &qword_1005CD510, &unk_1004CF2E0);
              sub_100025FDC(v35, v26 + v37, &unk_1005D91B0, &unk_1004CF400);
              return (*(v40 + 56))(v26 + v37, 0, 1, v41);
            }

            v27 = &unk_1005D91B0;
            v28 = &unk_1004CF400;
            v29 = v35;
            return sub_100025F40(v29, v27, v28);
          }
        }

        else
        {
          v38 = *v11;
        }

        sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025F40(v11 + v33, &qword_1005CD1D0, &unk_1004CF2C0);
        v27 = &unk_1005D91B0;
        v28 = &unk_1004CF400;
        v29 = v11 + v32;
      }

      else
      {
        v27 = &qword_1005CD1D0;
        v28 = &unk_1004CF2C0;
        v29 = v23;
      }
    }

    return sub_100025F40(v29, v27, v28);
  }

  return result;
}

BOOL sub_100061FF0(uint64_t a1)
{
  v2 = _s19UserInitiatedSearchV5StateOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = v11 - 1;
  do
  {
    v15 = v14;
    sub_100061830(v12, v10, _s19UserInitiatedSearchVMa);
    sub_100061968(&v10[*(v6 + 20)], v5, _s19UserInitiatedSearchV5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100061898(v5, _s19UserInitiatedSearchV5StateOMa);
    result = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v14 = v15 - 1;
    v12 += v13;
  }

  while (v15);
  return result;
}

uint64_t sub_1000621B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v7 = *(*(MessagesVMa - 8) + 48);

  return v7(a1 + v5, a2, MessagesVMa);
}

uint64_t sub_100062244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v8 = *(*(MessagesVMa - 8) + 56);

  return v8(a1 + v6, a2, a2, MessagesVMa);
}

uint64_t sub_1000622C0()
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100062350(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v9 = *(MessagesVMa - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = MessagesVMa;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100062494(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v9 = *(MessagesVMa - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = MessagesVMa;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000625C4()
{
  sub_100062B58(319, &unk_1005CE660, type metadata accessor for FetchSearchResultMessages.Requests.Search, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    _s19UserInitiatedSearchV13FetchMessagesVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1000626A8();
      if (v2 <= 0x3F)
      {
        sub_100035D34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000626A8()
{
  if (!qword_1005CE428)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE428);
    }
  }
}

uint64_t sub_10006270C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (*(*(SearchResult - 8) + 84) == a2)
  {
    v9 = SearchResult;
    v10 = *(SearchResult - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_100062898(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (*(*(SearchResult - 8) + 84) == a3)
  {
    v9 = SearchResult;
    v10 = *(SearchResult - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_100062A30()
{
  sub_10002AABC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FetchSearchResultMessages.Requests(319);
      if (v2 <= 0x3F)
      {
        sub_100062B58(319, &qword_1005CE420, type metadata accessor for NewServerMessages, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100062B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100062BC0()
{
  result = qword_1005CE748;
  if (!qword_1005CE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE748);
  }

  return result;
}

unint64_t sub_100062C14()
{
  result = qword_1005CE750;
  if (!qword_1005CE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE750);
  }

  return result;
}

unint64_t sub_100062C68(uint64_t a1)
{
  result = sub_100062C90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100062C90()
{
  result = qword_1005CE808;
  if (!qword_1005CE808)
  {
    type metadata accessor for FetchSearchResultMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE808);
  }

  return result;
}

uint64_t sub_100062D1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062D54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t getEnumTagSinglePayload for FetchSearchResultMessages.ActionID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FetchSearchResultMessages.ActionID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100062DF0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100062E0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_100062E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (!sub_1000FFEE8(*a1, *a2) || (sub_100113FD0(v2, v5) & 1) == 0 || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

  return sub_100114320(v4, v7);
}

uint64_t sub_100062EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v24[8] = *(a1 + 128);
  v24[9] = v2;
  v3 = *(a1 + 176);
  v24[10] = *(a1 + 160);
  v4 = *(a1 + 80);
  v24[4] = *(a1 + 64);
  v24[5] = v4;
  v5 = *(a1 + 112);
  v24[6] = *(a1 + 96);
  v24[7] = v5;
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v7 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v7;
  v8 = *(a1 + 192);
  v9 = *(a1 + 224);
  v20[2] = *(a1 + 208);
  v20[3] = v9;
  v20[0] = v3;
  v20[1] = v8;
  v10 = *(a2 + 144);
  v25[8] = *(a2 + 128);
  v25[9] = v10;
  v11 = *(a2 + 176);
  v25[10] = *(a2 + 160);
  v12 = *(a2 + 80);
  v25[4] = *(a2 + 64);
  v25[5] = v12;
  v13 = *(a2 + 112);
  v25[6] = *(a2 + 96);
  v25[7] = v13;
  v14 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v14;
  v15 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v15;
  v16 = *(a2 + 192);
  v17 = *(a2 + 224);
  v22[2] = *(a2 + 208);
  v22[3] = v17;
  v21 = *(a1 + 240);
  v23 = *(a2 + 240);
  v22[0] = v11;
  v22[1] = v16;
  if (sub_10009D400(v24, v25))
  {
    v18 = static RemoteMailbox.__derived_struct_equals(_:_:)(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

__n128 sub_100062FBC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = 0;
  return result;
}

unint64_t sub_100062FE0()
{
  v1 = sub_100065670(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t sub_100063050(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0) + 20));
  result = sub_100025FDC(v4, v20, &unk_1005D91B0, &unk_1004CF400);
  *&v20[*(v17 + 28)] = v21;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_100066C38(v20, a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    a1 = (v26 + 48);
    v23 = 1;
    while (1)
    {
      sub_1000D8CF4(v11);
      if ((*a1)(v11, 1, v12) == 1)
      {
        break;
      }

      sub_100025FDC(v11, v15, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v15, a2, &qword_1005CD1D0, &unk_1004CF2C0);
      if (a3 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v26 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
    a3 = v23 - 1;
LABEL_12:
    a1 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000632E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (!a2)
  {
LABEL_38:
    v10 = 0;
    a3 = 0;
    goto LABEL_41;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = 0;
  v55 = a4 + 32;
  v56 = a7;
  v11 = 1;
  v54 = result;
  v50 = a3;
  while (2)
  {
    v12 = v11;
    v13 = *(a4 + 16);
    if (v10 == v13)
    {
      a3 = v9;
      goto LABEL_41;
    }

    v52 = a2;
    v53 = v9;
    v51 = v12;
    if (v10 < v13)
    {
      v14 = (v55 + 176 * v10);
      while (1)
      {
        v15 = v14[9];
        v88 = v14[8];
        v89 = v15;
        v90 = v14[10];
        v16 = v14[5];
        v84 = v14[4];
        v85 = v16;
        v17 = v14[7];
        v86 = v14[6];
        v87 = v17;
        v18 = v14[1];
        v80 = *v14;
        v81 = v18;
        v19 = v14[3];
        v82 = v14[2];
        v83 = v19;
        if (*(a5 + 16))
        {
          v20 = v80;
          v21 = v81;
          v22 = DWORD2(v81);
          v23 = DWORD1(v85);
          v24 = BYTE8(v85);
          v7 = a4;
          v25 = sub_100063B5C(v81, DWORD2(v81));
          a4 = v7;
          if (v26)
          {
            break;
          }
        }

LABEL_30:
        ++v10;
        v37 = *(a4 + 16);
        if (v10 == v37)
        {
          a3 = v53;
          result = v54;
          a7 = v56;
          goto LABEL_41;
        }

        v14 += 11;
        if (v10 >= v37)
        {
          goto LABEL_43;
        }
      }

      v27 = *(a5 + 56) + 72 * v25;
      v75 = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      v79 = *(v27 + 64);
      v77 = v29;
      v78 = v28;
      v76 = v30;
      sub_10000E08C(&v80, &v59);
      sub_100063BD4(&v75, &v59);
      v31 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v32 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v31)
      {
        if ((v32 & ~v31) == 0)
        {
LABEL_15:
          if ((HIWORD(v75) & v31) != 0)
          {
            sub_100063C30(&v75);
            sub_10000E0E8(&v80);
LABEL_29:
            a4 = v7;
            goto LABEL_30;
          }

LABEL_17:
          v67 = v88;
          v68 = v89;
          v69 = v90;
          v63 = v84;
          v64 = v85;
          v65 = v86;
          v66 = v87;
          v59 = v80;
          v60 = v81;
          v61 = v82;
          v62 = v83;
          v72 = v77;
          v73 = v78;
          v74 = v79;
          v70 = v75;
          v71 = v76;
          if ((a6 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_10000E08C(&v80, v58);
          sub_100063BD4(&v75, v58);
          v33 = MailboxName.isInbox.getter(v21, v22);
          sub_100063C30(&v75);
          if ((v33 & 1) != 0 || v76 > 7u || ((1 << v76) & 0xDB) == 0 || (v24 & 1) == 0 && ((BYTE12(v86) & 1) != 0 || DWORD2(v86) < v23))
          {
            sub_10000E0E8(&v80);
LABEL_34:
            ++v10;
            v38 = v59;
            v39 = v60;
            v40 = v62;
            *(v52 + 32) = v61;
            *(v52 + 48) = v40;
            *v52 = v38;
            *(v52 + 16) = v39;
            v41 = v63;
            v42 = v64;
            v43 = v66;
            *(v52 + 96) = v65;
            *(v52 + 112) = v43;
            *(v52 + 64) = v41;
            *(v52 + 80) = v42;
            v44 = v67;
            v45 = v68;
            v46 = v70;
            *(v52 + 160) = v69;
            *(v52 + 176) = v46;
            *(v52 + 128) = v44;
            *(v52 + 144) = v45;
            v47 = v71;
            v48 = v72;
            v49 = v73;
            *(v52 + 240) = v74;
            *(v52 + 208) = v48;
            *(v52 + 224) = v49;
            *(v52 + 192) = v47;
            a3 = v50;
            if (v51 == v50)
            {
              goto LABEL_44;
            }

            a2 = v52 + 248;
            v9 = v51;
            v11 = v51 + 1;
            a7 = v56;
            result = v54;
            a4 = v7;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            continue;
          }

          sub_10000E0E8(&v80);
          if (*(v56 + 16))
          {
            v34 = sub_100063C84(v20, *(&v20 + 1));
            v36 = v35;

            if ((v36 & 1) != 0 && (~*(*(v56 + 56) + 2 * v34) & 0x3FFF) != 0)
            {
              goto LABEL_34;
            }

            sub_100063CF8(&v59);
          }

          else
          {
            sub_100063CF8(&v59);
          }

          goto LABEL_29;
        }
      }

      else if (!v32)
      {
        goto LABEL_17;
      }

      LOWORD(v31) = v32 | v31;
      goto LABEL_15;
    }

    break;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  a7 = v56;
  result = v54;
  a4 = v7;
LABEL_41:
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a6 & 1;
  *(result + 24) = a7;
  *(result + 32) = v10;
  return a3;
}

double sub_1000636C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v2 == v4)
  {
LABEL_2:
    sub_1000642EC(&v92);
    goto LABEL_3;
  }

  if (v2 < v4)
  {
    v13 = *(v43 + 8);
    do
    {
      v14 = (v3 + 32 + 176 * v2);
      v15 = *v14;
      v16 = v14[2];
      v82 = v14[1];
      v83 = v16;
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v86 = v14[5];
      v87 = v19;
      v84 = v17;
      v85 = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[10];
      v90 = v14[9];
      v91 = v22;
      v88 = v20;
      v89 = v21;
      v81 = v15;
      if (!*(v13 + 16))
      {
        goto LABEL_27;
      }

      v23 = v81;
      v24 = v82;
      v25 = DWORD2(v82);
      v26 = DWORD1(v86);
      v27 = BYTE8(v86);
      v28 = sub_100063B5C(v82, DWORD2(v82));
      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }

      v30 = *(v13 + 56) + 72 * v28;
      v76 = *v30;
      v32 = *(v30 + 32);
      v31 = *(v30 + 48);
      v33 = *(v30 + 64);
      v77 = *(v30 + 16);
      v78 = v32;
      v80 = v33;
      v79 = v31;
      sub_10000E08C(&v81, &v92);
      sub_100063BD4(&v76, &v92);
      v34 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v35 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v34)
      {
        if ((v35 & ~v34) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (!v35)
      {
        goto LABEL_15;
      }

      LOWORD(v34) = v35 | v34;
LABEL_13:
      if ((HIWORD(v76) & v34) == 0)
      {
LABEL_15:
        v68 = v89;
        v69 = v90;
        v70 = v91;
        v64 = v85;
        v65 = v86;
        v66 = v87;
        v67 = v88;
        v60 = v81;
        v61 = v82;
        v62 = v83;
        v63 = v84;
        v73 = v78;
        v74 = v79;
        v75 = v80;
        v71 = v76;
        v72 = v77;
        if ((*(v43 + 16) & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_10000E08C(&v81, &v92);
        sub_100063BD4(&v76, &v92);
        v36 = MailboxName.isInbox.getter(v24, v25);
        sub_100063C30(&v76);
        if ((v36 & 1) != 0 || v77 > 7u || ((1 << v77) & 0xDB) == 0 || (v27 & 1) == 0 && ((BYTE12(v87) & 1) != 0 || DWORD2(v87) < v26))
        {
          goto LABEL_30;
        }

        v37 = *(v43 + 24);

        sub_10000E0E8(&v81);
        if (*(v37 + 16))
        {
          v38 = sub_100063C84(v23, *(&v23 + 1));
          v40 = v39;

          if ((v40 & 1) != 0 && (~*(*(v37 + 56) + 2 * v38) & 0x3FFF) != 0)
          {
            goto LABEL_31;
          }

          sub_100063CF8(&v60);
        }

        else
        {
          sub_100063CF8(&v60);
        }

        goto LABEL_27;
      }

      sub_100063C30(&v76);
      sub_10000E0E8(&v81);
LABEL_27:
      *(v43 + 32) = ++v2;
      v41 = *(v3 + 16);
      if (v2 == v41)
      {
        goto LABEL_2;
      }
    }

    while (v2 < v41);
  }

  __break(1u);
LABEL_30:
  sub_10000E0E8(&v81);
LABEL_31:
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  UInt32.init(_:)(&v44);
  *(v43 + 32) = v2 + 1;
  v104 = v56;
  v105 = v57;
  v106 = v58;
  v107 = v59;
  v100 = v52;
  v101 = v53;
  v102 = v54;
  v103 = v55;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  v99 = v51;
  v92 = v44;
  v93 = v45;
  v94 = v46;
  v95 = v47;
LABEL_3:
  v5 = v105;
  *(a1 + 192) = v104;
  *(a1 + 208) = v5;
  *(a1 + 224) = v106;
  *(a1 + 240) = v107;
  v6 = v101;
  *(a1 + 128) = v100;
  *(a1 + 144) = v6;
  v7 = v103;
  *(a1 + 160) = v102;
  *(a1 + 176) = v7;
  v8 = v97;
  *(a1 + 64) = v96;
  *(a1 + 80) = v8;
  v9 = v99;
  *(a1 + 96) = v98;
  *(a1 + 112) = v9;
  v10 = v93;
  *a1 = v92;
  *(a1 + 16) = v10;
  result = *&v94;
  v12 = v95;
  *(a1 + 32) = v94;
  *(a1 + 48) = v12;
  return result;
}

double sub_100063A8C@<D0>(uint64_t a1@<X8>)
{
  sub_1000636C0(v10);
  v2 = v22;
  *(a1 + 192) = v21;
  *(a1 + 208) = v2;
  *(a1 + 224) = v23;
  *(a1 + 240) = v24;
  v3 = v18;
  *(a1 + 128) = v17;
  *(a1 + 144) = v3;
  v4 = v20;
  *(a1 + 160) = v19;
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  return result;
}

unint64_t sub_100063B08()
{
  result = qword_1005CE830;
  if (!qword_1005CE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE830);
  }

  return result;
}

unint64_t sub_100063B5C(uint64_t a1, unsigned int a2)
{
  v5 = *(v2 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a2 | (a2 << 32));
  v6 = sub_1004A6F14();

  return sub_100064150(a1, a2, v6);
}

unint64_t sub_100063C84(uint64_t a1, Swift::UInt a2)
{
  v5 = *(v2 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v6 = sub_1004A6F14();

  return sub_100064224(a1, a2, v6);
}

unint64_t sub_100063D2C(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  v4 = sub_1004A6F14();
  return sub_100064318(a1, v4);
}

unint64_t sub_100063D94(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1004A6E84();

  return sub_100064384(a1, v4);
}

unint64_t sub_100063E04(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  sub_1000EB38C(v6);
  v4 = sub_1004A6F14();

  return sub_100064C54(a1, v4);
}

unint64_t sub_100063E70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 40);
  sub_1004A6E94();
  v9 = *(*a1 + 96);
  swift_beginAccess();
  sub_100066E8C(a1 + v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000EB38C(v13);
  sub_100066EF4(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v10 = sub_1004A6F14();
  return sub_100064DB4(a1, v10);
}

unint64_t sub_100063F7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1004A6E94();
  sub_100092C14(v8, a1);
  sub_100092C14(v8, a2);
  v6 = sub_1004A6F14();

  return sub_100064F94(a1, a2, v6);
}

unint64_t sub_100063FFC(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(*a1);
  sub_1004A6EE4(*(a1 + 1));
  sub_1004A6EB4(*(a1 + 4) | (*(a1 + 4) << 32));
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  sub_1004A4424();
  v6 = sub_1004A6F14();

  return sub_100065094(a1, v6);
}

uint64_t sub_1000640BC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  sub_1004A6E94();
  a3(v12, a1, a2);
  v9 = sub_1004A6F14();

  return a4(a1, a2, v9);
}

unint64_t sub_100064150(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if ((v8[2] | (v8[2] << 32)) == (a2 | (a2 << 32)))
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100064224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2)
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_1000642EC(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100064318(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100064384(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000643F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
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
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
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
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_100014CEC(v17, v16);
      v35 = sub_1004A40D4();
      if (v35)
      {
        v40 = sub_1004A4104();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1004A40F4();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_1004A40D4();
        if (v37)
        {
          v60 = sub_1004A4104();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1004A40F4();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_1004A40D4();
        if (v37)
        {
          v41 = sub_1004A4104();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_1004A40F4();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_100014CEC(v17, v16);
      v32 = sub_1004A40D4();
      if (v32)
      {
        v49 = sub_1004A4104();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_1004A40F4();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_100014CEC(v17, v16);
    v29 = sub_1004A40D4();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1004A4104();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_1004A40F4();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_100014D40(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_100014CEC(v17, v16);
    v35 = sub_1004A40D4();
    if (v35)
    {
      v36 = sub_1004A4104();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1004A40F4();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_1004A40D4();
      if (v37)
      {
        v57 = sub_1004A4104();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1004A40F4();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_1004A40D4();
      if (v37)
      {
        v38 = sub_1004A4104();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_1004A40F4();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_100014D40(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_100014D40(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_100014CEC(v17, v16);
    v32 = sub_1004A40D4();
    if (v32)
    {
      v44 = sub_1004A4104();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_1004A40F4();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_100014CEC(v17, v16);
  v51 = sub_1004A40D4();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1004A4104();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_1004A40F4();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1004A40F4();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1004A40F4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

unint64_t sub_100064C54(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_100066E8C(*(v2 + 48) + v13 * v11, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v14 = sub_1000F2FCC(v9, a1);
      sub_100066EF4(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100064DB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = v2 + 64;
  v23 = v2;
  v13 = -1 << *(v2 + 32);
  v14 = a2 & ~v13;
  v15 = *(*a1 + 96);
  v16 = a1;
  swift_beginAccess();
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v17 = ~v13;
    do
    {
      v18 = *(*(v23 + 48) + 8 * v14);
      v19 = *(*v18 + 96);
      swift_beginAccess();
      sub_100066E8C(v18 + v19, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100066E8C(v16 + v15, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v20 = sub_1000F2FCC(v11, v9);
      sub_100066EF4(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100066EF4(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100064F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      if (sub_100083750(v10, a1))
      {
        v12 = sub_100083750(v11, a2);

        if (v12)
        {
          return v5;
        }
      }

      else
      {
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100065094(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      v8 = *(v7 + 32);
      v9 = *(v7 + 16);
      v13[0] = *v7;
      v13[1] = v9;
      v14 = v8;
      sub_100066F54(v13, v12);
      v10 = static MoveOrCopy.__derived_struct_equals(_:_:)(v13, a1);
      sub_100066FB0(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100065170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1004A6D34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t sub_100065228(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v51 - v4;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + 80);
  sub_100066E8C(a1, v15, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v22 = *&v15[*(v12 + 28)];
  sub_100025FDC(v15, v20, &unk_1005D91B0, &unk_1004CF400);
  *&v20[*(v17 + 28)] = v22;
  sub_1000D8CF4(v5);
  v57 = v6;
  v58 = v7;
  v23 = *(v7 + 48);
  v55 = v7 + 48;
  v56 = v23;
  v24 = _swiftEmptyArrayStorage;
  if (v23(v5, 1, v6) != 1)
  {
    v25 = 0;
    v53 = v21;
    v54 = (v21 + 32) & ~v21;
    v31 = _swiftEmptyArrayStorage + v54;
    v32 = &qword_1005CD1D0;
    v33 = &unk_1004CF2C0;
    v34 = _swiftEmptyArrayStorage;
    v51 = v5;
    v52 = v10;
    while (1)
    {
      v36 = v32;
      v37 = v33;
      result = sub_100025FDC(v5, v10, v32, v33);
      if (v25)
      {
        v24 = v34;
        v29 = __OFSUB__(v25--, 1);
        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v38 = v34[3];
        if (((v38 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39;
        }

        sub_10000C9C0(&qword_1005CE858, &unk_1004D1E20);
        v41 = *(v58 + 72);
        v42 = v54;
        v24 = swift_allocObject();
        result = j__malloc_size(v24);
        if (!v41)
        {
          goto LABEL_34;
        }

        v43 = result - v42;
        if (result - v42 == 0x8000000000000000 && v41 == -1)
        {
          goto LABEL_35;
        }

        v45 = v43 / v41;
        v24[2] = v40;
        v24[3] = 2 * (v43 / v41);
        v46 = v24 + v42;
        v47 = v34[3] >> 1;
        v48 = v47 * v41;
        if (v34[2])
        {
          if (v24 < v34 || v46 >= v34 + v54 + v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34[2] = 0;
        }

        v31 = &v46[v48];
        v50 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - v47;

        v5 = v51;
        v10 = v52;
        v29 = __OFSUB__(v50, 1);
        v25 = v50 - 1;
        if (v29)
        {
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
          return result;
        }
      }

      sub_100025FDC(v10, v31, v36, v37);
      v31 += *(v58 + 72);
      sub_1000D8CF4(v5);
      v35 = v56(v5, 1, v57);
      v33 = v37;
      v32 = v36;
      v34 = v24;
      if (v35 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v25 = 0;
LABEL_3:
  sub_100066EF4(v20, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
  result = sub_100025F40(v5, &qword_1005CD518, &qword_1004CF2F0);
  v27 = v24[3];
  if (v27 >= 2)
  {
    v28 = v27 >> 1;
    v29 = __OFSUB__(v28, v25);
    v30 = v28 - v25;
    if (v29)
    {
      goto LABEL_36;
    }

    v24[2] = v30;
  }

  return v24;
}

unint64_t sub_100065670(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16);

  v64 = a4;

  v66 = v7;
  v62 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    v61 = 0;
LABEL_54:

    result = v62;
    v57 = *(v62 + 3);
    if (v57 < 2)
    {
      return result;
    }

    v58 = v57 >> 1;
    v29 = __OFSUB__(v58, v61);
    v59 = v58 - v61;
    if (!v29)
    {
      *(v62 + 2) = v59;
      return result;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v9 = 0;
  v65 = v6 + 32;
  v60 = &_swiftEmptyArrayStorage[4];
  v61 = 0;
  while (1)
  {
    if (v9 >= v66)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    while (1)
    {
      v10 = (v65 + 176 * v9);
      v11 = v10[9];
      v97 = v10[8];
      v98 = v11;
      v99 = v10[10];
      v12 = v10[5];
      v93 = v10[4];
      v94 = v12;
      v13 = v10[7];
      v95 = v10[6];
      v96 = v13;
      v14 = v10[1];
      v89 = *v10;
      v90 = v14;
      v15 = v10[3];
      v91 = v10[2];
      v92 = v15;
      if (*(a2 + 16))
      {
        v16 = v89;
        v17 = v90;
        v18 = DWORD2(v90);
        v19 = DWORD1(v94);
        v20 = BYTE8(v94);
        v21 = v6;
        result = sub_100063B5C(v90, DWORD2(v90));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

LABEL_14:
      if (v9 == v66)
      {
        goto LABEL_54;
      }

      if (v9 >= v66)
      {
        goto LABEL_58;
      }
    }

    v23 = *(a2 + 56) + 72 * result;
    v84 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 16);
    v88 = *(v23 + 64);
    v86 = v25;
    v87 = v24;
    v85 = v26;
    sub_10000E08C(&v89, &v68);
    sub_100063BD4(&v84, &v68);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    v28 = *result;
    if (!v27)
    {
      if (!*result)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v84) & v27) != 0)
    {
      sub_100063C30(&v84);
      result = sub_10000E0E8(&v89);
      v6 = v21;
      goto LABEL_13;
    }

LABEL_17:
    v76 = v97;
    v77 = v98;
    v78 = v99;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v75 = v96;
    v68 = v89;
    v69 = v90;
    v70 = v91;
    v71 = v92;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v79 = v84;
    v80 = v85;
    if ((a3 & 1) == 0)
    {
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_65;
      }

      goto LABEL_39;
    }

    sub_10000E08C(&v89, v67);
    sub_100063BD4(&v84, v67);
    v30 = MailboxName.isInbox.getter(v17, v18);
    sub_100063C30(&v84);
    if ((v30 & 1) != 0 || v85 > 7u || ((1 << v85) & 0xDB) == 0 || (v20 & 1) == 0 && ((BYTE12(v95) & 1) != 0 || DWORD2(v95) < v19))
    {
      result = sub_10000E0E8(&v89);
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_10000E0E8(&v89);
    if (!*(v64 + 16))
    {
      sub_100063CF8(&v68);

LABEL_29:
      v6 = v21;
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_14;
    }

    v31 = sub_100063C84(v16, *(&v16 + 1));
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v64 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_100063CF8(&v68);
      goto LABEL_29;
    }

    v29 = __OFADD__(v9++, 1);
    if (v29)
    {
      goto LABEL_66;
    }

LABEL_39:
    v6 = v21;
    v34 = v61;
    if (!v61)
    {
      break;
    }

LABEL_50:
    v29 = __OFSUB__(v34, 1);
    v44 = v34 - 1;
    if (v29)
    {
      goto LABEL_62;
    }

    v61 = v44;
    v45 = v68;
    v46 = v69;
    v47 = v71;
    *(v60 + 2) = v70;
    *(v60 + 3) = v47;
    *v60 = v45;
    *(v60 + 1) = v46;
    v48 = v72;
    v49 = v73;
    v50 = v75;
    *(v60 + 6) = v74;
    *(v60 + 7) = v50;
    *(v60 + 4) = v48;
    *(v60 + 5) = v49;
    v51 = v76;
    v52 = v77;
    v53 = v79;
    *(v60 + 10) = v78;
    *(v60 + 11) = v53;
    *(v60 + 8) = v51;
    *(v60 + 9) = v52;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    *(v60 + 120) = v83;
    *(v60 + 13) = v55;
    *(v60 + 14) = v56;
    *(v60 + 12) = v54;
    v60 += 248;
    if (v9 == v66)
    {
      goto LABEL_54;
    }
  }

  v35 = *(v62 + 3);
  if (((v35 >> 1) + 0x4000000000000000) >= 0)
  {
    v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    sub_10000C9C0(&qword_1005CE838, &qword_1004D1248);
    v38 = swift_allocObject();
    v39 = (j__malloc_size(v38) - 32) / 248;
    *(v38 + 2) = v37;
    *(v38 + 3) = 2 * v39;
    v40 = v38 + 32;
    v41 = *(v62 + 3) >> 1;
    v42 = 248 * v41;
    if (*(v62 + 2))
    {
      v43 = v62 + 32;
      if (v38 != v62 || v40 >= &v43[v42])
      {
        memmove(v38 + 32, v43, 248 * v41);
      }

      *(v62 + 2) = 0;
    }

    v60 = &v40[v42];

    v34 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;
    v62 = v38;
    v6 = v21;
    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

size_t sub_100065B64(uint64_t *a1)
{
  v105 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v105 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v105);
  v98 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&qword_1005CE548, &unk_1004D0FE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v79 - v9;
  v10 = sub_10000C9C0(&qword_1005CE558, &qword_1004D0FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v79 - v15;
  __chkstk_darwin(v14);
  v86 = &v79 - v17;
  v107 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v107);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v79 - v23;
  __chkstk_darwin(v22);
  v89 = &v79 - v25;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v26 = *(SearchResult - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(SearchResult);
  v91 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v26 + 80);
  v94 = _swiftEmptyArrayStorage;
  v79 = (v80 + 32) & ~v80;
  v92 = _swiftEmptyArrayStorage + v79;
  v29 = *a1;
  v97 = a1[1];
  v30 = a1[2];
  v100 = a1[3];
  v31 = a1[4];
  v82 = a1[5];
  v81 = a1[6];
  v111 = v29;
  v95 = v29;
  v32 = *(v29 + 16);
  sub_100066BC8(&v111, v110);
  v96 = v2;
  v103 = (v2 + 48);
  v104 = (v2 + 56);
  v106 = (v18 + 56);
  v33 = (v18 + 48);
  v85 = (v26 + 56);
  v88 = v26;
  v84 = (v26 + 48);
  v34 = v32;
  v99 = v30;

  v101 = v31;

  v93 = 0;
  v36 = 0;
  v102 = v32;
  while (2)
  {
    v37 = v36 >= v34;
    if (v36 == v34)
    {
LABEL_3:
      v38 = 1;
      v36 = v34;
      goto LABEL_7;
    }

    while (1)
    {
      if (v37)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      result = sub_100066E8C(v95 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v36, v108, _s19UserInitiatedSearchVMa);
      v39 = __OFADD__(v36++, 1);
      if (v39)
      {
        goto LABEL_45;
      }

      v38 = 0;
LABEL_7:
      v40 = v105;
      v41 = 1;
      v42 = v108;
      (*v104)(v108, v38, 1, v105);
      v43 = v42;
      v44 = v109;
      sub_100025FDC(v43, v109, &qword_1005CE548, &unk_1004D0FE0);
      if ((*v103)(v44, 1, v40) != 1)
      {
        v45 = v98;
        sub_100066C38(v109, v98, _s19UserInitiatedSearchVMa);
        v97(v45);
        sub_100066EF4(v45, _s19UserInitiatedSearchVMa);
        v41 = 0;
      }

      v46 = *v106;
      v47 = v41;
      v48 = v107;
      (*v106)(v16, v47, 1, v107);
      v49 = *v33;
      if ((*v33)(v16, 1, v48) == 1)
      {
        sub_100025F40(v16, &qword_1005CE558, &qword_1004D0FF0);
        v50 = 1;
        v51 = v86;
        goto LABEL_15;
      }

      sub_100025FDC(v16, v24, &qword_1005CE550, &unk_1004D1260);
      if (v100(v24))
      {
        break;
      }

      result = sub_100025F40(v24, &qword_1005CE550, &unk_1004D1260);
      v34 = v102;
      v37 = v36 >= v102;
      if (v36 == v102)
      {
        goto LABEL_3;
      }
    }

    v51 = v86;
    sub_100025FDC(v24, v86, &qword_1005CE550, &unk_1004D1260);
    v50 = 0;
    v34 = v102;
LABEL_15:
    v52 = v107;
    v46(v51, v50, 1, v107);
    v53 = v90;
    sub_100025FDC(v51, v90, &qword_1005CE558, &qword_1004D0FF0);
    v54 = v49(v53, 1, v52);
    v55 = 1;
    v56 = v94;
    if (v54 != 1)
    {
      v57 = v83;
      sub_100025FDC(v90, v83, &qword_1005CE550, &unk_1004D1260);
      v82(v57);
      sub_100025F40(v57, &qword_1005CE550, &unk_1004D1260);
      v55 = 0;
    }

    v58 = v89;
    v59 = SearchResult;
    (*v85)(v89, v55, 1, SearchResult);
    if ((*v84)(v58, 1, v59) != 1)
    {
      result = sub_100066C38(v58, v91, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      if (v93)
      {
        v60 = v56;
        v61 = v93 - 1;
        if (!__OFSUB__(v93, 1))
        {
LABEL_39:
          v93 = v61;
          v75 = v92;
          result = sub_100066C38(v91, v92, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v92 = (v75 + *(v88 + 72));
          v94 = v60;
          continue;
        }
      }

      else
      {
        v62 = v56[3];
        if (((v62 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
        if (v63 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v63;
        }

        sub_10000C9C0(&qword_1005CE850, &unk_1004D1270);
        v65 = *(v88 + 72);
        v66 = v79;
        v60 = swift_allocObject();
        result = j__malloc_size(v60);
        if (!v65)
        {
          goto LABEL_48;
        }

        v67 = result - v66;
        if (result - v66 == 0x8000000000000000 && v65 == -1)
        {
          goto LABEL_49;
        }

        v69 = v66;
        v70 = v67 / v65;
        v60[2] = v64;
        v60[3] = 2 * (v67 / v65);
        v71 = v60 + v66;
        v72 = v94[3] >> 1;
        v73 = v72 * v65;
        v34 = v102;
        if (v94[2])
        {
          if (v60 < v94 || v71 >= v94 + v69 + v73)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94[2] = 0;
        }

        v92 = &v71[v73];
        v74 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - v72;

        v39 = __OFSUB__(v74, 1);
        v61 = v74 - 1;
        if (!v39)
        {
          goto LABEL_39;
        }
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    break;
  }

  sub_100025F40(&v111, &qword_1005CE560, &qword_1004D0FF8);

  result = sub_100025F40(v58, &qword_1005CE550, &unk_1004D1260);
  v76 = v56[3];
  if (v76 < 2)
  {
    return v56;
  }

  v77 = v76 >> 1;
  v39 = __OFSUB__(v77, v93);
  v78 = v77 - v93;
  if (!v39)
  {
    v56[2] = v78;
    return v56;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000664DC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[4];
  v53 = a1[5];
  v54 = a1[3];
  v4 = a1[6];
  v52 = a1[7];
  v5 = a1[8];
  v45 = a1[9];
  v6 = a1[10];
  v7 = *(v2 + 16);
  v48 = *a1;

  v9 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v10 = v7;
  v11 = 0;
  v12 = 0;
  v13 = v2 + 32;
  v46 = &_swiftEmptyArrayStorage[4];
  v14 = v1 + 40;
  v44 = v1 + 40;
  while (2)
  {
    v49 = v12;
    v51 = v9;
    v15 = (v14 + 16 * v11);
    while (1)
    {
      if (v11 >= *(v1 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v16 = v2;
      v17 = v1;
      v18 = *v15;
      v19 = *(v13 + v11++);
      v56 = *(v15 - 1);
      v57 = v18;
      v58 = v19;

      v54(&v55, &v56);

      v53(&v56, &v55);

      v20 = v56;
      v21 = v58;
      v22 = v57;
      v59 = v56;
      v61 = v58;
      v60 = v57;
      if (v52(&v59))
      {
        break;
      }

      v15 += 4;
      v1 = v17;
      v2 = v16;
      if (v11 >= v10)
      {
        v12 = v49;
        goto LABEL_27;
      }
    }

    v59 = v20;
    v60 = v22;
    v61 = (v22 | (v21 << 32)) >> 32;
    v45(&v56, &v59);

    v23 = v56;
    v24 = v57;
    v25 = v58;
    v26 = v49;
    if (v49)
    {
      v27 = v46;
    }

    else
    {
      v43 = v58;
      v47 = v57;
      v50 = v56;
      v28 = v9[3];
      if (((v28 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      sub_10000C9C0(&qword_1005CE840, &qword_1004D1250);
      v9 = swift_allocObject();
      v31 = j__malloc_size(v9);
      v32 = v31 - 32;
      if (v31 < 32)
      {
        v32 = v31 - 17;
      }

      v33 = v32 >> 4;
      v9[2] = v30;
      v9[3] = 2 * (v32 >> 4);
      v34 = (v9 + 4);
      v35 = v51[3] >> 1;
      v36 = 16 * v35;
      if (v51[2])
      {
        v37 = (v51 + 4);
        if (v9 != v51 || v34 >= &v37[v36])
        {
          v38 = v32 >> 4;
          memmove(v9 + 4, v37, v36);
          v33 = v38;
        }

        v51[2] = 0;
      }

      v27 = &v34[v36];
      v26 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v23 = v50;
      v24 = v47;
      v25 = v43;
    }

    v39 = __OFSUB__(v26, 1);
    v12 = v26 - 1;
    v14 = v44;
    if (v39)
    {
      goto LABEL_33;
    }

    v1 = v17;
    *v27 = v23;
    *(v27 + 2) = v24;
    v27[12] = v25;
    v46 = v27 + 16;
    v2 = v16;
    if (v11 < v10)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v40 = v9[3];
  if (v40 < 2)
  {
    return v9;
  }

  v41 = v40 >> 1;
  v39 = __OFSUB__(v41, v12);
  v42 = v41 - v12;
  if (!v39)
  {
    v9[2] = v42;
    return v9;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100066884@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
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
    v10 = sub_1004A40D4();
    if (v10)
    {
      v11 = sub_1004A4104();
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
      result = sub_1004A40F4();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_1004A40D4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004A4104();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004A40F4();
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

void *sub_100066AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_10000C9C0(&qword_1005CE848, &qword_1004D1258);
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    result = v5;
    v8 = ((v6 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
    v9 = (v8 >> 2) + (v8 >> 63);
    v5[2] = v2;
    v5[3] = 2 * v9;
    v10 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v11 = (a1 + 32);
    v12 = *(a1 + 16);
    v13 = (a2 + 41);
    v14 = 4;
    while (v12)
    {
      v15 = &v5[v14];
      --v10;
      v16 = *v13;
      v17 = *(v13 - 1);
      v18 = *(v13 - 9);
      v19 = *v11++;
      *v15 = v19;
      v15[1] = v18;
      *(v15 + 16) = v17;
      *(v15 + 17) = v16;
      v14 += 3;
      --v12;
      v13 += 16;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v10 = 0;
  result = _swiftEmptyArrayStorage;
LABEL_7:
  v20 = result[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v22 = __OFSUB__(v21, v10);
    v23 = v21 - v10;
    if (v22)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    result[2] = v23;
  }

  return result;
}

uint64_t sub_100066BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE560, &qword_1004D0FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066CA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100066CE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100066D50(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100066D68(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100066DB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
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

uint64_t sub_100066DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 242) = 1;
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

    *(result + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066EF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100067008@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    while (1)
    {
      sub_10000E268(v15, v9, &qword_1005CEA18, &qword_1004D14D0);
      if (*v9 == a1)
      {
        break;
      }

      sub_100025F40(v9, &qword_1005CEA18, &qword_1004D14D0);
      v15 += v16;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

    sub_100025FDC(v9, v13, &qword_1005CEA18, &qword_1004D14D0);
    sub_10006F6C4(&v13[*(v6 + 52)], a3, type metadata accessor for FindMissingMessages.CommandID);
    sub_100025F40(v13, &qword_1005CEA18, &qword_1004D14D0);
    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = 1;
  }

  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  return (*(*(Missing - 8) + 56))(a3, v17, 1, Missing);
}

BOOL sub_100067204(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_100067248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_100067284()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004D13E0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  *(v1 + 32) = &type metadata for DetectChangesToMessages;
  sub_100026044();

  sub_1004A6674();
  *(v1 + 80) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v1 + 128) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v1 + 176) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  *(v1 + 224) = type metadata accessor for FetchSearchResultMessages(0);

  sub_1004A6674();
  *(v1 + 272) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v1;
}

Swift::Int sub_100067424()
{
  result = sub_100093190(&off_100598F90);
  qword_1005DDF08 = result;
  return result;
}

void sub_10006744C(uint64_t a1)
{
  v2 = v1;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v5 = *(*(MissingMessages - 8) + 64);
  __chkstk_darwin(MissingMessages);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  __chkstk_darwin(v10);
  v69 = &v62 - v11;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  v19 = v2 + *(MissingMessages + 44);
  v20 = *(v19 + 13);
  v67 = v21;
  if (v20)
  {
    v22 = 0xE900000000000065;
    v23 = 0x74616470752D6F6ELL;
  }

  else
  {
    v24 = *(v19 + 8) | (*(v19 + 12) << 32);
    if ((v24 & 0x100000000) != 0)
    {
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      LODWORD(v76) = v24;
      sub_1004A6934();
      v23 = v73;
      v22 = v74;
    }
  }

  v68 = v23;
  sub_10006F6C4(a1, v18, type metadata accessor for MailboxTaskLogger);
  sub_10006F6C4(a1, v15, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v25 = v69;
  sub_10006F6C4(v2, v69, type metadata accessor for FindMissingMessages);
  sub_10006F6C4(v2, v9, type metadata accessor for FindMissingMessages);
  v26 = v70;
  sub_10006F6C4(v2, v70, type metadata accessor for FindMissingMessages);

  v27 = sub_1004A4A54();
  v28 = sub_1004A6034();

  if (os_log_type_enabled(v27, v28))
  {
    v64 = v28;
    v65 = v9;
    v29 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v76 = v63;
    *v29 = 68160259;
    *(v29 + 4) = 2;
    *(v29 + 8) = 256;
    v30 = v67;
    v31 = &v15[*(v67 + 20)];
    *(v29 + 10) = *v31;
    v66 = MissingMessages;
    *(v29 + 11) = 2082;
    v32 = &v18[*(v30 + 20)];
    *(v29 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), &v76);
    *(v29 + 21) = 1040;
    *(v29 + 23) = 2;
    *(v29 + 27) = 512;
    LOWORD(v31) = *(v31 + 12);
    sub_10006F72C(v15, type metadata accessor for MailboxTaskLogger);
    *(v29 + 29) = v31;
    *(v29 + 31) = 2160;
    *(v29 + 33) = 0x786F626C69616DLL;
    *(v29 + 41) = 2085;
    v33 = *(v32 + 4);
    LODWORD(v32) = *(v32 + 10);

    sub_10006F72C(v18, type metadata accessor for MailboxTaskLogger);
    v73 = v33;
    LODWORD(v74) = v32;
    v34 = sub_1004A5824();
    v36 = sub_10015BA6C(v34, v35, &v76);

    *(v29 + 43) = v36;
    *(v29 + 51) = 2082;
    v37 = sub_10015BA6C(v68, v22, &v76);

    *(v29 + 53) = v37;
    v68 = v29;
    *(v29 + 61) = 2082;
    v38 = v66;
    v39 = *(v25 + *(v66 + 44));
    v40 = *(v39 + 16);
    v41 = _swiftEmptyArrayStorage;
    if (v40)
    {
      v75 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v40, 0);
      v42 = (v39 + 40);
      v41 = v75;
      v43 = v27;
      do
      {
        v45 = *(v42 - 2);
        v44 = *(v42 - 1);
        if (*v42)
        {
          v73 = 14931;
          v46 = 0xE200000000000000;
        }

        else
        {
          v73 = 978332499;
          v46 = 0xE400000000000000;
        }

        v74 = v46;
        v71 = v45;
        v72 = v44;
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v77._countAndFlagsBits = sub_1004A5804();
        sub_1004A5994(v77);

        v47 = v73;
        v48 = v74;
        v75 = v41;
        v50 = v41[2];
        v49 = v41[3];
        if (v50 >= v49 >> 1)
        {
          sub_100091A08((v49 > 1), v50 + 1, 1);
          v41 = v75;
        }

        v41[2] = v50 + 1;
        v51 = &v41[2 * v50];
        v51[4] = v47;
        v51[5] = v48;
        v42 += 12;
        --v40;
      }

      while (v40);
      v27 = v43;
      v25 = v69;
      v52 = v70;
      v38 = v66;
    }

    else
    {
      v52 = v70;
    }

    v73 = v41;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v53 = sub_1004A5614();
    v55 = v54;

    sub_10006F72C(v25, type metadata accessor for FindMissingMessages);
    v56 = sub_10015BA6C(v53, v55, &v76);

    v57 = v68;
    *(v68 + 63) = v56;
    *(v57 + 71) = 2048;
    v58 = &v65[*(v38 + 52)];
    if (v58[8])
    {
      v59 = 0;
    }

    else
    {
      v59 = *v58;
    }

    sub_10006F72C(v65, type metadata accessor for FindMissingMessages);
    *(v57 + 73) = v59;
    *(v57 + 81) = 1024;
    v60 = v52 + *(v38 + 72);
    if (*(v60 + 24))
    {
      v61 = *(v60 + 12);
    }

    else
    {
      v61 = 0;
    }

    sub_10006F72C(v52, type metadata accessor for FindMissingMessages);
    *(v57 + 83) = v61;
    _os_log_impl(&_mh_execute_header, v27, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window-update %{public}s, ranges %{public}s, UID limit: %ld, grow: %u", v57, 0x57u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10006F72C(v26, type metadata accessor for FindMissingMessages);
    sub_10006F72C(v9, type metadata accessor for FindMissingMessages);
    sub_10006F72C(v15, type metadata accessor for MailboxTaskLogger);

    sub_10006F72C(v18, type metadata accessor for MailboxTaskLogger);
    sub_10006F72C(v25, type metadata accessor for FindMissingMessages);
  }
}

uint64_t sub_100067B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v98 = a4;
  v89 = a1;
  v90 = a2;
  v96 = a5;
  v101 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v88 = *(v101 - 8);
  v8 = *(v88 + 64);
  __chkstk_darwin(v101);
  v100 = &v86 - v9;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v91 = &v86 - v12;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  __chkstk_darwin(v13);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v86 - v17;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v87 = *(Missing - 8);
  v18 = *(v87 + 64);
  __chkstk_darwin(Missing);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v24 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v94 = &v86 - v29;
  v30 = sub_10000C9C0(&qword_1005CEA20, &qword_1004D14D8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = (&v86 - v32);
  v34 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v86 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v86 - v39;
  __chkstk_darwin(v41);
  v43 = &v86 - v42;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v44 = (v6 + MissingMessages[18]);
  v45 = v44[3];
  if (v45)
  {
    sub_100074168(v89, a3, *v44, v44[1] & 0xFFFFFFFF00000101, v44[2] | ((HIDWORD(v44[2]) & 1) << 32), v45, v33);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      sub_100025FDC(v33, v43, &qword_1005CEA28, &qword_1004D14E0);
      v46 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
      v47 = *(v46 + 48);
      sub_10000E268(v43, v40, &qword_1005CEA28, &qword_1004D14E0);
      v48 = v40[8];
      v49 = *(v34 + 48);
      v50 = v96;
      *v96 = *v40;
      *(v50 + 8) = v48;
      swift_storeEnumTagMultiPayload();
      v51 = v43;
      v52 = v86;
      sub_100025FDC(v51, v86, &qword_1005CEA28, &qword_1004D14E0);
      sub_1000738FC(v52 + *(v34 + 48), v50 + v47, type metadata accessor for ClientCommand);
      (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
      return sub_10006F72C(&v40[v49], type metadata accessor for ClientCommand);
    }
  }

  else
  {
    (*(v35 + 56))(v33, 1, 1, v34);
  }

  v90 = v6;
  sub_100025F40(v33, &qword_1005CEA20, &qword_1004D14D8);
  v54 = sub_100071DFC(a3);
  sub_100016D2C();
  sub_1004A7114();
  v55 = v54[2];
  if (v55)
  {
    v56 = *(v87 + 80);
    v89 = v54;
    v57 = v54 + ((v56 + 32) & ~v56);
    v58 = *(v87 + 72);
    v98 = (v88 + 16);
    do
    {
      sub_10006F6C4(v57, v23, type metadata accessor for FindMissingMessages.CommandID);
      sub_10006F6C4(v23, v20, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10006F72C(v23, type metadata accessor for FindMissingMessages.CommandID);
        v60 = v20;
      }

      else
      {
        v59 = v99;
        sub_100025FDC(v20, v99, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v98)(v100, v59, v101);
        sub_1004A7104();
        sub_100025F40(v59, &qword_1005CD1D0, &unk_1004CF2C0);
        v60 = v23;
      }

      sub_10006F72C(v60, type metadata accessor for FindMissingMessages.CommandID);
      v57 += v58;
      --v55;
    }

    while (v55);
  }

  v61 = v96;
  v62 = v94;
  sub_100025FDC(v27, v94, &unk_1005D91B0, &unk_1004CF400);
  v64 = v90;
  v63 = v91;
  v65 = v90 + MissingMessages[11];
  v66 = *v65;
  v67 = *(v65 + 8) | (*(v65 + 12) << 32);
  v68 = *(v65 + 13);
  v69 = *(v65 + 16);
  LOBYTE(v65) = *(v65 + 20);
  v70 = MissingMessages[9];
  v104 = v68;
  v103 = v65;
  sub_100079F40(v62, v90 + v70, v66, v67 | (v68 << 40), v69 | (v65 << 32), v91);
  v72 = v92;
  v71 = v93;
  v73 = (*(v92 + 48))(v63, 1, v93);
  v74 = v95;
  if (v73 == 1)
  {
    sub_100025F40(v62, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v63, &qword_1005CD518, &qword_1004CF2F0);
    v75 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
    return (*(*(v75 - 8) + 56))(v61, 1, 1, v75);
  }

  else
  {
    sub_100025FDC(v63, v95, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    v76 = swift_allocBox();
    v78 = v77;
    sub_10000E268(v74, v77, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(v72 + 56))(v78, 0, 1, v71);
    v79 = v76 | 0xA000000000000000;
    v80 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
    v81 = (v61 + *(v80 + 48));
    sub_10000E268(v74, v61, &qword_1005CD1D0, &unk_1004CF2C0);
    swift_storeEnumTagMultiPayload();
    if (*(v64 + MissingMessages[12] + 1) == 1)
    {
      sub_100025F40(v74, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v62, &unk_1005D91B0, &unk_1004CF400);
      *v81 = v79;
    }

    else
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      v82 = *(type metadata accessor for SearchReturnOption() - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1004CEAA0;
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v74, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v62, &unk_1005D91B0, &unk_1004CF400);
      *v81 = v79;
      v81[1] = v85;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v80 - 8) + 56))(v61, 0, 1, v80);
  }
}

uint64_t sub_100068F50(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v15 = *(*(Missing - 8) + 64);
  __chkstk_darwin(Missing);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000112D4(a7, a2, a3, a4, a5);
  if (!v8)
  {
    sub_10006F6C4(v21, v17, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = type metadata accessor for FindMissingMessages(0);
      v19 = v7 + *(result + 72);
      if (*(v19 + 24))
      {
        if (v17[8])
        {
          *(v19 + 16) = 0;
          *(v19 + 20) = 1;
        }

        else if (*(v19 + 20))
        {
          *(v19 + 16) = 1;
          *(v19 + 20) = 0;
        }
      }
    }

    else
    {
      return sub_10006F72C(v17, type metadata accessor for FindMissingMessages.CommandID);
    }
  }

  return result;
}

uint64_t sub_1000690B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v21 = (v6 + *(MissingMessages + 72));
  v22 = v21[3];
  if (v22 && (v23 = sub_100075DEC(*(v6 + 64), *(v6 + 72), a1, a2, a3, a4, a6, *v21, v21[1] & 0xFFFFFFFF00000101, v21[2] | ((HIDWORD(v21[2]) & 1) << 32), v22), (~v24 & 0xF000000000000007) != 0))
  {
    v30 = v24;
    v31 = v23;
    if ((sub_100070294(0, 1, a1, a2, a4, sub_10001FB54) & 1) == 0)
    {
      return v31;
    }

    sub_1000739C8(v31, v30);
  }

  else if ((sub_10007222C(1, a1, a2, a4, sub_100072034) & 1) == 0 && (sub_10001FB6C(0, 1, a2, a4) & 1) == 0)
  {
    v25 = v6 + *(MissingMessages + 44);
    v26 = *v25;
    v27 = *(v25 + 8) | (*(v25 + 12) << 32);
    v28 = *(v25 + 13);
    v29 = *(v25 + 16);
    LOBYTE(v25) = *(v25 + 20);
    v39 = v28;
    v38 = v25;
    sub_10007A65C(v26, v15);
    if ((*(v37 + 48))(v15, 1, v16) != 1)
    {
      sub_100025FDC(v15, v19, &qword_1005CD1D0, &unk_1004CF2C0);
      v33 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v34 = *(v33 + 48);
      v35 = *(v6 + 72);
      *v36 = *(v6 + 64);
      v36[1] = v35;
      sub_100025FDC(v19, v36 + v34, &qword_1005CD1D0, &unk_1004CF2C0);

      return 0;
    }

    sub_100025F40(v15, &qword_1005CD518, &qword_1004CF2F0);
  }

  return 0;
}

void sub_100069400(unint64_t a1, char a2)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if ((a2 & 1) == 0)
  {
    v9 = v2 + *(type metadata accessor for FindMissingMessages(0) + 72);
    v10 = *(v9 + 24);
    if (v10)
    {
      if ((a1 & 0x8000000000000000) == 0 && v10[2] > a1)
      {
        sub_100016D2C();
        sub_1004A7114();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1001398E0(v10);
        }

        if (v10[2] <= a1)
        {
          __break(1u);
        }

        else
        {
          v11 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
          v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1;
          sub_100077584(v8);
          sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
          *(v9 + 24) = v10;
        }
      }
    }
  }
}

uint64_t sub_100069580(const void *a1, uint64_t a2)
{
  v3 = v2;
  v113 = a1;
  v114 = a2;
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v110 = &v91[-v8];
  __chkstk_darwin(v9);
  v109 = &v91[-v10];
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v107 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s15MissingMessagesO10NewMissingVMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v108 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v17 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v19 = &v91[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = v19;
  __chkstk_darwin(v20);
  v22 = &v91[-v21];
  v105 = &v91[-v21];
  __chkstk_darwin(v23);
  v25 = &v91[-v24];
  v106 = &v91[-v24];
  __chkstk_darwin(v26);
  v28 = &v91[-v27];
  v29 = type metadata accessor for MessageBatches(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v33 = *(*(Missing - 8) + 64);
  __chkstk_darwin(Missing);
  v112 = &v91[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v97 = &v91[-v36];
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v92 = *(v3 + MissingMessages[14]);
  v93 = MissingMessages[9];
  v94 = v32;
  sub_10006F6C4(v3 + v93, v32, type metadata accessor for MessageBatches);
  v38 = MissingMessages[16];
  v96 = v28;
  sub_10000E268(v3 + v38, v28, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + v38, v25, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + MissingMessages[17], v22, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + MissingMessages[15], v19, &unk_1005D91B0, &unk_1004CF400);
  v39 = v3 + MissingMessages[13];
  v103 = *v39;
  v102 = *(v39 + 8);
  v40 = MissingMessages[11];
  v41 = v3 + MissingMessages[10];
  v101 = *v41;
  LODWORD(v25) = *(v41 + 8);
  v42 = *(v3 + v40);
  v43 = *(v3 + v40 + 8) | (*(v3 + v40 + 12) << 32);
  LOBYTE(v28) = *(v3 + v40 + 13);
  v44 = *(v3 + v40 + 16);
  v45 = *(v3 + v40 + 20);
  v46 = MissingMessages[18];
  v99 = v3;
  v47 = (v3 + v46);
  v100 = *v47;
  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  v50 = v107;
  sub_10006F6C4(v114, v107, type metadata accessor for MailboxTaskLogger);

  LOBYTE(v116[0]) = v28;
  v115 = v45;
  v51 = v44 | (v45 << 32);
  v52 = v108;
  sub_100069D74(v106, v105, v104, v103, v102, v101, v25, v42, v108, v43 | (v28 << 40), v51, v100, *(&v100 + 1), v49, v48, v50);
  memcpy(v116, v113, sizeof(v116));
  v53 = LOBYTE(v116[3]);
  v54 = BYTE1(v116[3]);
  v55 = v116[4];
  v56 = LOBYTE(v116[5]);
  v58 = v116[6];
  v57 = v116[7];

  v59 = sub_100166D28();
  v60 = v59;
  if (v55 == 3 || v55 == 2)
  {

    v61 = 0;
    v62 = v109;
    goto LABEL_27;
  }

  v63 = sub_100166E18(v59);
  v62 = v109;
  if (v54)
  {
    goto LABEL_13;
  }

  if (v55 != 1)
  {
    if (!v55 && v53)
    {
      if (v53 != 1)
      {
        v64 = 0;
        goto LABEL_16;
      }

      goto LABEL_40;
    }

LABEL_13:
    if (v63)
    {
      v64 = 0;
    }

    else
    {
      v64 = 2;
    }

    goto LABEL_16;
  }

  if (!v53)
  {
    goto LABEL_13;
  }

  if (v53 == 1)
  {
    v64 = 2;
    goto LABEL_16;
  }

LABEL_40:
  v64 = 1;
LABEL_16:
  sub_100013AD0(&off_100598658, v57);
  sub_100166E18(v60);
  v65 = sub_100013CF4(v57);

  if (v65 & 1) == 0 && (v54)
  {
    sub_100166E18(v60);
  }

  if (!v56)
  {
    v64 = 2;
  }

  if (v64)
  {
    v66 = 0;
  }

  else
  {
    v66 = v58 < 3989;
  }

  v61 = v66;
LABEL_27:
  MessageIdentifierSet.ranges.getter(v62);
  v67 = sub_1000E4C0C();
  v69 = v68;
  sub_100025F40(v62, &qword_1005CD7A0, &unk_1004CF590);
  v70 = HIDWORD(v67);
  if (v69)
  {
    LODWORD(v70) = 0;
  }

  v71 = v112;
  *v112 = v70;
  *(v71 + 4) = v69 & 1;
  v72 = v110;
  MessageIdentifierSet.ranges.getter(v110);
  v73 = sub_1000E4C0C();
  v75 = v74;
  result = sub_100025F40(v72, &qword_1005CD7A0, &unk_1004CF590);
  v77 = 0;
  if ((v75 & 1) == 0)
  {
    if (HIDWORD(v73) == 0xFFFFFFFF)
    {
      __break(1u);
      return result;
    }

    v77 = HIDWORD(v73) + 1;
    v71 = v112;
  }

  *(v71 + 8) = v77;
  *(v71 + 12) = v75 & 1;
  v78 = Missing;
  sub_10006F6C4(v52, v71 + *(Missing + 24), _s15MissingMessagesO10NewMissingVMa);
  if (v92)
  {
    v79 = 1;
  }

  else
  {
    v79 = 2;
  }

  if (!v61)
  {
    v79 = 0;
  }

  *(v71 + v78[7]) = v79;
  v80 = v71 + v78[8];
  v81 = v94;
  v82 = sub_1000D8054();
  *v80 = v82;
  *(v80 + 4) = BYTE4(v82) & 1;
  v83 = v98;
  v84 = v96;
  MessageIdentifierSet.ranges.getter(v98);
  v85 = sub_1000E4C0C();
  v87 = v86;
  sub_100025F40(v83, &qword_1005CD7A0, &unk_1004CF590);
  sub_10006F72C(v52, _s15MissingMessagesO10NewMissingVMa);
  sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
  sub_10006F72C(v81, type metadata accessor for MessageBatches);
  v88 = HIDWORD(v85);
  if (v87)
  {
    LODWORD(v88) = 0;
  }

  v89 = v71 + v78[9];
  *v89 = v88;
  *(v89 + 4) = v87 & 1;
  v90 = v97;
  sub_1000738FC(v71, v97, type metadata accessor for FindMissingMessages.Completed);
  sub_100073540(v113, *(v99 + 88), *(v99 + 96), *(v99 + v93), v90, v114);
  return sub_10006F72C(v90, type metadata accessor for FindMissingMessages.Completed);
}

uint64_t sub_100069D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v141 = a6;
  v142 = a8;
  v140 = a7;
  LODWORD(v129) = a5;
  v132 = a4;
  v149 = a3;
  v150 = a1;
  v139 = a9;
  v147 = a13;
  v148 = a15;
  v145 = a16;
  v146 = a12;
  v137 = a11;
  v138 = a14;
  v136 = a10;
  v126 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v135 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = &v121 - v20;
  __chkstk_darwin(v21);
  v127 = &v121 - v22;
  __chkstk_darwin(v23);
  v124 = &v121 - v24;
  __chkstk_darwin(v25);
  v125 = &v121 - v26;
  v131 = sub_1004A4A74();
  v130 = *(v131 - 8);
  v27 = *(v130 + 64);
  __chkstk_darwin(v131);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v121 - v31;
  v33 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v121 - v35;
  v37 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v133 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v121 - v41;
  __chkstk_darwin(v43);
  v45 = &v121 - v44;
  __chkstk_darwin(v46);
  v48 = &v121 - v47;
  __chkstk_darwin(v49);
  v51 = &v121 - v50;
  __chkstk_darwin(v52);
  v54 = &v121 - v53;
  v143 = a2;
  MessageIdentifierSet.union(_:)(a2, v51);
  MessageIdentifierSet.union(_:)(v149, v54);
  v55 = v148;
  v144 = v51;
  sub_100025F40(v51, &unk_1005D91B0, &unk_1004CF400);
  v134 = v54;
  if (v55)
  {

    v56 = v138;
    sub_1000769D4(v146, v147 & 0xFFFFFFFF00000101, v56 | ((HIDWORD(v56) & 1) << 32), v55);

    sub_100025FDC(v42, v45, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.union(_:)(v45, v48);
    sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v132) = 0;
    v131 = 0;
    v57 = 1;
    v58 = v56;
  }

  else
  {
    v122 = v32;
    v59 = v130;
    v60 = v131;
    v123 = v48;
    v61 = v150;
    v62 = v132;
    if ((v129 & 1) != 0 || MessageIdentifierSet.count.getter() <= v62)
    {
      v87 = v61;
      v48 = v123;
      sub_10000E268(v87, v123, &unk_1005D91B0, &unk_1004CF400);
      v131 = 0;
      LODWORD(v132) = 1;
      v57 = 1;
      v58 = v138;
    }

    else
    {
      v63 = v144;
      MessageIdentifierSet.suffix(_:)(v62, v37, v144);
      MessageIdentifierSet.intersection(_:)(v61, v123);
      sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
      v64 = sub_1000E5314();
      if (v64 & 0x100000000) != 0 || (v65 = v64, MessageIdentifierSet.ranges.getter(v36), v66 = sub_1000E4C0C(), v68 = v67, sub_100025F40(v36, &qword_1005CD7A0, &unk_1004CF590), (v68))
      {
        v69 = v59;
        v70 = *(v59 + 16);
        v71 = v29;
        v72 = v145;
        v73 = v60;
        v70(v29, v145, v60);
        v74 = v127;
        sub_10006F6C4(v72, v127, type metadata accessor for MailboxTaskLogger);
        v75 = v128;
        sub_10006F6C4(v72, v128, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v76 = sub_1004A4A54();
        v77 = sub_1004A6034();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v155 = v125;
          *v78 = 68159491;
          *(v78 + 4) = 2;
          *(v78 + 8) = 256;
          v79 = v126;
          v80 = v75 + *(v126 + 20);
          *(v78 + 10) = *v80;
          *(v78 + 11) = 2082;
          v81 = *(v79 + 20);
          v129 = v71;
          v82 = v74 + v81;
          *(v78 + 13) = sub_10015BA6C(*(v74 + v81 + 8), *(v74 + v81 + 16), &v155);
          *(v78 + 21) = 1040;
          *(v78 + 23) = 2;
          *(v78 + 27) = 512;
          LOWORD(v80) = *(v80 + 24);
          sub_10006F72C(v75, type metadata accessor for MailboxTaskLogger);
          *(v78 + 29) = v80;
          *(v78 + 31) = 2160;
          *(v78 + 33) = 0x786F626C69616DLL;
          *(v78 + 41) = 2085;
          v83 = *(v82 + 32);
          LODWORD(v82) = *(v82 + 40);

          sub_10006F72C(v74, type metadata accessor for MailboxTaskLogger);
          v153 = v83;
          v154 = v82;
          v84 = sub_1004A5824();
          v86 = sub_10015BA6C(v84, v85, &v155);

          *(v78 + 43) = v86;
          *(v78 + 51) = 2048;
          *(v78 + 53) = v132;
          _os_log_impl(&_mh_execute_header, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs.", v78, 0x3Du);
          swift_arrayDestroy();

          (*(v130 + 8))(v129, v131);
        }

        else
        {
          sub_10006F72C(v75, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v74, type metadata accessor for MailboxTaskLogger);
          (*(v69 + 8))(v71, v73);
        }
      }

      else
      {
        v129 = v66;
        v94 = v59;
        v95 = *(v59 + 16);
        v96 = v122;
        v97 = v145;
        v98 = v60;
        v95(v122, v145, v60);
        v99 = v125;
        sub_10006F6C4(v97, v125, type metadata accessor for MailboxTaskLogger);
        v100 = v124;
        sub_10006F6C4(v97, v124, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v101 = sub_1004A4A54();
        v102 = sub_1004A6034();
        if (os_log_type_enabled(v101, v102))
        {
          v127 = HIDWORD(v129);
          v103 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v155 = v129;
          *v103 = 68159747;
          LODWORD(v128) = v102;
          *(v103 + 4) = 2;
          *(v103 + 8) = 256;
          v104 = v126;
          v105 = v100 + *(v126 + 20);
          *(v103 + 10) = *v105;
          *(v103 + 11) = 2082;
          v106 = v99 + *(v104 + 20);
          *(v103 + 13) = sub_10015BA6C(*(v106 + 8), *(v106 + 16), &v155);
          *(v103 + 21) = 1040;
          *(v103 + 23) = 2;
          *(v103 + 27) = 512;
          LOWORD(v105) = *(v105 + 24);
          sub_10006F72C(v100, type metadata accessor for MailboxTaskLogger);
          *(v103 + 29) = v105;
          *(v103 + 31) = 2160;
          *(v103 + 33) = 0x786F626C69616DLL;
          *(v103 + 41) = 2085;
          v107 = *(v106 + 32);
          LODWORD(v106) = *(v106 + 40);

          sub_10006F72C(v99, type metadata accessor for MailboxTaskLogger);
          v153 = v107;
          v154 = v106;
          v108 = sub_1004A5824();
          v110 = sub_10015BA6C(v108, v109, &v155);

          *(v103 + 43) = v110;
          *(v103 + 51) = 2048;
          *(v103 + 53) = v132;
          *(v103 + 61) = 2082;
          v151 = v127;
          v152 = v65;
          v111 = sub_100016948();
          static MessageIdentifier.... infix(_:_:)(&v152, &v151, &type metadata for UID, v111, &v153);
          v112 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v113 = MessageIdentifierRange.debugDescription.getter(v112);
          v115 = sub_10015BA6C(v113, v114, &v155);

          *(v103 + 63) = v115;
          _os_log_impl(&_mh_execute_header, v101, v128, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs in range %{public}s.", v103, 0x47u);
          swift_arrayDestroy();

          (*(v130 + 8))(v122, v131);
        }

        else
        {
          sub_10006F72C(v100, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v99, type metadata accessor for MailboxTaskLogger);
          (*(v94 + 8))(v96, v98);
        }
      }

      v58 = v138;
      v48 = v123;
      v116 = MessageIdentifierSet.startIndex.getter(v37);
      v118 = v117;
      if (v116 == MessageIdentifierSet.endIndex.getter(v37) && v118 == v119)
      {
        LODWORD(v132) = 0;
        v131 = 0;
        v57 = 1;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v118, v37, &v153);
        LODWORD(v132) = 0;
        v57 = 0;
        v131 = v153;
      }
    }
  }

  v88 = v144;
  sub_10000E268(v48, v144, &unk_1005D91B0, &unk_1004CF400);
  v89 = v143;
  v90 = v133;
  sub_10000E268(v143, v133, &unk_1005D91B0, &unk_1004CF400);
  v91 = v145;
  v92 = v135;
  sub_10006F6C4(v145, v135, type metadata accessor for MailboxTaskLogger);
  LOBYTE(v153) = BYTE5(v136) & 1;
  LOBYTE(v155) = BYTE4(v137) & 1;
  v120 = v137 | ((BYTE4(v137) & 1) << 32);
  sub_10006CF1C(v88, v131 | (v57 << 32), v132, v90, v141, v140 & 1, v142, v136 & 0xFFFFFFFFFFLL | (((v136 >> 40) & 1) << 40), v139, v120, SBYTE4(v120), v146, v147, v58, SBYTE4(v58), v148, v92);
  sub_10006F72C(v91, type metadata accessor for MailboxTaskLogger);
  sub_100025F40(v149, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v89, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v134, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10006AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v128 = a5;
  v136 = _s15MissingMessagesOMa(0);
  v8 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v135 = &v120[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v120[-v11];
  __chkstk_darwin(v13);
  v15 = &v120[-v14];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v138 = Missing;
  v17 = *(*(Missing - 8) + 64);
  __chkstk_darwin(Missing);
  v19 = &v120[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = type metadata accessor for MailboxTaskLogger(0);
  v20 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v126 = &v120[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v127 = &v120[-v23];
  __chkstk_darwin(v24);
  v129 = &v120[-v25];
  __chkstk_darwin(v26);
  v130 = &v120[-v27];
  __chkstk_darwin(v28);
  v131 = &v120[-v29];
  __chkstk_darwin(v30);
  v132 = &v120[-v31];
  __chkstk_darwin(v32);
  v34 = &v120[-v33];
  __chkstk_darwin(v35);
  v37 = &v120[-v36];
  v38 = *(Missing + 24);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v134 = v38;
  v39 = sub_1004A70C4();
  v137 = a3;
  if ((v39 & 1) == 0)
  {
    sub_10006F6C4(a4, v37, type metadata accessor for MailboxTaskLogger);
    sub_10006F6C4(a4, v34, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10006F6C4(a3, v19, type metadata accessor for FindMissingMessages.Completed);
    v40 = sub_1004A4A54();
    v41 = sub_1004A6034();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v141[0] = v124;
      *v42 = 68159491;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v133;
      v44 = *(v133 + 20);
      v123 = v41;
      v45 = &v34[v44];
      *(v42 + 10) = v34[v44];
      *(v42 + 11) = 2082;
      v46 = *(v43 + 20);
      v122 = v40;
      v47 = &v37[v46];
      *(v42 + 13) = sub_10015BA6C(*&v37[v46 + 8], *&v37[v46 + 16], v141);
      *(v42 + 21) = 1040;
      *(v42 + 23) = 2;
      *(v42 + 27) = 512;
      v125 = a4;
      v48 = a1;
      v49 = v15;
      v50 = *(v45 + 12);
      sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);
      *(v42 + 29) = v50;
      *(v42 + 31) = 2160;
      *(v42 + 33) = 0x786F626C69616DLL;
      *(v42 + 41) = 2085;
      v51 = *(v47 + 4);
      v52 = *(v47 + 10);

      sub_10006F72C(v37, type metadata accessor for MailboxTaskLogger);
      v139 = v51;
      v140 = v52;
      v15 = v49;
      a1 = v48;
      a4 = v125;
      v53 = sub_1004A5824();
      v55 = sub_10015BA6C(v53, v54, v141);

      *(v42 + 43) = v55;
      *(v42 + 51) = 2048;
      v56 = v138[6];
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v57 = MessageIdentifierSet.count.getter();
      sub_10006F72C(v19, type metadata accessor for FindMissingMessages.Completed);
      *(v42 + 53) = v57;
      v58 = v122;
      _os_log_impl(&_mh_execute_header, v122, v123, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld new UID(s).", v42, 0x3Du);
      swift_arrayDestroy();

      a3 = v137;
    }

    else
    {
      sub_10006F72C(v19, type metadata accessor for FindMissingMessages.Completed);
      sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);

      sub_10006F72C(v37, type metadata accessor for MailboxTaskLogger);
    }
  }

  v59 = type metadata accessor for MailboxSyncState();
  v60 = *(v59 + 68);
  sub_10006F6C4(a1 + v60, v15, _s15MissingMessagesOMa);
  sub_1000E3CF8(&v134[a3]);
  sub_10006F6C4(a1 + v60, v12, _s15MissingMessagesOMa);
  v61 = sub_1000E8854(v12, v15);
  sub_10006F72C(v12, _s15MissingMessagesOMa);
  v62 = a4;
  sub_10006B9F0(a4, a1 + v60);
  if ((*(a3 + 12) & 1) == 0)
  {
    v63 = *(a3 + 8);
    if (*(a1 + 12))
    {
      goto LABEL_10;
    }

    v64 = *(a1 + 8);
    v65 = v64 >= v63;
    if (v64 > v63)
    {
      v63 = *(a1 + 8);
    }

    if (!v65)
    {
LABEL_10:
      v123 = v61;
      v124 = v60;
      *(a1 + 8) = v63;
      *(a1 + 12) = 0;
      v66 = v132;
      sub_10006F6C4(v62, v132, type metadata accessor for MailboxTaskLogger);
      v67 = v131;
      sub_10006F6C4(v62, v131, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v68 = sub_1004A4A54();
      v69 = sub_1004A6034();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v134 = v15;
        v122 = v71;
        v141[0] = v71;
        *v70 = 68159491;
        v125 = v59;
        *(v70 + 4) = 2;
        *(v70 + 8) = 256;
        v72 = v133;
        v73 = v66;
        v74 = &v67[*(v133 + 20)];
        *(v70 + 10) = *v74;
        *(v70 + 11) = 2082;
        v75 = *(v72 + 20);
        v121 = v69;
        v76 = v73 + v75;
        *(v70 + 13) = sub_10015BA6C(*(v73 + v75 + 8), *(v73 + v75 + 16), v141);
        *(v70 + 21) = 1040;
        *(v70 + 23) = 2;
        *(v70 + 27) = 512;
        LOWORD(v74) = *(v74 + 12);
        sub_10006F72C(v67, type metadata accessor for MailboxTaskLogger);
        *(v70 + 29) = v74;
        *(v70 + 31) = 2160;
        *(v70 + 33) = 0x786F626C69616DLL;
        *(v70 + 41) = 2085;
        v77 = *(v76 + 32);
        LODWORD(v76) = *(v76 + 40);

        sub_10006F72C(v73, type metadata accessor for MailboxTaskLogger);
        v139 = v77;
        v140 = v76;
        v78 = sub_1004A5824();
        v80 = sub_10015BA6C(v78, v79, v141);
        v59 = v125;

        *(v70 + 43) = v80;
        *(v70 + 51) = 1024;
        *(v70 + 53) = v63;
        _os_log_impl(&_mh_execute_header, v68, v121, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating sync state next UID to %u.", v70, 0x39u);
        swift_arrayDestroy();
        v15 = v134;
      }

      else
      {
        sub_10006F72C(v67, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v66, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v137;
      v60 = v124;
      LOBYTE(v61) = v123;
    }
  }

  v81 = v138;
  if (*(a3 + v138[7]))
  {
    v82 = v62;
    if (*(a3 + v138[7]) == 1)
    {
      v83 = v62;
      v84 = v130;
      sub_10006F6C4(v83, v130, type metadata accessor for MailboxTaskLogger);
      v85 = v129;
      sub_10006F6C4(v82, v129, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v86 = sub_1004A4A54();
      v87 = sub_1004A6034();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v141[0] = v132;
        *v88 = 68159235;
        v134 = v15;
        *(v88 + 4) = 2;
        *(v88 + 8) = 256;
        v89 = v133;
        v90 = *(v133 + 20);
        v125 = v59;
        v91 = &v85[v90];
        *(v88 + 10) = v85[v90];
        *(v88 + 11) = 2082;
        v92 = &v84[*(v89 + 20)];
        *(v88 + 13) = sub_10015BA6C(*(v92 + 1), *(v92 + 2), v141);
        *(v88 + 21) = 1040;
        *(v88 + 23) = 2;
        *(v88 + 27) = 512;
        LOWORD(v91) = *(v91 + 12);
        sub_10006F72C(v85, type metadata accessor for MailboxTaskLogger);
        *(v88 + 29) = v91;
        *(v88 + 31) = 2160;
        *(v88 + 33) = 0x786F626C69616DLL;
        *(v88 + 41) = 2085;
        v93 = *(v92 + 4);
        LODWORD(v92) = *(v92 + 10);

        sub_10006F72C(v84, type metadata accessor for MailboxTaskLogger);
        v139 = v93;
        v140 = v92;
        v94 = sub_1004A5824();
        v96 = sub_10015BA6C(v94, v95, v141);
        v15 = v134;
        v81 = v138;

        *(v88 + 43) = v96;
        v59 = v125;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run after initial run.", v88, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10006F72C(v85, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v84, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v137;
      sub_10013FC9C(0xCu);
      sub_100088568(&v139, 12);
    }

    else if ((v61 & 1) == 0)
    {
      v97 = (a3 + v138[8]);
      v98 = *v97;
      LOBYTE(v139) = *(v97 + 4);
      if (sub_1000E5918(v128, v98 | (v139 << 32)))
      {
        v99 = v127;
        sub_10006F6C4(v62, v127, type metadata accessor for MailboxTaskLogger);
        v100 = v62;
        v101 = v126;
        sub_10006F6C4(v100, v126, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v102 = sub_1004A4A54();
        v103 = sub_1004A6034();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v141[0] = v132;
          *v104 = 68159235;
          v134 = v15;
          *(v104 + 4) = 2;
          *(v104 + 8) = 256;
          v105 = v133;
          v106 = *(v133 + 20);
          v125 = v59;
          v107 = &v101[v106];
          *(v104 + 10) = v101[v106];
          *(v104 + 11) = 2082;
          v108 = &v99[*(v105 + 20)];
          *(v104 + 13) = sub_10015BA6C(*(v108 + 1), *(v108 + 2), v141);
          *(v104 + 21) = 1040;
          *(v104 + 23) = 2;
          *(v104 + 27) = 512;
          LOWORD(v107) = *(v107 + 12);
          sub_10006F72C(v101, type metadata accessor for MailboxTaskLogger);
          *(v104 + 29) = v107;
          *(v104 + 31) = 2160;
          *(v104 + 33) = 0x786F626C69616DLL;
          *(v104 + 41) = 2085;
          v109 = *(v108 + 4);
          LODWORD(v108) = *(v108 + 10);

          sub_10006F72C(v99, type metadata accessor for MailboxTaskLogger);
          v139 = v109;
          v140 = v108;
          v110 = sub_1004A5824();
          v112 = sub_10015BA6C(v110, v111, v141);
          v15 = v134;
          v81 = v138;

          *(v104 + 43) = v112;
          v59 = v125;
          _os_log_impl(&_mh_execute_header, v102, v103, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run.", v104, 0x33u);
          swift_arrayDestroy();
        }

        else
        {
          sub_10006F72C(v101, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v99, type metadata accessor for MailboxTaskLogger);
        }

        sub_10013FC9C(0xCu);
        sub_100088568(&v139, 12);
        a3 = v137;
      }
    }
  }

  v113 = v135;
  sub_10006F6C4(a1 + v60, v135, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10006F72C(v113, _s15MissingMessagesOMa);
  if (EnumCaseMultiPayload == 1)
  {
    sub_10013FC9C(1u);
    sub_100088568(&v139, 1);
  }

  v115 = (a3 + v81[9]);
  if ((v115[1] & 1) == 0)
  {
    v116 = *v115;
    v117 = *(v59 + 60);
    v118 = type metadata accessor for MessageBatches(0);
    if (!(*(*(v118 - 8) + 48))(a1 + v117, 1, v118))
    {
      LOBYTE(v139) = 0;
      sub_1000D7F2C(v116);
    }
  }

  return sub_10006F72C(v15, _s15MissingMessagesOMa);
}

uint64_t sub_10006B9F0(uint64_t a1, uint64_t a2)
{
  v187 = a1;
  v176 = _s15MissingMessagesO8CompleteVMa(0);
  v3 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v174 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v180 = &v168 - v6;
  __chkstk_darwin(v7);
  v185 = &v168 - v8;
  v9 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v182 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v184 = &v168 - v13;
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v175 = &v168 - v16;
  v181 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v173 = &v168 - v21;
  __chkstk_darwin(v22);
  v24 = &v168 - v23;
  __chkstk_darwin(v25);
  v170 = &v168 - v26;
  __chkstk_darwin(v27);
  v29 = &v168 - v28;
  __chkstk_darwin(v30);
  v172 = &v168 - v31;
  __chkstk_darwin(v32);
  v34 = &v168 - v33;
  __chkstk_darwin(v35);
  v169 = &v168 - v36;
  v186 = _s15MissingMessagesO10IncompleteVMa(0);
  v37 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v179 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v177 = &v168 - v40;
  __chkstk_darwin(v41);
  v171 = &v168 - v42;
  __chkstk_darwin(v43);
  v178 = &v168 - v44;
  __chkstk_darwin(v45);
  v47 = &v168 - v46;
  __chkstk_darwin(v48);
  v50 = &v168 - v49;
  __chkstk_darwin(v51);
  v53 = &v168 - v52;
  v54 = _s15MissingMessagesOMa(0);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v57 = &v168 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006F6C4(a2, v57, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1000738FC(v57, v53, _s15MissingMessagesO10IncompleteVMa);
      v59 = &v53[*(v186 + 20)];
      if (v59[4])
      {
        v60 = v187;
        v61 = v172;
        sub_10006F6C4(v187, v172, type metadata accessor for MailboxTaskLogger);
        sub_10006F6C4(v60, v29, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v62 = v171;
        sub_10006F6C4(v53, v171, _s15MissingMessagesO10IncompleteVMa);
        v63 = v177;
        sub_10006F6C4(v53, v177, _s15MissingMessagesO10IncompleteVMa);
        v64 = v179;
        sub_10006F6C4(v53, v179, _s15MissingMessagesO10IncompleteVMa);
        v65 = sub_1004A4A54();
        v66 = sub_1004A6034();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v187 = v53;
          v68 = v67;
          v185 = swift_slowAlloc();
          v190[0] = v185;
          *v68 = 68160003;
          *(v68 + 4) = 2;
          *(v68 + 8) = 256;
          v69 = v181;
          v70 = &v29[*(v181 + 20)];
          *(v68 + 10) = *v70;
          *(v68 + 11) = 2082;
          v71 = v62;
          v72 = v61 + *(v69 + 20);
          *(v68 + 13) = sub_10015BA6C(*(v72 + 8), *(v72 + 16), v190);
          *(v68 + 21) = 1040;
          *(v68 + 23) = 2;
          *(v68 + 27) = 512;
          LOWORD(v70) = *(v70 + 12);
          sub_10006F72C(v29, type metadata accessor for MailboxTaskLogger);
          *(v68 + 29) = v70;
          *(v68 + 31) = 2160;
          *(v68 + 33) = 0x786F626C69616DLL;
          *(v68 + 41) = 2085;
          v73 = *(v72 + 32);
          LODWORD(v70) = *(v72 + 40);

          sub_10006F72C(v61, type metadata accessor for MailboxTaskLogger);
          v188 = v73;
          v189 = v70;
          v74 = sub_1004A5824();
          v76 = sub_10015BA6C(v74, v75, v190);

          *(v68 + 43) = v76;
          *(v68 + 51) = 2048;
          v77 = v175;
          sub_10000E268(v71, v175, &qword_1005CD1D0, &unk_1004CF2C0);
          v78 = v183;
          v79 = MessageIdentifierSet.count.getter();
          sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
          v80 = _s15MissingMessagesO10IncompleteVMa;
          sub_10006F72C(v71, _s15MissingMessagesO10IncompleteVMa);
          *(v68 + 53) = v79;
          *(v68 + 61) = 2048;
          v81 = _s15MissingMessagesO8ProgressVMa(0);
          v82 = v177;
          v83 = v177 + *(v81 + 20);
          v84 = MessageIdentifierSet.count.getter();
          sub_10006F72C(v82, _s15MissingMessagesO10IncompleteVMa);
          *(v68 + 63) = v84;
          *(v68 + 71) = 2082;
          v85 = v179;
          v86 = v182;
          sub_10006F6C4(v179 + *(v186 + 24), v182, _s15MissingMessagesO11QueriedUIDsVMa);
          v87 = v184;
          sub_100025FDC(v86, v184, &unk_1005D91B0, &unk_1004CF400);
          v88 = MessageIdentifierSet.debugDescription.getter(v78);
          v90 = v89;
          sub_100025F40(v87, &unk_1005D91B0, &unk_1004CF400);
          sub_10006F72C(v85, _s15MissingMessagesO10IncompleteVMa);
          v91 = sub_10015BA6C(v88, v90, v190);

          *(v68 + 73) = v91;
          _os_log_impl(&_mh_execute_header, v65, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: nil, queriedUIDs: %{public}s", v68, 0x51u);
          swift_arrayDestroy();

          v92 = v187;
LABEL_19:
          v115 = v80;
          return sub_10006F72C(v92, v115);
        }

        sub_10006F72C(v63, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v62, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v29, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v64, _s15MissingMessagesO10IncompleteVMa);
        v166 = v61;
        goto LABEL_15;
      }

      LODWORD(v185) = *v59;
      v116 = v187;
      v117 = v169;
      sub_10006F6C4(v187, v169, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v116, v34, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10006F6C4(v53, v50, _s15MissingMessagesO10IncompleteVMa);
      sub_10006F6C4(v53, v47, _s15MissingMessagesO10IncompleteVMa);
      v118 = v178;
      sub_10006F6C4(v53, v178, _s15MissingMessagesO10IncompleteVMa);
      v119 = sub_1004A4A54();
      v120 = sub_1004A6034();
      if (!os_log_type_enabled(v119, v120))
      {
        sub_10006F72C(v47, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v50, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v118, _s15MissingMessagesO10IncompleteVMa);
        v166 = v117;
LABEL_15:
        sub_10006F72C(v166, type metadata accessor for MailboxTaskLogger);
        v92 = v53;
        v115 = _s15MissingMessagesO10IncompleteVMa;
        return sub_10006F72C(v92, v115);
      }

      v121 = v47;
      v122 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v190[0] = v180;
      *v122 = 68160259;
      LODWORD(v179) = v120;
      *(v122 + 4) = 2;
      *(v122 + 8) = 256;
      v123 = v181;
      v124 = &v34[*(v181 + 20)];
      *(v122 + 10) = *v124;
      *(v122 + 11) = 2082;
      v125 = v117;
      v126 = v117 + *(v123 + 20);
      *(v122 + 13) = sub_10015BA6C(*(v126 + 8), *(v126 + 16), v190);
      *(v122 + 21) = 1040;
      *(v122 + 23) = 2;
      *(v122 + 27) = 512;
      LOWORD(v124) = *(v124 + 12);
      sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);
      *(v122 + 29) = v124;
      *(v122 + 31) = 2160;
      *(v122 + 33) = 0x786F626C69616DLL;
      *(v122 + 41) = 2085;
      v127 = *(v126 + 32);
      LODWORD(v126) = *(v126 + 40);

      sub_10006F72C(v125, type metadata accessor for MailboxTaskLogger);
      v188 = v127;
      v189 = v126;
      v128 = sub_1004A5824();
      v130 = sub_10015BA6C(v128, v129, v190);

      *(v122 + 43) = v130;
      *(v122 + 51) = 2048;
      v131 = v175;
      sub_10000E268(v50, v175, &qword_1005CD1D0, &unk_1004CF2C0);
      v187 = v53;
      v132 = v183;
      v133 = MessageIdentifierSet.count.getter();
      sub_100025F40(v131, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v50, _s15MissingMessagesO10IncompleteVMa);
      *(v122 + 53) = v133;
      *(v122 + 61) = 2048;
      v134 = v121 + *(_s15MissingMessagesO8ProgressVMa(0) + 20);
      v135 = MessageIdentifierSet.count.getter();
      sub_10006F72C(v121, _s15MissingMessagesO10IncompleteVMa);
      *(v122 + 63) = v135;
      *(v122 + 71) = 1024;
      *(v122 + 73) = v185;
      *(v122 + 77) = 2082;
      v136 = v178;
      v137 = v182;
      sub_10006F6C4(v178 + *(v186 + 24), v182, _s15MissingMessagesO11QueriedUIDsVMa);
      v138 = v184;
      sub_100025FDC(v137, v184, &unk_1005D91B0, &unk_1004CF400);
      v139 = MessageIdentifierSet.debugDescription.getter(v132);
      v141 = v140;
      sub_100025F40(v138, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v136, _s15MissingMessagesO10IncompleteVMa);
      v142 = sub_10015BA6C(v139, v141, v190);

      *(v122 + 79) = v142;
      _os_log_impl(&_mh_execute_header, v119, v179, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: %u, queriedUIDs: %{public}s", v122, 0x57u);
      swift_arrayDestroy();

      v92 = v187;
      v115 = _s15MissingMessagesO10IncompleteVMa;
      return sub_10006F72C(v92, v115);
    }

    v93 = v185;
    sub_1000738FC(v57, v185, _s15MissingMessagesO8CompleteVMa);
    if (*(v93 + 4))
    {
      v94 = v187;
      v95 = v173;
      sub_10006F6C4(v187, v173, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v94, v19, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v96 = v174;
      sub_10006F6C4(v93, v174, _s15MissingMessagesO8CompleteVMa);
      v97 = sub_1004A4A54();
      v98 = sub_1004A6034();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v190[0] = v187;
        *v99 = 68159491;
        *(v99 + 4) = 2;
        *(v99 + 8) = 256;
        v100 = v181;
        v101 = &v19[*(v181 + 20)];
        *(v99 + 10) = *v101;
        *(v99 + 11) = 2082;
        v102 = v95 + *(v100 + 20);
        *(v99 + 13) = sub_10015BA6C(*(v102 + 8), *(v102 + 16), v190);
        *(v99 + 21) = 1040;
        *(v99 + 23) = 2;
        *(v99 + 27) = 512;
        LOWORD(v101) = *(v101 + 12);
        sub_10006F72C(v19, type metadata accessor for MailboxTaskLogger);
        *(v99 + 29) = v101;
        *(v99 + 31) = 2160;
        *(v99 + 33) = 0x786F626C69616DLL;
        *(v99 + 41) = 2085;
        v103 = *(v102 + 32);
        v104 = *(v102 + 40);

        sub_10006F72C(v95, type metadata accessor for MailboxTaskLogger);
        v188 = v103;
        v189 = v104;
        v105 = sub_1004A5824();
        v107 = sub_10015BA6C(v105, v106, v190);

        *(v99 + 43) = v107;
        *(v99 + 51) = 2082;
        v108 = v182;
        sub_10006F6C4(v96 + *(v176 + 20), v182, _s15MissingMessagesO11QueriedUIDsVMa);
        v109 = v108;
        v110 = v184;
        sub_100025FDC(v109, v184, &unk_1005D91B0, &unk_1004CF400);
        v111 = MessageIdentifierSet.debugDescription.getter(v183);
        v113 = v112;
        sub_100025F40(v110, &unk_1005D91B0, &unk_1004CF400);
        sub_10006F72C(v96, _s15MissingMessagesO8CompleteVMa);
        v114 = sub_10015BA6C(v111, v113, v190);

        *(v99 + 53) = v114;
        _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched-window upper bound: nil, queriedUIDs: %{public}s", v99, 0x3Du);
        swift_arrayDestroy();

        v92 = v93;
        v115 = _s15MissingMessagesO8CompleteVMa;
        return sub_10006F72C(v92, v115);
      }

      sub_10006F72C(v19, type metadata accessor for MailboxTaskLogger);

      v80 = _s15MissingMessagesO8CompleteVMa;
      sub_10006F72C(v96, _s15MissingMessagesO8CompleteVMa);
      v167 = v95;
    }

    else
    {
      v143 = *v93;
      v144 = v187;
      v145 = v170;
      sub_10006F6C4(v187, v170, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v144, v24, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v146 = v180;
      sub_10006F6C4(v93, v180, _s15MissingMessagesO8CompleteVMa);
      v147 = sub_1004A4A54();
      v148 = sub_1004A6034();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v190[0] = swift_slowAlloc();
        *v149 = 68159747;
        *(v149 + 4) = 2;
        *(v149 + 8) = 256;
        v150 = v181;
        v151 = &v24[*(v181 + 20)];
        *(v149 + 10) = *v151;
        *(v149 + 11) = 2082;
        v152 = v145 + *(v150 + 20);
        *(v149 + 13) = sub_10015BA6C(*(v152 + 8), *(v152 + 16), v190);
        *(v149 + 21) = 1040;
        *(v149 + 23) = 2;
        *(v149 + 27) = 512;
        LOWORD(v151) = *(v151 + 12);
        sub_10006F72C(v24, type metadata accessor for MailboxTaskLogger);
        *(v149 + 29) = v151;
        *(v149 + 31) = 2160;
        *(v149 + 33) = 0x786F626C69616DLL;
        *(v149 + 41) = 2085;
        v153 = v145;
        v154 = *(v152 + 32);
        LODWORD(v152) = *(v152 + 40);

        sub_10006F72C(v153, type metadata accessor for MailboxTaskLogger);
        v188 = v154;
        v189 = v152;
        v155 = sub_1004A5824();
        v157 = sub_10015BA6C(v155, v156, v190);

        *(v149 + 43) = v157;
        *(v149 + 51) = 1024;
        *(v149 + 53) = v143;
        *(v149 + 57) = 2082;
        v158 = v180;
        v159 = v182;
        sub_10006F6C4(v180 + *(v176 + 20), v182, _s15MissingMessagesO11QueriedUIDsVMa);
        v160 = v159;
        v161 = v184;
        sub_100025FDC(v160, v184, &unk_1005D91B0, &unk_1004CF400);
        v162 = MessageIdentifierSet.debugDescription.getter(v183);
        v164 = v163;
        sub_100025F40(v161, &unk_1005D91B0, &unk_1004CF400);
        sub_10006F72C(v158, _s15MissingMessagesO8CompleteVMa);
        v165 = sub_10015BA6C(v162, v164, v190);

        *(v149 + 59) = v165;
        _os_log_impl(&_mh_execute_header, v147, v148, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched window upper bound: %u, queriedUIDs: %{public}s", v149, 0x43u);
        swift_arrayDestroy();

        v92 = v185;
        v115 = _s15MissingMessagesO8CompleteVMa;
        return sub_10006F72C(v92, v115);
      }

      sub_10006F72C(v24, type metadata accessor for MailboxTaskLogger);

      v80 = _s15MissingMessagesO8CompleteVMa;
      sub_10006F72C(v146, _s15MissingMessagesO8CompleteVMa);
      v167 = v145;
    }

    sub_10006F72C(v167, type metadata accessor for MailboxTaskLogger);
    v92 = v93;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10006CDF8()
{
  if (qword_1005CCE40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006CE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1000690B8(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  a7[2] = v10;
  return result;
}

uint64_t WatchOSHeaderInfo.from.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10006CF1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  v277 = a8;
  v274 = a7;
  v286 = a6;
  v272 = a5;
  v260 = a3;
  v273 = a2;
  v275 = a9;
  v289 = a17;
  v263 = sub_10000C9C0(&qword_1005CEA08, &unk_1004D14B0);
  v19 = *(*(v263 - 8) + 64);
  __chkstk_darwin(v263);
  v264 = &v246 - v20;
  v21 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v269 = &v246 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v270 = &v246 - v25;
  __chkstk_darwin(v26);
  v284 = &v246 - v27;
  v267 = type metadata accessor for MailboxTaskLogger(0);
  v28 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v266 = &v246 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v280 = &v246 - v31;
  __chkstk_darwin(v32);
  v250 = &v246 - v33;
  __chkstk_darwin(v34);
  v252 = &v246 - v35;
  __chkstk_darwin(v36);
  v249 = &v246 - v37;
  __chkstk_darwin(v38);
  v251 = &v246 - v39;
  __chkstk_darwin(v40);
  v261 = (&v246 - v41);
  __chkstk_darwin(v42);
  v278 = &v246 - v43;
  v288 = sub_1004A4A74();
  v290 = *(v288 - 8);
  v44 = v290[8];
  __chkstk_darwin(v288);
  v268 = &v246 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v259 = &v246 - v47;
  __chkstk_darwin(v48);
  v255 = &v246 - v49;
  __chkstk_darwin(v50);
  v279 = &v246 - v51;
  v52 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v271 = &v246 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v276 = &v246 - v56;
  __chkstk_darwin(v57);
  v253 = &v246 - v58;
  __chkstk_darwin(v59);
  v61 = &v246 - v60;
  v62 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v265 = &v246 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v262 = &v246 - v66;
  __chkstk_darwin(v67);
  v281 = &v246 - v68;
  __chkstk_darwin(v69);
  v257 = &v246 - v70;
  __chkstk_darwin(v71);
  v248 = &v246 - v72;
  __chkstk_darwin(v73);
  v247 = &v246 - v74;
  __chkstk_darwin(v75);
  v254 = &v246 - v76;
  __chkstk_darwin(v77);
  v258 = &v246 - v78;
  __chkstk_darwin(v79);
  v256 = &v246 - v80;
  __chkstk_darwin(v81);
  v246 = &v246 - v82;
  __chkstk_darwin(v83);
  v85 = &v246 - v84;
  __chkstk_darwin(v86);
  v88 = &v246 - v87;
  __chkstk_darwin(v89);
  v91 = &v246 - v90;
  MessageIdentifierSet.subtracting(_:)(a4, &v246 - v90);
  MessageIdentifierSet.ranges.getter(v61);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v92 = sub_1004A7044();
  v93 = sub_1004A7074();
  sub_100025F40(v61, &qword_1005CD7A0, &unk_1004CF590);
  v94 = v92 == v93;
  v95 = v289;
  v285 = a1;
  v282 = a4;
  v283 = v91;
  v287 = v62;
  if (!v94)
  {
    v115 = v288;
    MessageIdentifierSet.ranges.getter(v61);
    v116 = sub_1004A7044();
    v117 = sub_1004A7074();
    v118 = sub_1004A7044();
    result = sub_1004A7074();
    if (v116 < v118 || result < v116)
    {
      __break(1u);
    }

    else
    {
      v120 = sub_1004A7044();
      v121 = sub_1004A7074();
      result = sub_100025F40(v61, &qword_1005CD7A0, &unk_1004CF590);
      if (v117 >= v120 && v121 >= v117)
      {
        if (!__OFSUB__(v117, v116))
        {
          v122 = v290[2];
          if (v117 - v116 > 19)
          {
            v153 = v289;
            v154 = v115;
            v122(v259, v289, v115);
            v155 = v252;
            sub_10006F6C4(v153, v252, type metadata accessor for MailboxTaskLogger);
            v156 = v250;
            sub_10006F6C4(v153, v250, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v157 = v247;
            sub_10000E268(v91, v247, &unk_1005D91B0, &unk_1004CF400);
            v111 = v282;
            v158 = v248;
            sub_10000E268(v282, v248, &unk_1005D91B0, &unk_1004CF400);
            sub_10000E268(v285, v257, &unk_1005D91B0, &unk_1004CF400);
            v159 = sub_1004A4A54();
            v160 = sub_1004A6034();
            v161 = os_log_type_enabled(v159, v160);
            v162 = v272;
            if (v161)
            {
              v163 = swift_slowAlloc();
              v279 = swift_slowAlloc();
              v293 = v279;
              *v163 = 68160003;
              LODWORD(v278) = v160;
              *(v163 + 4) = 2;
              *(v163 + 8) = 256;
              v164 = v267;
              v165 = v156 + *(v267 + 20);
              *(v163 + 10) = *v165;
              *(v163 + 11) = 2082;
              v166 = *(v164 + 20);
              v261 = v159;
              v167 = v156;
              v168 = v155 + v166;
              *(v163 + 13) = sub_10015BA6C(*(v155 + v166 + 8), *(v155 + v166 + 16), &v293);
              *(v163 + 21) = 1040;
              *(v163 + 23) = 2;
              *(v163 + 27) = 512;
              LOWORD(v165) = *(v165 + 24);
              sub_10006F72C(v167, type metadata accessor for MailboxTaskLogger);
              *(v163 + 29) = v165;
              *(v163 + 31) = 2160;
              *(v163 + 33) = 0x786F626C69616DLL;
              *(v163 + 41) = 2085;
              v169 = *(v168 + 32);
              LODWORD(v168) = *(v168 + 40);

              sub_10006F72C(v155, type metadata accessor for MailboxTaskLogger);
              v291 = v169;
              v292 = v168;
              v170 = sub_1004A5824();
              v172 = sub_10015BA6C(v170, v171, &v293);

              *(v163 + 43) = v172;
              *(v163 + 51) = 2048;
              v173 = MessageIdentifierSet.count.getter();
              sub_100025F40(v157, &unk_1005D91B0, &unk_1004CF400);
              *(v163 + 53) = v173;
              *(v163 + 61) = 2048;
              v174 = MessageIdentifierSet.count.getter();
              sub_100025F40(v158, &unk_1005D91B0, &unk_1004CF400);
              *(v163 + 63) = v174;
              *(v163 + 71) = 2048;
              v175 = v257;
              v176 = MessageIdentifierSet.count.getter();
              v111 = v282;
              sub_100025F40(v175, &unk_1005D91B0, &unk_1004CF400);
              *(v163 + 73) = v176;
              v177 = v261;
              _os_log_impl(&_mh_execute_header, v261, v278, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs missing locally. (%ld locally, %ld on server)", v163, 0x51u);
              swift_arrayDestroy();

              v261 = v290[1];
              (v261)(v259, v154);
            }

            else
            {
              sub_100025F40(v257, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v158, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v157, &unk_1005D91B0, &unk_1004CF400);
              sub_10006F72C(v156, type metadata accessor for MailboxTaskLogger);

              v261 = v290[1];
              (v261)(v259, v154);
              sub_10006F72C(v155, type metadata accessor for MailboxTaskLogger);
            }

            v178 = v277;
            goto LABEL_22;
          }

          v123 = v255;
          v124 = v289;
          v125 = v115;
          v122(v255, v289, v115);
          v126 = v251;
          sub_10006F6C4(v124, v251, type metadata accessor for MailboxTaskLogger);
          v127 = v249;
          sub_10006F6C4(v124, v249, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v128 = v246;
          sub_10000E268(v91, v246, &unk_1005D91B0, &unk_1004CF400);
          sub_10000E268(v91, v256, &unk_1005D91B0, &unk_1004CF400);
          v111 = v282;
          sub_10000E268(v282, v258, &unk_1005D91B0, &unk_1004CF400);
          v129 = v254;
          sub_10000E268(v285, v254, &unk_1005D91B0, &unk_1004CF400);
          v130 = sub_1004A4A54();
          v131 = sub_1004A6034();
          v279 = v130;
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v278 = swift_slowAlloc();
            v293 = v278;
            *v132 = 68160259;
            *(v132 + 4) = 2;
            *(v132 + 8) = 256;
            v133 = v267;
            v134 = *(v267 + 20);
            LODWORD(v261) = v131;
            v135 = v127 + v134;
            *(v132 + 10) = *(v127 + v134);
            *(v132 + 11) = 2082;
            v136 = v126 + *(v133 + 20);
            *(v132 + 13) = sub_10015BA6C(*(v136 + 8), *(v136 + 16), &v293);
            *(v132 + 21) = 1040;
            *(v132 + 23) = 2;
            *(v132 + 27) = 512;
            LOWORD(v135) = *(v135 + 24);
            sub_10006F72C(v127, type metadata accessor for MailboxTaskLogger);
            *(v132 + 29) = v135;
            *(v132 + 31) = 2160;
            *(v132 + 33) = 0x786F626C69616DLL;
            *(v132 + 41) = 2085;
            v137 = *(v136 + 32);
            LODWORD(v136) = *(v136 + 40);

            sub_10006F72C(v126, type metadata accessor for MailboxTaskLogger);
            v291 = v137;
            v292 = v136;
            v138 = sub_1004A5824();
            v140 = sub_10015BA6C(v138, v139, &v293);

            *(v132 + 43) = v140;
            *(v132 + 51) = 2048;
            v141 = v287;
            v142 = MessageIdentifierSet.count.getter();
            sub_100025F40(v128, &unk_1005D91B0, &unk_1004CF400);
            *(v132 + 53) = v142;
            *(v132 + 61) = 2082;
            v143 = v256;
            v144 = MessageIdentifierSet.debugDescription.getter(v141);
            v146 = v145;
            sub_100025F40(v143, &unk_1005D91B0, &unk_1004CF400);
            v147 = sub_10015BA6C(v144, v146, &v293);
            v125 = v288;

            *(v132 + 63) = v147;
            *(v132 + 71) = 2048;
            v148 = v258;
            v149 = MessageIdentifierSet.count.getter();
            sub_100025F40(v148, &unk_1005D91B0, &unk_1004CF400);
            *(v132 + 73) = v149;
            *(v132 + 81) = 2048;
            v150 = v254;
            v151 = MessageIdentifierSet.count.getter();
            sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
            *(v132 + 83) = v151;
            v152 = v279;
            _os_log_impl(&_mh_execute_header, v279, v261, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs %{public}s to be missing locally. (%ld locally, %ld on server)", v132, 0x5Bu);
            swift_arrayDestroy();
            v111 = v282;

            v112 = v290[1];
            v113 = v255;
          }

          else
          {
            sub_100025F40(v129, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v128, &unk_1005D91B0, &unk_1004CF400);
            sub_10006F72C(v127, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v256, &unk_1005D91B0, &unk_1004CF400);
            sub_10006F72C(v126, type metadata accessor for MailboxTaskLogger);
            v112 = v290[1];
            v113 = v123;
          }

          v114 = v125;
          goto LABEL_18;
        }

LABEL_50:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  (v290[2])(v279, v289, v288);
  sub_10006F6C4(v95, v278, type metadata accessor for MailboxTaskLogger);
  v96 = v261;
  sub_10006F6C4(v95, v261, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(a4, v88, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(a1, v85, &unk_1005D91B0, &unk_1004CF400);
  v97 = sub_1004A4A54();
  v98 = sub_1004A6034();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v293 = v259;
    *v99 = 68159747;
    *(v99 + 4) = 2;
    *(v99 + 8) = 256;
    v100 = v267;
    v101 = v96 + *(v267 + 20);
    *(v99 + 10) = *v101;
    *(v99 + 11) = 2082;
    v102 = v278;
    v103 = &v278[*(v100 + 20)];
    *(v99 + 13) = sub_10015BA6C(*(v103 + 1), *(v103 + 2), &v293);
    *(v99 + 21) = 1040;
    *(v99 + 23) = 2;
    *(v99 + 27) = 512;
    LOWORD(v101) = *(v101 + 12);
    sub_10006F72C(v96, type metadata accessor for MailboxTaskLogger);
    *(v99 + 29) = v101;
    *(v99 + 31) = 2160;
    *(v99 + 33) = 0x786F626C69616DLL;
    *(v99 + 41) = 2085;
    v104 = *(v103 + 4);
    v105 = *(v103 + 10);

    sub_10006F72C(v102, type metadata accessor for MailboxTaskLogger);
    v291 = v104;
    v292 = v105;
    v106 = sub_1004A5824();
    v108 = sub_10015BA6C(v106, v107, &v293);

    *(v99 + 43) = v108;
    *(v99 + 51) = 2048;
    v109 = MessageIdentifierSet.count.getter();
    sub_100025F40(v88, &unk_1005D91B0, &unk_1004CF400);
    *(v99 + 53) = v109;
    *(v99 + 61) = 2048;
    v110 = MessageIdentifierSet.count.getter();
    v111 = v282;
    sub_100025F40(v85, &unk_1005D91B0, &unk_1004CF400);
    *(v99 + 63) = v110;
    _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found no UIDs to be missing locally. (%ld locally, %ld on server)", v99, 0x47u);
    swift_arrayDestroy();

    v112 = v290[1];
    v113 = v279;
    v114 = v288;
LABEL_18:
    v261 = v112;
    (v112)(v113, v114);
    goto LABEL_19;
  }

  v111 = a4;
  sub_100025F40(v85, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v88, &unk_1005D91B0, &unk_1004CF400);
  sub_10006F72C(v96, type metadata accessor for MailboxTaskLogger);

  v261 = v290[1];
  (v261)(v279, v288);
  sub_10006F72C(v278, type metadata accessor for MailboxTaskLogger);
LABEL_19:
  v178 = v277;
  v162 = v272;
LABEL_22:
  v179 = v276;
  v272 = a16;
  if ((v178 & 0x10000000000) != 0)
  {
    LODWORD(v278) = 0;
    v279 = 1;
  }

  else
  {
    v279 = HIDWORD(v178) & 1;
    if (v260)
    {
      v180 = v253;
      MessageIdentifierSet.ranges.getter(v253);
      v181 = sub_1000E4C0C();
      v183 = v182;
      sub_100025F40(v180, &qword_1005CD7A0, &unk_1004CF590);
      if (v183)
      {
        if ((v178 & &_mh_execute_header) != 0)
        {
          LODWORD(v184) = 0;
        }

        else
        {
          LODWORD(v184) = v178;
        }
      }

      else
      {
        v279 = 0;
        v184 = HIDWORD(v181);
        if (v178 <= HIDWORD(v181))
        {
          v185 = HIDWORD(v181);
        }

        else
        {
          v185 = v178;
        }

        if ((v178 & &_mh_execute_header) == 0)
        {
          LODWORD(v184) = v185;
        }
      }

      LODWORD(v278) = v184;
    }

    else
    {
      LODWORD(v278) = v178;
    }
  }

  MessageIdentifierSet.ranges.getter(v179);
  v186 = sub_1000E4C0C();
  v188 = v187;
  sub_100025F40(v179, &qword_1005CD7A0, &unk_1004CF590);
  v189 = HIDWORD(v186);
  if (v188)
  {
    LODWORD(v189) = 0;
  }

  LODWORD(v276) = v189;
  v190 = HIDWORD(v162);
  if (v286)
  {
    LODWORD(v190) = 0;
  }

  LODWORD(v277) = v190;
  v191 = v271;
  v192 = v283;
  MessageIdentifierSet.ranges.getter(v271);
  v193 = sub_1000E4C0C();
  v194 = v111;
  v196 = v195;
  sub_100025F40(v191, &qword_1005CD7A0, &unk_1004CF590);
  v197 = HIDWORD(v193);
  LOBYTE(v291) = v196 & 1;
  if (v196)
  {
    v197 = 0;
  }

  LOBYTE(v291) = BYTE5(v178) & 1;
  LOBYTE(v293) = a11 & 1;
  v198 = v284;
  sub_10007AA20(v197 | ((v196 & 1) << 32), v273 | ((HIDWORD(v273) & 1) << 32), v274, a10 | ((a11 & 1) << 32), v284);

  v199 = v272;
  if (v272)
  {
    LODWORD(v274) = v188;
    v200 = v263;
    v201 = *(v263 + 48);
    LOBYTE(v291) = a15 & 1;
    v202 = v264;
    sub_1000769D4(a12, a13 & 0xFFFFFFFF00000101, a14 | ((a15 & 1) << 32), v272);
    LOBYTE(v291) = a15 & 1;
    sub_1000787AC(v199, v202 + v201);

    v203 = *(v200 + 48);
    v204 = v281;
    sub_100025FDC(v202, v281, &unk_1005D91B0, &unk_1004CF400);
    v205 = v270;
    sub_1000738FC(v202 + v203, v270, _s15MissingMessagesO11QueriedUIDsVMa);
    v206 = v289;
    v207 = v268;
    (v290[2])(v268, v289, v288);
    sub_10006F6C4(v206, v280, type metadata accessor for MailboxTaskLogger);
    v208 = v266;
    v209 = v205;
    sub_10006F6C4(v206, v266, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v210 = v262;
    sub_10000E268(v204, v262, &unk_1005D91B0, &unk_1004CF400);
    v211 = v265;
    sub_10000E268(v204, v265, &unk_1005D91B0, &unk_1004CF400);
    v212 = v269;
    sub_10006F6C4(v209, v269, _s15MissingMessagesO11QueriedUIDsVMa);
    v213 = sub_1004A4A54();
    v214 = sub_1004A6034();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      v293 = v273;
      *v215 = 68160003;
      *(v215 + 4) = 2;
      *(v215 + 8) = 256;
      v216 = v267;
      v217 = v208;
      v218 = v208 + *(v267 + 20);
      *(v215 + 10) = *v218;
      *(v215 + 11) = 2082;
      v219 = v280;
      v220 = v280 + *(v216 + 20);
      *(v215 + 13) = sub_10015BA6C(*(v220 + 8), *(v220 + 16), &v293);
      *(v215 + 21) = 1040;
      *(v215 + 23) = 2;
      *(v215 + 27) = 512;
      LOWORD(v218) = *(v218 + 24);
      sub_10006F72C(v217, type metadata accessor for MailboxTaskLogger);
      *(v215 + 29) = v218;
      *(v215 + 31) = 2160;
      *(v215 + 33) = 0x786F626C69616DLL;
      *(v215 + 41) = 2085;
      v221 = *(v220 + 32);
      LODWORD(v220) = *(v220 + 40);

      sub_10006F72C(v219, type metadata accessor for MailboxTaskLogger);
      v291 = v221;
      v292 = v220;
      v222 = sub_1004A5824();
      v224 = sub_10015BA6C(v222, v223, &v293);

      *(v215 + 43) = v224;
      *(v215 + 51) = 2048;
      v225 = v287;
      v226 = MessageIdentifierSet.count.getter();
      sub_100025F40(v210, &unk_1005D91B0, &unk_1004CF400);
      *(v215 + 53) = v226;
      *(v215 + 61) = 2082;
      v227 = MessageIdentifierSet.debugDescription.getter(v225);
      v229 = v228;
      sub_100025F40(v211, &unk_1005D91B0, &unk_1004CF400);
      v230 = sub_10015BA6C(v227, v229, &v293);
      v231 = v270;

      *(v215 + 63) = v230;
      *(v215 + 71) = 2082;
      v232 = v269;
      v233 = MessageIdentifierSet.debugDescription.getter(v225);
      v235 = v234;
      sub_10006F72C(v232, _s15MissingMessagesO11QueriedUIDsVMa);
      v236 = sub_10015BA6C(v233, v235, &v293);

      *(v215 + 73) = v236;
      _os_log_impl(&_mh_execute_header, v213, v214, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld UIDs for temporarily growing window-of-interest: %{public}s (did query %{public}s).", v215, 0x51u);
      swift_arrayDestroy();

      (v290[1])(v268, v288);
    }

    else
    {
      v231 = v209;
      sub_100025F40(v210, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v208, type metadata accessor for MailboxTaskLogger);

      sub_10006F72C(v212, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_100025F40(v211, &unk_1005D91B0, &unk_1004CF400);
      (v261)(v207, v288);
      sub_10006F72C(v280, type metadata accessor for MailboxTaskLogger);
    }

    v240 = v275;
    v241 = v281;
    v242 = v283;
    MessageIdentifierSet.union(_:)(v281, v275);
    v243 = _s15MissingMessagesO10NewMissingVMa(0);
    v244 = v284;
    MessageIdentifierSet.union(_:)(v231, v240 + *(v243 + 24));
    sub_10006F72C(v289, type metadata accessor for MailboxTaskLogger);
    sub_100025F40(v282, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v285, &unk_1005D91B0, &unk_1004CF400);
    sub_10006F72C(v231, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_100025F40(v241, &unk_1005D91B0, &unk_1004CF400);
    sub_10006F72C(v244, _s15MissingMessagesO11QueriedUIDsVMa);
    result = sub_100025F40(v242, &unk_1005D91B0, &unk_1004CF400);
    v245 = v240 + *(v243 + 20);
    *v245 = v276;
    *(v245 + 4) = v274 & 1;
    *(v245 + 8) = v277;
    *(v245 + 12) = v286 & 1;
    *(v245 + 16) = v278;
    *(v245 + 20) = v279;
  }

  else
  {
    sub_10006F72C(v289, type metadata accessor for MailboxTaskLogger);
    sub_100025F40(v194, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v285, &unk_1005D91B0, &unk_1004CF400);
    v237 = v275;
    sub_100025FDC(v192, v275, &unk_1005D91B0, &unk_1004CF400);
    v238 = _s15MissingMessagesO10NewMissingVMa(0);
    v239 = v237 + *(v238 + 20);
    *v239 = v276;
    *(v239 + 4) = v188 & 1;
    *(v239 + 8) = v277;
    *(v239 + 12) = v286 & 1;
    *(v239 + 16) = v278;
    *(v239 + 20) = v279;
    return sub_1000738FC(v198, v237 + *(v238 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
  }

  return result;
}

uint64_t sub_10006EC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v9 = *(*(Missing - 8) + 64);
  __chkstk_darwin(Missing);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_10000C9C0(&qword_1005CEA00, &unk_1004D14A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v20 = &v26 + *(v19 + 56) - v17;
  sub_10006F6C4(a1, &v26 - v17, type metadata accessor for FindMissingMessages.CommandID);
  sub_10006F6C4(a2, v20, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10006F6C4(v18, v14, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100025FDC(v20, v7, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v24 = sub_1004A7034();
      sub_100025F40(v7, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v14, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10006F72C(v18, type metadata accessor for FindMissingMessages.CommandID);
      return v24 & 1;
    }

    sub_100025F40(v14, &qword_1005CD1D0, &unk_1004CF2C0);
    goto LABEL_10;
  }

  sub_10006F6C4(v18, v11, type metadata accessor for FindMissingMessages.CommandID);
  v21 = *v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_100025F40(v18, &qword_1005CEA00, &unk_1004D14A0);
    goto LABEL_11;
  }

  v22 = *v20;
  v23 = v20[8];
  if ((v11[8] & 1) == 0)
  {
    if (v21 != *v20)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      goto LABEL_7;
    }

LABEL_16:
    sub_10006F72C(v18, type metadata accessor for FindMissingMessages.CommandID);
    v24 = 1;
    return v24 & 1;
  }

  if (v21 != *v20)
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_10006F72C(v18, type metadata accessor for FindMissingMessages.CommandID);
LABEL_11:
  v24 = 0;
  return v24 & 1;
}

BOOL sub_10006EF68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  if ((sub_1000E8460(a1 + Missing[6], a2 + Missing[6]) & 1) == 0 || *(a1 + Missing[7]) != *(a2 + Missing[7]))
  {
    return 0;
  }

  v7 = Missing[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v8)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = Missing[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 4);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 4);
  if ((v14 & 1) == 0)
  {
    if (*v15 != *v13)
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v16 & 1) != 0;
}

uint64_t sub_10006F088(int a1, uint64_t a2)
{
  v2 = (a2 + 32);
  v3 = *(a2 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 4;
    v5 = *v2;
    v2 += 4;
    if (v5 == a1)
    {
      return *(v4 - 1);
    }
  }

  return 0;
}

uint64_t sub_10006F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MessageBatches(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006F220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MessageBatches(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006F370()
{
  sub_100073D3C(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      sub_1000576D4(319, &qword_1005CE428);
      if (v2 <= 0x3F)
      {
        sub_1000576D4(319, &qword_1005CE8C8);
        if (v3 <= 0x3F)
        {
          sub_100073D3C(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v4 <= 0x3F)
          {
            sub_1000576D4(319, &unk_1005CE8D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10006F548()
{
  result = qword_1005CE938;
  if (!qword_1005CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE938);
  }

  return result;
}

uint64_t sub_10006F604(uint64_t a1)
{
  result = sub_10006F65C(&qword_1005CE9F8, type metadata accessor for FindMissingMessages);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006F65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006F6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006F72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006F7A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 56;
    do
    {
      v6 = (v5 + 32 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (v8 != 1)
        {
          break;
        }

        if (v3)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v7;
        v6 += 32;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3)
      {
        goto LABEL_5;
      }

LABEL_10:
      v9 = *(v6 - 6);
      v11 = *(v6 - 2);
      v10 = *(v6 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v10;
      if ((result & 1) == 0)
      {
        result = sub_100091D08(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091D08((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[4 * v13];
      *(v14 + 8) = v9;
      v14[5] = v11;
      v14[6] = v20;
      *(v14 + 56) = v8;
    }

    while (v4 != v2);
  }

LABEL_15:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091A28(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091A28((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      v17 += 4;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006F998(int a1, uint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for DownloadTask.CommandID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v40 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v39 = &v34 - v11;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = *(a2 + 16);
  v17 = _swiftEmptyArrayStorage;
  v34 = v13;
  if (v16)
  {
    v18 = *(v13 + 72);
    v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v37 = v7;
    v19 = a2 + v36;
    v20 = v35;
    v38 = v3;
    do
    {
      sub_10000E268(v19, v15, &qword_1005CEA38, &qword_1004D14F0);
      sub_10006F6C4(&v15[*(v7 + 52)], v6, type metadata accessor for DownloadTask.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          if (v20 == 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_10006F72C(v6, type metadata accessor for DownloadTask.CommandID);
          if (v20 == 3)
          {
LABEL_14:
            sub_100025FDC(v15, v39, &qword_1005CEA38, &qword_1004D14F0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100091DC8(0, v17[2] + 1, 1);
              v20 = v35;
              v17 = v41;
            }

            v24 = v17[2];
            v23 = v17[3];
            if (v24 >= v23 >> 1)
            {
              sub_100091DC8(v23 > 1, v24 + 1, 1);
              v20 = v35;
              v17 = v41;
            }

            v17[2] = v24 + 1;
            sub_100025FDC(v39, v17 + v36 + v24 * v18, &qword_1005CEA38, &qword_1004D14F0);
            v7 = v37;
            goto LABEL_5;
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_10006F72C(v6, type metadata accessor for DownloadTask.CommandID);
        if (v20 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_10006F72C(v6, type metadata accessor for DownloadTask.CommandID);
        if (!v20)
        {
          goto LABEL_14;
        }
      }

      sub_100025F40(v15, &qword_1005CEA38, &qword_1004D14F0);
LABEL_5:
      v19 += v18;
      --v16;
    }

    while (v16);
  }

  v25 = v17[2];
  if (v25)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v25, 0);
    v26 = v41;
    v27 = v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v28 = *(v34 + 72);
    do
    {
      v29 = v40;
      sub_10000E268(v27, v40, &qword_1005CEA38, &qword_1004D14F0);
      v30 = *v29;
      sub_100025F40(v29, &qword_1005CEA38, &qword_1004D14F0);
      v41 = v26;
      v32 = v26[2];
      v31 = v26[3];
      if (v32 >= v31 >> 1)
      {
        sub_100091A28((v31 > 1), v32 + 1, 1);
        v26 = v41;
      }

      v26[2] = v32 + 1;
      *(v26 + v32 + 8) = v30;
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v26;
}

uint64_t sub_10006FE14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = &v41 - v17;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  result = sub_10001F708(a1 | ((HIDWORD(a1) & 1) << 32), a4);
  v47 = *(result + 16);
  if (v47)
  {
    v48 = v9;
    v49 = result;
    v42 = v6;
    v25 = 0;
    v45 = result + 32;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_10006F6C4(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v23, v20, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v20, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v20 + 2);
      sub_100020EDC(*v20);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_10006F6C4(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v32, v15, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v15, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v15 + 2);
      sub_100020EDC(*v15);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v50;
          sub_10006F6C4(v35, v50, type metadata accessor for TaskHistory.Running);
          v38 = v48;
          sub_1000738FC(v37, v48, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_100020EDC(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v49;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_100070294(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, __n128))
{
  v57 = a4;
  v48 = a3;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v56);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v46 - v15;
  v16 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v49 = &v46 - v21;
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v46 - v27;
  result = a6(a1, a2 & 1, a5, v26);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v13;
    v54 = result;
    v47 = v10;
    v30 = 0;
    v50 = result + 32;
    do
    {
      if (v30 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v30;
      v31 = *(v57 + 16);
      if (!v31)
      {
        goto LABEL_3;
      }

      v59 = *(v50 + 4 * v58);
      v32 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v33 = *(v51 + 72);
      v34 = v32;
      v35 = v31;
      while (1)
      {
        sub_10006F6C4(v34, v28, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v28, v24, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v24, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v34 += v33;
        if (!--v35)
        {
          goto LABEL_3;
        }
      }

      v36 = *(v24 + 2);
      sub_100020EDC(*v24);
      if (v36 != v59)
      {
        goto LABEL_8;
      }

      v37 = v49;
      while (1)
      {
        sub_10006F6C4(v32, v37, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v37, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v19, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v32 += v33;
        if (!--v31)
        {
LABEL_22:
          v45 = 1;
          goto LABEL_24;
        }
      }

      v38 = *(v19 + 2);
      sub_100020EDC(*v19);
      if (v38 != v59)
      {
        goto LABEL_13;
      }

      v39 = *(v48 + 16);
      if (v39)
      {
        v40 = v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v41 = *(v47 + 72);
        do
        {
          v42 = v55;
          sub_10006F6C4(v40, v55, type metadata accessor for TaskHistory.Running);
          v43 = v53;
          sub_1000738FC(v42, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = *(v43 + 4);
            sub_100020EDC(*(v43 + 8));
            if (v44 == v59)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v43, type metadata accessor for TaskHistory.Running);
          }

          v40 += v41;
          --v39;
        }

        while (v39);
      }

LABEL_3:
      v30 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v45 = 0;
LABEL_24:

  return v45;
}

uint64_t sub_100070734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v52 = a2;
  v43 = a1;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v41 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v41 - v16;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v41 - v22;
  result = a4(a3, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v6;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_10006F6C4(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_100020EDC(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_10006F6C4(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_100020EDC(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_10006F6C4(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1000738FC(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_100020EDC(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}