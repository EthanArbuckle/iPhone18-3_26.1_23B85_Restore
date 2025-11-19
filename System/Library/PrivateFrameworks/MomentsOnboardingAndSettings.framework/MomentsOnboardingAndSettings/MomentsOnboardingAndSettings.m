uint64_t sub_25A201F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A201F50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A201F88()
{
  MEMORY[0x25F84FC30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A201FC0()
{
  v1 = v0[2];

  if (v0[4])
  {

    v2 = v0[6];

    v3 = v0[9];
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25A202014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A20204C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A202084@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_25A2020E0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_25A202144@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_25A2021A0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_25A202204@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25A2022BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_25A202318(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_25A202380@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_25A2023DC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_25A202444()
{
  MEMORY[0x25F84FC30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A20263C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25A202654()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25A20406C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose(&STACK[0x580], 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Block_object_dispose(&STACK[0x5C0], 8);
  _Block_object_dispose(&STACK[0x5E0], 8);
  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose(&STACK[0x620], 8);
  _Block_object_dispose(&STACK[0x640], 8);
  _Block_object_dispose(&STACK[0x660], 8);
  _Block_object_dispose(&STACK[0x680], 8);
  _Block_object_dispose(&STACK[0x6A0], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25A204A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25A2057C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25A2060AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _MODiagnosticReporter_NotificationHandler(uint64_t a1, uint64_t a2)
{
  v4 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _MODiagnosticReporter_NotificationHandler_cold_1(a2, v4);
  }

  v5 = +[MODiagnosticReporter defaultReporter];
  [v5 _notificationHandlerWithNotificationRef:a1 andOptionFlags:a2];
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_25A20A4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsOnboardingAndSettings", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void sub_25A20B71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL isValidString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [v1 stringByTrimmingCharactersInSet:v2];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_25A20FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_25A2107D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25A211DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t key path getter for MOSuggestionSheetOnboardingSettingsViewController.delegate : MOSuggestionSheetOnboardingSettingsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOSuggestionSheetOnboardingSettingsViewController.delegate : MOSuggestionSheetOnboardingSettingsViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.delegate.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for MOSuggestionSheetOnboardingSettingsViewController.hasTappedOnboardingCompletion : MOSuggestionSheetOnboardingSettingsViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.hasTappedOnboardingCompletion.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_hasTappedOnboardingCompletion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.hasTappedOnboardingCompletion.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_hasTappedOnboardingCompletion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOSuggestionSheetOnboardingSettingsViewController.turnOnSuggestionsButton : MOSuggestionSheetOnboardingSettingsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOSuggestionSheetOnboardingSettingsViewController.turnOnSuggestionsButton : MOSuggestionSheetOnboardingSettingsViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

void *MOSuggestionSheetOnboardingSettingsViewController.turnOnSuggestionsButton.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_turnOnSuggestionsButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetOnboardingSettingsViewController.turnOnSuggestionsButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_turnOnSuggestionsButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for MOSuggestionSheetOnboardingSettingsViewController.backButton : MOSuggestionSheetOnboardingSettingsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOSuggestionSheetOnboardingSettingsViewController.backButton : MOSuggestionSheetOnboardingSettingsViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

void *MOSuggestionSheetOnboardingSettingsViewController.backButton.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_backButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetOnboardingSettingsViewController.backButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_backButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for MOSuggestionSheetOnboardingSettingsViewController.wasSwitchDisabled : MOSuggestionSheetOnboardingSettingsViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.wasSwitchDisabled.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_wasSwitchDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetOnboardingSettingsViewController.wasSwitchDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_wasSwitchDisabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *closure #1 in variable initialization expression of MOSuggestionSheetOnboardingSettingsViewController.journalingSuggestionsSettings()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = (*(*(v0 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = v158 - v2;
  v4 = MEMORY[0x25F84F220](0xD00000000000001CLL, 0x800000025A2270F0);
  v5 = [objc_opt_self() bundleWithIdentifier_];

  type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v170._object = 0x800000025A227290;
  v9 = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD0000000000000A0;
  v10._object = 0x800000025A2271E0;
  v170._countAndFlagsBits = 0xD00000000000002CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v11, v170);

  v165 = ObjCClassFromMetadata;
  v166 = v5;
  v169 = v0;
  if (!v5)
  {
    v16 = 0;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25A224080;
    v19 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v12;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = v16;
    *(v18 + 80) = v9;

    v21 = String.init(format:_:)();
    v23 = v22;
    v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v25 = MEMORY[0x25F84F220](v21, v23);
    v26 = [v24 initWithString_];

    v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v28 = MEMORY[0x25F84F220](v21, v23);

    v29 = [v27 initWithString_];

    v30 = MEMORY[0x25F84F220](v16, v9);

    v31 = [v29 rangeOfString_];
    v33 = v32;

    v34 = *MEMORY[0x277D740E8];
    URL.init(string:)();
    v35 = Optional._bridgeToObjectiveC()();
    outlined destroy of (NSAttributedStringKey, UIFont)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v164 = v26;
    [v26 addAttribute:v34 value:v35 range:{v31, v33}];
    swift_unknownObjectRelease();
    v169 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
    [v169 setAttributedText_];
    v36 = [objc_allocWithZone(MEMORY[0x277D75C40]) &selRef_constraintEqualToAnchor_];
    *&v161 = v36;
    v37 = v165;
    v38 = [v7 bundleForClass_];
    v39._countAndFlagsBits = 0xD000000000000018;
    v171._object = 0x800000025A2272E0;
    v39._object = 0x800000025A2272C0;
    v171._countAndFlagsBits = 0xD000000000000033;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v171);

    v42 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v43 = MEMORY[0x25F84F220](v41._countAndFlagsBits, v41._object);

    v44 = [v42 initWithString_];

    [v36 setAttributedText_];
    v45 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
    v162 = v45;
    v46 = [v7 bundleForClass_];
    v172._object = 0x800000025A227370;
    v47._countAndFlagsBits = 0xD000000000000044;
    v47._object = 0x800000025A227320;
    v172._countAndFlagsBits = 0xD000000000000029;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v172);

    v50 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v51 = MEMORY[0x25F84F220](v49._countAndFlagsBits, v49._object);

    v52 = [v50 initWithString_];

    [v45 setAttributedText_];
    v53 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
    v163 = v53;
    v54 = [v7 bundleForClass_];
    v173._object = 0x800000025A2273A0;
    v55._countAndFlagsBits = 0x502059425241454ELL;
    v55._object = 0xED0000454C504F45;
    v173._countAndFlagsBits = 0xD00000000000002ALL;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v173);

    v58 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v59 = MEMORY[0x25F84F220](v57._countAndFlagsBits, v57._object);

    v60 = [v58 initWithString_];

    [v53 setAttributedText_];
    v61 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
    v160 = v61;
    v62 = [v7 bundleForClass_];
    v174._object = 0x800000025A2274B0;
    v63._object = 0x800000025A2273D0;
    v174._countAndFlagsBits = 0xD000000000000037;
    v63._countAndFlagsBits = 0x10000000000000DELL;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v174);

    v66 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v67 = MEMORY[0x25F84F220](v65._countAndFlagsBits, v65._object);

    v68 = [v66 initWithString_];

    [v61 setAttributedText_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28MomentsOnboardingAndSettings03AppG11OptionGroupVGMd, &_ss23_ContiguousArrayStorageCy28MomentsOnboardingAndSettings03AppG11OptionGroupVGMR);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_25A224090;
    v158[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy28MomentsOnboardingAndSettings10AppSettingVGMd, &_ss23_ContiguousArrayStorageCy28MomentsOnboardingAndSettings10AppSettingVGMR);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_25A2240A0;
    v70 = [v7 bundleForClass_];
    v175._object = 0x800000025A226E10;
    v71._countAndFlagsBits = 0x7974697669746341;
    v175._countAndFlagsBits = 0xD000000000000043;
    v71._object = 0xE800000000000000;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v175);

    v74 = [v7 bundleForClass_];
    v176._object = 0x800000025A227510;
    v75._object = 0x800000025A2274F0;
    v176._countAndFlagsBits = 0xD00000000000004CLL;
    v75._countAndFlagsBits = 0xD00000000000001ALL;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v176);

    v78 = objc_opt_self();
    v79 = [v78 sharedInstance];
    LOBYTE(v74) = [v79 getStateForSetting_];

    *(v69 + 32) = v73;
    *(v69 + 48) = v77;
    *(v69 + 64) = v74;
    *(v69 + 72) = xmmword_25A2240B0;
    v80 = [v7 bundleForClass_];
    v177._object = 0x800000025A226E60;
    v81._countAndFlagsBits = 0x616964654DLL;
    v177._countAndFlagsBits = 0xD000000000000046;
    v81._object = 0xE500000000000000;
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v177);

    v84 = [v7 bundleForClass_];
    v178._object = 0x800000025A227590;
    v85._countAndFlagsBits = 0xD000000000000021;
    v85._object = 0x800000025A227560;
    v178._countAndFlagsBits = 0xD000000000000028;
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v178);

    v168 = v78;
    v88 = [v78 sharedInstance];
    LOBYTE(v53) = [v88 getStateForSetting_];

    *(v69 + 88) = v83;
    *(v69 + 104) = v87;
    *(v69 + 120) = v53;
    *(v69 + 128) = xmmword_25A2240C0;
    v89 = [v7 bundleForClass_];
    v179._object = 0x800000025A226EB0;
    v90._countAndFlagsBits = 0x73746361746E6F43;
    v179._countAndFlagsBits = 0xD000000000000065;
    v90._object = 0xE800000000000000;
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v179);

    v93 = [v7 bundleForClass_];
    v180._object = 0x800000025A2275E0;
    v94._countAndFlagsBits = 0xD00000000000001BLL;
    v94._object = 0x800000025A2275C0;
    v180._countAndFlagsBits = 0xD000000000000034;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v180);

    v97 = [v78 sharedInstance];
    LOBYTE(v53) = [v97 getStateForSetting_];

    *(v69 + 144) = v92;
    *(v69 + 160) = v96;
    *(v69 + 176) = v53;
    *(v69 + 184) = xmmword_25A2240D0;
    v98 = [v7 bundleForClass_];
    v181._object = 0x800000025A226F20;
    v99._countAndFlagsBits = 0x736F746F6850;
    v181._countAndFlagsBits = 0xD000000000000039;
    v99._object = 0xE600000000000000;
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v181);

    v102 = [v7 bundleForClass_];
    v182._object = 0x800000025A227650;
    v103._countAndFlagsBits = 0xD000000000000024;
    v103._object = 0x800000025A227620;
    v182._countAndFlagsBits = 0xD000000000000047;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v182);

    v106 = v168;
    v107 = [v168 sharedInstance];
    LOBYTE(v53) = [v107 getStateForSetting_];

    *(v69 + 200) = v101;
    *(v69 + 216) = v105;
    *(v69 + 232) = v53;
    *(v69 + 240) = xmmword_25A2240E0;
    v167 = v7;
    v108 = [v7 bundleForClass_];
    v109._countAndFlagsBits = 0xD000000000000015;
    v183._object = 0x800000025A226F80;
    v109._object = 0x800000025A226F60;
    v183._countAndFlagsBits = 0xD00000000000004FLL;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, 0, v108, v110, v183);

    v112 = [v7 bundleForClass_];
    v184._object = 0x800000025A2276C0;
    v113._countAndFlagsBits = 0xD00000000000001BLL;
    v113._object = 0x800000025A2276A0;
    v184._countAndFlagsBits = 0xD000000000000041;
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v113, 0, v112, v114, v184);

    v116 = [v106 sharedInstance];
    LOBYTE(v53) = [v116 getStateForSetting_];

    *(v69 + 256) = v111;
    *(v69 + 272) = v115;
    *(v69 + 288) = v53;
    *(v69 + 296) = 0x6E6F697461636F6CLL;
    *(v69 + 304) = 0xE900000000000073;
    v117 = v167;
    v118 = [v167 bundleForClass_];
    v185._object = 0x800000025A226FD0;
    v119._countAndFlagsBits = 0x666F206574617453;
    v119._object = 0xED0000646E694D20;
    v185._countAndFlagsBits = 0xD000000000000048;
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v185);

    v122 = v37;
    v123 = [v117 bundleForClass_];
    v186._object = 0x800000025A227730;
    v124._object = 0x800000025A227710;
    v186._countAndFlagsBits = 0xD00000000000003FLL;
    v124._countAndFlagsBits = 0xD00000000000001ALL;
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    v126 = NSLocalizedString(_:tableName:bundle:value:comment:)(v124, 0, v123, v125, v186);

    v127 = v106;
    v128 = [v106 sharedInstance];
    LOBYTE(v53) = [v128 getStateForSetting_];

    *(v69 + 312) = v121;
    *(v69 + 328) = v126;
    *(v69 + 344) = v53;
    *(v69 + 352) = xmmword_25A2240F0;
    v129 = v161;
    v158[0] = v161;
    v130 = specialized AppSettingsOptionGroup.init(appSettings:header:footer:)(v69, v129, v169);
    v131 = v159;
    *(v159 + 32) = v130;
    v131[5] = v132;
    v131[6] = v133;
    v134 = swift_allocObject();
    v161 = xmmword_25A224100;
    *(v134 + 16) = xmmword_25A224100;
    v135 = v167;
    v136 = [v167 bundleForClass_];
    v137._countAndFlagsBits = 0xD000000000000012;
    v187._object = 0x800000025A227770;
    v137._object = 0x800000025A227020;
    v187._countAndFlagsBits = 0xD000000000000045;
    v138._countAndFlagsBits = 0;
    v138._object = 0xE000000000000000;
    v139 = NSLocalizedString(_:tableName:bundle:value:comment:)(v137, 0, v136, v138, v187);

    v140 = [v127 sharedInstance];
    LOBYTE(v61) = [v140 getStateForSetting_];

    *(v134 + 32) = v139;
    *(v134 + 48) = 0;
    *(v134 + 56) = 0;
    *(v134 + 64) = v61;
    *(v134 + 72) = xmmword_25A224110;
    v141 = objc_opt_self();
    v142 = *MEMORY[0x277D76968];
    v143 = v162;
    v144 = v162;
    v145 = [v141 preferredFontForTextStyle_];
    [v144 setFont_];

    [v144 setEditable_];
    [v144 setSelectable_];
    [v144 setScrollEnabled_];
    [v144 setDataDetectorTypes_];
    v131[7] = v134;
    v131[8] = 0;
    v131[9] = v143;
    v146 = swift_allocObject();
    *(v146 + 16) = v161;
    v147 = [v135 bundleForClass_];
    v188._object = 0x800000025A2277C0;
    v148._countAndFlagsBits = 0xD000000000000020;
    v148._object = 0x800000025A227040;
    v188._countAndFlagsBits = 0xD00000000000004ELL;
    v149._countAndFlagsBits = 0;
    v149._object = 0xE000000000000000;
    v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v148, 0, v147, v149, v188);

    v151 = [v168 sharedInstance];
    LOBYTE(v143) = [v151 getStateForSetting_];

    *(v146 + 32) = v150;
    *(v146 + 48) = 0;
    *(v146 + 56) = 0;
    *(v146 + 64) = v143;
    *(v146 + 72) = 0xD000000000000013;
    *(v146 + 80) = 0x800000025A227810;
    v152 = v163;
    v153 = v163;
    v154 = v160;
    v155 = v160;
    v131[10] = specialized AppSettingsOptionGroup.init(appSettings:header:footer:)(v146, v152, v154);
    v131[11] = v156;
    v131[12] = v157;

    return v131;
  }

  result = [v5 privacyFlow];
  if (result)
  {
    v14 = result;
    v15 = [result localizedButtonTitle];

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v17;
    }

    else
    {
      v16 = 0;
      v9 = 0xE000000000000000;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void MOSuggestionSheetOnboardingSettingsViewController.__allocating_init(coder:)()
{
  v0 = [objc_opt_self() sharedInstance];
  closure #1 in variable initialization expression of MOSuggestionSheetOnboardingSettingsViewController.journalingSuggestionsSettings();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MOSuggestionSheetOnboardingSettingsViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_onboardingManager;
  *(v0 + v1) = [objc_opt_self() sharedInstance];
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_delegate) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_hasTappedOnboardingCompletion) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_turnOnSuggestionsButton) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_backButton) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_wasSwitchDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeight) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeightConstraint) = 0;
  v2 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings;
  *(v0 + v2) = closure #1 in variable initialization expression of MOSuggestionSheetOnboardingSettingsViewController.journalingSuggestionsSettings();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionSheetOnboardingSettingsViewController.init(preferDoneFlow:)(char a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_onboardingManager;
  *&v1[v3] = [objc_opt_self() sharedInstance];
  *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_delegate] = 0;
  v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_hasTappedOnboardingCompletion] = 0;
  *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_turnOnSuggestionsButton] = 0;
  *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_backButton] = 0;
  v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_wasSwitchDisabled] = 0;
  *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeight] = 0;
  *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeightConstraint] = 0;
  v4 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings;
  *&v1[v4] = closure #1 in variable initialization expression of MOSuggestionSheetOnboardingSettingsViewController.journalingSuggestionsSettings();
  v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_preferDoneFlow] = a1;
  v5 = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v27._object = 0x800000025A226960;
  v9._object = 0x800000025A226940;
  v27._countAndFlagsBits = 0xD00000000000004ALL;
  v9._countAndFlagsBits = 0xD000000000000015;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v27);

  v12 = MEMORY[0x25F84F220](v11._countAndFlagsBits, v11._object);

  v13 = [v7 bundleForClass_];
  v28._object = 0x800000025A226A00;
  v14._countAndFlagsBits = 0xD000000000000041;
  v14._object = 0x800000025A2269B0;
  v28._countAndFlagsBits = 0xD00000000000003FLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v28);

  v17 = MEMORY[0x25F84F220](v16._countAndFlagsBits, v16._object);

  v26.receiver = v1;
  v26.super_class = v5;
  v18 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v12, v17, 0, 0);

  v19 = v18;
  result = [v19 view];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() systemBackgroundColor];
    [v21 setBackgroundColor_];

    v23 = objc_allocWithZone(MEMORY[0x277D75B40]);
    v24 = v19;
    v25 = [v23 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    [v24 setTableView_];

    MOSuggestionSheetOnboardingSettingsViewController.loadSettingsController()();
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionSheetOnboardingSettingsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  objc_msgSendSuper2(&v27, sel_viewDidAppear_, a1);
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) init];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v3);
  v6 = *((*v4 & *v1) + 0xE8);
  v7 = (v6)(v5);
  if (v7)
  {
    v8 = v7;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v28._object = 0x800000025A226A40;
    v11._countAndFlagsBits = 1801675074;
    v11._object = 0xE400000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000038;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v28);

    v14 = MEMORY[0x25F84F220](v13._countAndFlagsBits, v13._object);

    [v8 setTitle_];
  }

  v15 = [v1 contentView];
  v16 = objc_opt_self();
  v17 = [v16 systemBlueColor];
  [v15 setTintColor_];

  v18 = [v1 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 navigationBar];

    v21 = [v20 backItem];
    if (v21)
    {
      v22 = v6();
      [v21 setBackBarButtonItem_];
    }
  }

  v23 = [v1 navigationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 navigationBar];

    v26 = [v16 systemBlueColor];
    [v25 setTintColor_];
  }
}

