id LA_LOG_LACUIPackagedViewPlatformStateController()
{
  if (LA_LOG_LACUIPackagedViewPlatformStateController_once != -1)
  {
    LA_LOG_LACUIPackagedViewPlatformStateController_cold_1();
  }

  v1 = LA_LOG_LACUIPackagedViewPlatformStateController_log;

  return v1;
}

id _NSStringFromCAStateTransition(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = [v2 fromState];
  v5 = [v2 toState];
  v6 = [v1 stringWithFormat:@"<%@ %p; from:%@; to:%@>", v3, v2, v4, v5];;

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

__CFString *NSStringFromLACUIAuthorizationViewMode(uint64_t a1)
{
  if (a1)
  {
    return @"Register";
  }

  else
  {
    return @"Enter";
  }
}

__CFString *NSStringFromLACUIAuthorizationViewStyle(uint64_t a1)
{
  if (a1)
  {
    return @"FullScreen";
  }

  else
  {
    return @"Sheet";
  }
}

__CFString *NSStringFromLACUIAuthenticatorServiceConfigurationRequirement(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E6B0[a1 - 1];
  }
}

LACUIHostedSceneAction *LACUIHostedSceneActionFromSettings(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __LACUIHostedSceneActionFromSettings_block_invoke;
  v5[3] = &unk_27981E748;
  v5[4] = &v12;
  v5[5] = &v6;
  [v1 enumerateObjectsWithBlock:v5];
  v2 = [LACUIHostedSceneAction alloc];
  v3 = [(LACUIHostedSceneAction *)v2 initWithRawIdentifier:v13[3] value:v7[5]];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);

  return v3;
}

void sub_256069B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __LACUIHostedSceneActionFromSettings_block_invoke(uint64_t a1, uint64_t a2, id obj, _BYTE *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  *a4 = 1;
}

id BSSettingsFromHostedSceneAction(void *a1)
{
  v1 = MEMORY[0x277CF0C80];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 rawValue];
  v5 = [v2 rawIdentifier];

  [v3 setObject:v4 forSetting:v5];

  return v3;
}

void BSActionResponseForHandlerAndSettings(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (([v5 conformsToProtocol:&unk_28682F428] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Window %@ cannot handle scene actions", v5];
    v9 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v8];
    v10 = [MEMORY[0x277CF0B68] responseForError:v9];
    v7[2](v7, v10);
LABEL_6:

    goto LABEL_7;
  }

  v8 = v5;
  v9 = LACUIHostedSceneActionFromSettings(v6);
  if (([v8 handlesAction:v9] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Window %@ cannot handle scene action %@", v8, v9];
    v11 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v10];
    v12 = [MEMORY[0x277CF0B68] responseForError:v11];
    v7[2](v7, v12);

    goto LABEL_6;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __BSActionResponseForHandlerAndSettings_block_invoke;
  v13[3] = &unk_27981E770;
  v14 = v7;
  [v8 handleAction:v9 completion:v13];

LABEL_7:
}

void __BSActionResponseForHandlerAndSettings_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x277CF0B68] responseForError:a2];
  }

  else
  {
    [MEMORY[0x277CF0B68] response];
  }
  v3 = ;
  (*(*(a1 + 32) + 16))();
}

void sub_25606B134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *LACUILockViewStateNameFromState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E828[a1];
  }
}

__CFString *NSStringFromLACUILockViewState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981E828[a1];
  }
}

void sub_25606CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25606E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256070484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256070DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CAStateNameFromLACUIFaceIDSpinnerViewState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981EAB8[a1];
  }
}

__CFString *NSStringFromLACUIFaceIDSpinnerViewState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_27981EAD8[a1];
  }
}

id LACUIImageWithIcon(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277D1B1C8]);
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = [v2 initWithSize:50.0 scale:{50.0, v4}];

  v6 = [v1 imageForDescriptor:v5];
  v7 = v6;
  if (v6 && ![v6 placeholder] || (objc_msgSend(v1, "prepareImageForDescriptor:", v5), v8 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v8) != 0))
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:{objc_msgSend(v7, "CGImage")}];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  return v9;
}

id LACUIImageNamed(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x277D755B8] imageNamed:a1 inBundle:a2 withConfiguration:0];
  }

  else
  {
    [MEMORY[0x277D755B8] imageNamed:a1];
  }
  v2 = ;

  return v2;
}

void LACUILayerScaleDirectDescendants(void *a1, CGFloat a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 sublayers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v3)
        {
          [v3 transform];
        }

        else
        {
          memset(&v11, 0, sizeof(v11));
        }

        CATransform3DScale(&v12, &v11, a2, a2, 1.0);
        [v9 setTransform:&v12];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void LACUILayerScaleToFitInRect(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  [v7 bounds];
  v9 = a4 / v8;
  [v7 bounds];
  if (v9 >= a5 / v10)
  {
    v9 = a5 / v10;
  }

  [v7 setPosition:{a4 * 0.5, a5 * 0.5}];
  CATransform3DMakeScale(&v12, v9, v9, 1.0);
  v11 = v12;
  [v7 setTransform:&v11];
}

id LACUILayerFindSublayerWithName(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v3 sublayers];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v17 = v10;
          goto LABEL_19;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 sublayers];
  v13 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v5);
      }

      v17 = LACUILayerFindSublayerWithName(*(*(&v21 + 1) + 8 * v16), v4);
      if (v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v18 = v17;
  }

  else
  {
LABEL_17:
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id LA_LOG_LACUIPackagedView()
{
  if (LA_LOG_LACUIPackagedView_once != -1)
  {
    LA_LOG_LACUIPackagedView_cold_1();
  }

  v1 = LA_LOG_LACUIPackagedView_log;

  return v1;
}

uint64_t LACUIAuthContainerView.viewModel.getter(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for LACUIAuthContainerViewModel();
  v6 = lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel, type metadata accessor for LACUIAuthContainerViewModel);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t LACUIAuthContainerView.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = partial apply for implicit closure #1 in LACUIAuthContainerView.init(dataSource:);
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t implicit closure #1 in LACUIAuthContainerView.init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for LACUIAuthState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for LACUIAuthContainerViewModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v23 = type metadata accessor for LACUIAuthCountdownConfiguration();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  outlined init with copy of LACUIAuthCountdownConfiguration(v17, v15, type metadata accessor for LACUIAuthState);
  swift_unknownObjectRetain();
  Published.init(initialValue:)();
  outlined destroy of LACUIAuthCountdownView(v17, type metadata accessor for LACUIAuthState);
  (*(v7 + 32))(v21 + v22, v10, v6);
  v24 = v21 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  *(v21 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v24 + 8) = v28;
  swift_unknownObjectWeakAssign();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v21;
  *(v26 + 40) = xmmword_2560B9EC0;
  *(v26 + 56) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:), v26);

  swift_unknownObjectRelease();
  return v21;
}

uint64_t sub_2560754C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LACUIAuthContainerView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = partial apply for implicit closure #1 in LACUIAuthContainerView.init(viewModel:);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t LACUIAuthContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = type metadata accessor for LACUIAuthCountdownView();
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v34 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownG0V_GMR);
  v10 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v32 - v11;
  v13 = type metadata accessor for LACUIAuthState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v19 = *(v1 + 16);
  type metadata accessor for LACUIAuthContainerViewModel();
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel, type metadata accessor for LACUIAuthContainerViewModel);
  v20 = StateObject.wrappedValue.getter();
  (*(*v20 + 96))(v20);

  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v22 = v16;
    v23 = v33;
    outlined init with take of LACUIAuthCountdownConfiguration(v22, v33);
    v24 = v32;
    outlined init with copy of LACUIAuthCountdownConfiguration(v23, v32, type metadata accessor for LACUIAuthCountdownConfiguration);
    v25 = StateObject.wrappedValue.getter();
    v26 = type metadata accessor for LACUIAuthCountdownViewModel();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    LACUIAuthCountdownViewModel.init(configuration:handler:)(v24, v25, &protocol witness table for LACUIAuthContainerViewModel);
    KeyPath = swift_getKeyPath();
    v30 = v34;
    *(v34 + *(v37 + 20)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel, type metadata accessor for LACUIAuthCountdownViewModel);
    *v30 = ObservedObject.init(wrappedValue:)();
    v30[1] = v31;
    outlined init with copy of LACUIAuthCountdownConfiguration(v30, v12, type metadata accessor for LACUIAuthCountdownView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of LACUIAuthCountdownView(v30, type metadata accessor for LACUIAuthCountdownView);
    return outlined destroy of LACUIAuthCountdownView(v23, type metadata accessor for LACUIAuthCountdownConfiguration);
  }
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

uint64_t outlined init with take of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAuthContainerView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIAuthContainerView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV023LocalAuthenticationCoreB0018LACUIAuthCountdownF0VGMR);
    lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownView and conformance LACUIAuthCountdownView, type metadata accessor for LACUIAuthCountdownView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, LACUIAuthCountdownView> and conformance <> _ConditionalContent<A, B>);
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

void type metadata accessor for LACUserInterfaceRequestIdentifier(uint64_t a1, unint64_t *a2)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACBiometryType(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x259C58E90](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACBiometryType(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACBiometryType@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *_sSo33LACUserInterfaceRequestIdentifierVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACBiometryType()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACBiometryType and conformance LACBiometryType, type metadata accessor for LACBiometryType);
  lazy protocol witness table accessor for type LACUIAuthContainerViewModel and conformance LACUIAuthContainerViewModel(&lazy protocol witness table cache variable for type LACBiometryType and conformance LACBiometryType, type metadata accessor for LACBiometryType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t outlined init with copy of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LACUIAuthCountdownView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_256076228()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 48) >= 2uLL)
  {

    v3 = *(v0 + 64);

    v4 = *(v0 + 80);

    if (*(v0 + 104) != 255)
    {
      v5 = *(v0 + 88);
      v6 = *(v0 + 96);
      outlined consume of LACUIAuthImageConfiguration();
    }
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

uint64_t partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static LACUIDTOUtilities.dtoLearnMoreLinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  URL.init(string:)();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static LACUIDTOUtilities.dtoUnexpectedSecurityDelayRadarURL.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LACUITapToRadarURLBuilder();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = 10;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 104) = 6;
  swift_beginAccess();
  *(v1 + 16) = 0xD000000000000034;
  *(v1 + 24) = 0x80000002560BDCC0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 32) = 0x10000000000004CDLL;
  *(v1 + 40) = 0x80000002560BDD00;

  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *(v1 + 56) = 0xD000000000000018;
  *(v1 + 64) = 0x80000002560BE1D0;
  *(v1 + 72) = xmmword_2560BA2D0;
  *(v1 + 88) = xmmword_2560BA2E0;

  outlined consume of (name: String, version: String, id: String)?(v3, v4);

  swift_beginAccess();
  *(v1 + 48) = 6;
  swift_beginAccess();
  *(v1 + 104) = 1;
  LACUITapToRadarURLBuilder.build()(a1);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.title : LACUITapToRadarURLBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.description : LACUITapToRadarURLBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t key path setter for LACUITapToRadarURLBuilder.component : LACUITapToRadarURLBuilder(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = *(**a2 + 200);
  outlined init with copy of (name: String, version: String, id: String)?(v6, &v5);
  return v3(v6);
}

LACUIDTOUtilities __swiftcall LACUIDTOUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t outlined consume of (name: String, version: String, id: String)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t type metadata accessor for LACUIDTOUtilities()
{
  result = lazy cache variable for type metadata for LACUIDTOUtilities;
  if (!lazy cache variable for type metadata for LACUIDTOUtilities)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACUIDTOUtilities);
  }

  return result;
}

uint64_t outlined init with copy of (name: String, version: String, id: String)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS7versionSS2idtSgMd, _sSS4name_SS7versionSS2idtSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LACUIAuthDataSource.nextState(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return v15(a1, a2, a3, a4, a5);
}

LocalAuthenticationCoreUI::LACUIRatchetViewModelPresentationStyle_optional __swiftcall LACUIRatchetViewModelPresentationStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle()
{
  result = lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle;
  if (!lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIRatchetViewModelPresentationStyle and conformance LACUIRatchetViewModelPresentationStyle);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACUIRatchetViewModelPresentationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C590D0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACUIRatchetViewModelPresentationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C590D0](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance LACUIRatchetViewModelPresentationStyle@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t getEnumTagSinglePayload for LACUIRatchetViewModelPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for LACUIRatchetViewModelPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static LACUIAuthImageConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    outlined copy of LACUIAuthImageConfiguration();
    outlined copy of LACUIAuthImageConfiguration();
    outlined consume of LACUIAuthImageConfiguration();
    outlined consume of LACUIAuthImageConfiguration();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of LACUIAuthImageConfiguration();
    outlined copy of LACUIAuthImageConfiguration();
    outlined consume of LACUIAuthImageConfiguration();
    outlined consume of LACUIAuthImageConfiguration();
    return v14 & 1;
  }

LABEL_15:
  outlined copy of LACUIAuthImageConfiguration();
  outlined copy of LACUIAuthImageConfiguration();
  outlined consume of LACUIAuthImageConfiguration();
  outlined consume of LACUIAuthImageConfiguration();
  return 1;
}

