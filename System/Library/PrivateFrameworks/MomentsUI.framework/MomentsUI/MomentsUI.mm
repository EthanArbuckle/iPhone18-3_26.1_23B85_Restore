void *protocol witness for RawRepresentable.init(rawValue:) in conformance MotionActivity@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MotionActivity(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t _sSo20NSFileProtectionTypeaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *_sSo30UIFontDescriptorSymbolicTraitsVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for HashableCoordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HashableCoordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21607F1DC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_21607F2A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21607F304(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x298);

  return v4(v2, v3);
}

uint64_t sub_21607F388@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21607F3E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21607F448()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21607F48C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_21607F4E8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t sub_21607F54C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudSyncSuggestion.assetIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21607F674()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21607F6CC()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21607F704@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t _sSuSgIegd_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21607F7E4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static MomentsUIManager.automaticallySync;
  return result;
}

uint64_t sub_21607F830(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static MomentsUIManager.automaticallySync = v1;
  return result;
}

uint64_t sub_21607FAA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21607FB04(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_21607FB90@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static MomentsUIManager.userIsActivelyWaitingOnUI;
  return result;
}

uint64_t sub_21607FBDC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static MomentsUIManager.userIsActivelyWaitingOnUI = v1;
  return result;
}

uint64_t sub_21607FC24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_21607FC80(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_21607FCE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21607FDB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21607FDEC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21607FE34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_21607FE80(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_21607FED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_21607FF20(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21607FF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21607FFC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_21608002C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_216080088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t sub_2160800DC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 584);

  return v2(v3);
}

uint64_t sub_216080180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216080238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216080284(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

void *sub_2160802F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216080354(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 344))(&v4);
}

uint64_t sub_2160803B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216080408(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 464);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_21608047C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160804D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);

  return v4(v2, v3);
}

uint64_t sub_216080540@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_2160805A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v2(v3);
}

uint64_t sub_216080610()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216080650()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160806A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_216080704(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608076C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216080824()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608085C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x218))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216080934@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216080A10(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CloudSyncAssetData.lastKnownCKRecord.setter(v1);
}

uint64_t sub_216080A40()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216080B0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_216080B68(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);

  return v2(v3);
}

uint64_t sub_216080BCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_216080C30(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x150);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216080CA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_216080D04(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216080D74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t sub_216080DD8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x180);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216080E48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t sub_216080EAC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x198);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216080F1C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x210))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216080F80(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x218);

  return v4(v2, v3);
}

uint64_t sub_216081000()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_216081040()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21608107C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2160810D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9MomentsUI39SuggestionsSyncOnboardingViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_216081148@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160811A4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_216081218()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608129C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160812E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 216);

  return v4(v2, v3);
}

uint64_t sub_216081350@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608139C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_216081404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_216081458(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 264);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216081508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_21608155C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 312);

  return v2(v3);
}

uint64_t sub_2160815D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216081618@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_cloudManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21608167C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160816BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608170C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160817E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608181C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21608192C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216081968()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_216081B5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216081CB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216081D70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216081DCC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);

  return v4(v2, v3);
}

uint64_t sub_216081E44@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216081EFC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216081FB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216082078()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2160820B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160820FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160821D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7PHAssetCSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160822F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_21608234C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160823B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_216082410(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);

  return v2(v3);
}

uint64_t sub_216082474@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160824D0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_216082544()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  if (v1)
  {
    if (*(v0 + 48))
    {

      v1 = *(v0 + 72);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2160825A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2160825E0()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216082618()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21608265C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_2160826B8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216082720@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216082830()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_216082888()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2160828E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Image?) -> ();
  a2[1] = v5;
}

uint64_t sub_216082950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_2160829A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_2160829F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216082A2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216082A64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216082A9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216082AF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_216082B50(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216082BB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_216082C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_216082D08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216082D74(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x68))(&v4);
}

uint64_t sub_216082DDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2160836B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_216083718()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160837E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216083864()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160838A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_216083964()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608399C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160839DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216083A14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s9MomentsUI12DBAssetModelC5StyleO38ExtraLargeCondensedThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOs0J3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_216083D98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_216083E4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216083EA8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

double sub_216083F00@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 232))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_216083F68@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*(**a1 + 256))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned DBAssetData?);
  a2[1] = result;
  return result;
}

uint64_t sub_216083FF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*(**a1 + 280))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned Data?);
  a2[1] = result;
  return result;
}

uint64_t sub_216084088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160840DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 312);

  return v4(v2, v3);
}

uint64_t sub_216084164()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608421C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2160842C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_216084310(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_216084364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2160843FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + 200))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_216084484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_2160844D0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t sub_21608452C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216084568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160845B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 112);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_216084620@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2160846B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216084700(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_216084768()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160847A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_216084868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216084918()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216084958()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160849A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216084A80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216084AB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_216084B78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_216084C3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216084C74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216084CAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_216084D6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_216084E34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216084E84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216084EBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216084EFC@<X0>(uint64_t *a1@<X8>)
{
  result = BaseAssetViewModel.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_216084F74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216084F80@<X0>(uint64_t *a1@<X8>)
{
  result = BaseAssetViewModel.image.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21608501C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_216085078(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160850E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608513C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

void *sub_21608520C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216085280(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x108))(&v4);
}

void *sub_2160852F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216085364(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x120))(&v4);
}

uint64_t sub_2160853D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216085438(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2160854B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21608557C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_2160855E0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x170);

  return v2(v3);
}

uint64_t sub_21608564C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_216085694(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_2160856D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_216085728@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2160857C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 144);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_216085810(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21608586C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160858EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21608592C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 primary];
  *a2 = result;
  return result;
}

id sub_216085A74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseScore];
  *a2 = result;
  return result;
}

void sub_216085B08(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x21CE91FC0](*a1, a1[1]);
  [v2 setId_];
}

id sub_216085BEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rankingScore];
  *a2 = result;
  return result;
}

id sub_216085D3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_216085DCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 goodnessScore];
  *a2 = result;
  return result;
}

id sub_216085E1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visibilityCategoryInt];
  *a2 = result;
  return result;
}

id sub_216085E6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ordinalRankInRecommendedTab];
  *a2 = result;
  return result;
}

id sub_216085EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subTypeInt];
  *a2 = result;
  return result;
}

id sub_216085F4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isSensitive];
  *a2 = result;
  return result;
}

id sub_216085FDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetsLoaded];
  *a2 = result;
  return result;
}

void *sub_21608602C@<X0>(void *a1@<X8>)
{
  result = CloudSyncSnapshot.suggestionTabs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_216086084@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160860E8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x238);

  return v4(v2, v3);
}

uint64_t sub_216086168@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x248))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216086240@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x260))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160862A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x268);

  return v4(v2, v3);
}

uint64_t sub_216086324@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_216086388(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x280);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160863F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608645C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x298);

  return v4(v2, v3);
}

uint64_t sub_2160864DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216086538(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v4(v2, v3);
}

uint64_t sub_2160865B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_21608660C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void sub_216086678(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x21CE91FC0](*a1, a1[1]);
  [v2 setId_];
}

id sub_21608681C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 size];
  *a2 = result;
  return result;
}

void sub_2160869B0(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x21CE91FC0](*a1, a1[1]);
  [v2 setId_];
}

id sub_216086A94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sequence];
  *a2 = result;
  return result;
}

uint64_t sub_216086B9C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216086C7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_216086CD8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *sub_216086D40@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216086DAC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x98))(&v4);
}

uint64_t sub_216086E14()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_216086E64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216086E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo10CLLocationCGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216086F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14HKWorkoutRouteCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216087000@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216087064(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v4(v2, v3);
}

uint64_t sub_2160870E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216087148(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v4(v2, v3);
}

double sub_2160871C8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x278))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216087248(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x280))(v4);
}

double sub_2160872C0@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x290))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216087340(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x298))(v4);
}

double sub_2160873B8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216087438(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x2B0))(v4);
}

uint64_t sub_2160874B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216087514(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

double sub_21608758C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x250))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21608760C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x258))(v4);
}

double sub_216087684@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x268))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216087704(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x270))(v4);
}

double sub_21608777C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x280))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2160877FC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x288))(v4);
}

uint64_t sub_216087874@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160878D8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2A0);

  return v4(v2, v3);
}

uint64_t sub_216087958@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160879BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2B8);

  return v4(v2, v3);
}