Swift::Void __swiftcall MOSuggestionSheetOnboardingSettingsViewController.viewDidLayoutSubviews()()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeight;
  v2 = *&v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeight];
  v3 = [v0 tableView];
  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 contentSize];
  v6 = v5;

  if (v2 == v6)
  {
LABEL_14:
    v32.receiver = v0;
    v32.super_class = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
    objc_msgSendSuper2(&v32, sel_viewDidLayoutSubviews);
    return;
  }

  v7 = [v0 tableView];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  [v7 contentSize];
  v10 = v9;

  *&v0[v1] = v10;
  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v11 reloadData];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v13 layoutIfNeeded];

  v15 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeightConstraint;
  v16 = *&v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_tableViewHeightConstraint];
  if (v16)
  {
    goto LABEL_12;
  }

  v17 = [v0 tableView];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 heightAnchor];

  v20 = [v0 tableView];
  if (v20)
  {
    v21 = v20;
    [v20 contentSize];
    v23 = v22;

    v24 = [v19 constraintEqualToConstant_];
    v25 = *&v0[v15];
    *&v0[v15] = v24;
    v26 = v24;

    if (v26)
    {
      [v26 setActive_];
    }

    v16 = *&v0[v15];
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_12:
    v27 = v16;
    v28 = [v0 tableView];
    if (v28)
    {
      v29 = v28;
      [v28 contentSize];
      v31 = v30;

      [v27 setConstant_];
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

void MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 tableView];
  if (v11)
  {
    v12 = v11;
    MEMORY[0x25F84F110]([a1 tag], a2);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v10, v6);
    v14 = [v12 cellForRowAtIndexPath_];

    if (v14)
    {
      type metadata accessor for SwitchCell();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = (*((*MEMORY[0x277D85000] & *v15) + 0x58))();
        if (v16)
        {
          v17 = v16;
          v16([a1 isOn]);
          outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v17);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void MOSuggestionSheetOnboardingSettingsViewController.setSelectionValue(settingsType:isSwitchOn:)(uint64_t a1, void *a2, char a3)
{
  if (!a2)
  {
    return;
  }

  type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v71._countAndFlagsBits = 0xD000000000000043;
  v71._object = 0x800000025A226E10;
  v10._countAndFlagsBits = 0x7974697669746341;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v71);

  v13 = v12._countAndFlagsBits == a1 && v12._object == a2;
  v14 = &selRef_setPresentingViewController_;
  if (v13)
  {

    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_11:
    v20 = objc_opt_self();
    v21 = [v20 sharedInstance];
    v22 = 1;
    v23 = [v21 getStateForSetting_];

    if (v23 && (a3 & 1) == 0)
    {
      v22 = 1;
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
    }

    goto LABEL_14;
  }

  v16 = [v8 bundleForClass_];
  v72._countAndFlagsBits = 0xD000000000000046;
  v72._object = 0x800000025A226E60;
  v17._countAndFlagsBits = 0x616964654DLL;
  v17._object = 0xE500000000000000;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v72);

  if (v19._countAndFlagsBits == a1 && v19._object == a2)
  {

    v14 = &selRef_setPresentingViewController_;
LABEL_18:
    v20 = objc_opt_self();
    v25 = [v20 v14[15]];
    v22 = 2;
    v26 = [v25 getStateForSetting_];

    if (v26 && (a3 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
      v22 = 2;
    }

    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = &selRef_setPresentingViewController_;
  if (v24)
  {
    goto LABEL_18;
  }

  v27 = [v8 bundleForClass_];
  v73._object = 0x800000025A226EB0;
  v28._countAndFlagsBits = 0x73746361746E6F43;
  v73._countAndFlagsBits = 0xD000000000000065;
  v28._object = 0xE800000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v73);

  if (v30._countAndFlagsBits == a1 && v30._object == a2)
  {

    v14 = &selRef_setPresentingViewController_;
LABEL_25:
    v20 = objc_opt_self();
    v32 = [v20 v14[15]];
    v22 = 3;
    v33 = [v32 getStateForSetting_];

    if (v33 && (a3 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
      v22 = 3;
    }

    goto LABEL_14;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = &selRef_setPresentingViewController_;
  if (v31)
  {
    goto LABEL_25;
  }

  v34 = [v8 bundleForClass_];
  v74._countAndFlagsBits = 0xD000000000000039;
  v74._object = 0x800000025A226F20;
  v35._countAndFlagsBits = 0x736F746F6850;
  v35._object = 0xE600000000000000;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v74);

  if (v37._countAndFlagsBits == a1 && v37._object == a2)
  {

    v14 = &selRef_setPresentingViewController_;
LABEL_32:
    v20 = objc_opt_self();
    v39 = [v20 v14[15]];
    v22 = 4;
    v40 = [v39 getStateForSetting_];

    if (v40 && (a3 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
      v22 = 4;
    }

    goto LABEL_14;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = &selRef_setPresentingViewController_;
  if (v38)
  {
    goto LABEL_32;
  }

  v41 = [v8 bundleForClass_];
  v42._countAndFlagsBits = 0xD000000000000015;
  v75._object = 0x800000025A226F80;
  v42._object = 0x800000025A226F60;
  v75._countAndFlagsBits = 0xD00000000000004FLL;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v75);

  if (v44._countAndFlagsBits == a1 && v44._object == a2)
  {

    v14 = &selRef_setPresentingViewController_;
LABEL_39:
    v20 = objc_opt_self();
    v46 = [v20 v14[15]];
    v22 = 5;
    v47 = [v46 getStateForSetting_];

    if (v47 && (a3 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
      v22 = 5;
    }

    goto LABEL_14;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = &selRef_setPresentingViewController_;
  if (v45)
  {
    goto LABEL_39;
  }

  v48 = [v8 bundleForClass_];
  v76._object = 0x800000025A226FD0;
  v49._countAndFlagsBits = 0x666F206574617453;
  v49._object = 0xED0000646E694D20;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0xD000000000000048;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v76);

  if (v51._countAndFlagsBits == a1 && v51._object == a2)
  {

    v14 = &selRef_setPresentingViewController_;
LABEL_46:
    v20 = objc_opt_self();
    v53 = [v20 v14[15]];
    v22 = 9;
    v54 = [v53 getStateForSetting_];

    if (v54 && (a3 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
      v22 = 9;
    }

    goto LABEL_14;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = &selRef_setPresentingViewController_;
  if (v52)
  {
    goto LABEL_46;
  }

  v55 = [v8 bundleForClass_];
  v56._countAndFlagsBits = 0xD000000000000012;
  v77._object = 0x800000025A226FD0;
  v56._object = 0x800000025A227020;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v77._countAndFlagsBits = 0xD000000000000048;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v77);

  if (v58._countAndFlagsBits == a1 && v58._object == a2)
  {
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {
      v62 = [v8 bundleForClass_];
      v63._countAndFlagsBits = 0xD000000000000020;
      v78._countAndFlagsBits = 0xD000000000000042;
      v78._object = 0x800000025A227070;
      v63._object = 0x800000025A227040;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v78);

      if (v65._countAndFlagsBits == a1 && v65._object == a2)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          return;
        }
      }

      v20 = objc_opt_self();
      v67 = [v20 sharedInstance];
      v22 = 6;
      v68 = [v67 getStateForSetting_];

      if (v68 && (a3 & 1) == 0)
      {
        (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
        v22 = 6;
      }

      v14 = &selRef_setPresentingViewController_;
      goto LABEL_14;
    }
  }

  v20 = objc_opt_self();
  v14 = &selRef_setPresentingViewController_;
  v60 = [v20 sharedInstance];
  v22 = 10;
  v61 = [v60 getStateForSetting_];

  if (v61 && (a3 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v3) + 0x108))(1);
    v22 = 10;
  }

LABEL_14:
  v69 = [v20 v14[15]];
  [v69 setState:a3 & 1 forSetting:v22];
}

void MOSuggestionSheetOnboardingSettingsViewController.requestNotificationPermissions(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v5 = MEMORY[0x25F84F220](0xD000000000000026, 0x800000025A226A80);
  v6 = [v4 initWithBundleIdentifier_];

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = partial apply for closure #1 in MOSuggestionSheetOnboardingSettingsViewController.requestNotificationPermissions(completion:);
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);

  [v6 requestAuthorizationWithOptions:6 completionHandler:v8];

  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Void __swiftcall MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_preferDoneFlow) == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOOnboardingSettingsLogger.shared);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25A200000, v3, v4, "[MOSuggestionSheetOnboardingSettingsViewController] Done tapped", v5, 2u);
      MEMORY[0x25F84FC00](v5, -1, -1);
    }

    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
    if (v6)
    {
      v7 = v6;
      if ([v6 respondsToSelector_])
      {
        [v7 onboardingSettingsViewControllerDidTapDoneButton_];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static MOOnboardingSettingsLogger.shared);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25A200000, v9, v10, "[MOSuggestionSheetOnboardingSettingsViewController] Turn on Journaling Suggestions tapped", v11, 2u);
      MEMORY[0x25F84FC00](v11, -1, -1);
    }

    v12 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v1) + 0xB8))() & 1) == 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25A200000, v13, v14, "[MOSuggestionSheetOnboardingSettingsViewController] Haven't tapped Turn on Journaling Suggestions before; proceed with sheet dismissal", v15, 2u);
        MEMORY[0x25F84FC00](v15, -1, -1);
      }

      v16 = (*((*v12 & *v1) + 0xC0))(1);
      v17 = (*((*v12 & *v1) + 0xD0))(v16);
      if (v17)
      {
        v18 = v17;
        [v17 setEnabled_];
      }

      v19 = [v1 navigationController];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 navigationBar];

        [v21 setUserInteractionEnabled_];
      }

      [*(v1 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_onboardingManager) setOnboardingFlowCompletionStatus_];
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v23 = *((*v12 & *v1) + 0x180);
      v24 = v1;
      v23(partial apply for closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped(), v22);
    }
  }
}

