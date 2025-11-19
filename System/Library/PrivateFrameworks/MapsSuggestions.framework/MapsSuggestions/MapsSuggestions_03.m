uint64_t MapsSuggestionsFakeStreamer.callBackBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1C513EDF0(v6);
}

uint64_t sub_1C5253370@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C514076C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C513B684(v4);
}

uint64_t sub_1C5253410(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C525883C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1C513B684(v3);
  return sub_1C513EDF0(v8);
}

char *MapsSuggestionsFakeStreamer.__allocating_init(lookAheadPeriod:pingInterval:notificationName:callBackBlock:simpleCallBack:tenSecondEvent:alreadyStartedEvent:doubleEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8, double a9, double a10)
{
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_simpleCallBack;
  v17[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_simpleCallBack] = 0;
  v20 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_tenSecondEvent;
  v17[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_tenSecondEvent] = 0;
  v21 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_alreadyStartedEvent;
  v17[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_alreadyStartedEvent] = 0;
  v22 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_doubleEvent;
  v17[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_doubleEvent] = 0;
  swift_beginAccess();
  *v18 = a3;
  v18[1] = a4;
  v17[v19] = a5;
  v17[v20] = a6;
  v17[v21] = a7;
  v17[v22] = a8;
  return MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(a1, a2, 0xD00000000000001BLL, 0x80000001C52A9020, a9, a10);
}

char *MapsSuggestionsFakeStreamer.init(lookAheadPeriod:pingInterval:notificationName:callBackBlock:simpleCallBack:tenSecondEvent:alreadyStartedEvent:doubleEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8, double a9, double a10)
{
  v17 = (v10 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_simpleCallBack;
  *(v10 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_simpleCallBack) = 0;
  v19 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_tenSecondEvent;
  *(v10 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_tenSecondEvent) = 0;
  v20 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_alreadyStartedEvent;
  *(v10 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_alreadyStartedEvent) = 0;
  v21 = OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_doubleEvent;
  *(v10 + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_doubleEvent) = 0;
  swift_beginAccess();
  *v17 = a3;
  v17[1] = a4;
  *(v10 + v18) = a5;
  *(v10 + v19) = a6;
  *(v10 + v20) = a7;
  *(v10 + v21) = a8;
  return MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(a1, a2, 0xD00000000000001BLL, 0x80000001C52A9020, a9, a10);
}

Swift::Void __swiftcall MapsSuggestionsFakeStreamer.scanForStreamableEvents()()
{
  v1 = v0;
  v2 = sub_1C529D65C();
  v3 = *(v2 - 8);
  v94 = v2;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v93 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C529D66C();
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C529D69C();
  v99 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1C529D6BC();
  v98 = *(v101 - 8);
  v9 = MEMORY[0x1EEE9AC00](v101);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - v12;
  v14 = sub_1C529D3AC();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v69 - v22;
  if (v1[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_simpleCallBack] == 1)
  {
    v24 = &v1[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock];
    swift_beginAccess();
    v25 = *v24;
    if (*v24)
    {

      v25(v26);
      sub_1C513EDF0(v25);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v1[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_tenSecondEvent] == 1)
  {
    v27 = v21;
    sub_1C529D39C();
    sub_1C529D34C();
LABEL_8:
    sub_1C529D34C();
    sub_1C5251364(v20, v17);
    v28 = *(v27 + 8);
    v28(v17, v14);
    v28(v20, v14);
    v28(v23, v14);
    return;
  }

  if (v1[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_alreadyStartedEvent] == 1)
  {
    v27 = v21;
    sub_1C529D39C();
    sub_1C529D35C();
    goto LABEL_8;
  }

  if (v1[OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_doubleEvent] == 1)
  {
    v29 = v21;
    sub_1C529D39C();
    v84 = sub_1C5143DC8(0, &qword_1EDC51AF0);
    v91 = v5;
    v80 = sub_1C529D8FC();
    v90 = v13;
    sub_1C529D6AC();
    v92 = v8;
    sub_1C529D67C();
    v30 = *(v29 + 16);
    v88 = v29 + 16;
    v89 = v30;
    v30(v20, v23, v14);
    v87 = *(v29 + 80);
    v76 = v29;
    v31 = (v87 + 24) & ~v87;
    v78 = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    v33 = *(v29 + 32);
    v85 = v29 + 32;
    v86 = v33;
    v33(v32 + v31, v20, v14);
    v106 = sub_1C52544DC;
    v107 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_1C5139244;
    v105 = &block_descriptor_29;
    v34 = _Block_copy(&aBlock);
    v75 = v1;

    aBlock = MEMORY[0x1E69E7CC0];
    v83 = sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
    v81 = sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
    v35 = v97;
    sub_1C529D9CC();
    v36 = v90;
    v37 = v92;
    v38 = v80;
    MEMORY[0x1C6943380](v90, v92, v35, v34);
    _Block_release(v34);

    v39 = *(v100 + 8);
    v100 += 8;
    v80 = v39;
    v39(v35, v91);
    v40 = *(v99 + 8);
    v99 += 8;
    v79 = v40;
    v40(v37, v96);
    v41 = v98 + 8;
    v77 = *(v98 + 8);
    v77(v36, v101);
    v98 = v41;
    v70 = sub_1C529D8FC();
    sub_1C529D6AC();
    v42 = v93;
    *v93 = 100;
    v74 = *MEMORY[0x1E69E7F38];
    v43 = v95;
    v44 = *(v95 + 104);
    v72 = v95 + 104;
    v73 = v44;
    v45 = v94;
    v44(v42);
    MEMORY[0x1C6943180](v11, v42);
    v46 = *(v43 + 8);
    v95 = v43 + 8;
    v71 = v46;
    v46(v42, v45);
    v77(v11, v101);
    sub_1C529D67C();
    v89(v20, v23, v14);
    v47 = v78;
    v48 = swift_allocObject();
    v49 = v75;
    *(v48 + 16) = v75;
    v86(v48 + v47, v20, v14);
    v106 = sub_1C5254510;
    v107 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_1C5139244;
    v105 = &block_descriptor_35;
    v50 = _Block_copy(&aBlock);
    v75 = v49;

    aBlock = MEMORY[0x1E69E7CC0];
    v51 = v97;
    v52 = v91;
    sub_1C529D9CC();
    v53 = v92;
    v54 = v70;
    MEMORY[0x1C6943380](v90, v92, v51, v50);
    _Block_release(v50);

    v80(v51, v52);
    v79(v53, v96);
    v55 = v77;
    v77(v90, v101);
    v84 = sub_1C529D8FC();
    sub_1C529D6AC();
    v56 = v93;
    v57 = v94;
    *v93 = 100;
    v73(v56, v74, v57);
    MEMORY[0x1C6943180](v11, v56);
    v71(v56, v57);
    v55(v11, v101);
    v58 = v55;
    v59 = v92;
    sub_1C529D67C();
    v89(v20, v23, v14);
    v60 = v78;
    v61 = swift_allocObject();
    v62 = v75;
    *(v61 + 16) = v75;
    v86(v61 + v60, v20, v14);
    v106 = sub_1C52547EC;
    v107 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_1C5139244;
    v105 = &block_descriptor_41;
    v63 = _Block_copy(&aBlock);
    v64 = v62;

    aBlock = MEMORY[0x1E69E7CC0];
    v65 = v97;
    v66 = v91;
    sub_1C529D9CC();
    v67 = v90;
    v68 = v84;
    MEMORY[0x1C6943380](v90, v59, v65, v63);
    _Block_release(v63);

    v80(v65, v66);
    v79(v59, v96);
    v58(v67, v101);
    (*(v76 + 8))(v23, v14);
  }
}

uint64_t sub_1C52545D4(double a1, double a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, double), void (*a6)(uint64_t, double))
{
  v11 = sub_1C529D3AC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  a5(a4, a1);
  a6(a4, a2);
  sub_1C5251364(v17, v15);
  v18 = *(v12 + 8);
  v18(v15, v11);
  return (v18)(v17, v11);
}

uint64_t objectdestroy_25Tm()
{
  v1 = sub_1C529D3AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id MapsSuggestionsFakeStreamer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *MapsSuggestionsWalletStreamer.init(resourceDepot:notificationName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet) = 0;
  v7 = (v3 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__keyListenerBlock);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (v3 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitObserver);
  *v8 = 0u;
  v8[1] = 0u;
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitChangedCanKicker) = 0;
  GEOConfigGetDouble();
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;
  GEOConfigGetDouble();
  v14 = v13;
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__resourceDepot) = a1;
  aBlock = 0u;
  v44 = 0u;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1C5254EB8(&aBlock, v7);
  swift_endAccess();
  v15 = MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(a2, a3, 0xD00000000000001DLL, 0x80000001C52A9050, v10, v12);
  v16 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue;
  v17 = *&v15[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(MapsSuggestionsCanKicker);
  v20 = v15;
  v21 = v17;

  v22 = sub_1C529D71C();
  v45 = sub_1C5254F28;
  v46 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_1C5139244;
  *(&v44 + 1) = &block_descriptor_47;
  v23 = _Block_copy(&aBlock);
  v24 = [v19 initWithName:v22 time:v21 queue:v23 block:v14];

  _Block_release(v23);

  v25 = *&v20[OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitChangedCanKicker];
  *&v20[OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitChangedCanKicker] = v24;

  v26 = *&v15[v16];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = sub_1C5254F44;
  v46 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_1C5254F68;
  *(&v44 + 1) = &block_descriptor_51;
  v28 = _Block_copy(&aBlock);

  v29 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v28);

  sub_1C529D9BC();
  swift_unknownObjectRelease();
  v30 = OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__keyListenerBlock;
  swift_beginAccess();
  sub_1C5254EB8(&aBlock, &v20[v30]);
  swift_endAccess();
  v31 = *MEMORY[0x1E69BBBD8];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 defaultCenter];
  v35 = objc_opt_self();
  v36 = v33;
  v37 = [v35 sharedInstance];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = sub_1C5254FC8;
  v46 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_1C51286E8;
  *(&v44 + 1) = &block_descriptor_55;
  v39 = _Block_copy(&aBlock);

  v40 = [v34 addObserverForName:v36 object:v37 queue:0 usingBlock:v39];
  _Block_release(v39);

  *(&v44 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();

  *&aBlock = v40;
  v41 = OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitObserver;
  swift_beginAccess();
  sub_1C5254EB8(&aBlock, &v20[v41]);
  swift_endAccess();

  return v20;
}

uint64_t sub_1C5254EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5254F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1C525500C()
{
  v1 = sub_1C529D6CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1C529D6EC();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet;
  if (!*(v0 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet))
  {
    sub_1C5143DC8(0, &unk_1EDC51968);
    v8 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__resourceDepot);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();
    v10 = [objc_allocWithZone(ObjCClassFromMetadata) initFromResourceDepot_];
    swift_unknownObjectRelease();
    v11 = *(v0 + v7);
    *(v0 + v7) = v10;
  }

  if (qword_1EDC519A0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = sub_1C529D64C();
  __swift_project_value_buffer(v12, qword_1EDC51F78);
  v13 = sub_1C529D62C();
  v14 = sub_1C529D87C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5126000, v13, v14, "Setup Wallet.", v15, 2u);
    MEMORY[0x1C69445C0](v15, -1, -1);
  }
}

Swift::Void __swiftcall MapsSuggestionsWalletStreamer.scanForStreamableEvents()()
{
  v1 = sub_1C529D66C();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v37 = (v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1C529D69C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C529D3AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  if (GEOConfigGetBOOL())
  {
    v14 = MapsSuggestionsNow();
    v35 = v4;
    v15 = v14;
    sub_1C529D37C();

    v34 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v8 + 16);
    v32 = v7;
    v17(v11, v13, v7);
    v18 = *(v8 + 80);
    v33 = v3;
    v31 = v1;
    v19 = (v18 + 24) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v30[1] = v16;
    (*(v8 + 32))(v20 + v19, v11, v7);
    aBlock[4] = sub_1C525833C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5139244;
    aBlock[3] = &block_descriptor_62;
    v21 = _Block_copy(aBlock);

    v22 = v6;
    sub_1C529D68C();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
    v23 = v36;
    v24 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
    sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
    v25 = v31;
    sub_1C529D9CC();
    MEMORY[0x1C69433C0](0, v22, v24, v21);
    _Block_release(v21);
    (*(v23 + 8))(v24, v25);
    (*(v35 + 8))(v22, v33);
    (*(v8 + 8))(v13, v32);
  }

  else
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v26 = sub_1C529D64C();
    __swift_project_value_buffer(v26, qword_1EDC51F78);
    v37 = sub_1C529D62C();
    v27 = sub_1C529D87C();
    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5126000, v37, v27, "Returning early because the WalletStreamer is turned off", v28, 2u);
      MEMORY[0x1C69445C0](v28, -1, -1);
    }

    v29 = v37;
  }
}

void sub_1C5255820(uint64_t a1)
{
  v2 = sub_1C529D66C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C529D69C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C529D3AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v40 = v3;
    sub_1C525500C();
    v15 = *&v14[OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet];
    if (v15)
    {
      v37 = v5;
      v39 = v2;
      v16 = v15;
      v17 = dispatch_semaphore_create(0);
      v18 = v14;
      sub_1C529D30C();
      v19 = sub_1C529D31C();
      (*(v10 + 8))(v12, v9);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = a1;
      v48 = sub_1C52588FC;
      v49 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1C5143F90;
      v47 = &block_descriptor_183;
      v21 = _Block_copy(&aBlock);
      v22 = v17;

      v38 = v16;
      [v16 entriesFromPassesBefore:v19 handler:v21];
      _Block_release(v21);

      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v23 = sub_1C529D64C();
      __swift_project_value_buffer(v23, qword_1EDC51F78);
      v24 = sub_1C529D62C();
      v25 = sub_1C529D87C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v37;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C5126000, v24, v25, "Waiting to tear down Wallet.", v28, 2u);
        MEMORY[0x1C69445C0](v28, -1, -1);
      }

      sub_1C529D93C();
      v29 = *&v18[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];

      v48 = sub_1C5258928;
      v49 = a1;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1C5139244;
      v47 = &block_descriptor_186;
      v30 = _Block_copy(&aBlock);

      sub_1C529D68C();
      v43 = MEMORY[0x1E69E7CC0];
      sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
      sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
      v31 = v22;
      v32 = v39;
      sub_1C529D9CC();
      MEMORY[0x1C69433C0](0, v8, v27, v30);
      _Block_release(v30);

      (*(v40 + 8))(v27, v32);
      (*(v41 + 8))(v8, v42);
    }

    else
    {
      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v33 = sub_1C529D64C();
      __swift_project_value_buffer(v33, qword_1EDC51F78);
      v34 = sub_1C529D62C();
      v35 = sub_1C529D89C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1C5126000, v34, v35, "This SHOULD NOT happen. Just initialized _wallet. How can it be nil?", v36, 2u);
        MEMORY[0x1C69445C0](v36, -1, -1);
      }
    }
  }
}

void sub_1C5255E4C(uint64_t a1, void *a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C5256BC0(a2, a3);
  }
}

void sub_1C5255F00()
{
  sub_1C525843C(v0 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__keyListenerBlock);
  swift_unknownObjectRelease();
  sub_1C525843C(v0 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitObserver);
  v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitChangedCanKicker);
}

id MapsSuggestionsWalletStreamer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitChangedCanKicker];
  if (v2)
  {
    [v2 cancel];
  }

  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet, "Tore down Wallet.");
  v3 = OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__keyListenerBlock;
  swift_beginAccess();
  sub_1C52583CC(&v0[v3], &v8);
  if (v9)
  {
    sub_1C52584A4(&v8, &v10);
    __swift_project_boxed_opaque_existential_0(&v10, v11);
    sub_1C529DB4C();
    GEOConfigRemoveBlockListener();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {
    sub_1C525843C(&v8);
  }

  v4 = OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__passKitObserver;
  swift_beginAccess();
  sub_1C52583CC(&v0[v4], &v8);
  if (v9)
  {
    sub_1C52584A4(&v8, &v10);
    v5 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v10, v11);
    [v5 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {
    sub_1C525843C(&v8);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

char *MapsSuggestionsEventKitStreamer.init(resourceDepot:notificationName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit) = 0;
  v7 = (v3 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__keyListenerBlock);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (v3 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitObserver);
  *v8 = 0u;
  v8[1] = 0u;
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitChangedCanKicker) = 0;
  GEOConfigGetDouble();
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;
  GEOConfigGetDouble();
  v14 = v13;
  *(v3 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__resourceDepot) = a1;
  aBlock = 0u;
  v39 = 0u;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1C5254EB8(&aBlock, v7);
  swift_endAccess();
  v15 = MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(a2, a3, 0xD00000000000001FLL, 0x80000001C52A9070, v10, v12);
  v16 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue;
  v17 = *&v15[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(MapsSuggestionsCanKicker);
  v20 = v15;
  v21 = v17;

  v22 = sub_1C529D71C();
  v40 = sub_1C5258AA8;
  v41 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1C5139244;
  *(&v39 + 1) = &block_descriptor_68;
  v23 = _Block_copy(&aBlock);
  v24 = [v19 initWithName:v22 time:v21 queue:v23 block:v14];

  _Block_release(v23);

  v25 = *&v20[OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitChangedCanKicker];
  *&v20[OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitChangedCanKicker] = v24;

  v26 = *&v15[v16];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = sub_1C52584B4;
  v41 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1C5254F68;
  *(&v39 + 1) = &block_descriptor_72;
  v28 = _Block_copy(&aBlock);

  v29 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v28);

  sub_1C529D9BC();
  swift_unknownObjectRelease();
  v30 = OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__keyListenerBlock;
  swift_beginAccess();
  sub_1C5254EB8(&aBlock, &v20[v30]);
  swift_endAccess();
  v31 = [objc_opt_self() defaultCenter];
  v32 = *MEMORY[0x1E6966928];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v40 = sub_1C51287DC;
  v41 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1C51286E8;
  *(&v39 + 1) = &block_descriptor_76;
  v34 = _Block_copy(&aBlock);

  v35 = [v31 addObserverForName:v32 object:0 queue:0 usingBlock:v34];
  _Block_release(v34);

  *(&v39 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();
  *&aBlock = v35;
  v36 = OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitObserver;
  swift_beginAccess();
  sub_1C5254EB8(&aBlock, &v20[v36]);
  swift_endAccess();

  return v20;
}

void sub_1C5256758()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C5252854();
  }
}

void sub_1C52567AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_1EDC519A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C529D64C();
  __swift_project_value_buffer(v5, qword_1EDC51F78);
  v6 = sub_1C529D62C();
  v7 = sub_1C529D87C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5126000, v6, v7, a4, v8, 2u);
    MEMORY[0x1C69445C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1C5252854();
  }
}