uint64_t static Color.sheetBackground(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF3D0])
  {
    v8 = [objc_opt_self() systemBackgroundColor];
LABEL_5:
    v12 = v8;
    return Color.init(uiColor:)();
  }

  v9 = v7;
  v10 = *MEMORY[0x277CDF3C0];
  v11 = objc_opt_self();
  if (v9 == v10)
  {
    v8 = [v11 secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  v14 = [v11 systemBackgroundColor];
  v15 = Color.init(uiColor:)();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t static Color.systemBackground.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return Color.init(uiColor:)();
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__allocating_init(biometryType:alertFactory:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType] = a1;
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACUIDTOBiometryRequiredScenePresentationHandler.init(biometryType:alertFactory:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType] = a1;
  *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

Swift::Bool __swiftcall LACUIDTOBiometryRequiredScenePresentationHandler.canHandle(request:)(LACUIScenePresentationRequest request)
{
  v1 = [(objc_class *)request.super.isa userInterfaceRequest];
  v2 = [v1 identifier];

  return v2 == 5;
}

uint64_t closure #1 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(void *a1)
{
  [objc_msgSend(a1 presenter)];

  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIDTOBiometryRequiredScenePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_biometryType];
  v9 = [*&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI48LACUIDTOBiometryRequiredScenePresentationHandler_alertFactory] biometryRequiredAlertWithBiometryType_];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v27 = partial apply for closure #1 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:);
    v28 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v26 = &block_descriptor;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v10 setOnDismiss_];
    _Block_release(v12);
    v14 = [v13 presenter];
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    v27 = partial apply for closure #2 in LACUIDTOBiometryRequiredScenePresentationHandler.handle(request:inContext:);
    v28 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v26 = &block_descriptor_9;
    v16 = _Block_copy(&aBlock);
    v17 = v10;

    [v14 present:v17 animated:1 completion:v16];
    _Block_release(v16);
  }

  else
  {
    static LACLog.ui.getter();
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v8;

      _os_log_impl(&dword_256063000, v19, v20, "No alert available for biometryType: %ld", v21, 0xCu);
      MEMORY[0x259C59AD0](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    (*(v4 + 8))(v7, v3);
    [objc_msgSend(a1 presenter)];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_256077D18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Image.init(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (a1[2])
  {
    v3 = *a1;

    return Image.init(_internalSystemName:)();
  }

  else
  {
    v5 = one-time initialization token for current;
    v6 = a1[1];

    if (v5 != -1)
    {
      swift_once();
    }

    v7 = static NSBundle.current;
    v8 = Image.init(_:bundle:)();
    outlined consume of LACUIAuthImageConfiguration();
    return v8;
  }
}

__n128 Image.scaleWhilePreservingRatio(toHeight:for:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v15 = type metadata accessor for Font.Design();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = static Font.system(size:weight:design:)();
    outlined destroy of Font.Design?(v9);
    KeyPath = swift_getKeyPath();
    v27 = 1;
    v23 = a2;
    v24 = KeyPath;
    v25[0] = v16;
    *&v25[1] = v28;
    *&v25[3] = v29;
    *&v25[5] = v30;
    v26 = 1;
  }

  else
  {
    (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v14, v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v22[38] = v30;
    *&v22[22] = v29;
    *&v22[6] = v28;
    *(v25 + 2) = *v22;
    LOBYTE(v31) = 1;
    v27 = 0;
    v23 = v18;
    v24 = 0;
    LOWORD(v25[0]) = 1;
    *(&v25[2] + 2) = *&v22[16];
    *(&v25[4] + 2) = *&v22[32];
    v25[6] = *(&v30 + 1);
    v26 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v19 = v34[0];
  *(a3 + 32) = v33;
  *(a3 + 48) = v19;
  *(a3 + 57) = *(v34 + 9);
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_256078260@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.font : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_2560782B8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for NSBundle.Sentinel()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAEyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd, "4f");
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t LACUIFaceIDSpinnerView_SwiftUI.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void LACUIFaceIDSpinnerView_SwiftUI.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LACUIFaceIDSpinnerViewModel();
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel();

  JUMPOUT(0x259C58460);
}

unint64_t lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel()
{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel)
  {
    type metadata accessor for LACUIFaceIDSpinnerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel);
  }

  return result;
}

uint64_t LACUIFaceIDSpinnerView_SwiftUI.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUIFaceIDSpinnerViewModel();
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerViewModel and conformance LACUIFaceIDSpinnerViewModel();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LACUIFaceIDSpinnerView_SwiftUI.updateUIView<A>(_:context:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  LACUIFaceIDSpinnerView_SwiftUI.updateView<A>(_:context:)(a1);
}

void LACUIFaceIDSpinnerView_SwiftUI.updateView<A>(_:context:)(void *a1)
{
  v3 = *(v1 + 8);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(*v3 + 88);
    v9 = a1;

    v8 = v6(v7);

    [v5 setState:v8 animated:1 completion:0];
  }
}

id LACUIFaceIDSpinnerView_SwiftUI.makeUIView(context:)()
{
  v0 = objc_allocWithZone(LACUIFaceIDSpinnerView);

  return [v0 init];
}

unint64_t instantiation function for generic protocol witness table for LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI()
{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI;
  if (!lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance LACUIFaceIDSpinnerView_SwiftUI()
{
  v0 = objc_allocWithZone(LACUIFaceIDSpinnerView);

  return [v0 init];
}

id protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance LACUIFaceIDSpinnerView_SwiftUI(void *a1)
{
  v3 = (*(**(v1 + 8) + 88))();

  return [a1 setState:v3 animated:1 completion:0];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance LACUIFaceIDSpinnerView_SwiftUI()
{
  lazy protocol witness table accessor for type LACUIFaceIDSpinnerView_SwiftUI and conformance LACUIFaceIDSpinnerView_SwiftUI();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_256078B14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIFaceIDSpinnerView_SwiftUI(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for LACUIFaceIDSpinnerView_SwiftUI(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LACUIAuthCountdownViewModel.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  LACUIAuthCountdownViewModel.init(configuration:handler:)(a1, a2, a3);
  return v9;
}

uint64_t LACUIAuthCountdownViewModel.delayExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v8 = type metadata accessor for LACUIAuthCountdownConfiguration();
  outlined init with copy of LACUIAuthCountdownDelayConfiguration?(v7 + *(v8 + 28), v6);
  v9 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v6, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
    v10 = type metadata accessor for Date();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 20);
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a1, &v6[v12], v13);
    outlined destroy of LACUIAuthCountdownDelayConfiguration(v6, type metadata accessor for LACUIAuthCountdownDelayConfiguration);
    return (*(v14 + 56))(a1, 0, 1, v13);
  }
}

uint64_t LACUIAuthCountdownViewModel.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer) = 0;
  outlined init with copy of LACUIAuthCountdownConfiguration(a1, v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration);
  *(v3 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler + 8) = a3;
  v18 = swift_unknownObjectWeakAssign();
  (*(*v3 + 104))(v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration(a1, type metadata accessor for LACUIAuthCountdownConfiguration);
    swift_unknownObjectRelease();
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    static Date.now.getter();
    v19 = static Date.> infix(_:_:)();
    v20 = *(v11 + 8);
    v20(v15, v10);
    if (v19)
    {
      LACUIAuthCountdownViewModel.scheduleDelayTimer()();
    }

    swift_unknownObjectRelease();
    outlined destroy of LACUIAuthCountdownDelayConfiguration(a1, type metadata accessor for LACUIAuthCountdownConfiguration);
    v20(v17, v10);
  }

  return v3;
}

uint64_t outlined init with copy of LACUIAuthCountdownConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void LACUIAuthCountdownViewModel.scheduleDelayTimer()()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer;
  v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v9[4] = partial apply for closure #1 in LACUIAuthCountdownViewModel.scheduleDelayTimer();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.5];
  _Block_release(v6);
  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
}

uint64_t LACUIAuthCountdownViewModel.tappedOnButton(_:)(__int128 *a1)
{
  v3 = a1[3];
  v19[2] = a1[2];
  v19[3] = v3;
  v20 = *(a1 + 32);
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = a1[3];
    v14 = a1[2];
    v15 = v9;
    v16 = *(a1 + 32);
    v10 = a1[1];
    v12 = *a1;
    v13 = v10;
    v11 = *(v7 + 8);
    outlined init with copy of LACUIAuthButtonConfiguration(v19, v17);
    v11(&v12, ObjectType, v7);
    swift_unknownObjectRelease();
    v17[2] = v14;
    v17[3] = v15;
    v18 = v16;
    v17[0] = v12;
    v17[1] = v13;
    return outlined destroy of LACUIAuthActionCountdown(v17);
  }

  return result;
}

uint64_t LACUIAuthCountdownViewModel.deinit()
{
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration, type metadata accessor for LACUIAuthCountdownConfiguration);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler);

  return v0;
}

uint64_t LACUIAuthCountdownViewModel.__deallocating_deinit()
{
  outlined destroy of LACUIAuthCountdownDelayConfiguration(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration, type metadata accessor for LACUIAuthCountdownConfiguration);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUIAuthCountdownViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUIAuthCountdownViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LACUIAuthCountdownViewModel()
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownViewModel;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACUIAuthCountdownViewModel()
{
  result = type metadata accessor for LACUIAuthCountdownConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_256079838()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in LACUIAuthCountdownViewModel.scheduleDelayTimer()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-v2];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(*Strong + 104))(Strong);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(v5 + 32))(v11, v3, v4);
  static Date.now.getter();
  v13 = static Date.< infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  if (v13)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      LACUIAuthCountdownViewModel.delayElapsed()();
    }
  }

  return (v14)(v11, v4);
}

uint64_t LACUIAuthCountdownViewModel.delayElapsed()()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer;
  [*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_delayTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    (*(v5 + 8))(v7, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LACUIAuthCountdownDelayView.expirationRange.getter@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v2 = *(*(v35 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v35);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 20);
  static Date.now.getter();
  v38 = v1;
  v17 = static Date.> infix(_:_:)();
  v36 = *(v9 + 8);
  v36(v15, v8);
  static Date.now.getter();
  if (v17)
  {
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v19 = *(v9 + 32);
      v19(v7, v15, v8);
      v20 = v35;
      (*(v9 + 16))(&v7[*(v35 + 48)], v38 + v16, v8);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v7, v5, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v21 = *(v20 + 48);
      v22 = v37;
      v19(v37, v5, v8);
      v23 = &v5[v21];
      v24 = v36;
      v36(v23, v8);
      outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v7, v5, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
      v25 = *(v20 + 48);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
      v19(&v22[*(v26 + 36)], &v5[v25], v8);
      return v24(v5, v8);
    }

    __break(1u);
    goto LABEL_8;
  }

  static Date.now.getter();
  lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v27 = *(v9 + 32);
  v27(v7, v15, v8);
  v28 = v35;
  v27(&v7[*(v35 + 48)], v13, v8);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v7, v5, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v29 = *(v28 + 48);
  v30 = v37;
  v27(v37, v5, v8);
  v31 = &v5[v29];
  v32 = v36;
  v36(v31, v8);
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v7, v5, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v33 = *(v28 + 48);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
  v27(&v30[*(v34 + 36)], &v5[v33], v8);
  return v32(v5, v8);
}

uint64_t LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMR);
  return closure #1 in LACUIAuthCountdownDelayView.body.getter(v1, (a1 + *(v3 + 44)));
}