uint64_t closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIFont(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F84F300](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void closure #1 in closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D85000];
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0xA0))();

    if (v3)
    {
      [v3 shouldDismissOnboarding];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = (*((*v1 & *v4) + 0x100))();

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D2A108]) init];
      v8 = MEMORY[0x25F84F220](0xD00000000000002ALL, 0x800000025A227110);
      v10[4] = closure #1 in closure #1 in closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped();
      v10[5] = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v10[3] = &block_descriptor_26;
      v9 = _Block_copy(v10);
      [v7 triggerFeedbackAssistantFlow:v8 handler:v9];
      _Block_release(v9);
    }
  }
}

id MOSuggestionSheetOnboardingSettingsViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x25F84F220]();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = MEMORY[0x25F84F220](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = MEMORY[0x25F84F220](a5, a6);

LABEL_6:
  v14 = [objc_allocWithZone(v6) initWithTitle:v11 detailText:v12 symbolName:v13];

  return v14;
}

id MOSuggestionSheetOnboardingSettingsViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = MEMORY[0x25F84F220]();

  if (a4)
  {
    v11 = MEMORY[0x25F84F220](a3, a4);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v6) initWithTitle:v10 detailText:v11 icon:a5];

  return v12;
}

id MOSuggestionSheetOnboardingSettingsViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = MEMORY[0x25F84F220]();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x25F84F220](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x25F84F220](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 adoptTableViewScrollView:a7 & 1];

  return v17;
}

id MOSuggestionSheetOnboardingSettingsViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v12 = MEMORY[0x25F84F220]();

  if (a4)
  {
    v13 = MEMORY[0x25F84F220](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v14;
}

id MOSuggestionSheetOnboardingSettingsViewController.viewDidLoad()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for UIFont(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    outlined init with take of Any((v28 + 8), v26);
    outlined init with take of Any(v26, v28);
    v16 = *(v1 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = outlined init with take of Any(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int __swiftcall MOSuggestionSheetOnboardingSettingsViewController.tableView(_:numberOfRowsInSection:)(Swift::Int _, Swift::Int numberOfRowsInSection)
{
  if (numberOfRowsInSection < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings);
  if (*(v3 + 16) <= numberOfRowsInSection)
  {
LABEL_7:
    __break(1u);
    return _;
  }

  v4 = *(v3 + 24 * numberOfRowsInSection + 32);
  if (v4)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

void closure #1 in MOSuggestionSheetOnboardingSettingsViewController.tableView(_:cellForRowAt:)(char a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3[1];
    if (v7)
    {
      v8 = *a3;
    }

    else
    {
      v8 = 0;
    }

    MOSuggestionSheetOnboardingSettingsViewController.setSelectionValue(settingsType:isSwitchOn:)(v8, v7, a1 & 1);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x25F84F220](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x25F84F290](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t partial apply for closure #1 in MOSuggestionSheetOnboardingSettingsViewController.requestNotificationPermissions(completion:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3((a2 == 0) & a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x25F84F220](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void specialized static MOSuggestionSheetOnboardingSettingsViewController.calculateLabelHeight(width:font:text:)(void *a1, uint64_t a2, unint64_t a3, double a4)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && (a2 || a3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMR);
    inited = swift_initStackObject();
    v10 = MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_25A224100;
    v11 = *v10;
    *(inited + 32) = v11;
    *(inited + 40) = a1;
    v12 = v11;
    v13 = a1;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, UIFont)(inited + 32, &_sSo21NSAttributedStringKeya_So6UIFontCtMd, &_sSo21NSAttributedStringKeya_So6UIFontCtMR);
    [v13 pointSize];
    v15 = MEMORY[0x25F84F220](a2, a3);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    type metadata accessor for NSAttributedStringKey();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 boundingRectWithSize:3 options:isa attributes:0 context:{a4, 1.79769313e308}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25.origin.x = v18;
    v25.origin.y = v20;
    v25.size.width = v22;
    v25.size.height = v24;
    ceil(CGRectGetHeight(v25));
  }
}

void specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForHeaderInSection:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings];
  if (*(v2 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v2 + 24 * a1 + 40);
  v4 = v3;
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    Width = CGRectGetWidth(v22);
    v16 = [v4 font];
    if (v16)
    {
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [objc_opt_self() preferredFontForTextStyle_];
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    v17 = [v4 text];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

LABEL_11:
      specialized static MOSuggestionSheetOnboardingSettingsViewController.calculateLabelHeight(width:font:text:)(v16, v19, v21, Width + -16.0);

      return;
    }

LABEL_10:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

unint64_t specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForHeaderInSection:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings];
  if (*(v2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v2 + 24 * result + 40);
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    v18 = CGRectInset(v17, 8.0, 8.0);
    [v4 setFrame_];

    [v4 setDelegate_];
    v14 = objc_opt_self();
    v15 = v4;
    v16 = [v14 secondaryLabelColor];
    [v15 setTextColor_];

    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForFooterInSection:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings];
  if (*(v2 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v2 + 24 * a1 + 48);
  v4 = v3;
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    Width = CGRectGetWidth(v22);
    v16 = [v4 font];
    if (v16)
    {
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [objc_opt_self() preferredFontForTextStyle_];
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    v17 = [v4 text];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

LABEL_11:

      MEMORY[0x25F84F280](2573, 0xE200000000000000);

      specialized static MOSuggestionSheetOnboardingSettingsViewController.calculateLabelHeight(width:font:text:)(v16, v19, v21, Width + -16.0);

      return;
    }

LABEL_10:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

unint64_t specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForFooterInSection:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *&v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings];
  if (*(v2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v2 + 24 * result + 48);
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    v18 = CGRectInset(v17, 8.0, 8.0);
    [v4 setFrame_];

    [v4 setDelegate_];
    v14 = objc_opt_self();
    v15 = v4;
    v16 = [v14 secondaryLabelColor];
    [v15 setTextColor_];

    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:cellForRowAt:)(uint64_t a1)
{
  v5 = v1;
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwitchCell();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setSelectionStyle_];
  v13 = *(v5 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings);
  v61 = a1;
  v14 = IndexPath.section.getter();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= *(v13 + 16))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = *(v13 + 24 * v14 + 32);
  v55 = v8;
  v56 = v5;
  if (!v4)
  {
    v24 = v7;
    MEMORY[0x25F84F2E0]();
    v57 = 0;
    v60 = 0;
    v54 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  v15 = IndexPath.row.getter();
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if (v15 >= v4[2])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_26;
  }

  v16 = &v4[7 * v15];
  v18 = v16[4];
  v17 = v16[5];
  v20 = v16[6];
  v19 = v16[7];
  v21 = *(v16 + 64);
  v22 = v16[10];
  v60 = v16[9];
  v57 = v22;

  MEMORY[0x25F84F2E0](v23);
  v54 = v21;
  v24 = v7;
  if (v17)
  {

    v58 = v17;
    v59 = v18;
    UIListContentConfiguration.text.setter();

    v25 = 0;
    v52 = v20;
    v53 = v19;
    goto LABEL_10;
  }