uint64_t sub_1C52568DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C529D72C();
  v8 = v7;
  v9 = swift_unknownObjectRetain();
  return a5(v9, v6, v8);
}

void sub_1C5256940()
{
  v1 = sub_1C529D6CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1C529D6EC();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit;
  if (!*(v0 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit))
  {
    sub_1C5143DC8(0, &qword_1EDC51960);
    v8 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__resourceDepot);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();
    v10 = [objc_allocWithZone(ObjCClassFromMetadata) initFromResourceDepot_];
    swift_unknownObjectRelease();
    v11 = *(v0 + v7);
    *(v0 + v7) = v10;
  }

  if (qword_1EDC519A0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = sub_1C529D64C();
  __swift_project_value_buffer(v12, qword_1EDC51F78);
  v13 = sub_1C529D62C();
  v14 = sub_1C529D87C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5126000, v13, v14, "Setup EventKit.", v15, 2u);
    MEMORY[0x1C69445C0](v15, -1, -1);
  }
}

void sub_1C5256BC0(void *a1, const char *a2)
{
  v5 = sub_1C529D6CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1C529D6EC();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2 + *a1);
    *(v2 + *a1) = 0;

    if (qword_1EDC519A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_1C529D64C();
  __swift_project_value_buffer(v12, qword_1EDC51F78);
  v13 = sub_1C529D62C();
  v14 = sub_1C529D87C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5126000, v13, v14, a2, v15, 2u);
    MEMORY[0x1C69445C0](v15, -1, -1);
  }
}

Swift::Void __swiftcall MapsSuggestionsEventKitStreamer.scanForStreamableEvents()()
{
  v1 = sub_1C529D66C();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v37 = (v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1C529D69C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C529D3AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  if (GEOConfigGetBOOL())
  {
    v14 = MapsSuggestionsNow();
    v35 = v4;
    v15 = v14;
    sub_1C529D37C();

    v34 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v8 + 16);
    v32 = v7;
    v17(v11, v13, v7);
    v18 = *(v8 + 80);
    v33 = v3;
    v31 = v1;
    v19 = (v18 + 24) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v30[1] = v16;
    (*(v8 + 32))(v20 + v19, v11, v7);
    aBlock[4] = sub_1C525859C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5139244;
    aBlock[3] = &block_descriptor_83;
    v21 = _Block_copy(aBlock);

    v22 = v6;
    sub_1C529D68C();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
    v23 = v36;
    v24 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
    sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
    v25 = v31;
    sub_1C529D9CC();
    MEMORY[0x1C69433C0](0, v22, v24, v21);
    _Block_release(v21);
    (*(v23 + 8))(v24, v25);
    (*(v35 + 8))(v22, v33);
    (*(v8 + 8))(v13, v32);
  }

  else
  {
    if (qword_1EDC519A0 != -1)
    {
      swift_once();
    }

    v26 = sub_1C529D64C();
    __swift_project_value_buffer(v26, qword_1EDC51F78);
    v37 = sub_1C529D62C();
    v27 = sub_1C529D87C();
    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5126000, v37, v27, "Returning early because the EventKitStreamer is turned off", v28, 2u);
      MEMORY[0x1C69445C0](v28, -1, -1);
    }

    v29 = v37;
  }
}

void sub_1C5257334(uint64_t a1)
{
  v2 = sub_1C529D66C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C529D69C();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C529D3AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v41 = v5;
    sub_1C5256940();
    v14 = *&v13[OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit];
    if (v14)
    {
      v37 = v7;
      v39 = v3;
      v40 = v2;
      v15 = v14;
      v16 = dispatch_semaphore_create(0);
      v17 = sub_1C529D31C();
      v18 = v13;
      sub_1C529D30C();
      v19 = sub_1C529D31C();
      (*(v9 + 8))(v11, v8);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = a1;
      v49 = sub_1C5258864;
      v50 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_1C5143F90;
      v48 = &block_descriptor_174;
      v21 = _Block_copy(&aBlock);
      v22 = v16;

      v38 = v15;
      [v15 interestingFlightEventsFrom:v17 to:v19 handler:v21];
      _Block_release(v21);

      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v23 = sub_1C529D64C();
      __swift_project_value_buffer(v23, qword_1EDC51F78);
      v24 = sub_1C529D62C();
      v25 = sub_1C529D87C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v37;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C5126000, v24, v25, "Waiting to tear down EventKit.", v28, 2u);
        MEMORY[0x1C69445C0](v28, -1, -1);
      }

      sub_1C529D93C();
      v29 = *&v18[OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__queue];

      v49 = sub_1C5258890;
      v50 = a1;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_1C5139244;
      v48 = &block_descriptor_177;
      v30 = _Block_copy(&aBlock);

      sub_1C529D68C();
      v44 = MEMORY[0x1E69E7CC0];
      sub_1C513A534(qword_1EDC51A50, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1566E0);
      sub_1C5139198(&unk_1EDC51A40, &unk_1EC1566E0);
      v31 = v43;
      v32 = v40;
      sub_1C529D9CC();
      MEMORY[0x1C69433C0](0, v27, v31, v30);
      _Block_release(v30);

      (*(v39 + 8))(v31, v32);
      (*(v42 + 8))(v27, v41);
    }

    else
    {
      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v33 = sub_1C529D64C();
      __swift_project_value_buffer(v33, qword_1EDC51F78);
      v34 = sub_1C529D62C();
      v35 = sub_1C529D89C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1C5126000, v34, v35, "This SHOULD NOT happen. Just initialized _eventKit. How can it be nil?", v36, 2u);
        MEMORY[0x1C69445C0](v36, -1, -1);
      }
    }
  }
}

uint64_t sub_1C5257978(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, _DWORD *isa)
{
  v45 = a3;
  v46 = a5;
  v52 = a4;
  v8 = sub_1C529D3AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  if (!a1)
  {
    goto LABEL_32;
  }

  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v55 = *(v51 + 16);
  if (!v55)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v54 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v15 = 0;
    v53 = v9 + 1;
    *&v16 = 136315138;
    v47 = v16;
    v49 = v12;
    v50 = v8;
    v48 = v14;
    while (1)
    {
      if (v54)
      {
        v18 = MEMORY[0x1C69434E0](v15, a1);
      }

      else
      {
        if (v15 >= *(v51 + 16))
        {
          goto LABEL_28;
        }

        v18 = *(a1 + 8 * v15 + 32);
      }

      v19 = v18;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = [v18 startTime];
      if (!v20)
      {
        goto LABEL_23;
      }

      isa = v20;
      sub_1C529D37C();

      v21 = [v19 expires];
      if (!v21)
      {
        (v53->isa)(v14, v8);
LABEL_23:
        v56 = v15 + 1;
        if (qword_1EDC519A0 != -1)
        {
          swift_once();
        }

        v29 = sub_1C529D64C();
        __swift_project_value_buffer(v29, qword_1EDC51F78);
        v30 = v19;
        v9 = sub_1C529D62C();
        v31 = sub_1C529D87C();

        if (os_log_type_enabled(v9, v31))
        {
          isa = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v57 = v32;
          *isa = v47;
          v33 = [v30 title];
          v34 = sub_1C529D72C();
          v35 = a1;
          v37 = v36;

          v38 = sub_1C524E7F4(v34, v37, &v57);
          a1 = v35;
          v14 = v48;

          *(isa + 1) = v38;
          v12 = v49;
          _os_log_impl(&dword_1C5126000, v9, v31, "No start/end times on the entry with title:%s. Continuing.", isa, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          v39 = v32;
          v8 = v50;
          MEMORY[0x1C69445C0](v39, -1, -1);
          MEMORY[0x1C69445C0](isa, -1, -1);
        }

        else
        {
        }

        v17 = v56;
        goto LABEL_7;
      }

      v22 = v21;
      sub_1C529D37C();

      if (qword_1EDC519A0 != -1)
      {
        swift_once();
      }

      v23 = sub_1C529D64C();
      __swift_project_value_buffer(v23, qword_1EDC51F78);
      v24 = sub_1C529D62C();
      v25 = sub_1C529D87C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1C5126000, v24, v25, v46, v26, 2u);
        MEMORY[0x1C69445C0](v26, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v28 = Strong;
        sub_1C5251364(v14, v12);

        v19 = v28;
      }

      v9 = v53;
      isa = v53->isa;
      (v53->isa)(v12, v8);
      (isa)(v14, v8);
LABEL_7:
      ++v15;
      if (v17 == v55)
      {
        return sub_1C529D94C();
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    if (sub_1C529DA9C() >= 1)
    {
      v55 = sub_1C529DA9C();
      if (!v55)
      {
        return sub_1C529D94C();
      }

      continue;
    }

    break;
  }

LABEL_32:
  if (qword_1EDC519A0 != -1)
  {
    swift_once();
  }

  v40 = sub_1C529D64C();
  __swift_project_value_buffer(v40, qword_1EDC51F78);
  v41 = sub_1C529D62C();
  v42 = sub_1C529D87C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1C5126000, v41, v42, isa, v43, 2u);
    MEMORY[0x1C69445C0](v43, -1, -1);
  }

  return sub_1C529D94C();
}

void sub_1C5257F40()
{
  sub_1C525843C(v0 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__keyListenerBlock);
  swift_unknownObjectRelease();
  sub_1C525843C(v0 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitObserver);
  v1 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitChangedCanKicker);
}

id MapsSuggestionsEventKitStreamer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitChangedCanKicker];
  if (v2)
  {
    [v2 cancel];
  }

  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit, "Tore down EventKit.");
  v3 = OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__keyListenerBlock;
  swift_beginAccess();
  sub_1C52583CC(&v0[v3], &v8);
  if (v9)
  {
    sub_1C52584A4(&v8, &v10);
    __swift_project_boxed_opaque_existential_0(&v10, v11);
    sub_1C529DB4C();
    GEOConfigRemoveBlockListener();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {
    sub_1C525843C(&v8);
  }

  v4 = OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKitObserver;
  swift_beginAccess();
  sub_1C52583CC(&v0[v4], &v8);
  if (v9)
  {
    sub_1C52584A4(&v8, &v10);
    v5 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v10, v11);
    [v5 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {
    sub_1C525843C(&v8);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1C5258258()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51F78);
  __swift_project_value_buffer(v0, qword_1EDC51F78);
  return sub_1C529D63C();
}

uint64_t sub_1C52582DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5258354(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1C529D3AC() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1C52583CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C525843C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1C52584A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroy_58Tm()
{
  v1 = sub_1C529D3AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_170Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1C52589B8(NSObject *a1)
{
  v3 = *(sub_1C529D3AC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C5251F5C(a1, (v1 + v4), v5);
}

id MapsSuggestionsRealFinanceKitConnector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsRealFinanceKitConnector.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsRealFinanceKitConnector();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MapsSuggestionsRealFinanceKitConnector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsRealFinanceKitConnector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5258C18()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51FA8);
  __swift_project_value_buffer(v0, qword_1EDC51FA8);
  return sub_1C529D63C();
}

id sub_1C5258C98()
{
  v0 = sub_1C529D1BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v49 - v9;
  v10 = sub_1C529D18C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v17 = sub_1C529D12C();
  v57 = v18;
  v58 = v17;
  sub_1C529D11C();
  v19 = sub_1C529D16C();
  v53 = v20;
  v54 = v19;
  v21 = *(v11 + 8);
  v21(v16, v10);
  sub_1C529D11C();
  v22 = sub_1C529D17C();
  v50 = v23;
  v51 = v22;
  v21(v14, v10);
  v55 = sub_1C529D0FC();
  v52 = sub_1C529D10C();
  sub_1C529D0EC();
  v24 = v60;
  sub_1C529D1AC();
  v25 = *(v1 + 8);
  v25(v5, v0);
  v26 = sub_1C529D3AC();
  v27 = *(*(v26 - 8) + 56);
  v27(v24, 0, 1, v26);
  v28 = v59;
  sub_1C529D0EC();
  v29 = v56;
  sub_1C529D19C();
  v25(v28, v0);
  v27(v29, 0, 1, v26);
  v30 = sub_1C529D13C();
  v32 = v31;
  v33 = sub_1C529D14C();
  v35 = v34;
  v36 = type metadata accessor for MapsSuggestionsOrderPickup();
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderIdentifier];
  v39 = v53;
  *v38 = v54;
  v38[1] = v39;
  v40 = &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_orderTypeIdentifier];
  v41 = v50;
  *v40 = v51;
  v40[1] = v41;
  v42 = &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupIdentifier];
  v43 = v57;
  *v42 = v58;
  v42[1] = v43;
  v44 = v60;
  sub_1C52591C0(v60, &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupStartDate]);
  sub_1C52591C0(v29, &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupEndDate]);
  *&v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupAddress] = v55;
  *&v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocation] = v52;
  v45 = &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_merchantDisplayName];
  *v45 = v30;
  v45[1] = v32;
  v46 = &v37[OBJC_IVAR____TtC15MapsSuggestions26MapsSuggestionsOrderPickup_pickupLocationDisplayName];
  *v46 = v33;
  v46[1] = v35;
  v61.receiver = v37;
  v61.super_class = v36;
  v47 = objc_msgSendSuper2(&v61, sel_init);
  sub_1C5259230(v29, &unk_1EC156760);
  sub_1C5259230(v44, &unk_1EC156760);
  return v47;
}

uint64_t sub_1C52591C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5259230(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RequestType.description.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x526E45204D6F4F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4281413;
  }
}

uint64_t RequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1C529DBDC();
  MEMORY[0x1C6943690](v1);
  return sub_1C529DBFC();
}

uint64_t sub_1C525938C()
{
  v1 = *v0;
  sub_1C529DBDC();
  MEMORY[0x1C6943690](v1);
  return sub_1C529DBFC();
}

uint64_t sub_1C5259400()
{
  v1 = *v0;
  sub_1C529DBDC();
  MEMORY[0x1C6943690](v1);
  return sub_1C529DBFC();
}

uint64_t sub_1C5259444()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x526E45204D6F4F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4281413;
  }
}

void sub_1C52594A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v84 - v3;
  v5 = sub_1C529D3AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v84 - v13;
  if (*(v1 + 32) == *(v1 + 24))
  {
    sub_1C529D2EC();
    v15 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
    swift_beginAccess();
    (*(v6 + 40))(v1 + v15, v14, v5);
    swift_endAccess();
    if (qword_1EC155DB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C529D64C();
    __swift_project_value_buffer(v16, qword_1EC156EC0);

    v17 = sub_1C529D62C();
    v18 = sub_1C529D87C();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v89[0] = v20;
    *v19 = 136315138;
    v21 = 0xD000000000000013;
    v22 = 0x80000001C52E7B00;
    if (*(v1 + 16) != 1)
    {
      v21 = 0x526E45204D6F4F44;
      v22 = 0xEC0000006574756FLL;
    }

    if (*(v1 + 16))
    {
      v23 = v21;
    }

    else
    {
      v23 = 4281413;
    }

    if (*(v1 + 16))
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_1C524E7F4(v23, v24, v89);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1C5126000, v17, v18, "⚠️  Exhausted budget for %s. Setting next wake up date to DistantFuture. Won't wake up unless Routine wakes us up.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1C69445C0](v20, -1, -1);
LABEL_19:
    MEMORY[0x1C69445C0](v19, -1, -1);
LABEL_20:

    return;
  }

  v26 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime;
  swift_beginAccess();
  sub_1C525F29C(v1 + v26, v4, &unk_1EC156760);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C525E818(v4);
    v27 = MapsSuggestionsNow();
    sub_1C529D37C();

    v28 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
    swift_beginAccess();
    (*(v6 + 40))(v1 + v28, v14, v5);
    swift_endAccess();
    if (qword_1EC155DB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C529D64C();
    __swift_project_value_buffer(v29, qword_1EC156EC0);
    v17 = sub_1C529D62C();
    v30 = sub_1C529D87C();
    if (!os_log_type_enabled(v17, v30))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C5126000, v17, v30, "Can make request NOW. No last request time.", v19, 2u);
    goto LABEL_19;
  }

  (*(v6 + 32))(v12, v4, v5);
  v31 = MapsSuggestionsNow();
  sub_1C529D37C();

  sub_1C529D2FC();
  v33 = v32;
  v34 = *(v6 + 8);
  v34(v14, v5);
  v35 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime;
  v36 = *(v1 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime);
  if (v36 <= v33)
  {
    v87 = v34;
    v59 = MapsSuggestionsNow();
    sub_1C529D37C();

    v60 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
    swift_beginAccess();
    (*(v6 + 40))(v1 + v60, v14, v5);
    swift_endAccess();
    if (qword_1EC155DB0 != -1)
    {
      swift_once();
    }

    v61 = sub_1C529D64C();
    __swift_project_value_buffer(v61, qword_1EC156EC0);
    (*(v6 + 16))(v9, v12, v5);

    v62 = sub_1C529D62C();
    v63 = sub_1C529D88C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v64 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1C52A91A0;
      v66 = MEMORY[0x1E69E6438];
      *(v65 + 56) = MEMORY[0x1E69E63B0];
      *(v65 + 64) = v66;
      *(v65 + 32) = v33 / 60.0;
      v67 = sub_1C529D73C();
      v69 = sub_1C524E7F4(v67, v68, v88);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      v70 = sub_1C529D31C();
      v71 = NSStringFromMapsSuggestionsEventTime(v70);

      v72 = sub_1C529D72C();
      v74 = v73;

      v75 = v9;
      v76 = v87;
      v87(v75, v5);
      v77 = sub_1C524E7F4(v72, v74, v88);

      *(v64 + 14) = v77;
      _os_log_impl(&dword_1C5126000, v62, v63, "Can make request NOW. Last Request Time more than %s ago at %s.", v64, 0x16u);
      v78 = v86;
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v78, -1, -1);
      MEMORY[0x1C69445C0](v64, -1, -1);

      v76(v12, v5);
    }

    else
    {

      v79 = v87;
      v87(v9, v5);
      v79(v12, v5);
    }
  }

  else
  {
    v87 = (v6 + 8);
    v37 = MapsSuggestionsNowWithOffset(v36 - v33);
    sub_1C529D37C();

    v38 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
    swift_beginAccess();
    (*(v6 + 40))(v1 + v38, v14, v5);
    swift_endAccess();
    if (qword_1EC155DB0 != -1)
    {
      swift_once();
    }

    v39 = sub_1C529D64C();
    __swift_project_value_buffer(v39, qword_1EC156EC0);

    v40 = sub_1C529D62C();
    v41 = sub_1C529D88C();

    if (os_log_type_enabled(v40, v41))
    {
      v85 = v41;
      v86 = v40;
      v42 = v34;
      v43 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88[0] = v84;
      *v43 = 136315650;
      v44 = *(v1 + v35) - v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1C52A91A0;
      v46 = MEMORY[0x1E69E6438];
      *(v45 + 56) = MEMORY[0x1E69E63B0];
      *(v45 + 64) = v46;
      *(v45 + 32) = v44 / 60.0;
      v47 = sub_1C529D73C();
      v49 = sub_1C524E7F4(v47, v48, v88);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      (*(v6 + 16))(v14, v1 + v38, v5);
      v50 = sub_1C529D31C();
      v51 = v42;
      v42(v14, v5);
      v52 = NSStringFromMapsSuggestionsEventTime(v50);

      v53 = sub_1C529D72C();
      v55 = v54;

      v56 = sub_1C524E7F4(v53, v55, v88);

      *(v43 + 14) = v56;
      *(v43 + 22) = 2080;
      if (*(v1 + 16))
      {
        if (*(v1 + 16) == 1)
        {
          v57 = 0xD000000000000013;
          v58 = 0x80000001C52E7B00;
        }

        else
        {
          v57 = 0x526E45204D6F4F44;
          v58 = 0xEC0000006574756FLL;
        }
      }

      else
      {
        v57 = 4281413;
        v58 = 0xE300000000000000;
      }

      v80 = v86;
      v81 = v85;
      v82 = v84;
      v83 = sub_1C524E7F4(v57, v58, v88);

      *(v43 + 24) = v83;
      _os_log_impl(&dword_1C5126000, v80, v81, "Should wait for at least %s until %s to try for another %s request", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v82, -1, -1);
      MEMORY[0x1C69445C0](v43, -1, -1);

      v51(v12, v5);
    }

    else
    {

      v34(v12, v5);
    }
  }
}