uint64_t closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a1;
  v109 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v103 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LACUIAuthCountdownDelayView();
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v94 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v96 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v97 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR);
  v23 = *(v22 - 8);
  v99 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v94 - v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR);
  v26 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo_MR);
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = *(v107 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v106 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v110 = &v94 - v32;
  outlined init with copy of LACUIAuthCountdownDelayConfiguration(a1, v8, type metadata accessor for LACUIAuthCountdownDelayView);
  v33 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v34 = swift_allocObject();
  outlined init with take of LACUIAuthCountdownDelayConfiguration(v8, v34 + v33, type metadata accessor for LACUIAuthCountdownDelayView);
  *v13 = 0;
  v13[8] = 1;
  *(v13 + 2) = partial apply for closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter;
  *(v13 + 3) = v34;
  v35 = *(v10 + 48);
  *&v13[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v96;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v13, v96, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR);
  v37 = (v36 + *(v15 + 44));
  v38 = v154;
  v37[4] = v153;
  v37[5] = v38;
  v37[6] = v155;
  v39 = v150;
  *v37 = v149;
  v37[1] = v39;
  v40 = v152;
  v37[2] = v151;
  v37[3] = v40;
  LOBYTE(v35) = static Edge.Set.all.getter();
  v41 = v97;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v36, v97, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
  v42 = v41 + *(v19 + 44);
  *v42 = v35;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 1;
  v43 = [objc_opt_self() secondarySystemBackgroundColor];
  v44 = Color.init(uiColor:)();
  v45 = v98;
  v46 = &v98[*(v99 + 44)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v48 = v46 + *(v47 + 52);
  v49 = *(type metadata accessor for RoundedRectangle() + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #8.0 }

  *v48 = _Q0;
  *v46 = v44;
  *(v46 + *(v47 + 56)) = 256;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v41, v45, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR);
  LOBYTE(v44) = static Edge.Set.horizontal.getter();
  v57 = v100;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v45, v100, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR);
  v58 = v103;
  v59 = v57 + *(v102 + 36);
  *v59 = v44;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  *(v59 + 40) = 1;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  View.accessibilityElement(children:)();
  (*(v104 + 8))(v58, v105);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v57, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGA5_GMR);
  v60 = (v101 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 24));
  if (v60[1])
  {
    v61 = *v60;
    v105 = static VerticalAlignment.center.getter();

    static Font.footnote.getter();
    v62 = Text.font(_:)();
    v64 = v63;
    v66 = v65;
    v104 = v67;

    LODWORD(v138) = static HierarchicalShapeStyle.secondary.getter();
    v68 = Text.foregroundStyle<A>(_:)();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    outlined consume of Text.Storage(v62, v64, v66 & 1);

    outlined copy of Text.Storage(v68, v70, v72 & 1);

    outlined consume of Text.Storage(v68, v70, v72 & 1);

    LOBYTE(v125[0]) = 1;
    LOBYTE(v114) = v72 & 1;
    v113 = 1;
    LOBYTE(v64) = static Edge.Set.horizontal.getter();
    v111 = 1;
    v75 = static Edge.Set.horizontal.getter();
    v112 = 1;
    v127 = v105;
    LOBYTE(v128) = 1;
    *(&v128 + 1) = v68;
    *&v129 = v70;
    BYTE8(v129) = v72 & 1;
    v130 = v74;
    LOBYTE(v131) = 1;
    BYTE8(v131) = v64;
    v132 = 0u;
    v133 = 0u;
    LOBYTE(v134) = 1;
    BYTE8(v134) = v75;
    v135 = 0u;
    v136 = 0u;
    v137 = 1;
    destructiveProjectEnumData for LACUIRatchetViewModelPresentationStyle(&v127);
    v146 = v135;
    v147 = v136;
    v148 = v137;
    v142 = v131;
    v143 = v132;
    v144 = v133;
    v145 = v134;
    v138 = v127;
    v139 = v128;
    v140 = v129;
    v141 = v130;
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgWOi0_(&v138);
  }

  v77 = v106;
  v76 = v107;
  v78 = *(v107 + 16);
  v79 = v110;
  v80 = v108;
  v78(v106, v110, v108);
  v122 = v146;
  v123 = v147;
  v124 = v148;
  v118 = v142;
  v119 = v143;
  v120 = v144;
  v121 = v145;
  v114 = v138;
  v115 = v139;
  v116 = v140;
  v117 = v141;
  v81 = v109;
  v78(v109, v77, v80);
  v82 = &v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo__AIyAIyAA6HStackVyANyAP_AXtGGA11_GA11_GSgtMd, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIy023LocalAuthenticationCoreB012DynamicStackVyAA05TupleC0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGG_AA6SpacerVAA08TimelineC0VyAA08PeriodicY8ScheduleVAIyApA0g10AttachmentV0VGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA026_InsettableBackgroundShapeV0VyAA5ColorVAA16RoundedRectangleVGGA11_G_Qo__AIyAIyAA6HStackVyANyAP_AXtGGA11_GA11_GSgtMR) + 48)];
  v83 = v121;
  v125[8] = v122;
  v125[9] = v123;
  v84 = v118;
  v85 = v119;
  v125[4] = v118;
  v125[5] = v119;
  v86 = v120;
  v125[6] = v120;
  v125[7] = v121;
  v87 = v114;
  v88 = v115;
  v125[0] = v114;
  v125[1] = v115;
  v90 = v116;
  v89 = v117;
  v125[2] = v116;
  v125[3] = v117;
  v91 = v123;
  *(v82 + 8) = v122;
  *(v82 + 9) = v91;
  *(v82 + 4) = v84;
  *(v82 + 5) = v85;
  *(v82 + 6) = v86;
  *(v82 + 7) = v83;
  *v82 = v87;
  *(v82 + 1) = v88;
  v126 = v124;
  v82[160] = v124;
  *(v82 + 2) = v90;
  *(v82 + 3) = v89;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v125, &v127, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMR);
  v92 = *(v76 + 8);
  v92(v79, v80);
  v135 = v122;
  v136 = v123;
  v137 = v124;
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v130 = v117;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v127, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgMR);
  return (v92)(v77, v80);
}

uint64_t closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayView();
  v51 = *(v4 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v44 = type metadata accessor for PeriodicTimelineSchedule();
  v52 = *(v44 - 8);
  v14 = *(v52 + 64);
  v15 = MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGGMR);
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v49 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v43 = &v41 - v24;
  v25 = a1[1];
  v48 = *a1;
  v45 = v25;
  KeyPath = swift_getKeyPath();

  static Date.now.getter();
  (*(v7 + 16))(v11, v13, v6);
  PeriodicTimelineSchedule.init(from:by:)();
  (*(v7 + 8))(v13, v6);
  v26 = v46;
  outlined init with copy of LACUIAuthCountdownDelayConfiguration(a1, v46, type metadata accessor for LACUIAuthCountdownDelayView);
  v27 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v28 = swift_allocObject();
  outlined init with take of LACUIAuthCountdownDelayConfiguration(v26, v28 + v27, type metadata accessor for LACUIAuthCountdownDelayView);
  v29 = v44;
  (*(v52 + 16))(v42, v18, v44);
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter;
  *(v30 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x277CE06F0]);
  lazy protocol witness table accessor for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v31 = v43;
  TimelineView<>.init(_:content:)();
  (*(v52 + 8))(v18, v29);
  v32 = v20[2];
  v33 = v49;
  v34 = v31;
  v32(v49, v31, v19);
  v36 = KeyPath;
  v35 = v48;
  v37 = v45;
  *a2 = v48;
  *(a2 + 8) = v37;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v36;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVAA12TimelineViewVyAA08PeriodicL8ScheduleVACyAeA023AccessibilityAttachmentI0VGGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVAA12TimelineViewVyAA08PeriodicL8ScheduleVACyAeA023AccessibilityAttachmentI0VGGtMR);
  v32((a2 + *(v38 + 64)), v33, v19);
  outlined copy of Text.Storage(v35, v37, 0);
  v39 = v20[1];

  v39(v34, v19);
  v39(v33, v19);
  outlined consume of Text.Storage(v35, v37, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ComponentsFormatStyle();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v56 - v16;
  v17 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Duration.TimeFormatStyle();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 20);
  v66 = a1;
  result = Date.timeIntervalSinceNow.getter();
  if (v29 >= 0.0)
  {
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v29 = 0.0;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v29 < 9.22337204e18)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    v58 = v4;
    static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    static FormatStyle<>.time(pattern:)();
    (*(v18 + 8))(v21, v17);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x277CC9FB0]);
    Duration.formatted<A>(_:)();
    (*(v23 + 8))(v26, v22);
    v72 = v68;
    v73 = v69;
    lazy protocol witness table accessor for type String and conformance String();
    v30 = Text.init<A>(_:)();
    v32 = v31;
    v34 = v33;
    v35 = Text.monospacedDigit()();
    v37 = v36;
    v56 = a2;
    v57 = v5;
    v39 = v38;
    outlined consume of Text.Storage(v30, v32, v34 & 1);

    LODWORD(v68) = static HierarchicalShapeStyle.secondary.getter();
    v40 = Text.foregroundStyle<A>(_:)();
    v42 = v41;
    v44 = v43;
    outlined consume of Text.Storage(v35, v37, v39 & 1);

    v45 = v59;
    LACUIAuthCountdownDelayView.expirationRange.getter(v59);
    v46 = v60;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v47 = v61;
    static FormatStyle<>.components(style:fields:)();
    (*(v62 + 8))(v46, v63);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x277CC9510]);
    v48 = v65;
    Range<>.formatted<A>(_:)();
    (*(v64 + 8))(v47, v48);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v45, &_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    v72 = v68;
    v73 = v69;
    v49 = Text.accessibilityLabel<A>(_:)();
    v51 = v50;
    LOBYTE(v47) = v52;
    v54 = v53;
    outlined consume of Text.Storage(v40, v42, v44 & 1);

    v68 = v49;
    v69 = v51;
    v70 = v47 & 1;
    v71 = v54;
    v55 = v67;
    static AccessibilityTraits.updatesFrequently.getter();
    MEMORY[0x259C58A90](v55, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    (*(v57 + 8))(v55, v58);
    outlined consume of Text.Storage(v49, v51, v47 & 1);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance LACUIAuthCountdownDelayView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQy023LocalAuthenticationCoreB012DynamicStackVyAIyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGG_AA6SpacerVAA08TimelineD0VyAA24PeriodicTimelineScheduleVAQyAvA0l10AttachmentZ0VGGtGGAA010_FlexFrameG0VGAA08_PaddingG0VGAA026_InsettableBackgroundShapeZ0VyAA5ColorVAA16RoundedRectangleVGGA17_G_Qo__AQyAQyAA6HStackVyAIyAV_A2_tGGA17_GA17_GSgtGGMR);
  return closure #1 in LACUIAuthCountdownDelayView.body.getter(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_25607B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25607B7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LACUIAuthCountdownDelayView()
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownDelayView;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownDelayView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACUIAuthCountdownDelayView()
{
  result = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of LACUIAuthCountdownDelayConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA026_InsettableBackgroundShapeP0VyAA5ColorVAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGAA08_PaddingZ0VGMR, lazy protocol witness table accessor for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB012DynamicStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVAA08TimelineK0VyAA08PeriodicS8ScheduleVACyAjA023AccessibilityAttachmentP0VGGtGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>> and conformance DynamicStack<A>, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGG_AD6SpacerVAD08TimelineI0VyAD08PeriodicS8ScheduleVAHyAjD023AccessibilityAttachmentP0VGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA14_PaddingLayoutVGAOGSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_GMR);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for LACUIAuthCountdownDelayView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + *(v6 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in closure #1 in LACUIAuthCountdownDelayView.body.getter(v4, a1);
}

uint64_t sub_25607C01C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t LACUIAuthCountdownDelayConfiguration.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LACUIAuthCountdownDelayConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LACUIAuthCountdownDelayConfiguration()
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownDelayConfiguration;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownDelayConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.expiration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LACUIAuthCountdownDelayConfiguration.caption.getter()
{
  v1 = (v0 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LACUIAuthCountdownDelayConfiguration.caption.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LACUIAuthCountdownDelayConfiguration() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LACUIAuthCountdownDelayConfiguration.init(title:expiration:caption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v13 = &a6[*(v12 + 24)];
  *a6 = a1;
  *(a6 + 1) = a2;
  v14 = *(v12 + 20);
  v15 = type metadata accessor for Date();
  result = (*(*(v15 - 8) + 32))(&a6[v14], a3, v15);
  *v13 = a4;
  *(v13 + 1) = a5;
  return result;
}

uint64_t specialized static LACUIAuthCountdownDelayConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
    v6 = *(v5 + 20);
    if (static Date.== infix(_:_:)())
    {
      v7 = *(v5 + 24);
      v8 = (a1 + v7);
      v9 = *(a1 + v7 + 8);
      v10 = (a2 + v7);
      v11 = v10[1];
      if (v9)
      {
        if (v11)
        {
          v12 = *v8 == *v10 && v9 == v11;
          if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25607C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25607C7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LACUIAuthCountdownDelayConfiguration()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t LACUIRatchetViewModelConfiguration.countdownPrimaryActionTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t getEnumTagSinglePayload for LACUIRatchetViewModelConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for LACUIRatchetViewModelConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t key path getter for LACUILockViewModel.state : LACUILockViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25607CB44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LACUILockViewModel.state.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LACUILockViewModel.state.modify;
}

uint64_t key path setter for LACUILockViewModel.$state : LACUILockViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 128))(v7);
}

uint64_t LACUILockViewModel.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LACUILockViewModel.$state.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMd, &_s7Combine9PublishedV9PublisherVySo18LACUILockViewStateV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LACUILockViewModel.$state.modify;
}

uint64_t key path getter for LACUILockViewModel.color : LACUILockViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.color.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25607D1B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t LACUILockViewModel.color.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LACUILockViewModel.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LACUILockViewModel.color.modify;
}

void LACUILockViewModel.state.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for LACUILockViewModel.$color : LACUILockViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 176))(v7);
}

uint64_t LACUILockViewModel.$state.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LACUILockViewModel.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LACUILockViewModel.$color.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIColorC_GMd, &_s7Combine9PublishedV9PublisherVySo7UIColorC_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LACUILockViewModel.$color.modify;
}

void LACUILockViewModel.$state.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t LACUILockViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for LACUILockViewState(0);
  Published.init(initialValue:)();
  [objc_opt_self() whiteColor];
  type metadata accessor for UIColor();
  Published.init(initialValue:)();
  return v3;
}