uint64_t sub_216087B5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216087B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_216087CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_216087DB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216087DE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_216087E4C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x190);

  return v2(v3);
}

uint64_t sub_216087EB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216087EF4()
{
  v1 = (type metadata accessor for Client() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 32, v2 | 7);
}

uint64_t sub_21608801C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21608808C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2160880E8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v2(v3);
}

void sub_21608814C(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_216088208()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216088244@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_2160882A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

void *sub_216088308@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216088374(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x90))(&v4);
}

uint64_t sub_216088434()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216088494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216088508@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_2160885A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2160885DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608861C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_216088678(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160886E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_21608873C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v2(v3);
}

uint64_t sub_2160887A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

void *sub_216088854@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2160888C8(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x110))(&v4);
}

uint64_t sub_216088998()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160889D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216088A08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_216088A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_216088BA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_216088CDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_216088E44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

void *sub_216088E94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216088EF0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 248))(&v4);
}

uint64_t sub_216088F48@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_216089020@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x268))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2160890A0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x270))(v4);
}

double sub_216089118@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x280))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216089198(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x288))(v4);
}

double sub_216089210@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x298))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216089290(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x2A0))(v4);
}

uint64_t sub_216089308@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608936C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2C0);

  return v4(v2, v3);
}

uint64_t sub_2160893EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216089450(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2D8);

  return v4(v2, v3);
}

uint64_t sub_2160894D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_216089534(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x228);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160895A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_216089608(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v2(v3);
}

uint64_t sub_216089674@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2160896D8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v2(v3);
}

uint64_t sub_216089744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2160897FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608983C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608987C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_21608993C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2160899F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_216089AC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_216089B28(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x128);

  return v2(v3);
}

uint64_t sub_216089B94()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216089BCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_216089C0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_216089C68(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216089D84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_216089DE0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216089E50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_216089EE4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd) - 8);
  v2 = *(*v1 + 80);
  v17 = (v2 + 32) & ~v2;
  v16 = (*(*v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v16 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v15 = v2 | v5 | v10;
  v14 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v12 = *(v4 + 8);
  v12(v0 + v17, v3);
  v12(v0 + v17 + v1[14], v3);

  v12(v0 + v6, v3);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v15 | 7);
}

uint64_t sub_21608A120()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608A160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608A1A8()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21608A1E8@<X0>(void *a1@<X8>)
{
  result = CloudSyncAssetData.ckAsset.getter();
  *a1 = result;
  return result;
}

id sub_21608A228@<X0>(_BYTE *a1@<X8>)
{
  result = CloudSyncAssetData.assetClass.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_21608A268@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21608A2D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_21608A348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21608A420()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21608A460()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608A558@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

uint64_t sub_21608A61C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x248))();
  *a2 = result;
  return result;
}

uint64_t sub_21608A680(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x250);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608A6F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x260))();
  *a2 = result;
  return result;
}

uint64_t sub_21608A754(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x268);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608A7C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x230))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608A828(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x238);

  return v4(v2, v3);
}

uint64_t sub_21608A974()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608A9AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21608AA40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608AA8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);

  return v4(v2, v3);
}

uint64_t sub_21608AAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

float sub_21608AB98@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(&v5);
  result = *&v5;
  v4 = BYTE4(v5);
  *a2 = v5;
  *(a2 + 4) = v4;
  return result;
}

uint64_t sub_21608ABFC(int *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 168))(&v5);
}

uint64_t sub_21608AC5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_21608ACA8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t sub_21608ACFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608AD34()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608AD6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd);
  v27 = *(v1 - 8);
  v28 = v1;
  v25 = *(v27 + 80);
  v2 = *(v27 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v22 = (((v25 + 16) & ~v25) + v2 + v4) & ~v4;
  v5 = *(v3 + 64);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v8 = (v22 + v5 + v7) & ~v7;
  v20 = v8;
  v9 = *(v6 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v10 = *(v23 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v14 = *(v21 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v19 = *(v14 + 64);
  v17 = v25 | v4 | v7 | v11 | v15;
  (*(v27 + 8))(v0 + ((v25 + 16) & ~v25), v28);
  (*(v3 + 8))(v0 + v22, v26);
  (*(v6 + 8))(v0 + v20, v24);
  (*(v10 + 8))(v0 + v12, v23);
  (*(v14 + 8))(v0 + v16, v21);

  return MEMORY[0x2821FE8E8](v0, v16 + v19, v17 | 7);
}

uint64_t sub_21608B094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI017SectionDateHeaderB0CGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI014ShowMoreFooterB0CGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21608B1F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608B23C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B2A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x118);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608B310@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B374(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608B3E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B448(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x148);

  return v2(v3);
}

uint64_t sub_21608B4B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B518(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x160);

  return v2(v3);
}

uint64_t sub_21608B670@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B740@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  return result;
}

uint64_t sub_21608B7A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x280);

  return v2(v3);
}

uint64_t sub_21608B810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21608B8CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21608B98C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608B9D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21608BA28()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21608BB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21608BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21608BC18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21608BC50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

id sub_21608BCAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *a2 = v4;

  return v4;
}

uint64_t sub_21608BD48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_21608BE18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608BE6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 536);

  return v4(v2, v3);
}

void *sub_21608BFC4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21608C038(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x240))(&v4);
}

uint64_t sub_21608C0A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608C10C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v4(v2, v3);
}

uint64_t sub_21608C18C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608C1F0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x280);

  return v4(v2, v3);
}

void *sub_21608C270@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21608C2E4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x298))(&v4);
}

double sub_21608C354@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_21608C3D0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x2B0))(v6);
}

id sub_21608C448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21608C4B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21608C54C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_21608C5A8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_21608C60C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_21608C668(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_21608C834@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_21608C8F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21608C99C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_21608C9F8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_21608CAD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608CB24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t sub_21608CB94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_21608CC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608CD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  return result;
}

uint64_t sub_21608CDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 512);

  return v2(v3);
}

uint64_t sub_21608CE40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t sub_21608CE94(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 584);

  return v2(v3);
}

uint64_t sub_21608CEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1264))();
  *a2 = result;
  return result;
}

uint64_t sub_21608CF44(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1272);

  return v2(v3);
}

uint64_t sub_21608D068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608D0C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v4(v2, v3);
}

uint64_t sub_21608D13C()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608D178@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_21608D1D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21608D248()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_21608D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608D770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608D7C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21608D810()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608D848()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21608D8E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608D924()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608D960@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_21608D9CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608DAC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608DB14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608DB88@<X0>(uint64_t *a1@<X8>)
{
  result = DBManager.mainWriter.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21608DBB4(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter) = *a1;
}

uint64_t sub_21608DD24()
{
  type metadata accessor for DBSuggestion();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  return PersistentModel.persistentModelID.getter();
}

uint64_t sub_21608DE1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_21608DE68(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608DEC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21608DF0C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

char *sub_21608DF78@<X0>(char **a1@<X8>)
{
  result = specialized static DefaultsManager.Cloud.capabilitiesMock.getter();
  *a1 = result;
  return result;
}

void sub_21608DFA0()
{

  specialized static DefaultsManager.Cloud.capabilitiesMock.setter(v0);
}

char *sub_21608DFCC@<X0>(char **a1@<X8>)
{
  result = specialized static DefaultsManager.Cloud.capabilitiesForce.getter();
  *a1 = result;
  return result;
}

void sub_21608DFF4()
{

  specialized static DefaultsManager.Cloud.capabilitiesForce.setter(v0);
}

char *sub_21608E020@<X0>(char **a1@<X8>)
{
  result = specialized static DefaultsManager.Cloud.capabilitiesBlock.getter();
  *a1 = result;
  return result;
}

void sub_21608E048()
{

  specialized static DefaultsManager.Cloud.capabilitiesBlock.setter(v0);
}

id sub_21608E074@<X0>(void *a1@<X8>)
{
  result = specialized static DefaultsManager.SyncOnboarding.deferralCount.getter();
  *a1 = result;
  return result;
}

id sub_21608E108@<X0>(void *a1@<X8>)
{
  result = specialized static DefaultsManager.Onboarding.deferralCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21608EB2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result;
  return result;
}

uint64_t sub_21608EB80(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1120);

  return v2(v3);
}

uint64_t sub_21608EBDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1160))();
  *a2 = result;
  return result;
}