uint64_t sub_1C5259FDC()
{
  sub_1C525E818(v0 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime);
  v1 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
  v2 = sub_1C529D3AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

id DOoMSession.__allocating_init(identifier:name:etaBudget:enRouteBudget:beforeDrivingBudget:minimumWaitTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v54 = a5;
  v50 = a6;
  v51 = a7;
  v49 = a4;
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v45 = sub_1C529D8EC();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = objc_allocWithZone(v8);
  v16 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v52 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v17 = MEMORY[0x1E69E7CC0];
  *&v15[v16] = sub_1C525E670(MEMORY[0x1E69E7CC0]);
  v44 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v56 = v17;
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v45);
  *&v15[v44] = sub_1C529D92C();
  v18 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget;
  *&v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget] = 0;
  v19 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget;
  *&v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget] = 0;
  v20 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget;
  *&v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget] = 0;
  v21 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime;
  *&v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime] = 0;
  v22 = v21;
  v45 = v21;
  v23 = &v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__eta];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier];
  *v24 = v46;
  *(v24 + 1) = v47;
  v25 = &v15[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_name];
  *v25 = v48;
  *(v25 + 1) = v49;
  v26 = v51;
  *&v15[v19] = v50;
  *&v15[v20] = v54;
  *&v15[v18] = v26;
  *&v15[v22] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C52A91B0;
  *(inited + 32) = 1;
  v50 = inited + 32;
  type metadata accessor for BudgetTracker(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime;
  v30 = sub_1C529D3AC();
  v31 = *(*(v30 - 8) + 56);
  v31(v28 + v29, 1, 1, v30);
  *(v28 + 16) = 1;
  *(v28 + 24) = v26;
  *(v28 + 32) = 0;
  v32 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v28 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = a8;
  *(inited + 40) = v28;
  *(inited + 48) = 2;
  v33 = *&v15[v19];
  v34 = v45;
  v35 = *&v15[v45];
  v36 = swift_allocObject();
  v31(v36 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v30);
  *(v36 + 16) = 2;
  *(v36 + 24) = v33;
  *(v36 + 32) = 0;
  v37 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v36 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v35;
  *(inited + 56) = v36;
  *(inited + 64) = 0;
  v38 = *&v15[v34];
  v39 = swift_allocObject();
  v31(v39 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v30);
  *(v39 + 16) = 0;
  *(v39 + 24) = v54;
  *(v39 + 32) = 0;
  v40 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v39 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v38;
  *(inited + 72) = v39;
  v41 = sub_1C525E670(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561E8);
  swift_arrayDestroy();
  *&v15[v52] = v41;

  v55.receiver = v15;
  v55.super_class = v53;
  return objc_msgSendSuper2(&v55, sel_init);
}

id DOoMSession.init(identifier:name:etaBudget:enRouteBudget:beforeDrivingBudget:minimumWaitTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v49 = a7;
  v50 = a6;
  v52 = a5;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v45 = a1;
  v44 = sub_1C529D8EC();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v51 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v16 = MEMORY[0x1E69E7CC0];
  *&v8[v15] = sub_1C525E670(MEMORY[0x1E69E7CC0]);
  v43 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v54 = v16;
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v44);
  *&v8[v43] = sub_1C529D92C();
  v17 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget;
  *&v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget] = 0;
  v18 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget;
  *&v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget] = 0;
  v19 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget;
  *&v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget] = 0;
  v20 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime;
  *&v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime] = 0;
  v21 = v20;
  v44 = v20;
  v22 = &v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__eta];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier];
  *v23 = v45;
  *(v23 + 1) = v46;
  v24 = &v8[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_name];
  *v24 = v47;
  v25 = v49;
  *(v24 + 1) = v48;
  *&v8[v18] = v50;
  *&v8[v19] = v52;
  *&v8[v17] = v25;
  *&v8[v21] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C52A91B0;
  *(inited + 32) = 1;
  v50 = inited + 32;
  type metadata accessor for BudgetTracker(0);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime;
  v29 = sub_1C529D3AC();
  v30 = *(*(v29 - 8) + 56);
  v30(v27 + v28, 1, 1, v29);
  *(v27 + 16) = 1;
  *(v27 + 24) = v25;
  *(v27 + 32) = 0;
  v31 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v27 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = a8;
  *(inited + 40) = v27;
  *(inited + 48) = 2;
  v32 = *&v8[v18];
  v33 = v44;
  v34 = *&v8[v44];
  v35 = swift_allocObject();
  v30(v35 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v29);
  *(v35 + 16) = 2;
  *(v35 + 24) = v32;
  *(v35 + 32) = 0;
  v36 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v35 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v34;
  *(inited + 56) = v35;
  *(inited + 64) = 0;
  v37 = *&v8[v33];
  v38 = swift_allocObject();
  v30(v38 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v29);
  *(v38 + 16) = 0;
  *(v38 + 24) = v52;
  *(v38 + 32) = 0;
  v39 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v38 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v37;
  *(inited + 72) = v38;
  v40 = sub_1C525E670(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561E8);
  swift_arrayDestroy();
  *&v8[v51] = v40;

  v41 = type metadata accessor for DOoMSession();
  v53.receiver = v8;
  v53.super_class = v41;
  return objc_msgSendSuper2(&v53, sel_init);
}

uint64_t sub_1C525AB88(double a1)
{
  v2 = v1;
  v4 = sub_1C529D6CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v7 = sub_1C529D8FC();
  v8 = *MEMORY[0x1E69E8018];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  v10 = sub_1C529D6EC();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  v14 = *&v2[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue];
  *v7 = v14;
  v9(v7, v8, v4);
  v15 = v14;
  v16 = sub_1C529D6EC();
  result = v11(v7, v4);
  if ((v16 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = *&v2[v13];
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C525E7C4;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1C514076C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5140848;
  aBlock[3] = &block_descriptor_2;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  v22 = v2;

  dispatch_sync(v21, v20);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C525AE74()
{
  v1 = v0;
  v2 = sub_1C529D6CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v5 = sub_1C529D8FC();
  v6 = *MEMORY[0x1E69E8018];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v8 = sub_1C529D6EC();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if (v8)
  {
    v11 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue);
    *v5 = v11;
    v7(v5, v6, v2);
    v12 = v11;
    v13 = sub_1C529D6EC();
    result = v9(v5, v2);
    if (v13)
    {
      MEMORY[0x1EEE9AC00](result);
      v16[-2] = v1;
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561F0);
      sub_1C529D90C();

      return v16[2];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C525B088@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v9;
  v10 = sub_1C529D6CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *a1;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v13 = sub_1C529D8FC();
  v14 = *MEMORY[0x1E69E8018];
  v15 = *(v11 + 104);
  v15(v13, v14, v10);
  v16 = sub_1C529D6EC();
  v17 = *(v11 + 8);
  result = v17(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = a2;
  v19 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  v20 = *&v3[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue];
  *v13 = v20;
  v15(v13, v14, v10);
  v21 = v20;
  v22 = sub_1C529D6EC();
  result = v17(v13, v10);
  if ((v22 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = sub_1C529D3AC();
  v24 = *(v23 - 8);
  v25 = v39;
  (*(v24 + 56))(v39, 1, 1, v23);
  v26 = *&v3[v19];
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  *(v27 + 24) = v38;
  *(v27 + 32) = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C525E808;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1C5140840;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5140848;
  aBlock[3] = &block_descriptor_13;
  v29 = _Block_copy(aBlock);
  v30 = v26;
  v31 = v3;

  dispatch_sync(v30, v29);

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v33 = v37;
  sub_1C525F29C(v25, v37, &unk_1EC156760);
  v34 = (*(v24 + 48))(v33, 1, v23);
  sub_1C525E818(v33);
  if (v34 == 1)
  {
    v35 = MapsSuggestionsNow();
    sub_1C529D37C();
  }

  else
  {
    sub_1C525F29C(v25, v36, &unk_1EC156760);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156640);
  swift_storeEnumTagMultiPayload();
  sub_1C525E818(v25);
}

unint64_t sub_1C525B510(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1C529D3AC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap);
  if (*(v17 + 16))
  {
    result = sub_1C525E34C(a2);
    if (v18)
    {
      v25 = a3;
      v19 = *(*(v17 + 56) + 8 * result);

      v20 = MapsSuggestionsNow();
      sub_1C529D37C();

      v21 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__earliestTime;
      swift_beginAccess();
      v23 = *(v10 + 16);
      v23(v13, v19 + v21, v9);
      LOBYTE(v20) = sub_1C529D32C();
      v24 = v10;
      v22 = *(v10 + 8);
      v22(v13, v9);
      v22(v16, v9);
      if ((v20 & 1) != 0 && *(v19 + 32) < *(v19 + 24))
      {
      }

      else
      {
        sub_1C52594A4();
        v23(v8, v19 + v21, v9);

        (*(v24 + 56))(v8, 0, 1, v9);
        return sub_1C525F304(v8, v25);
      }
    }
  }

  return result;
}

uint64_t sub_1C525B788(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1C529D6CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v7 = sub_1C529D8FC();
  v9 = *MEMORY[0x1E69E8018];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  v11 = sub_1C529D6EC();
  v12 = *(v5 + 8);
  result = v12(v7, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  HIDWORD(v27) = v8;
  v14 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  v15 = v2;
  v16 = *&v2[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue];
  *v7 = v16;
  v10(v7, v9, v4);
  v17 = v16;
  v18 = sub_1C529D6EC();
  result = v12(v7, v4);
  if ((v18 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29 = 0;
  v19 = *&v15[v14];
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = BYTE4(v27);
  *(v20 + 32) = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C525E880;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1C5140840;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5140848;
  aBlock[3] = &block_descriptor_23_0;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  v24 = v15;

  dispatch_sync(v23, v22);

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = v29;

    return v26;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1C525BA68(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap);
  if (!*(v10 + 16))
  {
    return result;
  }

  result = sub_1C525E34C(a2);
  if ((v11 & 1) == 0)
  {
    return result;
  }

  v12 = *(*(v10 + 56) + 8 * result);
  v13 = *(v12 + 32);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v12 + 32) = v15;

  v16 = MapsSuggestionsNow();
  sub_1C529D37C();

  v17 = sub_1C529D3AC();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime;
  swift_beginAccess();
  sub_1C525F304(v9, v12 + v18);
  swift_endAccess();
  sub_1C52594A4();
  *a3 = 1;
  if (qword_1EC155DB0 != -1)
  {
LABEL_10:
    swift_once();
  }

  v19 = sub_1C529D64C();
  __swift_project_value_buffer(v19, qword_1EC156EC0);
  v20 = sub_1C529D62C();
  v21 = sub_1C529D87C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C5126000, v20, v21, "💸 Budget Spent! 💸", v22, 2u);
    MEMORY[0x1C69445C0](v22, -1, -1);
  }

  sub_1C525BC98();
}

void sub_1C525BC98()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x1E69A2398]) init];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v6 = *&v2[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap];
  if (!v6[2])
  {
    __break(1u);
    goto LABEL_31;
  }

  v7 = sub_1C525E34C(1u);
  if ((v8 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = *&v2[v5];
  if (!*(v9 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = *(v6[7] + 8 * v7);
  v10 = sub_1C525E34C(2u);
  if ((v11 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v1 = *&v2[v5];
  if (!v1[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = *(*(v9 + 56) + 8 * v10);
  v12 = sub_1C525E34C(0);
  if ((v13 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v1 = *(v1[7] + 8 * v12);
  v14 = qword_1EC155DB0;

  if (v14 != -1)
  {
LABEL_36:
    swift_once();
  }

  v15 = sub_1C529D64C();
  __swift_project_value_buffer(v15, qword_1EC156EC0);
  v16 = sub_1C529D62C();
  v17 = sub_1C529D87C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C5126000, v16, v17, "=========================================================", v18, 2u);
    MEMORY[0x1C69445C0](v18, -1, -1);
  }

  v19 = v2;
  v20 = sub_1C529D62C();
  v21 = sub_1C529D87C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1C524E7F4(*&v19[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_name], *&v19[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_name + 8], &v50);
    _os_log_impl(&dword_1C5126000, v20, v21, "~~~~~~~~~~~~~    Request usage for: %s    ~~~~~~~~~~~~~", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1C69445C0](v23, -1, -1);
    MEMORY[0x1C69445C0](v22, -1, -1);
  }

  v24 = v19;
  v25 = sub_1C529D62C();
  v26 = sub_1C529D87C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1C524E7F4(*&v24[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier], *&v24[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier + 8], &v50);
    _os_log_impl(&dword_1C5126000, v25, v26, "~~~~~   ID: %s    ~~~~~", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1C69445C0](v28, -1, -1);
    MEMORY[0x1C69445C0](v27, -1, -1);
  }

  v29 = sub_1C529D62C();
  v30 = sub_1C529D87C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1C5126000, v29, v30, "+---+---+---+---+---+---+---+---+---+---+---+---+---+---+", v31, 2u);
    MEMORY[0x1C69445C0](v31, -1, -1);
  }

  v32 = sub_1C529D62C();
  v33 = sub_1C529D87C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C5126000, v32, v33, "+-   ETA   -+-   DOoM Before Driving   -+- DOoM EnRoute-+", v34, 2u);
    MEMORY[0x1C69445C0](v34, -1, -1);
  }

  v35 = sub_1C529D62C();
  v36 = sub_1C529D87C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C5126000, v35, v36, "+---+---+---+---+---+---+---+---+---+---+---+---+---+---+", v37, 2u);
    MEMORY[0x1C69445C0](v37, -1, -1);
  }

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v38 = sub_1C529D62C();
  v39 = sub_1C529D87C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134219264;
    v41 = v1[4];

    *(v40 + 4) = v41;

    *(v40 + 12) = 2048;
    v42 = v1[3];

    *(v40 + 14) = v42;

    *(v40 + 22) = 2048;
    v43 = v6[4];

    *(v40 + 24) = v43;

    *(v40 + 32) = 2048;
    v44 = v6[3];

    *(v40 + 34) = v44;

    *(v40 + 42) = 2048;
    v45 = *(v5 + 32);

    *(v40 + 44) = v45;

    *(v40 + 52) = 2048;
    v46 = *(v5 + 24);

    *(v40 + 54) = v46;

    _os_log_impl(&dword_1C5126000, v38, v39, "|   %ld of %ld  |          %ld of %ld           |     %ld of %ld    |", v40, 0x3Eu);
    MEMORY[0x1C69445C0](v40, -1, -1);
  }

  else
  {
  }

  v47 = sub_1C529D62C();
  v48 = sub_1C529D87C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1C5126000, v47, v48, "=========================================================", v49, 2u);
    MEMORY[0x1C69445C0](v49, -1, -1);
  }
}

id DOoMSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C525C478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1C525C528(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *DOoMSessionManager.__allocating_init(etaBudget:enRouteBudget:beforeDrivingBudget:minimumWaitTime:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v6 = sub_1C529D3AC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C529D3CC();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C529D3EC();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C529D8EC();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = objc_allocWithZone(v4);
  v30 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v32);
  *&v16[v30] = sub_1C529D92C();
  v17 = &v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  *v17 = 0;
  v17[8] = 1;
  v18 = v36;
  *&v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_etaBudget] = v35;
  *&v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_enRouteBudget] = v18;
  *&v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_beforeDrivingBudget] = v37;
  *&v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__minimumWaitTime] = a4;
  *&v16[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions] = sub_1C525F070(MEMORY[0x1E69E7CC0], &qword_1EC156278);
  v45.receiver = v16;
  v45.super_class = v31;
  v19 = objc_msgSendSuper2(&v45, sel_init);
  v20 = v33;
  sub_1C529D3BC();
  v22 = v38;
  v21 = v39;
  v23 = v34;
  (*(v38 + 104))(v34, *MEMORY[0x1E6969A48], v39);
  v24 = MapsSuggestionsNow();
  v25 = v41;
  sub_1C529D37C();

  v26 = sub_1C529D3DC();
  (*(v43 + 8))(v25, v44);
  (*(v22 + 8))(v23, v21);
  (*(v40 + 8))(v20, v42);
  v27 = &v19[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  *v27 = v26;
  v27[8] = 0;

  return v19;
}