uint64_t LACUILockViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v15 = 0;
  type metadata accessor for LACUILockViewState(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v15 = [objc_opt_self() whiteColor];
  type metadata accessor for UIColor();
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t LACUILockViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LACUILockViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18LACUILockViewStateVGMd, &_s7Combine9PublishedVySo18LACUILockViewStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI18LACUILockViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIColorCGMd, &_s7Combine9PublishedVySo7UIColorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUILockViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUILockViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LACUILockViewModel()
{
  result = type metadata singleton initialization cache for LACUILockViewModel;
  if (!type metadata singleton initialization cache for LACUILockViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACUILockViewModel()
{
  type metadata accessor for Published<LACUILockViewState>(319, &lazy cache variable for type metadata for Published<LACUILockViewState>, type metadata accessor for LACUILockViewState);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<LACUILockViewState>(319, &lazy cache variable for type metadata for Published<UIColor>, type metadata accessor for UIColor);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<LACUILockViewState>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t LACUIRatchetViewModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t LACUIRatchetViewModel.statePublisher.getter()
{
  LACUIRatchetViewModel.stateSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type CurrentValueSubject<LACUIRatchetViewModel.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR);
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

uint64_t LACUIRatchetViewModel.learnMorePublisher.getter(void (*a1)(void))
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

uint64_t LACUIRatchetViewModel.isInvalidated.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for LACUIRatchetViewModel.state : LACUIRatchetViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  outlined init with copy of LACUIRatchetViewModel.State(a1, &v17[-v12]);
  v14 = *a2;
  v15 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v14 + v15, v11);
  swift_beginAccess();
  outlined assign with copy of LACUIRatchetViewModel.State(v13, v14 + v15);
  swift_endAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v14 + v15, v8);
  LACUIRatchetViewModel.stateUpdated(from:to:)(v11, v8);
  outlined destroy of LACUIRatchetViewModel.State(v8, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v11, type metadata accessor for LACUIRatchetViewModel.State);
  return outlined destroy of LACUIRatchetViewModel.State(v13, type metadata accessor for LACUIRatchetViewModel.State);
}

uint64_t LACUIRatchetViewModel.stateUpdated(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = type metadata accessor for Logger();
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized static LACUIRatchetViewModel.State.== infix(_:_:)(a1, a2);
  if ((result & 1) == 0)
  {
    v51 = v18;
    static LACLog.dtoUI.getter();
    outlined init with copy of LACUIRatchetViewModel.State(a1, v17);
    outlined init with copy of LACUIRatchetViewModel.State(a2, v15);
    v23 = v2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v52 = v5;
      v27 = v26;
      v47 = swift_slowAlloc();
      v48 = v12;
      v28 = v9;
      v29 = v47;
      v49 = swift_slowAlloc();
      v54[0] = v49;
      *v27 = 138543874;
      *(v27 + 4) = v23;
      *v29 = v23;
      v9 = v28;
      v12 = v48;
      *(v27 + 12) = 2082;
      outlined init with copy of LACUIRatchetViewModel.State(v17, v12);
      v30 = v23;
      v31 = String.init<A>(describing:)();
      v46 = v25;
      v32 = v31;
      v50 = a2;
      v34 = v33;
      v45 = v24;
      outlined destroy of LACUIRatchetViewModel.State(v17, type metadata accessor for LACUIRatchetViewModel.State);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v54);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2082;
      outlined init with copy of LACUIRatchetViewModel.State(v15, v12);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      outlined destroy of LACUIRatchetViewModel.State(v15, type metadata accessor for LACUIRatchetViewModel.State);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v54);
      a2 = v50;

      *(v27 + 24) = v39;
      v40 = v45;
      _os_log_impl(&dword_256063000, v45, v46, "%{public}@ state updated from: %{public}s to: %{public}s", v27, 0x20u);
      v41 = v47;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C59AD0](v41, -1, -1);
      v42 = v49;
      swift_arrayDestroy();
      MEMORY[0x259C59AD0](v42, -1, -1);
      MEMORY[0x259C59AD0](v27, -1, -1);
    }

    else
    {

      outlined destroy of LACUIRatchetViewModel.State(v15, type metadata accessor for LACUIRatchetViewModel.State);
      outlined destroy of LACUIRatchetViewModel.State(v17, type metadata accessor for LACUIRatchetViewModel.State);
    }

    (*(v53 + 8))(v21, v51);
    outlined init with copy of LACUIRatchetViewModel.State(a2, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of LACUIRatchetViewModel.State(v9, type metadata accessor for LACUIRatchetViewModel.State);
    if (EnumCaseMultiPayload == 4)
    {
      v44 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
      swift_beginAccess();
      *(v23 + v44) = 0;
    }

    LACUIRatchetViewModel.stateSubject.getter();
    outlined init with copy of LACUIRatchetViewModel.State(a2, v12);
    CurrentValueSubject.value.setter();
  }

  return result;
}

uint64_t LACUIRatchetViewModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  return outlined init with copy of LACUIRatchetViewModel.State(v1 + v3, a1);
}

uint64_t LACUIRatchetViewModel.isRunning.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACUIRatchetViewModel.stateSubject.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject;
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject))
  {
    v5 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateOs5NeverOGMR);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = CurrentValueSubject.init(_:)();
    v9 = *(v1 + v4);
    *(v1 + v4) = v5;
  }

  return v5;
}

uint64_t LACUIRatchetViewModel.learnMoreSubject.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v4 = PassthroughSubject.init()();
    v9 = *(v5 + v2);
    *(v5 + v2) = v4;
  }

  return v4;
}

uint64_t LACUIRatchetViewModel.ratchetIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier);
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier + 8);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

id LACUIRatchetViewModel.ratchetManager.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void LACUIRatchetViewModel.ratchetManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LACUIRatchetViewModel.context.getter()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context;
  if (*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context);
  }

  else
  {
    v2 = [*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_contextProvider) createContext];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id LACUIRatchetViewModel.__allocating_init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id LACUIRatchetViewModel.init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id LACUIRatchetViewModel.__deallocating_deinit()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.dtoUI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_256063000, v7, v8, "%{public}@ deinitialized", v9, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v10, -1, -1);
    MEMORY[0x259C59AD0](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v12 = type metadata accessor for LACUIRatchetViewModel(0);
  v14.receiver = v6;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

Swift::Void __swiftcall LACUIRatchetViewModel.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  v8 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.start(), v6);
  v9 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v10 = *&v7[v9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v9] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *&v7[v9] = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  v10[v13 + 4] = v8;
  *&v7[v9] = v10;
  swift_endAccess();
}

uint64_t closure #1 in LACUIRatchetViewModel.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v4[12] = *(v10 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.start()()
{
  v1 = **(v0 + 40);
  v2 = ((*MEMORY[0x277D85000] & v1) + 288) & 0xFFFFFFFFFFFFLL | 0xC4D1000000000000;
  *(v0 + 120) = *((*MEMORY[0x277D85000] & v1) + 0x120);
  *(v0 + 128) = v2;
  *(v0 + 136) = type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), v4, v3);
}

{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 40);

  *(v0 + 184) = v3(v5) & 1;

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 40);
    static LACLog.dtoUI.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 40);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_256063000, v4, v5, "%{public}@ is already running", v7, 0xCu);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C59AD0](v8, -1, -1);
      MEMORY[0x259C59AD0](v7, -1, -1);
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);

    (*(v11 + 8))(v10, v12);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 136);
    *(v0 + 152) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), v21, v20);
  }
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
  swift_beginAccess();
  *(v2 + v3) = 1;

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.start(), 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[5];
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  outlined init with copy of LACUIRatchetViewModel.State(v1, v2);
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  outlined init with take of LACUIRatchetViewModel.State(v2, v10 + v9, type metadata accessor for LACUIRatchetViewModel.State);
  v11 = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v10);

  outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIRatchetViewModel.State);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = closure #1 in LACUIRatchetViewModel.start();
  v13 = v0[5];

  return LACUIRatchetViewModel.evaluate()();
}

{
  v1 = *(v0 + 40);
  LACUIRatchetViewModel.finish(result:error:)(*(v0 + 176), 0);

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[21];
  v2 = v0[5];
  v3 = v1;
  LACUIRatchetViewModel.finish(result:error:)(0, v1);

  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in LACUIRatchetViewModel.start()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = closure #1 in LACUIRatchetViewModel.start();
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = closure #1 in LACUIRatchetViewModel.start();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t LACUIRatchetViewModel.evaluate()()
{
  v1[13] = v0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), 0, 0);
}

{
  v1 = v0[13];
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))();
  v3 = [v2 isFeatureStrictModeEnabled];

  *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = LACUIRatchetViewModel.evaluate();
  v6 = v0[13];

  return LACUIRatchetViewModel.arm(with:)(v4);
}

{
  v0[11] = *MEMORY[0x277D23FC8];
  v1 = v0[19];
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = v0[19], v3 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 2)), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v0[19] + 56) + 32 * v3, (v0 + 7));
    outlined destroy of AnyHashable((v0 + 2));
    type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
    if (swift_dynamicCast())
    {
      v5 = v0[12];
      v0[21] = v5;
      v6 = [v5 gracePeriodState];
      v7 = [v6 isActive];

      if (v7)
      {
        v8 = swift_task_alloc();
        v0[22] = v8;
        *v8 = v0;
        v8[1] = LACUIRatchetViewModel.evaluate();
        v9 = v0[13];

        return LACUIRatchetViewModel.showUI(for:)(v5);
      }
    }
  }

  else
  {
    outlined destroy of AnyHashable((v0 + 2));
  }

  v11 = v0[16];
  v12 = v0[13];
  static LACLog.dtoUI.getter();
  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    _os_log_impl(&dword_256063000, v14, v15, "%{public}@ arming succeeded without countdown UI", v17, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v18, -1, -1);
    MEMORY[0x259C59AD0](v17, -1, -1);
  }

  v20 = v0[19];
  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];

  (*(v22 + 8))(v21, v23);
  v24 = v0[16];

  v25 = v0[1];

  return v25(v20);
}

{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = LACUIRatchetViewModel.evaluate();
  }

  else
  {

    v3 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  static LACLog.dtoUI.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_256063000, v4, v5, "%{public}@ arming succeeded without countdown UI", v7, 0xCu);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v8, -1, -1);
    MEMORY[0x259C59AD0](v7, -1, -1);
  }

  v10 = *(v0 + 152);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 112);

  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 128);

  v15 = *(v0 + 8);

  return v15(v10);
}

{
  type metadata accessor for MainActor();
  *(v0 + 216) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), v2, v1);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 104);

  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x120))(v3))
  {
    *(v0 + 248) = (*((*v4 & **(v0 + 104)) + 0xF0))() & 1;
    v5 = LACUIRatchetViewModel.evaluate();
  }

  else
  {
    v5 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 208);
    swift_willThrow();
    v2 = *(v0 + 208);
    v3 = *(v0 + 128);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 224) = v6;
    *v6 = v0;
    v6[1] = LACUIRatchetViewModel.evaluate();
    v7 = *(v0 + 104);

    return LACUIRatchetViewModel.armIfPossible()();
  }
}

{
  v1 = *(v0 + 208);
  swift_willThrow();
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);

  v4 = *(v0 + 8);

  return v4();
}

{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 192);

    v2 = *(v0 + 232);
    v3 = *(v0 + 128);

    v4 = *(v0 + 8);

    return v4(v2);
  }

  else
  {
    v6 = *(v0 + 208);
    swift_willThrow();
    v7 = *(v0 + 208);
    v8 = *(v0 + 128);

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = v0[17];

  v2 = v0[20];
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = LACUIRatchetViewModel.evaluate();
  v4 = v0[13];

  return LACUIRatchetViewModel.showRatchetUI(for:)(v2);
}

{
  v1 = *(v0 + 152);

  v2 = *(v0 + 184);
  *(v0 + 192) = v2;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = LACUIRatchetViewModel.evaluate();
  v4 = *(v0 + 104);

  return LACUIRatchetViewModel.showRatchetUI(for:)(v2);
}

{

  v1 = *(v0 + 240);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LACUIRatchetViewModel.evaluate()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.evaluate();
  }

  else
  {
    v6 = v3[17];

    v5 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.evaluate(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = LACUIRatchetViewModel.evaluate();
  }

  else
  {
    v5 = LACUIRatchetViewModel.evaluate();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t LACUIRatchetViewModel.finish(result:error:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - v9;
  v54 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v56 = *(v54 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v54);
  v57 = v13;
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v49 - v14);
  v16 = type metadata accessor for Logger();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = (*(ObjectType + 616))(a2);
  static LACLog.dtoUI.getter();
  v20 = v3;

  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v51 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v49 = v28;
    *v25 = 138543874;
    *(v25 + 4) = v20;
    *v27 = v20;
    *(v25 + 12) = 2082;
    v59 = v51;
    v60 = v28;
    v29 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v30 = Optional.debugDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v60);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2082;
    v59 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v33 = Optional.debugDescription.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v60);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_256063000, v22, v23, "%{public}@ finishing with result: %{public}s error: %{public}s", v25, 0x20u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = v27;
    a1 = v51;
    MEMORY[0x259C59AD0](v36, -1, -1);
    v37 = v49;
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v37, -1, -1);
    v38 = v25;
    v10 = v50;
    MEMORY[0x259C59AD0](v38, -1, -1);
  }

  v39 = (*(v52 + 8))(v19, v53);
  v40 = (*((*MEMORY[0x277D85000] & *v20) + 0x1A0))(v39);
  [v40 removeObserver_];

  v41 = v55;
  *v15 = a1;
  v15[1] = v41;
  swift_storeEnumTagMultiPayload();
  v42 = type metadata accessor for TaskPriority();
  (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
  v43 = v58;
  outlined init with copy of LACUIRatchetViewModel.State(v15, v58);
  v44 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v20;
  outlined init with take of LACUIRatchetViewModel.State(v43, v45 + v44, type metadata accessor for LACUIRatchetViewModel.State);
  v46 = v20;

  v47 = v41;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v45);

  return outlined destroy of LACUIRatchetViewModel.State(v15, type metadata accessor for LACUIRatchetViewModel.State);
}

Swift::Void __swiftcall LACUIRatchetViewModel.stop(withReason:invalidate:)(Swift::String withReason, Swift::Bool invalidate)
{
  object = withReason._object;
  countAndFlagsBits = withReason._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v2;
  *(v11 + 40) = countAndFlagsBits;
  *(v11 + 48) = object;
  *(v11 + 56) = invalidate;
  v12 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:), v11);
}

uint64_t closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *((*MEMORY[0x277D85000] & *a4) + 0x260);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return v15(a5, a6, a7);
}

uint64_t LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 40) = v7;
  *v7 = v4;
  v7[1] = LACUIRatchetViewModel.stop(withReason:invalidate:);

  return LACUIRatchetViewModel.stop(with:)(a1, a2);
}