LABEL_9:
  v59 = v18;
  v52 = v20;
  v53 = v19;
  UIListContentConfiguration.text.setter();
  v58 = 0;
  v25 = 1;
LABEL_10:
  v2 = v11;
  UIListContentConfiguration.secondaryText.setter();
  v26 = objc_opt_self();
  v27 = [v26 secondaryLabelColor];
  v28 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v28(v62, 0);
  v62[3] = v24;
  v62[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  v3 = v55;
  (*(v55 + 16))(boxed_opaque_existential_1, v11, v24);
  MEMORY[0x25F84F2D0](v62);
  v12 = v12;
  v30 = [v26 secondarySystemBackgroundColor];
  [v12 setBackgroundColor_];

  [v12 setClipsToBounds_];
  v31 = [v12 layer];
  [v31 setMasksToBounds_];

  v32 = 0;
  if (v25)
  {
    v33 = v56;
    v7 = v57;
  }

  else
  {
    v33 = v56;
    v7 = v57;
    if (v57)
    {

      v32 = MEMORY[0x25F84F220](v60, v7);
    }
  }

  [v12 setAccessibilityIdentifier_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  [v4 setTag_];
  v51 = v24;
  if (v25)
  {
    v34 = 0;
  }

  else
  {
    v35 = v58;

    v34 = MEMORY[0x25F84F220](v59, v35);
  }

  [v4 setTitle_];

  v36 = v25 ^ 1;
  v13 = v54;
  [v4 setOn_];
  if (!IndexPath.section.getter())
  {
    v37 = sel_switchChanged_top_;
    goto LABEL_23;
  }

  if (IndexPath.section.getter() == 1)
  {
    v37 = sel_switchChanged_middle_;
LABEL_23:
    [v4 addTarget:v33 action:v37 forControlEvents:4096];
    goto LABEL_24;
  }

  if (IndexPath.section.getter() == 2)
  {
    v37 = sel_switchChanged_bottom_;
    goto LABEL_23;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_33;
  }

LABEL_26:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static MOOnboardingSettingsLogger.shared);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_25A200000, v47, v48, "Invalid section", v49, 2u);
    v50 = v49;
    v7 = v57;
    MEMORY[0x25F84FC00](v50, -1, -1);
  }

LABEL_24:
  [v12 setAccessoryView_];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v41 = v58;
  v40 = v59;
  v39[2] = v38;
  v39[3] = v40;
  v43 = v52;
  v42 = v53;
  v39[4] = v41;
  v39[5] = v43;
  v39[6] = v42;
  v39[7] = v13;
  v39[8] = v60;
  v39[9] = v7;
  v44 = *((*MEMORY[0x277D85000] & *v12) + 0x60);

  v44(partial apply for closure #1 in MOSuggestionSheetOnboardingSettingsViewController.tableView(_:cellForRowAt:), v39);

  (*(v3 + 8))(v2, v51);

  return v12;
}