char *DOoMSessionManager.init(etaBudget:enRouteBudget:beforeDrivingBudget:minimumWaitTime:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v6 = sub_1C529D3AC();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C529D3CC();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C529D3EC();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C529D8EC();
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v29 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v30);
  *&v4[v29] = sub_1C529D92C();
  v16 = &v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  *v16 = 0;
  v16[8] = 1;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_etaBudget] = v32;
  v17 = v35;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_enRouteBudget] = v34;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_beforeDrivingBudget] = v17;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__minimumWaitTime] = a4;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions] = sub_1C525F070(MEMORY[0x1E69E7CC0], &qword_1EC156278);
  v18 = type metadata accessor for DOoMSessionManager();
  v43.receiver = v4;
  v43.super_class = v18;
  v19 = objc_msgSendSuper2(&v43, sel_init);
  v20 = v31;
  sub_1C529D3BC();
  v22 = v36;
  v21 = v37;
  v23 = v33;
  (*(v36 + 104))(v33, *MEMORY[0x1E6969A48], v37);
  v24 = MapsSuggestionsNow();
  v25 = v39;
  sub_1C529D37C();

  v26 = sub_1C529D3DC();
  (*(v41 + 8))(v25, v42);
  (*(v22 + 8))(v23, v21);
  (*(v38 + 8))(v20, v40);
  v27 = &v19[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day];
  *v27 = v26;
  v27[8] = 0;

  return v19;
}

uint64_t sub_1C525D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C529D6CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v13 = sub_1C529D8FC();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8018], v10);
  v14 = sub_1C529D6EC();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v26 = 0;
  v16 = *&v5[OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__queue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = &v26;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C525E8C8;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1C5140840;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5140848;
  aBlock[3] = &block_descriptor_33;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = v5;

  dispatch_sync(v20, v19);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = v26;
  if (v26)
  {

    return v23;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C525D2FC(uint64_t a1, uint64_t a2, unint64_t a3, id *a4, uint64_t a5, unint64_t a6)
{
  v103 = a6;
  v105 = a5;
  v104 = a4;
  v109 = a3;
  v107 = a2;
  v99 = sub_1C529D8EC();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1C529D3AC();
  v11 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C529D3CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C529D3EC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v101 = *(a1 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day);
  v90 = (a1 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day);
  LODWORD(v102) = *(a1 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_day + 8);
  sub_1C529D3BC();
  v22 = *(v15 + 104);
  v89 = *MEMORY[0x1E6969A48];
  v88 = v22;
  v22(v17);
  v23 = MapsSuggestionsNow();
  sub_1C529D37C();

  v24 = sub_1C529D3DC();
  v100 = v11;
  v25 = *(v11 + 8);
  v86 = v13;
  v87 = v25;
  v25(v13, v106);
  v26 = *(v15 + 8);
  v92 = v14;
  v91 = v15 + 8;
  v26(v17, v14);
  v27 = *(v19 + 8);
  v93 = v18;
  v27(v21, v18);
  if ((v102 & 1) != 0 || v101 != v24)
  {
    sub_1C525DF5C();
    sub_1C529D3BC();
    v28 = v92;
    v88(v17, v89, v92);
    v29 = v27;
    v30 = MapsSuggestionsNow();
    v31 = v86;
    sub_1C529D37C();

    v32 = sub_1C529D3DC();
    v87(v31, v106);
    v26(v17, v28);
    v29(v21, v93);
    v33 = v90;
    *v90 = v32;
    *(v33 + 8) = 0;
  }

  v34 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions;
  v35 = v108;
  swift_beginAccess();
  v36 = *(v35 + v34);
  v37 = v109;
  v38 = v103;
  v39 = v105;
  if (*(v36 + 16))
  {

    v40 = sub_1C525E3B8(v107, v37);
    if (v41)
    {
      v42 = *(*(v36 + 56) + 8 * v40);

      v43 = *v104;
      *v104 = v42;
LABEL_14:

      return;
    }
  }

  if (qword_1EC155DB0 != -1)
  {
    swift_once();
  }

  v102 = v34;
  v44 = sub_1C529D64C();
  __swift_project_value_buffer(v44, qword_1EC156EC0);

  v45 = sub_1C529D62C();
  v46 = sub_1C529D87C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v111[0] = v48;
    *v47 = 136315394;
    *(v47 + 4) = sub_1C524E7F4(v39, v38, v111);
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_1C524E7F4(v107, v37, v111);
    _os_log_impl(&dword_1C5126000, v45, v46, "Initializing a new session for %s with ID %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v48, -1, -1);
    MEMORY[0x1C69445C0](v47, -1, -1);
  }

  v92 = *(v108 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_etaBudget);
  v49 = v92;
  v91 = *(v108 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_enRouteBudget);
  v90 = *(v108 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager_beforeDrivingBudget);
  v50 = *(v108 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__minimumWaitTime);
  v101 = type metadata accessor for DOoMSession();
  v51 = objc_allocWithZone(v101);
  v52 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v93 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__requestMap;
  v53 = MEMORY[0x1E69E7CC0];
  *&v51[v52] = sub_1C525E670(MEMORY[0x1E69E7CC0]);
  v54 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  v111[0] = v53;
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v98 + 104))(v97, *MEMORY[0x1E69E8090], v99);
  *&v51[v54] = sub_1C529D92C();
  v55 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget;
  *&v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__beforeDrivingBudget] = 0;
  v56 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget;
  *&v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__enRouteBudget] = 0;
  v57 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget;
  *&v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__etaBudget] = 0;
  v58 = OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime;
  *&v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__minimumWaitTime] = 0;
  v59 = v58;
  v99 = v58;
  v60 = &v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__eta];
  *v60 = 0;
  v60[8] = 1;
  v61 = &v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_identifier];
  *v61 = v107;
  *(v61 + 1) = v109;
  v62 = &v51[OBJC_IVAR____TtC15MapsSuggestions11DOoMSession_name];
  *v62 = v105;
  v62[1] = v38;
  *&v51[v56] = v91;
  *&v51[v57] = v49;
  v63 = v90;
  *&v51[v55] = v90;
  *&v51[v59] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C52A91B0;
  *(inited + 32) = 1;
  v105 = inited + 32;
  type metadata accessor for BudgetTracker(0);
  v65 = swift_allocObject();
  v66 = *(v100 + 56);
  v67 = v106;
  v66(v65 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v106);
  *(v65 + 16) = 1;
  *(v65 + 24) = v63;
  *(v65 + 32) = 0;

  v68 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v65 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v50;
  *(inited + 40) = v65;
  *(inited + 48) = 2;
  v69 = *&v51[v56];
  v70 = v99;
  v71 = *&v51[v99];
  v72 = swift_allocObject();
  v66(v72 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v67);
  *(v72 + 16) = 2;
  *(v72 + 24) = v69;
  *(v72 + 32) = 0;
  v73 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v72 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v71;
  *(inited + 56) = v72;
  *(inited + 64) = 0;
  v74 = *&v51[v70];
  v75 = swift_allocObject();
  v66(v75 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__lastRequestTime, 1, 1, v67);
  *(v75 + 16) = 0;
  *(v75 + 24) = v92;
  *(v75 + 32) = 0;
  v76 = MapsSuggestionsNow();
  sub_1C529D37C();

  *(v75 + OBJC_IVAR____TtC15MapsSuggestionsP33_2486AFBE3924BB5A113368CA2429A72313BudgetTracker__minWaitTime) = v74;
  *(inited + 72) = v75;
  v77 = sub_1C525E670(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1561E8);
  swift_arrayDestroy();
  *&v51[v93] = v77;

  v112.receiver = v51;
  v112.super_class = v101;
  v78 = objc_msgSendSuper2(&v112, sel_init);
  v79 = v104;
  v80 = *v104;
  *v104 = v78;
  v81 = v78;

  v82 = v102;
  v83 = v108;
  swift_beginAccess();
  v84 = v109;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v83 + v82);
  *(v83 + v82) = 0x8000000000000000;
  sub_1C52781E4(v81, v107, v84, isUniquelyReferenced_nonNull_native);

  *(v83 + v82) = v110;
  swift_endAccess();
  if (*v79)
  {
    v43 = *v79;
    sub_1C525BC98();
    goto LABEL_14;
  }
}

uint64_t sub_1C525DF5C()
{
  v1 = v0;
  v2 = sub_1C529D6CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  *v5 = sub_1C529D8FC();
  v6 = *(v3 + 104);
  v6(v5, *MEMORY[0x1E69E8018], v2);
  v7 = sub_1C529D6EC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__queue);
    *v5 = v9;
    v6(v5, *MEMORY[0x1E69E8020], v2);
    v10 = v9;
    LOBYTE(v9) = sub_1C529D6EC();
    v8(v5, v2);
    if (v9)
    {
      if (qword_1EC155DB0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v11 = sub_1C529D64C();
  __swift_project_value_buffer(v11, qword_1EC156EC0);
  v12 = sub_1C529D62C();
  v13 = sub_1C529D87C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C5126000, v12, v13, "⚠️ Removed all cached DOoMSessions because the date changed ⚠️", v14, 2u);
    MEMORY[0x1C69445C0](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC15MapsSuggestions18DOoMSessionManager__sessions;
  swift_beginAccess();
  *(v1 + v15) = MEMORY[0x1E69E7CC8];
}

id sub_1C525E244(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C525E2C8()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EC156EC0);
  __swift_project_value_buffer(v0, qword_1EC156EC0);
  return sub_1C529D63C();
}

unint64_t sub_1C525E34C(unsigned __int8 a1)
{
  sub_1C529DBDC();
  MEMORY[0x1C6943690](a1);
  v2 = sub_1C529DBFC();

  return sub_1C525E474(a1, v2);
}

unint64_t sub_1C525E3B8(uint64_t a1, uint64_t a2)
{
  sub_1C529DBDC();
  sub_1C529D76C();
  v4 = sub_1C529DBFC();

  return sub_1C525E4E4(a1, a2, v4);
}

unint64_t sub_1C525E430(uint64_t a1)
{
  v2 = sub_1C529D97C();

  return sub_1C525E59C(a1, v2);
}

unint64_t sub_1C525E474(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C525E4E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C529DB5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C525E59C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C5143DC8(0, &qword_1EC156260);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C529D98C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1C525E670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156280);
  v3 = sub_1C529DB1C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C525E34C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1C525E34C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double sub_1C525E7C4()
{
  result = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__eta;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void sub_1C525E7E4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC15MapsSuggestions11DOoMSession__eta;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1C525E818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C525E8DC()
{
  result = qword_1EC156230;
  if (!qword_1EC156230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC156230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequestType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C525EAA4()
{
  sub_1C525EB90();
  if (v0 <= 0x3F)
  {
    sub_1C529D3AC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C525EB90()
{
  if (!qword_1EDC51AE0)
  {
    sub_1C529D3AC();
    v0 = sub_1C529D99C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC51AE0);
    }
  }
}

uint64_t sub_1C525EC30(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C525EC68()
{
  sub_1C525EB90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C525EF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156580);
    v3 = sub_1C529DB1C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C525E3B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C525F070(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1C529DB1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1C525E3B8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C525F16C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156258);
    v3 = sub_1C529DB1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C525F29C(v4, &v13, &qword_1EC156530);
      v5 = v13;
      v6 = v14;
      result = sub_1C525E3B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C52584A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C525F29C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C525F304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *MapsSuggestionsRealFindMyConnector.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = &v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_uniqueName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_findMySession] = 0;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v17, sel_init);
  v7 = sub_1C529D85C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_1C525F85C(0, 0, v4, &unk_1C52A93D0, v8);

  v10 = [v9 description];

  v11 = sub_1C529D72C();
  v13 = v12;

  v14 = &v9[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_uniqueName];
  swift_beginAccess();
  *v14 = v11;
  v14[1] = v13;

  return v9;
}

uint64_t sub_1C525F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C529D4AC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1C529D4BC();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C525F6C8, 0, 0);
}

uint64_t sub_1C525F6C8()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699C8A0], v0[3]);
  sub_1C529D4CC();
  sub_1C529D56C();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_findMySession) = sub_1C529D57C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1C525F7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C524F814;

  return sub_1C525F5DC(a1, v4, v5, v6);
}

uint64_t sub_1C525F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C525F29C(a3, v25 - v10, &unk_1EC156340);
  v12 = sub_1C529D85C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5259230(v11, &unk_1EC156340);
  }

  else
  {
    sub_1C529D84C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C529D82C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C529D75C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C5259230(a3, &unk_1EC156340);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5259230(a3, &unk_1EC156340);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t MapsSuggestionsRealFindMyConnector.listOfFriends()()
{
  v1[3] = v0;
  v2 = sub_1C529D52C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1C529D4EC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C525FCA8, 0, 0);
}

uint64_t sub_1C525FCA8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_findMySession);
  v0[11] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1C525FE70;

    return MEMORY[0x1EEE04588]();
  }

  else
  {
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C529D64C();
    __swift_project_value_buffer(v3, qword_1EC156ED8);
    v4 = sub_1C529D62C();
    v5 = sub_1C529D88C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5126000, v4, v5, "Call to fetch list of friends from FindMy returned empty", v6, 2u);
      MEMORY[0x1C69445C0](v6, -1, -1);
    }

    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1C525FE70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1C5260414;
  }

  else
  {

    v4 = sub_1C525FF8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C525FF8C()
{
  v58 = v0;
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C5265B44(0, v2, 0);
    v5 = v57;
    v6 = *(v3 + 16);
    v3 += 16;
    v48 = v1;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v51 = *(v3 + 56);
    v52 = v6;
    v55 = v0;
    v49 = (v3 - 8);
    v50 = (v4 + 8);
    do
    {
      v8 = v0[10];
      v9 = v5;
      v11 = v0[6];
      v10 = v0[7];
      v12 = v0[4];
      v52(v8, v7, v10);
      sub_1C529D4DC();
      v13 = sub_1C529D4FC();
      v15 = v14;
      (*v50)(v11, v12);
      v16 = v10;
      v5 = v9;
      (*v49)(v8, v16);
      v57 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C5265B44((v17 > 1), v18 + 1, 1);
        v5 = v57;
      }

      v5[2] = v18 + 1;
      v19 = &v5[2 * v18];
      v19[4] = v13;
      v19[5] = v15;
      v7 += v51;
      --v2;
      v0 = v55;
    }

    while (v2);
    v1 = v48;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_16;
    }
  }

  v20 = sub_1C5265E88(v5);

  v56 = v20;
  v21 = *(v1 + 16);
  if (v21)
  {
    v22 = v0[8];
    v24 = *(v22 + 16);
    v23 = v22 + 16;
    v54 = v24;
    v25 = v0[13] + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v53 = *(v23 + 56);
    v26 = (v0[5] + 8);
    do
    {
      v27 = v0[9];
      v29 = v0[6];
      v28 = v0[7];
      v30 = v0[4];
      v54(v27, v25, v28);
      sub_1C529D4DC();
      (*(v23 - 8))(v27, v28);
      v31 = sub_1C529D50C();
      (*v26)(v29, v30);
      sub_1C5265F20(v31);

      v25 += v53;
      --v21;
    }

    while (v21);
    v20 = v56;
  }

  v32 = *(v20 + 16);
  if (v32)
  {
    v5 = sub_1C52651FC(*(v20 + 16), 0);
    v33 = sub_1C5265C70(&v57, v5 + 4, v32, v20);
    sub_1C5265F90();
    if (v33 == v32)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (qword_1EC155DB8 != -1)
  {
    swift_once();
  }

  v34 = sub_1C529D64C();
  __swift_project_value_buffer(v34, qword_1EC156ED8);

  v35 = sub_1C529D62C();
  v36 = sub_1C529D87C();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[13];
  if (v37)
  {
    v39 = v0[7];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315138;
    v42 = MEMORY[0x1C6943290](v38, v39);
    v44 = v43;

    v45 = sub_1C524E7F4(v42, v44, &v57);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1C5126000, v35, v36, "Friends:%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1C69445C0](v41, -1, -1);
    MEMORY[0x1C69445C0](v40, -1, -1);
  }

  else
  {
  }

  v46 = v0[1];

  return v46(v5);
}

uint64_t sub_1C5260414()
{
  v18 = v0;

  if (qword_1EC155DB8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1C529D64C();
  __swift_project_value_buffer(v2, qword_1EC156ED8);
  v3 = v1;
  v4 = sub_1C529D62C();
  v5 = sub_1C529D88C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156590);
    v11 = sub_1C529D74C();
    v13 = sub_1C524E7F4(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C5126000, v4, v5, "Fetching friends failed with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C69445C0](v9, -1, -1);
    MEMORY[0x1C69445C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];
  v15 = MEMORY[0x1E69E7CC0];

  return v14(v15);
}

uint64_t sub_1C5260784(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C526082C;

  return MapsSuggestionsRealFindMyConnector.listOfFriends()();
}

uint64_t sub_1C526082C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = sub_1C529D7CC();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t MapsSuggestionsRealFindMyConnector.location(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1C529D3AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1C529D61C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156298);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5260B04, 0, 0);
}

uint64_t sub_1C5260B04()
{
  v1 = v0[4];
  v2 = *(v0[9] + 56);
  v2(v0[13], 1, 1, v0[8]);
  v3 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_findMySession);
  v0[14] = v3;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562A0);
    sub_1C529D52C();
    v4 = swift_allocObject();
    v0[15] = v4;
    *(v4 + 16) = xmmword_1C52A91A0;

    sub_1C5265F98(MEMORY[0x1E69E7CC0]);
    sub_1C529D51C();
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1C5260FE4;

    return MEMORY[0x1EEE04598](v4, 0);
  }

  else
  {
    v6 = v0[12];
    v7 = v0[8];
    sub_1C5259230(v0[13], &qword_1EC156298);
    v2(v6, 1, 1, v7);
    sub_1C526609C(v0[12], v0[13]);
    v8 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    sub_1C525F29C(v0[13], v8, &qword_1EC156298);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1C5259230(v0[11], &qword_1EC156298);
      if (qword_1EC155DB8 != -1)
      {
        swift_once();
      }

      v11 = sub_1C529D64C();
      __swift_project_value_buffer(v11, qword_1EC156ED8);
      v12 = sub_1C529D62C();
      v13 = sub_1C529D88C();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[13];
      if (v14)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C5126000, v12, v13, "Location is nil when trying to call locations(for:reverseGeocode:)", v16, 2u);
        MEMORY[0x1C69445C0](v16, -1, -1);
      }

      sub_1C5259230(v15, &qword_1EC156298);
      v17 = 0;
    }

    else
    {
      v38 = v0[13];
      v18 = v0[10];
      v19 = v0[8];
      v20 = v0[9];
      v21 = v0[6];
      v22 = v0[7];
      v23 = v0[5];
      (*(v20 + 32))(v18, v0[11], v19);
      sub_1C529D5EC();
      v25 = v24;
      sub_1C529D5FC();
      v27 = v26;
      sub_1C529D5DC();
      v29 = v28;
      sub_1C529D5CC();
      v31 = v30;
      sub_1C529D5BC();
      v33 = v32;
      sub_1C529D60C();
      sub_1C529D36C();
      v34 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v35 = sub_1C529D31C();
      v17 = [v34 initWithCoordinate:v35 altitude:v25 horizontalAccuracy:v27 verticalAccuracy:v29 timestamp:{v31, v33}];

      (*(v21 + 8))(v22, v23);
      (*(v20 + 8))(v18, v19);
      sub_1C5259230(v38, &qword_1EC156298);
    }

    v36 = v0[1];

    return v36(v17);
  }
}