uint64_t LACUIRatchetViewModel.stop(withReason:invalidate:)()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 56);
  v4 = *v0;

  if (v3 == 1)
  {
    v5 = swift_task_alloc();
    v1[6] = v5;
    *v5 = v4;
    v5[1] = LACUIRatchetViewModel.stop(withReason:invalidate:);
    v6 = v1[3];
    v7 = v1[4];
    v8 = v1[2];

    return LACUIRatchetViewModel.invalidate(with:)(v8, v6);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t LACUIRatchetViewModel.stop(with:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.stop(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.stop(with:)()
{
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.stop(with:), v2, v1);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);

  if ((*((*MEMORY[0x277D85000] & *v2) + 0x120))(v3))
  {
    v4 = *(v0 + 112);
    v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning;
    swift_beginAccess();
    *(v4 + v5) = 0;
    v6 = LACUIRatchetViewModel.stop(with:);
  }

  else
  {
    v6 = LACUIRatchetViewModel.stop(with:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v51 = v0;
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[14];
  static LACLog.dtoUI.getter();
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  if (v7)
  {
    v48 = v0[22];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v47 = v0[19];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v50);
    _os_log_impl(&dword_256063000, v5, v6, "Stopping %@ with reason %{public}s", v14, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C59AD0](v16, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);

    (*(v9 + 8))(v48, v47);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[16];
  v21 = v0[14];
  v22 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v21 + v22, v18, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v23 = (*(v20 + 48))(v18, 1, v19);
  v24 = v0[18];
  if (v23)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v0[18], &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  }

  else
  {
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    (*(v26 + 16))(v25, v0[18], v27);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v24, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
    v28 = swift_allocError();
    CancellationError.init()();
    v0[11] = v28;
    CheckedContinuation.resume(throwing:)();
    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[14];
  v30 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v49 = v29;
  v31 = *(v29 + v30);
  v32 = *(v31 + 16);

  if (v32)
  {
    v34 = 0;
    v35 = MEMORY[0x277D84F78];
    v36 = MEMORY[0x277D84A98];
    v37 = MEMORY[0x277D84AC0];
    while (v34 < *(v31 + 16))
    {
      v38 = v34 + 1;
      v39 = *(v31 + 32 + 8 * v34);

      MEMORY[0x259C58E70](v40, v35 + 8, v36, v37);

      v34 = v38;
      if (v32 == v38)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v41 = *(v49 + v30);
    *(v49 + v30) = MEMORY[0x277D84F90];

    v43 = v0[21];
    v42 = v0[22];
    v45 = v0[17];
    v44 = v0[18];

    v46 = v0[1];

    return v46();
  }

  return result;
}

{
  v27 = v0;
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[14];
  static LACLog.dtoUI.getter();
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v25 = v0[21];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v24 = v0[19];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v26);
    _os_log_impl(&dword_256063000, v5, v6, "Stopping %{public}@ that was already stopped. Reason: %{public}s", v14, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C59AD0](v16, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);

    (*(v8 + 8))(v25, v24);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v19 = v0[21];
  v18 = v0[22];
  v21 = v0[17];
  v20 = v0[18];

  v22 = v0[1];

  return v22();
}

uint64_t LACUIRatchetViewModel.invalidate(with:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = type metadata accessor for Logger();
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.invalidate(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.invalidate(with:)()
{
  type metadata accessor for MainActor();
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.invalidate(with:), v2, v1);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);

  if ((*((*MEMORY[0x277D85000] & *v2) + 0xF0))(v3))
  {
    v4 = LACUIRatchetViewModel.invalidate(with:);
  }

  else
  {
    v5 = *(v0 + 184);
    v6 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
    swift_beginAccess();
    *(v5 + v6) = 1;
    v4 = LACUIRatchetViewModel.invalidate(with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v32 = v0;
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  static LACLog.dtoUI.getter();
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  if (v7)
  {
    v30 = v0[28];
    v12 = v0[22];
    v11 = v0[23];
    v13 = v0[21];
    v29 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v31);
    _os_log_impl(&dword_256063000, v5, v6, "Invalidating %{public}@ with reason %{public}s", v14, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C59AD0](v16, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);

    v18 = *(v9 + 8);
    v18(v30, v29);
  }

  else
  {

    v18 = *(v9 + 8);
    v18(v8, v10);
  }

  v0[30] = v18;
  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  [LACUIRatchetViewModel.context.getter() invalidate];
  v22 = swift_unknownObjectRelease();
  v23 = (*((*MEMORY[0x277D85000] & *v19) + 0x1A0))(v22);
  v0[31] = v23;
  v24 = LACUIRatchetViewModel.ratchetIdentifier.getter();
  v25 = MEMORY[0x259C58D00](v24);
  v0[32] = v25;

  v26 = MEMORY[0x259C58D00](v21, v20);
  v0[33] = v26;
  v0[2] = v0;
  v0[3] = LACUIRatchetViewModel.invalidate(with:);
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_79;
  v0[14] = v27;
  [v23 cancelArmRequestWithIdentifier:v25 reason:v26 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = LACUIRatchetViewModel.invalidate(with:);
  }

  else
  {
    v3 = LACUIRatchetViewModel.invalidate(with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6();
}

{
  v26 = v0;
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  static LACLog.dtoUI.getter();
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  if (v7)
  {
    v24 = v0[27];
    v12 = v0[22];
    v11 = v0[23];
    v13 = v0[21];
    v23 = v0[24];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v25);
    _os_log_impl(&dword_256063000, v5, v6, "Invalidating %{public}@ that was already invalidated. Reason: %{public}s", v14, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C59AD0](v16, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);

    (*(v9 + 8))(v24, v23);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[26];

  v21 = v0[1];

  return v21();
}

{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  swift_willThrow();

  static LACLog.dtoUI.getter();
  v7 = v6;
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 272);
  if (v11)
  {
    v13 = *(v0 + 184);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543618;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2114;
    v16 = v13;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_256063000, v9, v10, "%{public}@ failed to cancel ratchet with error: %{public}@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v15, -1, -1);
    MEMORY[0x259C59AD0](v14, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 200) + 8;
  (*(v0 + 240))(*(v0 + 208), *(v0 + 192));
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 208);

  v23 = *(v0 + 8);

  return v23();
}

id LACUIRatchetViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LACUIRatchetViewModel.ratchetStateDidChange(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v8);
  v12 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v13 = *&v9[v12];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v9[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *&v9[v12] = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v11;
  *&v9[v12] = v13;
  swift_endAccess();
}

uint64_t closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)()
{
  *(v0 + 120) = type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v2, v1);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);

  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x120))(v3))
  {
    *(v0 + 160) = (*((*v4 & **(v0 + 40)) + 0xF0))() & 1;

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  if ((*(v0 + 160) & 1) != 0 || [*(v0 + 48) rawValue] - 2 > 2)
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v1 = *(v0 + 120);
    v2 = **(v0 + 40);
    v3 = ((*MEMORY[0x277D85000] & v2) + 264) & 0xFFFFFFFFFFFFLL | 0x61AF000000000000;
    *(v0 + 136) = *((*MEMORY[0x277D85000] & v2) + 0x108);
    *(v0 + 144) = v3;
    *(v0 + 152) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), v5, v4);
  }
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[5];

  v3(v6);

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[9];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[5];
    outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIAuthCountdownConfiguration);
    static Date.now.getter();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    v11 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v8, v9 + v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v3);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    outlined init with copy of LACUIRatchetViewModel.State(v3, v4);
    v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v9;
    outlined init with take of LACUIRatchetViewModel.State(v4, v14 + v13, type metadata accessor for LACUIRatchetViewModel.State);
    v15 = v9;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v14);

    v1 = v3;
  }

  outlined destroy of LACUIRatchetViewModel.State(v1, type metadata accessor for LACUIRatchetViewModel.State);
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v20 = v0[7];
  v19 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t LACUIRatchetViewModel.uiConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v152 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v146 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v150 = &v133 - v8;
  MEMORY[0x28223BE20](v7);
  *&v145 = &v133 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v144 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v147 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v149 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v133 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v133 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v133 - v25;
  v27 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
  swift_beginAccess();
  v148 = v27;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v27], v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v151 = v3;
  v28 = *(v3 + 48);
  LODWORD(v27) = v28(v26, 1, v2);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v27 == 1)
  {
    v29 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v29], v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LODWORD(v29) = v28(v24, 1, v2);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v29 == 1)
    {
      v149 = LACUIRatchetViewModel.beginDelayTitle.getter(MEMORY[0x277D23F40]);
      v151 = v30;
      v148 = LACUIRatchetViewModel.beginDelayText.getter();
      v150 = v31;
      LODWORD(v142) = v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled];
      v146 = v1;
      LODWORD(v144) = LACUIRatchetViewModel.beginDelayLocationWarning.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
      v32 = swift_allocObject();
      v145 = xmmword_2560BAC90;
      *(v32 + 16) = xmmword_2560BAC90;
      v33 = specialized static LocalizedStrings.ratchetCoolOffSecurityDelayDuration.getter();
      v35 = v34;
      *&v153 = 0;
      *(&v153 + 1) = 0xE000000000000000;
      *&v158 = 0xD000000000000015;
      *(&v158 + 1) = 0x80000002560BE6D0;
      LOBYTE(v159) = 1;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
      v36 = *(&v153 + 1);
      *(v32 + 32) = v153;
      *(v32 + 40) = v36;
      *(v32 + 48) = 0xD000000000000015;
      *(v32 + 56) = 0x80000002560BE6D0;
      *(v32 + 64) = 1;
      *(v32 + 72) = v33;
      *(v32 + 80) = v35;
      v37 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002ALL, 0x80000002560BE6F0, 0x74656863746152, 0xE700000000000000);
      v39 = v38;
      *&v153 = 0;
      *(&v153 + 1) = 0xE000000000000000;
      v143 = xmmword_2560BACA0;
      v158 = xmmword_2560BACA0;
      LOBYTE(v159) = 1;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
      v40 = *(&v153 + 1);
      *(v32 + 88) = v153;
      *(v32 + 96) = v40;
      *(v32 + 104) = v143;
      *(v32 + 120) = 1;
      *(v32 + 128) = v37;
      *(v32 + 136) = v39;
      if (v144)
      {
        v41 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x80000002560BE7F0, 0x74656863746152, 0xE700000000000000);
        v43 = v42;
        *&v153 = 0;
        *(&v153 + 1) = 0xE000000000000000;
        *&v158 = 0xD000000000000013;
        *(&v158 + 1) = 0x80000002560BE7D0;
        LOBYTE(v159) = 1;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
        v44 = v153;
        v46 = *(v32 + 16);
        v45 = *(v32 + 24);
        if (v46 >= v45 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v32);
        }

        *(v32 + 16) = v46 + 1;
        v47 = v32 + 56 * v46;
        *(v47 + 32) = v44;
        *(v47 + 48) = 0xD000000000000013;
        *(v47 + 56) = 0x80000002560BE7D0;
        *(v47 + 64) = 1;
        *(v47 + 72) = v41;
        *(v47 + 80) = v43;
      }

      if (!v151)
      {
        v149 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE720, 0x74656863746152, 0xE700000000000000);
        v151 = v48;
      }

      if (!v150)
      {
        if (v142)
        {
          v49 = "RATCHET_COOL_OFF_LEARN_MORE";
          v50 = 0xD00000000000002ALL;
        }

        else
        {
          v49 = "RATCHET_COOL_OFF_TITLE_BEGIN";
          v50 = 0xD00000000000001ELL;
        }

        v148 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v50, (v49 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
        v150 = v104;
      }

      v105 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
      v106 = *(*(v105 - 8) + 56);
      v106(v147, 1, 1, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
      v107 = swift_allocObject();
      *(v107 + 16) = v145;
      v108 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x80000002560BE760, 0x74656863746152, 0xE700000000000000);
      *(v107 + 64) = 0u;
      *(v107 + 80) = 0u;
      *(v107 + 96) = 255;
      *(v107 + 32) = 0xD000000000000012;
      *(v107 + 40) = 0x80000002560BDB70;
      *(v107 + 48) = v108;
      *(v107 + 56) = v109;
      v110 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
      *(v107 + 136) = 0u;
      *(v107 + 152) = 0u;
      *(v107 + 168) = 511;
      *(v107 + 104) = 0x726F4D6E7261656CLL;
      *(v107 + 112) = 0xE900000000000065;
      *(v107 + 120) = v110;
      *(v107 + 128) = v111;
      v112 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xED00004C45434E41, 0x75676F6C61746143, 0xE900000000000065);
      v114 = v113;
      v115 = type metadata accessor for LACUIAuthCountdownConfiguration();
      v116 = v115[7];
      v57 = v152;
      v106(v152 + v116, 1, 1, v105);
      v117 = v115[8];
      v118 = v57 + v115[10];
      *(v118 + 64) = 0;
      *(v118 + 32) = 0u;
      *(v118 + 48) = 0u;
      *v118 = 0u;
      *(v118 + 16) = 0u;
      v119 = v57 + v115[11];
      *(v119 + 64) = 0;
      *(v119 + 32) = 0u;
      *(v119 + 48) = 0u;
      *v119 = 0u;
      *(v119 + 16) = 0u;
      *v57 = xmmword_2560BACB0;
      *(v57 + 16) = 1;
      v120 = v151;
      *(v57 + 24) = v149;
      *(v57 + 32) = v120;
      v121 = v150;
      *(v57 + 40) = v148;
      *(v57 + 48) = v121;
      outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v147, v57 + v116, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
      *(v57 + v117) = v32;
      *(v57 + v115[9]) = v107;
      v157 = *(v118 + 64);
      v122 = *(v118 + 32);
      v156 = *(v118 + 48);
      v155 = v122;
      v123 = *v118;
      v154 = *(v118 + 16);
      v153 = v123;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v153, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      *v118 = 0x6C65636E6163;
      *(v118 + 8) = 0xE600000000000000;
      *(v118 + 16) = v112;
      *(v118 + 24) = v114;
      *(v118 + 32) = 0u;
      *(v118 + 48) = 0u;
      *(v118 + 64) = 767;
      v124 = *(v119 + 48);
      v160 = *(v119 + 32);
      v161 = v124;
      v162 = *(v119 + 64);
      v125 = *(v119 + 16);
      v158 = *v119;
      v159 = v125;
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v158, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
      *v119 = 0u;
      *(v119 + 16) = 0u;
      *(v119 + 32) = 0u;
      *(v119 + 48) = 0u;
      *(v119 + 64) = 0;
      v1 = v146;
      goto LABEL_38;
    }
  }

  v51 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v1[v51], v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v28(v21, 1, v2) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v52 = v151;
  }

  else
  {
    v52 = v151;
    v53 = v145;
    (*(v151 + 32))();
    v54 = v150;
    static Date.now.getter();
    v55 = static Date.> infix(_:_:)();
    v56 = *(v52 + 8);
    v56(v54, v2);
    if (v55)
    {
      v57 = v152;
      v58 = static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)(0, 0, v152);
      (v56)(v53, v2, v58);
LABEL_38:
      v68 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
      goto LABEL_39;
    }

    v56(v53, v2);
  }

  v59 = v149;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v148 + v1, v149, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v28(v59, 1, v2) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_23:
    v57 = v152;
    v68 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
    static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)(0, 0xE000000000000000, 0, 0, v152);