uint64_t sub_21608EC30(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1168);

  return v2(v3);
}

uint64_t sub_21608ECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608EEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608EFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21608F114@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1016))();
  *a2 = result;
  return result;
}

uint64_t sub_21608F1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_21608F270@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21608F2D4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 400))(&v4);
}

uint64_t sub_21608F334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1208))();
  *a2 = result;
  return result;
}

uint64_t sub_21608F3D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608F410()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21608F450()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21608F5A4()
{
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  return PersistentModel.persistentModelID.getter();
}

uint64_t sub_21608F63C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608F67C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21608F74C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21608F78C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21608F8D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21608F96C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608F9A4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21608F9EC()
{
  v1 = type metadata accessor for Tips.Status();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v5 + 63) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_21608FAB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x228))();
  *a2 = result;
  return result;
}

uint64_t sub_21608FB14(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x230);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608FB84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t sub_21608FBE8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x248);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608FC58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_21608FCBC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x260);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21608FD2C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x270))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21608FD90(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x278);

  return v4(v2, v3);
}

uint64_t sub_21608FE30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21608FE78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608FEB0()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21608FF10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21608FF48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_216090008@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2160900C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_216090104()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216090140@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_216090258@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_2160902B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);
  v4 = *a1;
  return v3(v2);
}

void *sub_21609031C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216090388(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(&v4);
}

uint64_t sub_2160903F0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x108))();
  *a2 = result & 1;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_2160904C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216090500()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216090554()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609059C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x220))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216090600(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x228);

  return v4(v2, v3);
}

uint64_t sub_216090680@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216090758@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160907BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v4(v2, v3);
}

uint64_t sub_21609083C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x260))();
  *a2 = result;
  return result;
}

uint64_t sub_2160908A0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x268);

  return v2(v3);
}

uint64_t sub_21609090C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x278))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2160909E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result;
  return result;
}

uint64_t sub_216090A48(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x298);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216090AB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216090B1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2B0);

  return v4(v2, v3);
}

uint64_t sub_216090B9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2C0))();
  *a2 = result;
  return result;
}

uint64_t sub_216090C00(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216090C70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216090CD4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2E0);

  return v4(v2, v3);
}

uint64_t sub_216090D54@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2F0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216090E2C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x308))();
  *a2 = result;
  return result;
}

uint64_t sub_216090E90(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x310);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216090F00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216090F64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x328);

  return v4(v2, v3);
}

uint64_t sub_216090FE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x338))();
  *a2 = result;
  return result;
}

uint64_t sub_2160910A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x350))();
  *a2 = result;
  return result;
}

uint64_t sub_21609110C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x358);

  return v2(v3);
}

uint64_t *_s9MomentsUI33NotificationScheduleConfigurationOSYAASY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_216091204()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2160912E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609131C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2160913FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609146C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2160914C8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_21609152C()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216091564()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160915A4()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160915E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *_s9MomentsUI21InterstitialEntryTypeOSYAASY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_216091644@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

void *sub_2160916F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 872))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216091758(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 880))(&v4);
}

uint64_t sub_2160917C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160917F8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_216091834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_216091888(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t sub_216091934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_216091988(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216091AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_216091B08(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 424);

  return v2(v3);
}

uint64_t sub_216091B64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

uint64_t sub_216091BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 448);

  return v2(v3);
}

uint64_t sub_216091C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216091CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_216091DD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 584))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_216091E38(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 592);
  outlined copy of SuggestionGroup?(v6[0]);
  return v4(v6);
}

uint64_t sub_216091EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  return result;
}

uint64_t sub_216091F00(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 616);

  return v2(v3);
}

uint64_t sub_216091F5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216091FB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 640);

  return v4(v2, v3);
}

void *sub_216092020@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 768))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216092084(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 776))(&v4);
}

uint64_t sub_2160920E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 792))();
  *a2 = result;
  return result;
}

uint64_t sub_216092138(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 800);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216092198@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 816))();
  *a2 = result;
  return result;
}

uint64_t sub_2160921EC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 824);

  return v2(v3);
}

uint64_t sub_2160922A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_216092300(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v2(v3);
}

void sub_216092364(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_216092420@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  return result;
}

uint64_t sub_216092484(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2A0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160924F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2160925C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_21609268C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_21609274C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_216092818(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CloudSyncSnapshot.lastKnownCKRecord.setter(v1);
}

uint64_t sub_216092848()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216092914()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609294C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016InterstitialListbD0CSSGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160929E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216092A2C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216092AF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_216092B44()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216092B7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_216092BD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_216092C3C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216092CAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_216092D10(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216092D80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_216092DE4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216092E54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_216092EB8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x1A8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216092F78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216092FD4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

uint64_t sub_21609304C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216093104@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_216093170@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_216093240@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160932A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x160);

  return v4(v2, v3);
}

uint64_t sub_216093324@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216093388(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x178);

  return v4(v2, v3);
}

uint64_t sub_216093408@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216093464(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v4(v2, v3);
}

uint64_t sub_2160934DC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216093594@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_216093618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2160936D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216093794@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x220))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160937F8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x228);

  return v4(v2, v3);
}

uint64_t sub_216093878@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_2160938DC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x240);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21609394C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2160939B0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x258);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216093A20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  return result;
}

uint64_t sub_216093A84(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2A0);
  v4 = *a1;
  return v3(v2);
}

void *sub_216093AF4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216093B60(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x90))(&v4);
}

uint64_t sub_216093BC8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_216093C60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216093C98()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216093CD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _s9MomentsUI18CloudSuggestionsDBCAA0c3SubE0A2aDP9sendZonesShySo14CKRecordZoneIDCGyYaFTW_0()
{
  v1 = specialized static CloudSubDB.zones.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t _s9MomentsUI10CloudSubDBP9sendZonesShySo14CKRecordZoneIDCGyYaF_0(uint64_t a1, uint64_t a2)
{
  v3 = _s9MomentsUI10CloudSubDBPAAE10fetchZonesShySo14CKRecordZoneIDCGyF_0(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t _s9MomentsUI14CloudDevicesDBCAA0c3SubE0A2aDP9sendZonesShySo14CKRecordZoneIDCGyYaFTW_0()
{
  v1 = specialized static CloudSubDB.zones.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_216093E64()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216093EA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_216093F04(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x108);

  return v2(v3);
}

uint64_t sub_216093F74()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216093FAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216094064@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ProtectedAppSource.allFixedApps;
}

uint64_t sub_216094178@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216094230@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609428C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_21609436C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2160943B4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_216094400()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216094440()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216094480()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160944C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_216094510@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_216094574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2160945CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21609463C(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8) = *a1;
}

uint64_t sub_2160946A8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16) = *a1;
}

uint64_t sub_2160947B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2160947F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2160948CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2160949B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = *(v5 + 20);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_216094B54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_216094C38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_216094D84@<X0>(void *a1@<X8>)
{
  result = CloudMetaDevice.lastKnownCKRecord.getter();
  *a1 = result;
  return result;
}

void sub_216094DB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CloudMetaDevice.lastKnownCKRecord.setter(v1);
}

uint64_t sub_216094DE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_216094E9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21609507C(char *a1)
{
  v1 = *(a1 + 1);
  v3 = *a1;
  v2 = v1;
  CloudManager._accountState.setter(&v3, v1);
}

uint64_t sub_2160950C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609521C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CloudManager.systemIdiom;
  return result;
}

uint64_t sub_216095268(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static CloudManager.systemIdiom = v1;
  return result;
}