uint64_t sub_1C5260FE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1C5261450;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_1C526111C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C526111C()
{
  v1 = v0[13];
  sub_1C5261818(v0[18], v0[12]);

  sub_1C5259230(v1, &qword_1EC156298);
  sub_1C526609C(v0[12], v0[13]);
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_1C525F29C(v0[13], v2, &qword_1EC156298);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1C5259230(v0[11], &qword_1EC156298);
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C529D64C();
    __swift_project_value_buffer(v5, qword_1EC156ED8);
    v6 = sub_1C529D62C();
    v7 = sub_1C529D88C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[13];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5126000, v6, v7, "Location is nil when trying to call locations(for:reverseGeocode:)", v10, 2u);
      MEMORY[0x1C69445C0](v10, -1, -1);
    }

    sub_1C5259230(v9, &qword_1EC156298);
    v11 = 0;
  }

  else
  {
    v32 = v0[13];
    v12 = v0[10];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    (*(v14 + 32))(v12, v0[11], v13);
    sub_1C529D5EC();
    v19 = v18;
    sub_1C529D5FC();
    v21 = v20;
    sub_1C529D5DC();
    v23 = v22;
    sub_1C529D5CC();
    v25 = v24;
    sub_1C529D5BC();
    v27 = v26;
    sub_1C529D60C();
    sub_1C529D36C();
    v28 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v29 = sub_1C529D31C();
    v11 = [v28 initWithCoordinate:v29 altitude:v19 horizontalAccuracy:v21 verticalAccuracy:v23 timestamp:{v25, v27}];

    (*(v15 + 8))(v16, v17);
    (*(v14 + 8))(v12, v13);
    sub_1C5259230(v32, &qword_1EC156298);
  }

  v30 = v0[1];

  return v30(v11);
}

uint64_t sub_1C5261450()
{

  if (qword_1EC155DB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C529D64C();
  __swift_project_value_buffer(v1, qword_1EC156ED8);
  v2 = sub_1C529D62C();
  v3 = sub_1C529D88C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5126000, v2, v3, "Unable to fetch a location. cachedLocation failed.", v6, 2u);
    MEMORY[0x1C69445C0](v6, -1, -1);
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  sub_1C525F29C(v0[13], v7, &qword_1EC156298);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C5259230(v0[11], &qword_1EC156298);
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1EC156ED8);
    v10 = sub_1C529D62C();
    v11 = sub_1C529D88C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[13];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C5126000, v10, v11, "Location is nil when trying to call locations(for:reverseGeocode:)", v14, 2u);
      MEMORY[0x1C69445C0](v14, -1, -1);
    }

    sub_1C5259230(v13, &qword_1EC156298);
    v15 = 0;
  }

  else
  {
    v36 = v0[13];
    v16 = v0[10];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v21 = v0[5];
    (*(v18 + 32))(v16, v0[11], v17);
    sub_1C529D5EC();
    v23 = v22;
    sub_1C529D5FC();
    v25 = v24;
    sub_1C529D5DC();
    v27 = v26;
    sub_1C529D5CC();
    v29 = v28;
    sub_1C529D5BC();
    v31 = v30;
    sub_1C529D60C();
    sub_1C529D36C();
    v32 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v33 = sub_1C529D31C();
    v15 = [v32 initWithCoordinate:v33 altitude:v23 horizontalAccuracy:v25 verticalAccuracy:v27 timestamp:{v29, v31}];

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v16, v17);
    sub_1C5259230(v36, &qword_1EC156298);
  }

  v34 = v0[1];

  return v34(v15);
}

uint64_t sub_1C5261818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C529D9DC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1C5265DC8(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1C529D61C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1C5261A5C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1C529D72C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1C52667F4;

  return MapsSuggestionsRealFindMyConnector.location(for:)(v5, v7);
}

uint64_t MapsSuggestionsRealFindMyConnector.latestLocation(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1C529D3AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1C529D61C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1C529D59C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1C529D5AC();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156298);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5261D58, 0, 0);
}

uint64_t sub_1C5261D58()
{
  v1 = v0[4];
  v2 = *(v0[9] + 56);
  v2(v0[19], 1, 1, v0[8]);
  v3 = *(v1 + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector_findMySession);
  v0[20] = v3;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562A0);
    sub_1C529D52C();
    v4 = swift_allocObject();
    v0[21] = v4;
    *(v4 + 16) = xmmword_1C52A91A0;

    sub_1C5265F98(MEMORY[0x1E69E7CC0]);
    sub_1C529D51C();
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      sub_1C529D72C();
    }

    (*(v0[12] + 104))(v0[13], *MEMORY[0x1E699C948], v0[11]);
    sub_1C529D58C();
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_1C52622F8;
    v20 = v0[16];

    return MEMORY[0x1EEE04568](v4, 0, v20);
  }

  else
  {
    v7 = v0[18];
    v8 = v0[8];
    sub_1C5259230(v0[19], &qword_1EC156298);
    v2(v7, 1, 1, v8);
    sub_1C526609C(v0[18], v0[19]);
    v9 = v0[17];
    v10 = v0[8];
    v11 = v0[9];
    sub_1C525F29C(v0[19], v9, &qword_1EC156298);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1C5259230(v0[17], &qword_1EC156298);
      if (qword_1EC155DB8 != -1)
      {
        swift_once();
      }

      v12 = sub_1C529D64C();
      __swift_project_value_buffer(v12, qword_1EC156ED8);
      v13 = sub_1C529D62C();
      v14 = sub_1C529D88C();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[19];
      if (v15)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C5126000, v13, v14, "Location is nil when trying to call cachedLocation(for:includeAddress:)", v17, 2u);
        MEMORY[0x1C69445C0](v17, -1, -1);
      }

      sub_1C5259230(v16, &qword_1EC156298);
      v18 = 0;
    }

    else
    {
      v41 = v0[19];
      v22 = v0[9];
      v21 = v0[10];
      v24 = v0[7];
      v23 = v0[8];
      v26 = v0[5];
      v25 = v0[6];
      (*(v22 + 32))(v21, v0[17], v23);
      sub_1C529D5EC();
      v28 = v27;
      sub_1C529D5FC();
      v30 = v29;
      sub_1C529D5DC();
      v32 = v31;
      sub_1C529D5CC();
      v34 = v33;
      sub_1C529D5BC();
      v36 = v35;
      sub_1C529D60C();
      sub_1C529D36C();
      v37 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v38 = sub_1C529D31C();
      v18 = [v37 initWithCoordinate:v38 altitude:v28 horizontalAccuracy:v30 verticalAccuracy:v32 timestamp:{v34, v36}];

      (*(v25 + 8))(v24, v26);
      (*(v22 + 8))(v21, v23);
      sub_1C5259230(v41, &qword_1EC156298);
    }

    v39 = v0[1];

    return v39(v18);
  }
}

uint64_t sub_1C52622F8(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1C526281C;
  }

  else
  {
    v4[24] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1C52624D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C52624D0()
{
  v1 = v0[19];
  sub_1C5261818(v0[24], v0[18]);

  sub_1C5259230(v1, &qword_1EC156298);
  sub_1C526609C(v0[18], v0[19]);
  v2 = v0[17];
  v3 = v0[8];
  v4 = v0[9];
  sub_1C525F29C(v0[19], v2, &qword_1EC156298);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1C5259230(v0[17], &qword_1EC156298);
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C529D64C();
    __swift_project_value_buffer(v5, qword_1EC156ED8);
    v6 = sub_1C529D62C();
    v7 = sub_1C529D88C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[19];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5126000, v6, v7, "Location is nil when trying to call cachedLocation(for:includeAddress:)", v10, 2u);
      MEMORY[0x1C69445C0](v10, -1, -1);
    }

    sub_1C5259230(v9, &qword_1EC156298);
    v11 = 0;
  }

  else
  {
    v32 = v0[19];
    v13 = v0[9];
    v12 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    (*(v13 + 32))(v12, v0[17], v14);
    sub_1C529D5EC();
    v19 = v18;
    sub_1C529D5FC();
    v21 = v20;
    sub_1C529D5DC();
    v23 = v22;
    sub_1C529D5CC();
    v25 = v24;
    sub_1C529D5BC();
    v27 = v26;
    sub_1C529D60C();
    sub_1C529D36C();
    v28 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v29 = sub_1C529D31C();
    v11 = [v28 initWithCoordinate:v29 altitude:v19 horizontalAccuracy:v21 verticalAccuracy:v23 timestamp:{v25, v27}];

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    sub_1C5259230(v32, &qword_1EC156298);
  }

  v30 = v0[1];

  return v30(v11);
}

uint64_t sub_1C526281C()
{
  if (qword_1EC155DB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C529D64C();
  __swift_project_value_buffer(v1, qword_1EC156ED8);
  v2 = sub_1C529D62C();
  v3 = sub_1C529D88C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5126000, v2, v3, "Unable to fetch latestLocation(). cachedLocation failed.", v6, 2u);
    MEMORY[0x1C69445C0](v6, -1, -1);
  }

  v7 = v0[17];
  v8 = v0[8];
  v9 = v0[9];
  sub_1C525F29C(v0[19], v7, &qword_1EC156298);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C5259230(v0[17], &qword_1EC156298);
    if (qword_1EC155DB8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1EC156ED8);
    v10 = sub_1C529D62C();
    v11 = sub_1C529D88C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[19];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C5126000, v10, v11, "Location is nil when trying to call cachedLocation(for:includeAddress:)", v14, 2u);
      MEMORY[0x1C69445C0](v14, -1, -1);
    }

    sub_1C5259230(v13, &qword_1EC156298);
    v15 = 0;
  }

  else
  {
    v36 = v0[19];
    v17 = v0[9];
    v16 = v0[10];
    v19 = v0[7];
    v18 = v0[8];
    v21 = v0[5];
    v20 = v0[6];
    (*(v17 + 32))(v16, v0[17], v18);
    sub_1C529D5EC();
    v23 = v22;
    sub_1C529D5FC();
    v25 = v24;
    sub_1C529D5DC();
    v27 = v26;
    sub_1C529D5CC();
    v29 = v28;
    sub_1C529D5BC();
    v31 = v30;
    sub_1C529D60C();
    sub_1C529D36C();
    v32 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v33 = sub_1C529D31C();
    v15 = [v32 initWithCoordinate:v33 altitude:v23 horizontalAccuracy:v25 verticalAccuracy:v27 timestamp:{v29, v31}];

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    sub_1C5259230(v36, &qword_1EC156298);
  }

  v34 = v0[1];

  return v34(v15);
}

uint64_t sub_1C5262D74(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1C529D72C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1C5262E48;

  return MapsSuggestionsRealFindMyConnector.latestLocation(for:)(v5, v7);
}

uint64_t sub_1C5262E48(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id sub_1C526300C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1C529D71C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C52630A0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1C5263100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C529D72C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C5263188(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MapsSuggestionsFakeFindMyConnector.friends.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *MapsSuggestionsFakeFindMyConnector.cachedLocation.getter()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MapsSuggestionsFakeFindMyConnector.cachedLocation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MapsSuggestionsFakeFindMyConnector.refreshedLocation.getter()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C526362C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void MapsSuggestionsFakeFindMyConnector.refreshedLocation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MapsSuggestionsFakeFindMyConnector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsFakeFindMyConnector.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_uniqueName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  *&v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation] = 0;
  v4 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation;
  *&v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation] = 0;
  *&v0[OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v0[v3] = 0;
  swift_beginAccess();
  *&v0[v4] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall MapsSuggestionsFakeFindMyConnector.nilCachedLocation()()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

Swift::Void __swiftcall MapsSuggestionsFakeFindMyConnector.setCachedLocation(_:_:)(Swift::Double a1, Swift::Double a2)
{
  v3 = v2;
  v6 = sub_1C529D3AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C529D38C();
  v10 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v11 = sub_1C529D31C();
  v12 = [v10 initWithCoordinate:v11 altitude:a1 horizontalAccuracy:a2 verticalAccuracy:0.0 timestamp:{0.0, 0.0}];

  (*(v7 + 8))(v9, v6);
  v13 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v14 = *(v3 + v13);
  *(v3 + v13) = v12;
}

Swift::Void __swiftcall MapsSuggestionsFakeFindMyConnector.expireCachedLocation()()
{
  v1 = v0;
  v2 = sub_1C529D3AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1C529D38C();
  sub_1C529D30C();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v11 = sub_1C529D31C();
  v12 = [v10 initWithCoordinate:v11 altitude:37.323 horizontalAccuracy:-122.0322 verticalAccuracy:0.0 timestamp:{0.0, 0.0}];

  v9(v8, v2);
  v13 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v14 = *(v1 + v13);
  *(v1 + v13) = v12;
}

Swift::Void __swiftcall MapsSuggestionsFakeFindMyConnector.setTestFriends()()
{
  v1 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends;
  swift_beginAccess();
  *(v0 + v1) = &unk_1F4449EB8;
}

uint64_t sub_1C5264044()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1C5264248(const void *a1, void *a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C52642C0, 0, 0);
}

uint64_t sub_1C52642C0()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();

  v3 = sub_1C529D7CC();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C5264534(int a1, void *aBlock, void *a3)
{
  *(v3 + 40) = a3;
  *(v3 + 48) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C52667E4, 0, 0);
}

uint64_t sub_1C52645D0()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);
  v4 = v3;

  return v6(v3);
}

uint64_t sub_1C52647EC(int a1, void *aBlock, void *a3)
{
  *(v3 + 40) = a3;
  *(v3 + 48) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C5264868, 0, 0);
}

uint64_t sub_1C5264868()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v4 = *&v2[v3];

  (v1)[2](v1, v4);
  _Block_release(v1);

  v5 = v0[1];

  return v5();
}

id sub_1C526491C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C52649C4()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EC156ED8);
  __swift_project_value_buffer(v0, qword_1EC156ED8);
  return sub_1C529D63C();
}

uint64_t sub_1C5264A48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C524F814;

  return v6();
}

uint64_t sub_1C5264B30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C524F4A4;

  return v7();
}

uint64_t sub_1C5264C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C525F29C(a3, v23 - v10, &unk_1EC156340);
  v12 = sub_1C529D85C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C5259230(v11, &unk_1EC156340);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C529D84C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C529D82C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C529D75C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1C5259230(a3, &unk_1EC156340);

    return v21;
  }

LABEL_8:
  sub_1C5259230(a3, &unk_1EC156340);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C5264F14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C52667EC;

  return v6(a1);
}

uint64_t sub_1C526500C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C5265104;

  return v6(a1);
}

uint64_t sub_1C5265104()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1C52651FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

uint64_t sub_1C5265280(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C529DBDC();
  sub_1C529D76C();
  v8 = sub_1C529DBFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C529DB5C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C5265630(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C52653D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562D8);
  result = sub_1C529DA1C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C529DBDC();
      sub_1C529D76C();
      result = sub_1C529DBFC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C5265630(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C52653D0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C52657B0();
      goto LABEL_16;
    }

    sub_1C526590C();
  }

  v10 = *v4;
  sub_1C529DBDC();
  sub_1C529D76C();
  result = sub_1C529DBFC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C529DB5C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C529DB6C();
  __break(1u);
  return result;
}

void *sub_1C52657B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562D8);
  v2 = *v0;
  v3 = sub_1C529DA0C();
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

uint64_t sub_1C526590C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562D8);
  result = sub_1C529DA1C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C529DBDC();

      sub_1C529D76C();
      result = sub_1C529DBFC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *sub_1C5265B44(char *a1, int64_t a2, char a3)
{
  result = sub_1C5265B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5265B64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C5265C70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C5265DC8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 56);
  v7 = sub_1C529D61C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1C5265E88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6943310](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C5265280(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C5265F20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1C5265280(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1C5265F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1562C8);
    v3 = sub_1C529DB1C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C525E3B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C526609C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5266154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C52647EC(v2, v3, v4);
}

uint64_t sub_1C5266208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C524F814;

  return sub_1C5264F14(a1, v4);
}

uint64_t sub_1C52662C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C5264534(v2, v3, v4);
}

uint64_t sub_1C5266374()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C524F4A4;

  return sub_1C5264248(v2, v3);
}

uint64_t sub_1C5266420()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C5262D74(v2, v3, v4);
}

uint64_t sub_1C52664D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C524F814;

  return sub_1C5261A5C(v2, v3, v4);
}

uint64_t objectdestroy_52Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C52665C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C524F814;

  return sub_1C5260784(v2, v3);
}

uint64_t sub_1C5266674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C524F814;

  return sub_1C526500C(a1, v4);
}

uint64_t sub_1C526672C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C524F4A4;

  return sub_1C526500C(a1, v4);
}

id MapsSuggestionsContactActivityDeduper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsContactActivityDeduper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsContactActivityDeduper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MapsSuggestionsContactActivityDeduper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsContactActivityDeduper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C52668FC()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EC156EF0);
  __swift_project_value_buffer(v0, qword_1EC156EF0);
  return sub_1C529D63C();
}

uint64_t sub_1C526697C(void *a1, void *a2)
{
  if (!MapsSuggestionsEntriesAreBothOfType(24, a1, a2))
  {
    return 0;
  }

  v4 = [a1 uniqueIdentifier];
  v5 = sub_1C529D72C();
  v7 = v6;

  v8 = [a2 uniqueIdentifier];
  v9 = sub_1C529D72C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1C529DB5C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (isSharingStopped(a2))
  {
    return 0;
  }

  if (isLikelyMeetup(a1) && isRecentlyShared(a2))
  {
    return 1;
  }

  if (qword_1EC155DC0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C529D64C();
  __swift_project_value_buffer(v16, qword_1EC156EF0);
  v17 = a1;
  v18 = a2;
  v19 = sub_1C529D62C();
  v20 = sub_1C529D87C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315394;
    v23 = [v17 title];
    v24 = sub_1C529D72C();
    v26 = v25;

    v27 = sub_1C524E7F4(v24, v26, &v33);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = [v18 title];
    v29 = sub_1C529D72C();
    v31 = v30;

    v32 = sub_1C524E7F4(v29, v31, &v33);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_1C5126000, v19, v20, "Replacing existing entry %s with %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v22, -1, -1);
    MEMORY[0x1C69445C0](v21, -1, -1);
  }

  v14 = 1;
  [v17 mergeFromSuggestionEntry:v18 behavior:1];
  return v14;
}