LABEL_39:
    v126 = v1[v68[34] + 16];
    result = type metadata accessor for LACUIAuthCountdownConfiguration();
    *(v57 + *(result + 52)) = v126;
    *(v57 + *(result + 48)) = v126;
    return result;
  }

  v60 = v146;
  (*(v52 + 32))(v146, v59, v2);
  v61 = v150;
  static Date.now.getter();
  v62 = static Date.> infix(_:_:)();
  v63 = *(v52 + 8);
  v63(v61, v2);
  if ((v62 & 1) == 0)
  {
    v63(v60, v2);
    goto LABEL_23;
  }

  v64 = LACUIRatchetViewModel.beginDelayTitle.getter(MEMORY[0x277D23F80]);
  v66 = v65;
  LODWORD(v142) = v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled];
  *&v145 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BE820, 0x74656863746152, 0xE700000000000000);
  *&v143 = v67;
  v149 = v52 + 8;
  v148 = v63;
  if (v66)
  {
    v147 = v66;
    v150 = v64;
  }

  else
  {
    v150 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x80000002560BE840, 0x74656863746152, 0xE700000000000000);
    v147 = v69;
  }

  v70 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE870, 0x74656863746152, 0xE700000000000000);
  v72 = v71;
  v73 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v74 = *(v52 + 16);
  v75 = v144;
  v76 = v144 + *(v73 + 20);
  v151 = v2;
  v74(v76, v60, v2);
  v77 = (v75 + *(v73 + 24));
  *v75 = v70;
  v75[1] = v72;
  *v77 = 0;
  v77[1] = 0;
  v78 = *(*(v73 - 8) + 56);
  v78(v75, 0, 1, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_2560BAC90;
  v80 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x445F4E4F54545542, 0xEB00000000454E4FLL, 0x75676F6C61746143, 0xE900000000000065);
  *(v79 + 64) = 0u;
  *(v79 + 80) = 0u;
  *(v79 + 96) = 255;
  *(v79 + 32) = 1701736292;
  *(v79 + 40) = 0xE400000000000000;
  *(v79 + 48) = v80;
  *(v79 + 56) = v81;
  v82 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v79 + 136) = 0u;
  *(v79 + 152) = 0u;
  *(v79 + 168) = 511;
  *(v79 + 104) = 0x726F4D6E7261656CLL;
  *(v79 + 112) = 0xE900000000000065;
  *(v79 + 120) = v82;
  *(v79 + 128) = v83;
  if ((v142 & 1) != 0 || (v84 = *MEMORY[0x277D23F20], (os_variant_allows_internal_security_policies() & 1) == 0))
  {
    v134 = 0;
    v136 = 0;
    v138 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v133 = 0;
    v135 = 0;
    v137 = 0;
    v139 = 0;
  }

  else
  {
    v142 = 0x80000002560BE890;
    outlined consume of LACUIAuthImageConfiguration?(0, 0, 255);
    v141 = 0xD000000000000032;
    v139 = 3;
    v137 = 1;
    v135 = 0xE300000000000000;
    v140 = 0xEF29796C6E4F206CLL;
    v138 = 0x616E7265746E4928;
    v136 = 0xEA00000000007261;
    v134 = 0x6461526F54706174;
    v133 = 7630433;
  }

  v85 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v86 = v85[7];
  v87 = v152;
  v78((v152 + v86), 1, 1, v73);
  v88 = v85[8];
  v89 = v87 + v85[10];
  *(v89 + 64) = 0;
  *(v89 + 32) = 0u;
  *(v89 + 48) = 0u;
  *v89 = 0u;
  *(v89 + 16) = 0u;
  v90 = v87 + v85[11];
  *(v90 + 64) = 0;
  *(v90 + 32) = 0u;
  *(v90 + 48) = 0u;
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *v87 = 0xD000000000000015;
  *(v87 + 8) = 0x80000002560BE6D0;
  *(v87 + 16) = 1;
  v91 = v143;
  *(v87 + 24) = v145;
  *(v87 + 32) = v91;
  v92 = v147;
  *(v87 + 40) = v150;
  *(v87 + 48) = v92;
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v144, v87 + v86, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  *(v87 + v88) = 0;
  v93 = v85[9];
  *(v87 + v93) = v79;
  v157 = *(v89 + 64);
  v94 = *(v89 + 32);
  v156 = *(v89 + 48);
  v155 = v94;
  v95 = *v89;
  v154 = *(v89 + 16);
  v153 = v95;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v153, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  *v89 = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 32) = 0u;
  *(v89 + 48) = 0u;
  *(v89 + 64) = 0;
  v96 = *(v90 + 48);
  v160 = *(v90 + 32);
  v161 = v96;
  v162 = *(v90 + 64);
  v97 = *(v90 + 16);
  v158 = *v90;
  v159 = v97;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v158, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v98 = v136;
  *v90 = v134;
  *(v90 + 8) = v98;
  v99 = v140;
  *(v90 + 16) = v138;
  *(v90 + 24) = v99;
  v100 = v142;
  *(v90 + 32) = v141;
  *(v90 + 40) = v100;
  v101 = v135;
  *(v90 + 48) = v133;
  *(v90 + 56) = v101;
  *(v90 + 64) = v137;
  *(v90 + 65) = v139;
  v68 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  v102 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 8];
  if (!v102)
  {
    v103 = v146;
LABEL_34:
    v148(v103, v151);
    v57 = v152;
    goto LABEL_39;
  }

  v103 = v146;
  if (!*(v79 + 16) || *(v79 + 97))
  {
    goto LABEL_34;
  }

  v128 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration];
  v129 = v146;
  v130 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration + 8];

  result = (v148)(v129, v151);
  if (*(v79 + 16))
  {
    v131 = *(v79 + 56);
    *(v79 + 48) = v128;
    *(v79 + 56) = v102;

    v132 = v152;
    *(v152 + v93) = v79;
    v57 = v132;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t LACUIRatchetViewModel.handle(action:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v43 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v45 = type metadata accessor for Logger();
  v44 = *(v45 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v56 = a1[2];
  v57 = v16;
  v58 = *(a1 + 32);
  v17 = a1[1];
  v54 = *a1;
  v55 = v17;
  static LACLog.dtoUI.getter();
  v18 = v1;
  outlined init with copy of LACUIAuthActionCountdown(&v54, &v49);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  outlined destroy of LACUIAuthActionCountdown(&v54);
  v21 = os_log_type_enabled(v19, v20);
  v46 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v42 = v6;
    v25 = v24;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v23 = 138543618;
    *(v23 + 4) = v18;
    *v25 = v18;
    *(v23 + 12) = 2082;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    v49 = v54;
    v50 = v55;
    v26 = v18;
    outlined init with copy of LACUIAuthActionCountdown(&v54, v47);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

    *(v23 + 14) = v29;
    v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    _os_log_impl(&dword_256063000, v19, v20, "%{public}@ handle countdown action %{public}s", v23, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = v25;
    v6 = v42;
    MEMORY[0x259C59AD0](v30, -1, -1);
    v31 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x259C59AD0](v31, -1, -1);
    v32 = v23;
    v12 = v41;
    MEMORY[0x259C59AD0](v32, -1, -1);
  }

  (*(v44 + 8))(v15, v45);
  if (*(&v54 + 1))
  {
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    return LACUIRatchetViewModel.handleButtonTap(_:)(&v49);
  }

  else
  {
    v34 = v46;
    LACUIRatchetViewModel.uiConfiguration.getter(v12);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
    outlined init with copy of LACUIRatchetViewModel.State(v12, v10);
    v36 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v34;
    outlined init with take of LACUIRatchetViewModel.State(v10, v37 + v36, type metadata accessor for LACUIRatchetViewModel.State);
    v38 = v34;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.set(state:), v37);

    return outlined destroy of LACUIRatchetViewModel.State(v12, type metadata accessor for LACUIRatchetViewModel.State);
  }
}

uint64_t LACUIRatchetViewModel.handleButtonTap(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = *(a1 + 16);
  v48 = *a1;
  v49 = v19;
  v20 = *(a1 + 48);
  v50 = *(a1 + 32);
  v51 = v20;
  v52 = *(a1 + 64);
  v21 = v48;

  LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)(v21);
  if (LOBYTE(v46[0]) <= 4u)
  {
    if (LOBYTE(v46[0]) > 1u)
    {
      if (LOBYTE(v46[0]) - 2 < 2)
      {
        v22 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
        swift_beginAccess();
        outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v1 + v22, v18, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        v23 = v43;
        if ((*(v43 + 48))(v18, 1, v8))
        {
          return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v18, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        }

        (*(v23 + 16))(v11, v18, v8);
        outlined destroy of LACUIAuthCountdownDelayConfiguration?(v18, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
        v44[0] = 0;
        CheckedContinuation.resume(returning:)();
        return (*(v23 + 8))(v11, v8);
      }

LABEL_14:
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();

      LACUIRatchetViewModel.confirmBiometry(completion:)(partial apply for closure #1 in LACUIRatchetViewModel.handleButtonTap(_:), v26);
    }

    if (!LOBYTE(v46[0]))
    {
      goto LABEL_14;
    }

    LACUIRatchetViewModel.learnMoreSubject.getter();
    goto LABEL_21;
  }

  if (LOBYTE(v46[0]) > 6u)
  {
    if (LOBYTE(v46[0]) == 7)
    {
      LACUIRatchetViewModel.tapToRadarSubject.getter();
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
      lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
      Subject<>.send()();
    }

    v29 = v4;
    v30 = v1;
    static LACLog.dtoUI.getter();
    outlined init with copy of LACUIAuthButtonConfiguration(&v48, v46);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    outlined destroy of LACUIAuthButtonConfiguration(&v48);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      v46[2] = v50;
      v46[3] = v51;
      v47 = v52;
      v46[0] = v48;
      v46[1] = v49;
      outlined init with copy of LACUIAuthButtonConfiguration(&v48, v44);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v45);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_256063000, v31, v32, "Unhandled action from button: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x259C59AD0](v34, -1, -1);
      MEMORY[0x259C59AD0](v33, -1, -1);
    }

    (*(v29 + 8))(v7, v3);
    return (*((*MEMORY[0x277D85000] & *v30) + 0x258))(0x206E776F6E6B6E55, 0xEE006E6F69746361, 0);
  }

  else if (LOBYTE(v46[0]) == 5)
  {
    v25 = *((*MEMORY[0x277D85000] & *v1) + 0x258);

    return v25(0x6E61632072657355, 0xEB000000006C6563, 1);
  }

  else
  {
    v27 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v1 + v27, v16, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v28 = v43;
    if ((*(v43 + 48))(v16, 1, v8))
    {
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v16, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    else
    {
      (*(v28 + 16))(v11, v16, v8);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v16, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
      v38 = objc_opt_self();
      v39 = *MEMORY[0x277D23EA8];
      v40 = MEMORY[0x259C58D00](0xD000000000000018, 0x80000002560BE8D0);
      v41 = [v38 errorWithCode:v39 debugDescription:v40];

      v44[0] = v41;
      CheckedContinuation.resume(throwing:)();
      return (*(v28 + 8))(v11, v8);
    }
  }
}