uint64_t specialized MOSuggestionSheetOnboardingSettingsViewController.textView(_:shouldInteractWith:in:interaction:)()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOOnboardingSettingsLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25A200000, v3, v4, "Privacy About link tapped", v5, 2u);
    MEMORY[0x25F84FC00](v5, -1, -1);
  }

  if (URL.absoluteString.getter() == 0xD000000000000022 && 0x800000025A2270C0 == v6)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25A200000, v8, v9, "URL tapped matches journal privacy string", v10, 2u);
    MEMORY[0x25F84FC00](v10, -1, -1);
  }

  v11 = MEMORY[0x25F84F220](0xD00000000000001CLL, 0x800000025A2270F0);
  v12 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v12)
  {
    [v12 setPresentingViewController_];
    [v12 present];

    return 1;
  }

  return 0;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for NSAttributedStringKey()
{
  if (!lazy cache variable for type metadata for NSAttributedStringKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSAttributedStringKey);
    }
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for UIFont(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, UIFont)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id MOOnboardingNavigationController.__allocating_init(onboardingDelegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings32MOOnboardingNavigationController_onboardingDelegate;
  *&v4[OBJC_IVAR____TtC28MomentsOnboardingAndSettings32MOOnboardingNavigationController_onboardingDelegate] = 0;
  swift_beginAccess();
  *&v4[v5] = a1;
  v6 = objc_allocWithZone(type metadata accessor for MOOnboardingViewController());
  swift_unknownObjectRetain();
  v7 = MOOnboardingViewController.init()();
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x88);
  v9 = swift_unknownObjectRetain();
  v8(v9);
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_initWithRootViewController_, v7);

  swift_unknownObjectRelease();
  return v10;
}

id MOOnboardingNavigationController.init(onboardingDelegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings32MOOnboardingNavigationController_onboardingDelegate;
  *&v2[OBJC_IVAR____TtC28MomentsOnboardingAndSettings32MOOnboardingNavigationController_onboardingDelegate] = 0;
  swift_beginAccess();
  *&v2[v4] = a1;
  v5 = objc_allocWithZone(type metadata accessor for MOOnboardingViewController());
  swift_unknownObjectRetain();
  v6 = MOOnboardingViewController.init()();
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x88);
  v8 = swift_unknownObjectRetain();
  v7(v8);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for MOOnboardingNavigationController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithRootViewController_, v6);

  swift_unknownObjectRelease();
  return v9;
}

id MOOnboardingNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MOOnboardingNavigationController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings32MOOnboardingNavigationController_onboardingDelegate) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOOnboardingNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id MOOnboardingNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id MOOnboardingNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x25F84F220]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t MOOnboardingNavigationController.onboardingDelegate.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t MOOnboardingNavigationController.onboardingDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t MOOnboardingViewController.journalBundleAboutIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier + 8);

  return v1;
}

uint64_t MOOnboardingViewController.hasTappedOnboardingCompletion.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_hasTappedOnboardingCompletion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOOnboardingViewController.hasTappedOnboardingCompletion.setter(char a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_hasTappedOnboardingCompletion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *MOOnboardingViewController.turnOnSuggestionsButton.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_turnOnSuggestionsButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOOnboardingViewController.turnOnSuggestionsButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_turnOnSuggestionsButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOOnboardingViewController.notNowButton.getter()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_notNowButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOOnboardingViewController.notNowButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_notNowButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MOOnboardingViewController.__allocating_init(coder:)()
{
  v0 = [objc_opt_self() sharedInstance];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MOOnboardingViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_onboardingManager;
  *(v0 + v1) = [objc_opt_self() sharedInstance];
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_delegate) = 0;
  v2 = (v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier);
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x800000025A2270F0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_hasTappedOnboardingCompletion) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_turnOnSuggestionsButton) = 0;
  *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_notNowButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOOnboardingViewController.init()()
{
  v1 = OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_onboardingManager;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_delegate] = 0;
  v2 = &v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier];
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x800000025A2270F0;
  v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_hasTappedOnboardingCompletion] = 0;
  *&v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_turnOnSuggestionsButton] = 0;
  *&v0[OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_notNowButton] = 0;
  v3 = type metadata accessor for MOOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = MEMORY[0x25F84F220](0xD000000000000023, 0x800000025A2279F0);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 withConfiguration:0];

  v9 = [v5 bundleForClass_];
  v23._object = 0x800000025A227A40;
  v10._object = 0x800000025A227A20;
  v23._countAndFlagsBits = 0xD000000000000027;
  v10._countAndFlagsBits = 0xD000000000000016;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v23);

  v13 = MEMORY[0x25F84F220](v12._countAndFlagsBits, v12._object);

  v14 = [v5 bundleForClass_];
  v24._object = 0x800000025A227AE0;
  v15._countAndFlagsBits = 0xD000000000000063;
  v15._object = 0x800000025A227A70;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000016;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v24);

  v18 = MEMORY[0x25F84F220](v17._countAndFlagsBits, v17._object);

  v22.receiver = v0;
  v22.super_class = v3;
  v19 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v13, v18, v8, 2);

  v20 = v19;
  MOOnboardingViewController.loadInitialController()();

  return v20;
}

Swift::Void __swiftcall MOOnboardingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MOOnboardingViewController();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1);
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = [v4 systemBlueColor];
  [v3 setTintColor_];

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    v9 = [v4 systemBlueColor];
    [v8 setTintColor_];
  }
}

void MOOnboardingViewController.initNavbar()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];
  }

  v5 = [v0 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setTranslucent_];
  }

  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v10 setShadowImage_];
  }
}