uint64_t sub_216095590@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_216095688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2160957C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609583C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_216095884()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for CloudDevice();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v27 = v4;

    v7 = v6[7];
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v11 = v6[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }

    v12 = v6[16];
    if (!v10(v5 + v12, 1, v8))
    {
      (*(v9 + 8))(v5 + v12, v8);
    }

    v13 = v6[18];
    if (!v10(v5 + v13, 1, v8))
    {
      (*(v9 + 8))(v5 + v13, v8);
    }

    v14 = v6[19];
    if (!v10(v5 + v14, 1, v8))
    {
      (*(v9 + 8))(v5 + v14, v8);
    }

    v15 = v6[20];
    if (!v10(v5 + v15, 1, v8))
    {
      (*(v9 + 8))(v5 + v15, v8);
    }

    v16 = v6[21];
    if (!v10(v5 + v16, 1, v8))
    {
      (*(v9 + 8))(v5 + v16, v8);
    }

    v17 = v6[22];
    if (!v10(v5 + v17, 1, v8))
    {
      (*(v9 + 8))(v5 + v17, v8);
    }

    v18 = v6[23];
    if (!v10(v5 + v18, 1, v8))
    {
      (*(v9 + 8))(v5 + v18, v8);
    }

    v19 = v6[24];
    if (!v10(v5 + v19, 1, v8))
    {
      (*(v9 + 8))(v5 + v19, v8);
    }

    v20 = v6[25];
    if (!v10(v5 + v20, 1, v8))
    {
      (*(v9 + 8))(v5 + v20, v8);
    }

    v21 = (v5 + v6[26]);
    v22 = v21[1];
    if (v22 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v21, v22);
    }

    v23 = (v5 + v6[28]);
    v24 = v23[1];
    v4 = v27;
    if (v24 >> 60 != 15)
    {
      outlined consume of Data._Representation(*v23, v24);
    }

    v25 = v6[29];
    if (!v10(v5 + v25, 1, v8))
    {
      (*(v9 + 8))(v5 + v25, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_216095DB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGsAG_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216095E84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_216095EF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216095F5C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 336))(&v4);
}

uint64_t sub_216095FC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t sub_216096018(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 480);

  return v2(v3);
}

uint64_t sub_216096084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160960D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 240);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void *sub_216096134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_216096198(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 360))(&v4);
}

uint64_t sub_21609627C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CloudSyncSuggestion.lastKnownCKRecord.setter(v1);
}

uint64_t sub_2160962AC()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

MomentsUI::CloudDevice::Idiom_optional sub_21609642C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CloudDevice() + 40);
  if (*(v3 + 8))
  {
    v4 = -1;
  }

  else
  {
    v4 = *v3;
  }

  result.value = CloudDevice.Idiom.init(rawValue:)(v4).value;
  v6 = v7;
  if (v7 == 7)
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

__n128 sub_216096494@<Q0>(uint64_t a1@<X8>)
{
  CloudDevice.snapshotEventAggregation.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2160964E0(_OWORD *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v6[4] = a1[4];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  outlined init with copy of DateInterval?(v6, &v5, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  return CloudDevice.snapshotEventAggregation.setter(a1);
}

id sub_216096548@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CloudDevice();
  result = specialized static CloudSyncDB.getCKRecord(_:)(*(a1 + *(v4 + 112)), *(a1 + *(v4 + 112) + 8));
  *a2 = result;
  return result;
}

uint64_t sub_216096588(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CloudDevice.lastKnownCKRecord.setter(v1);
}

uint64_t sub_2160965B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_216096674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216096724()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216096834@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_2160968F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_2160969C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216096A08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_216096ABC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_216096B20(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v2(v3);
}

uint64_t sub_216096B8C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216096BF0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v4(v2, v3);
}

uint64_t sub_216096C70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216096CD4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x270);

  return v4(v2, v3);
}

uint64_t sub_216096D54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

uint64_t sub_216096DB8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x288);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216096E28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216096E8C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2A0);

  return v4(v2, v3);
}

uint64_t sub_216096F0C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_216097090@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result;
  return result;
}

uint64_t sub_216097154@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2160971B8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2B0);

  return v4(v2, v3);
}

uint64_t sub_216097238@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2C0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609729C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x2C8);

  return v4(v2, v3);
}

uint64_t sub_21609731C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_216097368(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160973C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21609740C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

id sub_216097464@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView) image];
  *a2 = result;
  return result;
}

uint64_t sub_2160974B0()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160974E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_216097538()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216097570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2160975B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_216097608(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  InterstitialViewController.viewMode.didset(v5);
}

uint64_t sub_216097664@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_21609771C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21609775C()
{
  v1 = (type metadata accessor for Client() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 9, v2 | 7);
}

uint64_t sub_2160978B0()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160978E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 61, 7);
}

uint64_t sub_216097934()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2160979B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_216097A78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_216097B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_216097B94(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_216097C1C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216097C78(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_216097CEC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216097DA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216097E00(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);

  return v4(v2, v3);
}

uint64_t sub_216097E78@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216097F30()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_216097F68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_216097FC4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2160981D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609820C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216098244()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_216098284@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2160982EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result;
  return result;
}

double sub_216098354@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x288))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

__n128 sub_2160983D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_pinColor;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_216098434@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609849C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t sub_216098500(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x2E0);

  return v2(v3);
}

uint64_t sub_21609856C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x310))();
  *a2 = result;
  return result;
}

uint64_t sub_2160985D0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x318);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_216098640()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_216098680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2160986D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216098738(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v4(v2, v3);
}

uint64_t sub_2160987B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609881C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x258);

  return v4(v2, v3);
}

double sub_21609889C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x278))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21609891C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x280))(v4);
}

double sub_216098994@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x290))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216098A14(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x298))(v4);
}

double sub_216098A8C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_216098B0C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x2B0))(v4);
}

uint64_t sub_216098B84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216098BE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x108);

  return v4(v2, v3);
}

uint64_t sub_216098C68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_216098D38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_216098D9C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_216098E18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_216098EE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_216098FB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t sub_216099088@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t sub_216099158@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_2160991BC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1B0);

  return v2(v3);
}

uint64_t sub_216099228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609928C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1C8);

  return v2(v3);
}

uint64_t sub_2160992F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_21609935C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1E0);

  return v2(v3);
}

uint64_t sub_2160993C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609942C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x1F8);

  return v2(v3);
}

uint64_t sub_216099498@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_2160994FC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x210);

  return v2(v3);
}

uint64_t sub_216099568@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_2160995CC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x228);

  return v2(v3);
}

uint64_t sub_216099638@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_21609969C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x240);

  return v2(v3);
}

uint64_t sub_216099708@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_2160997D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x268))();
  *a2 = result;
  return result;
}

uint64_t sub_2160998A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

uint64_t sub_216099978@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x298))();
  *a2 = result;
  return result;
}

uint64_t sub_216099A48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_216099B18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2C8))();
  *a2 = result;
  return result;
}

uint64_t sub_216099BE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2E0))();
  *a2 = result;
  return result;
}

uint64_t sub_216099CB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2F8))();
  *a2 = result;
  return result;
}

uint64_t sub_216099D88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_216099E54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_216099EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_216099F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI10EntityDataVSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_216099FA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_216099FFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609A034()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609A0C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609A100@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A164(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2A8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21609A1D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A238(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x2C0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21609A2A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A310@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A374(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x2D8);

  return v2(v3);
}

uint64_t sub_21609A3E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2E8))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A448@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x300))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21609A4C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x318))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A544@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x330))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609A5C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x348))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A64C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x360))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609A6D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A754@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x390))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609A7D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3A8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21609A850@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3C0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609A8D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609A938(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x3F8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21609A9AC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21609AA04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21609AA44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_21609AB04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609ABC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_21609AC84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21609ACE0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v4(v2, v3);
}