uint64_t closure #1 in LACUIRatchetViewModel.handleButtonTap(_:)(void *a1, int a2, uint64_t a3)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Logger();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.dtoUI.getter();

  v50 = a2;
  v20 = a2 & 1;
  outlined copy of Result<[AnyHashable : Any], Error>(a1, v20);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  outlined consume of Result<[AnyHashable : Any], Error>(a1, v20);
  v46 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v51 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v44 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v25 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v25 + 4) = Strong;
    *v26 = Strong;
    *(v25 + 12) = 2082;
    v53[3] = a1;
    v54 = v20;
    outlined copy of Result<[AnyHashable : Any], Error>(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySDys11AnyHashableVypGs5Error_pGMd, &_ss6ResultOySDys11AnyHashableVypGs5Error_pGMR);
    v28 = String.init<A>(describing:)();
    v30 = v13;
    v31 = v15;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v53);

    *(v25 + 14) = v32;
    v15 = v31;
    v13 = v30;
    _os_log_impl(&dword_256063000, v21, v46, "%{public}@ confirmed biometry with result: %{public}s", v25, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v26, -1, -1);
    v33 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x259C59AD0](v33, -1, -1);
    v34 = v25;
    v6 = v44;
    MEMORY[0x259C59AD0](v34, -1, -1);
  }

  (*(v48 + 8))(v19, v49);
  if (v50)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v36 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    v37 = result;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v37 + v36, v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);

    if ((*(v6 + 48))(v13, 1, v47))
    {
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    v40 = v45;
    v41 = v47;
    (*(v6 + 16))(v45, v13, v47);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v52 = a1;
    v42 = a1;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v38 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    v39 = result;
    swift_beginAccess();
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v39 + v38, v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    outlined copy of Result<[AnyHashable : Any], Error>(a1, 0);

    if ((*(v6 + 48))(v15, 1, v47))
    {
      outlined consume of Result<[AnyHashable : Any], Error>(a1, 0);
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    }

    v40 = v45;
    v41 = v47;
    (*(v6 + 16))(v45, v15, v47);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v15, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    v52 = a1;
    CheckedContinuation.resume(returning:)();
  }

  return (*(v6 + 8))(v40, v41);
}

uint64_t LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:), v10);
  v13 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks;
  swift_beginAccess();
  v14 = *&v11[v13];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v11[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *&v11[v13] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v14[v17 + 4] = v12;
  *&v11[v13] = v14;
  swift_endAccess();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t LACUIRatchetViewModel.arm(with:)(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](LACUIRatchetViewModel.arm(with:), 0, 0);
}

uint64_t LACUIRatchetViewModel.arm(with:)()
{
  v17 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  *(v0 + 144) = *MEMORY[0x277D23F90];

  AnyHashable.init<A>(_:)();
  v4 = MEMORY[0x277D839B0];
  *(v0 + 168) = MEMORY[0x277D839B0];
  *(v0 + 144) = 1;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), v0 + 80, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v0 + 80);
  *(v0 + 144) = *MEMORY[0x277D23F98];
  AnyHashable.init<A>(_:)();
  *(v0 + 168) = v4;
  *(v0 + 144) = 1;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  v6 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), v0 + 80, v6);
  outlined destroy of AnyHashable(v0 + 80);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v7, &v16);

  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v8);
  *(v0 + 224) = v9;
  v10 = LACUIRatchetViewModel.ratchetIdentifier.getter();
  v11 = MEMORY[0x259C58D00](v10);
  *(v0 + 232) = v11;

  v12 = LACUIRatchetViewModel.context.getter();
  *(v0 + 240) = v12;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 248) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = LACUIRatchetViewModel.arm(with:);
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDys11AnyHashableVypGs5Error_pGMd, &_sSccySDys11AnyHashableVypGs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [AnyHashable : Any];
  *(v0 + 104) = &block_descriptor_1;
  *(v0 + 112) = v14;
  [v9 performArmRequestWithIdentifier:v11 context:v12 options:isa completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = LACUIRatchetViewModel.arm(with:);
  }

  else
  {
    v3 = LACUIRatchetViewModel.arm(with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 144);

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();
  v6 = v0[1];
  v7 = v0[32];

  return v6();
}

uint64_t LACUIRatchetViewModel.showUI(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v2[17] = *(v9 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.showUI(for:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 232) = a1;
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = LACUIRatchetViewModel.showUI(for:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t LACUIRatchetViewModel.showUI(for:)()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  v3 = [*(v0 + 64) ratchetState];
  *(v0 + 184) = v3;
  static LACLog.dtoUI.getter();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v5;
    *v10 = v8;
    v10[1] = v5;
    v11 = v8;
    v12 = v5;
    _os_log_impl(&dword_256063000, v6, v7, "%{public}@ showing UI for state: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v10, -1, -1);
    MEMORY[0x259C59AD0](v9, -1, -1);
  }

  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v15 = *(v0 + 160);
  v16 = *(v0 + 64);

  (*(v14 + 8))(v13, v15);
  v17 = [v16 gracePeriodState];
  LOBYTE(v13) = [v17 isActive];

  if (v13)
  {
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v71 = *(v0 + 128);
    v73 = *(v0 + 136);
    v68 = *(v0 + 120);
    v69 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    static Date.now.getter();
    v26 = [v25 gracePeriodState];
    [v26 time];

    Date.addingTimeInterval(_:)();
    (*(v22 + 8))(v20, v23);
    (*(v22 + 56))(v21, 0, 1, v23);
    v27 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v21, v24 + v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v18);
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
    outlined init with copy of LACUIRatchetViewModel.State(v18, v19);
    v29 = (*(v71 + 80) + 40) & ~*(v71 + 80);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v24;
    outlined init with take of LACUIRatchetViewModel.State(v19, v30 + v29, type metadata accessor for LACUIRatchetViewModel.State);
    v31 = v24;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v69, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v30);

    outlined destroy of LACUIRatchetViewModel.State(v18, type metadata accessor for LACUIRatchetViewModel.State);
    v32 = swift_task_alloc();
    *(v0 + 240) = v32;
    *v32 = v0;
    v33 = LACUIRatchetViewModel.showUI(for:);
LABEL_9:
    v32[1] = v33;
    v59 = *(v0 + 72);

    return LACUIRatchetViewModel.setupContinuationAndWait()();
  }

  v34 = [v5 rawValue];
  if (v34 == 1)
  {
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v72 = *(v0 + 128);
    v74 = *(v0 + 136);
    v48 = *(v0 + 120);
    v70 = *(v0 + 112);
    v49 = *(v0 + 96);
    v50 = *(v0 + 104);
    v52 = *(v0 + 80);
    v51 = *(v0 + 88);
    v53 = *(v0 + 72);
    [v5 duration];
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v51 + 8))(v49, v52);
    (*(v51 + 56))(v50, 0, 1, v52);
    v54 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v50, v53 + v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    LACUIRatchetViewModel.uiConfiguration.getter(v46);
    swift_storeEnumTagMultiPayload();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    outlined init with copy of LACUIRatchetViewModel.State(v46, v47);
    v56 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v53;
    outlined init with take of LACUIRatchetViewModel.State(v47, v57 + v56, type metadata accessor for LACUIRatchetViewModel.State);
    v58 = v53;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v70, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v57);

    outlined destroy of LACUIRatchetViewModel.State(v46, type metadata accessor for LACUIRatchetViewModel.State);
    v32 = swift_task_alloc();
    *(v0 + 216) = v32;
    *v32 = v0;
    v33 = LACUIRatchetViewModel.showUI(for:);
    goto LABEL_9;
  }

  if (!v34)
  {
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 112);
    v40 = *(v0 + 120);
    v41 = *(v0 + 72);
    LACUIRatchetViewModel.uiConfiguration.getter(v35);
    swift_storeEnumTagMultiPayload();
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v39, 1, 1, v42);
    outlined init with copy of LACUIRatchetViewModel.State(v35, v36);
    v43 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v41;
    outlined init with take of LACUIRatchetViewModel.State(v36, v44 + v43, type metadata accessor for LACUIRatchetViewModel.State);
    v45 = v41;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v39, &closure #1 in LACUIRatchetViewModel.set(state:)partial apply, v44);

    outlined destroy of LACUIRatchetViewModel.State(v35, type metadata accessor for LACUIRatchetViewModel.State);
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v33 = LACUIRatchetViewModel.showUI(for:);
    goto LABEL_9;
  }

  v61 = *(v0 + 176);
  v62 = *(v0 + 144);
  v63 = *(v0 + 152);
  v65 = *(v0 + 104);
  v64 = *(v0 + 112);
  v66 = *(v0 + 96);

  v67 = *(v0 + 8);

  return v67(0);
}

{

  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8(v1);
}

{

  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8(v1);
}

{

  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8(v1);
}

{

  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t LACUIRatchetViewModel.showRatchetUI(for:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](LACUIRatchetViewModel.showRatchetUI(for:), 0, 0);
}

uint64_t LACUIRatchetViewModel.showRatchetUI(for:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))();
  [v3 addObserver_];

  v4 = v1;
  v5 = *(v0 + 128);
  *(v0 + 80) = v5;
  v6 = *MEMORY[0x277D23ED0];
  *(v0 + 144) = *MEMORY[0x277D23E78];
  *(v0 + 152) = v6;
  *(v0 + 160) = *MEMORY[0x277D23EB8];
  *(v0 + 168) = v5;
  v7 = v5;
  v8 = v5;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 88);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = _convertErrorToNSError(_:)();

  LOBYTE(v10) = [v13 error:v15 hasCode:v11 subcode:v10];
  if ((v10 & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v16 = *(v0 + 160);
  v17 = [v14 userInfo];
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v18 + 16))
  {

LABEL_21:

    goto LABEL_15;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v18 + 56) + 32 * v21, v0 + 16);

  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
  if (swift_dynamicCast())
  {

    *(v0 + 104) = v5;
    v24 = v5;
    if (swift_dynamicCast())
    {
      v25 = *(v0 + 160);
      v26 = *(v0 + 112);
      *(v0 + 176) = v26;
      v27 = [v26 userInfo];
      v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v28 + 16))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
        v33 = v32;

        if (v33)
        {
          outlined init with copy of Any(*(v28 + 56) + 32 * v31, v0 + 48);

          if (swift_dynamicCast())
          {
            v34 = *(v0 + 120);
            *(v0 + 184) = v34;
            v35 = swift_task_alloc();
            *(v0 + 192) = v35;
            *v35 = v0;
            v35[1] = LACUIRatchetViewModel.showRatchetUI(for:);
            v36 = *(v0 + 136);

            return LACUIRatchetViewModel.showUI(for:)(v34);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

LABEL_25:
    v38 = *(v0 + 168);
    goto LABEL_16;
  }

LABEL_15:
  v38 = v5;
LABEL_16:

  v39 = *(v0 + 8);
  v40 = *(v0 + 168);

  return v39(v40);
}

{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = LACUIRatchetViewModel.showRatchetUI(for:);
  }

  else
  {

    v3 = LACUIRatchetViewModel.showRatchetUI(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2(v3);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  v3 = *(v0 + 200);
  *(v0 + 80) = v3;
  *(v0 + 168) = v3;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 88);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = _convertErrorToNSError(_:)();

  LOBYTE(v7) = [v10 error:v12 hasCode:v8 subcode:v7];
  if ((v7 & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v13 = *(v0 + 160);
  v14 = [v11 userInfo];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v15 + 16))
  {

LABEL_21:

    goto LABEL_15;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_21;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v18, v0 + 16);

  type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for LACDTORatchetStateComposite, 0x277D24040);
  if (swift_dynamicCast())
  {

    *(v0 + 104) = v3;
    v21 = v3;
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 160);
      v23 = *(v0 + 112);
      *(v0 + 176) = v23;
      v24 = [v23 userInfo];
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v25 + 16))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
        v30 = v29;

        if (v30)
        {
          outlined init with copy of Any(*(v25 + 56) + 32 * v28, v0 + 48);

          if (swift_dynamicCast())
          {
            v31 = *(v0 + 120);
            *(v0 + 184) = v31;
            v32 = swift_task_alloc();
            *(v0 + 192) = v32;
            *v32 = v0;
            v32[1] = LACUIRatchetViewModel.showRatchetUI(for:);
            v33 = *(v0 + 136);

            return LACUIRatchetViewModel.showUI(for:)(v31);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

LABEL_25:
    v35 = *(v0 + 168);
    goto LABEL_16;
  }

LABEL_15:
  v35 = v3;
LABEL_16:

  v36 = *(v0 + 8);
  v37 = *(v0 + 168);

  return v36(v37);
}

uint64_t LACUIRatchetViewModel.armIfPossible()()
{
  v1[33] = v0;
  v2 = type metadata accessor for Logger();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.armIfPossible(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 264)) + 0x1A0))();
  *(v0 + 296) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = LACUIRatchetViewModel.armIfPossible();
  v2 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo18LACDTORatchetStateCs5Error_pGMd, &_sSccySo18LACDTORatchetStateCs5Error_pGMR);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LACDTORatchetState?, @unowned NSError?) -> () with result type LACDTORatchetState;
  *(v0 + 208) = &block_descriptor_121;
  *(v0 + 216) = v2;
  [v1 stateWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = LACUIRatchetViewModel.armIfPossible();
  }

  else
  {
    v3 = LACUIRatchetViewModel.armIfPossible();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[33];
  v4 = v0[31];
  v0[39] = v4;

  static LACLog.dtoUI.getter();
  v5 = v3;
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v6;
    *v11 = v9;
    v11[1] = v6;
    v12 = v9;
    v13 = v6;
    _os_log_impl(&dword_256063000, v7, v8, "%{public}@ checking state at the end of evaluation: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v11, -1, -1);
    MEMORY[0x259C59AD0](v10, -1, -1);
  }

  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[34];

  (*(v15 + 8))(v14, v16);
  if ([v6 rawValue] - 2 >= 3)
  {

    v23 = v0[36];

    v24 = v0[1];

    return v24(0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2560BACC0;
    v0[32] = *MEMORY[0x277D23FA0];
    AnyHashable.init<A>(_:)();
    v18 = [v6 rawValue] == 3;
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v18;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    v0[40] = v19;
    swift_setDeallocating();
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    v20 = swift_task_alloc();
    v0[41] = v20;
    *v20 = v0;
    v20[1] = LACUIRatchetViewModel.armIfPossible();
    v21 = v0[33];

    return LACUIRatchetViewModel.arm(with:)(v19);
  }
}

{
  v1 = *(v0 + 344);

  v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3(v1);
}

{
  v1 = v0[37];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[38];
  v4 = v0[36];

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[39];
  v1 = v0[40];

  v3 = v0[42];
  v4 = v0[36];

  v5 = v0[1];

  return v5();
}

uint64_t LACUIRatchetViewModel.armIfPossible()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = LACUIRatchetViewModel.armIfPossible();
  }

  else
  {
    v8 = *(v4 + 320);

    *(v4 + 344) = a1;
    v7 = LACUIRatchetViewModel.armIfPossible();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2560BACC0;
  v0[15] = *MEMORY[0x277D23F58];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  v0[19] = v2;
  swift_setDeallocating();
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);
  v4 = v0[16];

  return LACUIRatchetViewModel.arm(with:)(v2);
}