id MOOnboardingViewController.loadInitialController()()
{
  v1 = v0;
  v128 = type metadata accessor for UIButton.Configuration.Size();
  v2 = *(v128 - 1);
  v3 = *(v2 + 64);
  (MEMORY[0x28223BE20])();
  v127 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for UIButton.Configuration();
  v5 = *(v130 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v126 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v114 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v114 - v12;
  MOOnboardingViewController.initNavbar()();
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = result;
  v16 = objc_opt_self();
  v17 = [v16 systemBackgroundColor];
  [v15 setBackgroundColor_];

  v18 = [v1 buttonTray];
  v19 = [v16 systemBlueColor];
  [v18 setTintColor_];

  static UIButton.Configuration.plain()();
  v20 = *MEMORY[0x277D75060];
  v21 = *(MEMORY[0x277D75060] + 8);
  v22 = *(MEMORY[0x277D75060] + 16);
  v23 = *(MEMORY[0x277D75060] + 24);
  UIButton.Configuration.contentInsets.setter();
  type metadata accessor for MOOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v131 = objc_opt_self();
  v132 = ObjCClassFromMetadata;
  v25 = [v131 bundleForClass_];
  v26._countAndFlagsBits = 0xD000000000000018;
  v133._object = 0x800000025A227D50;
  v26._object = 0x800000025A227D30;
  v133._countAndFlagsBits = 0xD00000000000002DLL;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v133);

  UIButton.Configuration.title.setter();
  v29 = *(v2 + 104);
  v28 = v2 + 104;
  v118 = *MEMORY[0x277D75028];
  v117 = v29;
  v29(v127);
  UIButton.Configuration.buttonSize.setter();
  v30 = type metadata accessor for UIFont(0, &lazy cache variable for type metadata for OBBulletedListItemLinkButton, 0x277D37628);
  v124 = v5;
  v31 = *(v5 + 16);
  v116 = v5 + 16;
  v115 = v31;
  v31(v11, v13, v130);
  v32 = type metadata accessor for UIFont(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = v32;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v120 = v30;
  v33 = UIButton.init(configuration:primaryAction:)();
  v129 = v16;
  v34 = [v16 systemBlueColor];
  [v33 setTintColor_];

  v35 = [v33 titleLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setNumberOfLines_];
  }

  v121 = v28;
  v122 = v11;
  v123 = v13;
  v37 = [v33 titleLabel];
  v125 = v33;

  if (v37)
  {
    [v37 setLineBreakMode_];
  }

  v38 = v131;
  v39 = v132;
  v40 = [v131 bundleForClass_];
  v134._object = 0x800000025A227D80;
  v41._countAndFlagsBits = 0x2064657461727543;
  v41._object = 0xEF756F5920726F66;
  v134._countAndFlagsBits = 0xD000000000000027;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v134);

  v44 = MEMORY[0x25F84F220](v43._countAndFlagsBits, v43._object);

  v45 = [v38 bundleForClass_];
  v135._object = 0x800000025A227E30;
  v46._countAndFlagsBits = 0xD000000000000074;
  v46._object = 0x800000025A227DB0;
  v135._countAndFlagsBits = 0xD000000000000026;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v135);

  v49 = MEMORY[0x25F84F220](v48._countAndFlagsBits, v48._object);

  v50 = MEMORY[0x25F84F220](0x6C7562746867696CLL, 0xED000078616D2E62);
  v51 = [v129 systemBlueColor];
  [v1 addBulletedListItemWithTitle:v44 description:v49 symbolName:v50 tintColor:v51 linkButton:v125];

  v52 = MEMORY[0x25F84F220](*(v1 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier), *(v1 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier + 8));
  v53 = [objc_opt_self() bundleWithIdentifier_];

  if (v53)
  {
    result = [v53 privacyFlow];
    if (result)
    {
      v54 = result;
      v55 = [result localizedButtonTitle];

      v56 = &unk_27991F000;
      if (v55)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v56 = &unk_27991F000;
LABEL_11:
  v57 = v126;
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.title.setter();
  v117(v127, v118, v128);
  UIButton.Configuration.buttonSize.setter();
  v115(v122, v57, v130);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v58 = UIButton.init(configuration:primaryAction:)();
  v59 = [v129 systemBlueColor];
  [v58 setTintColor_];

  v60 = [v58 v56[301]];
  if (v60)
  {
    v61 = v60;
    [v60 setNumberOfLines_];
  }

  v128 = v53;
  v62 = [v58 v56[301]];

  if (v62)
  {
    [v62 setLineBreakMode_];
  }

  v64 = v131;
  v63 = v132;
  v65 = [v131 bundleForClass_];
  v66._countAndFlagsBits = 0xD000000000000017;
  v136._object = 0x800000025A227E80;
  v66._object = 0x800000025A227E60;
  v136._countAndFlagsBits = 0xD000000000000028;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v136);

  v69 = MEMORY[0x25F84F220](v68._countAndFlagsBits, v68._object);

  v70 = [v64 bundleForClass_];
  v137._object = 0x800000025A227F10;
  v71._countAndFlagsBits = 0xD000000000000050;
  v71._object = 0x800000025A227EB0;
  v137._countAndFlagsBits = 0xD000000000000028;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v137);

  v74 = MEMORY[0x25F84F220](v73._countAndFlagsBits, v73._object);

  v75 = MEMORY[0x25F84F220](0x6961722E646E6168, 0xEB00000000646573);
  v76 = [v129 systemBlueColor];
  [v1 addBulletedListItemWithTitle:v69 description:v74 symbolName:v75 tintColor:v76 linkButton:v58];

  v77 = [objc_opt_self() boldButton];
  v78 = MEMORY[0x277D85000];
  v79 = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))(v77);
  v80 = *((*v78 & *v1) + 0xB0);
  v81 = (v80)(v79);
  if (v81)
  {
    v82 = v81;
    [v81 addTarget:v1 action:sel_turnOnSuggestionsButtonTapped forControlEvents:64];
  }

  v83 = v80();
  v84 = 0x1FA996000;
  if (v83)
  {
    v85 = v83;
    v86 = [v131 bundleForClass_];
    v138._object = 0x800000025A227F40;
    v87._object = 0x800000025A227160;
    v138._countAndFlagsBits = 0xD000000000000031;
    v87._countAndFlagsBits = 0xD00000000000001ELL;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v138);

    v84 = &selRef_setPresentingViewController_;
    v90 = MEMORY[0x25F84F220](v89._countAndFlagsBits, v89._object);

    [v85 setTitle:v90 forState:0];
  }

  v91 = v80();
  if (v91)
  {
    v92 = v91;
    v93 = [v1 buttonTray];
    [v93 addButton_];
  }

  v94 = [objc_opt_self() linkButton];
  v95 = (*((*v78 & *v1) + 0xD0))(v94);
  v96 = *((*v78 & *v1) + 0xC8);
  v97 = (v96)(v95);
  if (v97)
  {
    v98 = v97;
    [v97 addTarget:v1 action:sel_notNowCloseSheet forControlEvents:64];
  }

  v99 = v96();
  if (v99)
  {
    v100 = v99;
    v101 = [v131 bundleForClass_];
    v139._object = 0x800000025A227F80;
    v102._countAndFlagsBits = 0x776F4E20746F4ELL;
    v102._object = 0xE700000000000000;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v139._countAndFlagsBits = 0xD00000000000001ELL;
    v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v101, v103, v139);

    v105 = MEMORY[0x25F84F220](v104._countAndFlagsBits, v104._object);

    [v100 (v84 + 1016)];
  }

  v106 = v96();
  v107 = v130;
  v108 = v123;
  if (v106)
  {
    v109 = v106;
    v110 = [v1 buttonTray];
    [v110 addButton_];

    v111 = v109;
    v58 = v110;
    v112 = v124;
  }

  else
  {
    v112 = v124;
    v111 = v128;
  }

  v113 = *(v112 + 8);
  v113(v126, v107);
  return (v113)(v108, v107);
}

void closure #1 in MOOnboardingViewController.loadInitialController()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x120))();
  }
}

void closure #2 in MOOnboardingViewController.loadInitialController()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x108))();
  }
}

void MOOnboardingViewController.requestNotificationPermissions(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v5 = MEMORY[0x25F84F220](0xD000000000000026, 0x800000025A226A80);
  v6 = [v4 initWithBundleIdentifier_];

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = partial apply for closure #1 in MOSuggestionSheetOnboardingSettingsViewController.requestNotificationPermissions(completion:);
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_0;
  v8 = _Block_copy(v9);

  [v6 requestAuthorizationWithOptions:6 completionHandler:v8];

  _Block_release(v8);
}

Swift::Void __swiftcall MOOnboardingViewController.privacyAboutTapped()()
{
  v1 = MEMORY[0x25F84F220](*(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier), *(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_journalBundleAboutIdentifier + 8));
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
    [v2 present];
  }
}

void MOOnboardingViewController.notNowCloseSheet()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x98))() & 1) == 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D2A108]) init];
    v3 = MEMORY[0x25F84F220](0xD00000000000002BLL, 0x800000025A227CF0);
    v6[4] = closure #1 in closure #1 in closure #1 in MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped();
    v6[5] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v6[3] = &block_descriptor_18;
    v4 = _Block_copy(v6);
    [v2 triggerFeedbackAssistantFlow:v3 handler:v4];
    _Block_release(v4);

    v5 = (*((*v1 & *v0) + 0x80))([*(v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_onboardingManager) setOnboardingFlowCompletionStatus_]);
    if (v5)
    {
      [v5 shouldDismissOnboarding];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall MOOnboardingViewController.turnOnSuggestionsButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOOnboardingSettingsLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25A200000, v3, v4, "[MOSuggestionSheetOnboardingViewController] Turn on Journaling Suggestions tapped", v5, 2u);
    MEMORY[0x25F84FC00](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x98))() & 1) == 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25A200000, v7, v8, "[MOSuggestionSheetOnboardingViewController] Haven't tapped Turn on Journaling Suggestions before; proceed with sheet dismissal", v9, 2u);
      MEMORY[0x25F84FC00](v9, -1, -1);
    }

    v10 = (*((*v6 & *v1) + 0xA0))(1);
    v11 = (*((*v6 & *v1) + 0xB0))(v10);
    if (v11)
    {
      v12 = v11;
      [v11 setEnabled_];
    }

    v13 = (*((*v6 & *v1) + 0xC8))();
    if (v13)
    {
      v14 = v13;
      [v13 setEnabled_];
    }

    specialized static MOSettingsOptions.setDefaultSettings()();
    [*(v1 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings26MOOnboardingViewController_onboardingManager) setOnboardingFlowCompletionStatus_];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = *((*v6 & *v1) + 0x100);
    v17 = v1;
    v16(partial apply for closure #1 in MOOnboardingViewController.turnOnSuggestionsButtonTapped(), v15);
  }
}