uint64_t sub_1C5266C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1C527835C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1C525E3B8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1C52787CC();
        v16 = v18;
      }

      result = sub_1C5277EA8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1C5266D8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C525EF48(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156410);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = (v3 + 24);
  *a1 = v3;
  *(v3 + 16) = v2;
  v5 = (v3 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1C526F8D4(v5);
  os_unfair_lock_unlock(v4);
}

void sub_1C5266E40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1C529D3AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  if (a2)
  {
    v12 = *v2;
    os_unfair_lock_lock(*v2 + 6);
    v13 = *&v12[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v12 + 6);
    if (!v13)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v13;
    v15 = sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, 0xD000000000000013, 0x80000001C52E8610, isUniquelyReferenced_nonNull_native);
    MEMORY[0x1EEE9AC00](v15);
    *(&v27 - 2) = &v28;
    os_unfair_lock_lock(v12 + 6);
    sub_1C526F7C0(&v12[4]._os_unfair_lock_opaque);
LABEL_6:
    os_unfair_lock_unlock(v12 + 6);

    os_unfair_lock_lock(v12 + 6);
    v25 = *&v12[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v12 + 6);
    if (v25)
    {
      sub_1C52671BC(v25);

      v26 = sub_1C529D6FC();

      GEOConfigSetSyncDictionary();

      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1C529D39C();
  sub_1C529D30C();
  v16 = *(v6 + 8);
  v16(v9, v5);
  v17 = sub_1C529D31C();
  v16(v11, v5);
  v18 = MapsSuggestionsAMPMStringFromDate(v17);

  v19 = sub_1C529D72C();
  v21 = v20;
  v12 = *v3;
  os_unfair_lock_lock(*v3 + 6);
  v22 = *&v12[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v12 + 6);
  if (v22)
  {

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v22;
    v24 = sub_1C527835C(v19, v21, 0xD000000000000013, 0x80000001C52E8610, v23);
    MEMORY[0x1EEE9AC00](v24);
    *(&v27 - 2) = &v28;
    os_unfair_lock_lock(v12 + 6);
    sub_1C526F8D4(&v12[4]._os_unfair_lock_opaque);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1C52671BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156360);
    v2 = sub_1C529DB1C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C52584A4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C52584A4(v29, v30);
    result = sub_1C529D9FC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1C52584A4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1C5267484(unsigned __int8 a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v224 = a8;
  v230 = a7;
  v225 = a6;
  v233 = a5;
  v234 = a4;
  v235 = a3;
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v227 = &v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v226 = &v221 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v229 = &v221 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v232 = &v221 - v22;
  v241 = sub_1C529D3AC();
  v23 = *(v241 - 8);
  v24 = MEMORY[0x1EEE9AC00](v241);
  v223 = &v221 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v236 = &v221 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v228 = &v221 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v231 = &v221 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v237 = &v221 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v221 - v34;
  v36 = sub_1C529D24C();
  v239 = *(v36 - 8);
  v240 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v238 = &v221 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C529D72C();
  v40 = v39;
  if (v14 == 2)
  {
    v41 = *v11;
    os_unfair_lock_lock(*v11 + 6);
    v42 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v42)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v42;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v38, v40, isUniquelyReferenced_nonNull_native);

    MEMORY[0x1EEE9AC00](v44);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  }

  else
  {
    v41 = *v11;
    os_unfair_lock_lock(*v11 + 6);
    v45 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    v244[0] = v45;
    if (!v45)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (a1)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v46 = 0xE200000000000000;
    }

    if (a1)
    {
      v47 = 7562585;
    }

    else
    {
      v47 = 28494;
    }

    v48 = sub_1C5266C84(v47, v46, v38, v40);
    v243[0] = v244[0];
    MEMORY[0x1EEE9AC00](v48);
    *(&v221 - 2) = v243;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v41 + 6);

  if (a2 == 2)
  {
    v49 = sub_1C529D72C();
    v51 = v50;
    os_unfair_lock_lock(v41 + 6);
    v52 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v52)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v52;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v49, v51, v53);

    MEMORY[0x1EEE9AC00](v54);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);
  }

  else
  {
    v55 = sub_1C529D72C();
    v57 = v56;
    if (a2)
    {
      BOOL = GEOConfigGetBOOL();
      if (BOOL)
      {
        v59 = 0x65766F202C736559;
      }

      else
      {
        v59 = 7562585;
      }

      if (BOOL)
      {
        v60 = 0xEE006E6564697272;
      }

      else
      {
        v60 = 0xE300000000000000;
      }
    }

    else
    {
      v60 = 0xE200000000000000;
      v59 = 28494;
    }

    os_unfair_lock_lock(v41 + 6);
    v61 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    v244[0] = v61;
    if (!v61)
    {
      goto LABEL_89;
    }

    v62 = sub_1C5266C84(v59, v60, v55, v57);
    v243[0] = v244[0];
    MEMORY[0x1EEE9AC00](v62);
    *(&v221 - 2) = v243;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);
  }

  v63 = v239;
  sub_1C525F29C(v235, v35, &qword_1EC1566A0);
  v64 = (*(v63 + 48))(v35, 1, v240);
  v242 = v23;
  if (v64 == 1)
  {
    sub_1C5259230(v35, &qword_1EC1566A0);
    v65 = sub_1C529D72C();
    v67 = v66;
    os_unfair_lock_lock(v41 + 6);
    v68 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v68)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v69 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v68;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v65, v67, v69);

    MEMORY[0x1EEE9AC00](v70);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    v71 = v241;
    os_unfair_lock_unlock(v41 + 6);
  }

  else
  {
    v235 = 0;
    (*(v63 + 32))();
    v221 = sub_1C529D72C();
    v222 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1C52A95F0;
    v74 = v237;
    sub_1C529D22C();
    v75 = sub_1C529D31C();
    v76 = *(v23 + 8);
    v77 = v241;
    v76(v74, v241);
    v78 = NSStringFromMapsSuggestionsEventTime(v75);

    v79 = sub_1C529D72C();
    v81 = v80;

    *(v73 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1C526F76C();
    *(v73 + 64) = v82;
    *(v73 + 32) = v79;
    *(v73 + 40) = v81;
    sub_1C529D20C();
    v83 = sub_1C529D31C();
    v76(v74, v77);
    v84 = NSStringFromMapsSuggestionsEventTime(v83);

    v85 = sub_1C529D72C();
    v87 = v86;

    *(v73 + 96) = MEMORY[0x1E69E6158];
    *(v73 + 104) = v82;
    *(v73 + 72) = v85;
    *(v73 + 80) = v87;
    v88 = sub_1C529D73C();
    v90 = v89;
    os_unfair_lock_lock(v41 + 6);
    v91 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v91)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v92 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v91;
    sub_1C527835C(v88, v90, v221, v222, v92);

    MEMORY[0x1EEE9AC00](v93);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    v94 = v235;
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    if (v94)
    {
      goto LABEL_100;
    }

    os_unfair_lock_unlock(v41 + 6);
    (*(v239 + 8))(v238, v240);

    v71 = v241;
    v23 = v242;
  }

  v95 = v234;
  if (v234)
  {
    v96 = sub_1C529D72C();
    v98 = v97;
    v99 = v95;
    v100 = [v99 preferredName];
    if (v100)
    {
      v101 = v100;
      v102 = sub_1C529D72C();
      v104 = v103;
    }

    else
    {
      v102 = 0;
      v104 = 0;
    }

    os_unfair_lock_lock(v41 + 6);
    v111 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    v244[0] = v111;
    if (!v111)
    {
      goto LABEL_83;
    }

    v112 = sub_1C5266C84(v102, v104, v96, v98);
    v243[0] = v244[0];
    MEMORY[0x1EEE9AC00](v112);
    *(&v221 - 2) = v243;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);

    v23 = v242;
  }

  else
  {
    v105 = sub_1C529D72C();
    v107 = v106;
    os_unfair_lock_lock(v41 + 6);
    v108 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v108)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v109 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v108;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v105, v107, v109);

    MEMORY[0x1EEE9AC00](v110);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);
  }

  v113 = v232;
  sub_1C525F29C(v233, v232, &unk_1EC156760);
  v239 = *(v23 + 48);
  v114 = (v239)(v113, 1, v71);
  v240 = v23 + 48;
  if (v114 == 1)
  {
    sub_1C5259230(v113, &unk_1EC156760);
    v115 = sub_1C529D72C();
    v117 = v116;
    os_unfair_lock_lock(v41 + 6);
    v118 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v118)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v119 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v118;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v115, v117, v119);

    MEMORY[0x1EEE9AC00](v120);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);

    v121 = v230;
    if (v230)
    {
      goto LABEL_45;
    }

LABEL_51:
    v139 = sub_1C529D72C();
    v141 = v140;
    os_unfair_lock_lock(v41 + 6);
    v142 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v142)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v143 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v142;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v139, v141, v143);

    MEMORY[0x1EEE9AC00](v144);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);

    goto LABEL_54;
  }

  (*(v23 + 32))(v231, v113, v71);
  v128 = sub_1C529D72C();
  v130 = v129;
  v131 = sub_1C529D31C();
  v132 = MapsSuggestionsAMPMStringFromDate(v131);

  v133 = sub_1C529D72C();
  v135 = v134;
  os_unfair_lock_lock(v41 + 6);
  v136 = *&v41[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v41 + 6);
  if (!v136)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v137 = swift_isUniquelyReferenced_nonNull_native();
  v244[0] = v136;
  sub_1C527835C(v133, v135, v128, v130, v137);

  MEMORY[0x1EEE9AC00](v138);
  *(&v221 - 2) = v244;
  os_unfair_lock_lock(v41 + 6);
  sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v41 + 6);
  v71 = v241;
  v23 = v242;
  (*(v242 + 8))(v231, v241);

  v121 = v230;
  if (!v230)
  {
    goto LABEL_51;
  }

LABEL_45:
  v122 = sub_1C529D72C();
  v124 = v123;

  os_unfair_lock_lock(v41 + 6);
  v125 = *&v41[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v41 + 6);
  if (!v125)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v126 = swift_isUniquelyReferenced_nonNull_native();
  v244[0] = v125;
  sub_1C527835C(v225, v121, v122, v124, v126);

  MEMORY[0x1EEE9AC00](v127);
  *(&v221 - 2) = v244;
  os_unfair_lock_lock(v41 + 6);
  sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v41 + 6);

  v23 = v242;
LABEL_54:
  if (a9)
  {
    v145 = sub_1C529D72C();
    v147 = v146;

    os_unfair_lock_lock(v41 + 6);
    v148 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v148)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v149 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v148;
    sub_1C527835C(v224, a9, v145, v147, v149);

    MEMORY[0x1EEE9AC00](v150);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);

    v23 = v242;
    v151 = v229;
  }

  else
  {
    v152 = sub_1C529D72C();
    v154 = v153;
    os_unfair_lock_lock(v41 + 6);
    v155 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v155)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v156 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v155;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v152, v154, v156);

    MEMORY[0x1EEE9AC00](v157);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v41 + 6);

    v151 = v229;
  }

  v158 = v239;
  sub_1C525F29C(a10, v151, &unk_1EC156760);
  v159 = v158(v151, 1, v71);
  v235 = a10;
  if (v159 == 1)
  {
    sub_1C5259230(v151, &unk_1EC156760);
    v160 = sub_1C529D72C();
    v162 = v161;
    os_unfair_lock_lock(v41 + 6);
    v163 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v163)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v164 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v163;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v160, v162, v164);

    MEMORY[0x1EEE9AC00](v165);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    v238 = 0;
    os_unfair_lock_unlock(v41 + 6);

    v166 = v236;
    v168 = v226;
    v167 = v227;
  }

  else
  {
    (*(v23 + 32))(v228, v151, v71);
    v169 = sub_1C529D72C();
    v171 = v170;
    v172 = sub_1C529D31C();
    v173 = NSStringFromMapsSuggestionsEventTime(v172);

    v174 = sub_1C529D72C();
    v176 = v175;
    os_unfair_lock_lock(v41 + 6);
    v177 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v177)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v178 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v177;
    sub_1C527835C(v174, v176, v169, v171, v178);

    MEMORY[0x1EEE9AC00](v179);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    v238 = 0;
    os_unfair_lock_unlock(v41 + 6);
    v71 = v241;
    v23 = v242;
    (*(v242 + 8))(v228, v241);

    v166 = v236;
    v168 = v226;
    v167 = v227;
  }

  v180 = v239;
  sub_1C525F29C(a11, v168, &unk_1EC156760);
  if (v180(v168, 1, v71) == 1)
  {
    v167 = v168;
    goto LABEL_72;
  }

  v181 = v23;
  v182 = *(v23 + 32);
  v182(v166, v168, v71);
  sub_1C525F29C(v235, v167, &unk_1EC156760);
  if (v180(v167, 1, v71) == 1)
  {
    (*(v181 + 8))(v166, v71);
    v23 = v181;
LABEL_72:
    sub_1C5259230(v167, &unk_1EC156760);
    v183 = sub_1C529D72C();
    v185 = v184;
    os_unfair_lock_lock(v41 + 6);
    v186 = *&v41[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v41 + 6);
    if (!v186)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v187 = swift_isUniquelyReferenced_nonNull_native();
    v244[0] = v186;
    sub_1C527835C(0x776F6E6B6E55207ELL, 0xEB000000007E206ELL, v183, v185, v187);

    MEMORY[0x1EEE9AC00](v188);
    *(&v221 - 2) = v244;
    os_unfair_lock_lock(v41 + 6);
    v189 = v238;
    sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
    if (!v189)
    {
      os_unfair_lock_unlock(v41 + 6);
      goto LABEL_78;
    }

LABEL_100:
    os_unfair_lock_unlock(v41 + 6);
    __break(1u);
    return;
  }

  v182(v223, v167, v71);
  v190 = sub_1C529D72C();
  v192 = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1C52A95F0;
  v194 = sub_1C529D31C();
  v195 = NSStringFromMapsSuggestionsEventTime(v194);

  v196 = sub_1C529D72C();
  v198 = v197;

  *(v193 + 56) = MEMORY[0x1E69E6158];
  *(v193 + 64) = sub_1C526F76C();
  *(v193 + 32) = v196;
  *(v193 + 40) = v198;
  sub_1C529D2FC();
  v199 = MEMORY[0x1E69E6438];
  *(v193 + 96) = MEMORY[0x1E69E63B0];
  *(v193 + 104) = v199;
  *(v193 + 72) = v200;
  v201 = sub_1C529D73C();
  v203 = v202;
  os_unfair_lock_lock(v41 + 6);
  v204 = *&v41[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v41 + 6);
  if (!v204)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v205 = swift_isUniquelyReferenced_nonNull_native();
  v244[0] = v204;
  sub_1C527835C(v201, v203, v190, v192, v205);

  MEMORY[0x1EEE9AC00](v206);
  *(&v221 - 2) = v244;
  os_unfair_lock_lock(v41 + 6);
  v207 = v238;
  sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  if (v207)
  {
    goto LABEL_100;
  }

  os_unfair_lock_unlock(v41 + 6);
  v71 = v241;
  v23 = v242;
  v208 = *(v242 + 8);
  v208(v223, v241);
  v208(v236, v71);
LABEL_78:

  v209 = sub_1C529D72C();
  v211 = v210;
  v212 = v237;
  sub_1C529D39C();
  v213 = sub_1C529D31C();
  (*(v23 + 8))(v212, v71);
  v214 = MapsSuggestionsAMPMStringFromDate(v213);

  v215 = sub_1C529D72C();
  v217 = v216;
  os_unfair_lock_lock(v41 + 6);
  v218 = *&v41[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v41 + 6);
  if (!v218)
  {
    __break(1u);
    goto LABEL_82;
  }

  v219 = swift_isUniquelyReferenced_nonNull_native();
  v244[0] = v218;
  sub_1C527835C(v215, v217, v209, v211, v219);

  MEMORY[0x1EEE9AC00](v220);
  *(&v221 - 2) = v244;
  os_unfair_lock_lock(v41 + 6);
  sub_1C526F8D4(&v41[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v41 + 6);
}

uint64_t sub_1C5268EAC()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C5268F80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C5268FE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id sub_1C5269420(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1C529D71C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5269498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C529D72C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_1C5269504(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_1C525F29C(a1 + v8, v7, &unk_1EC156760);
  v9 = sub_1C529D3AC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1C529D31C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

void sub_1C5269664(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1C529D37C();
    v10 = sub_1C529D3AC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1C529D3AC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_1C526F7D8(v9, a1 + v12, &unk_1EC156760);
  swift_endAccess();
}

uint64_t sub_1C5269C30()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5269C90(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_notificationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C5269D28;
}

void sub_1C5269D28(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *MapsSuggestionsDOoM.init(resourceDepot:triggers:conditions:engine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v51 = a1;
  v52 = a4;
  v50 = sub_1C529D8EC();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C529D8CC();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C529D69C();
  MEMORY[0x1EEE9AC00](v10 - 8);

  v11 = &v4[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName];
  *v11 = 0;
  v11[1] = 0;
  v49 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__queue;
  sub_1C5143DC8(0, &qword_1EDC51AF0);
  sub_1C529D68C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C52500B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1562F0);
  sub_1C5250110();
  sub_1C529D9CC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v50);
  *&v4[v49] = sub_1C529D92C();
  v12 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__stateCapture;
  sub_1C525EF48(MEMORY[0x1E69E7CC0]);
  sub_1C5266D8C(&v4[v12]);
  v4[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wasInWindow] = 0;
  v13 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__backupTimerDelay;
  GEOConfigGetDouble();
  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer] = 0;
  *&v4[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination] = 0;
  v15 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__entryTime;
  v16 = sub_1C529D3AC();
  v17 = *(*(v16 - 8) + 56);
  v17(&v5[v15], 1, 1, v16);
  v18 = &v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__windowOverrideListernerBlock];
  *v18 = 0u;
  v18[1] = 0u;
  v19 = &v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverMessage];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverTitle];
  *v20 = 0;
  v20[1] = 0;
  v17(&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastRequestTime], 1, 1, v16);
  v17(&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastResponseTime], 1, 1, v16);
  v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__isInWindow] = 0;
  v21 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindow;
  v22 = sub_1C529D24C();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval;
  GEOConfigGetDouble();
  *&v5[v23] = v24;
  v25 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval_LPM;
  GEOConfigGetDouble();
  *&v5[v25] = v26;
  v27 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leewayWhenDriving;
  GEOConfigGetDouble();
  *&v5[v27] = v28;
  v29 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leeway;
  GEOConfigGetDouble();
  *&v5[v29] = v30;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__scheduledWakeupTime] = 0;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__actualWakeupTime] = 0;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__waitTime] = 0;
  swift_unknownObjectWeakInit();
  v31 = v52;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__resourceDepot] = v51;
  *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine] = v31;
  v32 = type metadata accessor for MapsSuggestionsDOoM();
  v54.receiver = v5;
  v54.super_class = v32;
  swift_unknownObjectRetain();
  v33 = v31;
  v34 = objc_msgSendSuper2(&v54, sel_init);
  sub_1C526B2F0();
  sub_1C526B674();
  sub_1C526ACA4();
  v35 = &v34[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM_uniqueName];
  swift_beginAccess();
  *v35 = 0xD000000000000017;
  *(v35 + 1) = 0x80000001C52E7F40;

  v36 = *&v34[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine];
  v37 = v34;
  v38 = v36;
  sub_1C526ED30(v37, v38, "Registering %s for DOoM updates", &selRef_registerObserver_handler_);

  type metadata accessor for TimerClass();
  v39 = *&v37[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__queue];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v39;

  v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v43 = sub_1C529D71C();
  aBlock[4] = sub_1C526EF54;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_3;
  v44 = _Block_copy(aBlock);
  v45 = [v42 initWithName:v43 queue:v41 block:v44];

  swift_unknownObjectRelease();
  _Block_release(v44);

  v46 = *&v37[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer];
  *&v37[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer] = v45;

  return v37;
}