{
  v1 = *(v0 + 144);
  (*(v0 + 136))(*(v0 + 176), 0);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  v5 = v1;
  v4(v1, 1);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LACDTORatchetState?, @unowned NSError?) -> () with result type LACDTORatchetState(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t closure #1 in LACUIRatchetViewModel.set(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(type metadata accessor for LACUIRatchetViewModel.State(0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.set(state:), 0, 0);
}

uint64_t closure #1 in LACUIRatchetViewModel.set(state:)()
{
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LACUIRatchetViewModel.set(state:), v2, v1);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  outlined init with copy of LACUIRatchetViewModel.State(v6, v2);
  v7 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_state;
  swift_beginAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v5 + v7, v4);
  swift_beginAccess();
  outlined assign with copy of LACUIRatchetViewModel.State(v2, v5 + v7);
  swift_endAccess();
  outlined init with copy of LACUIRatchetViewModel.State(v5 + v7, v3);
  LACUIRatchetViewModel.stateUpdated(from:to:)(v4, v3);
  outlined destroy of LACUIRatchetViewModel.State(v3, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v4, type metadata accessor for LACUIRatchetViewModel.State);
  outlined destroy of LACUIRatchetViewModel.State(v2, type metadata accessor for LACUIRatchetViewModel.State);

  v8 = v0[1];

  return v8();
}

uint64_t LACUIRatchetViewModel.setupContinuationAndWait()()
{
  *(v1 + 72) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](LACUIRatchetViewModel.setupContinuationAndWait(), 0, 0);
}

{
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[11] = v2;
  swift_unknownObjectWeakInit();
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  *v4 = v0;
  v4[1] = LACUIRatchetViewModel.setupContinuationAndWait();

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD00000000000001ALL, 0x80000002560BE940, partial apply for closure #1 in LACUIRatchetViewModel.setupContinuationAndWait(), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = LACUIRatchetViewModel.setupContinuationAndWait();
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = LACUIRatchetViewModel.setupContinuationAndWait();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v1, v2 + v5, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  swift_endAccess();

  v6 = v0[1];

  return v6(v3);
}

{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  swift_beginAccess();
  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v3, v4 + v6, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  swift_endAccess();
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

void closure #1 in LACUIRatchetViewModel.setupContinuationAndWait()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
    swift_beginAccess();
    outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v5, v7 + v10, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMd, &_sScCySDys11AnyHashableVypGSgs5Error_pGSgMR);
    swift_endAccess();
  }
}

uint64_t LACUIRatchetViewModel.beginDelayText.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v12[0] = *MEMORY[0x277D23F38];
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v12);
    outlined destroy of AnyHashable(v11);
    if (swift_dynamicCast())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v11);
    v5 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled) == 1)
  {
    v10 = *MEMORY[0x277D23F50];
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v7 & 1) != 0))
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v6, v12);
      outlined destroy of AnyHashable(v11);
      if (swift_dynamicCast())
      {
        v5 = v10;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v11);
    }
  }

  return v5;
}

uint64_t LACUIRatchetViewModel.beginDelayLocationWarning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v7[0] = *MEMORY[0x277D23F48];
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v7);
    outlined destroy of AnyHashable(v6);
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v6);
    return 0;
  }

  return result;
}

uint64_t LACUIRatchetViewModel.beginDelayTitle.getter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options);
  v8[0] = *a1;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI19LACUIAngelPresenterC11HostedScene33_9F3F8244F22CF33ABB39A642650B213BLLVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI19LACUIAngelPresenterC11HostedScene33_9F3F8244F22CF33ABB39A642650B213BLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10Foundation12URLQueryItemVGGMd, &_ss23_ContiguousArrayStorageCySay10Foundation12URLQueryItemVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12URLQueryItemVGMd, &_sSay10Foundation12URLQueryItemVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontGMd, &_ss23_ContiguousArrayStorageCySo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontMd, &_sSo23LACUserInterfaceRequestC7request_So16LACXPCConnection_p10connectiontMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation13URLComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation13URLComponentsVGMR);
  v10 = *(type metadata accessor for URLComponents() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for URLComponents() - 8);
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        outlined init with take of Any((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v37);
        outlined init with copy of Any(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = outlined init with take of Any(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v22);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v18);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = outlined init with take of Any(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v18, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static LACUIRatchetViewModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for LACUIRatchetViewModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMd, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMR);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v57 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  v30 = &v23[*(v20 + 56)];
  outlined init with copy of LACUIRatchetViewModel.State(a1, v23);
  outlined init with copy of LACUIRatchetViewModel.State(v58, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of LACUIRatchetViewModel.State(v23, v10);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = v23;
          v13 = v10;
          goto LABEL_30;
        }

        outlined destroy of LACUIRatchetViewModel.State(v10, type metadata accessor for LACUIAuthCountdownConfiguration);
      }

      else
      {
        outlined init with copy of LACUIRatchetViewModel.State(v23, v16);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v32 = v23;
          v13 = v16;
          goto LABEL_30;
        }

        outlined destroy of LACUIRatchetViewModel.State(v16, type metadata accessor for LACUIAuthCountdownConfiguration);
      }
    }

    else
    {
      outlined init with copy of LACUIRatchetViewModel.State(v23, v18);
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = v23;
        v13 = v18;
        goto LABEL_30;
      }

      outlined destroy of LACUIRatchetViewModel.State(v18, type metadata accessor for LACUIAuthCountdownConfiguration);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of LACUIRatchetViewModel.State(v23, v13);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v32 = v23;
LABEL_30:
        outlined init with take of LACUIRatchetViewModel.State(v13, v29, type metadata accessor for LACUIAuthCountdownConfiguration);
        v42 = v57;
        outlined init with take of LACUIRatchetViewModel.State(v30, v57, type metadata accessor for LACUIAuthCountdownConfiguration);
        outlined destroy of LACUIRatchetViewModel.State(v32, type metadata accessor for LACUIRatchetViewModel.State);
        v41 = specialized static LACUIAuthCountdownConfiguration.== infix(_:_:)(v29, v42);
        outlined destroy of LACUIRatchetViewModel.State(v42, type metadata accessor for LACUIAuthCountdownConfiguration);
        v43 = v29;
        v44 = type metadata accessor for LACUIAuthCountdownConfiguration;
LABEL_66:
        outlined destroy of LACUIRatchetViewModel.State(v43, v44);
        return v41 & 1;
      }

      outlined destroy of LACUIRatchetViewModel.State(v13, type metadata accessor for LACUIAuthCountdownConfiguration);
      goto LABEL_28;
    }

    outlined init with copy of LACUIRatchetViewModel.State(v23, v7);
    v34 = *v7;
    v33 = v7[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v35 = v23;
      v36 = *v30;
      v37 = *(v30 + 1);
      if (v34)
      {
        v38 = Dictionary.description.getter();
        v40 = v39;

        if (!v36)
        {
          if (!v40)
          {
LABEL_45:
            if (v33)
            {
              v60 = v33;
              v50 = v33;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
              type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
              v51 = swift_dynamicCast();
              v52 = v59;
              if (v51)
              {
                v53 = v59;
              }

              else
              {
                v53 = 0;
              }

              if (!v37)
              {
                if (v53)
                {
                  v37 = 0;
LABEL_60:

                  goto LABEL_64;
                }

                v54 = 0;
                goto LABEL_62;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              if (!v37)
              {
                goto LABEL_62;
              }
            }

            v60 = v37;
            v55 = v37;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            type metadata accessor for LACDTORatchetStateComposite(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
            if (swift_dynamicCast())
            {
              v54 = v59;
            }

            else
            {
              v54 = 0;
            }

            if (v53)
            {
              if (v54)
              {
                v41 = static NSObject.== infix(_:_:)();

LABEL_65:
                v43 = v35;
                v44 = type metadata accessor for LACUIRatchetViewModel.State;
                goto LABEL_66;
              }

              v52 = v53;
              goto LABEL_60;
            }

LABEL_62:

            if (!v54)
            {
              v41 = 1;
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (!v36)
        {
          goto LABEL_45;
        }

        v40 = 0;
        v38 = 0;
      }

      v45 = Dictionary.description.getter();
      v47 = v46;

      if (v40)
      {
        if (v47)
        {
          if (v38 == v45 && v40 == v47)
          {

            goto LABEL_45;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            goto LABEL_45;
          }

LABEL_64:
          v41 = 0;
          goto LABEL_65;
        }
      }

      else if (!v47)
      {
        goto LABEL_45;
      }

LABEL_43:

      goto LABEL_64;
    }

LABEL_28:
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v23, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMd, &_s25LocalAuthenticationCoreUI21LACUIRatchetViewModelC5StateO_AEtMR);
    v41 = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload == 5)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_28;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_28;
  }

  outlined destroy of LACUIRatchetViewModel.State(v23, type metadata accessor for LACUIRatchetViewModel.State);
  v41 = 1;
  return v41 & 1;
}

uint64_t outlined init with copy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized LACUIRatchetViewModel.init(contextProvider:options:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated] = 0;
  type metadata accessor for LACUIRatchetViewModel.State(0);
  swift_storeEnumTagMultiPayload();
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isRunning] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___stateSubject] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___learnMoreSubject] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___tapToRadarSubject] = 0;
  v9 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___ratchetIdentifier];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel____lazy_storage___context] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_tasks] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_uiContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGSgs5Error_pGMd, _sScCySDys11AnyHashableVypGSgs5Error_pGMR);
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_expirationDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  v14(&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_gracePeriodExpirationDate], 1, 1, v13);
  v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isStrictModeEnabled] = 0;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_options] = a2;
  v15 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_configuration];
  *v15 = v6;
  *(v15 + 1) = v7;
  v15[16] = v8;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_contextProvider] = a1;
  v16 = objc_allocWithZone(MEMORY[0x277D24038]);
  swift_unknownObjectRetain();
  v17 = [v16 initWithContextProvider_];
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_ratchetManager] = v17;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for LACUIRatchetViewModel(0);
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t type metadata accessor for LACUIRatchetViewModel.State(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25608BDF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.start()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  specialized LazyMapSequence.Iterator.next()(&v50);
  if (!*(&v51 + 1))
  {
    goto LABEL_25;
  }

  v47 = v50;
  v48 = v51;
  v49 = v52;
  outlined init with take of Any(v53, v46);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v20 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    specialized _NativeDictionary.copy()();
    result = v25;
    v22 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v19)
  {
LABEL_11:
    v23 = result;
    outlined destroy of AnyHashable(&v47);
    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    outlined init with take of Any(v46, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  v26 = v22[6] + 40 * result;
  v27 = v47;
  v28 = v48;
  *(v26 + 32) = v49;
  *v26 = v27;
  *(v26 + 16) = v28;
  result = outlined init with take of Any(v46, (v22[7] + 32 * result));
  v29 = v22[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v17)
  {
    v22[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v50);
    if (*(&v51 + 1))
    {
      v19 = 1;
      do
      {
        v47 = v50;
        v48 = v51;
        v49 = v52;
        outlined init with take of Any(v53, v46);
        v33 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v38 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;
          outlined destroy of AnyHashable(&v47);
          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          outlined init with take of Any(v46, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = v40[6] + 40 * result;
          v42 = v47;
          v43 = v48;
          *(v41 + 32) = v49;
          *v41 = v42;
          *(v41 + 16) = v43;
          result = outlined init with take of Any(v46, (v40[7] + 32 * result));
          v44 = v40[2];
          v17 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v40[2] = v45;
        }

        specialized LazyMapSequence.Iterator.next()(&v50);
      }

      while (*(&v51 + 1));
    }

LABEL_25:
    outlined consume of [AnyHashable : Any].Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

id specialized static LACUIRatchetViewModel.mapError(_:)(void *a1)
{
  v2 = type metadata accessor for CancellationError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 domain];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *MEMORY[0x277D23EB0];
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v25[1] = a1;
        v17 = a1;
        v18 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          (*(v3 + 8))(v6, v2);
          v19 = [objc_opt_self() errorWithCode_];
        }

        else
        {
          v19 = a1;
        }

        v20 = objc_opt_self();
        v21 = *MEMORY[0x277D23E88];
        v22 = _convertErrorToNSError(_:)();
        v23 = [v20 errorWithCode:v21 underlyingError:v22];

        return v23;
      }
    }
  }

  return a1;
}