uint64_t closure #1 in MOOnboardingViewController.turnOnSuggestionsButtonTapped()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIFont(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in MOOnboardingViewController.turnOnSuggestionsButtonTapped();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F84F300](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void closure #1 in closure #1 in MOOnboardingViewController.turnOnSuggestionsButtonTapped()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();

    if (v2)
    {
      [v2 shouldDismissOnboarding];
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall MOOnboardingViewController.customizeButtonTapped()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x98))() & 1) == 0)
  {
    specialized static MOSettingsOptions.setDefaultSettings()();
    v2 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController());
    v6 = MOSuggestionSheetOnboardingSettingsViewController.init(preferDoneFlow:)(0);
    v3 = (*((*v1 & *v0) + 0x80))();
    (*((*v1 & *v6) + 0xA8))(v3);
    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 pushViewController:v6 animated:1];
    }
  }
}

id MOOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = MEMORY[0x25F84F220]();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x25F84F220](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x25F84F220](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 contentLayout:a7];

  return v17;
}

id MOOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x25F84F220]();

  if (a4)
  {
    v13 = MEMORY[0x25F84F220](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 contentLayout:a6];

  return v14;
}

id MOOnboardingNavigationController.__deallocating_deinit(uint64_t (*a1)(void), SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = a1();
  return objc_msgSendSuper2(&v5, *a2);
}

UIFont __swiftcall UIFont.bold()()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (v2)
  {
    v4 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

id static MOSettingsOptions.healthAndActivitySuggestions.getter(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 getStateForSetting_];

  return v3;
}

void static MOSettingsOptions.healthAndActivitySuggestions.setter(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 setState:a1 & 1 forSetting:a2];
}

void (*static MOSettingsOptions.healthAndActivitySuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.healthAndActivitySuggestions.modify;
}

void (*static MOSettingsOptions.mediaSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.mediaSuggestions.modify;
}

void (*static MOSettingsOptions.contactsSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.contactsSuggestions.modify;
}

void (*static MOSettingsOptions.photosSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.photosSuggestions.modify;
}

void (*static MOSettingsOptions.locationsSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.locationsSuggestions.modify;
}

void (*static MOSettingsOptions.stateOfMindSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.stateOfMindSuggestions.modify;
}

void (*static MOSettingsOptions.reflectionSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.reflectionSuggestions.modify;
}

void key path getter for static MOSettingsOptions.healthAndActivitySuggestions : MOSettingsOptions.Type(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  LOBYTE(a1) = [v4 getStateForSetting_];

  *a2 = a1;
}

void key path setter for static MOSettingsOptions.healthAndActivitySuggestions : MOSettingsOptions.Type(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = [objc_opt_self() sharedInstance];
  [v7 setState:v6 forSetting:a5];
}

void (*static MOSettingsOptions.nearbyPeopleSuggestions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 sharedInstance];
  v4 = [v3 getStateForSetting_];

  *(a1 + 8) = v4;
  return static MOSettingsOptions.nearbyPeopleSuggestions.modify;
}

void static MOSettingsOptions.healthAndActivitySuggestions.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = [*a1 sharedInstance];
  [v5 setState:v4 forSetting:a3];
}

void specialized static MOSettingsOptions.setDefaultSettings()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  [v1 setState:1 forSetting:1];

  v2 = [v0 sharedInstance];
  [v2 setState:1 forSetting:2];

  v3 = [v0 sharedInstance];
  [v3 setState:1 forSetting:3];

  v4 = [v0 sharedInstance];
  [v4 setState:1 forSetting:4];

  v5 = [v0 sharedInstance];
  [v5 setState:1 forSetting:5];

  v6 = [v0 sharedInstance];
  [v6 setState:1 forSetting:6];

  v7 = [v0 sharedInstance];
  [v7 setState:1 forSetting:10];

  v8 = [v0 sharedInstance];
  [v8 setState:0 forSetting:9];
}

uint64_t MOOnboardingSettingsLogger.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static MOOnboardingSettingsLogger.shared);
}

uint64_t one-time initialization function for shared()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MOOnboardingSettingsLogger.shared);
  __swift_project_value_buffer(v0, static MOOnboardingSettingsLogger.shared);
  return Logger.init(subsystem:category:)();
}

uint64_t static MOOnboardingSettingsLogger.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static MOOnboardingSettingsLogger.shared);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void __swiftcall AppSetting.init(title:subtitle:enableSwitch:accessibilityIdentifier:)(MomentsOnboardingAndSettings::AppSetting *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::Bool_optional enableSwitch, Swift::String_optional accessibilityIdentifier)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->enableSwitch = enableSwitch;
  retstr->accessibilityIdentifier = accessibilityIdentifier;
}

uint64_t AppSetting.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppSetting.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppSetting.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t key path getter for SwitchCell.onSwitchChange : SwitchCell@<X0>(void **a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for SwitchCell.onSwitchChange : SwitchCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  sub_25A20263C(v3);
  return v7(v6, v5);
}

uint64_t SwitchCell.onSwitchChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25A20263C(v3);
  return v3;
}

uint64_t SwitchCell.onSwitchChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
}

id SwitchCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = MEMORY[0x25F84F220](a2, a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id SwitchCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a3)
  {
    v6 = MEMORY[0x25F84F220](a2, a3);
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SwitchCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id SwitchCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange];
  v4 = type metadata accessor for SwitchCell();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id SwitchCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ContentSizedTableView.contentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_contentSize);
}

id ContentSizedTableView.contentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setContentSize_, a1, a2);
  return [v2 invalidateIntrinsicContentSize];
}

void (*ContentSizedTableView.contentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  ObjectType = swift_getObjectType();
  v4[4].super_class = ObjectType;
  v4[1].receiver = v1;
  v4[1].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 1, sel_contentSize);
  v4->receiver = v6;
  v4->super_class = v7;
  return ContentSizedTableView.contentSize.modify;
}

void ContentSizedTableView.contentSize.modify(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v7 = *a1;
  if (a2)
  {
    v7[2].receiver = v6;
    v7[2].super_class = v5;
    objc_msgSendSuper2(v7 + 2, sel_setContentSize_, v3, v4);
  }

  else
  {
    v7[3].receiver = v6;
    v7[3].super_class = v5;
    objc_msgSendSuper2(v7 + 3, sel_setContentSize_, v3, v4);
    [v6 invalidateIntrinsicContentSize];
  }

  free(v2);
}

double ContentSizedTableView.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  [v0 layoutIfNeeded];
  v2 = *MEMORY[0x277D77260];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_contentSize);
  return v2;
}

id ContentSizedTableView.__allocating_init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 style:{a2, a3, a4, a5}];
}

id ContentSizedTableView.init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v12.receiver = v5;
  v12.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
}

id ContentSizedTableView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ContentSizedTableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized AppSettingsOptionGroup.init(appSettings:header:footer:)(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    [a2 setFont_];

    [a2 &selRef:0 :? callProxy:? usingBlock:? onError:? + 7];
    [a2 &selRef_turnOnSuggestionsButtonTapped];
    [a2 &selRef_turnOnSuggestionsButtonTapped];
    [a2 0x1FA98259ELL];
  }

  if (a3)
  {
    v7 = [objc_opt_self() preferredFontForTextStyle_];
    [a3 setFont_];

    [a3 setEditable_];
    [a3 setSelectable_];
    [a3 setScrollEnabled_];
    [a3 0x1FA98259ELL];
  }

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppSetting(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for AppSetting(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppSettingsOptionGroup(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppSettingsOptionGroup(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for journalingSuggestionsIcon80Masked()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.journalingSuggestionsIcon80Masked);
  __swift_project_value_buffer(v0, static ImageResource.journalingSuggestionsIcon80Masked);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x25F84F140](0xD000000000000023, 0x800000025A2279F0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for momentsPrivacy80Masked()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.momentsPrivacy80Masked);
  __swift_project_value_buffer(v0, static ImageResource.momentsPrivacy80Masked);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x25F84F140](0xD000000000000018, 0x800000025A228260, resourceBundle.super.isa);
}

uint64_t ImageResource.journalingSuggestionsIcon80Masked.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.journalingSuggestionsIcon80Masked.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void _MODiagnosticReporter_NotificationHandler_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_25A200000, a2, OS_LOG_TYPE_DEBUG, "_MODiagnosticReporter_NotificationHandler with flags %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}