uint64_t sub_21609AD58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21609ADA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609ADD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609AF90@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MomentsUI11CloudSyncDB_cloudManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21609AFFC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21609B04C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609B084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21609B164()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609B1D8()
{
  v1 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_21609B374()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21609B3CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21609B404()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21609B444()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609B47C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21609B560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21609B648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609B680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSPersistentContainerCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_21609B770()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609B7B0()
{
  MEMORY[0x21CE948B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21609B7E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21609B830()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21609B878@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_21609B948@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

void *AssetViewModel.baseImage.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

MomentsUI::SuggestionRanking::VisibilityCategory_optional __swiftcall SuggestionRanking.VisibilityCategory.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionRanking.VisibilityCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionRanking.VisibilityCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

id SuggestionRanking.__allocating_init(rankingScore:baseScore:visibilityCategory:goodnessScore:isSensitive:ordinalRankInRecommendedTab:)(uint64_t a1, char a2, uint64_t a3, char a4, char *a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = *a5;
  v20 = &v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
  *v20 = a1;
  v20[8] = a2 & 1;
  v21 = &v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
  *v21 = a3;
  v21[8] = a4 & 1;
  v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v19;
  v22 = &v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
  *v22 = a6;
  v22[8] = a7 & 1;
  v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = a8;
  v23 = &v18[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
  *v23 = a9;
  v23[8] = a10 & 1;
  v26.receiver = v18;
  v26.super_class = v10;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SuggestionRanking.init(rankingScore:baseScore:visibilityCategory:goodnessScore:isSensitive:ordinalRankInRecommendedTab:)(uint64_t a1, char a2, uint64_t a3, char a4, char *a5, uint64_t a6, char a7, char a8, uint64_t a9, char a10)
{
  v11 = *a5;
  v12 = &v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
  *v12 = a1;
  v12[8] = a2 & 1;
  v13 = &v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
  *v13 = a3;
  v13[8] = a4 & 1;
  v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v11;
  v14 = &v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
  *v14 = a6;
  v14[8] = a7 & 1;
  v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = a8;
  v15 = &v10[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
  *v15 = a9;
  v15[8] = a10 & 1;
  v17.receiver = v10;
  v17.super_class = type metadata accessor for SuggestionRanking();
  return objc_msgSendSuper2(&v17, sel_init);
}

MomentsUI::SuggestionRanking::CodingKeys_optional __swiftcall SuggestionRanking.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionRanking.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t SuggestionRanking.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x53676E696B6E6172;
  v2 = 0x7373656E646F6F67;
  v3 = 0x7469736E65537369;
  if (a1 != 4)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x726F635365736162;
  if (a1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SuggestionRanking.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SuggestionRanking.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == SuggestionRanking.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionRanking.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SuggestionRanking.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SuggestionRanking.CodingKeys()
{
  SuggestionRanking.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionRanking.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SuggestionRanking.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionRanking.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SuggestionRanking.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionRanking.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionRanking.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SuggestionRanking.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SuggestionRanking.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuggestionRanking.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SuggestionRanking.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall SuggestionRanking.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8))
  {
    isa = 0;
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  v4 = MEMORY[0x21CE91FC0](0x53676E696B6E6172, 0xEC00000065726F63);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  v6 = MEMORY[0x21CE91FC0](0x726F635365736162, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory) == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  v8 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x80000002165752C0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  v10 = MEMORY[0x21CE91FC0](0x7373656E646F6F67, 0xED000065726F6353);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v12 = MEMORY[0x21CE91FC0](0x7469736E65537369, 0xEB00000000657669);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  v14 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x80000002165752F0);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();
}

id SuggestionRanking.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SuggestionRanking.init(coder:)(a1);

  return v4;
}

id SuggestionRanking.init(coder:)(void *a1)
{
  v2 = specialized SuggestionRanking.init(coder:)(a1);

  return v2;
}

id SuggestionRanking.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SuggestionRanking.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionRanking();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SuggestionRanking.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI17SuggestionRankingC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = *(v3 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory);
    v10[12] = 2;
    lazy protocol witness table accessor for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[9] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *SuggestionRanking.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI17SuggestionRankingC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SuggestionRanking();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = &v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
    *v11 = v10;
    v11[8] = v12 & 1;
    v26 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = &v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
    *v15 = v13;
    v15[8] = v16 & 1;
    v25 = 2;
    lazy protocol witness table accessor for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v26;
    v26 = 3;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = &v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    *v18 = v17;
    v18[8] = v19 & 1;
    v26 = 4;
    v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = 5;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = &v3[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
    *v21 = v20;
    v21[8] = v22 & 1;
    v23 = type metadata accessor for SuggestionRanking();
    v24.receiver = v3;
    v24.super_class = v23;
    v9 = objc_msgSendSuper2(&v24, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SuggestionRanking@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id default argument 0 of WorkoutLocationPinView.init(annotation:type:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD4F08]);

  return [v0 init];
}

id default argument 3 of UIImage.composedOf(with:rects:targetSize:backgroundColor:)()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CE92570](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x21CE92580](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for CKErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for CKErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for CKErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance UIFontDescriptorSymbolicTraits(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance UIFontDescriptorSymbolicTraits@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance UIFontDescriptorSymbolicTraits@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance UIViewAnimationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance UIViewAnimationOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIBackgroundTaskIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x21CE91FC0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for CKErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for CKErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for CKErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for CKErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for CKErrorCode()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIFontDescriptorSymbolicTraits@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIViewAnimationOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProtectionType()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileProtectionType and conformance NSFileProtectionType, type metadata accessor for NSFileProtectionType);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileProtectionType and conformance NSFileProtectionType, type metadata accessor for NSFileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for CKErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskAction()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskWork()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorSystemDesign()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorSystemDesign and conformance UIFontDescriptorSystemDesign, type metadata accessor for UIFontDescriptorSystemDesign);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorSystemDesign and conformance UIFontDescriptorSystemDesign, type metadata accessor for UIFontDescriptorSystemDesign);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSFileProtectionType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x21CE91FC0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIBackgroundTaskIdentifier()
{
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x21CE937F0](*&v1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x21CE92190](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UISheetPresentationControllerDetentIdentifier()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t specialized SuggestionRanking.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionRanking.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id specialized SuggestionRanking.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSNumber();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 unsignedIntegerValue];

    v7 = 5;
    if (v6 < 5)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 5;
  }

  v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v7;
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  v9 = v8;
  v10 = 0;
  v11 = 0;
  if (v8)
  {
    [v8 doubleValue];
    v11 = v12;
  }

  v13 = &v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
  *v13 = v11;
  v13[8] = v9 == 0;
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    v10 = v16;
  }

  v17 = &v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
  *v17 = v10;
  v17[8] = v15 == 0;
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  v19 = v18;
  if (v18)
  {
    [v18 doubleValue];
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = &v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
  *v22 = v21;
  v22[8] = v19 == 0;
  v23 = MEMORY[0x21CE91FC0](0x7469736E65537369, 0xEB00000000657669);
  v24 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = v24;
  v25 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x80000002165752F0);
  v26 = [a1 decodeInt64ForKey_];

  v27 = &v2[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
  *v27 = v26;
  v27[8] = 0;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for SuggestionRanking();
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.CodingKeys and conformance SuggestionRanking.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory()
{
  result = lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionRanking.VisibilityCategory and conformance SuggestionRanking.VisibilityCategory);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t getEnumTagSinglePayload for SuggestionRanking.VisibilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionRanking.VisibilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionRanking.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionRanking.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for MOTaskWork(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

Swift::Int Exif.ExifError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  return Hasher._finalize()();
}

unint64_t one-time initialization function for _propertyFilter()
{
  result = closure #1 in variable initialization expression of static Exif._propertyFilter();
  static Exif._propertyFilter = result;
  return result;
}

unint64_t closure #1 in variable initialization expression of static Exif._propertyFilter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA40;
  v1 = *MEMORY[0x277CD3258];
  *(inited + 32) = *MEMORY[0x277CD3258];
  v2 = *MEMORY[0x277CBEEE8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CFNullRefaSgMd);
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CD3490];
  *(inited + 64) = v41;
  *(inited + 72) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_So06CFNullE0aSgtGMd);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277CD34A0];
  *(v4 + 16) = xmmword_21658CA50;
  v6 = *v5;
  *(v4 + 32) = *v5;
  *(v4 + 40) = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  v10 = v6;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of UTType?(v4 + 32, &_sSo11CFStringRefa_So06CFNullB0aSgtMd);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSo06CFNullB0aSgGMd);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x277CD3038];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = swift_initStackObject();
  v15 = MEMORY[0x277CD3198];
  *(v14 + 16) = xmmword_21658CA50;
  v16 = *v15;
  *(v14 + 32) = *v15;
  *(v14 + 40) = v2;
  v17 = v7;
  v18 = v13;
  v19 = v16;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of UTType?(v14 + 32, &_sSo11CFStringRefa_So06CFNullB0aSgtMd);
  *(inited + 120) = v20;
  v21 = *MEMORY[0x277CD3438];
  *(inited + 144) = v12;
  *(inited + 152) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_21658CA60;
  v23 = *MEMORY[0x277CD3420];
  *(v22 + 32) = *MEMORY[0x277CD3420];
  v24 = *MEMORY[0x277CD3430];
  *(v22 + 40) = v2;
  *(v22 + 48) = v24;
  *(v22 + 56) = v2;
  v25 = v17;
  v26 = v21;
  v27 = v23;
  v28 = v24;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_So06CFNullB0aSgtMd);
  swift_arrayDestroy();
  *(inited + 160) = v29;
  v30 = *MEMORY[0x277CD3380];
  *(inited + 184) = v12;
  *(inited + 192) = v30;
  *(inited + 200) = v2;
  v31 = *MEMORY[0x277CD2E10];
  *(inited + 224) = v41;
  *(inited + 232) = v31;
  v32 = swift_initStackObject();
  v33 = MEMORY[0x277CD2E08];
  *(v32 + 16) = xmmword_21658CA50;
  v34 = *v33;
  *(v32 + 32) = *v33;
  *(v32 + 40) = v2;
  v35 = v30;
  v36 = v31;
  v37 = v34;
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(v32);
  swift_setDeallocating();
  outlined destroy of UTType?(v32 + 32, &_sSo11CFStringRefa_So06CFNullB0aSgtMd);
  *(inited + 264) = v12;
  *(inited + 240) = v38;
  v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd);
  swift_arrayDestroy();
  return v39;
}