void sub_1C526A4C0()
{
  v0 = sub_1C529D3AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine;
    v7 = [*(*(Strong + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition) isTrue];
    v8 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leewayWhenDriving;
    if (!v7)
    {
      v8 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leeway;
    }

    v9 = *&v5[*v8];
    sub_1C529D39C();
    sub_1C529D2CC();
    v11 = v10;
    (*(v1 + 8))(v3, v0);
    *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__actualWakeupTime] = v11;
    v12 = sub_1C526B92C(v7, v11 - *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__scheduledWakeupTime]);
    v13 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__waitTime;
    *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__waitTime] = v12;
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v14 = sub_1C529D64C();
    __swift_project_value_buffer(v14, qword_1EDC51F30);
    v15 = sub_1C529D62C();
    v16 = sub_1C529D87C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5126000, v15, v16, "⏰ Timer fired! ⏰", v17, 2u);
      MEMORY[0x1C69445C0](v17, -1, -1);
    }

    if (v7)
    {
      v18 = 0xD00000000000002BLL;
    }

    else
    {
      v18 = 0xD000000000000036;
    }

    if (v7)
    {
      v19 = "@NSDictionary8@?0";
    }

    else
    {
      v19 = "onseTime";
    }

    v20 = v5;
    v21 = sub_1C529D62C();
    v22 = sub_1C529D87C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v6;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1C524E7F4(v18, v19 | 0x8000000000000000, aBlock);
      *(v24 + 12) = 2048;
      *(v24 + 14) = *&v5[v13];
      _os_log_impl(&dword_1C5126000, v21, v22, "Sending analytics for %s with waitTime:%f seconds", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1C69445C0](v25, -1, -1);
      v26 = v24;
      v6 = v35;
      MEMORY[0x1C69445C0](v26, -1, -1);
    }

    v27 = sub_1C529D71C();

    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    *(v28 + 24) = v9;
    *(v28 + 32) = v7;
    aBlock[4] = sub_1C526F868;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C526AB5C;
    aBlock[3] = &block_descriptor_110;
    v29 = _Block_copy(aBlock);
    v30 = v20;

    AnalyticsSendEventLazy();
    _Block_release(v29);

    v31 = *&v5[v6];
    sub_1C5284BAC();
  }

  else
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v32 = sub_1C529D64C();
    __swift_project_value_buffer(v32, qword_1EDC51F30);
    v31 = sub_1C529D62C();
    v33 = sub_1C529D88C();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C5126000, v31, v33, "Self went away in the timer block", v34, 2u);
      MEMORY[0x1C69445C0](v34, -1, -1);
    }
  }
}

unint64_t sub_1C526A9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1563F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C52A9600;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C52E8770;
  sub_1C5143DC8(0, &qword_1EC156400);
  *(inited + 48) = sub_1C529D95C();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001C52E8790;
  *(inited + 72) = sub_1C529D95C();
  *(inited + 80) = 0x656D695474696177;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1C529D95C();
  *(inited + 104) = 0x79617765656CLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_1C529D95C();
  *(inited + 128) = 0x6E69766972447369;
  *(inited + 136) = 0xE900000000000067;
  *(inited + 144) = sub_1C529D96C();
  v1 = sub_1C525F05C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156408);
  swift_arrayDestroy();
  return v1;
}

id sub_1C526AB5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1C5143DC8(0, &qword_1EC1563F0);
    v4 = sub_1C529D6FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C526ACA4()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C526F878;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5254F68;
  aBlock[3] = &block_descriptor_114;
  v2 = _Block_copy(aBlock);

  v3 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v2);
  sub_1C529D9BC();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__windowOverrideListernerBlock;
  swift_beginAccess();
  sub_1C526F7D8(aBlock, v0 + v4, &qword_1EC156128);
  return swift_endAccess();
}

void sub_1C526AE00()
{
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v0 = sub_1C529D64C();
  __swift_project_value_buffer(v0, qword_1EDC51F30);
  v1 = sub_1C529D62C();
  v2 = sub_1C529D87C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v1, v2, "Flipped the OverrideToAlwaysBeInCommuteWindow flag. Let's see if there's a notification. Running DOoM again.", v3, 2u);
    MEMORY[0x1C69445C0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine);

    sub_1C5284BAC();
  }
}

uint64_t sub_1C526AF70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = [*(*(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine) + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition) isTrue];
  v27 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__isInWindow);
  v28 = v13;
  v14 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindow;
  swift_beginAccess();
  sub_1C525F29C(v0 + v14, v12, &qword_1EC1566A0);
  v24 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination);
  v15 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__entryTime;
  swift_beginAccess();
  sub_1C525F29C(v0 + v15, v9, &unk_1EC156760);
  v16 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverTitle);
  v17 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverTitle + 8);
  v18 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverMessage + 8);
  v25 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverMessage);
  v26 = v16;
  v19 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastRequestTime;
  swift_beginAccess();
  sub_1C525F29C(v0 + v19, v7, &unk_1EC156760);
  v20 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastResponseTime;
  swift_beginAccess();
  sub_1C525F29C(v0 + v20, v4, &unk_1EC156760);
  swift_beginAccess();

  v21 = v24;
  v22 = v24;

  sub_1C5267484(v28, v27, v12, v21, v9, v26, v17, v25, v18, v7, v4);
  sub_1C5259230(v4, &unk_1EC156760);
  sub_1C5259230(v7, &unk_1EC156760);
  sub_1C5259230(v9, &unk_1EC156760);
  sub_1C5259230(v12, &qword_1EC1566A0);
  swift_endAccess();
}

uint64_t sub_1C526B2F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-v5];
  *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__isInWindow) = 0;
  v7 = sub_1C529D24C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindow;
  swift_beginAccess();
  sub_1C526F7D8(v6, v0 + v8, &qword_1EC1566A0);
  swift_endAccess();
  v9 = *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination);
  *(v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomDestination) = 0;

  v10 = sub_1C529D3AC();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v12 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__entryTime;
  swift_beginAccess();
  sub_1C526F7D8(v3, v0 + v12, &unk_1EC156760);
  swift_endAccess();
  v13 = (v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverTitle);
  *v13 = 0;
  v13[1] = 0;

  v14 = (v0 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverMessage);
  *v14 = 0;
  v14[1] = 0;

  v11(v3, 1, 1, v10);
  v15 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastRequestTime;
  swift_beginAccess();
  sub_1C526F7D8(v3, v0 + v15, &unk_1EC156760);
  swift_endAccess();
  v11(v3, 1, 1, v10);
  v16 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__lastResponseTime;
  swift_beginAccess();
  sub_1C526F7D8(v3, v0 + v16, &unk_1EC156760);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__stateCapture;
  swift_beginAccess();
  v22 = sub_1C525EF48(MEMORY[0x1E69E7CC0]);
  v18 = *(v0 + v17);
  v21 = &v22;
  os_unfair_lock_lock((v18 + 24));
  sub_1C526F8D4((v18 + 16));
  os_unfair_lock_unlock((v18 + 24));

  return swift_endAccess();
}

void sub_1C526B674()
{
  if (GEOConfigGetBOOL())
  {
    v1 = *&v0[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__backupTimerDelay];

    sub_1C526B9EC(v1);
  }

  else
  {
    swift_beginAccess();
    sub_1C5266E40(0, 1);
    swift_endAccess();
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v2 = sub_1C529D64C();
    __swift_project_value_buffer(v2, qword_1EDC51F30);
    v3 = v0;
    v4 = sub_1C529D62C();
    v5 = sub_1C529D87C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15[0] = v7;
      *v6 = 136315138;
      v8 = *&v3[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__backupTimerDelay];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C52A91B0;
      v10 = MEMORY[0x1E69E63B0];
      v11 = MEMORY[0x1E69E6438];
      *(v9 + 56) = MEMORY[0x1E69E63B0];
      *(v9 + 64) = v11;
      *(v9 + 32) = v8 / 60.0;
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 72) = v8 / 3600.0;
      *(v9 + 136) = v10;
      *(v9 + 144) = v11;
      *(v9 + 112) = v8;
      v12 = sub_1C529D73C();
      v14 = sub_1C524E7F4(v12, v13, v15);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_1C5126000, v4, v5, "Backup timer disabled. Ignoring request to schedule backup timer in %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1C69445C0](v7, -1, -1);
      MEMORY[0x1C69445C0](v6, -1, -1);
    }
  }
}

uint64_t sub_1C526B92C(uint64_t result, double a2)
{
  v3 = 30.0;
  if (result)
  {
    v3 = 5.0;
  }

  v4 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leewayWhenDriving;
  if ((result & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leeway;
  }

  if (*(v2 + *v4) <= a2)
  {
    a2 = *(v2 + *v4);
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v5 = v3 * round(a2 / v3);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1C526B9EC(double a1)
{
  v2 = v1;
  v4 = sub_1C529D3AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56[-v9];
  v11 = [*(*&v1[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine] + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__isDrivingCondition) isTrue];
  v12 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leewayWhenDriving;
  if (!v11)
  {
    v12 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__leeway;
  }

  v13 = *&v1[*v12];
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v14 = sub_1C529D64C();
  __swift_project_value_buffer(v14, qword_1EDC51F30);
  v15 = sub_1C529D62C();
  v16 = sub_1C529D87C();
  v17 = os_log_type_enabled(v15, v16);
  v59 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60[0] = v58;
    *v18 = 67109378;
    *(v18 + 4) = v11;
    *(v18 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C52A91A0;
    v20 = MEMORY[0x1E69E6438];
    *(v19 + 56) = MEMORY[0x1E69E63B0];
    *(v19 + 64) = v20;
    *(v19 + 32) = v13 / 60.0;
    v21 = sub_1C529D73C();
    v23 = v5;
    v24 = v4;
    v25 = sub_1C524E7F4(v21, v22, v60);

    *(v18 + 10) = v25;
    v4 = v24;
    v5 = v23;
    _os_log_impl(&dword_1C5126000, v15, v16, "Driving? %{BOOL}d, Leeway: %s mins", v18, 0x12u);
    v26 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    v2 = v59;
    MEMORY[0x1C69445C0](v26, -1, -1);
    MEMORY[0x1C69445C0](v18, -1, -1);
  }

  sub_1C529D39C();
  sub_1C529D30C();
  v27 = *(v5 + 8);
  v27(v8, v4);
  sub_1C529D2CC();
  v29 = v28;
  v27(v10, v4);
  *&v2[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__scheduledWakeupTime] = v29;
  v30 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer;
  v31 = *&v2[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1C529D62C();
    v34 = sub_1C529D87C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60[0] = v58;
      *v35 = 136315394;
      v57 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1C52A91B0;
      v37 = MEMORY[0x1E69E63B0];
      v38 = MEMORY[0x1E69E6438];
      *(v36 + 56) = MEMORY[0x1E69E63B0];
      *(v36 + 64) = v38;
      *(v36 + 32) = a1 / 60.0;
      *(v36 + 96) = v37;
      *(v36 + 104) = v38;
      *(v36 + 72) = a1 / 3600.0;
      *(v36 + 136) = v37;
      *(v36 + 144) = v38;
      *(v36 + 112) = a1;
      v39 = sub_1C529D73C();
      v41 = v4;
      v42 = sub_1C524E7F4(v39, v40, v60);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      sub_1C529D39C();
      sub_1C529D34C();
      v27(v8, v41);
      v43 = sub_1C529D31C();
      v27(v10, v41);
      v44 = NSStringFromMapsSuggestionsEventTime(v43);

      v45 = sub_1C529D72C();
      v47 = v46;

      v48 = sub_1C524E7F4(v45, v47, v60);

      *(v35 + 14) = v48;
      _os_log_impl(&dword_1C5126000, v33, v57, "Unscheduling the previous timer and registering to run in %s at %s", v35, 0x16u);
      v49 = v58;
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v49, -1, -1);
      MEMORY[0x1C69445C0](v35, -1, -1);
    }

    [v32 scheduleWithTimeInterval:a1 leeway:v13];
    swift_beginAccess();
    sub_1C5266E40(*&a1, 0);
    swift_endAccess();
  }

  else
  {
    v50 = v2;
    v32 = sub_1C529D62C();
    v51 = sub_1C529D89C();

    if (os_log_type_enabled(v32, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = *&v2[v30];
      *(v52 + 4) = v54;
      *v53 = v54;
      v55 = v54;
      _os_log_impl(&dword_1C5126000, v32, v51, "This should not happen! _wakeupTimer cannot be %@ here.", v52, 0xCu);
      sub_1C5259230(v53, &qword_1EC156350);
      MEMORY[0x1C69445C0](v53, -1, -1);
      MEMORY[0x1C69445C0](v52, -1, -1);
    }
  }
}

void sub_1C526C0D8()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  if (v2)
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v3 = sub_1C529D64C();
    __swift_project_value_buffer(v3, qword_1EDC51F30);
    v4 = v0;
    v5 = v0;
    v6 = sub_1C529D62C();
    v7 = sub_1C529D87C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval_LPM;
      v11 = *&v5[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval_LPM];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C52A91B0;
      v13 = MEMORY[0x1E69E63B0];
      v14 = MEMORY[0x1E69E6438];
      *(v12 + 56) = MEMORY[0x1E69E63B0];
      *(v12 + 64) = v14;
      *(v12 + 32) = v11 / 60.0;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 72) = v11 / 3600.0;
      *(v12 + 136) = v13;
      *(v12 + 144) = v14;
      *(v12 + 112) = v11;
      v15 = sub_1C529D73C();
      v17 = sub_1C524E7F4(v15, v16, &v19);

      *(v8 + 4) = v17;
      _os_log_impl(&dword_1C5126000, v6, v7, "Device is in Low Power Mode. Registering to run in %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1C69445C0](v9, -1, -1);
      MEMORY[0x1C69445C0](v8, -1, -1);
    }

    else
    {

      v10 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval_LPM;
    }

    v0 = v4;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__commuteWindowInterval;
  }

  v18 = *&v0[*v10];

  sub_1C526B9EC(v18);
}

uint64_t sub_1C526C390(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62[-v6];
  v8 = sub_1C529D3AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v69 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v62[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v62[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v62[-v18];
  sub_1C525F29C(a1, v7, &unk_1EC156760);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1C5259230(v7, &unk_1EC156760);
  }

  v68 = v2;
  (*(v9 + 32))(v19, v7, v8);
  GEOConfigGetDouble();
  v22 = v21;
  sub_1C529D30C();
  sub_1C529D38C();
  sub_1C529D2FC();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v14, v8);
  v26 = v19;
  v27 = v17;
  if (v24 >= 0.0)
  {
    v66 = v25;
    v67 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C52A91B0;
    v65 = v26;
    v33 = sub_1C529D31C();
    v34 = NSStringFromMapsSuggestionsEventTime(v33);

    v35 = sub_1C529D72C();
    v37 = v36;

    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C526F76C();
    *(v32 + 32) = v35;
    *(v32 + 40) = v37;
    v38 = MEMORY[0x1E69E63B0];
    v39 = MEMORY[0x1E69E6438];
    *(v32 + 96) = MEMORY[0x1E69E63B0];
    *(v32 + 104) = v39;
    *(v32 + 72) = v22 / 3600.0;
    *(v32 + 136) = v38;
    *(v32 + 144) = v39;
    *(v32 + 112) = a2 / 60.0;
    v40 = sub_1C529D73C();
    v42 = v41;
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v43 = sub_1C529D64C();
    __swift_project_value_buffer(v43, qword_1EDC51F30);
    v44 = v69;
    v45 = v67;
    (*(v9 + 16))(v69, v67, v8);

    v46 = sub_1C529D62C();
    v47 = sub_1C529D87C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v64 = v40;
      v49 = v48;
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315394;
      v63 = v47;
      v51 = sub_1C529D31C();
      v52 = v44;
      v53 = NSStringFromMapsSuggestionsEventTime(v51);

      v54 = sub_1C529D72C();
      v56 = v55;

      v57 = v66;
      v66(v52, v8);
      v58 = sub_1C524E7F4(v54, v56, &v70);

      *(v49 + 4) = v58;
      *(v49 + 12) = 2080;
      v59 = sub_1C524E7F4(v64, v42, &v70);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_1C5126000, v46, v63, "Scheduling backup timer at the beginning of the commute window: %s. Calculation: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v50, -1, -1);
      v45 = v67;
      MEMORY[0x1C69445C0](v49, -1, -1);
    }

    else
    {

      v60 = v44;
      v57 = v66;
      v66(v60, v8);
    }

    v61 = v65;
    sub_1C526B9EC(v24);
    v57(v45, v8);
    return (v57)(v61, v8);
  }

  else
  {
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v28 = sub_1C529D64C();
    __swift_project_value_buffer(v28, qword_1EDC51F30);
    v29 = sub_1C529D62C();
    v30 = sub_1C529D87C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C5126000, v29, v30, "timeToFireTimer is negative!", v31, 2u);
      MEMORY[0x1C69445C0](v31, -1, -1);
    }

    sub_1C526C0D8();
    v25(v27, v8);
    return (v25)(v26, v8);
  }
}

