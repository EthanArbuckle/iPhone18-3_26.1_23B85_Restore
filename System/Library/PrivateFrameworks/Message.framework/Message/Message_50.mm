uint64_t sub_1B0AD6480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a1 >= 2)
  {
    v18 = sub_1B041C1E8();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v18, &v29);
    v28 = v29;
    v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
    v19 = sub_1B03D06F8();
    sub_1B0E46F08();
    v26[2] = a2;
    MessageIdentifierSet.subtracting(_:)(a2, v14);
    sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v28) = a1;
    LODWORD(v27) = -1;
    static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v18, &v29);
    v28 = v29;
    v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
    v26[1] = v19;
    sub_1B0E46F08();
    MessageIdentifierSet.subtracting(_:)(v11, v17);
    sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.ranges.getter(v7);
    v20 = sub_1B0B4A3E8();
    v22 = v21;
    sub_1B0398EFC(v7, &unk_1EB6E2780, &unk_1B0E9C5E0);
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v22)
    {
      v23 = 1;
LABEL_6:
      LODWORD(v28) = v23;
      LODWORD(v27) = a1 - 1;
      static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v18, &v29);
      v28 = v29;
      v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
      sub_1B0E46F08();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v24 = sub_1B0E46EB8();
      sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v24)
      {
        return v23;
      }

      else
      {
        return a1;
      }
    }

    if (HIDWORD(v20) < a1)
    {
      v23 = HIDWORD(v20) + 1;
      if (HIDWORD(v20) + 1 < a1)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

uint64_t sub_1B0AD6808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v100 = a5;
  v96 = a2;
  v98 = _s15MissingMessagesOMa(0);
  v8 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v89[-v14];
  v93 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v89[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v89[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v89[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v89[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v89[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89[-v33];
  sub_1B03B5C80(a3, v27, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v35 = &unk_1EB6E3670;
    v36 = &unk_1B0E9B260;
    v37 = v27;
  }

  else
  {
    sub_1B03C60A4(v27, v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v38 = a1 + *(type metadata accessor for MailboxSyncState() + 68);
    sub_1B0B4A4F4(v34);
    v37 = v34;
    v35 = &unk_1EB6E26C0;
    v36 = &unk_1B0E9DE10;
  }

  sub_1B0398EFC(v37, v35, v36);
  v39 = *(type metadata accessor for MailboxSyncState() + 68);
  v40 = *a4;
  v41 = sub_1B0B3EF14();
  v42 = sub_1B0B4B0F4(v40, v41 | ((HIDWORD(v41) & 1) << 32));
  v43 = v102;
  if ((v42 & 1) != 0 && (v96 & 0xFF00) == 0)
  {
    v44 = sub_1B0B4A8E4();
    v46 = v45;
    v47 = v100;
    v48 = v92;
    sub_1B03D3D54(v100, v92, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(v47, v21, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v49 = sub_1B0E43988();
    v50 = sub_1B0E45908();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105[0] = v96;
      *v51 = 68159491;
      v91 = v44;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v93;
      v53 = v48;
      v54 = &v21[*(v93 + 20)];
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = *(v52 + 20);
      v90 = v46;
      v56 = v53 + v55;
      *(v51 + 13) = sub_1B0399D64(*(v53 + v55 + 8), *(v53 + v55 + 16), v105);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      v57 = *(v54 + 12);
      sub_1B0AD3FBC(v21, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v57;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v58 = *(v56 + 32);
      v59 = *(v56 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v53, type metadata accessor for MailboxTaskLogger);
      v103 = v58;
      v104 = v59;
      v60 = sub_1B0E44BA8();
      v62 = sub_1B0399D64(v60, v61, v105);

      *(v51 + 43) = v62;
      *(v51 + 51) = 2048;
      v63 = v91;
      if (v90)
      {
        v63 = 0;
      }

      *(v51 + 53) = v63;
      _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld remaining known-to-be-missing. Requesting FindMissingMessages to re-run.", v51, 0x3Du);
      v64 = v96;
      swift_arrayDestroy();
      v43 = v102;
      MEMORY[0x1B272C230](v64, -1, -1);
      MEMORY[0x1B272C230](v51, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v21, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v48, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(0xCu);
    sub_1B03BDD7C(&v103, 12);
  }

  v65 = v99;
  sub_1B03D3D54(a1 + v39, v99, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v101;
    sub_1B03D3E24(v65, v101, _s15MissingMessagesO10IncompleteVMa);
    v68 = v100;
    v69 = v95;
    sub_1B03D3D54(v100, v95, type metadata accessor for MailboxTaskLogger);
    v70 = v94;
    sub_1B03D3D54(v68, v94, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v71 = v97;
    sub_1B03D3D54(v67, v97, _s15MissingMessagesO10IncompleteVMa);
    v72 = sub_1B0E43988();
    v73 = sub_1B0E45908();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v105[0] = v102;
      *v74 = 68159491;
      *(v74 + 4) = 2;
      *(v74 + 8) = 256;
      v75 = v93;
      v76 = &v70[*(v93 + 20)];
      *(v74 + 10) = *v76;
      *(v74 + 11) = 2082;
      v77 = v69;
      v78 = &v69[*(v75 + 20)];
      *(v74 + 13) = sub_1B0399D64(*(v78 + 1), *(v78 + 2), v105);
      *(v74 + 21) = 1040;
      *(v74 + 23) = 2;
      *(v74 + 27) = 512;
      LOWORD(v76) = *(v76 + 12);
      sub_1B0AD3FBC(v70, type metadata accessor for MailboxTaskLogger);
      *(v74 + 29) = v76;
      *(v74 + 31) = 2160;
      *(v74 + 33) = 0x786F626C69616DLL;
      *(v74 + 41) = 2085;
      v79 = *(v78 + 4);
      LODWORD(v78) = *(v78 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v77, type metadata accessor for MailboxTaskLogger);
      v103 = v79;
      v104 = v78;
      v80 = sub_1B0E44BA8();
      v82 = sub_1B0399D64(v80, v81, v105);

      *(v74 + 43) = v82;
      *(v74 + 51) = 2048;
      v83 = v97;
      sub_1B03B5C80(v97, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v84 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AD3FBC(v83, _s15MissingMessagesO10IncompleteVMa);
      *(v74 + 53) = v84;
      _os_log_impl(&dword_1B0389000, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Missing: %ld.", v74, 0x3Du);
      v85 = v102;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v85, -1, -1);
      MEMORY[0x1B272C230](v74, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v71, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0AD3FBC(v70, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v69, type metadata accessor for MailboxTaskLogger);
    }

    v86 = v101;
    sub_1B03B5C80(v101, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v87 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v88 = &v86[*(_s15MissingMessagesO8ProgressVMa(0) + 20)];
    MessageIdentifierSet.count.getter();
    sub_1B0AD3FBC(v86, _s15MissingMessagesO10IncompleteVMa);
    return v87;
  }

  else
  {
    sub_1B0AD3FBC(v65, _s15MissingMessagesOMa);
    return 0;
  }
}

uint64_t sub_1B0AD7288(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AD72C4()
{
  result = sub_1B03D0770(&unk_1F2710E30);
  qword_1EB737D38 = result;
  return result;
}

uint64_t sub_1B0AD72EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B0EC42E0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 80) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 128) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 176) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 224) = type metadata accessor for FetchMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 272) = type metadata accessor for FindMissingMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 320) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v1;
}

uint64_t sub_1B0AD74BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v32 = a2;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D0, &unk_1B0EC42F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - v7;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v10 = *(MessagesVMa - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v34 = *(SearchResult - 8);
  v14 = *(v34 + 64);
  v15 = MEMORY[0x1EEE9AC00](SearchResult);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v29 = v20 + 56;
  v30 = v21;
  v21(v17 + v18, 1, 1, v19);
  *&v36 = a1;
  *(&v36 + 1) = sub_1B0ADB848;
  *&v37 = 0;
  *(&v37 + 1) = sub_1B0ADDA58;
  *&v38 = 0;
  *(&v38 + 1) = sub_1B0ADDABC;
  v39 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B0ADBA28;
  *(v22 + 24) = 0;
  v23 = v37;
  *(v22 + 32) = v36;
  *(v22 + 48) = v23;
  *(v22 + 64) = v38;
  *(v22 + 80) = v39;
  v40[0] = a1;
  v40[1] = sub_1B0ADB848;
  v40[2] = 0;
  v40[3] = sub_1B0ADDA58;
  v40[4] = 0;
  v40[5] = sub_1B0ADE394;
  v40[6] = v22;
  swift_bridgeObjectRetain_n();
  sub_1B0ADBA78(v40, v8);
  if ((*(v10 + 48))(v8, 1, MessagesVMa) == 1)
  {

    sub_1B0398EFC(v8, &qword_1EB6E41D0, &unk_1B0EC42F0);
    sub_1B0398EFC(v17 + v18, &qword_1EB6E3920, &qword_1B0E9B070);
    return (*(v34 + 56))(v35, 1, 1, SearchResult);
  }

  else
  {
    v25 = v31;
    sub_1B0ADE4D8(v8, v31, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v26 = sub_1B0AE1AC8(&v36);

    *v17 = v26;
    sub_1B0ADE4D8(v25, v17 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    v27 = v17 + *(SearchResult + 24);
    *v27 = v32;
    v27[8] = v33 & 1;
    sub_1B0398EFC(v17 + v18, &qword_1EB6E3920, &qword_1B0E9B070);
    v30(v17 + v18, 1, 1, v19);
    v28 = v35;
    sub_1B0ADE3A0(v17, v35, type metadata accessor for FetchSearchResultMessages.Requests);
    (*(v34 + 56))(v28, 0, 1, SearchResult);
    return sub_1B0ADE408(v17, type metadata accessor for FetchSearchResultMessages.Requests);
  }
}

void sub_1B0AD78F8(uint64_t a1)
{
  v2 = v1;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v5 = *(*(SearchResultMessages - 8) + 64);
  MEMORY[0x1EEE9AC00](SearchResultMessages);
  v70 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - v8;
  v69 = type metadata accessor for MailboxTaskLogger(0);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v72 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v69 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v75 = &v69 - v32;
  v73 = SearchResultMessages;
  v33 = v2 + *(SearchResultMessages + 48);
  sub_1B0AD8284(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1B0398EFC(v24, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0ADE3A0(a1, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0ADE3A0(a1, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = v70;
    sub_1B0ADE3A0(v2, v70, type metadata accessor for FetchSearchResultMessages);
    v35 = sub_1B0E43988();
    v36 = sub_1B0E45908();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 68159491;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v39 = v69;
      v40 = &v11[*(v69 + 20)];
      *(v37 + 10) = *v40;
      *(v37 + 11) = 2082;
      v41 = &v14[*(v39 + 20)];
      *(v37 + 13) = sub_1B0399D64(*(v41 + 1), *(v41 + 2), &v78);
      *(v37 + 21) = 1040;
      *(v37 + 23) = 2;
      *(v37 + 27) = 512;
      LOWORD(v40) = *(v40 + 12);
      sub_1B0ADE408(v11, type metadata accessor for MailboxTaskLogger);
      *(v37 + 29) = v40;
      *(v37 + 31) = 2160;
      *(v37 + 33) = 0x786F626C69616DLL;
      *(v37 + 41) = 2085;
      v42 = *(v41 + 4);
      LODWORD(v40) = *(v41 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ADE408(v14, type metadata accessor for MailboxTaskLogger);
      v76 = v42;
      v77 = v40;
      v43 = sub_1B0E44BA8();
      v45 = sub_1B0399D64(v43, v44, &v78);

      *(v37 + 43) = v45;
      *(v37 + 51) = 2048;
      v46 = *(v73 + 48);
      SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
      v48 = v72;
      sub_1B03B5C80(v34 + v46 + *(SearchResult + 20), v72, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v49 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ADE408(v34, type metadata accessor for FetchSearchResultMessages);
      *(v37 + 53) = v49;
      _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, no UIDs to fetch.", v37, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v38, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);
    }

    else
    {
      sub_1B0ADE408(v34, type metadata accessor for FetchSearchResultMessages);
      sub_1B0ADE408(v11, type metadata accessor for MailboxTaskLogger);

      sub_1B0ADE408(v14, type metadata accessor for MailboxTaskLogger);
    }
  }

  else
  {
    v50 = v75;
    sub_1B03C60A4(v24, v75, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE3A0(a1, v20, type metadata accessor for MailboxTaskLogger);
    sub_1B0ADE3A0(a1, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v51 = v71;
    sub_1B0ADE3A0(v2, v71, type metadata accessor for FetchSearchResultMessages);
    sub_1B03B5C80(v50, v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v52 = sub_1B0E43988();
    v53 = sub_1B0E45908();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v54 = 68159747;
      *(v54 + 4) = 2;
      *(v54 + 8) = 256;
      v55 = v69;
      v56 = &v17[*(v69 + 20)];
      *(v54 + 10) = *v56;
      *(v54 + 11) = 2082;
      v57 = &v20[*(v55 + 20)];
      *(v54 + 13) = sub_1B0399D64(*(v57 + 1), *(v57 + 2), &v78);
      *(v54 + 21) = 1040;
      *(v54 + 23) = 2;
      *(v54 + 27) = 512;
      LOWORD(v56) = *(v56 + 12);
      sub_1B0ADE408(v17, type metadata accessor for MailboxTaskLogger);
      *(v54 + 29) = v56;
      *(v54 + 31) = 2160;
      *(v54 + 33) = 0x786F626C69616DLL;
      *(v54 + 41) = 2085;
      v58 = *(v57 + 4);
      LODWORD(v56) = *(v57 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ADE408(v20, type metadata accessor for MailboxTaskLogger);
      v76 = v58;
      v77 = v56;
      v59 = sub_1B0E44BA8();
      v61 = sub_1B0399D64(v59, v60, &v78);

      *(v54 + 43) = v61;
      *(v54 + 51) = 2048;
      v62 = *(v73 + 48);
      v63 = v51 + v62 + *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
      v64 = v72;
      sub_1B03B5C80(v63, v72, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v65 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ADE408(v51, type metadata accessor for FetchSearchResultMessages);
      *(v54 + 53) = v65;
      *(v54 + 61) = 2048;
      v66 = v74;
      v67 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v66, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v54 + 63) = v67;
      _os_log_impl(&dword_1B0389000, v52, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UIDs total, %ld UIDs to fetch.", v54, 0x47u);
      v68 = v70;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v68, -1, -1);
      MEMORY[0x1B272C230](v54, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0ADE408(v51, type metadata accessor for FetchSearchResultMessages);
      sub_1B0ADE408(v17, type metadata accessor for MailboxTaskLogger);

      sub_1B0ADE408(v20, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B0398EFC(v75, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }
}

uint64_t sub_1B0AD8284@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v64 = &v58 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v65 = &v58 - v34;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v35 = *(SearchResult + 20);
  v66 = v1;
  v36 = v1 + v35;
  sub_1B03B5C80(v1 + v35, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MessageIdentifierSet.subtracting(_:)(v36 + *(MessagesVMa + 20), v27);
  sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v36 + *(MessagesVMa + 24), v9, &qword_1EB6E3920, &qword_1B0E9B070);
  v63 = v17;
  v38 = *(v17 + 48);
  if (v38(v9, 1, v16) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v38(v9, 1, v16) != 1)
    {
      sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v9, v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.subtracting(_:)(v24, v30);
  sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v39 = SearchResult;
  v40 = v66;
  v41 = v62;
  sub_1B03B5C80(v66 + *(SearchResult + 28), v62, &qword_1EB6E3920, &qword_1B0E9B070);
  v42 = v38(v41, 1, v16);
  v43 = v61;
  if (v42 == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v44 = v38(v41, 1, v16);
    v45 = v64;
    if (v44 != 1)
    {
      sub_1B0398EFC(v41, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v41, v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v45 = v64;
  }

  MessageIdentifierSet.subtracting(_:)(v43, v45);
  sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v46 = (v40 + *(v39 + 24));
  if (v46[1])
  {
    v47 = v68;
    (*(v63 + 56))(v68, 1, 1, v16);
    sub_1B03D06F8();
    v48 = v67;
    sub_1B0E46EE8();
    v49 = v38(v47, 1, v16);
    v50 = v65;
    if (v49 != 1)
    {
      sub_1B0398EFC(v47, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v73 = *v46;
    v51 = sub_1B041C1E8();
    v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v51);
    sub_1B03D06F8();
    v52 = v68;
    sub_1B0E46F08();
    (*(v63 + 56))(v52, 0, 1, v16);
    v48 = v67;
    sub_1B03C60A4(v52, v67, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v50 = v65;
  }

  MessageIdentifierSet.subtracting(_:)(v48, v50);
  sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v56 = 1;
    v55 = v71;
  }

  else
  {
    v53 = v59;
    sub_1B03C60A4(v50, v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v54 = v53;
    v55 = v71;
    sub_1B03C60A4(v54, v71, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v56 = 0;
  }

  return (*(v69 + 56))(v55, v56, 1, v70);
}

uint64_t sub_1B0AD89D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for NewServerMessages();
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v61 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v61 - v36;
  if (sub_1B0B7131C(a1, a2))
  {
    goto LABEL_15;
  }

  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v66 = v3;
  v38 = v3 + SearchResultMessages[12];
  sub_1B0AD989C(v37);
  v62 = v10;
  v63 = v9;
  v64 = *(v10 + 48);
  v39 = v64(v37, 1, v9);
  sub_1B0398EFC(v37, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v39 == 1 || (SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0), sub_1B03B5C80(v38 + *(SearchResult + 28), v27, &qword_1EB6E3920, &qword_1B0E9B070), v41 = 1, v42 = (*(v72 + 48))(v27, 1, v73), sub_1B0398EFC(v27, &qword_1EB6E3920, &qword_1B0E9B070), v42 != 1))
  {
    v43 = SearchResultMessages[13];
    sub_1B03B5C80(v66 + v43, v20, &qword_1EB6E41C0, &unk_1B0EC4330);
    if ((*(v74 + 48))(v20, 1, v75) == 1)
    {
      sub_1B0398EFC(v20, &qword_1EB6E41C0, &unk_1B0EC4330);
      sub_1B0AD8284(v34);
      v44 = v63;
      if (v64(v34, 1, v63) == 1)
      {
        v31 = v34;
LABEL_14:
        sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
LABEL_15:
        v41 = 1;
        goto LABEL_16;
      }

      sub_1B03C60A4(v34, v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v46 = v69;
      MessageIdentifierSet.suffix(_:)(47, v73, v69);
      if (MessageIdentifierSet.count.getter() < 1)
      {
        sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v48 = 1;
      }

      else
      {
        v47 = v68;
        sub_1B03C60A4(v46, v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03C60A4(v47, v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v48 = 0;
      }

      (*(v62 + 56))(v31, v48, 1, v44);
      if (v64(v31, 1, v44) == 1)
      {
        sub_1B0398EFC(v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
        goto LABEL_14;
      }

      v51 = v67;
      sub_1B03C60A4(v31, v67, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v52 = v66;
      v53 = *(v66 + 40);
      LODWORD(v73) = *(v66 + 48);
      v54 = v75;
      v45 = v71;
      sub_1B03B5C80(v51, v71 + v75[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0398EFC(v51, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v45 + v59) = MEMORY[0x1E69E7CC0];
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
      sub_1B0398EFC(v52 + v43, &qword_1EB6E41C0, &unk_1B0EC4330);
      sub_1B0ADE3A0(v45, v52 + v43, type metadata accessor for NewServerMessages);
      (*(v74 + 56))(v52 + v43, 0, 1, v54);
    }

    else
    {
      v45 = v71;
      sub_1B0ADE4D8(v20, v71, type metadata accessor for NewServerMessages);
    }

    sub_1B0B5F454(v76);
    sub_1B0ADE408(v45, type metadata accessor for NewServerMessages);
    v41 = 0;
  }

LABEL_16:
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4210, &unk_1B0EC4468);
  return (*(*(v49 - 8) + 56))(v76, v41, 1, v49);
}

uint64_t sub_1B0AD91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a1;
  v66 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v61 - v9;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v63 = *(SearchResult - 8);
  v64 = SearchResult;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v62 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v30 = *(SearchResultMessages + 48);
  v67 = v4;
  sub_1B0AD989C(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v31 = &unk_1EB6E3670;
    v32 = &unk_1B0E9B260;
    v33 = v21;
  }

  else
  {
    sub_1B03C60A4(v21, v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v68 = 1;
    if ((sub_1B0A9ECD4(0x100000000uLL, a2, a4) & 1) == 0)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v39 = *(v38 + 48);
      v40 = *(v67 + 24);
      *v41 = *(v67 + 16);
      v41[1] = v40;
      sub_1B03C60A4(v28, v41 + v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0x100000000;
    }

    v31 = &unk_1EB6E26C0;
    v32 = &unk_1B0E9DE10;
    v33 = v28;
  }

  sub_1B0398EFC(v33, v31, v32);
  v35 = v65;
  v34 = v66;
  if (sub_1B0A995AC(v65, a2, v66))
  {
    v69 = 1;
    if ((sub_1B0A9ECD4(0x100000001uLL, a2, a4) & 1) == 0)
    {
      v36 = v67;
      sub_1B03B5C80(v67 + *(SearchResultMessages + 52), v17, &qword_1EB6E41C0, &unk_1B0EC4330);
      v37 = type metadata accessor for NewServerMessages();
      if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
      {
        sub_1B0398EFC(v17, &qword_1EB6E41C0, &unk_1B0EC4330);
      }

      else
      {
        v43 = *&v17[*(v37 + 36)];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ADE408(v17, type metadata accessor for NewServerMessages);
        if (*(v43 + 16))
        {
          v44 = swift_allocObject();
          v45 = *(v36 + 24);
          *(v44 + 16) = *(v36 + 16);
          *(v44 + 24) = v45;
          *(v44 + 32) = v43;
          *(v44 + 40) = 0;
          *(v44 + 48) = 1;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return 0x100000001;
        }
      }
    }
  }

  v46 = v67;
  sub_1B0ADA33C(v35, a2, v34, a4, v10);
  v47 = v64;
  if ((*(v63 + 48))(v10, 1, v64) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E41E0, &unk_1B0EC4580);
    return 0;
  }

  else
  {
    v48 = v62;
    sub_1B0ADE4D8(v10, v62, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v49 = *v48;
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4200, &qword_1B0EC4450);
    v51 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4208, &unk_1B0EC4458) - 8);
    v52 = *(*v51 + 72);
    v53 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1B0EC1E70;
    v55 = v47;
    v56 = v54 + v53;
    v57 = v51[14];
    v58 = *(v46 + 48);
    *v56 = *(v46 + 40);
    *(v56 + 8) = v58;
    v59 = v61;
    sub_1B03B5C80(v48 + *(v55 + 20), v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v59, v56 + v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v60 = sub_1B0BABCA4(v54);
    swift_setDeallocating();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0398EFC(v56, &qword_1EB6E4208, &unk_1B0EC4458);
    swift_deallocClassInstance();
    sub_1B0ADE408(v48, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    result = v49;
    *(v50 + 24) = v60;
  }

  return result;
}

uint64_t sub_1B0AD989C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v3 = *(v114 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v21 = *(SearchResult - 8);
  v98 = SearchResult;
  v99 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v111 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v105 = *(v116 - 8);
  v27 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v93 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v94 = &v90 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v96 = &v90 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v107 = &v90 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v100 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v90 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v106 = &v90 - v41;
  v97 = v2;
  v42 = *v2;
  v43 = sub_1B03D06F8();
  v112 = v39;
  v92 = v43;
  sub_1B0E46EE8();
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
      sub_1B0ADE3A0(v47, v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_1B03B5C80(v45 + v46, v19, &qword_1EB6E3920, &qword_1B0E9B070);
      if ((*v48)(v19, 1, v116) == 1)
      {
        sub_1B0398EFC(v19, &qword_1EB6E3920, &qword_1B0E9B070);
        v50 = v113;
        sub_1B03B5C80(v45, v113, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v109)(v110, v50, v114);
        sub_1B0E46ED8();
        v49 = v108;
        sub_1B0ADE408(v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v51 = v50;
        v52 = &unk_1EB6E1AF0;
        v53 = &unk_1B0E9AF40;
      }

      else
      {
        sub_1B0ADE408(v26, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v51 = v19;
        v52 = &qword_1EB6E3920;
        v53 = &qword_1B0E9B070;
      }

      sub_1B0398EFC(v51, v52, v53);
      v47 += v49;
      --v44;
    }

    while (v44);
  }

  v54 = v106;
  sub_1B03C60A4(v112, v106, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0E46E98())
  {
    sub_1B0398EFC(v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v55 = 1;
    v56 = v102;
    v57 = v103;
    v58 = v101;
  }

  else
  {
    sub_1B03B5C80(v54, v107, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
        sub_1B0ADE3A0(v65, v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v71 = v115;
        sub_1B03B5C80(v62 + v112, v115, &qword_1EB6E3920, &qword_1B0E9B070);
        if ((*v66)(v71, 1, v61) == 1)
        {
          sub_1B0ADE408(v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v68 = v115;
          v69 = &qword_1EB6E3920;
          v70 = &qword_1B0E9B070;
        }

        else
        {
          sub_1B0398EFC(v115, &qword_1EB6E3920, &qword_1B0E9B070);
          v72 = v113;
          sub_1B03B5C80(v62, v113, &unk_1EB6E26C0, &unk_1B0E9DE10);
          sub_1B0E46EC8();
          v61 = v116;
          sub_1B0ADE408(v64, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v68 = v72;
          v69 = &unk_1EB6E1AF0;
          v70 = &unk_1B0E9AF40;
        }

        sub_1B0398EFC(v68, v69, v70);
        v65 += v67;
        --v60;
        v64 = v111;
      }

      while (v60);
    }

    sub_1B03C60A4(v107, v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v73 = type metadata accessor for FetchSearchResultMessages.Requests(0);
    v74 = v97;
    v75 = v97 + *(v73 + 24);
    if (v75[8])
    {
      v76 = v105;
      v77 = v95;
      (*(v105 + 56))(v95, 1, 1, v61);
      v78 = v93;
      sub_1B0E46EE8();
      v79 = (*(v76 + 48))(v77, 1, v61);
      v57 = v103;
      v58 = v101;
      if (v79 != 1)
      {
        sub_1B0398EFC(v77, &qword_1EB6E3920, &qword_1B0E9B070);
      }
    }

    else
    {
      v118 = *v75;
      v80 = sub_1B041C1E8();
      v117 = Range<>.init<A>(_:)(&v118, &type metadata for UID, v80);
      v81 = v95;
      sub_1B0E46F08();
      (*(v105 + 56))(v81, 0, 1, v61);
      v78 = v93;
      sub_1B03C60A4(v81, v93, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v57 = v103;
      v58 = v101;
    }

    v82 = v94;
    v83 = v100;
    MessageIdentifierSet.subtracting(_:)(v78, v94);
    sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v84 = v74 + *(v73 + 20);
    v85 = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v86 = v96;
    MessageIdentifierSet.subtracting(_:)(v84 + *(v85 + 20), v96);
    sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v87 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v83, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v106, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v87 < 1)
    {
      sub_1B0398EFC(v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v55 = 1;
    }

    else
    {
      v88 = v91;
      sub_1B03C60A4(v86, v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v88, v57, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v55 = 0;
    }

    v56 = v102;
  }

  return (*(v58 + 56))(v57, v55, 1, v56);
}

uint64_t sub_1B0ADA33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v21 = *(SearchResult - 8);
  v11 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 1;
  if (sub_1B0AEB5AC(0x100000000uLL, a1, a2, a4) & 1) != 0 || (sub_1B0AD4EE4(a1, a2, a3) & 1) != 0 || (v24 = 1, (sub_1B0AEB5AC(0x100000001uLL, a1, a2, a4)))
  {
    v14 = *(v21 + 56);

    return v14(a5, 1, 1, SearchResult);
  }

  else
  {
    result = sub_1B0ADA5B0(&v23);
    v16 = v23;
    v17 = *(v23 + 16);
    if (v17)
    {
      v18 = 0;
      while (v18 < *(v16 + 16))
      {
        sub_1B0ADE3A0(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v19 = *v13;
        v22 = 0;
        if ((sub_1B0A9ECD4(v19, a2, a4) & 1) == 0)
        {

          sub_1B0ADE4D8(v13, a5, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v20 = 0;
          return (*(v21 + 56))(a5, v20, 1, SearchResult);
        }

        ++v18;
        result = sub_1B0ADE408(v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
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

uint64_t sub_1B0ADA5B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v15 = *(*(SearchResult - 8) + 64);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0ADE3A0(v1 + *(SearchResultMessages + 48), v17, type metadata accessor for FetchSearchResultMessages.Requests);
  sub_1B03B5C80(v1 + *(SearchResultMessages + 52), v6, &qword_1EB6E41C0, &unk_1B0EC4330);
  v19 = type metadata accessor for NewServerMessages();
  if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
  {
    sub_1B0398EFC(v6, &qword_1EB6E41C0, &unk_1B0EC4330);
    v20 = 1;
  }

  else
  {
    sub_1B03B5C80(&v6[*(v19 + 20)], v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v6, type metadata accessor for NewServerMessages);
    v20 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v21 - 8) + 56))(v13, v20, 1, v21);
  sub_1B0AD8284(v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = (*(*(v22 - 8) + 48))(v10, 1, v22);
  v24 = sub_1B0398EFC(v10, &unk_1EB6E3670, &unk_1B0E9B260);
  v25 = *v17;
  if (v23 == 1)
  {
    v26 = *v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    *&v29[-16] = v17;
    *&v29[-8] = v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B15500(sub_1B0ADF228, &v29[-32], v25);
    v25 = v27;
  }

  *a1 = v25;
  sub_1B0398EFC(v13, &unk_1EB6E3670, &unk_1B0E9B260);
  return sub_1B0ADE408(v17, type metadata accessor for FetchSearchResultMessages.Requests);
}

void sub_1B0ADA958(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if ((a1 & 0x1FFFFFFFFLL) == 0x100000000)
  {
    v10 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    v11 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
    v16 = v10;
    sub_1B03B5C80(v10 + v11, v9, &qword_1EB6E3920, &qword_1B0E9B070);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v9, 1, v12);
    sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v14 == 1)
    {
      sub_1B03D06F8();
      sub_1B0E46EE8();
      (*(v13 + 56))(v6, 0, 1, v12);
      sub_1B0ADE468(v6, v16 + v11);
    }
  }
}

uint64_t sub_1B0ADAB2C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v11 = *(SearchResult - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0ADA5B0(&v29);
  v28 = MEMORY[0x1E69E7CD0];
  v15 = *(v29 + 16);
  if (v15)
  {
    v16 = v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_1B0ADE3A0(v16, v14, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_1B0B01B88(&v27, *v14);
      sub_1B0ADE408(v14, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v16 += v17;
      --v15;
    }

    while (v15);

    v18 = v28;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CD0];
  }

  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  sub_1B0B25834(v18, v19, v20);

  sub_1B0ADADD8(v9);
  sub_1B0ADB1D0(v6);
  sub_1B0B259F0(v19, v20, v9, v6);
  sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v21 = *(v2 + 48);
  MEMORY[0x1EEE9AC00](*(v2 + 40));
  v22 = v26;
  *(&v26 - 2) = v2;
  *(&v26 - 1) = v22;
  return sub_1B0B86564(v23, v24, sub_1B0ADF214, (&v26 - 4));
}

uint64_t sub_1B0ADADD8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v22 = v1 + *(SearchResultMessages + 48);
  v23 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_1B03B5C80(v22 + v23 + *(MessagesVMa + 20), v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v1 + *(SearchResultMessages + 52), v8, &qword_1EB6E41C0, &unk_1B0EC4330);
  v25 = type metadata accessor for NewServerMessages();
  if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
  {
    sub_1B0398EFC(v8, &qword_1EB6E41C0, &unk_1B0EC4330);
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1B0398EFC(v12, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v26 = v28;
    sub_1B03B5C80(&v8[*(v25 + 20)], v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v8, type metadata accessor for NewServerMessages);
    sub_1B03C60A4(v26, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_1B03C60A4(v12, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.union(_:)(v17, v29);
  sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0ADB1D0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v19 = *(SearchResult + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_1B03B5C80(v17 + v19 + *(MessagesVMa + 24), v8, &qword_1EB6E3920, &qword_1B0E9B070);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v21(v8, 1, v9) != 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v8, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  sub_1B03B5C80(v17 + *(SearchResult + 28), v5, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v21(v5, 1, v9) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v21(v5, 1, v9) != 1)
    {
      sub_1B0398EFC(v5, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v5, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.union(_:)(v13, v24);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0ADB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B03B5C80(a3 + *(SearchResultMessages + 52), v11, &qword_1EB6E41C0, &unk_1B0EC4330);
  v17 = type metadata accessor for NewServerMessages();
  if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
  {
    sub_1B0398EFC(v11, &qword_1EB6E41C0, &unk_1B0EC4330);
    v18 = 1;
  }

  else
  {
    sub_1B03B5C80(&v11[*(v17 + 20)], v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v11, type metadata accessor for NewServerMessages);
    v18 = 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  sub_1B0AD6808(a1, a2 & 0x101010101FFFF01, v15, (a3 + *(SearchResultMessages + 28)), a4);
  return sub_1B0398EFC(v15, &unk_1EB6E3670, &unk_1B0E9B260);
}

uint64_t sub_1B0ADB748()
{
  if (qword_1EB6DD598 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0ADB7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0AD91CC(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_1B0ADB848@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v9 = *(*(MessagesVMa - 8) + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19UserInitiatedSearchVMa(0);
  sub_1B0ADE3A0(a1 + *(v12 + 20), v7, _s19UserInitiatedSearchV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0ADE4D8(v7, v11, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v13 = *a1;
    SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    sub_1B0ADE4D8(v11, a2 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    *a2 = v13;
    return (*(*(SearchResult - 8) + 56))(a2, 0, 1, SearchResult);
  }

  else
  {
    sub_1B0ADE408(v7, _s19UserInitiatedSearchV5StateOMa);
    v16 = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_1B0ADBA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v162 = &v153 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v209 = *(v167 - 8);
  v6 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v153 - v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  v9 = MEMORY[0x1EEE9AC00](v160);
  v156 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v161 = &v153 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v153 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v189 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v158 = &v153 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v169 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v157 = &v153 - v23;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v194 = *(MessagesVMa - 8);
  v25 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v210 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = _s19UserInitiatedSearchVMa(0);
  v27 = *(v199 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v177 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D8, &unk_1B0EC4300);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v205 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v201 = &v153 - v34;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v206 = *(v208 - 8);
  v35 = *(v206 + 64);
  v36 = MEMORY[0x1EEE9AC00](v208);
  v171 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v153 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E8, &qword_1B0EC4310);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v204 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v198 = &v153 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v197 = &v153 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D0, &unk_1B0EC42F0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v203 = &v153 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v155 = &v153 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v168 = &v153 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v153 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v185 = &v153 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v184 = &v153 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v163 = &v153 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v182 = &v153 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v153 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v153 - v70;
  MEMORY[0x1EEE9AC00](v69);
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

    sub_1B0ADE3A0(v79 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v78, v201, _s19UserInitiatedSearchVMa);
    v87 = 0;
    v209 = v78 + 1;
LABEL_10:
    v89 = MessagesVMa;
    v90 = 1;
    v91 = v199;
    (*v196)(v86, v87, 1, v199);
    v92 = v86;
    v93 = v205;
    sub_1B03C60A4(v92, v205, &qword_1EB6E41D8, &unk_1B0EC4300);
    v94 = (*v195)(v93, 1, v91);
    v95 = v198;
    if (v94 != 1)
    {
      v96 = v177;
      sub_1B0ADE4D8(v205, v177, _s19UserInitiatedSearchVMa);
      v176(v96);
      sub_1B0ADE408(v96, _s19UserInitiatedSearchVMa);
      v90 = 0;
    }

    v97 = *v207;
    v98 = v90;
    v99 = v208;
    (*v207)(v95, v98, 1, v208);
    v100 = *v206;
    if ((*v206)(v95, 1, v99) == 1)
    {
      sub_1B0398EFC(v95, &qword_1EB6E41E8, &qword_1B0EC4310);
      v101 = 1;
    }

    else
    {
      sub_1B03C60A4(v95, v88, &qword_1EB6E41E0, &unk_1B0EC4580);
      v102 = v175(v88);
      if ((v102 & 1) == 0)
      {
        result = sub_1B0398EFC(v88, &qword_1EB6E41E0, &unk_1B0EC4580);
        MessagesVMa = v89;
        goto LABEL_4;
      }

      sub_1B03C60A4(v88, v197, &qword_1EB6E41E0, &unk_1B0EC4580);
      v101 = 0;
    }

    v103 = 1;
    v104 = v197;
    v105 = v208;
    v97(v197, v101, 1, v208);
    v106 = v204;
    sub_1B03C60A4(v104, v204, &qword_1EB6E41E8, &qword_1B0EC4310);
    if (v100(v106, 1, v105) != 1)
    {
      v107 = v171;
      sub_1B03C60A4(v204, v171, &qword_1EB6E41E0, &unk_1B0EC4580);
      v170(v107);
      sub_1B0398EFC(v107, &qword_1EB6E41E0, &unk_1B0EC4580);
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
      sub_1B0398EFC(&v211, &qword_1EB6E41F0, &qword_1B0EC4318);

      v132 = v163;
      sub_1B03B5C80(v73, v163, &qword_1EB6E3920, &qword_1B0E9B070);
      v133 = *v112;
      if ((*v112)(v132, 1, v189) == 1)
      {
        sub_1B0398EFC(v132, &qword_1EB6E3920, &qword_1B0E9B070);
        v134 = 1;
        v135 = v164;
        v136 = v193;
      }

      else
      {
        v137 = v157;
        sub_1B03C60A4(v132, v157, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v138 = v158;
        sub_1B03B5C80(v137, v158, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v139 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v137, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v139 <= 0)
        {
          sub_1B0398EFC(v138, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v143 = 1;
          v142 = v162;
        }

        else
        {
          v140 = v156;
          sub_1B03C60A4(v138, v156, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v141 = v140;
          v142 = v162;
          sub_1B03C60A4(v141, v162, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v143 = 0;
        }

        v144 = v161;
        v136 = v193;
        v145 = v159;
        v146 = v160;
        (*(v159 + 56))(v142, v143, 1, v160);
        if ((*(v145 + 48))(v142, 1, v146) == 1)
        {
          v147 = &unk_1EB6E3670;
          v148 = &unk_1B0E9B260;
          v149 = v142;
        }

        else
        {
          sub_1B03C60A4(v142, v144, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v150 = v155;
          sub_1B03B5C80(v136, v155, &qword_1EB6E3920, &qword_1B0E9B070);
          if (v133(v150, 1, v189) != 1)
          {
            v151 = v150;
            v152 = v154;
            sub_1B03C60A4(v151, v154, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v135 = v164;
            sub_1B03C60A4(v144, v164, &unk_1EB6E26C0, &unk_1B0E9DE10);
            sub_1B03C60A4(v152, v135 + *(v110 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03B5C80(v202, v135 + *(v110 + 24), &qword_1EB6E3920, &qword_1B0E9B070);
            v134 = 0;
            goto LABEL_47;
          }

          sub_1B0398EFC(v144, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v147 = &qword_1EB6E3920;
          v148 = &qword_1B0E9B070;
          v149 = v150;
        }

        sub_1B0398EFC(v149, v147, v148);
        v134 = 1;
        v135 = v164;
      }

LABEL_47:
      sub_1B0398EFC(v202, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0398EFC(v136, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0398EFC(v73, &qword_1EB6E3920, &qword_1B0E9B070);
      return v108(v135, v134, 1, v110);
    }

    v113 = v210;
    sub_1B0ADE4D8(v109, v210, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v114 = v182;
    sub_1B03B5C80(v73, v182, &qword_1EB6E3920, &qword_1B0E9B070);
    v115 = *v112;
    v116 = v189;
    v117 = (*v112)(v114, 1, v189);
    sub_1B0398EFC(v114, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v117 == 1)
    {
      sub_1B0398EFC(v73, &qword_1EB6E3920, &qword_1B0E9B070);
      v118 = v173;
      sub_1B03B5C80(v113, v173, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v118, v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v181(v73, 0, 1, v116);
    }

    else if (!v115(v73, 1, v116))
    {
      v119 = v173;
      sub_1B03B5C80(v210, v173, &unk_1EB6E26C0, &unk_1B0E9DE10);
      (*v165)(v166, v119, v167);
      sub_1B0E46ED8();
      sub_1B0398EFC(v119, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v120 = v193;
    v121 = v184;
    sub_1B03B5C80(v193, v184, &qword_1EB6E3920, &qword_1B0E9B070);
    v122 = v115(v121, 1, v116);
    sub_1B0398EFC(v121, &qword_1EB6E3920, &qword_1B0E9B070);
    MessagesVMa = v183;
    if (v122 == 1)
    {
      sub_1B0398EFC(v120, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B03B5C80(v210 + *(MessagesVMa + 20), v120, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
        sub_1B0E46ED8();
      }
    }

    v126 = v185;
    sub_1B03B5C80(v124, v185, &qword_1EB6E3920, &qword_1B0E9B070);
    v127 = v115(v126, 1, v116);
    sub_1B0398EFC(v126, &qword_1EB6E3920, &qword_1B0E9B070);
    v128 = *(MessagesVMa + 24);
    v73 = v191;
    if (v127 == 1)
    {
      v84 = v210;
      v85 = v168;
      sub_1B03B5C80(v210 + v128, v168, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0ADE408(v84, _s19UserInitiatedSearchV13FetchMessagesVMa);
      result = sub_1B0ADE468(v85, v124);
    }

    else
    {
      v129 = v210;
      sub_1B03B5C80(v210 + v128, v123, &qword_1EB6E3920, &qword_1B0E9B070);
      if (v115(v123, 1, v116) == 1)
      {
        sub_1B0ADE408(v129, _s19UserInitiatedSearchV13FetchMessagesVMa);
        result = sub_1B0398EFC(v123, &qword_1EB6E3920, &qword_1B0E9B070);
      }

      else
      {
        sub_1B03C60A4(v123, v169, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v115(v202, 1, v116))
        {
          sub_1B0398EFC(v169, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v130 = v129;
        }

        else
        {
          v131 = v169;
          (*v165)(v166, v169, v167);
          sub_1B0E46ED8();
          sub_1B0398EFC(v131, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v130 = v210;
        }

        result = sub_1B0ADE408(v130, _s19UserInitiatedSearchV13FetchMessagesVMa);
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

uint64_t sub_1B0ADCFB0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v15 = *(*(MessagesVMa - 8) + 64);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  sub_1B0ADE3A0(a1 + *(SearchResult + 20), v17, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v19 = type metadata accessor for FetchSearchResultMessages.Requests(0);
  sub_1B03B5C80(a2 + *(v19 + 28), v8, &qword_1EB6E3920, &qword_1B0E9B070);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v20(v8, 1, v9) != 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v8, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v21 = sub_1B0ADD260(v13, v24, *(a2 + *(v19 + 24)), *(a2 + *(v19 + 24) + 8));
  sub_1B0ADE408(v17, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v21 & 1;
}

uint64_t sub_1B0ADD260(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  v70 = a4;
  v58 = a3;
  v61 = a2;
  v68 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v60 = *(v23 - 8);
  v24 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v63 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v58 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v58 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v62 = &v58 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v66 = &v58 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v67 = &v58 - v42;
  sub_1B03B5C80(v5, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v43 = *(MessagesVMa + 20);
  v65 = v5;
  MessageIdentifierSet.subtracting(_:)(v5 + v43, v33);
  sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v61, v9, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
    v44 = v60;
    v61 = *(v60 + 56);
    v61(v17, 1, 1, v23);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v44 + 48))(v17, 1, v23) != 1)
    {
      sub_1B0398EFC(v17, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03B5C80(v9, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v44 = v60;
    v61 = *(v60 + 56);
    v61(v17, 0, 1, v23);
    sub_1B03C60A4(v17, v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.subtracting(_:)(v30, v36);
  sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = v64;
  sub_1B03B5C80(v65 + *(MessagesVMa + 24), v64, &qword_1EB6E3920, &qword_1B0E9B070);
  v46 = *(v44 + 48);
  if (v46(v45, 1, v23) == 1)
  {
    sub_1B03D06F8();
    v47 = v63;
    sub_1B0E46EE8();
    v48 = v46(v45, 1, v23);
    v49 = v66;
    if (v48 != 1)
    {
      sub_1B0398EFC(v45, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v47 = v63;
    sub_1B03C60A4(v45, v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v49 = v66;
  }

  v50 = v62;
  MessageIdentifierSet.subtracting(_:)(v47, v62);
  sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.subtracting(_:)(v68, v49);
  sub_1B0398EFC(v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v70)
  {
    v51 = v71;
    v61(v71, 1, 1, v23);
    sub_1B03D06F8();
    v52 = v69;
    sub_1B0E46EE8();
    if (v46(v51, 1, v23) != 1)
    {
      sub_1B0398EFC(v51, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v73 = v58;
    v53 = sub_1B041C1E8();
    v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v53);
    sub_1B03D06F8();
    v54 = v71;
    sub_1B0E46F08();
    v61(v54, 0, 1, v23);
    v52 = v69;
    sub_1B03C60A4(v54, v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v55 = v67;
  MessageIdentifierSet.subtracting(_:)(v52, v67);
  sub_1B0398EFC(v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v56 = sub_1B0E46E98();
  sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v56 & 1;
}

uint64_t sub_1B0ADDABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B03B5C80(a1, &v10 - v6, &qword_1EB6E41E0, &unk_1B0EC4580);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  result = (*(*(SearchResult - 8) + 48))(v7, 1, SearchResult);
  if (result != 1)
  {
    return sub_1B0ADE4D8(v7, a2, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ADDBC4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v8 = *(*(SearchResult - 8) + 64);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 48);
  (*(a4 + 40))(a1);
  a2(v10);
  return sub_1B0ADE408(v10, type metadata accessor for FetchSearchResultMessages.Requests.Search);
}

BOOL sub_1B0ADDC98(_DWORD *a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for FetchSearchResultMessages.Requests.Search(0) + 20);
  v20 = a1 + v19;
  v21 = a2 + v19;
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v23 = *(MessagesVMa + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v24 = *(MessagesVMa + 24);
  v25 = &v20[v24];
  v26 = *(v18 + 48);
  sub_1B03B5C80(v25, v17, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(&v21[v24], &v17[v26], &qword_1EB6E3920, &qword_1B0E9B070);
  v27 = *(v5 + 48);
  if (v27(v17, 1, v4) == 1)
  {
    if (v27(&v17[v26], 1, v4) == 1)
    {
      sub_1B0398EFC(v17, &qword_1EB6E3920, &qword_1B0E9B070);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1B03B5C80(v17, v12, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v27(&v17[v26], 1, v4) == 1)
  {
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_9:
    sub_1B0398EFC(v17, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  sub_1B03C60A4(&v17[v26], v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = sub_1B0E46E08();
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v17, &qword_1EB6E3920, &qword_1B0E9B070);
  return (v29 & 1) != 0;
}

BOOL sub_1B0ADE00C(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  if ((sub_1B0B64774(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (!sub_1B0BC8548(a1 + SearchResult[5], a2 + SearchResult[5]))
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
  sub_1B03B5C80(v24, v16, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(a2 + v23, &v16[v25], &qword_1EB6E3920, &qword_1B0E9B070);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    sub_1B03B5C80(v16, v12, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v26(&v16[v25], 1, v4) != 1)
    {
      sub_1B03C60A4(&v16[v25], v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v28 = sub_1B0E46E08();
      sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
      return (v28 & 1) != 0;
    }

    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_14:
    sub_1B0398EFC(v16, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  if (v26(&v16[v25], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
  return 1;
}

uint64_t sub_1B0ADE3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ADE408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ADE468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ADE4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ADE560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_1B0AD4EE4(a2, a3, a4);
  if (result)
  {
    sub_1B0ADE3A0(a1, v15, type metadata accessor for UntaggedResponse);
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
        sub_1B0B5F730(v24, v20, a6);
      }

      return sub_1B0AA4C0C(v24);
    }

    else
    {
      return sub_1B0ADE408(v15, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_1B0ADE70C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v44 = 1;
  result = sub_1B0AEB5AC(0x100000000uLL, a2, a3, a4);
  if (result)
  {
    v25 = v4;
    v26 = v4 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    sub_1B0AD989C(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v27 = &unk_1EB6E3670;
      v28 = &unk_1B0E9B260;
      v29 = v18;
    }

    else
    {
      sub_1B03C60A4(v18, v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
      if (((v43 >> 59) & 0x1E | (v43 >> 2) & 1) == 0xA)
      {
        v30 = swift_projectBox();
        sub_1B03B5C80(v30, v11, &qword_1EB6E3628, &unk_1B0EA2080);
        v31 = *v11;
        v32 = *(v8 + 48);
        v33 = *(v8 + 64);
        if (*(v25 + 24) == v11[1])
        {
          v34 = sub_1B04520BC(*(v25 + 16), *v11);

          if (v34)
          {
            v35 = v42;
            sub_1B03C60A4(v11 + v32, v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03D06F8();
            v36 = sub_1B0E46E08();
            sub_1B0398EFC(v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
            sub_1B0398EFC(v11 + v33, &unk_1EB6E26C0, &unk_1B0E9DE10);
            if (v36)
            {
              v37 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
              sub_1B0398EFC(v26 + v37, &qword_1EB6E3920, &qword_1B0E9B070);
              sub_1B03C60A4(v35, v26 + v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              return (*(v40 + 56))(v26 + v37, 0, 1, v41);
            }

            v27 = &unk_1EB6E1AF0;
            v28 = &unk_1B0E9AF40;
            v29 = v35;
            return sub_1B0398EFC(v29, v27, v28);
          }
        }

        else
        {
          v38 = *v11;
        }

        sub_1B0398EFC(v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v11 + v33, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v27 = &unk_1EB6E1AF0;
        v28 = &unk_1B0E9AF40;
        v29 = v11 + v32;
      }

      else
      {
        v27 = &unk_1EB6E26C0;
        v28 = &unk_1B0E9DE10;
        v29 = v23;
      }
    }

    return sub_1B0398EFC(v29, v27, v28);
  }

  return result;
}

BOOL sub_1B0ADEB60(uint64_t a1)
{
  v2 = _s19UserInitiatedSearchV5StateOMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1B0ADE3A0(v12, v10, _s19UserInitiatedSearchVMa);
    sub_1B0ADE4D8(&v10[*(v6 + 20)], v5, _s19UserInitiatedSearchV5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0ADE408(v5, _s19UserInitiatedSearchV5StateOMa);
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

uint64_t sub_1B0ADED3C()
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0ADEDE0()
{
  sub_1B0ADF084(319, &qword_1EB6DB470, type metadata accessor for FetchSearchResultMessages.Requests.Search, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    _s19UserInitiatedSearchV13FetchMessagesVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1B0ADEEC4();
      if (v2 <= 0x3F)
      {
        sub_1B0AB44A4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0ADEEC4()
{
  if (!qword_1EB6DCC80)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCC80);
    }
  }
}

void sub_1B0ADEF5C()
{
  sub_1B0AA95BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FetchSearchResultMessages.Requests(319);
      if (v2 <= 0x3F)
      {
        sub_1B0ADF084(319, &qword_1EB6DDAC8, type metadata accessor for NewServerMessages, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0ADF084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B0ADF0EC()
{
  result = qword_1EB6DD590;
  if (!qword_1EB6DD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD590);
  }

  return result;
}

unint64_t sub_1B0ADF140()
{
  result = qword_1EB6DD568;
  if (!qword_1EB6DD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD568);
  }

  return result;
}

unint64_t sub_1B0ADF194(uint64_t a1)
{
  result = sub_1B0ADF1BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0ADF1BC()
{
  result = qword_1EB6DD560;
  if (!qword_1EB6DD560)
  {
    type metadata accessor for FetchSearchResultMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD560);
  }

  return result;
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

uint64_t sub_1B0ADF2A4(uint64_t a1)
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

uint64_t sub_1B0ADF2C0(uint64_t result, int a2)
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

unint64_t sub_1B0ADF2F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (!sub_1B0B63BF8(*a1, *a2) || (sub_1B0B72F70(v2, v5) & 1) == 0 || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

  return sub_1B0B732C0(v4, v7);
}

uint64_t sub_1B0ADF390(uint64_t a1, uint64_t a2)
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
  if (sub_1B03B5F54(v24, v25))
  {
    v18 = static RemoteMailbox.__derived_struct_equals(_:_:)(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

__n128 sub_1B0ADF46C@<Q0>(__n128 *a1@<X8>)
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

unint64_t sub_1B0ADF490()
{
  v1 = sub_1B0AE15D8(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t sub_1B0ADF500(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0) + 20));
  result = sub_1B03C60A4(v4, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
    sub_1B0AE27F4(v20, a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    a1 = (v26 + 48);
    v23 = 1;
    while (1)
    {
      sub_1B0B3FBB4(v11);
      if ((*a1)(v11, 1, v12) == 1)
      {
        break;
      }

      sub_1B03C60A4(v11, v15, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v15, a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
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

    sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
    a3 = v23 - 1;
LABEL_12:
    a1 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ADF790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
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
          v25 = sub_1B03AB888(v81, DWORD2(v81));
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
      sub_1B03A35B8(&v80, &v59);
      sub_1B03BB0B4(&v75, &v59);
      v31 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v32 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v31)
      {
        if ((v32 & ~v31) == 0)
        {
LABEL_15:
          if ((HIWORD(v75) & v31) != 0)
          {
            sub_1B039E440(&v75);
            sub_1B03A3614(&v80);
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

          sub_1B03A35B8(&v80, v58);
          sub_1B03BB0B4(&v75, v58);
          v33 = MailboxName.isInbox.getter(v21, v22);
          sub_1B039E440(&v75);
          if ((v33 & 1) != 0 || v76 > 7u || ((1 << v76) & 0xDB) == 0 || (v24 & 1) == 0 && ((BYTE12(v86) & 1) != 0 || DWORD2(v86) < v23))
          {
            sub_1B03A3614(&v80);
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

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03A3614(&v80);
          if (*(v56 + 16))
          {
            v34 = sub_1B03B8A9C(v20, *(&v20 + 1));
            v36 = v35;

            if ((v36 & 1) != 0 && (~*(*(v56 + 56) + 2 * v34) & 0x3FFF) != 0)
            {
              goto LABEL_34;
            }

            sub_1B03BB144(&v59);
          }

          else
          {
            sub_1B03BB144(&v59);
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

double sub_1B0ADFB4C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v2 == v4)
  {
LABEL_2:
    sub_1B0AE0378(&v92);
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
      v28 = sub_1B03AB888(v82, DWORD2(v82));
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
      sub_1B03A35B8(&v81, &v92);
      sub_1B03BB0B4(&v76, &v92);
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

        sub_1B03A35B8(&v81, &v92);
        sub_1B03BB0B4(&v76, &v92);
        v36 = MailboxName.isInbox.getter(v24, v25);
        sub_1B039E440(&v76);
        if ((v36 & 1) != 0 || v77 > 7u || ((1 << v77) & 0xDB) == 0 || (v27 & 1) == 0 && ((BYTE12(v87) & 1) != 0 || DWORD2(v87) < v26))
        {
          goto LABEL_30;
        }

        v37 = *(v43 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A3614(&v81);
        if (*(v37 + 16))
        {
          v38 = sub_1B03B8A9C(v23, *(&v23 + 1));
          v40 = v39;

          if ((v40 & 1) != 0 && (~*(*(v37 + 56) + 2 * v38) & 0x3FFF) != 0)
          {
            goto LABEL_31;
          }

          sub_1B03BB144(&v60);
        }

        else
        {
          sub_1B03BB144(&v60);
        }

        goto LABEL_27;
      }

      sub_1B039E440(&v76);
      sub_1B03A3614(&v81);
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
  sub_1B03A3614(&v81);
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
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v44);
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

double sub_1B0ADFF18@<D0>(uint64_t a1@<X8>)
{
  sub_1B0ADFB4C(v10);
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

unint64_t sub_1B0ADFF94()
{
  result = qword_1EB6E4218;
  if (!qword_1EB6E4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4218);
  }

  return result;
}

unint64_t sub_1B0ADFFE8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1B0E46C18();

  return sub_1B0AE03A4(a1, v4);
}

unint64_t sub_1B0AE0058(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B0E46C28();
  sub_1B0B50244(v6);
  v4 = sub_1B0E46CB8();

  return sub_1B0AE0C74(a1, v4);
}

unint64_t sub_1B0AE00C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 40);
  sub_1B0E46C28();
  v9 = *(*a1 + 96);
  swift_beginAccess();
  sub_1B03BCD68(a1 + v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v13);
  sub_1B03BE264(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v10 = sub_1B0E46CB8();
  return sub_1B0AE0DD4(a1, v10);
}

unint64_t sub_1B0AE01D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B0E46C28();
  sub_1B0B0ADF0(v8, a1);
  sub_1B0B0ADF0(v8, a2);
  v6 = sub_1B0E46CB8();

  return sub_1B0AE0FB4(a1, a2, v6);
}

unint64_t sub_1B0AE0250(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*a1);
  v4 = *(a1 + 1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](*(a1 + 4) | (*(a1 + 4) << 32));
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  sub_1B0E42F48();
  v7 = sub_1B0E46CB8();

  return sub_1B0AE10B4(a1, v7);
}

uint64_t sub_1B0AE02E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1B0E46C28();
  a3(v12, a1, a2);
  v9 = sub_1B0E46CB8();

  return a4(a1, a2, v9);
}

double sub_1B0AE0378(uint64_t a1)
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

unint64_t sub_1B0AE03A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AE0410(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x1E69E9840];
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
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
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
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
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
          v26 = v71;
          if (v72)
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
        goto LABEL_139;
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
      goto LABEL_139;
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

      sub_1B03B2000(v17, v16);
      v35 = sub_1B0E42A98();
      if (v35)
      {
        v40 = sub_1B0E42AC8();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1B0E42AB8();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_1B0E42A98();
        if (v37)
        {
          v60 = sub_1B0E42AC8();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1B0E42AB8();
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
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_1B0E42A98();
        if (v37)
        {
          v41 = sub_1B0E42AC8();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_1B0E42AB8();
        v39 = v66;
        if (result < v66)
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
      BYTE4(__s1[0]) = v68;
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
      sub_1B03B2000(v17, v16);
      v32 = sub_1B0E42A98();
      if (v32)
      {
        v49 = sub_1B0E42AC8();
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

      v46 = sub_1B0E42AB8();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_1B03B2000(v17, v16);
    v29 = sub_1B0E42A98();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1B0E42AC8();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_1B0E42AB8();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
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
    sub_1B0391D50(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1B03B2000(v17, v16);
    v35 = sub_1B0E42A98();
    if (v35)
    {
      v36 = sub_1B0E42AC8();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1B0E42AB8();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_1B0E42A98();
      if (v37)
      {
        v57 = sub_1B0E42AC8();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1B0E42AB8();
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
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_1B0E42A98();
      if (v37)
      {
        v38 = sub_1B0E42AC8();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_1B0E42AB8();
      v39 = v66;
      if (result < v66)
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
        sub_1B0391D50(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1B0391D50(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
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
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1B03B2000(v17, v16);
    v32 = sub_1B0E42A98();
    if (v32)
    {
      v44 = sub_1B0E42AC8();
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

    v46 = sub_1B0E42AB8();
    v7 = v69;
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

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_1B03B2000(v17, v16);
  v51 = sub_1B0E42A98();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B0E42AC8();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_1B0E42AB8();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1B0E42AB8();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1B0E42AB8();
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

unint64_t sub_1B0AE0C74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1B03BCD68(*(v2 + 48) + v13 * v11, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v14 = sub_1B0B57E4C(v9, a1);
      sub_1B03BE264(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
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

unint64_t sub_1B0AE0DD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
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
      sub_1B03BCD68(v18 + v19, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03BCD68(v16 + v15, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v20 = sub_1B0B57E4C(v11, v9);
      sub_1B03BE264(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03BE264(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
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

unint64_t sub_1B0AE0FB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0AFE1EC(v10, a1))
      {
        v12 = sub_1B0AFE1EC(v11, a2);

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

unint64_t sub_1B0AE10B4(uint64_t a1, uint64_t a2)
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
      sub_1B0929244(v13, v12);
      v10 = static MoveOrCopy.__derived_struct_equals(_:_:)(v13, a1);
      sub_1B0929338(v13);
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

size_t sub_1B0AE1190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  v11 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + 80);
  sub_1B03BCD68(a1, v15, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v22 = *&v15[*(v12 + 28)];
  sub_1B03C60A4(v15, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *&v20[*(v17 + 28)] = v22;
  sub_1B0B3FBB4(v5);
  v58 = v6;
  v59 = v7;
  v23 = *(v7 + 48);
  v56 = v7 + 48;
  v57 = v23;
  v24 = v23(v5, 1, v6);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24 != 1)
  {
    v26 = 0;
    v54 = v21;
    v55 = (v21 + 32) & ~v21;
    v32 = MEMORY[0x1E69E7CC0] + v55;
    v33 = &unk_1EB6E26C0;
    v34 = &unk_1B0E9DE10;
    v35 = MEMORY[0x1E69E7CC0];
    v52 = v5;
    v53 = v10;
    while (1)
    {
      v37 = v33;
      v38 = v34;
      result = sub_1B03C60A4(v5, v10, v33, v34);
      if (v26)
      {
        v25 = v35;
        v30 = __OFSUB__(v26--, 1);
        if (v30)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v39 = v35[3];
        if (((v39 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v40 = v39 & 0xFFFFFFFFFFFFFFFELL;
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4240, &unk_1B0EC5120);
        v42 = *(v59 + 72);
        v43 = v55;
        v25 = swift_allocObject();
        result = _swift_stdlib_malloc_size_0(v25);
        if (!v42)
        {
          goto LABEL_34;
        }

        v44 = result - v43;
        if (result - v43 == 0x8000000000000000 && v42 == -1)
        {
          goto LABEL_35;
        }

        v46 = v44 / v42;
        v25[2] = v41;
        v25[3] = 2 * (v44 / v42);
        v47 = v25 + v43;
        v48 = v35[3] >> 1;
        v49 = v48 * v42;
        if (v35[2])
        {
          if (v25 < v35 || v47 >= v35 + v55 + v49)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35[2] = 0;
        }

        v32 = &v47[v49];
        v51 = (v46 & 0x7FFFFFFFFFFFFFFFLL) - v48;

        v5 = v52;
        v10 = v53;
        v30 = __OFSUB__(v51, 1);
        v26 = v51 - 1;
        if (v30)
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

      sub_1B03C60A4(v10, v32, v37, v38);
      v32 += *(v59 + 72);
      sub_1B0B3FBB4(v5);
      v36 = v57(v5, 1, v58);
      v34 = v38;
      v33 = v37;
      v35 = v25;
      if (v36 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v26 = 0;
LABEL_3:
  sub_1B03BE264(v20, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
  result = sub_1B0398EFC(v5, &unk_1EB6E3670, &unk_1B0E9B260);
  v28 = v25[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v30 = __OFSUB__(v29, v26);
    v31 = v29 - v26;
    if (v30)
    {
      goto LABEL_36;
    }

    v25[2] = v31;
  }

  return v25;
}

unint64_t sub_1B0AE15D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64 = a4;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v66 = v7;
  v62 = MEMORY[0x1E69E7CC0];
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
  v60 = MEMORY[0x1E69E7CC0] + 32;
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
        result = sub_1B03AB888(v90, DWORD2(v90));
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
    sub_1B03A35B8(&v89, &v68);
    sub_1B03BB0B4(&v84, &v68);
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
      sub_1B039E440(&v84);
      result = sub_1B03A3614(&v89);
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

    sub_1B03A35B8(&v89, v67);
    sub_1B03BB0B4(&v84, v67);
    v30 = MailboxName.isInbox.getter(v17, v18);
    sub_1B039E440(&v84);
    if ((v30 & 1) != 0 || v85 > 7u || ((1 << v85) & 0xDB) == 0 || (v20 & 1) == 0 && ((BYTE12(v95) & 1) != 0 || DWORD2(v95) < v19))
    {
      result = sub_1B03A3614(&v89);
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v89);
    if (!*(v64 + 16))
    {
      sub_1B03BB144(&v68);

LABEL_29:
      v6 = v21;
      v29 = __OFADD__(v9++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_14;
    }

    v31 = sub_1B03B8A9C(v16, *(&v16 + 1));
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v64 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_1B03BB144(&v68);
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
    *(v60 + 32) = v70;
    *(v60 + 48) = v47;
    *v60 = v45;
    *(v60 + 16) = v46;
    v48 = v72;
    v49 = v73;
    v50 = v75;
    *(v60 + 96) = v74;
    *(v60 + 112) = v50;
    *(v60 + 64) = v48;
    *(v60 + 80) = v49;
    v51 = v76;
    v52 = v77;
    v53 = v79;
    *(v60 + 160) = v78;
    *(v60 + 176) = v53;
    *(v60 + 128) = v51;
    *(v60 + 144) = v52;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    *(v60 + 240) = v83;
    *(v60 + 208) = v55;
    *(v60 + 224) = v56;
    *(v60 + 192) = v54;
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4220, &qword_1B0EC4568);
    v38 = swift_allocObject();
    v39 = (_swift_stdlib_malloc_size_0(v38) - 32) / 248;
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

size_t sub_1B0AE1AC8(uint64_t *a1)
{
  v105 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v105 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D8, &unk_1B0EC4300);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E8, &qword_1B0EC4310);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v79 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v107);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v79 - v25;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v26 = *(SearchResult - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](SearchResult);
  v91 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v26 + 80);
  v94 = MEMORY[0x1E69E7CC0];
  v79 = (v80 + 32) & ~v80;
  v92 = (MEMORY[0x1E69E7CC0] + v79);
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
  sub_1B0AE2784(&v111, v110);
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

      result = sub_1B03BCD68(v95 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v36, v108, _s19UserInitiatedSearchVMa);
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
      sub_1B03C60A4(v43, v109, &qword_1EB6E41D8, &unk_1B0EC4300);
      if ((*v103)(v44, 1, v40) != 1)
      {
        v45 = v98;
        sub_1B0AE27F4(v109, v98, _s19UserInitiatedSearchVMa);
        v97(v45);
        sub_1B03BE264(v45, _s19UserInitiatedSearchVMa);
        v41 = 0;
      }

      v46 = *v106;
      v47 = v41;
      v48 = v107;
      (*v106)(v16, v47, 1, v107);
      v49 = *v33;
      if ((*v33)(v16, 1, v48) == 1)
      {
        sub_1B0398EFC(v16, &qword_1EB6E41E8, &qword_1B0EC4310);
        v50 = 1;
        v51 = v86;
        goto LABEL_15;
      }

      sub_1B03C60A4(v16, v24, &qword_1EB6E41E0, &unk_1B0EC4580);
      if (v100(v24))
      {
        break;
      }

      result = sub_1B0398EFC(v24, &qword_1EB6E41E0, &unk_1B0EC4580);
      v34 = v102;
      v37 = v36 >= v102;
      if (v36 == v102)
      {
        goto LABEL_3;
      }
    }

    v51 = v86;
    sub_1B03C60A4(v24, v86, &qword_1EB6E41E0, &unk_1B0EC4580);
    v50 = 0;
    v34 = v102;
LABEL_15:
    v52 = v107;
    v46(v51, v50, 1, v107);
    v53 = v90;
    sub_1B03C60A4(v51, v90, &qword_1EB6E41E8, &qword_1B0EC4310);
    v54 = v49(v53, 1, v52);
    v55 = 1;
    v56 = v94;
    if (v54 != 1)
    {
      v57 = v83;
      sub_1B03C60A4(v90, v83, &qword_1EB6E41E0, &unk_1B0EC4580);
      v82(v57);
      sub_1B0398EFC(v57, &qword_1EB6E41E0, &unk_1B0EC4580);
      v55 = 0;
    }

    v58 = v89;
    v59 = SearchResult;
    (*v85)(v89, v55, 1, SearchResult);
    if ((*v84)(v58, 1, v59) != 1)
    {
      result = sub_1B0AE27F4(v58, v91, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      if (v93)
      {
        v60 = v56;
        v61 = v93 - 1;
        if (!__OFSUB__(v93, 1))
        {
LABEL_39:
          v93 = v61;
          v75 = v92;
          result = sub_1B0AE27F4(v91, v92, type metadata accessor for FetchSearchResultMessages.Requests.Search);
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4238, &unk_1B0EC4590);
        v65 = *(v88 + 72);
        v66 = v79;
        v60 = swift_allocObject();
        result = _swift_stdlib_malloc_size_0(v60);
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

  sub_1B0398EFC(&v111, &qword_1EB6E41F0, &qword_1B0EC4318);

  result = sub_1B0398EFC(v58, &qword_1EB6E41E0, &unk_1B0EC4580);
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

uint64_t sub_1B0AE2440@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1B0E42A98();
    if (v10)
    {
      v11 = sub_1B0E42AC8();
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
      result = sub_1B0E42AB8();
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
  v10 = sub_1B0E42A98();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B0E42AC8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B0E42AB8();
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

void *sub_1B0AE2670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4230, &qword_1B0EC4578);
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size_0(v5);
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
  result = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B0AE2784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F0, &qword_1B0EC4318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AE27F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AE285C(uint64_t *a1, int a2)
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

uint64_t sub_1B0AE28A4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy242_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0AE2958(uint64_t *a1, int a2)
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

uint64_t sub_1B0AE29A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AE2A30@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    while (1)
    {
      sub_1B03B5C80(v15, v9, &qword_1EB6E4260, &qword_1B0EC47E0);
      if (*v9 == a1)
      {
        break;
      }

      sub_1B0398EFC(v9, &qword_1EB6E4260, &qword_1B0EC47E0);
      v15 += v16;
      if (!--v14)
      {
        goto LABEL_5;
      }
    }

    sub_1B03C60A4(v9, v13, &qword_1EB6E4260, &qword_1B0EC47E0);
    sub_1B0AEAE5C(&v13[*(v6 + 52)], a3, type metadata accessor for FindMissingMessages.CommandID);
    sub_1B0398EFC(v13, &qword_1EB6E4260, &qword_1B0EC47E0);
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

BOOL sub_1B0AE2C2C(unsigned __int8 *a1, unsigned __int8 *a2)
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

BOOL sub_1B0AE2C70(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AE2CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B0EC4700;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  *(v1 + 32) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 80) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 128) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 176) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 224) = type metadata accessor for FetchSearchResultMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 272) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v1;
}

uint64_t sub_1B0AE2E4C()
{
  result = sub_1B03D0770(&unk_1F2710E58);
  qword_1EB737D78 = result;
  return result;
}

void sub_1B0AE2E74(uint64_t a1)
{
  v2 = v1;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v5 = *(*(MissingMessages - 8) + 64);
  MEMORY[0x1EEE9AC00](MissingMessages);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v64 - v11;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = v2 + *(MissingMessages + 44);
  v20 = *(v19 + 13);
  v69 = v21;
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
      v75 = 0;
      v76 = 0xE000000000000000;
      LODWORD(v78) = v24;
      sub_1B0E46508();
      v23 = v75;
      v22 = v76;
    }
  }

  v70 = v23;
  sub_1B0AEAE5C(a1, v18, type metadata accessor for MailboxTaskLogger);
  sub_1B0AEAE5C(a1, v15, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v25 = v71;
  sub_1B0AEAE5C(v2, v71, type metadata accessor for FindMissingMessages);
  sub_1B0AEAE5C(v2, v9, type metadata accessor for FindMissingMessages);
  v26 = v72;
  sub_1B0AEAE5C(v2, v72, type metadata accessor for FindMissingMessages);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = sub_1B0E43988();
  v28 = sub_1B0E45908();

  if (os_log_type_enabled(v27, v28))
  {
    v66 = v28;
    v67 = v9;
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78 = v65;
    *v29 = 68160259;
    *(v29 + 4) = 2;
    *(v29 + 8) = 256;
    v30 = v69;
    v31 = &v15[*(v69 + 20)];
    *(v29 + 10) = *v31;
    v68 = MissingMessages;
    *(v29 + 11) = 2082;
    v32 = &v18[*(v30 + 20)];
    *(v29 + 13) = sub_1B0399D64(*(v32 + 1), *(v32 + 2), &v78);
    *(v29 + 21) = 1040;
    *(v29 + 23) = 2;
    *(v29 + 27) = 512;
    LOWORD(v31) = *(v31 + 12);
    sub_1B0AEAEC4(v15, type metadata accessor for MailboxTaskLogger);
    *(v29 + 29) = v31;
    *(v29 + 31) = 2160;
    *(v29 + 33) = 0x786F626C69616DLL;
    *(v29 + 41) = 2085;
    v33 = *(v32 + 4);
    LODWORD(v32) = *(v32 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AEAEC4(v18, type metadata accessor for MailboxTaskLogger);
    v75 = v33;
    LODWORD(v76) = v32;
    v34 = sub_1B0E44BA8();
    v36 = sub_1B0399D64(v34, v35, &v78);

    *(v29 + 43) = v36;
    *(v29 + 51) = 2082;
    v37 = sub_1B0399D64(v70, v22, &v78);

    *(v29 + 53) = v37;
    v70 = v29;
    *(v29 + 61) = 2082;
    v38 = v68;
    v39 = *(v25 + *(v68 + 44));
    v40 = *(v39 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v40, 0);
      v42 = (v39 + 40);
      v41 = v77;
      v43 = v27;
      do
      {
        v45 = *(v42 - 2);
        v44 = *(v42 - 1);
        if (*v42)
        {
          v75 = 14931;
          v46 = 0xE200000000000000;
        }

        else
        {
          v75 = 978332499;
          v46 = 0xE400000000000000;
        }

        v76 = v46;
        v73 = v45;
        v74 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v47 = sub_1B0E44B88();
        MEMORY[0x1B2726E80](v47);

        v48 = v75;
        v49 = v76;
        v77 = v41;
        v51 = *(v41 + 16);
        v50 = *(v41 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1B041D32C((v50 > 1), v51 + 1, 1);
          v41 = v77;
        }

        *(v41 + 16) = v51 + 1;
        v52 = v41 + 16 * v51;
        *(v52 + 32) = v48;
        *(v52 + 40) = v49;
        v42 += 12;
        --v40;
      }

      while (v40);
      v27 = v43;
      v25 = v71;
      v53 = v72;
      v38 = v68;
    }

    else
    {
      v53 = v72;
    }

    v75 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v54 = sub_1B0E448E8();
    v56 = v55;

    sub_1B0AEAEC4(v25, type metadata accessor for FindMissingMessages);
    v57 = sub_1B0399D64(v54, v56, &v78);

    v58 = v70;
    *(v70 + 63) = v57;
    *(v58 + 71) = 2048;
    v59 = &v67[*(v38 + 52)];
    if (v59[8])
    {
      v60 = 0;
    }

    else
    {
      v60 = *v59;
    }

    sub_1B0AEAEC4(v67, type metadata accessor for FindMissingMessages);
    *(v58 + 73) = v60;
    *(v58 + 81) = 1024;
    v61 = v53 + *(v38 + 72);
    if (*(v61 + 24))
    {
      v62 = *(v61 + 12);
    }

    else
    {
      v62 = 0;
    }

    sub_1B0AEAEC4(v53, type metadata accessor for FindMissingMessages);
    *(v58 + 83) = v62;
    _os_log_impl(&dword_1B0389000, v27, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window-update %{public}s, ranges %{public}s, UID limit: %ld, grow: %u", v58, 0x57u);
    v63 = v65;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v63, -1, -1);
    MEMORY[0x1B272C230](v58, -1, -1);
  }

  else
  {
    sub_1B0AEAEC4(v26, type metadata accessor for FindMissingMessages);
    sub_1B0AEAEC4(v9, type metadata accessor for FindMissingMessages);
    sub_1B0AEAEC4(v15, type metadata accessor for MailboxTaskLogger);

    sub_1B0AEAEC4(v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0AEAEC4(v25, type metadata accessor for FindMissingMessages);
  }
}

uint64_t sub_1B0AE3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v98 = a4;
  v89 = a1;
  v90 = a2;
  v96 = a5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v88 = *(v101 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v86 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v86 - v17;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v87 = *(Missing - 8);
  v18 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v94 = &v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4268, &qword_1B0EC47E8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = (&v86 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v86 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v86 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v86 - v42;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v44 = (v6 + MissingMessages[18]);
  v45 = v44[3];
  if (v45)
  {
    sub_1B0AEF704(v89, a3, *v44, v44[1] & 0xFFFFFFFF00000101, v44[2] | ((HIDWORD(v44[2]) & 1) << 32), v45, v33);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      sub_1B03C60A4(v33, v43, &qword_1EB6E4270, &qword_1B0EC47F0);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
      v47 = *(v46 + 48);
      sub_1B03B5C80(v43, v40, &qword_1EB6E4270, &qword_1B0EC47F0);
      v48 = v40[8];
      v49 = *(v34 + 48);
      v50 = v96;
      *v96 = *v40;
      *(v50 + 8) = v48;
      swift_storeEnumTagMultiPayload();
      v51 = v43;
      v52 = v86;
      sub_1B03C60A4(v51, v86, &qword_1EB6E4270, &qword_1B0EC47F0);
      sub_1B0AEF094(v52 + *(v34 + 48), v50 + v47, type metadata accessor for ClientCommand);
      (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
      return sub_1B0AEAEC4(&v40[v49], type metadata accessor for ClientCommand);
    }
  }

  else
  {
    (*(v35 + 56))(v33, 1, 1, v34);
  }

  v90 = v6;
  sub_1B0398EFC(v33, &qword_1EB6E4268, &qword_1B0EC47E8);
  v54 = sub_1B0AED594(a3);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = *(v87 + 80);
    v89 = v54;
    v57 = v54 + ((v56 + 32) & ~v56);
    v58 = *(v87 + 72);
    v98 = (v88 + 16);
    do
    {
      sub_1B0AEAE5C(v57, v23, type metadata accessor for FindMissingMessages.CommandID);
      sub_1B0AEAE5C(v23, v20, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0AEAEC4(v23, type metadata accessor for FindMissingMessages.CommandID);
        v60 = v20;
      }

      else
      {
        v59 = v99;
        sub_1B03C60A4(v20, v99, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v98)(v100, v59, v101);
        sub_1B0E46ED8();
        sub_1B0398EFC(v59, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v60 = v23;
      }

      sub_1B0AEAEC4(v60, type metadata accessor for FindMissingMessages.CommandID);
      v57 += v58;
      --v55;
    }

    while (v55);
  }

  v61 = v96;
  v62 = v94;
  sub_1B03C60A4(v27, v94, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
  sub_1B0AF51AC(v62, v90 + v70, v66, v67 | (v68 << 40), v69 | (v65 << 32), v91);
  v72 = v92;
  v71 = v93;
  v73 = (*(v92 + 48))(v63, 1, v93);
  v74 = v95;
  if (v73 == 1)
  {
    sub_1B0398EFC(v62, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v63, &unk_1EB6E3670, &unk_1B0E9B260);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
    return (*(*(v75 - 8) + 56))(v61, 1, 1, v75);
  }

  else
  {
    sub_1B03C60A4(v63, v95, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v76 = swift_allocBox();
    v78 = v77;
    sub_1B03B5C80(v74, v77, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(v72 + 56))(v78, 0, 1, v71);
    v79 = v76 | 0xA000000000000000;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
    v81 = (v61 + *(v80 + 48));
    sub_1B03B5C80(v74, v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
    swift_storeEnumTagMultiPayload();
    if (*(v64 + MissingMessages[12] + 1) == 1)
    {
      sub_1B0398EFC(v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v62, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v81 = v79;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v82 = *(type metadata accessor for SearchReturnOption() - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v62, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v81 = v79;
      v81[1] = v85;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v80 - 8) + 56))(v61, 0, 1, v80);
  }
}

uint64_t sub_1B0AE3FD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v111 = a7;
  v114 = a5;
  v115 = a3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v11 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v13 = v92 - v12;
  v14 = type metadata accessor for TaskHistory.Running(0);
  v103 = *(v14 - 8);
  v104 = v14;
  v15 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v102 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v107 = v92 - v21;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v105 = *(Missing - 8);
  v106 = Missing;
  v23 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v101 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v100 = v92 - v26;
  v27 = type metadata accessor for UntaggedResponse(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v92 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v109 = v92 - v38;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v39 = *(MissingMessages + 72);
  v110 = v7;
  if (*(v7 + v39 + 24))
  {
    sub_1B0AF0444(a1, a2, v115, a4, v114);
  }

  result = sub_1B0AECE68(2, a2, v115, a4, sub_1B0AEC7F4);
  if ((result & 1) == 0)
  {
    return result;
  }

  v115 = a2;
  v111 = a4;
  v41 = v110;
  v42 = (v110 + *(MissingMessages + 48));
  v43 = *v42;
  if (v42[1])
  {
    v44 = 256;
  }

  else
  {
    v44 = 0;
  }

  sub_1B0B7EA7C(v44 | v43, v34);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v45 = &qword_1EB6E3920;
    v46 = &qword_1B0E9B070;
    v47 = v34;
    return sub_1B0398EFC(v47, v45, v46);
  }

  v48 = v109;
  sub_1B03C60A4(v34, v109, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAE5C(a1, v30, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0AEAEC4(v30, type metadata accessor for UntaggedResponse);
    v60 = MissingMessages;
    goto LABEL_14;
  }

  v49 = *v30;
  v50 = *(v30 + 2);
  v51 = *(v30 + 3);
  v52 = v30[32];
  v53 = *(v30 + 5);
  v54 = *(v30 + 1);
  v97 = v53;
  v96 = v49;
  if (!v54 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v55 = Tag.init(_:)(v49, v54), (v56 & 1) != 0))
  {
    v57 = v106;
    v58 = v107;
    v59 = v105;
LABEL_45:
    sub_1B0AEF11C(v96, v54);

    (*(v59 + 56))(v58, 1, 1, v57);
    goto LABEL_46;
  }

  v73 = v55;
  v95 = v54;
  v92[3] = v52;
  v93 = v51;
  v94 = v50;
  v74 = *(v115 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v113;
  if (!v74)
  {
LABEL_44:

    v48 = v109;
    v57 = v106;
    v58 = v107;
    v59 = v105;
    v54 = v95;
    goto LABEL_45;
  }

  v99 = v73;
  v98 = HIDWORD(v73);
  v76 = v115 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v77 = *(v103 + 72);
  while (1)
  {
    sub_1B0AEAE5C(v76, v75, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AEAEC4(v75, type metadata accessor for TaskHistory.Running);
LABEL_30:
    v76 += v77;
    if (!--v74)
    {
      goto LABEL_44;
    }
  }

  v78 = *v75;
  v79 = *(v113 + 1);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AEAEC4(&v113[*(v80 + 64)], type metadata accessor for ClientCommand);
  v81 = v78 == v99 && v79 == v98;
  v75 = v113;
  if (!v81)
  {
    goto LABEL_30;
  }

  v82 = v102;
  sub_1B0AEAE5C(v76, v102, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_51:
    result = sub_1B0AEAEC4(v82, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v83 = *v82;
  v85 = *(v82 + 1);
  v84 = *(v82 + 2);
  sub_1B0AEAEC4(&v82[*(v80 + 64)], type metadata accessor for ClientCommand);

  v81 = v83 == v99;
  v82 = v106;
  v58 = v107;
  v86 = v95;
  if (!v81)
  {
    __break(1u);
    goto LABEL_50;
  }

  v41 = v110;
  if (v85 != v98)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1B0AE2A30(v84, v111, v107);
  sub_1B0AEF11C(v96, v86);

  v87 = (*(v105 + 48))(v58, 1, v82);
  v48 = v109;
  v60 = MissingMessages;
  if (v87 == 1)
  {
LABEL_46:
    sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v45 = &qword_1EB6E4258;
    v46 = &qword_1B0EC49F0;
    v47 = v58;
    return sub_1B0398EFC(v47, v45, v46);
  }

  v88 = v58;
  v89 = v100;
  sub_1B0AEF094(v88, v100, type metadata accessor for FindMissingMessages.CommandID);
  v90 = v89;
  v91 = v101;
  sub_1B0AEF094(v90, v101, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return sub_1B0AEAEC4(v91, type metadata accessor for FindMissingMessages.CommandID);
  }

  sub_1B0AEAEC4(v91, type metadata accessor for FindMissingMessages.CommandID);
LABEL_14:
  sub_1B03B5C80(v48, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v61 = MessageIdentifierSet.startIndex.getter(v35);
  v63 = v62;
LABEL_16:
  while (v61 != MessageIdentifierSet.endIndex.getter(v35) || v63 != v65)
  {
    MessageIdentifierSet.subscript.getter(v63, v35, v118);
    v66 = v118[0];
    v61 = MessageIdentifierSet.index(_:offsetBy:)(v61, v63, 1);
    v63 = v67;
    v68 = *(v41 + *(v60 + 44));
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = (v68 + 36);
      while (v66 < *(v70 - 1) || *v70 < v66)
      {
        v70 += 3;
        if (!--v69)
        {
          goto LABEL_16;
        }
      }

      v116 = v66;
      v64 = v41 + *(v60 + 64);
      MessageIdentifierSet.insert(_:)(v117, &v116, v35);
    }
  }

  v72 = &v13[*(v108 + 36)];
  *v72 = v61;
  v72[1] = v63;
  sub_1B0398EFC(v13, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v45 = &unk_1EB6E1AF0;
  v46 = &unk_1B0E9AF40;
  v47 = v109;
  return sub_1B0398EFC(v47, v45, v46);
}

uint64_t sub_1B0AE4978(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v15 = *(*(Missing - 8) + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0A92068(a7, a2, a3, a4, a5);
  if (!v8)
  {
    sub_1B0AEAE5C(v21, v17, type metadata accessor for FindMissingMessages.CommandID);
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
      return sub_1B0AEAEC4(v17, type metadata accessor for FindMissingMessages.CommandID);
    }
  }

  return result;
}

uint64_t sub_1B0AE4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v21 = (v6 + *(MissingMessages + 72));
  v22 = v21[3];
  if (v22 && (v23 = sub_1B0AF1388(*(v6 + 64), *(v6 + 72), a1, a2, a3, a4, a6, *v21, v21[1] & 0xFFFFFFFF00000101, v21[2] | ((HIDWORD(v21[2]) & 1) << 32), v22), (~v24 & 0xF000000000000007) != 0))
  {
    v30 = v24;
    v31 = v23;
    if ((sub_1B0AEBA2C(0, 1, a1, a2, a4, sub_1B0A9EEE8) & 1) == 0)
    {
      return v31;
    }

    sub_1B0AEF160(v31, v30);
  }

  else if ((sub_1B0AED9C4(1, a1, a2, a4, sub_1B0AED7CC) & 1) == 0 && (sub_1B0A9EF00(0, 1, a2, a4) & 1) == 0)
  {
    v25 = v6 + *(MissingMessages + 44);
    v26 = *v25;
    v27 = *(v25 + 8) | (*(v25 + 12) << 32);
    v28 = *(v25 + 13);
    v29 = *(v25 + 16);
    LOBYTE(v25) = *(v25 + 20);
    v39 = v28;
    v38 = v25;
    sub_1B0AF58C8(v26, v15);
    if ((*(v37 + 48))(v15, 1, v16) != 1)
    {
      sub_1B03C60A4(v15, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v34 = *(v33 + 48);
      v35 = *(v6 + 72);
      *v36 = *(v6 + 64);
      v36[1] = v35;
      sub_1B03C60A4(v19, v36 + v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    sub_1B0398EFC(v15, &unk_1EB6E3670, &unk_1B0E9B260);
  }

  return 0;
}

void sub_1B0AE4E28(unint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if ((a2 & 1) == 0)
  {
    v9 = v2 + *(type metadata accessor for FindMissingMessages(0) + 72);
    v10 = *(v9 + 24);
    if (v10)
    {
      if ((a1 & 0x8000000000000000) == 0 && v10[2] > a1)
      {
        sub_1B03D06F8();
        sub_1B0E46EE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B0B8C950(v10);
        }

        if (v10[2] <= a1)
        {
          __break(1u);
        }

        else
        {
          v11 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
          v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1;
          sub_1B0AF2B0C(v8);
          sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v9 + 24) = v10;
        }
      }
    }
  }
}

uint64_t sub_1B0AE4FA8(const void *a1, uint64_t a2)
{
  v3 = v2;
  v113 = a1;
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v91[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v91[-v10];
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v107 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s15MissingMessagesO10NewMissingVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v108 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v19 = &v91[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91[-v21];
  v105 = &v91[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91[-v24];
  v106 = &v91[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v91[-v27];
  v29 = type metadata accessor for MessageBatches(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v33 = *(*(Missing - 8) + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v112 = &v91[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v97 = &v91[-v36];
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v92 = *(v3 + MissingMessages[14]);
  v93 = MissingMessages[9];
  v94 = v32;
  sub_1B0AEAE5C(v3 + v93, v32, type metadata accessor for MessageBatches);
  v38 = MissingMessages[16];
  v96 = v28;
  sub_1B03B5C80(v3 + v38, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + v38, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + MissingMessages[17], v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + MissingMessages[15], v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
  sub_1B0AEAE5C(v114, v107, type metadata accessor for MailboxTaskLogger);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v116[0]) = v28;
  v115 = v45;
  v51 = v44 | (v45 << 32);
  v52 = v108;
  sub_1B0AE579C(v106, v105, v104, v103, v102, v101, v25, v42, v108, v43 | (v28 << 40), v51, v100, *(&v100 + 1), v49, v48, v50);
  memcpy(v116, v113, sizeof(v116));
  v53 = LOBYTE(v116[3]);
  v54 = BYTE1(v116[3]);
  v55 = v116[4];
  v56 = LOBYTE(v116[5]);
  v58 = v116[6];
  v57 = v116[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59 = sub_1B0397D14();
  v60 = v59;
  if (v55 == 3 || v55 == 2)
  {

    v61 = 0;
    v62 = v109;
    goto LABEL_27;
  }

  v63 = sub_1B0BAE1A4(v59);
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
  sub_1B0397E04(&unk_1F2710548, v57);
  sub_1B0BAE1A4(v60);
  v65 = sub_1B039109C(v57);

  if (v65 & 1) == 0 && (v54)
  {
    sub_1B0BAE1A4(v60);
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
  v67 = sub_1B0B4A3E8();
  v69 = v68;
  sub_1B0398EFC(v62, &unk_1EB6E2780, &unk_1B0E9C5E0);
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
  v73 = sub_1B0B4A3E8();
  v75 = v74;
  result = sub_1B0398EFC(v72, &unk_1EB6E2780, &unk_1B0E9C5E0);
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
  sub_1B0AEAE5C(v52, v71 + *(Missing + 24), _s15MissingMessagesO10NewMissingVMa);
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
  v82 = sub_1B0B3EF14();
  *v80 = v82;
  *(v80 + 4) = BYTE4(v82) & 1;
  v83 = v98;
  v84 = v96;
  MessageIdentifierSet.ranges.getter(v98);
  v85 = sub_1B0B4A3E8();
  v87 = v86;
  sub_1B0398EFC(v83, &unk_1EB6E2780, &unk_1B0E9C5E0);
  sub_1B0AEAEC4(v52, _s15MissingMessagesO10NewMissingVMa);
  sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAEC4(v81, type metadata accessor for MessageBatches);
  v88 = HIDWORD(v85);
  if (v87)
  {
    LODWORD(v88) = 0;
  }

  v89 = v71 + v78[9];
  *v89 = v88;
  *(v89 + 4) = v87 & 1;
  v90 = v97;
  sub_1B0AEF094(v71, v97, type metadata accessor for FindMissingMessages.Completed);
  sub_1B0AEECD8(v113, *(v99 + 88), *(v99 + 96), *(v99 + v93), v90, v114);
  return sub_1B0AEAEC4(v90, type metadata accessor for FindMissingMessages.Completed);
}

uint64_t sub_1B0AE579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v143 = a6;
  v144 = a8;
  v142 = a7;
  LODWORD(v131) = a5;
  v134 = a4;
  v151 = a3;
  v152 = a1;
  v141 = a9;
  v149 = a13;
  v150 = a15;
  v147 = a16;
  v148 = a12;
  v139 = a11;
  v140 = a14;
  v138 = a10;
  v128 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v137 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v123 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v123 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v123 - v26;
  v133 = sub_1B0E439A8();
  v132 = *(v133 - 8);
  v27 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v123 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v123 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v135 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v123 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v123 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v123 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v123 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v123 - v53;
  v145 = a2;
  MessageIdentifierSet.union(_:)(a2, v51);
  MessageIdentifierSet.union(_:)(v151, v54);
  v55 = v150;
  v146 = v51;
  sub_1B0398EFC(v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v136 = v54;
  if (v55)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = v140;
    sub_1B0AF1F70(v148, v149 & 0xFFFFFFFF00000101, v56 | ((HIDWORD(v56) & 1) << 32), v55);

    sub_1B03C60A4(v42, v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.union(_:)(v45, v48);
    sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v134) = 0;
    v133 = 0;
    v57 = 1;
    v58 = v56;
  }

  else
  {
    v124 = v32;
    v59 = v132;
    v60 = v133;
    v125 = v48;
    v61 = v152;
    v62 = v134;
    if ((v131 & 1) != 0 || MessageIdentifierSet.count.getter() <= v62)
    {
      v88 = v61;
      v48 = v125;
      sub_1B03B5C80(v88, v125, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v133 = 0;
      LODWORD(v134) = 1;
      v57 = 1;
      v58 = v140;
    }

    else
    {
      v63 = v146;
      MessageIdentifierSet.suffix(_:)(v62, v37, v146);
      MessageIdentifierSet.intersection(_:)(v61, v125);
      sub_1B0398EFC(v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v64 = sub_1B0B4AAF0();
      if (v64 & 0x100000000) != 0 || (v65 = v64, MessageIdentifierSet.ranges.getter(v36), v66 = sub_1B0B4A3E8(), v68 = v67, sub_1B0398EFC(v36, &unk_1EB6E2780, &unk_1B0E9C5E0), (v68))
      {
        v69 = v59;
        v70 = *(v59 + 16);
        v71 = v29;
        v72 = v147;
        v73 = v60;
        v70(v29, v147, v60);
        v74 = v129;
        sub_1B0AEAE5C(v72, v129, type metadata accessor for MailboxTaskLogger);
        v75 = v130;
        sub_1B0AEAE5C(v72, v130, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v76 = sub_1B0E43988();
        v77 = sub_1B0E45908();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v157 = v127;
          *v78 = 68159491;
          *(v78 + 4) = 2;
          *(v78 + 8) = 256;
          v79 = v128;
          v80 = v75 + *(v128 + 20);
          *(v78 + 10) = *v80;
          *(v78 + 11) = 2082;
          v81 = *(v79 + 20);
          v131 = v71;
          v82 = v74 + v81;
          *(v78 + 13) = sub_1B0399D64(*(v74 + v81 + 8), *(v74 + v81 + 16), &v157);
          *(v78 + 21) = 1040;
          *(v78 + 23) = 2;
          *(v78 + 27) = 512;
          LOWORD(v80) = *(v80 + 24);
          sub_1B0AEAEC4(v75, type metadata accessor for MailboxTaskLogger);
          *(v78 + 29) = v80;
          *(v78 + 31) = 2160;
          *(v78 + 33) = 0x786F626C69616DLL;
          *(v78 + 41) = 2085;
          v83 = *(v82 + 32);
          LODWORD(v82) = *(v82 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v74, type metadata accessor for MailboxTaskLogger);
          v155 = v83;
          v156 = v82;
          v84 = sub_1B0E44BA8();
          v86 = sub_1B0399D64(v84, v85, &v157);

          *(v78 + 43) = v86;
          *(v78 + 51) = 2048;
          *(v78 + 53) = v134;
          _os_log_impl(&dword_1B0389000, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs.", v78, 0x3Du);
          v87 = v127;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v87, -1, -1);
          MEMORY[0x1B272C230](v78, -1, -1);

          (*(v132 + 8))(v131, v133);
        }

        else
        {
          sub_1B0AEAEC4(v75, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v74, type metadata accessor for MailboxTaskLogger);
          (*(v69 + 8))(v71, v73);
        }
      }

      else
      {
        v131 = v66;
        v95 = v59;
        v96 = *(v59 + 16);
        v97 = v124;
        v98 = v147;
        v99 = v60;
        v96(v124, v147, v60);
        v100 = v127;
        sub_1B0AEAE5C(v98, v127, type metadata accessor for MailboxTaskLogger);
        v101 = v126;
        sub_1B0AEAE5C(v98, v126, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v102 = sub_1B0E43988();
        v103 = sub_1B0E45908();
        if (os_log_type_enabled(v102, v103))
        {
          v129 = HIDWORD(v131);
          v104 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v157 = v131;
          *v104 = 68159747;
          LODWORD(v130) = v103;
          *(v104 + 4) = 2;
          *(v104 + 8) = 256;
          v105 = v128;
          v106 = v101 + *(v128 + 20);
          *(v104 + 10) = *v106;
          *(v104 + 11) = 2082;
          v107 = v100 + *(v105 + 20);
          *(v104 + 13) = sub_1B0399D64(*(v107 + 8), *(v107 + 16), &v157);
          *(v104 + 21) = 1040;
          *(v104 + 23) = 2;
          *(v104 + 27) = 512;
          LOWORD(v106) = *(v106 + 24);
          sub_1B0AEAEC4(v101, type metadata accessor for MailboxTaskLogger);
          *(v104 + 29) = v106;
          *(v104 + 31) = 2160;
          *(v104 + 33) = 0x786F626C69616DLL;
          *(v104 + 41) = 2085;
          v108 = *(v107 + 32);
          LODWORD(v107) = *(v107 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v100, type metadata accessor for MailboxTaskLogger);
          v155 = v108;
          v156 = v107;
          v109 = sub_1B0E44BA8();
          v111 = sub_1B0399D64(v109, v110, &v157);

          *(v104 + 43) = v111;
          *(v104 + 51) = 2048;
          *(v104 + 53) = v134;
          *(v104 + 61) = 2082;
          v153 = v129;
          v154 = v65;
          v112 = sub_1B041C1E8();
          static MessageIdentifier.... infix(_:_:)(&v154, &v153, &type metadata for UID, v112, &v155);
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v114 = MessageIdentifierRange.debugDescription.getter(v113);
          v116 = sub_1B0399D64(v114, v115, &v157);

          *(v104 + 63) = v116;
          _os_log_impl(&dword_1B0389000, v102, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs in range %{public}s.", v104, 0x47u);
          v117 = v131;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v117, -1, -1);
          MEMORY[0x1B272C230](v104, -1, -1);

          (*(v132 + 8))(v124, v133);
        }

        else
        {
          sub_1B0AEAEC4(v101, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v100, type metadata accessor for MailboxTaskLogger);
          (*(v95 + 8))(v97, v99);
        }
      }

      v58 = v140;
      v48 = v125;
      v118 = MessageIdentifierSet.startIndex.getter(v37);
      v120 = v119;
      if (v118 == MessageIdentifierSet.endIndex.getter(v37) && v120 == v121)
      {
        LODWORD(v134) = 0;
        v133 = 0;
        v57 = 1;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v120, v37, &v155);
        LODWORD(v134) = 0;
        v57 = 0;
        v133 = v155;
      }
    }
  }

  v89 = v146;
  sub_1B03B5C80(v48, v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v90 = v145;
  v91 = v135;
  sub_1B03B5C80(v145, v135, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v92 = v147;
  v93 = v137;
  sub_1B0AEAE5C(v147, v137, type metadata accessor for MailboxTaskLogger);
  LOBYTE(v155) = BYTE5(v138) & 1;
  LOBYTE(v157) = BYTE4(v139) & 1;
  v122 = v139 | ((BYTE4(v139) & 1) << 32);
  sub_1B0AE8914(v89, v133 | (v57 << 32), v134, v91, v143, v142 & 1, v144, v138 & 0xFFFFFFFFFFLL | (((v138 >> 40) & 1) << 40), v141, v122, SBYTE4(v122), v148, v149, v58, SBYTE4(v58), v150, v93);
  sub_1B0AEAEC4(v92, type metadata accessor for MailboxTaskLogger);
  sub_1B0398EFC(v151, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v152, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v136, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AE6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = a5;
  v141 = _s15MissingMessagesOMa(0);
  v8 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v125[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v125[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v125[-v14];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v143 = Missing;
  v17 = *(*(Missing - 8) + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v19 = &v125[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = type metadata accessor for MailboxTaskLogger(0);
  v20 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v131 = &v125[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v125[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v125[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v125[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v125[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v125[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v125[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v125[-v36];
  v38 = *(Missing + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v139 = v38;
  v39 = sub_1B0E46E98();
  v142 = a3;
  if ((v39 & 1) == 0)
  {
    sub_1B0AEAE5C(a4, v37, type metadata accessor for MailboxTaskLogger);
    sub_1B0AEAE5C(a4, v34, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AEAE5C(a3, v19, type metadata accessor for FindMissingMessages.Completed);
    v40 = sub_1B0E43988();
    v41 = sub_1B0E45908();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v146[0] = v129;
      *v42 = 68159491;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v138;
      v44 = *(v138 + 20);
      v128 = v41;
      v45 = &v34[v44];
      *(v42 + 10) = v34[v44];
      *(v42 + 11) = 2082;
      v46 = *(v43 + 20);
      v127 = v40;
      v47 = &v37[v46];
      *(v42 + 13) = sub_1B0399D64(*&v37[v46 + 8], *&v37[v46 + 16], v146);
      *(v42 + 21) = 1040;
      *(v42 + 23) = 2;
      *(v42 + 27) = 512;
      v130 = a4;
      v48 = a1;
      v49 = v15;
      v50 = *(v45 + 12);
      sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);
      *(v42 + 29) = v50;
      *(v42 + 31) = 2160;
      *(v42 + 33) = 0x786F626C69616DLL;
      *(v42 + 41) = 2085;
      v51 = *(v47 + 4);
      v52 = *(v47 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v37, type metadata accessor for MailboxTaskLogger);
      v144 = v51;
      v145 = v52;
      v15 = v49;
      a1 = v48;
      a4 = v130;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, v146);

      *(v42 + 43) = v55;
      *(v42 + 51) = 2048;
      v56 = v143[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v57 = MessageIdentifierSet.count.getter();
      sub_1B0AEAEC4(v19, type metadata accessor for FindMissingMessages.Completed);
      *(v42 + 53) = v57;
      v58 = v127;
      _os_log_impl(&dword_1B0389000, v127, v128, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld new UID(s).", v42, 0x3Du);
      v59 = v129;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v59, -1, -1);
      v60 = v42;
      a3 = v142;
      MEMORY[0x1B272C230](v60, -1, -1);
    }

    else
    {
      sub_1B0AEAEC4(v19, type metadata accessor for FindMissingMessages.Completed);
      sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);

      sub_1B0AEAEC4(v37, type metadata accessor for MailboxTaskLogger);
    }
  }

  v61 = type metadata accessor for MailboxSyncState();
  v62 = *(v61 + 68);
  sub_1B0AEAE5C(a1 + v62, v15, _s15MissingMessagesOMa);
  sub_1B0B494D4(&v139[a3]);
  sub_1B0AEAE5C(a1 + v62, v12, _s15MissingMessagesOMa);
  v63 = sub_1B03D3850(v12, v15);
  sub_1B0AEAEC4(v12, _s15MissingMessagesOMa);
  v64 = a4;
  sub_1B0AE7418(a4, a1 + v62);
  if ((*(a3 + 12) & 1) == 0)
  {
    v65 = *(a3 + 8);
    if (*(a1 + 12))
    {
      goto LABEL_10;
    }

    v66 = *(a1 + 8);
    v67 = v66 >= v65;
    if (v66 > v65)
    {
      v65 = *(a1 + 8);
    }

    if (!v67)
    {
LABEL_10:
      v128 = v63;
      v129 = v62;
      *(a1 + 8) = v65;
      *(a1 + 12) = 0;
      v68 = v137;
      sub_1B0AEAE5C(v64, v137, type metadata accessor for MailboxTaskLogger);
      v69 = v136;
      sub_1B0AEAE5C(v64, v136, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v70 = sub_1B0E43988();
      v71 = sub_1B0E45908();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v139 = v15;
        v127 = v73;
        v146[0] = v73;
        *v72 = 68159491;
        v130 = v61;
        *(v72 + 4) = 2;
        *(v72 + 8) = 256;
        v74 = v138;
        v75 = v68;
        v76 = &v69[*(v138 + 20)];
        *(v72 + 10) = *v76;
        *(v72 + 11) = 2082;
        v77 = *(v74 + 20);
        v126 = v71;
        v78 = v75 + v77;
        *(v72 + 13) = sub_1B0399D64(*(v75 + v77 + 8), *(v75 + v77 + 16), v146);
        *(v72 + 21) = 1040;
        *(v72 + 23) = 2;
        *(v72 + 27) = 512;
        LOWORD(v76) = *(v76 + 12);
        sub_1B0AEAEC4(v69, type metadata accessor for MailboxTaskLogger);
        *(v72 + 29) = v76;
        *(v72 + 31) = 2160;
        *(v72 + 33) = 0x786F626C69616DLL;
        *(v72 + 41) = 2085;
        v79 = *(v78 + 32);
        LODWORD(v78) = *(v78 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v75, type metadata accessor for MailboxTaskLogger);
        v144 = v79;
        v145 = v78;
        v80 = sub_1B0E44BA8();
        v82 = sub_1B0399D64(v80, v81, v146);
        v61 = v130;

        *(v72 + 43) = v82;
        *(v72 + 51) = 1024;
        *(v72 + 53) = v65;
        _os_log_impl(&dword_1B0389000, v70, v126, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating sync state next UID to %u.", v72, 0x39u);
        v83 = v127;
        swift_arrayDestroy();
        v15 = v139;
        MEMORY[0x1B272C230](v83, -1, -1);
        MEMORY[0x1B272C230](v72, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v69, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v68, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v142;
      v62 = v129;
      LOBYTE(v63) = v128;
    }
  }

  v84 = v143;
  if (*(a3 + v143[7]))
  {
    v85 = v64;
    if (*(a3 + v143[7]) == 1)
    {
      v86 = v64;
      v87 = v135;
      sub_1B0AEAE5C(v86, v135, type metadata accessor for MailboxTaskLogger);
      v88 = v134;
      sub_1B0AEAE5C(v85, v134, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v89 = sub_1B0E43988();
      v90 = sub_1B0E45908();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v146[0] = v137;
        *v91 = 68159235;
        v139 = v15;
        *(v91 + 4) = 2;
        *(v91 + 8) = 256;
        v92 = v138;
        v93 = *(v138 + 20);
        v130 = v61;
        v94 = &v88[v93];
        *(v91 + 10) = v88[v93];
        *(v91 + 11) = 2082;
        v95 = &v87[*(v92 + 20)];
        *(v91 + 13) = sub_1B0399D64(*(v95 + 1), *(v95 + 2), v146);
        *(v91 + 21) = 1040;
        *(v91 + 23) = 2;
        *(v91 + 27) = 512;
        LOWORD(v94) = *(v94 + 12);
        sub_1B0AEAEC4(v88, type metadata accessor for MailboxTaskLogger);
        *(v91 + 29) = v94;
        *(v91 + 31) = 2160;
        *(v91 + 33) = 0x786F626C69616DLL;
        *(v91 + 41) = 2085;
        v96 = *(v95 + 4);
        LODWORD(v95) = *(v95 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v87, type metadata accessor for MailboxTaskLogger);
        v144 = v96;
        v145 = v95;
        v97 = sub_1B0E44BA8();
        v99 = sub_1B0399D64(v97, v98, v146);
        v15 = v139;
        v84 = v143;

        *(v91 + 43) = v99;
        v61 = v130;
        _os_log_impl(&dword_1B0389000, v89, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run after initial run.", v91, 0x33u);
        v100 = v137;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v100, -1, -1);
        MEMORY[0x1B272C230](v91, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v88, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v87, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v142;
      sub_1B03BDE74(0xCu);
      sub_1B03BDD7C(&v144, 12);
    }

    else if ((v63 & 1) == 0)
    {
      v101 = (a3 + v143[8]);
      v102 = *v101;
      LOBYTE(v144) = *(v101 + 4);
      if (sub_1B0B4B0F4(v133, v102 | (v144 << 32)))
      {
        v103 = v132;
        sub_1B0AEAE5C(v64, v132, type metadata accessor for MailboxTaskLogger);
        v104 = v64;
        v105 = v131;
        sub_1B0AEAE5C(v104, v131, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v106 = sub_1B0E43988();
        v107 = sub_1B0E45908();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v146[0] = v137;
          *v108 = 68159235;
          v139 = v15;
          *(v108 + 4) = 2;
          *(v108 + 8) = 256;
          v109 = v138;
          v110 = *(v138 + 20);
          v130 = v61;
          v111 = &v105[v110];
          *(v108 + 10) = v105[v110];
          *(v108 + 11) = 2082;
          v112 = &v103[*(v109 + 20)];
          *(v108 + 13) = sub_1B0399D64(*(v112 + 1), *(v112 + 2), v146);
          *(v108 + 21) = 1040;
          *(v108 + 23) = 2;
          *(v108 + 27) = 512;
          LOWORD(v111) = *(v111 + 12);
          sub_1B0AEAEC4(v105, type metadata accessor for MailboxTaskLogger);
          *(v108 + 29) = v111;
          *(v108 + 31) = 2160;
          *(v108 + 33) = 0x786F626C69616DLL;
          *(v108 + 41) = 2085;
          v113 = *(v112 + 4);
          LODWORD(v112) = *(v112 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v103, type metadata accessor for MailboxTaskLogger);
          v144 = v113;
          v145 = v112;
          v114 = sub_1B0E44BA8();
          v116 = sub_1B0399D64(v114, v115, v146);
          v15 = v139;
          v84 = v143;

          *(v108 + 43) = v116;
          v61 = v130;
          _os_log_impl(&dword_1B0389000, v106, v107, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run.", v108, 0x33u);
          v117 = v137;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v117, -1, -1);
          MEMORY[0x1B272C230](v108, -1, -1);
        }

        else
        {
          sub_1B0AEAEC4(v105, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v103, type metadata accessor for MailboxTaskLogger);
        }

        sub_1B03BDE74(0xCu);
        sub_1B03BDD7C(&v144, 12);
        a3 = v142;
      }
    }
  }

  v118 = v140;
  sub_1B0AEAE5C(a1 + v62, v140, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B0AEAEC4(v118, _s15MissingMessagesOMa);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03BDE74(1u);
    sub_1B03BDD7C(&v144, 1);
  }

  v120 = (a3 + v84[9]);
  if ((v120[1] & 1) == 0)
  {
    v121 = *v120;
    v122 = *(v61 + 60);
    v123 = type metadata accessor for MessageBatches(0);
    if (!(*(*(v123 - 8) + 48))(a1 + v122, 1, v123))
    {
      LOBYTE(v144) = 0;
      sub_1B0B3EDEC(v121);
    }
  }

  return sub_1B0AEAEC4(v15, _s15MissingMessagesOMa);
}

uint64_t sub_1B0AE7418(uint64_t a1, uint64_t a2)
{
  v191 = a1;
  v180 = _s15MissingMessagesO8CompleteVMa(0);
  v3 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v184 = &v172 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v189 = &v172 - v8;
  v9 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v186 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v187 - 8) + 64);
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v172 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v179 = &v172 - v16;
  v185 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v19 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v172 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v172 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v172 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v176 = &v172 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v172 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v173 = &v172 - v36;
  v190 = _s15MissingMessagesO10IncompleteVMa(0);
  v37 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v183 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v172 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v175 = &v172 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v182 = &v172 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v172 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v172 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v172 - v52;
  v54 = _s15MissingMessagesOMa(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v172 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0AEAE5C(a2, v57, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B0AEF094(v57, v53, _s15MissingMessagesO10IncompleteVMa);
      v59 = &v53[*(v190 + 20)];
      if (v59[4])
      {
        v60 = v191;
        v61 = v176;
        sub_1B0AEAE5C(v191, v176, type metadata accessor for MailboxTaskLogger);
        sub_1B0AEAE5C(v60, v29, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v62 = v175;
        sub_1B0AEAE5C(v53, v175, _s15MissingMessagesO10IncompleteVMa);
        v63 = v181;
        sub_1B0AEAE5C(v53, v181, _s15MissingMessagesO10IncompleteVMa);
        v64 = v183;
        sub_1B0AEAE5C(v53, v183, _s15MissingMessagesO10IncompleteVMa);
        v65 = sub_1B0E43988();
        v66 = sub_1B0E45908();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v191 = v53;
          v68 = v67;
          v189 = swift_slowAlloc();
          v194[0] = v189;
          *v68 = 68160003;
          *(v68 + 4) = 2;
          *(v68 + 8) = 256;
          v69 = v185;
          v70 = &v29[*(v185 + 20)];
          *(v68 + 10) = *v70;
          *(v68 + 11) = 2082;
          v71 = v62;
          v72 = v61 + *(v69 + 20);
          *(v68 + 13) = sub_1B0399D64(*(v72 + 8), *(v72 + 16), v194);
          *(v68 + 21) = 1040;
          *(v68 + 23) = 2;
          *(v68 + 27) = 512;
          LOWORD(v70) = *(v70 + 12);
          sub_1B0AEAEC4(v29, type metadata accessor for MailboxTaskLogger);
          *(v68 + 29) = v70;
          *(v68 + 31) = 2160;
          *(v68 + 33) = 0x786F626C69616DLL;
          *(v68 + 41) = 2085;
          v73 = *(v72 + 32);
          LODWORD(v70) = *(v72 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v61, type metadata accessor for MailboxTaskLogger);
          v192 = v73;
          v193 = v70;
          v74 = sub_1B0E44BA8();
          v76 = sub_1B0399D64(v74, v75, v194);

          *(v68 + 43) = v76;
          *(v68 + 51) = 2048;
          v77 = v179;
          sub_1B03B5C80(v71, v179, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v78 = v187;
          v79 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v80 = _s15MissingMessagesO10IncompleteVMa;
          sub_1B0AEAEC4(v71, _s15MissingMessagesO10IncompleteVMa);
          *(v68 + 53) = v79;
          *(v68 + 61) = 2048;
          v81 = _s15MissingMessagesO8ProgressVMa(0);
          v82 = v181;
          v83 = v181 + *(v81 + 20);
          v84 = MessageIdentifierSet.count.getter();
          sub_1B0AEAEC4(v82, _s15MissingMessagesO10IncompleteVMa);
          *(v68 + 63) = v84;
          *(v68 + 71) = 2082;
          v85 = v183;
          v86 = v186;
          sub_1B0AEAE5C(v183 + *(v190 + 24), v186, _s15MissingMessagesO11QueriedUIDsVMa);
          v87 = v188;
          sub_1B03C60A4(v86, v188, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v88 = MessageIdentifierSet.debugDescription.getter(v78);
          v90 = v89;
          sub_1B0398EFC(v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0AEAEC4(v85, _s15MissingMessagesO10IncompleteVMa);
          v91 = sub_1B0399D64(v88, v90, v194);

          *(v68 + 73) = v91;
          _os_log_impl(&dword_1B0389000, v65, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: nil, queriedUIDs: %{public}s", v68, 0x51u);
          v92 = v189;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v92, -1, -1);
          MEMORY[0x1B272C230](v68, -1, -1);

          v93 = v191;
LABEL_19:
          v117 = v80;
          return sub_1B0AEAEC4(v93, v117);
        }

        sub_1B0AEAEC4(v63, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v62, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v29, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v64, _s15MissingMessagesO10IncompleteVMa);
        v170 = v61;
        goto LABEL_15;
      }

      LODWORD(v189) = *v59;
      v118 = v191;
      v119 = v173;
      sub_1B0AEAE5C(v191, v173, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v118, v34, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0AEAE5C(v53, v50, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0AEAE5C(v53, v47, _s15MissingMessagesO10IncompleteVMa);
      v120 = v182;
      sub_1B0AEAE5C(v53, v182, _s15MissingMessagesO10IncompleteVMa);
      v121 = sub_1B0E43988();
      v122 = sub_1B0E45908();
      if (!os_log_type_enabled(v121, v122))
      {
        sub_1B0AEAEC4(v47, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v50, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v120, _s15MissingMessagesO10IncompleteVMa);
        v170 = v119;
LABEL_15:
        sub_1B0AEAEC4(v170, type metadata accessor for MailboxTaskLogger);
        v93 = v53;
        v117 = _s15MissingMessagesO10IncompleteVMa;
        return sub_1B0AEAEC4(v93, v117);
      }

      v123 = v47;
      v124 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v194[0] = v184;
      *v124 = 68160259;
      LODWORD(v183) = v122;
      *(v124 + 4) = 2;
      *(v124 + 8) = 256;
      v125 = v185;
      v126 = &v34[*(v185 + 20)];
      *(v124 + 10) = *v126;
      *(v124 + 11) = 2082;
      v127 = v119;
      v128 = v119 + *(v125 + 20);
      *(v124 + 13) = sub_1B0399D64(*(v128 + 8), *(v128 + 16), v194);
      *(v124 + 21) = 1040;
      *(v124 + 23) = 2;
      *(v124 + 27) = 512;
      LOWORD(v126) = *(v126 + 12);
      sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);
      *(v124 + 29) = v126;
      *(v124 + 31) = 2160;
      *(v124 + 33) = 0x786F626C69616DLL;
      *(v124 + 41) = 2085;
      v129 = *(v128 + 32);
      LODWORD(v128) = *(v128 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v127, type metadata accessor for MailboxTaskLogger);
      v192 = v129;
      v193 = v128;
      v130 = sub_1B0E44BA8();
      v132 = sub_1B0399D64(v130, v131, v194);

      *(v124 + 43) = v132;
      *(v124 + 51) = 2048;
      v133 = v179;
      sub_1B03B5C80(v50, v179, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v191 = v53;
      v134 = v187;
      v135 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v133, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v50, _s15MissingMessagesO10IncompleteVMa);
      *(v124 + 53) = v135;
      *(v124 + 61) = 2048;
      v136 = v123 + *(_s15MissingMessagesO8ProgressVMa(0) + 20);
      v137 = MessageIdentifierSet.count.getter();
      sub_1B0AEAEC4(v123, _s15MissingMessagesO10IncompleteVMa);
      *(v124 + 63) = v137;
      *(v124 + 71) = 1024;
      *(v124 + 73) = v189;
      *(v124 + 77) = 2082;
      v138 = v182;
      v139 = v186;
      sub_1B0AEAE5C(v182 + *(v190 + 24), v186, _s15MissingMessagesO11QueriedUIDsVMa);
      v140 = v188;
      sub_1B03C60A4(v139, v188, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v141 = MessageIdentifierSet.debugDescription.getter(v134);
      v143 = v142;
      sub_1B0398EFC(v140, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v138, _s15MissingMessagesO10IncompleteVMa);
      v144 = sub_1B0399D64(v141, v143, v194);

      *(v124 + 79) = v144;
      _os_log_impl(&dword_1B0389000, v121, v183, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: %u, queriedUIDs: %{public}s", v124, 0x57u);
      v145 = v184;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v145, -1, -1);
      MEMORY[0x1B272C230](v124, -1, -1);

      v93 = v191;
      v117 = _s15MissingMessagesO10IncompleteVMa;
      return sub_1B0AEAEC4(v93, v117);
    }

    v94 = v189;
    sub_1B0AEF094(v57, v189, _s15MissingMessagesO8CompleteVMa);
    if (*(v94 + 4))
    {
      v95 = v191;
      v96 = v177;
      sub_1B0AEAE5C(v191, v177, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v95, v19, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v97 = v178;
      sub_1B0AEAE5C(v94, v178, _s15MissingMessagesO8CompleteVMa);
      v98 = sub_1B0E43988();
      v99 = sub_1B0E45908();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v194[0] = v191;
        *v100 = 68159491;
        *(v100 + 4) = 2;
        *(v100 + 8) = 256;
        v101 = v185;
        v102 = &v19[*(v185 + 20)];
        *(v100 + 10) = *v102;
        *(v100 + 11) = 2082;
        v103 = v96 + *(v101 + 20);
        *(v100 + 13) = sub_1B0399D64(*(v103 + 8), *(v103 + 16), v194);
        *(v100 + 21) = 1040;
        *(v100 + 23) = 2;
        *(v100 + 27) = 512;
        LOWORD(v102) = *(v102 + 12);
        sub_1B0AEAEC4(v19, type metadata accessor for MailboxTaskLogger);
        *(v100 + 29) = v102;
        *(v100 + 31) = 2160;
        *(v100 + 33) = 0x786F626C69616DLL;
        *(v100 + 41) = 2085;
        v104 = *(v103 + 32);
        v105 = *(v103 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);
        v192 = v104;
        v193 = v105;
        v106 = sub_1B0E44BA8();
        v108 = sub_1B0399D64(v106, v107, v194);

        *(v100 + 43) = v108;
        *(v100 + 51) = 2082;
        v109 = v186;
        sub_1B0AEAE5C(v97 + *(v180 + 20), v186, _s15MissingMessagesO11QueriedUIDsVMa);
        v110 = v109;
        v111 = v188;
        sub_1B03C60A4(v110, v188, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v112 = MessageIdentifierSet.debugDescription.getter(v187);
        v114 = v113;
        sub_1B0398EFC(v111, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AEAEC4(v97, _s15MissingMessagesO8CompleteVMa);
        v115 = sub_1B0399D64(v112, v114, v194);

        *(v100 + 53) = v115;
        _os_log_impl(&dword_1B0389000, v98, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched-window upper bound: nil, queriedUIDs: %{public}s", v100, 0x3Du);
        v116 = v191;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v116, -1, -1);
        MEMORY[0x1B272C230](v100, -1, -1);

        v93 = v94;
        v117 = _s15MissingMessagesO8CompleteVMa;
        return sub_1B0AEAEC4(v93, v117);
      }

      sub_1B0AEAEC4(v19, type metadata accessor for MailboxTaskLogger);

      v80 = _s15MissingMessagesO8CompleteVMa;
      sub_1B0AEAEC4(v97, _s15MissingMessagesO8CompleteVMa);
      v171 = v96;
    }

    else
    {
      v146 = *v94;
      v147 = v191;
      v148 = v174;
      sub_1B0AEAE5C(v191, v174, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v147, v24, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v149 = v184;
      sub_1B0AEAE5C(v94, v184, _s15MissingMessagesO8CompleteVMa);
      v150 = sub_1B0E43988();
      v151 = sub_1B0E45908();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v194[0] = v153;
        *v152 = 68159747;
        *(v152 + 4) = 2;
        *(v152 + 8) = 256;
        v154 = v185;
        v155 = &v24[*(v185 + 20)];
        *(v152 + 10) = *v155;
        *(v152 + 11) = 2082;
        v156 = v148 + *(v154 + 20);
        *(v152 + 13) = sub_1B0399D64(*(v156 + 8), *(v156 + 16), v194);
        *(v152 + 21) = 1040;
        *(v152 + 23) = 2;
        *(v152 + 27) = 512;
        LOWORD(v155) = *(v155 + 12);
        sub_1B0AEAEC4(v24, type metadata accessor for MailboxTaskLogger);
        *(v152 + 29) = v155;
        *(v152 + 31) = 2160;
        *(v152 + 33) = 0x786F626C69616DLL;
        *(v152 + 41) = 2085;
        v157 = v148;
        v158 = *(v156 + 32);
        LODWORD(v156) = *(v156 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v157, type metadata accessor for MailboxTaskLogger);
        v192 = v158;
        v193 = v156;
        v159 = sub_1B0E44BA8();
        v161 = sub_1B0399D64(v159, v160, v194);

        *(v152 + 43) = v161;
        *(v152 + 51) = 1024;
        *(v152 + 53) = v146;
        *(v152 + 57) = 2082;
        v162 = v184;
        v163 = v186;
        sub_1B0AEAE5C(v184 + *(v180 + 20), v186, _s15MissingMessagesO11QueriedUIDsVMa);
        v164 = v163;
        v165 = v188;
        sub_1B03C60A4(v164, v188, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v166 = MessageIdentifierSet.debugDescription.getter(v187);
        v168 = v167;
        sub_1B0398EFC(v165, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AEAEC4(v162, _s15MissingMessagesO8CompleteVMa);
        v169 = sub_1B0399D64(v166, v168, v194);

        *(v152 + 59) = v169;
        _os_log_impl(&dword_1B0389000, v150, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched window upper bound: %u, queriedUIDs: %{public}s", v152, 0x43u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v153, -1, -1);
        MEMORY[0x1B272C230](v152, -1, -1);

        v93 = v189;
        v117 = _s15MissingMessagesO8CompleteVMa;
        return sub_1B0AEAEC4(v93, v117);
      }

      sub_1B0AEAEC4(v24, type metadata accessor for MailboxTaskLogger);

      v80 = _s15MissingMessagesO8CompleteVMa;
      sub_1B0AEAEC4(v149, _s15MissingMessagesO8CompleteVMa);
      v171 = v148;
    }

    sub_1B0AEAEC4(v171, type metadata accessor for MailboxTaskLogger);
    v93 = v94;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1B0AE8820()
{
  if (qword_1EB6DDA00 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AE8894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0AE4AE0(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  a7[2] = v10;
  return result;
}

uint64_t sub_1B0AE8914@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  v281 = a8;
  v278 = a7;
  v290 = a6;
  v276 = a5;
  v264 = a3;
  v277 = a2;
  v279 = a9;
  v293 = a17;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4250, &unk_1B0EC47D0);
  v19 = *(*(v267 - 8) + 64);
  MEMORY[0x1EEE9AC00](v267);
  v268 = &v250 - v20;
  v21 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v273 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v274 = &v250 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v288 = &v250 - v27;
  v271 = type metadata accessor for MailboxTaskLogger(0);
  v28 = *(*(v271 - 8) + 64);
  MEMORY[0x1EEE9AC00](v271);
  v270 = &v250 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v284 = &v250 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v254 = &v250 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v256 = &v250 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v253 = &v250 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v255 = &v250 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v265 = (&v250 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v282 = &v250 - v43;
  v292 = sub_1B0E439A8();
  v294 = *(v292 - 8);
  v44 = v294[8];
  MEMORY[0x1EEE9AC00](v292);
  v272 = &v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v263 = &v250 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v259 = &v250 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v283 = &v250 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v275 = &v250 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v280 = &v250 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v257 = &v250 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v250 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v269 = &v250 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v266 = &v250 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v285 = &v250 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v261 = &v250 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v252 = &v250 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v251 = &v250 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v258 = &v250 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v262 = &v250 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v260 = &v250 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v250 = &v250 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v250 - v84;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v250 - v87;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v250 - v90;
  MessageIdentifierSet.subtracting(_:)(a4, &v250 - v90);
  MessageIdentifierSet.ranges.getter(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v92 = sub_1B0E46E18();
  v93 = sub_1B0E46E28();
  sub_1B0398EFC(v61, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v94 = v92 == v93;
  v95 = v293;
  v289 = a1;
  v286 = a4;
  v287 = v91;
  v291 = v62;
  if (!v94)
  {
    v116 = v292;
    MessageIdentifierSet.ranges.getter(v61);
    v117 = sub_1B0E46E18();
    v118 = sub_1B0E46E28();
    v119 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v117 < v119 || result < v117)
    {
      __break(1u);
    }

    else
    {
      v121 = sub_1B0E46E18();
      v122 = sub_1B0E46E28();
      result = sub_1B0398EFC(v61, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v118 >= v121 && v122 >= v118)
      {
        if (!__OFSUB__(v118, v117))
        {
          v123 = v294[2];
          if (v118 - v117 > 19)
          {
            v155 = v293;
            v156 = v116;
            v123(v263, v293, v116);
            v157 = v256;
            sub_1B0AEAE5C(v155, v256, type metadata accessor for MailboxTaskLogger);
            v158 = v254;
            sub_1B0AEAE5C(v155, v254, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v159 = v251;
            sub_1B03B5C80(v91, v251, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v111 = v286;
            v160 = v252;
            sub_1B03B5C80(v286, v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03B5C80(v289, v261, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v161 = sub_1B0E43988();
            v162 = sub_1B0E45908();
            v163 = os_log_type_enabled(v161, v162);
            v164 = v276;
            if (v163)
            {
              v165 = swift_slowAlloc();
              v283 = swift_slowAlloc();
              v297 = v283;
              *v165 = 68160003;
              LODWORD(v282) = v162;
              *(v165 + 4) = 2;
              *(v165 + 8) = 256;
              v166 = v271;
              v167 = v158 + *(v271 + 20);
              *(v165 + 10) = *v167;
              *(v165 + 11) = 2082;
              v168 = *(v166 + 20);
              v265 = v161;
              v169 = v158;
              v170 = v157 + v168;
              *(v165 + 13) = sub_1B0399D64(*(v157 + v168 + 8), *(v157 + v168 + 16), &v297);
              *(v165 + 21) = 1040;
              *(v165 + 23) = 2;
              *(v165 + 27) = 512;
              LOWORD(v167) = *(v167 + 24);
              sub_1B0AEAEC4(v169, type metadata accessor for MailboxTaskLogger);
              *(v165 + 29) = v167;
              *(v165 + 31) = 2160;
              *(v165 + 33) = 0x786F626C69616DLL;
              *(v165 + 41) = 2085;
              v171 = *(v170 + 32);
              LODWORD(v170) = *(v170 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AEAEC4(v157, type metadata accessor for MailboxTaskLogger);
              v295 = v171;
              v296 = v170;
              v172 = sub_1B0E44BA8();
              v174 = sub_1B0399D64(v172, v173, &v297);

              *(v165 + 43) = v174;
              *(v165 + 51) = 2048;
              v175 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v165 + 53) = v175;
              *(v165 + 61) = 2048;
              v176 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v160, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v165 + 63) = v176;
              *(v165 + 71) = 2048;
              v177 = v261;
              v178 = MessageIdentifierSet.count.getter();
              v111 = v286;
              sub_1B0398EFC(v177, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v165 + 73) = v178;
              v179 = v265;
              _os_log_impl(&dword_1B0389000, v265, v282, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs missing locally. (%ld locally, %ld on server)", v165, 0x51u);
              v180 = v283;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v180, -1, -1);
              MEMORY[0x1B272C230](v165, -1, -1);

              v265 = v294[1];
              (v265)(v263, v156);
            }

            else
            {
              sub_1B0398EFC(v261, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v160, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AEAEC4(v158, type metadata accessor for MailboxTaskLogger);

              v265 = v294[1];
              (v265)(v263, v156);
              sub_1B0AEAEC4(v157, type metadata accessor for MailboxTaskLogger);
            }

            v181 = v281;
            goto LABEL_22;
          }

          v124 = v259;
          v125 = v293;
          v126 = v116;
          v123(v259, v293, v116);
          v127 = v255;
          sub_1B0AEAE5C(v125, v255, type metadata accessor for MailboxTaskLogger);
          v128 = v253;
          sub_1B0AEAE5C(v125, v253, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v129 = v250;
          sub_1B03B5C80(v91, v250, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B03B5C80(v91, v260, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v111 = v286;
          sub_1B03B5C80(v286, v262, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v130 = v258;
          sub_1B03B5C80(v289, v258, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v131 = sub_1B0E43988();
          v132 = sub_1B0E45908();
          v283 = v131;
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            v282 = swift_slowAlloc();
            v297 = v282;
            *v133 = 68160259;
            *(v133 + 4) = 2;
            *(v133 + 8) = 256;
            v134 = v271;
            v135 = *(v271 + 20);
            LODWORD(v265) = v132;
            v136 = v128 + v135;
            *(v133 + 10) = *(v128 + v135);
            *(v133 + 11) = 2082;
            v137 = v127 + *(v134 + 20);
            *(v133 + 13) = sub_1B0399D64(*(v137 + 8), *(v137 + 16), &v297);
            *(v133 + 21) = 1040;
            *(v133 + 23) = 2;
            *(v133 + 27) = 512;
            LOWORD(v136) = *(v136 + 24);
            sub_1B0AEAEC4(v128, type metadata accessor for MailboxTaskLogger);
            *(v133 + 29) = v136;
            *(v133 + 31) = 2160;
            *(v133 + 33) = 0x786F626C69616DLL;
            *(v133 + 41) = 2085;
            v138 = *(v137 + 32);
            LODWORD(v137) = *(v137 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AEAEC4(v127, type metadata accessor for MailboxTaskLogger);
            v295 = v138;
            v296 = v137;
            v139 = sub_1B0E44BA8();
            v141 = sub_1B0399D64(v139, v140, &v297);

            *(v133 + 43) = v141;
            *(v133 + 51) = 2048;
            v142 = v291;
            v143 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v129, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v133 + 53) = v143;
            *(v133 + 61) = 2082;
            v144 = v260;
            v145 = MessageIdentifierSet.debugDescription.getter(v142);
            v147 = v146;
            sub_1B0398EFC(v144, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v148 = sub_1B0399D64(v145, v147, &v297);
            v126 = v292;

            *(v133 + 63) = v148;
            *(v133 + 71) = 2048;
            v149 = v262;
            v150 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v149, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v133 + 73) = v150;
            *(v133 + 81) = 2048;
            v151 = v258;
            v152 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v151, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v133 + 83) = v152;
            v153 = v283;
            _os_log_impl(&dword_1B0389000, v283, v265, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs %{public}s to be missing locally. (%ld locally, %ld on server)", v133, 0x5Bu);
            v154 = v282;
            swift_arrayDestroy();
            v111 = v286;
            MEMORY[0x1B272C230](v154, -1, -1);
            MEMORY[0x1B272C230](v133, -1, -1);

            v113 = v294[1];
            v114 = v259;
          }

          else
          {
            sub_1B0398EFC(v130, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v262, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v129, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AEAEC4(v128, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v260, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AEAEC4(v127, type metadata accessor for MailboxTaskLogger);
            v113 = v294[1];
            v114 = v124;
          }

          v115 = v126;
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

  (v294[2])(v283, v293, v292);
  sub_1B0AEAE5C(v95, v282, type metadata accessor for MailboxTaskLogger);
  v96 = v265;
  sub_1B0AEAE5C(v95, v265, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(a4, v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(a1, v85, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v97 = sub_1B0E43988();
  v98 = sub_1B0E45908();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v297 = v263;
    *v99 = 68159747;
    *(v99 + 4) = 2;
    *(v99 + 8) = 256;
    v100 = v271;
    v101 = v96 + *(v271 + 20);
    *(v99 + 10) = *v101;
    *(v99 + 11) = 2082;
    v102 = v282;
    v103 = &v282[*(v100 + 20)];
    *(v99 + 13) = sub_1B0399D64(*(v103 + 1), *(v103 + 2), &v297);
    *(v99 + 21) = 1040;
    *(v99 + 23) = 2;
    *(v99 + 27) = 512;
    LOWORD(v101) = *(v101 + 12);
    sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);
    *(v99 + 29) = v101;
    *(v99 + 31) = 2160;
    *(v99 + 33) = 0x786F626C69616DLL;
    *(v99 + 41) = 2085;
    v104 = *(v103 + 4);
    v105 = *(v103 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AEAEC4(v102, type metadata accessor for MailboxTaskLogger);
    v295 = v104;
    v296 = v105;
    v106 = sub_1B0E44BA8();
    v108 = sub_1B0399D64(v106, v107, &v297);

    *(v99 + 43) = v108;
    *(v99 + 51) = 2048;
    v109 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v99 + 53) = v109;
    *(v99 + 61) = 2048;
    v110 = MessageIdentifierSet.count.getter();
    v111 = v286;
    sub_1B0398EFC(v85, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v99 + 63) = v110;
    _os_log_impl(&dword_1B0389000, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found no UIDs to be missing locally. (%ld locally, %ld on server)", v99, 0x47u);
    v112 = v263;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v112, -1, -1);
    MEMORY[0x1B272C230](v99, -1, -1);

    v113 = v294[1];
    v114 = v283;
    v115 = v292;
LABEL_18:
    v265 = v113;
    (v113)(v114, v115);
    goto LABEL_19;
  }

  v111 = a4;
  sub_1B0398EFC(v85, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);

  v265 = v294[1];
  (v265)(v283, v292);
  sub_1B0AEAEC4(v282, type metadata accessor for MailboxTaskLogger);
LABEL_19:
  v181 = v281;
  v164 = v276;
LABEL_22:
  v182 = v280;
  v276 = a16;
  if ((v181 & 0x10000000000) != 0)
  {
    LODWORD(v282) = 0;
    v283 = 1;
  }

  else
  {
    v283 = HIDWORD(v181) & 1;
    if (v264)
    {
      v183 = v257;
      MessageIdentifierSet.ranges.getter(v257);
      v184 = sub_1B0B4A3E8();
      v186 = v185;
      sub_1B0398EFC(v183, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v186)
      {
        if ((v181 & 0x100000000) != 0)
        {
          LODWORD(v187) = 0;
        }

        else
        {
          LODWORD(v187) = v181;
        }
      }

      else
      {
        v283 = 0;
        v187 = HIDWORD(v184);
        if (v181 <= HIDWORD(v184))
        {
          v188 = HIDWORD(v184);
        }

        else
        {
          v188 = v181;
        }

        if ((v181 & 0x100000000) == 0)
        {
          LODWORD(v187) = v188;
        }
      }

      LODWORD(v282) = v187;
    }

    else
    {
      LODWORD(v282) = v181;
    }
  }

  MessageIdentifierSet.ranges.getter(v182);
  v189 = sub_1B0B4A3E8();
  v191 = v190;
  sub_1B0398EFC(v182, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v192 = HIDWORD(v189);
  if (v191)
  {
    LODWORD(v192) = 0;
  }

  LODWORD(v280) = v192;
  v193 = HIDWORD(v164);
  if (v290)
  {
    LODWORD(v193) = 0;
  }

  LODWORD(v281) = v193;
  v194 = v275;
  v195 = v287;
  MessageIdentifierSet.ranges.getter(v275);
  v196 = sub_1B0B4A3E8();
  v197 = v111;
  v199 = v198;
  sub_1B0398EFC(v194, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v200 = HIDWORD(v196);
  LOBYTE(v295) = v199 & 1;
  if (v199)
  {
    v200 = 0;
  }

  LOBYTE(v295) = BYTE5(v181) & 1;
  LOBYTE(v297) = a11 & 1;
  v201 = v288;
  sub_1B0AF5C8C(v200 | ((v199 & 1) << 32), v277 | ((HIDWORD(v277) & 1) << 32), v278, a10 | ((a11 & 1) << 32), v288);

  v202 = v276;
  if (v276)
  {
    LODWORD(v278) = v191;
    v203 = v267;
    v204 = *(v267 + 48);
    LOBYTE(v295) = a15 & 1;
    v205 = v268;
    sub_1B0AF1F70(a12, a13 & 0xFFFFFFFF00000101, a14 | ((a15 & 1) << 32), v276);
    LOBYTE(v295) = a15 & 1;
    sub_1B0AF3D34(v202, v205 + v204);

    v206 = *(v203 + 48);
    v207 = v285;
    sub_1B03C60A4(v205, v285, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v208 = v274;
    sub_1B0AEF094(v205 + v206, v274, _s15MissingMessagesO11QueriedUIDsVMa);
    v209 = v293;
    v210 = v272;
    (v294[2])(v272, v293, v292);
    sub_1B0AEAE5C(v209, v284, type metadata accessor for MailboxTaskLogger);
    v211 = v270;
    v212 = v208;
    sub_1B0AEAE5C(v209, v270, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v213 = v266;
    sub_1B03B5C80(v207, v266, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v214 = v269;
    sub_1B03B5C80(v207, v269, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v215 = v273;
    sub_1B0AEAE5C(v212, v273, _s15MissingMessagesO11QueriedUIDsVMa);
    v216 = sub_1B0E43988();
    v217 = sub_1B0E45908();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v297 = v277;
      *v218 = 68160003;
      *(v218 + 4) = 2;
      *(v218 + 8) = 256;
      v219 = v271;
      v220 = v211;
      v221 = v211 + *(v271 + 20);
      *(v218 + 10) = *v221;
      *(v218 + 11) = 2082;
      v222 = v284;
      v223 = v284 + *(v219 + 20);
      *(v218 + 13) = sub_1B0399D64(*(v223 + 8), *(v223 + 16), &v297);
      *(v218 + 21) = 1040;
      *(v218 + 23) = 2;
      *(v218 + 27) = 512;
      LOWORD(v221) = *(v221 + 24);
      sub_1B0AEAEC4(v220, type metadata accessor for MailboxTaskLogger);
      *(v218 + 29) = v221;
      *(v218 + 31) = 2160;
      *(v218 + 33) = 0x786F626C69616DLL;
      *(v218 + 41) = 2085;
      v224 = *(v223 + 32);
      LODWORD(v223) = *(v223 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v222, type metadata accessor for MailboxTaskLogger);
      v295 = v224;
      v296 = v223;
      v225 = sub_1B0E44BA8();
      v227 = sub_1B0399D64(v225, v226, &v297);

      *(v218 + 43) = v227;
      *(v218 + 51) = 2048;
      v228 = v291;
      v229 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v213, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v218 + 53) = v229;
      *(v218 + 61) = 2082;
      v230 = MessageIdentifierSet.debugDescription.getter(v228);
      v232 = v231;
      sub_1B0398EFC(v214, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v233 = sub_1B0399D64(v230, v232, &v297);
      v234 = v274;

      *(v218 + 63) = v233;
      *(v218 + 71) = 2082;
      v235 = v273;
      v236 = MessageIdentifierSet.debugDescription.getter(v228);
      v238 = v237;
      sub_1B0AEAEC4(v235, _s15MissingMessagesO11QueriedUIDsVMa);
      v239 = sub_1B0399D64(v236, v238, &v297);

      *(v218 + 73) = v239;
      _os_log_impl(&dword_1B0389000, v216, v217, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld UIDs for temporarily growing window-of-interest: %{public}s (did query %{public}s).", v218, 0x51u);
      v240 = v277;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v240, -1, -1);
      MEMORY[0x1B272C230](v218, -1, -1);

      (v294[1])(v272, v292);
    }

    else
    {
      v234 = v212;
      sub_1B0398EFC(v213, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v211, type metadata accessor for MailboxTaskLogger);

      sub_1B0AEAEC4(v215, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B0398EFC(v214, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (v265)(v210, v292);
      sub_1B0AEAEC4(v284, type metadata accessor for MailboxTaskLogger);
    }

    v244 = v279;
    v245 = v285;
    v246 = v287;
    MessageIdentifierSet.union(_:)(v285, v279);
    v247 = _s15MissingMessagesO10NewMissingVMa(0);
    v248 = v288;
    MessageIdentifierSet.union(_:)(v234, v244 + *(v247 + 24));
    sub_1B0AEAEC4(v293, type metadata accessor for MailboxTaskLogger);
    sub_1B0398EFC(v286, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v289, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AEAEC4(v234, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_1B0398EFC(v245, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AEAEC4(v248, _s15MissingMessagesO11QueriedUIDsVMa);
    result = sub_1B0398EFC(v246, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v249 = v244 + *(v247 + 20);
    *v249 = v280;
    *(v249 + 4) = v278 & 1;
    *(v249 + 8) = v281;
    *(v249 + 12) = v290 & 1;
    *(v249 + 16) = v282;
    *(v249 + 20) = v283;
  }

  else
  {
    sub_1B0AEAEC4(v293, type metadata accessor for MailboxTaskLogger);
    sub_1B0398EFC(v197, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v289, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v241 = v279;
    sub_1B03C60A4(v195, v279, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v242 = _s15MissingMessagesO10NewMissingVMa(0);
    v243 = v241 + *(v242 + 20);
    *v243 = v280;
    *(v243 + 4) = v191 & 1;
    *(v243 + 8) = v281;
    *(v243 + 12) = v290 & 1;
    *(v243 + 16) = v282;
    *(v243 + 20) = v283;
    return sub_1B0AEF094(v201, v241 + *(v242 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
  }

  return result;
}

uint64_t sub_1B0AEA630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v9 = *(*(Missing - 8) + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4248, &unk_1B0EC47C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v26 - v17;
  v20 = &v26 + *(v19 + 56) - v17;
  sub_1B0AEAE5C(a1, &v26 - v17, type metadata accessor for FindMissingMessages.CommandID);
  sub_1B0AEAE5C(a2, v20, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0AEAE5C(v18, v14, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B03C60A4(v20, v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v24 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0AEAEC4(v18, type metadata accessor for FindMissingMessages.CommandID);
      return v24 & 1;
    }

    sub_1B0398EFC(v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
    goto LABEL_10;
  }

  sub_1B0AEAE5C(v18, v11, type metadata accessor for FindMissingMessages.CommandID);
  v21 = *v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_1B0398EFC(v18, &qword_1EB6E4248, &unk_1B0EC47C0);
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
    sub_1B0AEAEC4(v18, type metadata accessor for FindMissingMessages.CommandID);
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
  sub_1B0AEAEC4(v18, type metadata accessor for FindMissingMessages.CommandID);
LABEL_11:
  v24 = 0;
  return v24 & 1;
}

BOOL sub_1B0AEA960(uint64_t a1, uint64_t a2)
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
  if ((sub_1B0B4DB74(a1 + Missing[6], a2 + Missing[6]) & 1) == 0 || *(a1 + Missing[7]) != *(a2 + Missing[7]))
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

uint64_t sub_1B0AEAA80(int a1, uint64_t a2)
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

void sub_1B0AEAB08()
{
  sub_1B043CC04(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      sub_1B0AD434C(319, &qword_1EB6DCC80);
      if (v2 <= 0x3F)
      {
        sub_1B0AD434C(319, &qword_1EB6DACD0);
        if (v3 <= 0x3F)
        {
          sub_1B043CC04(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v4 <= 0x3F)
          {
            sub_1B0AD434C(319, &qword_1EB6DDA08);
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

unint64_t sub_1B0AEACE0()
{
  result = qword_1EB6DD9F8;
  if (!qword_1EB6DD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9F8);
  }

  return result;
}

uint64_t sub_1B0AEAD9C(uint64_t a1)
{
  result = sub_1B0AEADF4(&qword_1EB6DD9C8, type metadata accessor for FindMissingMessages);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0AEADF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B0AEAE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AEAEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AEAF3C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 56;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 32 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        v10 = *v8;
        if (v10 != 1)
        {
          break;
        }

        if (v4)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v9;
        v8 += 32;
        if (v5 == v2)
        {
          goto LABEL_17;
        }
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_10:
      v11 = *(v8 - 6);
      v13 = *(v8 - 2);
      v12 = *(v8 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12;
      if ((result & 1) == 0)
      {
        result = sub_1B0B09FA4(0, *(v7 + 16) + 1, 1);
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B0B09FA4((v14 > 1), v15 + 1, 1);
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 32 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      *(v16 + 48) = v22;
      *(v16 + 56) = v10;
      if (v5 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v17 = *(v7 + 16);
  if (v17)
  {
    sub_1B0B09D44(0, v17, 0);
    v18 = *(v3 + 16);
    v19 = 32;
    do
    {
      v20 = *(v7 + v19);
      v21 = *(v3 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09D44((v21 > 1), v18 + 1, 1);
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + 4 * v18 + 32) = v20;
      v19 += 32;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0AEB130(int a1, uint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for DownloadTask.CommandID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
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
      sub_1B03B5C80(v19, v15, &qword_1EB6E4280, &qword_1B0EC4800);
      sub_1B0AEAE5C(&v15[*(v7 + 52)], v6, type metadata accessor for DownloadTask.CommandID);
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
          sub_1B0AEAEC4(v6, type metadata accessor for DownloadTask.CommandID);
          if (v20 == 3)
          {
LABEL_14:
            sub_1B03C60A4(v15, v39, &qword_1EB6E4280, &qword_1B0EC4800);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B0B0A064(0, *(v17 + 16) + 1, 1);
              v20 = v35;
              v17 = v41;
            }

            v24 = *(v17 + 16);
            v23 = *(v17 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_1B0B0A064(v23 > 1, v24 + 1, 1);
              v20 = v35;
              v17 = v41;
            }

            *(v17 + 16) = v24 + 1;
            sub_1B03C60A4(v39, v17 + v36 + v24 * v18, &qword_1EB6E4280, &qword_1B0EC4800);
            v7 = v37;
            goto LABEL_5;
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_1B0AEAEC4(v6, type metadata accessor for DownloadTask.CommandID);
        if (v20 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B0AEAEC4(v6, type metadata accessor for DownloadTask.CommandID);
        if (!v20)
        {
          goto LABEL_14;
        }
      }

      sub_1B0398EFC(v15, &qword_1EB6E4280, &qword_1B0EC4800);
LABEL_5:
      v19 += v18;
      --v16;
    }

    while (v16);
  }

  v25 = *(v17 + 16);
  if (v25)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v25, 0);
    v26 = v41;
    v27 = v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v28 = *(v34 + 72);
    do
    {
      v29 = v40;
      sub_1B03B5C80(v27, v40, &qword_1EB6E4280, &qword_1B0EC4800);
      v30 = *v29;
      sub_1B0398EFC(v29, &qword_1EB6E4280, &qword_1B0EC4800);
      v41 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B0B09D44((v31 > 1), v32 + 1, 1);
        v26 = v41;
      }

      *(v26 + 16) = v32 + 1;
      *(v26 + 4 * v32 + 32) = v30;
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v26;
}

uint64_t sub_1B0AEB5AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  result = sub_1B0A9EA9C(a1 | ((HIDWORD(a1) & 1) << 32), a4);
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
        sub_1B0AEAE5C(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v23, v20, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v20, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v20 + 2);
      sub_1B03E1BE8(*v20);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_1B0AEAE5C(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v32, v15, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v15, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v15);
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
          sub_1B0AEAE5C(v35, v50, type metadata accessor for TaskHistory.Running);
          v38 = v48;
          sub_1B0AEF094(v37, v48, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_1B03E1BE8(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v38, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEBA2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, double))
{
  v57 = a4;
  v48 = a3;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - v15;
  v16 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
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
        sub_1B0AEAE5C(v34, v28, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v28, v24, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v24, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v34 += v33;
        if (!--v35)
        {
          goto LABEL_3;
        }
      }

      v36 = *(v24 + 2);
      sub_1B03E1BE8(*v24);
      if (v36 != v59)
      {
        goto LABEL_8;
      }

      v37 = v49;
      while (1)
      {
        sub_1B0AEAE5C(v32, v37, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v37, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v19, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v19);
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
          sub_1B0AEAE5C(v40, v55, type metadata accessor for TaskHistory.Running);
          v43 = v53;
          sub_1B0AEF094(v42, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = *(v43 + 4);
            sub_1B03E1BE8(*(v43 + 8));
            if (v44 == v59)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v43, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v52 = a2;
  v43 = a1;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v41 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
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
        sub_1B0AEAE5C(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_1B03E1BE8(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_1B0AEAE5C(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v14, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v14);
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
          sub_1B0AEAE5C(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1B0AEF094(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_1B03E1BE8(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v38, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v44 = a3;
  v52 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v42 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  result = sub_1B0A9F194(a1, a2, a5);
  v48 = *(result + 16);
  if (v48)
  {
    v43 = v8;
    v26 = 0;
    v46 = result + 32;
    v49 = result;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v54 = v26;
      v27 = *(v53 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v55 = *(v46 + 4 * v54);
      v28 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v29 = *(v47 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_1B0AEAE5C(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = *(v21 + 2);
      sub_1B03E1BE8(*v21);
      if (v32 != v55)
      {
        goto LABEL_8;
      }

      v33 = v45;
      while (1)
      {
        sub_1B0AEAE5C(v28, v33, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v33, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v41 = 1;
          goto LABEL_24;
        }
      }

      v34 = *(v16 + 2);
      sub_1B03E1BE8(*v16);
      if (v34 != v55)
      {
        goto LABEL_13;
      }

      v35 = *(v44 + 16);
      if (v35)
      {
        v36 = v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v37 = *(v43 + 72);
        do
        {
          v38 = v50;
          sub_1B0AEAE5C(v36, v50, type metadata accessor for TaskHistory.Running);
          v39 = v51;
          sub_1B0AEF094(v38, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v40 = *(v39 + 4);
            sub_1B03E1BE8(*(v39 + 8));
            if (v40 == v55)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v39, type metadata accessor for TaskHistory.Running);
          }

          v36 += v37;
          --v35;
        }

        while (v35);
      }

LABEL_3:
      v26 = v54 + 1;
      result = v49;
    }

    while (v54 + 1 != v48);
  }

  v41 = 0;
LABEL_24:

  return v41;
}