uint64_t static Exif.filterImage(inputURL:outputURL:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](static Exif.filterImage(inputURL:outputURL:), 0, 0);
}

uint64_t static Exif.filterImage(inputURL:outputURL:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CGImageSourceCreateWithURL(v2, 0);
  v1[4] = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v5[1] = static Exif.filterImage(inputURL:outputURL:);
    v6 = v1[3];

    return specialized static Exif.filterImage(imageSource:outputURL:)(v4, v6);
  }

  else
  {
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v1[1];

    return v9();
  }
}

uint64_t static Exif.filterImage(inputURL:outputURL:)()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = static Exif.filterImage(inputURL:outputURL:);
  }

  else
  {
    v2 = static Exif.filterImage(inputURL:outputURL:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError()
{
  result = lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError;
  if (!lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError;
  if (!lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Exif.ExifError and conformance Exif.ExifError);
  }

  return result;
}

uint64_t static Exif.filterImage(imageSource:outputURL:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized static Exif.filterImage(imageSource:outputURL:)(a1, a2);
}

uint64_t static Exif.filterImage(imageSource:outputURL:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static Exif.filterImage(inputData:outputURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static Exif.filterImage(inputData:outputURL:), 0, 0);
}

uint64_t static Exif.filterImage(inputData:outputURL:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = CGImageSourceCreateWithData(isa, 0);
  v0[5] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = static Exif.filterImage(inputData:outputURL:);
    v4 = v0[4];

    return specialized static Exif.filterImage(imageSource:outputURL:)(v2, v4);
  }

  else
  {
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = static Exif.filterImage(inputData:outputURL:);
  }

  else
  {
    v2 = static Exif.filterImage(inputData:outputURL:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.exif);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_21607C000, v7, v8, "Exif.filterImage() for %{private,mask.hash}s END", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t static Exif.filterVideo(inputURL:outputURL:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return (specialized static Exif.filterVideo(inputURL:outputURL:))(a1, a2);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t specialized static Exif.filterImage(imageSource:outputURL:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static Exif.filterImage(imageSource:outputURL:), 0, 0);
}

uint64_t specialized static Exif.filterImage(imageSource:outputURL:)()
{
  v137 = v0;
  v1 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  if (v3 > 0.0)
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[16] = __swift_project_value_buffer(v4, static CommonLogger.interstitial);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_21607C000, v5, v6, "[EXIF] Background Processing Fake Work for %{public}f seconds BEGIN", v7, 0xCu);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = specialized static Exif.filterImage(imageSource:outputURL:);

    return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v13 = v0[12];
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static CommonLogger.exif);
  v131 = *(v15 + 16);
  v131(v13, v16, v14);
  v134 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[12];
  v23 = v0[7];
  v24 = v0[8];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v136[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v132 = *(v24 + 8);
    v132(v22, v23);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v136);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_21607C000, v19, v20, "Exif.filterImage() for %{private,mask.hash}s BEGIN", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CE94770](v26, -1, -1);
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  else
  {

    v132 = *(v24 + 8);
    v132(v22, v23);
  }

  v31 = CGImageDestinationCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v136[0] = 0;
  type metadata accessor for CFStringRef(0);
  v33 = v32;
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  v35 = v134;
  v34 = v136[0];
  if (!v136[0])
  {
LABEL_66:
    __break(1u);
    return result;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v136[0] = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x21CE922B0](v34, v33);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v136);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_21607C000, v36, v37, "Exif.filterImage() Possible Destination Types: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x21CE94770](v39, -1, -1);
    MEMORY[0x21CE94770](v38, -1, -1);
  }

  v43 = CGImageSourceGetType(v0[5]);
  if (!v43)
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21607C000, v55, v56, "Exif.filterImage() Invalid source type", v57, 2u);
      MEMORY[0x21CE94770](v57, -1, -1);
    }

    v58 = v0[6];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();
    goto LABEL_58;
  }

  v44 = v43;
  v45 = (v0 + 2);
  v46 = v43;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138543362;
    *(v49 + 4) = v46;
    *v50 = v44;
    v51 = v46;
    _os_log_impl(&dword_21607C000, v47, v48, "Exif.filterImage() Source Type: %{public}@", v49, 0xCu);
    outlined destroy of UTType?(v50, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v50, -1, -1);
    MEMORY[0x21CE94770](v49, -1, -1);
  }

  *v45 = v46;
  v52 = swift_task_alloc();
  *(v52 + 16) = v45;
  v53 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v52, v34);

  if (v53)
  {

    v54 = v46;
    goto LABEL_35;
  }

  v60 = 0xEB00000000636965;
  v61 = 0x682E63696C627570;
  v62 = MEMORY[0x21CE91FC0](0x682E63696C627570, 0xEB00000000636965);
  v0[3] = v62;
  v63 = swift_task_alloc();
  *(v63 + 16) = v0 + 3;
  v64 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v63, v34);

  if (v64 & 1) != 0 || (v60 = 0xEB00000000676570, v61 = 0x6A2E63696C627570, v65 = MEMORY[0x21CE91FC0](0x6A2E63696C627570, 0xEB00000000676570), v0[4] = v65, v66 = swift_task_alloc(), *(v66 + 16) = v0 + 4, v67 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v66, v34), v65, result = , (v67))
  {

    v54 = MEMORY[0x21CE91FC0](v61, v60);
    goto LABEL_35;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x21CE93180](0, v34);
    goto LABEL_34;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_66;
  }

  v68 = *(v34 + 32);
LABEL_34:
  v69 = v68;

  v54 = v69;