void sub_1C526CB90(unint64_t a1, void *a2, int a3, uint64_t a4, void *a5, double a6)
{
  v63 = a5;
  v61 = a4;
  v62 = a3;
  v59 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  v21 = sub_1C529D3AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  if (a2)
  {
    v64 = a2;
    v28 = [v64 predictedStartDate];
    if (v28)
    {
      v29 = v28;
      sub_1C529D37C();

      (*(v22 + 56))(v18, 0, 1, v21);
    }

    else
    {
      (*(v22 + 56))(v18, 1, 1, v21);
    }

    sub_1C526EF5C(v18, v20, &unk_1EC156760);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      sub_1C5259230(v20, &unk_1EC156760);
    }

    else
    {
      v57 = *(v22 + 32);
      v57(v27, v20, v21);
      v30 = v68;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v56 = Strong;
        v32 = sub_1C529D85C();
        (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
        sub_1C525F29C(v59, v66, &qword_1EC1566A0);
        (*(v22 + 16))(v25, v27, v21);
        sub_1C525F29C(v61, v65, &unk_1EC156760);
        v33 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v55 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
        v34 = (*(v22 + 80) + v54 + 8) & ~*(v22 + 80);
        v35 = *(v58 + 80);
        v61 = v27;
        v36 = (v23 + v35 + v34) & ~v35;
        v59 = (v36 + v14) & 0xFFFFFFFFFFFFFFF8;
        v60 = v36 + v14;
        v58 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
        v37 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        sub_1C526EF5C(v66, v38 + v33, &qword_1EC1566A0);
        v39 = v56;
        *(v38 + v55) = v30;
        *(v38 + v54) = v39;
        v57((v38 + v34), v25, v21);
        sub_1C526EF5C(v65, v38 + v36, &unk_1EC156760);
        *(v38 + v60) = v62 & 1;
        v40 = v58;
        *(v38 + v59 + 8) = a6;
        v41 = v63;
        v42 = v64;
        *(v38 + v40) = v63;
        *(v38 + v37) = v42;
        v43 = v41;
        v44 = v42;
        v45 = v30;
        swift_unknownObjectRetain();
        sub_1C525F85C(0, 0, v67, &unk_1C52A9638, v38);
        swift_unknownObjectRelease();

        (*(v22 + 8))(v61, v21);
        return;
      }

      (*(v22 + 8))(v27, v21);
    }
  }

  _GEOConfigRemoveValue();
  _GEOConfigRemoveValue();
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v46 = sub_1C529D64C();
  __swift_project_value_buffer(v46, qword_1EDC51F30);
  v47 = v68;
  v48 = sub_1C529D62C();
  v49 = sub_1C529D87C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&dword_1C5126000, v48, v49, "Can't do anything without nextDestination, _entryTime (or self:%@. Stopping everything 🙅🏻‍♂️.", v50, 0xCu);
    sub_1C5259230(v51, &qword_1EC156350);
    MEMORY[0x1C69445C0](v51, -1, -1);
    MEMORY[0x1C69445C0](v50, -1, -1);
  }
}

uint64_t sub_1C526D2D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = v15;
  *(v9 + 72) = v16;
  *(v9 + 56) = a1;
  *(v9 + 176) = v14;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  *(v9 + 80) = swift_task_alloc();
  *(v9 + 88) = swift_task_alloc();
  v10 = sub_1C529D3AC();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  *(v9 + 128) = swift_task_alloc();
  v11 = sub_1C529D24C();
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C526D4B0, 0, 0);
}

id sub_1C526D4B0()
{
  v127 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  sub_1C525F29C(*(v0 + 16), v4, &qword_1EC1566A0);
  v5 = MapsSuggestionsCoarseLocationFilter;
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1C5259230(*(v0 + 128), &qword_1EC1566A0);
    LOBYTE(v6) = 0;
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 168), *(v0 + 128), *(v0 + 136));
    if (qword_1EDC51978 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 136);
    v12 = sub_1C529D64C();
    __swift_project_value_buffer(v12, qword_1EDC51F30);
    v13 = *(v10 + 16);
    v13(v7, v8, v11);
    v13(v9, v8, v11);
    v14 = sub_1C529D62C();
    v15 = sub_1C529D87C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    if (v16)
    {
      v21 = *(v0 + 120);
      v123 = v15;
      v23 = *(v0 + 96);
      v22 = *(v0 + 104);
      v118 = v23;
      v125 = *(v0 + 136);
      v24 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v126 = v121;
      *v24 = 136315394;
      loga = v14;
      sub_1C529D22C();
      v25 = sub_1C529D31C();
      v117 = *(v22 + 8);
      v117(v21, v23);
      v26 = NSStringFromMapsSuggestionsEventTime(v25);

      v27 = sub_1C529D72C();
      v29 = v28;

      v1 = *(v20 + 8);
      (v1)(v17, v125);
      v30 = sub_1C524E7F4(v27, v29, &v126);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      sub_1C529D20C();
      v31 = sub_1C529D31C();
      v32 = v21;
      v5 = MapsSuggestionsCoarseLocationFilter;
      v117(v32, v118);
      v33 = NSStringFromMapsSuggestionsEventTime(v31);

      v34 = sub_1C529D72C();
      v36 = v35;

      (v1)(v18, v125);
      v37 = sub_1C524E7F4(v34, v36, &v126);

      *(v24 + 14) = v37;
      _os_log_impl(&dword_1C5126000, loga, v123, "DOoM Commute Window: %s - %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69445C0](v121, -1, -1);
      MEMORY[0x1C69445C0](v24, -1, -1);
    }

    else
    {

      v1 = *(v20 + 8);
      (v1)(v18, v19);
      (v1)(v17, v19);
    }

    v38 = isCommuteWindowDefaultOverridden();
    v39 = *(v0 + 168);
    v40 = *(v0 + 136);
    if (v38)
    {
      v6 = *(v0 + 24);
      (v1)(*(v0 + 168), *(v0 + 136));
      v41 = v6 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wasInWindow;
      LOBYTE(v6) = 1;
      goto LABEL_14;
    }

    v42 = *(v0 + 120);
    v43 = *(v0 + 96);
    v44 = *(v0 + 104);
    v6 = MapsSuggestionsNow();
    sub_1C529D37C();

    LOBYTE(v6) = sub_1C529D23C();
    (*(v44 + 8))(v42, v43);
    (v1)(v39, v40);
  }

  v41 = *(v0 + 24) + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wasInWindow;
  if ((*v41 & 1) == 0 && (v6 & 1) == 0)
  {
    LOBYTE(v6) = 0;
    goto LABEL_19;
  }

LABEL_14:
  if (v5[60].vtable != -1)
  {
    swift_once();
  }

  v45 = sub_1C529D64C();
  __swift_project_value_buffer(v45, qword_1EDC51F30);
  v46 = sub_1C529D62C();
  v47 = sub_1C529D87C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1C5126000, v46, v47, "Asking a widget timeline reload", v48, 2u);
    MEMORY[0x1C69445C0](v48, -1, -1);
  }

  v49 = *(v0 + 32);

  [v49 commuteWindowUpdated];
LABEL_19:
  if (v5[60].vtable != -1)
  {
LABEL_72:
    swift_once();
  }

  v50 = sub_1C529D64C();
  __swift_project_value_buffer(v50, qword_1EDC51F30);
  v51 = sub_1C529D62C();
  v52 = sub_1C529D87C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = v6 & 1;
    _os_log_impl(&dword_1C5126000, v51, v52, "In Window? %{BOOL}d.", v53, 8u);
    MEMORY[0x1C69445C0](v53, -1, -1);
  }

  *v41 = v6 & 1;
  if ((v6 & 1) == 0)
  {
    _GEOConfigRemoveValue();
    _GEOConfigRemoveValue();
    goto LABEL_27;
  }

  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  v57 = *(v0 + 48);
  v58 = sub_1C529D31C();
  GEOConfigSetDate();

  LODWORD(v6) = *MEMORY[0x1E69B3710];
  _GEOConfigRemoveValue();
  sub_1C525F29C(v57, v56, &unk_1EC156760);
  if ((*(v54 + 48))(v56, 1, v55) != 1)
  {
    v63 = *(v0 + 104);
    v64 = *(v0 + 112);
    v65 = *(v0 + 96);
    (*(v63 + 32))(v64, *(v0 + 88), v65);
    v66 = sub_1C529D31C();
    GEOConfigSetDate();

    (*(v63 + 8))(v64, v65);
    if (*(v0 + 176))
    {
      goto LABEL_29;
    }

LABEL_27:
    v59 = *(v0 + 96);
    v60 = *(v0 + 104);
    v61 = *(v0 + 80);
    v62 = *(v0 + 56);
    (*(v60 + 16))(v61, *(v0 + 40), v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    sub_1C526C390(v61, v62);
    sub_1C5259230(v61, &unk_1EC156760);
    sub_1C526AF70();
    goto LABEL_77;
  }

  sub_1C5259230(*(v0 + 88), &unk_1EC156760);
  if ((*(v0 + 176) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v67 = *(v0 + 64);
  if (!v67)
  {
    goto LABEL_76;
  }

  v68 = v67;
  v69 = [v68 routes];
  sub_1C5143DC8(0, &qword_1EC1563E0);
  v41 = sub_1C529D7DC();

  v115 = v68;
  if (v41 >> 62)
  {
LABEL_74:
    v70 = sub_1C529DA9C();
    if (v70)
    {
      goto LABEL_32;
    }

LABEL_75:

    goto LABEL_76;
  }

  v70 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v70)
  {
    goto LABEL_75;
  }

LABEL_32:
  v71 = 0;
  v122 = v41 & 0xFFFFFFFFFFFFFF8;
  v124 = v41 & 0xC000000000000001;
  log = v70;
  v116 = v41;
  while (1)
  {
    if (v124)
    {
      v72 = MEMORY[0x1C69434E0](v71, v41);
    }

    else
    {
      if (v71 >= *(v122 + 16))
      {
        goto LABEL_71;
      }

      v72 = *(v41 + 8 * v71 + 32);
    }

    v73 = v72;
    v74 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    result = [objc_opt_self() sharedPlatform];
    if (!result)
    {
      goto LABEL_82;
    }

    v76 = result;
    v77 = [result isInternalInstall];

    if (v77)
    {
      v1 = v1 & 0xFFFFFFFF00000000 | 0x1DC;
      if (GEOConfigGetBOOL())
      {

        v98 = sub_1C529D62C();
        v99 = sub_1C529D87C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&dword_1C5126000, v98, v99, "‼️ Showing a test notification for debugging purposes. This is not real. ‼️", v100, 2u);
          MEMORY[0x1C69445C0](v100, -1, -1);
        }

        v101 = *(v0 + 72);

        v97 = sub_1C526E544(0x5449542054534554, 0xEA0000000000454CLL, 0x53454D2054534554, 0xEC00000045474153, v101);
        goto LABEL_67;
      }
    }

    v78 = [v73 commuteNotificationTitleStrings];
    if (!v78)
    {
      goto LABEL_53;
    }

    v79 = v78;
    sub_1C5143DC8(0, &qword_1EC1563E8);
    v6 = sub_1C529D7DC();

    v80 = [v73 commuteNotificationDescriptionStrings];
    if (!v80)
    {

LABEL_53:
      v87 = sub_1C529D62C();
      LOBYTE(v6) = sub_1C529D87C();
      if (os_log_type_enabled(v87, v6))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1C5126000, v87, v6, "Route has no incidents. No alert triggered.", v88, 2u);
        v89 = v88;
        v70 = log;
        MEMORY[0x1C69445C0](v89, -1, -1);
      }

      goto LABEL_34;
    }

    v81 = v80;
    v41 = sub_1C529D7DC();

    if (v6 >> 62)
    {
      if (!sub_1C529DA9C())
      {
        goto LABEL_57;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v82 = MEMORY[0x1C69434E0](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_74;
      }

      v82 = *(v6 + 32);
    }

    v83 = v82;

    v84 = [v83 stringWithDefaultOptions];

    v85 = sub_1C529D72C();
    v6 = v86;

    if (!(v41 >> 62))
    {
      v70 = log;
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_57;
    }

    v70 = log;
    if (sub_1C529DA9C())
    {
      break;
    }

LABEL_57:

    v41 = v116;
LABEL_34:
    ++v71;
    if (v74 == v70)
    {
      goto LABEL_75;
    }
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    v90 = MEMORY[0x1C69434E0](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v90 = *(v41 + 32);
  }

  v91 = v90;
  v92 = *(v0 + 72);

  v93 = [v91 stringWithDefaultOptions];

  v94 = sub_1C529D72C();
  v96 = v95;

  v97 = sub_1C526E544(v85, v6, v94, v96, v92);

LABEL_67:
  v102 = *(v0 + 72);

  v103 = v97;
  v104 = v102;
  v105 = sub_1C529D62C();
  v106 = sub_1C529D87C();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = *(v0 + 72);
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v108 = 138412546;
    *(v108 + 4) = v103;
    *(v108 + 12) = 2112;
    *(v108 + 14) = v107;
    *v109 = v103;
    v109[1] = v107;
    v110 = v103;
    v111 = v107;
    _os_log_impl(&dword_1C5126000, v105, v106, "Asking mapspushd to show a DOoM notification with details:%@\nfor destination%@", v108, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156350);
    swift_arrayDestroy();
    MEMORY[0x1C69445C0](v109, -1, -1);
    MEMORY[0x1C69445C0](v108, -1, -1);
  }

  v112 = *(v0 + 72);
  v113 = *(v0 + 32);

  [v113 doomNotificationReadyWith:v103 forLOI:v112];
LABEL_76:
  sub_1C526AF70();
  sub_1C526C0D8();
LABEL_77:

  v114 = *(v0 + 8);

  return v114();
}

id sub_1C526E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C529D3AC();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  GEOConfigGetDouble();
  v14 = MapsSuggestionsNow();
  sub_1C529D37C();

  sub_1C529D2DC();
  v15 = [a5 identifierString];
  if (!v15)
  {
    sub_1C529D72C();
    v15 = sub_1C529D71C();
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69A1C28]);
  v17 = sub_1C529D71C();
  v18 = sub_1C529D71C();
  v19 = sub_1C529D31C();
  v20 = [v16 initWithTitle:v17 message:v18 commuteDetailsIdentifier:v15 expirationDate:v19 score:1];

  (*(v26 + 8))(v13, v27);
  v21 = v28;
  v22 = (v28 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverTitle);
  *v22 = a1;
  v22[1] = a2;

  v23 = (v21 + OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__serverMessage);
  *v23 = a3;
  v23[1] = a4;

  return v20;
}

id MapsSuggestionsDOoM.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v2 = sub_1C529D64C();
  __swift_project_value_buffer(v2, qword_1EDC51F30);
  v3 = sub_1C529D62C();
  v4 = sub_1C529D87C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, v3, v4, "De-initing DOoM", v5, 2u);
    MEMORY[0x1C69445C0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer;
  v7 = *&v1[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__wakeupTimer];
  if (v7)
  {
    [v7 unschedule];
    v8 = *&v1[v6];
  }

  else
  {
    v8 = 0;
  }

  *&v1[v6] = 0;

  v9 = *&v1[OBJC_IVAR____TtC15MapsSuggestions19MapsSuggestionsDOoM__doomEngine];
  v10 = v1;
  sub_1C526ED30(v10, v9, "Unregistering %s for DOoM updates", &selRef_unregisterObserver_handler_);

  v12.receiver = v10;
  v12.super_class = type metadata accessor for MapsSuggestionsDOoM();
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

id MapsSuggestionsDOoM.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String __swiftcall Logger.logDuration(_:)(Swift::Double_optional a1)
{
  if (v1)
  {
    v2 = 0xE500000000000000;
    v3 = 0x202D2D2D20;
  }

  else
  {
    v4 = *&a1.is_nil;
    v5 = *&a1.is_nil;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC156268);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C52A91B0;
    v7 = MEMORY[0x1E69E63B0];
    v8 = MEMORY[0x1E69E6438];
    *(v6 + 56) = MEMORY[0x1E69E63B0];
    *(v6 + 64) = v8;
    *(v6 + 32) = v4 / 60.0;
    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    *(v6 + 72) = v4 / 3600.0;
    *(v6 + 136) = v7;
    *(v6 + 144) = v8;
    *(v6 + 112) = v5;
    v3 = sub_1C529D73C();
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C526ECC0()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EDC51F30);
  __swift_project_value_buffer(v0, qword_1EDC51F30);
  return sub_1C529D63C();
}

void sub_1C526ED30(void *a1, uint64_t a2, char *a3, const char **a4)
{
  if (qword_1EDC51978 != -1)
  {
    swift_once();
  }

  v8 = sub_1C529D64C();
  __swift_project_value_buffer(v8, qword_1EDC51F30);
  v9 = a1;
  v10 = sub_1C529D62C();
  v11 = sub_1C529D87C();
  if (os_log_type_enabled(v10, v11))
  {
    format = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = [v9 uniqueName];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = sub_1C529D72C();
    v17 = v16;

    v18 = sub_1C524E7F4(v15, v17, &v22);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1C5126000, v10, v11, format, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69445C0](v13, -1, -1);
    MEMORY[0x1C69445C0](v12, -1, -1);
  }

  else
  {
  }

  v19 = *(a2 + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__observers);
  v20 = *a4;

  [v19 v20];
}

uint64_t type metadata accessor for MapsSuggestionsDOoM()
{
  result = qword_1EDC519C8;
  if (!qword_1EDC519C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C526EF5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C526EFC4(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0) - 8);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1C529D3AC() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v3);
  v13 = *(v1 + v4);
  v14 = *(v1 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8);
  v15 = swift_task_alloc();
  *(v17 + 16) = v15;
  *v15 = v17;
  v15[1] = sub_1C524F4A4;

  return sub_1C526D2D4(v14, a1, v10, v11, v1 + v18, v12, v13, v1 + v6, v1 + v9);
}

void sub_1C526F22C()
{
  sub_1C526F5D0(319, &qword_1EDC51AE0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1C526F5D0(319, &qword_1EDC51A00, MEMORY[0x1E6968130]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C526F5D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C529D99C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for _DOoMStateCapture(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for _DOoMStateCapture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C526F76C()
{
  result = qword_1EC156358;
  if (!qword_1EC156358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC156358);
  }

  return result;
}

uint64_t sub_1C526F7D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C526F880(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

id MapsSuggestionsContactActivityImprover.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSuggestionsContactActivityImprover.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsContactActivityImprover();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MapsSuggestionsContactActivityImprover.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsContactActivityImprover();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C526F990()
{
  v0 = sub_1C529D64C();
  __swift_allocate_value_buffer(v0, qword_1EC156F08);
  __swift_project_value_buffer(v0, qword_1EC156F08);
  return sub_1C529D63C();
}

uint64_t sub_1C526FA9C()
{
  v1 = (v0 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C526FB70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C526FBD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C526FD9C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C526FDFC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_contactActivityDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C5269D28;
}