LABEL_35:
  v70 = v54;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 141558275;
    *(v73 + 4) = 1752392040;
    *(v73 + 12) = 2113;
    *(v73 + 14) = v70;
    *v74 = v70;
    v75 = v70;
    _os_log_impl(&dword_21607C000, v71, v72, "Exif.filterImage() Destination Type: %{private,mask.hash}@", v73, 0x16u);
    outlined destroy of UTType?(v74, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v74, -1, -1);
    MEMORY[0x21CE94770](v73, -1, -1);
  }

  v133 = v0;
  v76 = v0[5];

  Count = CGImageSourceGetCount(v76);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134349056;
    *(v80 + 4) = Count;
    _os_log_impl(&dword_21607C000, v78, v79, "Exif.filterImage() Sub-images: %{public}ld", v80, 0xCu);
    MEMORY[0x21CE94770](v80, -1, -1);
  }

  URL._bridgeToObjectiveC()(v81);
  v83 = v82;
  v84 = CGImageDestinationCreateWithURL(v82, v70, Count, 0);

  v85 = v133[6];
  v86 = v133[7];
  if (!v84)
  {
    v131(v133[9], v85, v86);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v133[9];
    v100 = v133[7];
    v0 = v133;
    if (v98)
    {
      v101 = swift_slowAlloc();
      v130 = v46;
      v135 = swift_slowAlloc();
      v136[0] = v135;
      *v101 = 141558275;
      *(v101 + 4) = 1752392040;
      *(v101 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v70;
      v105 = v104;
      v132(v99, v100);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v105, v136);
      v70 = v103;

      *(v101 + 14) = v106;
      _os_log_impl(&dword_21607C000, v96, v97, "Exif.filterImage() Invalid destination %{private,mask.hash}s", v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v135);
      v46 = v130;
      MEMORY[0x21CE94770](v135, -1, -1);
      MEMORY[0x21CE94770](v101, -1, -1);
    }

    else
    {

      v132(v99, v100);
    }

    v58 = v133[6];
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v125 = 3;
    swift_willThrow();

    goto LABEL_58;
  }

  v128 = v70;
  v131(v133[11], v85, v86);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v133[11];
  v91 = v133[7];
  v129 = v46;
  if (v89)
  {
    v92 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v136[0] = v127;
    *v92 = 141558275;
    *(v92 + 4) = 1752392040;
    *(v92 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v93 = v88;
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v94;
    v132(v90, v91);
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v35, v136);

    *(v92 + 14) = v95;
    _os_log_impl(&dword_21607C000, v87, v93, "Exif.filterImage() Rewriting: %{private,mask.hash}s", v92, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x21CE94770](v127, -1, -1);
    MEMORY[0x21CE94770](v92, -1, -1);
  }

  else
  {

    v132(v90, v91);
  }

  if ((Count & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_63:
    swift_once();
    goto LABEL_48;
  }

  v88 = v84;
  v107 = v84;
  if (!Count)
  {
    goto LABEL_50;
  }

  v35 = Count;
  if (one-time initialization token for _propertyFilter != -1)
  {
    goto LABEL_63;
  }

LABEL_48:
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v108 = 0;
  v107 = v88;
  do
  {
    v109 = v133[5];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    CGImageDestinationAddImageFromSource(v107, v109, v108, isa);

    ++v108;
  }

  while (v35 != v108);
LABEL_50:
  v111 = v107;
  if (!CGImageDestinationFinalize(v107))
  {
    v131(v133[10], v133[6], v133[7]);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v117 = v133[10];
    v118 = v133[7];
    if (v116)
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v136[0] = v120;
      *v119 = 141558275;
      *(v119 + 4) = 1752392040;
      *(v119 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      v132(v117, v118);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v136);

      *(v119 + 14) = v124;
      _os_log_impl(&dword_21607C000, v114, v115, "Exif.filterImage() Cannot finalize image to %{private,mask.hash}s", v119, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x21CE94770](v120, -1, -1);
      MEMORY[0x21CE94770](v119, -1, -1);
    }

    else
    {

      v132(v117, v118);
    }

    v0 = v133;
    v58 = v133[6];
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v126 = 4;
    swift_willThrow();

LABEL_58:
    $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v58);

    v113 = v0[1];
    goto LABEL_59;
  }

  v112 = v133[6];

  $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v112);

  v113 = v133[1];
LABEL_59:

  return v113();
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = v2[15];
  v4 = v2[14];
  v5 = v2[13];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterImage(imageSource:outputURL:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterImage(imageSource:outputURL:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v129 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[EXIF] Background Processing Fake Work END", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.exif);
  v126 = *(v6 + 16);
  v126(v4, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  v14 = v0[7];
  v13 = v0[8];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v128[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v127 = *(v13 + 8);
    v127(v12, v14);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v128);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_21607C000, v9, v10, "Exif.filterImage() for %{private,mask.hash}s BEGIN", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    v127 = *(v13 + 8);
    v127(v12, v14);
  }

  v21 = CGImageDestinationCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v128[0] = 0;
  type metadata accessor for CFStringRef(0);
  v23 = v22;
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  v25 = v128[0];
  if (!v128[0])
  {
    goto LABEL_57;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v128[0] = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x21CE922B0](v25, v23);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v128);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_21607C000, v26, v27, "Exif.filterImage() Possible Destination Types: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  v33 = CGImageSourceGetType(v0[5]);
  if (!v33)
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_21607C000, v45, v46, "Exif.filterImage() Invalid source type", v47, 2u);
      MEMORY[0x21CE94770](v47, -1, -1);
    }

    v48 = v0[6];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    goto LABEL_49;
  }

  v34 = v33;
  v35 = (v0 + 2);
  v36 = v33;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    *(v39 + 4) = v36;
    *v40 = v34;
    v41 = v36;
    _os_log_impl(&dword_21607C000, v37, v38, "Exif.filterImage() Source Type: %{public}@", v39, 0xCu);
    outlined destroy of UTType?(v40, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v40, -1, -1);
    MEMORY[0x21CE94770](v39, -1, -1);
  }

  *v35 = v36;
  v42 = swift_task_alloc();
  *(v42 + 16) = v35;
  v43 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v42, v25);

  v124 = v36;
  if (v43)
  {

    v44 = v36;
    goto LABEL_26;
  }

  v50 = 0xEB00000000636965;
  v51 = 0x682E63696C627570;
  v52 = MEMORY[0x21CE91FC0](0x682E63696C627570, 0xEB00000000636965);
  v0[3] = v52;
  v53 = swift_task_alloc();
  *(v53 + 16) = v0 + 3;
  v54 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v53, v25);

  if (v54 & 1) != 0 || (v50 = 0xEB00000000676570, v51 = 0x6A2E63696C627570, v55 = MEMORY[0x21CE91FC0](0x6A2E63696C627570, 0xEB00000000676570), v0[4] = v55, v56 = swift_task_alloc(), *(v56 + 16) = v0 + 4, v57 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v56, v25), v55, result = , (v57))
  {

    v44 = MEMORY[0x21CE91FC0](v51, v50);
    goto LABEL_26;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x21CE93180](0, v25);
    goto LABEL_25;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v58 = *(v25 + 32);
LABEL_25:
  v59 = v58;

  v44 = v59;
LABEL_26:
  v60 = v44;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 141558275;
    *(v63 + 4) = 1752392040;
    *(v63 + 12) = 2113;
    *(v63 + 14) = v60;
    *v64 = v60;
    v65 = v60;
    _os_log_impl(&dword_21607C000, v61, v62, "Exif.filterImage() Destination Type: %{private,mask.hash}@", v63, 0x16u);
    outlined destroy of UTType?(v64, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v64, -1, -1);
    MEMORY[0x21CE94770](v63, -1, -1);
  }

  v66 = v0[5];

  Count = CGImageSourceGetCount(v66);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134349056;
    *(v70 + 4) = Count;
    _os_log_impl(&dword_21607C000, v68, v69, "Exif.filterImage() Sub-images: %{public}ld", v70, 0xCu);
    MEMORY[0x21CE94770](v70, -1, -1);
  }

  URL._bridgeToObjectiveC()(v71);
  v73 = v72;
  v74 = v0;
  v75 = CGImageDestinationCreateWithURL(v72, v60, Count, 0);

  v76 = v74[6];
  v77 = v74[7];
  v125 = v60;
  if (!v75)
  {
    v126(v74[9], v76, v77);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v74[9];
    v94 = v74[7];
    v0 = v74;
    if (v92)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v128[0] = v96;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v127(v93, v94);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v128);

      *(v95 + 14) = v100;
      _os_log_impl(&dword_21607C000, v90, v91, "Exif.filterImage() Invalid destination %{private,mask.hash}s", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x21CE94770](v96, -1, -1);
      MEMORY[0x21CE94770](v95, -1, -1);
    }

    else
    {

      v127(v93, v94);
    }

    v48 = v0[6];
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v119 = 3;
    swift_willThrow();

    goto LABEL_49;
  }

  v126(v74[11], v76, v77);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v74[11];
  v82 = v74[7];
  idst = v75;
  v123 = v74;
  if (v80)
  {
    v83 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v128[0] = v121;
    *v83 = 141558275;
    *(v83 + 4) = 1752392040;
    *(v83 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v84 = v79;
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = Count;
    v88 = v87;
    v127(v81, v82);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v88, v128);
    Count = v86;

    *(v83 + 14) = v89;
    _os_log_impl(&dword_21607C000, v78, v84, "Exif.filterImage() Rewriting: %{private,mask.hash}s", v83, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v121);
    MEMORY[0x21CE94770](v121, -1, -1);
    MEMORY[0x21CE94770](v83, -1, -1);
  }

  else
  {

    v127(v81, v82);
  }

  if ((Count & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_39;
  }

  v101 = idst;
  if (!Count)
  {
    goto LABEL_41;
  }

  if (one-time initialization token for _propertyFilter != -1)
  {
    goto LABEL_54;
  }

LABEL_39:
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v102 = 0;
  v101 = idst;
  do
  {
    v103 = v123[5];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    CGImageDestinationAddImageFromSource(idst, v103, v102, isa);

    ++v102;
  }

  while (Count != v102);
LABEL_41:
  v105 = v101;
  if (!CGImageDestinationFinalize(v101))
  {
    v126(v123[10], v123[6], v123[7]);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v123[10];
    v112 = v123[7];
    if (v110)
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v128[0] = v114;
      *v113 = 141558275;
      *(v113 + 4) = 1752392040;
      *(v113 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v116;
      v127(v111, v112);
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, v128);
      v105 = idst;

      *(v113 + 14) = v118;
      _os_log_impl(&dword_21607C000, v108, v109, "Exif.filterImage() Cannot finalize image to %{private,mask.hash}s", v113, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x21CE94770](v114, -1, -1);
      MEMORY[0x21CE94770](v113, -1, -1);
    }

    else
    {

      v127(v111, v112);
    }

    v0 = v123;
    v48 = v123[6];
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v120 = 4;
    swift_willThrow();

LABEL_49:
    $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v48);

    v107 = v0[1];
    goto LABEL_50;
  }

  v106 = v123[6];

  $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v106);

  v107 = v123[1];
LABEL_50:

  return v107();
}

{
  v132 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[EXIF] Background Processing Fake Work END", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v4 = *(v130 + 96);
  v5 = *(v130 + 56);
  v6 = *(v130 + 64);
  v7 = *(v130 + 48);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.exif);
  v128 = *(v6 + 16);
  v128(v4, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v130 + 96);
  v13 = *(v130 + 56);
  v14 = *(v130 + 64);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v131[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v13);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v131);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_21607C000, v9, v10, "Exif.filterImage() for %{private,mask.hash}s BEGIN", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    v22 = v15;
    v23 = v20;
    MEMORY[0x21CE94770](v22, -1, -1);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v12, v13);
  }

  v24 = CGImageDestinationCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v131[0] = 0;
  type metadata accessor for CFStringRef(0);
  v26 = v25;
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  v28 = v131[0];
  if (!v131[0])
  {
    goto LABEL_57;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v131[0] = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x21CE922B0](v28, v26);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v131);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_21607C000, v29, v30, "Exif.filterImage() Possible Destination Types: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x21CE94770](v32, -1, -1);
    MEMORY[0x21CE94770](v31, -1, -1);
  }

  v36 = CGImageSourceGetType(*(v130 + 40));
  if (!v36)
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_21607C000, v48, v49, "Exif.filterImage() Invalid source type", v50, 2u);
      MEMORY[0x21CE94770](v50, -1, -1);
    }

    v51 = *(v130 + 48);

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    goto LABEL_49;
  }

  v37 = v36;
  v38 = (v130 + 16);
  v39 = v36;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v37;
    v44 = v39;
    _os_log_impl(&dword_21607C000, v40, v41, "Exif.filterImage() Source Type: %{public}@", v42, 0xCu);
    outlined destroy of UTType?(v43, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v43, -1, -1);
    MEMORY[0x21CE94770](v42, -1, -1);
  }

  *v38 = v39;
  v45 = swift_task_alloc();
  *(v45 + 16) = v38;
  v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v45, v28);

  if (v46)
  {

    v47 = v39;
    goto LABEL_26;
  }

  v53 = 0xEB00000000636965;
  v54 = 0x682E63696C627570;
  v55 = MEMORY[0x21CE91FC0](0x682E63696C627570, 0xEB00000000636965);
  *(v130 + 24) = v55;
  v56 = swift_task_alloc();
  *(v56 + 16) = v130 + 24;
  v57 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v56, v28);

  if (v57 & 1) != 0 || (v53 = 0xEB00000000676570, v54 = 0x6A2E63696C627570, v58 = MEMORY[0x21CE91FC0](0x6A2E63696C627570, 0xEB00000000676570), *(v130 + 32) = v58, v59 = swift_task_alloc(), *(v59 + 16) = v130 + 32, v60 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v59, v28), v58, result = , (v60))
  {

    v47 = MEMORY[0x21CE91FC0](v54, v53);
    goto LABEL_26;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x21CE93180](0, v28);
    goto LABEL_25;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v61 = *(v28 + 32);
LABEL_25:
  v62 = v61;

  v47 = v62;
LABEL_26:
  v63 = v47;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 141558275;
    *(v66 + 4) = 1752392040;
    *(v66 + 12) = 2113;
    *(v66 + 14) = v63;
    *v67 = v63;
    v68 = v63;
    _os_log_impl(&dword_21607C000, v64, v65, "Exif.filterImage() Destination Type: %{private,mask.hash}@", v66, 0x16u);
    outlined destroy of UTType?(v67, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v67, -1, -1);
    MEMORY[0x21CE94770](v66, -1, -1);
  }

  v69 = *(v130 + 40);

  Count = CGImageSourceGetCount(v69);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134349056;
    *(v73 + 4) = Count;
    _os_log_impl(&dword_21607C000, v71, v72, "Exif.filterImage() Sub-images: %{public}ld", v73, 0xCu);
    MEMORY[0x21CE94770](v73, -1, -1);
  }

  URL._bridgeToObjectiveC()(v74);
  v76 = v75;
  v77 = CGImageDestinationCreateWithURL(v75, v63, Count, 0);

  v78 = *(v130 + 48);
  v79 = *(v130 + 56);
  v126 = v39;
  idst = v77;
  if (!v77)
  {
    v128(*(v130 + 72), v78, v79);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = *(v130 + 72);
    v94 = *(v130 + 56);
    if (v92)
    {
      v95 = swift_slowAlloc();
      v96 = v23;
      v129 = swift_slowAlloc();
      v131[0] = v129;
      *v95 = 141558275;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v97 = v63;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v96(v93, v94);
      v101 = v98;
      v63 = v97;
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v100, v131);

      *(v95 + 14) = v102;
      _os_log_impl(&dword_21607C000, v90, v91, "Exif.filterImage() Invalid destination %{private,mask.hash}s", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x21CE94770](v129, -1, -1);
      MEMORY[0x21CE94770](v95, -1, -1);
    }

    else
    {

      v23(v93, v94);
    }

    v51 = *(v130 + 48);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v122 = 3;
    swift_willThrow();

    goto LABEL_49;
  }

  v128(*(v130 + 88), v78, v79);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.debug.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = *(v130 + 88);
  v84 = *(v130 + 56);
  if (v82)
  {
    v85 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v131[0] = v125;
    *v85 = 141558275;
    *(v85 + 4) = 1752392040;
    *(v85 + 12) = 2081;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    LODWORD(v124) = v81;
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v87;
    v23(v83, v84);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v131);

    *(v85 + 14) = v89;
    _os_log_impl(&dword_21607C000, v80, v124, "Exif.filterImage() Rewriting: %{private,mask.hash}s", v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x21CE94770](v125, -1, -1);
    MEMORY[0x21CE94770](v85, -1, -1);
  }

  else
  {

    v23(v83, v84);
  }

  if ((Count & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_39;
  }

  v124 = v23;
  v125 = v63;
  v103 = idst;
  if (!Count)
  {
    goto LABEL_41;
  }

  if (one-time initialization token for _propertyFilter != -1)
  {
    goto LABEL_54;
  }

LABEL_39:
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v104 = 0;
  v103 = idst;
  do
  {
    v105 = *(v130 + 40);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    CGImageDestinationAddImageFromSource(idst, v105, v104, isa);

    ++v104;
  }

  while (Count != v104);
LABEL_41:
  v107 = v103;
  if (!CGImageDestinationFinalize(v103))
  {
    v128(*(v130 + 80), *(v130 + 48), *(v130 + 56));
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v130 + 80);
    v114 = *(v130 + 56);
    if (v112)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v131[0] = v116;
      *v115 = 141558275;
      *(v115 + 4) = 1752392040;
      *(v115 + 12) = 2081;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      v124(v113, v114);
      v120 = v117;
      v107 = idst;
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, v131);

      *(v115 + 14) = v121;
      _os_log_impl(&dword_21607C000, v110, v111, "Exif.filterImage() Cannot finalize image to %{private,mask.hash}s", v115, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x21CE94770](v116, -1, -1);
      MEMORY[0x21CE94770](v115, -1, -1);
    }

    else
    {

      v124(v113, v114);
    }

    v51 = *(v130 + 48);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v123 = 4;
    swift_willThrow();

LABEL_49:
    $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v51);

    v109 = *(v130 + 8);
    goto LABEL_50;
  }

  v108 = *(v130 + 48);

  $defer #1 () in static Exif.filterImage(imageSource:outputURL:)(v108);

  v109 = *(v130 + 8);
LABEL_50:

  return v109();
}