void CAFUISoundSettingsViewController.focusLockedSlider.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
  v5 = *(v1 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider);
  if (v5)
  {
    v6 = v5;
    SliderView.VerticalSlider.focusLocked.willset(0);
    v6[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;
  }

  if (a1)
  {
    SliderView.VerticalSlider.focusLocked.willset(1);
    *(a1 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked) = 1;
  }

  v7 = *(v2 + v4);
  *(v2 + v4) = a1;
}

unint64_t CAFUISoundSettingsViewController.activePage.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl];
  if (!v4)
  {
    if (v2)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x245D0D9A0](0, v1);
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    __break(1u);
LABEL_26:
    v6 = MEMORY[0x245D0D9A0]();
    goto LABEL_16;
  }

  v0 = v4;
  if (([v0 selectedSegmentIndex] & 0x8000000000000000) != 0)
  {
LABEL_7:

    return 0;
  }

  v5 = [v0 selectedSegmentIndex];
  if (v2)
  {
    if (v5 >= __CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  result = [v0 selectedSegmentIndex];
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v1 + 8 * result + 32);

LABEL_16:

    return v6;
  }

  __break(1u);
  return result;
}

char *CAFUISoundSettingsViewController.__allocating_init(hasKnobSupport:audioSettings:audioLogo:)(char a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(a1, a2, a3);

  return v8;
}

char *CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(char a1, void *a2, void *a3)
{
  v5 = specialized CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(a1, a2, a3);

  return v5;
}

uint64_t closure #2 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v10[0] = *result;
    v10[1] = v1;
    v11 = *(result + 80);
    v2 = result;
    outlined init with copy of NotificationModel.Symbol?(result, v9, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
    outlined init with copy of NotificationModel.Symbol?(v10, v9, &_s7SwiftUI14ObservedObjectVy10CAFCombine30CAFSoundDistributionObservableCGMd);
    v3 = CAFSoundDistributionObservable.observed.getter();
    outlined destroy of RequestTemporaryContentModel?(v10, &_s7SwiftUI14ObservedObjectVy10CAFCombine30CAFSoundDistributionObservableCGMd);
    CAFSoundDistribution.reset()();

    v9[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
    State.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    __asm { FMOV            V0.2D, #0.5 }

    v9[0] = _Q0;
    static Published.subscript.setter();
    return outlined destroy of RequestTemporaryContentModel?(v2, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
  }

  return result;
}

void closure #4 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(__int128 *a1)
{
  v8 = *a1;
  v1 = *(&v8 + 1);
  v2 = CAFSoundDistributionObservable.observed.getter();
  outlined destroy of RequestTemporaryContentModel?(&v8, &_s7SwiftUI14ObservedObjectVy10CAFCombine30CAFSoundDistributionObservableCGMd);
  CAFSoundDistribution.reset()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
  State.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #0.5 }

  static Published.subscript.setter();
  CAFAudioSettings.resetEqualizers()();
}

void closure #6 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(void *a1)
{
  v1 = [a1 equalizers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFEqualizer);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D0D9A0](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 value];
        v9 = [v7 valueRange];
        v10 = CAFInt8Range.centerValue.getter();

        if (v8 != v10)
        {
          v11 = [v7 valueRange];
          v12 = CAFInt8Range.centerValue.getter();

          [v7 setValue_];
        }
      }
    }
  }
}

uint64_t key path getter for CAFObserved<>.observable : CAFEqualizer@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFEqualizer);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFEqualizer and conformance CAFEqualizer, &lazy cache variable for type metadata for CAFEqualizer);
  result = CAFObserved<>.observable.getter();
  *a1 = result;
  return result;
}

void closure #8 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAFUISoundSettingsViewController.updateResetButton()();
  }
}

void closure #10 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAFUISoundSettingsViewController.removeFocusLockAndClearSliderFocus()();
    v2 = CAFUISoundSettingsViewController.activePage.getter();
    if (v2)
    {
      v3 = *(v2 + 40);
      if (v3)
      {

        v3(v4);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(v3);
      }

      else
      {
      }
    }

    CAFUISoundSettingsViewController.updateResetButton()();
  }
}

void closure #11 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAFUISoundSettingsViewController.removeFocusLockAndClearSliderFocus()();
  }
}

void CAFUISoundSettingsViewController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_cancellables) = v2;
  *(v1 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CAFUISoundSettingsViewController.viewDidLoad()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl];
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v3 = v1;
    v4 = [v2 initWithTarget:v0 action:sel_segmentedControlKnobSelectWithSender_];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
    v5 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setAllowedTouchTypes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_242423BD0;
    *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v8 = Array._bridgeToObjectiveC()().super.isa;

    [v5 setAllowedPressTypes_];

    [v3 addGestureRecognizer_];
    [v3 addTarget:v0 action:sel_segmentedControlChangedWithSender_ forControlEvents:4096];
  }

  CAFUISoundSettingsViewController.updateBarButtons()();
  specialized CAFUISoundSettingsViewController.changePage(index:animated:)(0);
}

void CAFUISoundSettingsViewController.updateBarButtons()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl];
  if (!v1)
  {
    v2 = [v0 navigationItem];
    v4 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages];
    if (v4 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D0D9A0](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v5 = *(v4 + 32);
      }

      v6 = *(v5 + 16);
      v7 = *(v5 + 24);

      v8 = MEMORY[0x245D0D180](v6, v7);

      goto LABEL_11;
    }

    v8 = 0;
LABEL_11:
    [v2 setTitle_];
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v0 navigationItem];
  [v3 setTitle_];

  v8 = [v0 navigationItem];
  [v8 setTitleView_];
LABEL_12:
}

void CAFUISoundSettingsViewController.removeFocusLockAndClearSliderFocus()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
  v3 = *(v0 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider);
  if (v3)
  {
    v4 = v3;
    SliderView.VerticalSlider.focusLocked.willset(0);
    v4[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIFocusSystem);
  v5 = static UIFocusSystem.focusSystem(for:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 focusedItem];

    if (v7)
    {
      type metadata accessor for SliderView.VerticalSlider();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        SliderView.VerticalSlider.focusLocked.willset(0);
        v9[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;
        v10 = *&v9[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider];
        v11 = objc_opt_self();
        v12 = [v11 _carSystemFocusColor];
        [v10 setTintColor_];

        v13 = [v11 clearColor];
        [v9 setBackgroundColor_];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void CAFUISoundSettingsViewController.updateResetButton()()
{
  v1 = CAFUISoundSettingsViewController.activePage.getter();
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {

      v4 = v2(v3);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(v2);
      if (v4)
      {
        v5 = [v0 navigationItem];
        v6 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_audioLogo];
        v16 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_resetButton];
        v17 = v6;
        v18 = MEMORY[0x277D84F90];
        v7 = v6;
        v8 = v16;
        for (i = 0; i != 2; ++i)
        {
          v10 = v15[i + 4];
          if (v10)
          {
            v11 = v10;
            MEMORY[0x245D0D2F0]();
            if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15UIBarButtonItemCSgMd);
        swift_arrayDestroy();
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v5 = [v0 navigationItem];
  v19 = *&v0[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_audioLogo];
  v18 = MEMORY[0x277D84F90];
  v12 = v19;
  if (v19)
  {
    v13 = v12;
    MEMORY[0x245D0D2F0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  outlined destroy of RequestTemporaryContentModel?(&v19, &_sSo15UIBarButtonItemCSgMd);
LABEL_16:
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIBarButtonItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setRightBarButtonItems_];
}

Swift::Void __swiftcall CAFUISoundSettingsViewController.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v12, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
  v6 = *&v2[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
  if (v6)
  {
    v7 = v6;
    v8 = [(objc_class *)in.super.isa nextFocusedItem];
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();

      if (v9 == v7)
      {
        return;
      }

      v10 = *&v2[v5];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v10 = *&v2[v5];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v11 = v10;
    SliderView.VerticalSlider.focusLocked.willset(0);
    v11[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;

    v10 = *&v2[v5];
LABEL_6:
    *&v2[v5] = 0;
  }
}

Swift::Void __swiftcall CAFUISoundSettingsViewController._wheelChanged(with:)(UIEvent_optional with)
{
  if (!with.value.super.isa)
  {
    __break(1u);
    return;
  }

  isa = with.value.super.isa;
  if ([(objc_class *)with.value.super.isa type]== 7)
  {
    if ([(objc_class *)isa subtype]== 200)
    {
      v3 = &v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
      v4 = *&v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
      if (v4)
      {
        v5 = v1;
        v6 = v4;
        SliderView.VerticalSlider.increment()();
        goto LABEL_9;
      }
    }

    else if ([(objc_class *)isa subtype]== 201)
    {
      v3 = &v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
      v7 = *&v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
      if (v7)
      {
        v5 = v1;
        v6 = v7;
        SliderView.VerticalSlider.decrement()();
LABEL_9:

        v1 = v5;
        if (*v3)
        {
          return;
        }
      }
    }
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v8, sel__wheelChangedWithEvent_, isa);
}

void CAFUISoundSettingsViewController.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v17, sel_pressesEnded_withEvent_, isa, a2);

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIFocusSystem);
  v6 = static UIFocusSystem.focusSystem(for:)();
  if (!v6)
  {
LABEL_11:
    v14 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
    v15 = *&v3[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
    if (v15)
    {
      v16 = v15;
      SliderView.VerticalSlider.focusLocked.willset(0);
      v16[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;

      v13 = *&v3[v14];
    }

    else
    {
      v13 = 0;
    }

    *&v3[v14] = 0;
    goto LABEL_15;
  }

  v7 = v6;
  if (![v6 focusedItem])
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for SliderView.VerticalSlider();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
  v11 = *&v3[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
  if (v8 == v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  if (v11)
  {
    v12 = v11;
    SliderView.VerticalSlider.focusLocked.willset(0);
    v12[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;
  }

  SliderView.VerticalSlider.focusLocked.willset(1);
  *(v9 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked) = 1;
  v13 = *&v3[v10];
  *&v3[v10] = v9;

  swift_unknownObjectRelease();
LABEL_15:
}

void CAFUISoundSettingsViewController.pressesCancelled(_:with:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, SEL *a6)
{
  v10 = v6;
  type metadata accessor for OS_os_log(0, a3);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(a5, a3);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v10;
  v16.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v16, *a6, isa, a2);

  v13 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider;
  v14 = *&v10[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider];
  if (v14)
  {
    v15 = v14;
    SliderView.VerticalSlider.focusLocked.willset(0);
    v15[OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked] = 0;

    v14 = *&v10[v13];
  }

  *&v10[v13] = 0;
}

void @objc CAFUISoundSettingsViewController.pressesCancelled(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, unint64_t *a7, SEL *a8)
{
  type metadata accessor for OS_os_log(0, a5);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(a7, a5);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v16.receiver = v14;
  v16.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  objc_msgSendSuper2(&v16, *a8, isa, v13);

  CAFUISoundSettingsViewController.focusLockedSlider.setter(0);
}

id CAFUISoundSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D0D180]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CAFUISoundSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUISoundSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)(char a1, void *a2, void *a3)
{
  v164 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalH0Cs5NeverOGSo9NSRunLoopCGMd);
  v159 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v158 = &v146 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys4Int8Vs5NeverOGSo9NSRunLoopCGMd);
  v156 = *(v8 - 8);
  v157 = v8;
  MEMORY[0x28223BE20](v8);
  v155 = &v146 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = &v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys4Int8VSgs5NeverOGSo9NSRunLoopCGMd);
  v147 = *(v12 - 8);
  v148 = v12;
  MEMORY[0x28223BE20](v12);
  v146 = &v146 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVys4Int8Vs5NeverOGGMd);
  v150 = *(v14 - 8);
  v151 = v14;
  MEMORY[0x28223BE20](v14);
  v149 = &v146 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC9MergeManyVy_AA12AnyPublisherVys4Int8Vs5NeverOGGGMd);
  v153 = *(v16 - 8);
  v154 = v16;
  MEMORY[0x28223BE20](v16);
  v152 = &v146 - v17;
  swift_unknownObjectWeakInit();
  v160 = v6;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *&v3[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_cancellables] = v18;
  *&v3[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_focusLockedSlider] = 0;
  swift_unknownObjectWeakAssign();
  v169 = v3;
  v3[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_hasKnobSupport] = a1 & 1;
  v199 = MEMORY[0x277D84F90];
  v19 = [a2 soundDistribution];
  v168 = v19;
  v165 = a2;
  if (v19)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSoundDistribution);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSoundDistribution and conformance CAFSoundDistribution, &lazy cache variable for type metadata for CAFSoundDistribution);
    v20 = v19;
    v21 = CAFObserved<>.observable.getter();

    v170 = v21;
    CAFUIBalanceFadeView.init(soundDistributionObservable:showKnobControlButtons:)(v170, &v172);
    v180 = v174;
    v181 = v175;
    v182 = v176;
    v183 = v177;
    v190 = v174;
    v191 = v175;
    v192 = v176;
    v193 = v177;
    v178 = v172;
    v179 = v173;
    v188 = v172;
    v189 = v173;
    v219 = v176;
    v220 = v177;
    v217 = v174;
    v218 = v175;
    v215 = v172;
    v216 = v173;
    v22 = v20;
    v23 = MEMORY[0x245D0D180](0xD000000000000015, 0x80000002424297C0);
    v24 = CAFUILocalizedStringForKey(v23);

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v174 = v217;
    v175 = v218;
    v176 = v219;
    v177 = v220;
    v172 = v215;
    v173 = v216;
    v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy5CAFUI20CAFUIBalanceFadeViewVSgGMd));
    outlined init with copy of CAFUIBalanceFadeView(&v178, &v200);
    v29 = UIHostingController.init(rootView:)();
    v30 = swift_allocObject();
    *(v30 + 16) = v22;
    v31 = swift_allocObject();
    v32 = v218;
    v31[3] = v217;
    v31[4] = v32;
    v33 = v220;
    v31[5] = v219;
    v31[6] = v33;
    v34 = v216;
    v31[1] = v215;
    v31[2] = v34;
    type metadata accessor for SoundSettingPage();
    v19 = swift_allocObject();
    v19[2] = v25;
    v19[3] = v27;
    v19[7] = partial apply for closure #1 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
    v19[8] = v30;
    v19[4] = v29;
    v19[5] = partial apply for closure #2 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
    v19[6] = v31;
    v35 = v22;
    outlined init with copy of CAFUIBalanceFadeView(&v178, &v172);

    result = [v29 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_92;
    }

    v37 = result;
    v38 = [objc_opt_self() clearColor];
    [v37 setBackgroundColor_];

    v202 = v190;
    v203 = v191;
    v204 = v192;
    v205 = v193;
    v200 = v188;
    v201 = v189;
    a2 = v165;
  }

  else
  {
    v170 = 0;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
  }

  v39 = &selRef_systemImageNamed_withConfiguration_;
  v40 = [a2 equalizers];
  v163 = v19;
  if (!v40)
  {
LABEL_27:
    if (!v19)
    {
      v162 = 0;
      v82 = MEMORY[0x277D84F90];
      v60 = v169;
      goto LABEL_33;
    }

    MEMORY[0x245D0D2F0](v83);
    v60 = v169;
    if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v162 = 0;
    goto LABEL_31;
  }

  v41 = v40;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFEqualizer);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v42 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_10:
  specialized CAFUIEqualizerGroup.init(equalizers:)(v42, &v206);
  v43 = *(&v200 + 1);
  v162 = v207;
  if (*(&v200 + 1))
  {
    v44 = v200;
    v212 = v203;
    v213 = v204;
    v214 = v205;
    v210 = v201;
    v211 = v202;
    if (*(*(&v206 + 1) + 16) <= 3uLL)
    {
      v191 = v203;
      v192 = v204;
      v189 = v201;
      v190 = v202;
      v193 = v205;
      v194 = v206;
      v195 = v207;
      v196 = v208;
      v197 = v209;
      v188 = v200;
      outlined init with copy of NotificationModel.Symbol?(&v200, &v178, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
      outlined init with copy of NotificationModel.Symbol?(&v200, &v178, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);

      outlined init with copy of CAFUIEqualizerGroup(&v206, &v178);
      v62 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE00444E554F535FLL);
      v63 = CAFUILocalizedStringForKey(v62);

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v184 = v194;
      v185 = v195;
      v186 = v196;
      v187 = v197;
      v180 = v190;
      v181 = v191;
      v182 = v192;
      v183 = v193;
      v178 = v188;
      v179 = v189;
      v67 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy5CAFUI14CAFUISoundViewVGMd));
      outlined init with copy of CAFUISoundView(&v188, &v172);
      v68 = UIHostingController.init(rootView:)();
      v69 = swift_allocObject();
      v70 = v168;
      *(v69 + 16) = a2;
      *(v69 + 24) = v70;
      v71 = a2;
      v72 = swift_allocObject();
      *(v72 + 16) = v44;
      *(v72 + 24) = v43;
      v73 = v213;
      *(v72 + 64) = v212;
      *(v72 + 80) = v73;
      *(v72 + 96) = v214;
      v74 = v211;
      *(v72 + 32) = v210;
      *(v72 + 48) = v74;
      *(v72 + 112) = v71;
      type metadata accessor for SoundSettingPage();
      v75 = swift_allocObject();
      v75[2] = v64;
      v75[3] = v66;
      v75[7] = partial apply for closure #3 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
      v75[8] = v69;
      v75[4] = v68;
      v75[5] = partial apply for closure #4 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
      v75[6] = v72;
      v76 = v71;
      v77 = v70;
      outlined init with copy of NotificationModel.Symbol?(&v200, &v178, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
      v78 = v76;

      result = [v68 view];
      if (result)
      {
        v79 = result;
        v80 = [objc_opt_self() clearColor];
        [v79 setBackgroundColor_];

        MEMORY[0x245D0D2F0](v81);
        if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        outlined destroy of CAFUIEqualizerGroup(&v206);

        outlined destroy of RequestTemporaryContentModel?(&v200, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
        outlined destroy of CAFUISoundView(&v188);
        v82 = v199;
        a2 = v165;
        v60 = v169;
        v39 = 0x278D4A000;
        goto LABEL_33;
      }

      goto LABEL_93;
    }
  }

  v45 = MEMORY[0x245D0D180](0xD000000000000012, 0x80000002424297A0);
  v46 = CAFUILocalizedStringForKey(v45);

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v188 = v206;
  v189 = v207;
  v190 = v208;
  *&v191 = v209;
  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy5CAFUI19CAFUIEqualizerGroupVGMd));
  outlined init with copy of CAFUIEqualizerGroup(&v206, &v178);
  v51 = a2;
  v52 = UIHostingController.init(rootView:)();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  type metadata accessor for SoundSettingPage();
  v55 = swift_allocObject();
  v55[2] = v47;
  v55[3] = v49;
  v55[7] = partial apply for closure #5 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
  v55[8] = v53;
  v55[4] = v52;
  v55[5] = partial apply for closure #6 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:);
  v55[6] = v54;
  v56 = v51;

  result = [v52 view];
  if (!result)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    return result;
  }

  v57 = result;
  v58 = [objc_opt_self() clearColor];
  [v57 setBackgroundColor_];

  MEMORY[0x245D0D2F0](v59);
  if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    a2 = v165;
    v60 = v169;
    v39 = 0x278D4A000;
    if (v19)
    {

      MEMORY[0x245D0D2F0](v61);
      if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      outlined destroy of CAFUIEqualizerGroup(&v206);
LABEL_31:
      v82 = v199;
    }

    else
    {
      v82 = v199;

      outlined destroy of CAFUIEqualizerGroup(&v206);
    }

LABEL_33:
    v84 = OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages;
    *(v60 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages) = v82;
    if (v82 >> 62)
    {
      goto LABEL_52;
    }

    v85 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
    v166 = v82;
    if (v85 < 2)
    {
      *(v60 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl) = 0;

      goto LABEL_56;
    }

    v86 = *(v60 + v84);
    if (v86 >> 62)
    {
      break;
    }

    v39 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_54;
    }

LABEL_38:
    *&v178 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39 & ~(v39 >> 63), 0);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v60 = 0;
      v84 = v178;
      a2 = (v86 & 0xC000000000000001);
      KeyPath = v86 & 0xFFFFFFFFFFFFFF8;
      v82 = MEMORY[0x277D837D0];
      while (1)
      {
        if (a2)
        {
          v87 = MEMORY[0x245D0D9A0](v60, v86);
        }

        else
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            v85 = __CocoaSet.count.getter();
            goto LABEL_35;
          }

          if (v60 >= *(KeyPath + 16))
          {
            goto LABEL_51;
          }

          v87 = *(v86 + 8 * v60 + 32);
        }

        v88 = *(v87 + 16);
        v89 = *(v87 + 24);
        *(&v189 + 1) = v82;

        *&v188 = v88;
        *(&v188 + 1) = v89;
        *&v178 = v84;
        v91 = *(v84 + 16);
        v90 = *(v84 + 24);
        if (v91 >= v90 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
          v84 = v178;
        }

        ++v60;
        *(v84 + 16) = v91 + 1;
        outlined init with take of Any(&v188, (v84 + 32 * v91 + 32));
        if (v39 == v60)
        {

          a2 = v165;
          goto LABEL_55;
        }
      }
    }

    __break(1u);
LABEL_90:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v163;
  }

  v39 = __CocoaSet.count.getter();
  if (v39)
  {
    goto LABEL_38;
  }

LABEL_54:

LABEL_55:
  v92 = objc_allocWithZone(type metadata accessor for CAFUISegmentedControl());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v94 = [v92 initWithItems_];

  v95 = objc_opt_self();
  v96 = v94;
  v97 = [v95 secondarySystemFillColor];
  [v96 setSelectedSegmentTintColor_];

  v98 = v96;
  v99 = MEMORY[0x245D0D180](0xD00000000000001DLL, 0x8000000242429780);
  [v98 setAccessibilityIdentifier_];

  v60 = v169;
  *&v169[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl] = v98;
  v39 = &selRef_systemImageNamed_withConfiguration_;
LABEL_56:
  v100 = MEMORY[0x245D0D180](0x53474E4954544553, 0xEE0054455345525FLL);
  v101 = CAFUILocalizedStringForKey(v100);

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIBarButtonItem);

  v165 = v102;
  v105.value._countAndFlagsBits = v102;
  v161 = v104;
  v105.value._object = v104;
  v221.value.super.isa = 0;
  v221.is_nil = 0;
  v222.value.super.super.isa = 0;
  *(v60 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_resetButton) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v105, v221, v222, v223);
  v106 = v164;
  *(v60 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_audioLogo) = v164;
  v107 = type metadata accessor for CAFUISoundSettingsViewController();
  v198.receiver = v60;
  v198.super_class = v107;
  v108 = v106;
  v169 = objc_msgSendSuper2(&v198, sel_initWithNibName_bundle_, 0, 0);
  v109 = [a2 *(v39 + 768)];
  if (v109)
  {
    v110 = v109;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFEqualizer);
    v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    KeyPath = swift_getKeyPath();
    *&v188 = MEMORY[0x277D84F90];
    if (v111 >> 62)
    {
      goto LABEL_88;
    }

    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:

    if (v112)
    {
      v113 = 0;
      while (1)
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x245D0D9A0](v113, v111);
          v115 = v113 + 1;
          if (__OFADD__(v113, 1))
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v113 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v114 = *(v111 + 8 * v113 + 32);
          v115 = v113 + 1;
          if (__OFADD__(v113, 1))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            v112 = __CocoaSet.count.getter();
            goto LABEL_59;
          }
        }

        *&v178 = v114;
        v116 = v114;
        swift_getAtKeyPath();

        MEMORY[0x245D0D2F0]();
        if (*(v188 + 16) >= *(v188 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v113;
        if (v115 == v112)
        {
          v117 = v188;
          goto LABEL_73;
        }
      }
    }

    v117 = MEMORY[0x277D84F90];
LABEL_73:

    *&v188 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys4Int8Vs5NeverOGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVys4Int8Vs5NeverOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Int8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys4Int8Vs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<Int8, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVys4Int8Vs5NeverOGGMd);
    v119 = v149;
    Publishers.MergeMany.init<A>(_:)();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<Int8, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVys4Int8Vs5NeverOGGMd);
    v120 = v151;
    v121 = v152;
    Publisher<>.removeDuplicates()();
    (*(v150 + 8))(v119, v120);
    swift_allocObject();
    v118 = v169;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.MergeMany<AnyPublisher<Int8, Never>>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC9MergeManyVy_AA12AnyPublisherVys4Int8Vs5NeverOGGGMd);
    v122 = v154;
    Publisher<>.sink(receiveValue:)();

    (*(v153 + 8))(v121, v122);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {

    v118 = v169;
  }

  v123 = &off_278D49000;
  if (v170)
  {
    v124 = v170;
    if (v168)
    {
      v125 = v168;
      v126 = v124;
      if ([v125 hasFade])
      {
        *&v188 = dispatch thunk of CAFSoundDistributionObservable.$fade.getter();
        v127 = [objc_opt_self() mainRunLoop];
        *&v178 = v127;
        v128 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v129 = v167;
        (*(*(v128 - 8) + 56))(v167, 1, 1, v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys4Int8VSgs5NeverOGMd);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
        lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Int8?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys4Int8VSgs5NeverOGMd);
        lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
        v130 = v146;
        v123 = &off_278D49000;
        Publisher.receive<A>(on:options:)();
        outlined destroy of RequestTemporaryContentModel?(v129, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

        swift_allocObject();
        swift_unknownObjectWeakInit();
        lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Int8?, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys4Int8VSgs5NeverOGSo9NSRunLoopCGMd);
        v131 = v148;
        Publisher<>.sink(receiveValue:)();

        (*(v147 + 8))(v130, v131);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }

      else
      {
      }

      v124 = v170;
    }

    else
    {
      v132 = v170;
    }

    v170 = v124;
    *&v188 = dispatch thunk of CAFSoundDistributionObservable.$balance.getter();
    v133 = [objc_opt_self() v123[497]];
    *&v178 = v133;
    v134 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v135 = v167;
    (*(*(v134 - 8) + 56))(v167, 1, 1, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys4Int8Vs5NeverOGMd);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Int8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys4Int8Vs5NeverOGMd);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v136 = v155;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v135, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v118 = v169;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Int8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys4Int8Vs5NeverOGSo9NSRunLoopCGMd);
    v137 = v157;
    Publisher<>.sink(receiveValue:)();

    (*(v156 + 8))(v136, v137);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v138 = *&v118[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_resetButton];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = v138;
  v140 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v139 setPrimaryAction_];

  if (v162)
  {
    *&v188 = v162;
    v141 = [objc_opt_self() mainRunLoop];
    *&v178 = v141;
    v142 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v143 = v167;
    (*(*(v142 - 8) + 56))(v167, 1, 1, v142);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalE0Cs5NeverOGMd);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<SliderView.VerticalSlider, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalE0Cs5NeverOGMd);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v144 = v158;
    v118 = v169;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v143, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<PassthroughSubject<SliderView.VerticalSlider, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalH0Cs5NeverOGSo9NSRunLoopCGMd);
    v145 = v160;
    Publisher<>.sink(receiveValue:)();

    (*(v159 + 8))(v144, v145);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    outlined destroy of RequestTemporaryContentModel?(&v200, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
  }

  else
  {

    outlined destroy of RequestTemporaryContentModel?(&v200, &_s5CAFUI20CAFUIBalanceFadeViewVSgMd);
  }

  return v118;
}

void specialized CAFUISoundSettingsViewController.changePage(index:animated:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages];
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter() <= a1)
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    return;
  }

  v4 = [v1 view];
  if (!v4)
  {
    goto LABEL_42;
  }

  v5 = v4;
  v6 = [v4 subviews];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    goto LABEL_39;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x245D0D9A0](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 removeFromSuperview];
  }

LABEL_15:

  v12 = v3 + 8 * a1;
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v13 = *(v12 + 32);

      goto LABEL_19;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v13 = MEMORY[0x245D0D9A0](a1, v3);
LABEL_19:
  v48 = *(v13 + 32);

  v14 = [v48 view];
  if (v14)
  {
    v15 = v14;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = [v1 view];
    if (!v16)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = v16;
    [v16 addSubview_];

    if ((v3 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x245D0D9A0](a1, v3);
      goto LABEL_26;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v18 = *(v12 + 32);

LABEL_26:
        v19 = *(v18 + 32);

        [v1 addChildViewController_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_242423B90;
        v21 = [v15 topAnchor];
        v22 = [v1 view];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 safeAreaLayoutGuide];

          v25 = [v24 topAnchor];
          v26 = [v21 constraintEqualToAnchor_];

          *(v20 + 32) = v26;
          v27 = [v15 bottomAnchor];
          v28 = [v1 view];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 safeAreaLayoutGuide];

            v31 = [v30 bottomAnchor];
            v32 = [v27 constraintEqualToAnchor_];

            *(v20 + 40) = v32;
            v33 = [v15 leadingAnchor];
            v34 = [v1 view];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 safeAreaLayoutGuide];

              v37 = [v36 leadingAnchor];
              v38 = [v33 constraintEqualToAnchor_];

              *(v20 + 48) = v38;
              v39 = [v15 trailingAnchor];
              v40 = [v1 view];
              if (v40)
              {
                v41 = v40;
                v42 = objc_opt_self();
                v43 = [v41 safeAreaLayoutGuide];

                v44 = [v43 trailingAnchor];
                v45 = [v39 constraintEqualToAnchor_];

                *(v20 + 56) = v45;
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v42 activateConstraints_];

                v47 = *&v1[OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl];
                if (v47)
                {
                  [v47 setSelectedSegmentIndex_];
                }

                CAFUISoundSettingsViewController.updateResetButton()();

                goto LABEL_33;
              }

LABEL_47:
              __break(1u);
              return;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_33:
}

uint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_os_log(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized CAFUISoundSettingsViewController.segmentedControlKnobSelect(sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_segmentedControl);
  if (!v1)
  {
    return;
  }

  v7 = v1;
  if (([v7 selectedSegmentIndex] & 0x8000000000000000) == 0)
  {
    v2 = [v7 selectedSegmentIndex];
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC5CAFUI32CAFUISoundSettingsViewController_pages);
      if (!(v4 >> 62))
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        if (v3 >= v5)
        {
          v6 = 0;
        }

        else
        {
          v6 = v3;
        }

        specialized CAFUISoundSettingsViewController.changePage(index:animated:)(v6);
        goto LABEL_10;
      }
    }

    v5 = __CocoaSet.count.getter();
    goto LABEL_6;
  }

LABEL_10:

  MEMORY[0x2821F9730]();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242372014()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423720A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFEqualizer);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFEqualizer and conformance CAFEqualizer, &lazy cache variable for type metadata for CAFEqualizer);
  result = CAFObserved<>.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_242372138@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CAFEqualizerObservable.$value.getter();
  *a1 = result;
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2423721EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242372304()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #3 in CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)()
{
  v1 = *(v0 + 24);
  if (CAFAudioSettings.equalizersResettable.getter())
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  CAFSoundDistribution.resettable.getter();
  return v3 & 1;
}

uint64_t sub_242372390()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2423724DC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

id CAFUIHeaderFooterView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x245D0D180]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

id CAFUIHeaderFooterView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x245D0D180]();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for CAFUIHeaderFooterView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithReuseIdentifier_, v3);

  return v4;
}

id CAFUIHeaderFooterView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAFUIHeaderFooterView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t CAFUIFooterView.title.didset()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x245D0D420](v2);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v13, 0);
  v8 = [objc_opt_self() _carSystemSecondaryColor];
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v9(v13, 0);

  UIListContentConfiguration.text.setter();
  v13[3] = v0;
  v13[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v1 + 16))(boxed_opaque_existential_1, v4, v0);
  MEMORY[0x245D0D410](v13);
  return (*(v1 + 8))(v4, v0);
}

id @objc CAFUIHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = &v7[*a4];
    *v9 = 0;
    *(v9 + 1) = 0;
    v10 = MEMORY[0x245D0D180](v8);
  }

  else
  {
    v10 = 0;
    v11 = (a1 + *a4);
    *v11 = 0;
    v11[1] = 0;
  }

  v14.receiver = v7;
  v14.super_class = a5(a1);
  v12 = objc_msgSendSuper2(&v14, sel_initWithReuseIdentifier_, v10);

  return v12;
}

id @objc CAFUIHeaderView.init(coder:)(char *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v6 = &a1[*a4];
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = a1;
  v10.super_class = a5();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, v7);

  if (v8)
  {
  }

  return v8;
}

id CAFUITableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = MEMORY[0x245D0D180](a2, a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CAFUITableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall CAFUITableCell.prepareForReuse()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUITableCell();
  objc_msgSendSuper2(&v2, sel_prepareForReuse);
  [v0 setSelectionStyle_];
  [v0 setAccessoryType_];
  v1 = [v0 accessoryView];
  [v1 removeFromSuperview];

  [v0 setAccessoryView_];
}

uint64_t CAFUITableCell.updateConfiguration(using:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28[-1] - v4;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28[-1] - v11;
  v13 = [v1 accessoryView];
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = UICellConfigurationState.isHighlighted.getter();
      v18 = objc_opt_self();
      v19 = &selRef__carSystemFocusLabelColor;
      if ((v17 & 1) == 0)
      {
        v19 = &selRef__carSystemFocusColor;
      }

      v20 = [v18 *v19];
      [v16 setTintColor_];

      v14 = v20;
    }
  }

  MEMORY[0x245D0D4D0](v28);
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    v21 = swift_dynamicCast();
    (*(v7 + 56))(v5, v21 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v12, v5, v6);
      v22 = type metadata accessor for UICellConfigurationState();
      v29 = v22;
      v30 = MEMORY[0x277D74BA8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a1, v22);
      UIListContentConfiguration.updated(for:)();
      __swift_destroy_boxed_opaque_existential_0(v28);
      v29 = v6;
      v30 = MEMORY[0x277D74C30];
      v24 = __swift_allocate_boxed_opaque_existential_1(v28);
      specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v10, v24);
      v25 = *(v7 + 8);
      v25(v10, v6);
      MEMORY[0x245D0D4E0](v28);
      return (v25)(v12, v6);
    }
  }

  else
  {
    outlined destroy of RequestTemporaryContentModel?(v28, &_s5UIKit22UIContentConfiguration_pSgMd);
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  return outlined destroy of RequestTemporaryContentModel?(v5, &_s5UIKit26UIListContentConfigurationVSgMd);
}

id specialized CAFUICellProtocol.defaultPrimaryTextColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x60))())
  {
    if (((*((*v1 & *v0) + 0x58))() & 1) != 0 && (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, sel_isHighlighted)))
    {
      v2 = &selRef__carSystemFocusLabelColor;
    }

    else
    {
      v2 = &selRef__carSystemPrimaryColor;
    }
  }

  else
  {
    v2 = &selRef_systemGrayColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xD0))())
  {
    if (((*((*v1 & *v0) + 0xC8))() & 1) != 0 && (([v0 isSelected] & 1) != 0 || objc_msgSend(v0, sel_isHighlighted)))
    {
      v2 = &selRef__carSystemFocusLabelColor;
    }

    else
    {
      v2 = &selRef__carSystemPrimaryColor;
    }
  }

  else
  {
    v2 = &selRef_systemGrayColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

Swift::Void __swiftcall CAFUITableCell.setHighlighted(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v5 = v4() & _;
  v6 = v4() & animated;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CAFUITableCell();
  objc_msgSendSuper2(&v7, sel_setHighlighted_animated_, v5 & 1, v6 & 1);
}

Swift::Void __swiftcall CAFUITableCell.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = v4() & _;
  v6 = v4() & animated;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CAFUITableCell();
  objc_msgSendSuper2(&v7, sel_setSelected_animated_, v5 & 1, v6 & 1);
}

uint64_t @objc CAFUITableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return a5(v6, v7);
}

id @objc CAFUIFocusRingTableCell.setHighlighted(_:animated:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if ((*(result + OBJC_IVAR____TtC5CAFUI23CAFUIFocusRingTableCell_showsFocusRing) & 1) == 0)
  {
    v8.receiver = result;
    v8.super_class = type metadata accessor for CAFUIFocusRingTableCell();
    return objc_msgSendSuper2(&v8, *a5, a3, a4);
  }

  return result;
}

id CAFUIHeaderFooterView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t one-time initialization function for cellsByIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424210;
  v1 = type metadata accessor for CAFUITableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  v7 = type metadata accessor for CAFUIPickerTableCell();
  v8 = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(inited + 56) = v10;
  *(inited + 64) = v12;
  *(inited + 72) = v7;
  v13 = type metadata accessor for CAFUIFocusRingTableCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 80) = v16;
  *(inited + 88) = v18;
  *(inited + 96) = v13;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CAFUITableCells.cellsByIdentifiers = v19;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424210;
  v1 = type metadata accessor for CAFUIAutomakerSettingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  v7 = type metadata accessor for CAFUIProminentSettingCell();
  v8 = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(inited + 56) = v10;
  *(inited + 64) = v12;
  *(inited + 72) = v7;
  v13 = type metadata accessor for CAFUIListItemCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 80) = v16;
  *(inited + 88) = v18;
  *(inited + 96) = v13;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CAFUICollectionViewCells.cellsByIdentifiers = v19;
  return result;
}

uint64_t one-time initialization function for viewsByIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424220;
  v1 = type metadata accessor for CAFUIHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  v7 = type metadata accessor for CAFUIFooterView();
  v8 = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(v8);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(inited + 56) = v10;
  *(inited + 64) = v12;
  *(inited + 72) = v7;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CAFUITableHeaderFooterViews.viewsByIdentifiers = v13;
  return result;
}

id specialized CAFUITableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x245D0D180]();
  }

  else
  {
    v3 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for CAFUITableCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 1, v3);

  v5 = v4;
  v6 = MEMORY[0x245D0D180](0x6261544955464143, 0xEE006C6C6543656CLL);
  [v5 setAccessibilityIdentifier_];

  result = [objc_opt_self() tableCellPlainBackgroundColor];
  if (result)
  {
    v8 = result;
    [v5 setBackgroundColor_];

    [v5 setSelectionStyle_];
    return v5;
  }

  else
  {
    __break(1u);
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

id specialized CAFUIFocusRingTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC5CAFUI23CAFUIFocusRingTableCell_focusRing] = 0;
  v2[OBJC_IVAR____TtC5CAFUI23CAFUIFocusRingTableCell_showsFocusRing] = 0;
  if (a2)
  {
    v3 = MEMORY[0x245D0D180]();
  }

  else
  {
    v3 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for CAFUIFocusRingTableCell();
  v4 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 1, v3);

  v5 = v4;
  v6 = MEMORY[0x245D0D180](0xD000000000000017, 0x80000002424242C0);
  [v5 setAccessibilityIdentifier_];

  return v5;
}

uint64_t CAFSettingsCategory.name.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = "SETTINGS_CLIMATE";
      goto LABEL_9;
    }

    if (a1 == 3)
    {
      v1 = 0x53474E4954544553;
      v2 = 0xEE004F494455415FLL;
      goto LABEL_10;
    }

LABEL_7:
    v3 = "SETTINGS_GENERAL";
LABEL_9:
    v2 = (v3 - 32) | 0x8000000000000000;
    v1 = 0xD000000000000010;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v1 = 0x53474E4954544553;
  v2 = 0xEE00414944454D5FLL;
LABEL_10:
  v4 = MEMORY[0x245D0D180](v1, v2);
  v5 = CAFUILocalizedStringForKey(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

void CAFSettingsCategory.symbol.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 1u)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    if (a1 != 1)
    {
LABEL_10:
      v6 = MEMORY[0x245D0D180](1918985575, 0xE400000000000000);
      v7 = [objc_opt_self() systemImageNamed_];

      if (v7)
      {
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    v2 = MEMORY[0x245D0D180](0x69662E6F69646172, 0xEA00000000006C6CLL);
    v3 = [objc_opt_self() systemImageNamed_];

    if (v3)
    {
      return;
    }

    __break(1u);
LABEL_6:
    if (v1 == 2)
    {
      goto LABEL_14;
    }

    if (v1 == 3)
    {
      v4 = MEMORY[0x245D0D180](0xD000000000000013, 0x8000000242429970);
      v5 = [objc_opt_self() systemImageNamed_];

      if (v5)
      {
        return;
      }

      __break(1u);
    }

    goto LABEL_10;
  }

LABEL_12:
  v8 = MEMORY[0x245D0D180](1918985575, 0xE400000000000000);
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    return;
  }

  __break(1u);
LABEL_14:
  v10 = MEMORY[0x245D0D180](0x6564616C626E6166, 0xEE006C6C69662E73);
  v11 = [objc_opt_self() systemImageNamed_];

  if (!v11)
  {
    __break(1u);
  }
}

Swift::Int CAFUINumericDisplayKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFUINumericRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a1;
  v6 = type metadata accessor for UIListContentConfiguration();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v87 - v11;
  v12 = type metadata accessor for CAFUITileCellConfiguration(0);
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v100 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v98 = &v87 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v87 - v22;
  v24 = *(a3 + 40);
  v107 = v3;
  v24(a2, a3);
  specialized CAFUINumericRepresentable.settings_asDouble(_:)(v23);
  v26 = v25;
  v101[0] = *(v21 + 8);
  v101[1] = v21 + 8;
  (v101[0])(v23, AssociatedTypeWitness);
  v99 = *(a3 + 64);
  v27 = v99(a2, a3);
  v106 = *(swift_getAssociatedConformanceWitness() + 24);
  CAFRange.minimumValue<A>()();

  specialized CAFUINumericRepresentable.settings_asDouble(_:)(v23);
  v29 = v28;
  v30 = v101[0];
  (v101[0])(v23, AssociatedTypeWitness);
  v31 = v99;
  v32 = v99(a2, a3);
  CAFRange.maximumValue<A>()();

  specialized CAFUINumericRepresentable.settings_asDouble(_:)(v23);
  v34 = v33;
  v30(v23, AssociatedTypeWitness);
  v35 = v31(a2, a3);
  CAFRange.stepValue<A>()();

  specialized CAFUINumericRepresentable.settings_asDouble(_:)(v23);
  v37 = v36;
  v30(v23, AssociatedTypeWitness);
  (*(a3 + 32))(&v125, a2, a3);
  v97 = v125;
  v96 = (*(a3 + 72))(a2, a3);
  v106 = *(a3 + 8);
  v38 = CAFListContentRepresentable.isLimitedUI.getter(a2, v106);
  strcpy(v101, "steeringwheel");
  v39 = 0x676E697265657473;
  HIWORD(v101[1]) = -4864;
  v40 = 0xED00006C65656877;
  if ((v38 & 1) == 0)
  {
    v39 = (*(a3 + 80))(a2, a3);
  }

  v94 = v40;
  v95 = v39;
  if ((CAFListContentRepresentable.isLimitedUI.getter(a2, v106) & 1) == 0)
  {
    v101[0] = (*(a3 + 88))(a2, a3);
    v101[1] = v41;
  }

  v42 = v107;
  v43 = (*(a3 + 104))(a2, a3);
  v44 = (*(a3 + 96))(a2, a3);
  v46 = v45;
  v47 = *(v106 + 40);
  v48 = v47(a2);
  v49 = swift_allocObject();
  v99 = a2;
  v49[2] = a2;
  v49[3] = a3;
  v49[4] = v42;
  *&v117 = v26;
  *(&v117 + 1) = v29;
  *&v118 = v34;
  *(&v118 + 1) = v37;
  LOBYTE(v119) = v97;
  BYTE1(v119) = v96 & 1;
  *(&v119 + 2) = v126;
  WORD3(v119) = v127;
  *(&v119 + 1) = v95;
  *&v120 = v94;
  *(&v120 + 1) = v101[0];
  *&v121 = v101[1];
  *(&v121 + 1) = v43;
  *&v122 = v44;
  *(&v122 + 1) = v46;
  LOBYTE(v123) = v48 & 1;
  *(&v123 + 1) = *(&v125 + 1);
  DWORD1(v123) = HIDWORD(v125);
  *(&v123 + 1) = partial apply for closure #1 in CAFUINumericRepresentable.configureCell(_:);
  v124 = v49;
  v50 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v51 = v105;
  swift_beginAccess();
  v52 = v98;
  outlined init with copy of NotificationModel.Symbol?(v51 + v50, v98, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v53 = v103;
  v54 = (*(v102 + 48))(v52, 1, v103);
  v55 = v104;
  if (!v54)
  {
    v81 = v100;
    outlined init with copy of CAFUITileCellConfiguration(v52, v100);
    swift_unknownObjectRetain();
    outlined destroy of RequestTemporaryContentModel?(v52, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    v82 = *(v81 + v53[8]);
    v83 = v82;
    outlined destroy of CAFUITileCellConfiguration(v81);
    if (!v82)
    {
      goto LABEL_7;
    }

    type metadata accessor for CAFUINumericInputView();
    v84 = swift_dynamicCastClass();
    if (v84)
    {
      v85 = v84;
      if ((*(v106 + 80))(v105, v99))
      {
LABEL_14:

        return outlined destroy of CAFUINumericConfiguration(&v117);
      }

      v86 = v85 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config;
      if (*(v85 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 32) == v119 && *(v86 + 33) == BYTE1(v119) && ((v47)(v99, v106) & 1) == *(v86 + 96))
      {
        v114 = v122;
        v115 = v123;
        v109 = v117;
        v110 = v118;
        v111 = v119;
        v116 = v124;
        v112 = v120;
        v113 = v121;
        CAFUINumericInputView.update(config:)(&v109);
        goto LABEL_14;
      }
    }

    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  outlined destroy of RequestTemporaryContentModel?(v52, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
LABEL_7:
  v101[1] = v50;
  v57 = v90;
  v56 = v91;
  v58 = *(v90 + 56);
  v58(v55, 1, 1, v91);
  if ((v119 & 1) == 0)
  {
    v59 = v89;
    static UIListContentConfiguration.valueCell()();
    v60 = v88;
    specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v59, v88);
    v55 = v104;
    (*(v57 + 8))(v59, v56);
    v58(v60, 0, 1, v56);
    outlined assign with take of UIListContentConfiguration?(v60, v55);
    if (!(*(v57 + 48))(v55, 1, v56))
    {
      (*(v106 + 16))(v99);
      UIListContentConfiguration.text.setter();
    }
  }

  v114 = v122;
  v115 = v123;
  v109 = v117;
  v110 = v118;
  v111 = v119;
  v116 = v124;
  v112 = v120;
  v113 = v121;
  v61 = objc_allocWithZone(type metadata accessor for CAFUINumericInputView());
  outlined init with copy of CAFUINumericConfiguration(&v117, &v108);
  CAFUINumericInputView.init(configuration:)(&v109);
  v101[0] = v62;
  v63 = v106;
  v64 = v99;
  v98 = (*(v106 + 8))(v99, v106);
  v65 = v55;
  v67 = v66;
  v68 = v103;
  v69 = v100;
  outlined init with copy of NotificationModel.Symbol?(v65, v100 + v103[5], &_s5UIKit26UIListContentConfigurationVSgMd);
  v70 = (*(v63 + 24))(v64, v63);
  v72 = v71;
  v73 = (*(v63 + 32))(v64, v63);
  v74 = CAFListContentRepresentable.isLimitedUI.getter(v64, v63);
  *v69 = v98;
  v69[1] = v67;
  v75 = (v69 + v68[6]);
  *v75 = v70;
  v75[1] = v72;
  *(v69 + v68[7]) = v73;
  *(v69 + v68[8]) = v101[0];
  *(v69 + v68[9]) = 0;
  *(v69 + v68[10]) = v74 & 1;
  v76 = v92;
  outlined init with copy of CAFUITileCellConfiguration(v69, v92);
  (*(v102 + 56))(v76, 0, 1, v68);
  v77 = v105;
  v78 = v101[1];
  v79 = v93;
  outlined init with copy of NotificationModel.Symbol?(v105 + v101[1], v93, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v76, v77 + v78);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v79);
  outlined destroy of CAFUINumericConfiguration(&v117);
  outlined destroy of RequestTemporaryContentModel?(v79, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of RequestTemporaryContentModel?(v76, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of CAFUITileCellConfiguration(v69);
  return outlined destroy of RequestTemporaryContentModel?(v104, &_s5UIKit26UIListContentConfigurationVSgMd);
}

uint64_t closure #1 in CAFUINumericRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v26 = a4;
  v24 = a2;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type Double and conformance Double();
  dispatch thunk of BinaryInteger.init<A>(exactly:)();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
  v20 = v24;
  (*(a3 + 40))(v24, a3);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v13 + 8);
  v22(v16, AssociatedTypeWitness);
  if ((v21 & 1) == 0)
  {
    (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
    (*(a3 + 48))(v16, v20, a3);
  }

  return (v22)(v18, AssociatedTypeWitness);
}

double CAFUINumericRepresentable.cellSelected()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_242424310;
  *(a1 + 16) = 3;
  return result;
}

uint64_t CAFUIFloatingPointRepresentable.configureCell(_:)(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  v75 = a1;
  v72 = type metadata accessor for CAFUITileCellConfiguration(0);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v65 - v15;
  (*(a3 + 48))(a2, a3);
  v17 = specialized CAFUIFloatingPointRepresentable.settings_asDouble(_:)(v16);
  v18 = *(v14 + 8);
  v70 = v14 + 8;
  v18(v16, AssociatedTypeWitness);
  v77 = *(a3 + 72);
  v19 = v3;
  v20 = v77(a2, a3);
  v76 = *(*(*(swift_getAssociatedConformanceWitness() + 16) + 16) + 8);
  CAFRange.minimumValue<A>()();

  v21 = specialized CAFUIFloatingPointRepresentable.settings_asDouble(_:)(v16);
  v18(v16, AssociatedTypeWitness);
  v22 = v77(a2, a3);
  CAFRange.maximumValue<A>()();

  v23 = specialized CAFUIFloatingPointRepresentable.settings_asDouble(_:)(v16);
  v18(v16, AssociatedTypeWitness);
  v24 = v77(a2, a3);
  CAFRange.stepValue<A>()();

  v25 = specialized CAFUIFloatingPointRepresentable.settings_asDouble(_:)(v16);
  v18(v16, AssociatedTypeWitness);
  (*(a3 + 32))(&v88, a2, a3);
  LODWORD(v70) = v88;
  v26 = v19;
  LOBYTE(v16) = (*(a3 + 40))(a2, a3);
  v27 = (*(a3 + 80))(a2, a3);
  v69 = v28;
  v29 = (*(a3 + 88))(a2, a3);
  v31 = v30;
  v32 = *(*(a3 + 8) + 40);
  v76 = *(a3 + 8);
  v66 = v32;
  LOBYTE(v24) = v32(a2);
  v33 = swift_allocObject();
  v77 = a2;
  v33[2] = a2;
  v33[3] = a3;
  v33[4] = v26;
  v34 = v24 & 1;
  *&v88 = v17;
  *(&v88 + 1) = v21;
  *&v89 = v23;
  *(&v89 + 1) = v25;
  LOBYTE(v90) = v70;
  v35 = v75;
  BYTE1(v90) = v16 & 1;
  *(&v90 + 2) = v78;
  WORD3(v90) = v79;
  *(&v90 + 1) = v27;
  *&v91 = v69;
  *(&v91 + 1) = v29;
  v92 = v31;
  v36 = v72;
  v93 = 0uLL;
  LOBYTE(v94) = v34;
  DWORD1(v94) = *(&v80 + 3);
  *(&v94 + 1) = v80;
  *(&v94 + 1) = partial apply for closure #1 in CAFUIFloatingPointRepresentable.configureCell(_:);
  v95 = v33;
  v37 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  v38 = v35 + v37;
  v39 = v71;
  outlined init with copy of NotificationModel.Symbol?(v38, v71, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v74 + 48))(v39, 1, v36))
  {
    swift_unknownObjectRetain();
    outlined destroy of RequestTemporaryContentModel?(v39, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    v40 = v73;
LABEL_7:
    v85 = v93;
    v86 = v94;
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v87 = v95;
    v83 = v91;
    v84 = v92;
    v45 = objc_allocWithZone(type metadata accessor for CAFUINumericInputView());
    outlined init with copy of CAFUINumericConfiguration(&v88, &v78);
    CAFUINumericInputView.init(configuration:)(&v80);
    v73 = v46;
    v48 = v76;
    v47 = v77;
    v70 = (*(v76 + 8))(v77, v76);
    v50 = v49;
    v51 = v36[5];
    v52 = type metadata accessor for UIListContentConfiguration();
    (*(*(v52 - 8) + 56))(v40 + v51, 1, 1, v52);
    v53 = (*(v48 + 24))(v47, v48);
    v71 = v37;
    v54 = v53;
    v56 = v55;
    v57 = (*(v48 + 32))(v47, v48);
    v58 = CAFListContentRepresentable.isLimitedUI.getter(v47, v48);
    *v40 = v70;
    v40[1] = v50;
    v59 = (v40 + v36[6]);
    *v59 = v54;
    v59[1] = v56;
    *(v40 + v36[7]) = v57;
    *(v40 + v36[8]) = v73;
    *(v40 + v36[9]) = 0;
    *(v40 + v36[10]) = v58 & 1;
    v60 = v67;
    outlined init with copy of CAFUITileCellConfiguration(v40, v67);
    (*(v74 + 56))(v60, 0, 1, v36);
    v61 = v75;
    v62 = v71;
    v63 = v68;
    outlined init with copy of NotificationModel.Symbol?(v75 + v71, v68, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    swift_beginAccess();
    outlined assign with copy of CAFUITileCellConfiguration?(v60, v61 + v62);
    swift_endAccess();
    CAFUITileBaseCell.tileCellConfiguration.didset(v63);
    outlined destroy of CAFUINumericConfiguration(&v88);
    outlined destroy of RequestTemporaryContentModel?(v63, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    outlined destroy of RequestTemporaryContentModel?(v60, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    return outlined destroy of CAFUITileCellConfiguration(v40);
  }

  v41 = v66;
  v40 = v73;
  outlined init with copy of CAFUITileCellConfiguration(v39, v73);
  swift_unknownObjectRetain();
  outlined destroy of RequestTemporaryContentModel?(v39, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v42 = *(v40 + v36[8]);
  v43 = v42;
  outlined destroy of CAFUITileCellConfiguration(v40);
  if (!v42)
  {
    goto LABEL_7;
  }

  type metadata accessor for CAFUINumericInputView();
  v44 = swift_dynamicCastClass();
  if (!v44 || (v41(v77, v76) & 1) != *(v44 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_config + 96))
  {

    goto LABEL_7;
  }

  v85 = v93;
  v86 = v94;
  v80 = v88;
  v81 = v89;
  v82 = v90;
  v87 = v95;
  v83 = v91;
  v84 = v92;
  CAFUINumericInputView.update(config:)(&v80);

  return outlined destroy of CAFUINumericConfiguration(&v88);
}

uint64_t closure #1 in CAFUIFloatingPointRepresentable.configureCell(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v12 - v9;
  *&v12[1] = a1;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type Double and conformance Double();
  dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(a4 + 56))(v10, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CAFListContentRepresentable.configureCell(_:) in conformance CAFIntegerSetting(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CAFUINumericRepresentable.configureCell(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for CAFListContentRepresentable.configureCell(_:) in conformance CAFFloatSetting(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  WitnessTable = swift_getWitnessTable();

  return CAFUIFloatingPointRepresentable.configureCell(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for CAFListContentRepresentable.configureCell(_:) in conformance CAFVolume(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CAFUINumericRepresentable.configureCell(_:)(a1, a2, WitnessTable);
}

double specialized CAFUIFloatingPointRepresentable.settings_asDouble(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v4 + 16))(v6 - v3, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  return v6[3];
}

uint64_t specialized CAFUINumericRepresentable.settings_asDouble(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v7 - v4;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    (*(v3 + 16))(v5, a1, AssociatedTypeWitness);
    return swift_dynamicCast();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_24237660C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of CAFUITileCellConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized CAFUIFloatingPointRepresentable.isTracking(in:)(uint64_t a1)
{
  v2 = type metadata accessor for CAFUITileCellConfiguration(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of NotificationModel.Symbol?(a1 + v9, v8, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    outlined destroy of RequestTemporaryContentModel?(v8, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  }

  else
  {
    outlined init with copy of CAFUITileCellConfiguration(v8, v5);
    outlined destroy of RequestTemporaryContentModel?(v8, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
    v11 = *&v5[*(v2 + 32)];
    v12 = v11;
    outlined destroy of CAFUITileCellConfiguration(v5);
    if (v11)
    {
      type metadata accessor for CAFUINumericInputView();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        if ([*(v13 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_decrementButton) isSelected] || objc_msgSend(*(v14 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_incrementButton), sel_isSelected))
        {

          return 1;
        }

        v15 = *(v14 + OBJC_IVAR____TtC5CAFUI21CAFUINumericInputView_slider);
        if (v15)
        {
          v16 = [v15 isSelected];

          return v16;
        }
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type CAFUINumericDisplayKind and conformance CAFUINumericDisplayKind()
{
  result = lazy protocol witness table cache variable for type CAFUINumericDisplayKind and conformance CAFUINumericDisplayKind;
  if (!lazy protocol witness table cache variable for type CAFUINumericDisplayKind and conformance CAFUINumericDisplayKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUINumericDisplayKind and conformance CAFUINumericDisplayKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

CAFUI::CAFUIColorConfig __swiftcall CAFUIColorConfig.init(backgroundColor:tintColor:)(UIColor backgroundColor, UIColor tintColor)
{
  v2->super.isa = backgroundColor.super.isa;
  v2[1].super.isa = tintColor.super.isa;
  result.tintColor = tintColor;
  result.backgroundColor = backgroundColor;
  return result;
}

UIColor __swiftcall CAFImageColor.convertToUIColor()()
{
  v1 = UIColorFromCAFImageColor(v0);

  return v1;
}

uint64_t getEnumTagSinglePayload for CAFUIColorConfig(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CAFUIColorConfig(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL specialized static CAFAutomakerSetting.< infix(_:_:)(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = [a1 sortOrder];
  if (v4 == [a2 sortOrder])
  {
    v5 = [a1 userVisibleLabel];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [a2 userVisibleLabel];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = v6 == v10 && v8 == v12;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = [a1 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [a2 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v15 == v19 && v17 == v21)
      {

        return 0;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v24 & 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v25 & 1;
    }
  }

  else
  {
    v23 = [a1 sortOrder];
    return v23 < [a2 sortOrder];
  }
}

unint64_t lazy protocol witness table accessor for type CAFAutomakerSetting and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject)
  {
    type metadata accessor for CAFAutomakerSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CAFAutomakerSetting);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject);
  }

  return result;
}

unint64_t type metadata accessor for CAFAutomakerSetting()
{
  result = lazy cache variable for type metadata for CAFAutomakerSetting;
  if (!lazy cache variable for type metadata for CAFAutomakerSetting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFAutomakerSetting);
  }

  return result;
}

uint64_t CAFUIDetailedDescriptionViewController.init(detailedDescription:)(void *a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView;
  *&v1[v18] = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *&v1[OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView] = 0;
  v19 = type metadata accessor for CAFUIDetailedDescriptionViewController();
  v65.receiver = v1;
  v65.super_class = v19;
  v20 = v17;
  v21 = objc_msgSendSuper2(&v65, sel_initWithNibName_bundle_, 0, 0);
  v22 = *(v4 + 56);
  v22(v17, 1, 1, v3);
  v62 = a1;
  v23 = [a1 text];
  v63 = v17;
  if (v23)
  {
    v60 = v7;
    v61 = v4;
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    AttributedString.init(limitedMarkdown:)(v25, v27, v15);
    v20 = v63;
    outlined destroy of RequestTemporaryContentModel?(v63, &_s10Foundation16AttributedStringVSgMd);
    v22(v15, 0, 1, v3);
    outlined init with take of AttributedString?(v15, v20, &_s10Foundation16AttributedStringVSgMd);
    v7 = v60;
    v4 = v61;
  }

  outlined init with copy of NotificationModel.Symbol?(v20, v12, &_s10Foundation16AttributedStringVSgMd);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    goto LABEL_19;
  }

  v28 = v3;
  v29 = v64;
  (*(v4 + 32))(v64, v12, v3);
  v12 = OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView;
  v30 = *(v21 + OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString);
  v31 = v4;
  (*(v4 + 16))(v7, v29, v28);
  v32 = v30;
  v33 = NSAttributedString.init(_:)();
  [v32 setAttributedText_];

  [*&v12[v21] setEditable_];
  v34 = *&v12[v21];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor_];

  [*&v12[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v12[v21] setSelectable_];
  v38 = [*&v12[v21] textLayoutManager];
  if (v38)
  {
    v39 = v38;
    [v38 setDelegate_];
  }

  v40 = v21;
  v41 = [v40 view];
  v42 = v62;
  if (!v41)
  {
    __break(1u);
    goto LABEL_16;
  }

  v43 = v41;
  [v41 addSubview_];

  v44 = [v42 image];
  if (!v44)
  {
LABEL_12:
    v56 = [v40 view];

    if (v56)
    {
      v57 = [v35 tableBackgroundColor];
      if (v57)
      {
        v58 = v57;
        [v56 setBackgroundColor_];

        (*(v31 + 8))(v64, v28);
        outlined destroy of RequestTemporaryContentModel?(v63, &_s10Foundation16AttributedStringVSgMd);
        return v40;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v45 = v44;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v12, v47);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v50 = [v48 initWithData_];

  outlined consume of Data._Representation(v12, v47);
  if (!v50)
  {
    outlined consume of Data._Representation(v12, v47);
    goto LABEL_12;
  }

  v51 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  [v51 setContentMode_];
  v52 = [v51 layer];
  [v52 setMasksToBounds_];

  [v51 _setContinuousCornerRadius_];
  v53 = [v40 view];
  if (v53)
  {
    v54 = v53;
    [v53 addSubview_];
    outlined consume of Data._Representation(v12, v47);

    v55 = *&v40[OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView];
    *&v40[OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView] = v51;

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  outlined destroy of RequestTemporaryContentModel?(v12, &_s10Foundation16AttributedStringVSgMd);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AttributedString.init(limitedMarkdown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v23 = a1;
  v21 = a3;
  v22 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for AttributedString();
  v20 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v7 + 104))(v9, *MEMORY[0x277CC8BB0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CC8B98], v22);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v18 = v25;
  result = AttributedString.init(markdown:options:baseURL:)();
  if (!v18)
  {
    (*(v20 + 32))(v21, v16, v14);
    v26 = [objc_opt_self() defaultParagraphStyle];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
    AttributedString.subscript.setter();
    v26 = [objc_opt_self() preferredFontForTextStyle_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
    v26 = [objc_opt_self() labelColor];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
    AttributedString.subscript.setter();
    AttributedString.processInlineIntents()();
    return AttributedString.processAttributeRuns()();
  }

  return result;
}

Swift::Void __swiftcall CAFUIDetailedDescriptionViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v135.receiver = v1;
  v135.super_class = type metadata accessor for CAFUIDetailedDescriptionViewController();
  objc_msgSendSuper2(&v135, sel_viewIsAppearing_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2424244E0;
  v4 = *&v1[OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView];
  v5 = [v4 topAnchor];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9 constant:2.0];

  *(v3 + 32) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v11 constraintEqualToAnchor:v15 constant:24.0];

  *(v3 + 40) = v16;
  v17 = [v4 bottomAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = v18;
  v20 = [v18 &selRef_labelColor + 2];

  v21 = [v20 bottomAnchor];
  v22 = [v17 &selRef_isEnabled + 6];

  *(v3 + 48) = v22;
  v23 = v1;
  v24 = *&v1[OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView];
  if (!v24)
  {
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242423BD0;
    v62 = [v4 trailingAnchor];
    v28 = v23;
    v63 = [v23 view];
    if (!v63)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v64 = v63;
    v65 = [v63 trailingAnchor];

    v66 = [v62 constraintEqualToAnchor:v65 constant:-24.0];
    *(inited + 32) = v66;
    specialized Array.append<A>(contentsOf:)(inited);
    v67 = [v23 view];
    if (!v67)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v68 = v67;
    v69 = [v67 safeAreaLayoutGuide];

    [v69 layoutFrame];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v138.origin.x = v71;
    v138.origin.y = v73;
    v138.size.width = v75;
    v138.size.height = v77;
    v78 = CGRectGetWidth(v138) + -24.0;
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v25 image];
  if (!v26)
  {

    goto LABEL_11;
  }

  v27 = v26;
  v28 = v1;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  [v31 layoutFrame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v136.origin.x = v33;
  v136.origin.y = v35;
  v136.size.width = v37;
  v136.size.height = v39;
  Height = CGRectGetHeight(v136);
  v41 = [v1 view];
  if (!v41)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v42 = v41;
  v43 = Height + -8.0 + -2.0;
  v44 = [v41 safeAreaLayoutGuide];

  [v44 layoutFrame];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v137.origin.x = v46;
  v137.origin.y = v48;
  v137.size.width = v50;
  v137.size.height = v52;
  v53 = CGRectGetWidth(v137) * 0.5 + -12.0 + -24.0;
  [v27 size];
  v55 = v54;
  [v27 size];
  v57 = v55 / v56;
  [v27 size];
  if (v57 >= v53 / v43)
  {
    v60 = v53 / v58;
  }

  else
  {
    v60 = v43 / v59;
  }

  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_242423BC0;
  v80 = v25;
  v81 = [v80 centerYAnchor];
  v82 = [v28 view];
  if (!v82)
  {
    goto LABEL_34;
  }

  v83 = v82;
  v84 = [v82 &selRef_labelColor + 2];

  v85 = [v84 centerYAnchor];
  v86 = [v81 constraintEqualToAnchor_];

  *(v79 + 32) = v86;
  v87 = [v80 trailingAnchor];
  v88 = [v28 view];
  if (!v88)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v89 = v88;
  v90 = [v88 &selRef_labelColor + 2];

  v91 = [v90 trailingAnchor];
  v92 = [v87 constraintEqualToAnchor:v91 constant:-24.0];

  *(v79 + 40) = v92;
  v93 = [v80 widthAnchor];
  [v27 size];
  v95 = [v93 constraintEqualToConstant_];

  *(v79 + 48) = v95;
  v96 = [v80 heightAnchor];
  [v27 size];
  v98 = [v96 constraintEqualToConstant_];

  *(v79 + 56) = v98;
  v99 = [v4 trailingAnchor];
  v100 = [v80 leadingAnchor];

  v101 = [v99 constraintEqualToAnchor:v100 constant:-24.0];
  *(v79 + 64) = v101;
  specialized Array.append<A>(contentsOf:)(v79);
  v102 = [v28 view];
  if (v102)
  {
    v103 = v102;
    v104 = [v102 &selRef_labelColor + 2];

    [v104 layoutFrame];
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    v139.origin.x = v106;
    v139.origin.y = v108;
    v139.size.width = v110;
    v139.size.height = v112;
    v113 = CGRectGetWidth(v139) + -24.0 + -24.0;
    [v27 size];
    v115 = v114;

    v78 = v113 - v60 * v115;
LABEL_19:
    v116 = objc_opt_self();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v116 activateConstraints_];

    v118 = [v4 attributedText];
    if (!v118)
    {

      goto LABEL_24;
    }

    v119 = v118;
    [v118 boundingRectWithSize:3 options:0 context:{v78 + -24.0, 0.0}];
    v121 = v120;
    v122 = [v28 view];
    if (v122)
    {
      v123 = v122;

      v124 = [v123 safeAreaLayoutGuide];

      [v124 layoutFrame];
      v126 = v125;
      v128 = v127;
      v130 = v129;
      v132 = v131;

      v140.origin.x = v126;
      v140.origin.y = v128;
      v140.size.width = v130;
      v140.size.height = v132;
      Width = CGRectGetWidth(v140);

      if (Width + -2.0 + -8.0 < v121)
      {
        v134 = 45.0;
LABEL_25:
        [v4 setTextContainerInset_];
        return;
      }

LABEL_24:
      v134 = 0.0;
      goto LABEL_25;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
}

void *CAFUIDetailedDescriptionViewController.textLayoutManager(_:textLayoutFragmentFor:in:)(void *a1, uint64_t a2, id a3)
{
  v63 = type metadata accessor for PresentationIntent.Kind();
  v53 = *(v63 - 8);
  v7 = MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v9;
  v61 = type metadata accessor for PresentationIntent.IntentType();
  v10 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18PresentationIntentVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v51 - v13;
  v14 = type metadata accessor for PresentationIntent();
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 documentRange];
  v17 = [v16 location];

  v18 = [a1 offsetFromLocation:v17 toLocation:a2];
  swift_unknownObjectRelease();
  v19 = [a3 elementRange];
  if (v19)
  {
    v20 = v19;
    v21 = [a1 documentRange];
    v22 = [v21 location];

    [a1 offsetFromLocation:v22 toLocation:{objc_msgSend(v20, sel_endLocation)}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  result = [*(v3 + OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView) attributedText];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result attributesAtIndex:v18 effectiveRange:0];

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v64;
  if (!*(v26 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA5E0]), (v29 & 1) == 0))
  {

    v30 = v57;
    (*(v58 + 56))(v57, 1, 1, v59);
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v28, v65);

  v30 = v57;
  v31 = v59;
  v32 = swift_dynamicCast();
  v33 = v58;
  (*(v58 + 56))(v30, v32 ^ 1u, 1, v31);
  if ((*(v33 + 48))(v30, 1, v31) == 1)
  {
LABEL_14:
    outlined destroy of RequestTemporaryContentModel?(v30, &_s10Foundation18PresentationIntentVSgMd);
    goto LABEL_15;
  }

  v52 = a3;
  (*(v33 + 32))(v54, v30, v31);
  result = PresentationIntent.components.getter();
  v34 = result;
  v57 = result[2];
  if (v57)
  {
    v35 = 0;
    v55 = v10 + 8;
    v56 = v10 + 16;
    v36 = (v53 + 16);
    v37 = (v53 + 88);
    v38 = *MEMORY[0x277CC8D00];
    v39 = (v53 + 8);
    while (v35 < v34[2])
    {
      v40 = v60;
      v41 = v61;
      (*(v10 + 16))(v60, v34 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v35, v61);
      PresentationIntent.IntentType.kind.getter();
      (*(v10 + 8))(v40, v41);
      v43 = v62;
      v42 = v63;
      (*v36)(v62, v27, v63);
      if ((*v37)(v43, v42) == v38)
      {

        v47 = *v39;
        (*v39)(v43, v42);
        v48 = v52;
        v49 = v42;
        v50 = [v52 elementRange];
        v46 = [objc_allocWithZone(type metadata accessor for BlockQuoteLayoutFragment()) initWithTextElement:v48 range:v50];

        v47(v27, v49);
        (*(v58 + 8))(v54, v59);
        return v46;
      }

      ++v35;
      v44 = *v39;
      (*v39)(v64, v42);
      result = (v44)(v43, v42);
      v27 = v64;
      if (v57 == v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_12:

  (*(v58 + 8))(v54, v59);
  a3 = v52;
LABEL_15:
  v45 = [a3 elementRange];
  v46 = [objc_allocWithZone(MEMORY[0x277D742A0]) initWithTextElement:a3 range:v45];

  return v46;
}

void one-time initialization function for calloutMetrics(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_allocWithZone(MEMORY[0x277D75520]);
  v6 = v4;
  v7 = [v5 initForTextStyle_];

  *a3 = v7;
}

void one-time initialization function for monospaceDescriptor()
{
  if (one-time initialization token for footnoteDescription != -1)
  {
    swift_once();
  }

  v0 = static CAFUISettingInfoFontTypes.footnoteDescription;
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  static CAFUISettingInfoFontTypes.monospaceDescriptor = v1;
}

void one-time initialization function for heading()
{
  if (one-time initialization token for calloutMetrics != -1)
  {
    swift_once();
  }

  v0 = static CAFUISettingInfoFontTypes.calloutMetrics;
  v1 = objc_opt_self();
  v2 = one-time initialization token for calloutDescriptor;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static CAFUISettingInfoFontTypes.calloutDescriptor;
  [v4 pointSize];
  v6 = v5;

  v7 = [v1 systemFontOfSize:v6 weight:*MEMORY[0x277D74420]];
  v8 = [v3 scaledFontForFont_];

  static CAFUISettingInfoFontTypes.heading = v8;
}

void one-time initialization function for emphasized()
{
  if (one-time initialization token for footnoteDescription != -1)
  {
    swift_once();
  }

  v0 = [static CAFUISettingInfoFontTypes.footnoteDescription fontDescriptorWithSymbolicTraits_];
  if (v0)
  {
    v1 = v0;
    [v0 pointSize];
    v3 = [objc_opt_self() fontWithDescriptor:v1 size:v2];
  }

  else
  {
    v4 = objc_opt_self();
    [static CAFUISettingInfoFontTypes.footnoteDescription pointSize];
    v3 = [v4 italicSystemFontOfSize_];
  }

  static CAFUISettingInfoFontTypes.emphasized = v3;
}

void one-time initialization function for strongEmphasized()
{
  if (one-time initialization token for footnoteMetrics != -1)
  {
    swift_once();
  }

  v0 = one-time initialization token for semiboldFont;
  v1 = static CAFUISettingInfoFontTypes.footnoteMetrics;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = static CAFUISettingInfoFontTypes.semiboldFont;
  v3 = [v1 scaledFontForFont_];

  static CAFUISettingInfoFontTypes.strongEmphasized = v3;
}

id one-time initialization function for code()
{
  result = closure #1 in variable initialization expression of static CAFUISettingInfoFontTypes.code();
  static CAFUISettingInfoFontTypes.code = result;
  return result;
}

id closure #1 in variable initialization expression of static CAFUISettingInfoFontTypes.code()
{
  if (one-time initialization token for monospaceDescriptor != -1)
  {
    swift_once();
  }

  if (static CAFUISettingInfoFontTypes.monospaceDescriptor)
  {
    v0 = one-time initialization token for footnoteDescription;
    v1 = static CAFUISettingInfoFontTypes.monospaceDescriptor;
    if (v0 != -1)
    {
      swift_once();
    }

    [static CAFUISettingInfoFontTypes.footnoteDescription pointSize];
    v3 = [objc_opt_self() fontWithDescriptor:v1 size:v2];

    return v3;
  }

  else
  {
    v5 = objc_opt_self();
    if (one-time initialization token for footnoteDescription != -1)
    {
      swift_once();
    }

    [static CAFUISettingInfoFontTypes.footnoteDescription pointSize];
    v6 = [v5 monospacedSystemFontOfSize_weight_];

    return v6;
  }
}

void one-time initialization function for inlineCode()
{
  if (one-time initialization token for monospaceDescriptor != -1)
  {
    swift_once();
  }

  if (static CAFUISettingInfoFontTypes.monospaceDescriptor)
  {
    v0 = static CAFUISettingInfoFontTypes.monospaceDescriptor;
    [v0 pointSize];
    v2 = [objc_opt_self() fontWithDescriptor:v0 size:v1];
  }

  else
  {
    v3 = objc_opt_self();
    if (one-time initialization token for footnoteDescription != -1)
    {
      swift_once();
    }

    [static CAFUISettingInfoFontTypes.footnoteDescription pointSize];
    v2 = [v3 monospacedSystemFontOfSize_weight_];
  }

  static CAFUISettingInfoFontTypes.inlineCode = v2;
}

id one-time initialization function for semiboldFont(uint64_t a1, double *a2, SEL *a3, void *a4)
{
  v7 = objc_opt_self();
  if (one-time initialization token for footnoteDescription != -1)
  {
    swift_once();
  }

  v8 = static CAFUISettingInfoFontTypes.footnoteDescription;
  [v8 pointSize];
  v10 = v9;

  result = [v7 *a3];
  *a4 = result;
  return result;
}

void one-time initialization function for calloutDescriptor(uint64_t a1, uint64_t a2, id *a3, SEL *a4, void *a5)
{
  v8 = objc_opt_self();
  v9 = *a3;
  v10 = [v8 *a4];

  *a5 = v10;
}

Swift::Void __swiftcall BlockQuoteLayoutFragment.draw(at:in:)(CGPoint at, CGContextRef in)
{
  v3 = v2;
  y = at.y;
  x = at.x;
  v7 = type metadata accessor for CGPathFillRule();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  CGContextSaveGState(in);
  v13 = BlockQuoteLayoutFragment.createVerticalBarPath()();
  CGContextAddPath(in, v13);
  v14 = [objc_opt_self() _carSystemQuaternaryColor];
  v15 = [v14 CGColor];

  CGContextSetFillColorWithColor(in, v15);
  (*(v8 + 104))(v10, *MEMORY[0x277CBF258], v7);
  CGContextRef.fillPath(using:)();
  (*(v8 + 8))(v10, v7);
  CGContextRestoreGState(in);
  v16 = type metadata accessor for BlockQuoteLayoutFragment();
  if (v12)
  {
    v19.receiver = v3;
    v17 = &v19;
  }

  else
  {
    v18[0] = v3;
    v17 = v18;
  }

  v17->super_class = v16;
  [(objc_super *)v17 drawAtPoint:in inContext:x + 8.0 + 4.0, y, v18[0]];
}

void BlockQuoteLayoutFragment.tightTextBounds.getter()
{
  v1 = MEMORY[0x277CBF398];
  v2 = [v0 textLineFragments];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSTextLineFragment);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  if (!v4)
  {
LABEL_12:

    return;
  }

  if (v4 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D0D9A0](v9, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v9 + 32);
      }

      v11 = v10;
      [v10 typographicBounds];
      x = v12;
      y = v14;
      width = v16;
      height = v18;
      v20.origin.x = v5;
      v20.origin.y = v6;
      v20.size.width = v7;
      v20.size.height = v8;
      if (!CGRectIsNull(v20))
      {
        v21.origin.x = v5;
        v21.origin.y = v6;
        v21.size.width = v7;
        v21.size.height = v8;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v22 = CGRectUnion(v21, v23);
        x = v22.origin.x;
        y = v22.origin.y;
        width = v22.size.width;
        height = v22.size.height;
      }

      ++v9;
      v5 = x;
      v6 = y;
      v7 = width;
      v8 = height;
    }

    while (v4 != v9);
    goto LABEL_12;
  }

  __break(1u);
}

id BlockQuoteLayoutFragment.createVerticalBarPath()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  objc_msgSendSuper2(&v16, sel_renderingSurfaceBounds);
  BlockQuoteLayoutFragment.tightTextBounds.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  if (v10)
  {
    BlockQuoteLayoutFragment.tightTextBounds.getter();
    v11 = CGRectGetWidth(v17) + -4.0;
  }

  else
  {
    v11 = 0.0;
  }

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  Height = CGRectGetHeight(v18);
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v11 cornerRadius:{v4, 4.0, Height, 2.0}];
  v14 = [v13 CGPath];

  return v14;
}

id CAFUIDetailedDescriptionViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t AttributedString.processInlineIntents()()
{
  v0 = type metadata accessor for AttributeContainer();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  AttributeContainer.init()();
  v7 = 0;
  v8 = (v1 + 8);
  do
  {
    v12 = *(&outlined read-only object #0 of AttributedString.processInlineIntents() + v7 + 32);
    AttributeContainer.init()();
    if (v12 == 4)
    {
      if (one-time initialization token for inlineCode != -1)
      {
        swift_once();
      }

      v13 = static CAFUISettingInfoFontTypes.inlineCode;
      v17 = static CAFUISettingInfoFontTypes.inlineCode;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      v14 = v13;
      AttributeContainer.subscript.setter();
      v17 = [objc_opt_self() secondaryLabelColor];
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
      goto LABEL_6;
    }

    if (v12 == 2)
    {
      if (one-time initialization token for strongEmphasized != -1)
      {
        swift_once();
      }

      v9 = static CAFUISettingInfoFontTypes.strongEmphasized;
LABEL_5:
      v17 = v9;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      v10 = v9;
LABEL_6:
      AttributeContainer.subscript.setter();
      v17 = v12;
      v18 = 0;
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
      AttributeContainer.subscript.setter();
      AttributedString.replaceAttributes(_:with:)();
      goto LABEL_7;
    }

    if (v12 == 1)
    {
      if (one-time initialization token for emphasized != -1)
      {
        swift_once();
      }

      v9 = static CAFUISettingInfoFontTypes.emphasized;
      goto LABEL_5;
    }

LABEL_7:
    v11 = *v8;
    (*v8)(v4, v0);
    v7 += 8;
  }

  while (v7 != 24);
  return (v11)(v6, v0);
}

uint64_t AttributedString.processAttributeRuns()()
{
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  v0 = MEMORY[0x28223BE20](v277);
  v276 = &v257 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v275 = &v257 - v2;
  v269 = type metadata accessor for AttributedSubstring();
  v338 = *(v269 - 8);
  v3 = MEMORY[0x28223BE20](v269);
  v263 = &v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v262 = &v257 - v5;
  v6 = type metadata accessor for PresentationIntent.Kind();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v278 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v259 = &v257 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v266 = &v257 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v270 = &v257 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v284 = &v257 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v296 = &v257 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v337 = &v257 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v325 = (&v257 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v257 - v24;
  v324 = type metadata accessor for PresentationIntent.IntentType();
  v271 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v323 = &v257 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18PresentationIntentVSgMd);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v261 = &v257 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v260 = &v257 - v31;
  MEMORY[0x28223BE20](v30);
  v292 = &v257 - v32;
  v299 = type metadata accessor for PresentationIntent();
  v336 = *(v299 - 8);
  v33 = MEMORY[0x28223BE20](v299);
  v258 = &v257 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v257 = &v257 - v36;
  MEMORY[0x28223BE20](v35);
  v289 = &v257 - v37;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  v38 = MEMORY[0x28223BE20](v300);
  v287 = &v257 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v307 = &v257 - v40;
  v302 = type metadata accessor for AttributedString.Index();
  v331 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v306 = &v257 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18PresentationIntentVSg_SnyAA16AttributedStringV5IndexVGtMd);
  MEMORY[0x28223BE20](v291);
  v290 = &v257 - v42;
  v43 = type metadata accessor for AttributedString.Runs();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v257 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V018PresentationIntentI0OGGMd);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v257 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V018PresentationIntentJ0OG_GMd);
  v51 = v50 - 8;
  MEMORY[0x28223BE20](v50);
  v53 = &v257 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18PresentationIntentV4KindOSgMd);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v326 = &v257 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v265 = &v257 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v308 = &v257 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v313 = &v257 - v62;
  MEMORY[0x28223BE20](v61);
  v63 = *(v7 + 56);
  v317 = v7 + 56;
  v311 = &v257 - v64;
  v316 = v63;
  v63();
  AttributedString.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v268 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute();
  AttributedString.Runs.subscript.getter();

  (*(v44 + 8))(v46, v43);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018PresentationIntentG0OGMd);
  v66 = *(v65 - 8);
  (*(v66 + 16))(v53, v49, v65);
  v67 = *(v51 + 44);
  v293 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.FoundationAttributes.PresentationIntentAttribute> and conformance AttributedString.Runs.AttributesSlice1<A>, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018PresentationIntentG0OGMd);
  dispatch thunk of Collection.endIndex.getter();
  v68 = v49;
  v69 = v53;
  (*(v66 + 8))(v68, v65);
  v305 = v331 + 8;
  v295 = (v336 + 48);
  v283 = (v336 + 32);
  v322 = v271 + 16;
  v321 = (v271 + 8);
  v335 = (v317 - 40);
  v334 = (v317 + 32);
  v303 = (v317 - 48);
  v329 = (v317 + 48);
  v320 = *MEMORY[0x277CC8D38];
  v309 = (v317 - 8);
  v315 = (v317 - 24);
  v310 = (v317 + 40);
  v314 = *MEMORY[0x277CC8D18];
  v267 = (v338 + 8);
  v282 = (v336 + 8);
  v301 = *MEMORY[0x277CC8D08];
  v274 = v331 + 16;
  v273 = v331 + 32;
  v297 = *MEMORY[0x277CC8D30];
  v285 = *MEMORY[0x277CC8D48];
  v272 = *MEMORY[0x277CC8D00];
  v264 = *MEMORY[0x277CC8D10];
  v319 = *MEMORY[0x277CC8D50];
  v312 = v25;
  v286 = v6;
  v288 = v53;
  v332 = v67;
  v333 = v65;
  while (1)
  {
    while (1)
    {
      v70 = v306;
      dispatch thunk of Collection.startIndex.getter();
      v71 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x277CC8C20]);
      v72 = v302;
      v298 = v71;
      v73 = dispatch thunk of static Equatable.== infix(_:_:)();
      v304 = *v305;
      v304(v70, v72);
      if (v73)
      {
        outlined destroy of RequestTemporaryContentModel?(v69, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V018PresentationIntentJ0OG_GMd);
        return outlined destroy of RequestTemporaryContentModel?(v311, &_s10Foundation18PresentationIntentV4KindOSgMd);
      }

      lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.FoundationAttributes.PresentationIntentAttribute> and conformance AttributedString.Runs.AttributesSlice1<A>, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018PresentationIntentG0OGMd);
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v74 = dispatch thunk of Collection.subscript.read();
      v75 = v290;
      outlined init with copy of NotificationModel.Symbol?(v76, v290, &_s10Foundation18PresentationIntentVSg_SnyAA16AttributedStringV5IndexVGtMd);
      v74(&v343, 0);
      v77 = v307;
      outlined init with take of AttributedString?(v75 + *(v291 + 48), v307, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v78 = v75;
      v79 = v292;
      outlined init with take of AttributedString?(v78, v292, &_s10Foundation18PresentationIntentVSgMd);
      v80 = *v295;
      v81 = v299;
      if ((*v295)(v79, 1, v299) != 1)
      {
        break;
      }

      outlined destroy of RequestTemporaryContentModel?(v77, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      outlined destroy of RequestTemporaryContentModel?(v79, &_s10Foundation18PresentationIntentVSgMd);
      v69 = v288;
    }

    v279 = *v283;
    v279(v289, v79, v81);
    (v316)(v313, 1, 1, v6);
    v82 = PresentationIntent.components.getter();
    v83 = *(v82 + 16);
    if (v83)
    {
      v281 = v80;
      v330 = 0;
      v84 = (*(v271 + 80) + 32) & ~*(v271 + 80);
      v280 = v82;
      v85 = v82 + v84;
      v328 = *(v271 + 72);
      v327 = *(v271 + 16);
      LODWORD(v331) = 1;
      v86 = v335;
      v87 = v303;
      while (1)
      {
        v338 = v83;
        v89 = v323;
        v90 = v324;
        v327(v323, v85, v324);
        PresentationIntent.IntentType.kind.getter();
        (*v321)(v89, v90);
        v91 = *v86;
        v92 = v325;
        v91(v325, v25, v6);
        v93 = *v334;
        v94 = (*v334)(v92, v6);
        v95 = v329;
        if (v94 == v320)
        {
          (*v310)(v92, v6);
          v96 = v330;
          if (v331)
          {
            v96 = *v92;
          }

          v330 = v96;
          v97 = *v95;
          LODWORD(v331) = 0;
          v86 = v335;
          goto LABEL_31;
        }

        v318 = v329 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v98 = *v87;
        (*v87)(v92, v6);
        v99 = v337;
        v336 = *v95;
        (v336)(v337, v314, v6);
        v100 = MEMORY[0x245D0BC60](v25, v99);
        v98(v99, v6);
        if (v100 & 1) != 0 || (v101 = v337, (v336)(v337, v301, v6), v102 = MEMORY[0x245D0BC60](v25, v101), v98(v101, v6), (v102))
        {
          v103 = v313;
          v104 = v308;
          outlined init with copy of NotificationModel.Symbol?(v313, v308, &_s10Foundation18PresentationIntentV4KindOSgMd);
          if ((*v309)(v104, 1, v6) == 1)
          {
            outlined destroy of RequestTemporaryContentModel?(v103, &_s10Foundation18PresentationIntentV4KindOSgMd);
            outlined destroy of RequestTemporaryContentModel?(v104, &_s10Foundation18PresentationIntentV4KindOSgMd);
            v25 = v312;
            v105 = v335;
            v91(v103, v312, v6);
            v86 = v105;
            (v316)(v103, 0, 1, v6);
          }

          else
          {
            outlined destroy of RequestTemporaryContentModel?(v104, &_s10Foundation18PresentationIntentV4KindOSgMd);
            v25 = v312;
            v86 = v335;
          }
        }

        else
        {
          v106 = v296;
          v91(v296, v25, v6);
          v107 = v93(v106, v6);
          if (v107 == v297)
          {
            v108 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
            v109 = v306;
            AttributedString.startIndex.getter();
            v110 = static AttributedString.Index.== infix(_:_:)();
            v304(v109, v302);
            if (v110)
            {
              v111 = 0.0;
            }

            else
            {
              v111 = 16.0;
            }

            [v108 setParagraphSpacingBefore_];
            [v108 setParagraphSpacing_];
            [v108 copy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSParagraphStyle);
            swift_dynamicCast();
            v112 = v342;
            lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
            v113 = AttributedString.subscript.modify();
            v340 = v112;
            lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
            AttributedSubstring.subscript.setter();
            v113(&v341, 0);
            if (one-time initialization token for heading != -1)
            {
              swift_once();
            }

            v114 = static CAFUISettingInfoFontTypes.heading;
            v115 = static CAFUISettingInfoFontTypes.heading;
            v116 = AttributedString.subscript.modify();
            v341 = v114;
            lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
            AttributedSubstring.subscript.setter();
            v116(&v343, 0);
          }

          else
          {
            v98(v106, v6);
            v117 = v284;
            v91(v284, v25, v6);
            LODWORD(v294) = v93(v117, v6);
            v98(v117, v6);
            if (v294 != v285)
            {
              v130 = v270;
              v91(v270, v25, v6);
              v131 = v93(v130, v6);
              v87 = v303;
              v98(v130, v6);
              if (v131 == v272)
              {
                v132 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
                [v132 setFirstLineHeadIndent_];
                [v132 setHeadIndent_];
                v133 = v306;
                AttributedString.startIndex.getter();
                v134 = static AttributedString.Index.== infix(_:_:)();
                v304(v133, v302);
                if (v134)
                {
                  v135 = 0.0;
                }

                else
                {
                  v135 = 16.0;
                }

                [v132 setParagraphSpacingBefore_];
                v294 = v132;
                [v132 setParagraphSpacing_];
                v136 = v265;
                outlined init with copy of NotificationModel.Symbol?(v311, v265, &_s10Foundation18PresentationIntentV4KindOSgMd);
                v137 = (*v309)(v136, 1, v6);
                v97 = v336;
                if (v137 == 1)
                {
                  outlined destroy of RequestTemporaryContentModel?(v136, &_s10Foundation18PresentationIntentV4KindOSgMd);
                  v138 = v294;
                  goto LABEL_49;
                }

                v146 = v266;
                (*v315)(v266, v136, v6);
                v147 = v259;
                v91(v259, v146, v6);
                v148 = v93(v147, v6);
                v138 = v294;
                if (v148 == v297)
                {
                  goto LABEL_47;
                }

                if (v148 == v285)
                {
                  v98(v259, v6);
                  goto LABEL_47;
                }

                if (v148 == v272)
                {
LABEL_47:
                  [v138 setParagraphSpacing_];
                  v149 = &v298;
                }

                else
                {
                  v98(v266, v6);
                  v149 = &v291;
                }

                v98(*(v149 - 32), v6);
LABEL_49:
                [v138 copy];
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSParagraphStyle);
                swift_dynamicCast();
                v150 = v342;
                lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
                v151 = AttributedString.subscript.modify();
                v340 = v150;
                lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
                AttributedSubstring.subscript.setter();
                v151(&v341, 0);
                if (one-time initialization token for blockQuote != -1)
                {
                  swift_once();
                }

                v152 = static CAFUISettingInfoFontTypes.blockQuote;
                v153 = static CAFUISettingInfoFontTypes.blockQuote;
                v154 = AttributedString.subscript.modify();
                v341 = v152;
                lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
                AttributedSubstring.subscript.setter();
                v154(&v343, 0);
                v155 = [objc_opt_self() labelColor];
                v156 = AttributedString.subscript.modify();
                v341 = v155;
                lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
                AttributedSubstring.subscript.setter();
                v156(&v343, 0);

LABEL_52:
                v25 = v312;
              }

              else
              {
                v97 = v336;
                v139 = v337;
                (v336)(v337, v264, v6);
                v140 = MEMORY[0x245D0BC60](v25, v139);
                v98(v139, v6);
                if (v140)
                {
                  v141 = [objc_opt_self() secondaryLabelColor];
                  v294 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
                  v142 = AttributedString.subscript.modify();
                  v341 = v141;
                  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
                  AttributedSubstring.subscript.setter();
                  v142(&v343, 0);
                  if (one-time initialization token for horizontalRule != -1)
                  {
                    swift_once();
                  }

                  v143 = static CAFUISettingInfoFontTypes.horizontalRule;
                  v144 = static CAFUISettingInfoFontTypes.horizontalRule;
                  v145 = AttributedString.subscript.modify();
                  v341 = v143;
                  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
                  AttributedSubstring.subscript.setter();
                  v145(&v343, 0);
                  goto LABEL_52;
                }
              }

              v86 = v335;
              goto LABEL_31;
            }

            v118 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
            [v118 setFirstLineHeadIndent_];
            [v118 setHeadIndent_];
            [v118 setParagraphSpacingBefore_];
            [v118 setParagraphSpacing_];
            [v118 copy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSParagraphStyle);
            swift_dynamicCast();
            v119 = v342;
            lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
            v120 = AttributedString.subscript.modify();
            v340 = v119;
            lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
            AttributedSubstring.subscript.setter();
            v120(&v341, 0);
            if (one-time initialization token for code != -1)
            {
              swift_once();
            }

            v121 = static CAFUISettingInfoFontTypes.code;
            v122 = static CAFUISettingInfoFontTypes.code;
            v123 = AttributedString.subscript.modify();
            v341 = v121;
            lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
            AttributedSubstring.subscript.setter();
            v123(&v343, 0);
            v124 = [objc_opt_self() secondaryLabelColor];
            v125 = AttributedString.subscript.modify();
            v341 = v124;
            lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
            AttributedSubstring.subscript.setter();
            v125(&v343, 0);
          }

          v25 = v312;
          v86 = v335;
          v6 = v286;
          v87 = v303;
        }

        v97 = v336;
LABEL_31:
        v126 = v337;
        (v97)(v337, v319, v6);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind, MEMORY[0x277CC8D60]);
        v127 = dispatch thunk of static Equatable.== infix(_:_:)();
        v128 = *v87;
        (*v87)(v126, v6);
        if (v127)
        {
          v128(v25, v6);
        }

        else
        {
          v129 = v311;
          outlined destroy of RequestTemporaryContentModel?(v311, &_s10Foundation18PresentationIntentV4KindOSgMd);
          (*v315)(v129, v25, v6);
          (v316)(v129, 0, 1, v6);
        }

        v88 = v326;
        v85 += v328;
        v83 = v338 - 1;
        if (v338 == 1)
        {

          v80 = v281;
          goto LABEL_57;
        }
      }
    }

    v330 = 0;
    LODWORD(v331) = 1;
    v88 = v326;
LABEL_57:
    outlined init with copy of NotificationModel.Symbol?(v313, v88, &_s10Foundation18PresentationIntentV4KindOSgMd);
    if ((*v309)(v88, 1, v6) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v88, &_s10Foundation18PresentationIntentV4KindOSgMd);
      goto LABEL_89;
    }

    v157 = v278;
    (*v315)(v278, v88, v6);
    v158 = v337;
    (*v329)(v337, v314, v6);
    LOBYTE(v157) = MEMORY[0x245D0BC60](v157, v158);
    v159 = *v303;
    (*v303)(v158, v6);
    v338 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v336 = v159;
    if ((v157 & 1) == 0)
    {
      v164 = v263;
      AttributedString.subscript.getter();
      v165 = v261;
      AttributedSubstring.subscript.getter();
      (*v267)(v164, v269);
      v166 = v299;
      if (v80(v165, 1, v299) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v165, &_s10Foundation18PresentationIntentVSgMd);
      }

      else
      {
        v202 = v258;
        v279(v258, v165, v166);
        v203 = PresentationIntent.indentationLevel.getter();
        result = (*v282)(v202, v166);
        v204 = v203 - 1;
        if (__OFSUB__(v203, 1))
        {
          goto LABEL_97;
        }

        if (v204 > 0)
        {
          v205._countAndFlagsBits = 0x80E28780E28780E2;
          v205._object = 0xA900000000000087;
          v206 = String.init(repeating:count:)(v205, v204);
          countAndFlagsBits = v206._countAndFlagsBits;
          object = v206._object;
LABEL_74:
          v209 = v307;
          v210 = String.count.getter();
          if (v331)
          {
            v211 = 0xA500000000000000;
            v212 = 0x8780E22E31;
          }

          else
          {
            v341 = v330;
            v343._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            v343._object = v213;
            MEMORY[0x245D0D240](2273370670, 0xA400000000000000);
            v212 = v343._countAndFlagsBits;
            v211 = v343._object;
          }

          if (String.count.getter() < v210)
          {
            result = String.count.getter();
            v214 = v210 - result;
            if (__OFSUB__(v210, result))
            {
              goto LABEL_98;
            }

            if (__OFSUB__(v214, 1))
            {
              goto LABEL_99;
            }

            v215._countAndFlagsBits = 8880354;
            v215._object = 0xA300000000000000;
            v343 = String.init(repeating:count:)(v215, v214 - 1);

            MEMORY[0x245D0D240](v212, v211);

            v211 = v343._object;
            v212 = v343._countAndFlagsBits;
          }

          v343._countAndFlagsBits = countAndFlagsBits;
          v343._object = object;

          MEMORY[0x245D0D240](v212, v211);

          v217 = v343._countAndFlagsBits;
          v216 = v343._object;

          v218 = AttributedString.characters.modify();
          specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(v217, v216, v209);
          v218(&v343, 0);
          v219 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
          [v219 setFirstLineHeadIndent_];
          v331 = v219;
          [v219 setParagraphSpacingBefore_];
          String.count.getter();
          v220 = type metadata accessor for AttributedString();
          v221 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
          v222 = v306;
          v330 = v220;
          v328 = v221;
          AttributedStringProtocol.index(_:offsetByCharacters:)();
          v223 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x277CC8C20]);
          v224 = v302;
          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }

          v294 = v223;
          v318 = v217;
          v327 = v216;
          v225 = v275;
          v280 = *v274;
          v280(v275, v209, v224);
          v226 = v277;
          v182 = v224;
          v227 = *v273;
          (*v273)(v225 + *(v277 + 48), v222, v224);
          v228 = v276;
          outlined init with copy of NotificationModel.Symbol?(v225, v276, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
          v229 = *(v226 + 48);
          v230 = v287;
          v227(v287, v228, v182);
          v231 = (v228 + v229);
          v232 = v304;
          v304(v231, v182);
          outlined init with take of AttributedString?(v225, v228, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
          v233 = *(v226 + 48);
          v234 = v230;
          v279 = *(v300 + 36);
          v281 = v227;
          v227(v279 + v230, v228 + v233, v182);
          v232(v228, v182);
          if (one-time initialization token for list != -1)
          {
            swift_once();
          }

          v235 = static CAFUISettingInfoFontTypes.list;
          v236 = static CAFUISettingInfoFontTypes.list;
          v237 = AttributedString.subscript.modify();
          v341 = v235;
          v238 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
          AttributedSubstring.subscript.setter();
          v237(&v343, 0);
          [v331 copy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSParagraphStyle);
          swift_dynamicCast();
          v239 = v342;
          v240 = AttributedString.subscript.modify();
          v340 = v239;
          lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
          AttributedSubstring.subscript.setter();
          (v240)(&v341, 0);
          String.count.getter();

          v241 = v306;
          v242 = v307;
          AttributedStringProtocol.index(_:offsetByCharacters:)();
          LOBYTE(v240) = dispatch thunk of static Comparable.<= infix(_:_:)();
          result = outlined destroy of RequestTemporaryContentModel?(v234, &_sSny10Foundation16AttributedStringV5IndexVGMd);
          if ((v240 & 1) == 0)
          {
            goto LABEL_96;
          }

          v330 = v238;
          v198 = v275;
          v280(v275, v242, v182);
          v199 = v277;
          v200 = v198 + *(v277 + 48);
          v201 = v241;
          goto LABEL_86;
        }
      }

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_74;
    }

    v160 = v262;
    AttributedString.subscript.getter();
    v161 = v260;
    AttributedSubstring.subscript.getter();
    (*v267)(v160, v269);
    v162 = v299;
    if (v80(v161, 1, v299) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v161, &_s10Foundation18PresentationIntentVSgMd);
      v163 = 1;
    }

    else
    {
      v167 = v257;
      v279(v257, v161, v162);
      v163 = PresentationIntent.indentationLevel.getter();
      (*v282)(v167, v162);
    }

    v168._countAndFlagsBits = 0x80E28780E28780E2;
    v168._object = 0xA900000000000087;
    v343 = String.init(repeating:count:)(v168, v163);

    MEMORY[0x245D0D240](2273370669, 0xA400000000000000);

    v169 = v343._object;
    v170 = v343._countAndFlagsBits;

    v171 = AttributedString.characters.modify();
    v172 = v307;
    specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(v170, v169, v307);
    v171(&v343, 0);
    v173 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v173 setFirstLineHeadIndent_];
    v331 = v173;
    [v173 setParagraphSpacingBefore_];
    String.count.getter();
    v174 = type metadata accessor for AttributedString();
    v330 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    v175 = v306;
    v176 = v172;
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    v177 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x277CC8C20]);
    v178 = v302;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      break;
    }

    v294 = v177;
    v318 = v174;
    v327 = v170;
    v328 = v169;
    v180 = v275;
    v280 = *v274;
    v280(v275, v176, v178);
    v181 = v277;
    v182 = v178;
    v183 = *v273;
    (*v273)(v180 + *(v277 + 48), v175, v178);
    v184 = v276;
    outlined init with copy of NotificationModel.Symbol?(v180, v276, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v185 = *(v181 + 48);
    v186 = v287;
    v183(v287, v184, v182);
    v187 = (v184 + v185);
    v188 = v304;
    v304(v187, v182);
    outlined init with take of AttributedString?(v180, v184, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v189 = *(v181 + 48);
    v279 = *(v300 + 36);
    v281 = v183;
    v183(v279 + v186, v184 + v189, v182);
    v188(v184, v182);
    if (one-time initialization token for list != -1)
    {
      swift_once();
    }

    v190 = static CAFUISettingInfoFontTypes.list;
    v191 = static CAFUISettingInfoFontTypes.list;
    v192 = AttributedString.subscript.modify();
    v341 = v190;
    v193 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedSubstring.subscript.setter();
    v192(&v343, 0);
    [v331 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSParagraphStyle);
    swift_dynamicCast();
    v194 = v342;
    v195 = AttributedString.subscript.modify();
    v340 = v194;
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
    AttributedSubstring.subscript.setter();
    (v195)(&v341, 0);
    String.count.getter();

    v196 = v306;
    v197 = v307;
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    LOBYTE(v195) = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = outlined destroy of RequestTemporaryContentModel?(v287, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    if ((v195 & 1) == 0)
    {
      goto LABEL_94;
    }

    v330 = v193;
    v198 = v275;
    v280(v275, v197, v182);
    v199 = v277;
    v200 = v198 + *(v277 + 48);
    v201 = v196;
LABEL_86:
    v243 = v281;
    v281(v200, v201, v182);
    v244 = v276;
    outlined init with copy of NotificationModel.Symbol?(v198, v276, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v245 = *(v199 + 48);
    v243(v287, v244, v182);
    v246 = (v244 + v245);
    v247 = v304;
    v304(v246, v182);
    v248 = v287;
    outlined init with take of AttributedString?(v198, v244, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v243(v279 + v248, v244 + *(v199 + 48), v182);
    v247(v244, v182);
    if (one-time initialization token for listItemNumberFont != -1)
    {
      swift_once();
    }

    v249 = static CAFUISettingInfoFontTypes.listItemNumberFont;
    v250 = static CAFUISettingInfoFontTypes.listItemNumberFont;
    v251 = AttributedString.subscript.modify();
    v341 = v249;
    AttributedSubstring.subscript.setter();
    v251(&v343, 0);

    outlined destroy of RequestTemporaryContentModel?(v248, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    (v336)(v278, v6);
    v25 = v312;
LABEL_89:
    v252 = v306;
    AttributedString.startIndex.getter();
    v253 = v307;
    v254 = v302;
    v255 = dispatch thunk of static Equatable.== infix(_:_:)();
    v304(v252, v254);
    if ((v255 & 1) == 0)
    {
      v256 = AttributedString.characters.modify();
      specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(10, 0xE100000000000000, v253);
      v256(&v343, 0);
    }

    outlined destroy of RequestTemporaryContentModel?(v313, &_s10Foundation18PresentationIntentV4KindOSgMd);
    (*v282)(v289, v299);
    outlined destroy of RequestTemporaryContentModel?(v253, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v69 = v288;
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v25[2] = a1;
  v25[3] = a2;
  v17 = type metadata accessor for AttributedString.Index();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x277CC8C20]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = *(v17 - 8);
    v25[0] = v14;
    v20 = v19;
    v21 = *(v19 + 16);
    v25[1] = v4;
    v21(v13, a3, v17);
    v21(&v13[*(v8 + 48)], a3, v17);
    outlined init with copy of NotificationModel.Symbol?(v13, v11, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v22 = *(v8 + 48);
    v23 = *(v20 + 32);
    v23(v16, v11, v17);
    v24 = *(v20 + 8);
    v24(&v11[v22], v17);
    outlined init with take of AttributedString?(v13, v11, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v23(&v16[*(v25[0] + 36)], &v11[*(v8 + 48)], v17);
    v24(v11, v17);
    type metadata accessor for AttributedString.CharacterView();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x277CC8B30]);
    lazy protocol witness table accessor for type String and conformance String();
    dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
    return outlined destroy of RequestTemporaryContentModel?(v16, &_sSny10Foundation16AttributedStringV5IndexVGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute);
  }

  return result;
}

void sub_24237DA0C()
{
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t outlined init with take of AttributedString?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

id static UIColor.cafui_primaryLabel.getter()
{
  v0 = [objc_opt_self() _carSystemPrimaryColor];

  return v0;
}

id static UIColor.cafui_tertiaryLabel.getter()
{
  v0 = [objc_opt_self() _carSystemTertiaryColor];

  return v0;
}

id static UIColor.cafui_secondarySystemFill.getter()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

id static UIColor.cafui_carSystemFocus.getter()
{
  v0 = [objc_opt_self() _carSystemFocusColor];

  return v0;
}

id static UIColor.cafui_primaryDisabledLabel.getter()
{
  v0 = [objc_opt_self() systemGrayColor];

  return v0;
}

id static UIColor.cafui_secondaryLabel.getter()
{
  v0 = [objc_opt_self() _carSystemSecondaryColor];

  return v0;
}

id static UIColor.cafui_tableCellPlainBackground.getter(SEL *a1)
{
  result = [objc_opt_self() *a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id static UIColor.cafui_primaryFocusLabel.getter()
{
  v0 = [objc_opt_self() _carSystemFocusLabelColor];

  return v0;
}

id static UIColor.cafui_secondaryFocusLabel.getter()
{
  v0 = [objc_opt_self() _carSystemFocusPrimaryColor];

  return v0;
}

id static UIColor.cafui_tertiarySystemFill.getter()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];

  return v0;
}

uint64_t CAFUISwitchRepresentable.configureCell(_:)(uint64_t a1, uint64_t a2, char *a3)
{
  v74 = a3;
  v6 = type metadata accessor for CAFUITileCellConfiguration(0);
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v82 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v73 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  static UIListContentConfiguration.valueCell()();
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v19, v21);
  v76 = v16;
  v22 = v16;
  v23 = v74;
  v24 = *(v22 + 8);
  v25 = v19;
  v86 = v15;
  v26 = v6;
  v77 = v24;
  v78 = v22 + 8;
  v24(v25, v15);
  v27 = *(v23 + 1);
  (*(v27 + 16))(a2, v27);
  UIListContentConfiguration.text.setter();
  (*(v27 + 72))(a2, v27);
  v84 = v21;
  UIListContentConfiguration.image.setter();
  v28 = swift_allocObject();
  v29 = a2;
  *(v28 + 2) = a2;
  *(v28 + 3) = v23;
  v83 = v28;
  *(v28 + 4) = v3;
  v30 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  v75 = v30;
  outlined init with copy of CAFUITileCellConfiguration?(a1 + v30, v14);
  v31 = v26;
  v32 = (*(v85 + 48))(v14, 1, v26);
  v81 = a1;
  if (v32)
  {
    swift_unknownObjectRetain();
    outlined destroy of CAFUITileCellConfiguration?(v14);
    v33 = v29;
LABEL_3:
    v34 = (*(v23 + 2))(v33, v23);
    objc_allocWithZone(type metadata accessor for CAFUISwitchView());
    v35 = v83;

    v36 = CAFUISwitchView.init(value:handler:)(v34 & 1, partial apply for closure #1 in CAFUISwitchRepresentable.configureCell(_:), v35);
    goto LABEL_4;
  }

  v42 = v82;
  outlined init with copy of CAFUITileCellConfiguration(v14, v82);
  swift_unknownObjectRetain();
  outlined destroy of CAFUITileCellConfiguration?(v14);
  v43 = *(v42 + *(v26 + 32));
  v44 = v43;
  outlined destroy of CAFUITileCellConfiguration(v42);
  v33 = v29;
  if (!v43)
  {
    goto LABEL_3;
  }

  type metadata accessor for CAFUISwitchView();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {

    goto LABEL_3;
  }

  v36 = v45;
  v46 = *(v23 + 2);
  v47 = v44;
  v48 = v46(v33, v23) & 1;
  v49 = OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch;
  if (v48 != [*&v36[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch] isOn])
  {
    v50 = v46(v33, v23);
    v51 = &v36[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_handler];
    v52 = v83;
    *v51 = partial apply for closure #1 in CAFUISwitchRepresentable.configureCell(_:);
    v51[1] = v52;

    v53 = *&v36[v49];

    [v53 setOn:v50 & 1 animated:0];
  }

  a1 = v81;
LABEL_4:
  v37 = (a1 + OBJC_IVAR____TtC5CAFUI25CAFUIAutomakerSettingCell_representable);
  swift_beginAccess();
  if (*v37)
  {
    v38 = v37[1];
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 40);
    swift_unknownObjectRetain();
    v41 = v40(ObjectType, v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 1;
  }

  [*&v36[OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_uiSwitch] setEnabled_];
  v73 = (*(v27 + 8))(v33, v27);
  v55 = v54;
  v74 = v36;
  v56 = v31;
  v57 = v31[5];
  v58 = v76;
  v59 = v82;
  v60 = v86;
  (*(v76 + 16))(v82 + v57, v84, v86);
  (*(v58 + 56))(v59 + v57, 0, 1, v60);
  v61 = (*(v27 + 24))(v33, v27);
  v63 = v62;
  v64 = (*(v27 + 32))(v33, v27);
  v65 = CAFListContentRepresentable.isLimitedUI.getter(v33, v27);
  *v59 = v73;
  v59[1] = v55;
  v66 = (v59 + v56[6]);
  *v66 = v61;
  v66[1] = v63;
  *(v59 + v56[7]) = v64;
  v67 = v74;
  *(v59 + v56[8]) = v74;
  *(v59 + v56[9]) = 0;
  *(v59 + v56[10]) = v65 & 1;
  v68 = v79;
  outlined init with copy of CAFUITileCellConfiguration(v59, v79);
  (*(v85 + 56))(v68, 0, 1, v56);
  v69 = v80;
  v70 = v81;
  v71 = v75;
  outlined init with copy of CAFUITileCellConfiguration?(v81 + v75, v80);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v68, v70 + v71);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v69);

  outlined destroy of CAFUITileCellConfiguration?(v69);
  outlined destroy of CAFUITileCellConfiguration?(v68);
  outlined destroy of CAFUITileCellConfiguration(v59);
  return v77(v84, v86);
}

uint64_t sub_24237E5E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t CAFUISwitchRepresentable.cellSelected()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 32))(v7, a1);
  *v5 = !*v5;
  result = v4(v7, 0);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 3;
  return result;
}

UIImage_optional __swiftcall UIImage.imageByScaling(targetHeight:)(Swift::Double targetHeight)
{
  v2 = v1;
  if (targetHeight <= 0.0 || ([v1 size], v4 <= 0.0))
  {
    _StringGuts.grow(_:)(30);
    MEMORY[0x245D0D240](0x6548746567726174, 0xED00003D74686769);
    Double.write<A>(to:)();
    MEMORY[0x245D0D240](0x20656372756F7320, 0xED00003D657A6973);
    [v1 size];
    v20 = CGSize.description.getter();
    MEMORY[0x245D0D240](v20);

    specialized static CAFUILogger.error(_:function:file:line:)(0, 0xE000000000000000, 0xD00000000000001DLL, 0x8000000242429C10, 13);

    v18 = 0;
  }

  else
  {
    [v1 size];
    v6 = targetHeight / v5;
    v7 = [v1 size];
    v9 = destructiveProjectEnumData for CAFNotificationSource.Destination(v7, v6 * v8, targetHeight);
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v13 = swift_allocObject();
    *(v13 + 2) = v2;
    v13[3] = v9;
    v13[4] = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UIImage.imageByScaling(targetHeight:);
    *(v14 + 24) = v13;
    v21[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v21[3] = &block_descriptor_1;
    v15 = _Block_copy(v21);
    v16 = v2;

    v17 = [v12 imageWithActions_];

    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      v18 = v17;
    }
  }

  result.value.super.isa = v18;
  result.is_nil = v19;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id UIImage.fit(to:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = 0.0;
  if (a2 == 0.0 && a3 == 0.0 || (result = [v3 size], v10 == 0.0) && v9 == 0.0)
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v15 = a2 / a3;
    [v3 size];
    v17 = v16;
    [v3 size];
    v19 = v17 / v18;
    [v3 size];
    if (v19 >= a2 / a3)
    {
      v14 = a2 / v20;
    }

    else
    {
      v14 = a3 / v21;
    }

    [v3 size];
    v12 = v14 * v22;
    result = [v3 size];
    v13 = v14 * v23;
    if (v19 >= v15)
    {
      if (v15 < v19)
      {
        v7 = a3 * 0.5 - v13 * 0.5;
      }

      v11 = 0.0;
    }

    else
    {
      v11 = a2 * 0.5 - v12 * 0.5;
    }
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  return result;
}

UIImage_optional __swiftcall UIImage.rotated90Degrees(clockwise:)(Swift::Bool clockwise)
{
  v3 = [v1 CGImage];
  if (v3)
  {
    v4 = v3;
    if (clockwise)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v3 scale:v5 orientation:1.0];

    goto LABEL_18;
  }

  v8 = [v1 imageAsset];
  if (!v8)
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 traitCollectionWithUserInterfaceStyle_];
  v12 = [v10 traitCollectionWithUserInterfaceStyle_];
  v13 = [v9 imageWithTraitCollection_];
  v14 = [v9 imageWithTraitCollection_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v15 = [v6 imageAsset];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v13 CGImage];
  if (!v17)
  {

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v14 CGImage];
  v20 = v14;
  if (!v19)
  {

    goto LABEL_16;
  }

  v21 = v19;
  if (clockwise)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v26 = v20;
  v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v18 scale:v22 orientation:1.0];
  [v16 registerImage:v23 withTraitCollection:v11];

  v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v21 scale:v22 orientation:1.0];
  [v16 registerImage:v24 withTraitCollection:v12];

LABEL_18:
  v25 = v6;
  result.value.super.isa = v25;
  result.is_nil = v7;
  return result;
}

uint64_t sub_24237EE94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t CAFUISymbol.rawValue.getter(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000028;
      break;
    case 2:
    case 17:
    case 20:
      result = 0xD000000000000029;
      break;
    case 3:
      result = 0xD000000000000031;
      break;
    case 5:
      result = 0xD00000000000003CLL;
      break;
    case 6:
      result = 0xD000000000000037;
      break;
    case 7:
      result = 0xD000000000000039;
      break;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
    case 12:
      result = 0xD000000000000043;
      break;
    case 10:
    case 25:
    case 28:
      result = 0xD000000000000044;
      break;
    case 11:
    case 14:
    case 29:
      result = 0xD00000000000004CLL;
      break;
    case 13:
      result = 0xD00000000000004BLL;
      break;
    case 15:
      result = 0xD000000000000054;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0xD000000000000032;
      break;
    case 21:
      result = 0xD00000000000003DLL;
      break;
    case 22:
      result = 0xD000000000000038;
      break;
    case 23:
      result = 0xD00000000000003ALL;
      break;
    case 24:
      result = 0xD000000000000030;
      break;
    case 26:
      result = 0xD000000000000045;
      break;
    case 27:
    case 30:
      result = 0xD00000000000004DLL;
      break;
    case 31:
      result = 0xD000000000000055;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t CAFUISymbol.symbolName.getter(char a1)
{
  v32 = type metadata accessor for Unicode.Scalar.Properties();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = CAFUISymbol.rawValue.getter(a1);
  v5 = String.count.getter();
  if (!v5)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_38:
    v35 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = BidirectionalCollection<>.joined(separator:)();

    return v29;
  }

  v6 = v5;
  v33 = v4;
  v37 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_41;
  }

  v8 = 0;
  v30 = (v2 + 8);
  v9 = v37;
  v34 = v6;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    result = String.subscript.getter();
    if ((v11 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      goto LABEL_40;
    }

    v13 = result;
    v14 = v11;
    if ((v11 & 0x1000000000000000) != 0)
    {
      v19 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v16 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *v15;
      }

      v17 = v16;
      v18 = (__clz(~v16) - 24) << 16;
      if (v17 < 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 65541;
      }
    }

    v20 = 4 * v12;
    if (4 * v12 == v19 >> 14)
    {
      result = specialized Collection.first.getter(v13, v14);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_42;
      }

      v21 = v31;
      Unicode.Scalar.properties.getter();
      v22 = Unicode.Scalar.Properties.isLowercase.getter();
      (*v30)(v21, v32);
      if (v22)
      {
        goto LABEL_31;
      }
    }

    if ((Character._isLowercased.getter() & 1) == 0)
    {
      goto LABEL_30;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      if (v20 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
      {
        goto LABEL_28;
      }
    }

    else if (v20 != ((4 * _StringGuts.fastUTF8ScalarLength(startingAt:)(0)) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_28;
    }

    result = specialized Collection.first.getter(v13, v14);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    v23 = v31;
    Unicode.Scalar.properties.getter();
    v24 = Unicode.Scalar.Properties.isCased.getter();
    (*v30)(v23, v32);
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_28:
    if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
    {
LABEL_30:
      countAndFlagsBits = String.lowercased()()._countAndFlagsBits;
      v35 = 46;
      v36 = 0xE100000000000000;
      MEMORY[0x245D0D240](countAndFlagsBits);

      v13 = v35;
      v14 = v36;
    }

LABEL_31:
    v37 = v9;
    v27 = *(v9 + 16);
    v26 = *(v9 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      v9 = v37;
    }

    *(v9 + 16) = v27 + 1;
    v28 = v9 + 16 * v27;
    *(v28 + 32) = v13;
    *(v28 + 40) = v14;
    result = String.index(after:)();
    ++v8;
    if (v10 == v34)
    {

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = MEMORY[0x245D0D260](15, a1 >> 16);
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

id CAFUIPickerTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = MEMORY[0x245D0D180](a2, a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CAFUIPickerTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UIBackgroundConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v3[OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v3[OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row];
  *v15 = 0;
  v15[8] = 1;
  if (a3)
  {
    v16 = MEMORY[0x245D0D180](a2, a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for CAFUIPickerTableCell();
  v23.receiver = v3;
  v23.super_class = v17;
  v18 = objc_msgSendSuper2(&v23, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v19 = v18;
  v20 = MEMORY[0x245D0D180](0xD000000000000014, 0x8000000242424650);
  [v19 setAccessibilityIdentifier_];

  static UIBackgroundConfiguration.listCell()();
  result = [objc_opt_self() tableCellPlainBackgroundColor];
  if (result)
  {
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v22 = v19;
    MEMORY[0x245D0D4F0](v9);

    (*(v11 + 8))(v13, v10);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CAFUIPickerTableCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row;
  *v2 = 0;
  *(v2 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CAFUIPickerTableCell.init(reuseIdentifier:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row;
  *v2 = 0;
  *(v2 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CAFUIPickerTableCell.isHighlightable.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable) || (*(v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row + 8) & 1) != 0)
  {
    v1 = 0;
    return v1 & 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row);
  v3 = *(v0 + OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  result = v5(ObjectType, v3);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(result + 16))
  {
    v7 = *(result + 40 * v2 + 64);
    swift_unknownObjectRelease();

    v1 = v7 ^ 1;
    return v1 & 1;
  }

  __break(1u);
  return result;
}

unint64_t CAFUIPickerTableCell.configure(for:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v3[OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_representable];
  *v13 = a1;
  *(v13 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v14 = IndexPath.row.getter();
  v15 = &v3[OBJC_IVAR____TtC5CAFUI20CAFUIPickerTableCell_row];
  *v15 = v14;
  v15[8] = 0;
  ObjectType = swift_getObjectType();
  v17 = *(a2 + 16);
  v63 = ObjectType;
  v18 = v17(ObjectType, a2);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *(v18 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v59 = a2;
  v60 = a3;
  v61 = v11;
  v20 = v3;
  v21 = v18 + 40 * result;
  v22 = *(v21 + 48);
  v23 = *(v21 + 56);

  v24 = v64;
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  if (v23)
  {
    v65[0] = v22;
    v65[1] = v23;
    static CharacterSet.whitespaces.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v25 = StringProtocol.trimmingCharacters(in:)();
    v27 = v26;
    (*(v8 + 8))(v10, v7);

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      UIListContentConfiguration.secondaryText.setter();
    }

    else
    {
    }
  }

  v29 = v61;
  v65[3] = v61;
  v65[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  v31 = v62;
  (*(v62 + 16))(boxed_opaque_existential_1, v24, v29);
  v32 = v20;
  MEMORY[0x245D0D4E0](v65);
  [v20 setAccessoryType_];
  v33 = v59;
  v34 = *(v59 + 24);
  v35 = v34(v63, v59);
  v36 = IndexPath.row.getter();
  v37 = *(v35 + 16);
  v38 = 32;
  while (v37)
  {
    v39 = *(v35 + v38);
    v38 += 8;
    --v37;
    if (v39 == v36)
    {

      v40 = *MEMORY[0x277D76920];
      v41 = objc_opt_self();
      v42 = [v41 configurationWithTextStyle:v40 scale:2];
      v43 = [v41 configurationWithWeight_];
      v44 = [v42 configurationByApplyingConfiguration_];

      v45 = v44;
      v46 = MEMORY[0x245D0D180](0x72616D6B63656863, 0xE90000000000006BLL);
      v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

      v48 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      v49 = [objc_opt_self() _carSystemFocusColor];
      [v48 setTintColor_];

      v29 = v61;
      [v32 setAccessoryView_];

      v31 = v62;
      goto LABEL_14;
    }
  }

  [v32 setAccessoryView_];
LABEL_14:
  v50 = v34(v63, v33);
  v51 = IndexPath.row.getter();
  v52 = v50;
  v53 = *(v50 + 16);
  v54 = 32;
  v55 = 3;
  v56 = v64;
  while (v53)
  {
    v57 = *(v52 + v54);
    v54 += 8;
    --v53;
    if (v57 == v51)
    {
      goto LABEL_19;
    }
  }

  v55 = 0;
LABEL_19:

  [v32 setAccessoryType_];
  return (*(v31 + 8))(v56, v29);
}

id CAFUIPickerTableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIPickerTableCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CAFSoundDistribution.resettable.getter()
{
  type metadata accessor for CAFSoundDistribution();
  lazy protocol witness table accessor for type CAFSoundDistribution and conformance CAFSoundDistribution();
  v0 = CAFObserved<>.observable.getter();
  v1 = dispatch thunk of CAFSoundDistributionObservable.balance.getter();

  CAFSoundDistribution.balanceCenter.getter();
  if (v2 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v1 == v2)
  {
    v3 = CAFObserved<>.observable.getter();
    v4 = dispatch thunk of CAFSoundDistributionObservable.fade.getter();

    if ((v4 & 0x100) == 0)
    {
      CAFSoundDistribution.fadeCenter.getter();
      if (v5 < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void CAFSoundDistribution.balanceCenter.getter()
{
  v1 = [v0 balanceRange];
  v2 = [v1 maximumValue];

  v3 = [v0 balanceRange];
  v4 = [v3 minimumValue];

  v5 = vcvtd_n_f64_s64(v2 - v4, 1uLL) + v4;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -129.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 128.0)
  {
    v6 = v5;
    v7 = [v0 balanceRange];
    [v7 valueRoundedToNearestStepValue_];

    return;
  }

LABEL_7:
  __break(1u);
}

void CAFSoundDistribution.fadeCenter.getter()
{
  if ([v0 hasFade])
  {
    v1 = [v0 fadeRange];
    v2 = [v1 maximumValue];

    v3 = [v0 fadeRange];
    v4 = [v3 minimumValue];

    v5 = vcvtd_n_f64_s64(v2 - v4, 1uLL) + v4;
    if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -129.0)
    {
      if (v5 < 128.0)
      {
        v6 = v5;
        v7 = [v0 fadeRange];
        [v7 valueRoundedToNearestStepValue_];

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

double CAFSoundDistribution.balanceScale.getter()
{
  v1 = [v0 balanceRange];
  v2 = [v1 maximumValue];

  v3 = [v0 balanceRange];
  v4 = [v3 minimumValue];

  return ([v0 balance] - v4) / (v2 - v4);
}

void CAFSoundDistribution.balanceScale.setter(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    _StringGuts.grow(_:)(61);
    MEMORY[0x245D0D240](0xD00000000000003BLL, 0x800000024242A560);
    Double.write<A>(to:)();
    specialized static CAFUILogger.error(_:function:file:line:)(0, 0xE000000000000000, 0x5365636E616C6162, 0xEC000000656C6163, 39);

    return;
  }

  v4 = [v1 balanceRange];
  v5 = [v4 maximumValue];

  v6 = [v1 balanceRange];
  v7 = [v6 minimumValue];

  v8 = (v5 - v7) * a1;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v9 == v9)
  {

    [v1 setBalance_];
  }
}

double CAFSoundDistribution.fadeScale.getter()
{
  v1 = [v0 hasFade];
  result = 0.5;
  if (v1)
  {
    v3 = [v0 fadeRange];
    v4 = [v3 maximumValue];

    v5 = [v0 fadeRange];
    v6 = [v5 minimumValue];

    return ([v0 fade] - v6) / (v4 - v6);
  }

  return result;
}

void CAFSoundDistribution.fadeScale.setter(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    _StringGuts.grow(_:)(58);
    MEMORY[0x245D0D240](0xD000000000000038, 0x800000024242A520);
    Double.write<A>(to:)();
    specialized static CAFUILogger.error(_:function:file:line:)(0, 0xE000000000000000, 0x6C61635365646166, 0xE900000000000065, 62);

    return;
  }

  v4 = [v1 fadeRange];
  v5 = [v4 maximumValue];

  v6 = [v1 fadeRange];
  v7 = [v6 minimumValue];

  v8 = (v5 - v7) * a1;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v9 == v9)
  {

    [v1 setFade_];
  }
}

Swift::Void __swiftcall CAFSoundDistribution.reset()()
{
  if ([v0 hasFade])
  {
    type metadata accessor for CAFSoundDistribution();
    lazy protocol witness table accessor for type CAFSoundDistribution and conformance CAFSoundDistribution();
    v1 = CAFObserved<>.observable.getter();
    v2 = CAFObserved<>.observable.getter();
    v3 = CAFSoundDistributionObservable.observed.getter();

    CAFSoundDistribution.fadeCenter.getter();
    dispatch thunk of CAFSoundDistributionObservable.fade.setter();
  }

  type metadata accessor for CAFSoundDistribution();
  lazy protocol witness table accessor for type CAFSoundDistribution and conformance CAFSoundDistribution();
  v6 = CAFObserved<>.observable.getter();
  v4 = CAFObserved<>.observable.getter();
  v5 = CAFSoundDistributionObservable.observed.getter();

  CAFSoundDistribution.balanceCenter.getter();
  dispatch thunk of CAFSoundDistributionObservable.balance.setter();
}

unint64_t type metadata accessor for CAFSoundDistribution()
{
  result = lazy cache variable for type metadata for CAFSoundDistribution;
  if (!lazy cache variable for type metadata for CAFSoundDistribution)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFSoundDistribution);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFSoundDistribution and conformance CAFSoundDistribution()
{
  result = lazy protocol witness table cache variable for type CAFSoundDistribution and conformance CAFSoundDistribution;
  if (!lazy protocol witness table cache variable for type CAFSoundDistribution and conformance CAFSoundDistribution)
  {
    type metadata accessor for CAFSoundDistribution();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFSoundDistribution and conformance CAFSoundDistribution);
  }

  return result;
}

id specialized CAFListContentRepresentable.symbolImage.getter()
{
  v1 = [v0 symbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *MEMORY[0x277D76920];
  v7 = objc_opt_self();
  v8 = [v7 configurationWithTextStyle:v6 scale:2];
  v9 = [v7 configurationWithWeight_];
  v10 = [v8 configurationByApplyingConfiguration_];

  v11 = MEMORY[0x245D0D180](v3, v5);

  v12 = CAFUIImageForSymbolNameWithConfiguration(v11, v10);

  return v12;
}

void *specialized CAFListContentRepresentable.isLimitedUI.getter()
{
  if ([v0 hasLimitableUIElement] && (objc_msgSend(v0, sel_limitableUIElement) & 1) != 0 || (CAFAutomakerSetting.isLimitableUIByAncestor.getter() & 1) != 0)
  {
    result = specialized CAFListContentRepresentable.session.getter();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = [result limitUserInterfaces];
    if (v3)
    {
      v4 = v3;
      if ([v3 BOOLValue])
      {
        v5 = [v2 configuration];
        v6 = [v5 limitableUserInterfaces];

        return ((v6 >> 5) & 1);
      }
    }

    else
    {
    }
  }

  return 0;
}

id CAFSingleSelectImageSetting.detailLabel.getter()
{
  v1 = [v0 currentUserVisibleValue];
  v2 = [v0 listUserVisibleValue];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);

  if (v4 <= v1)
  {
    return 0;
  }

  v5 = [v0 listUserVisibleValue];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v0 currentUserVisibleValue];
  if (*(v6 + 16) > result)
  {
    v8 = *(v6 + 16 * result + 32);

    return v8;
  }

  __break(1u);
  return result;
}

id CAFSingleSelectImageSetting.detailImage.getter()
{
  v1 = [v0 currentUserVisibleValue];
  v2 = [v0 images];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);

  if (v4 <= v1)
  {
    return 0;
  }

  v5 = [v0 images];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v0 currentUserVisibleValue];
  if (*(v6 + 16) <= result)
  {
    __break(1u);
    return result;
  }

  v8 = v6 + 16 * result;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  outlined copy of Data._Representation(v9, v10);

  v11 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithData_];

  outlined consume of Data._Representation(v9, v10);
  result = v13;
  if (!v13)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2423815F0()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t CAFSingleSelectImageSetting.selectedIndices.getter()
{
  v1 = [v0 currentUserVisibleValue];
  v2 = *(CAFSingleSelectImageSetting.items.getter() + 16);

  if (v2 <= v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2424235A0;
  v4 = [v0 currentUserVisibleValue];
  result = v3;
  *(v3 + 32) = v4;
  return result;
}

id key path getter for CAFSingleSelectImageSetting.selectedIndices : CAFSingleSelectImageSetting@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 currentUserVisibleValue];
  v5 = *(CAFSingleSelectImageSetting.items.getter() + 16);

  if (v5 <= v4)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2424235A0;
    result = [v3 currentUserVisibleValue];
    *(v7 + 32) = result;
  }

  *a2 = v7;
  return result;
}

void *CAFSingleSelectImageSetting.selectedIndices.setter(void *result)
{
  v2 = result;
  v3 = result[2];
  if (v3)
  {
    v4 = 0;
    while (v4 < v2[2])
    {
      v5 = v2[v4 + 4];
      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(CAFSingleSelectImageSetting.items.getter() + 16);

        if (v5 < v6)
        {

          if (v5 <= 0xFF)
          {

            return [v1 setCurrentUserVisibleValue_];
          }

LABEL_15:
          __break(1u);
          return result;
        }
      }

      if (v3 == ++v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  _StringGuts.grow(_:)(37);

  v7 = MEMORY[0x245D0D320](v2, MEMORY[0x277D83B88]);
  v9 = v8;

  MEMORY[0x245D0D240](v7, v9);

  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000023, 0x800000024242A5A0, 0x64657463656C6573, 0xEF73656369646E49, 68);
}

uint64_t (*CAFSingleSelectImageSetting.selectedIndices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 currentUserVisibleValue];
  v4 = *(CAFSingleSelectImageSetting.items.getter() + 16);

  if (v4 <= v3)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2424235A0;
    *(v5 + 32) = [v1 currentUserVisibleValue];
  }

  *a1 = v5;
  return CAFSingleSelectImageSetting.selectedIndices.modify;
}

uint64_t (*protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFSingleSelectImageSetting(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAFSingleSelectImageSetting.selectedIndices.modify(v2);
  return protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFSingleSelectImageSetting;
}

id _sSo29CAFMultipleSelectImageSettingC5CAFUI27CAFListContentRepresentableA2cDP22rowDetailedDescriptionSo014CAFUserVisiblejK0CSgvgTW_0()
{
  v1 = [v0 userVisibleDetailedDescription];

  return v1;
}

id _sSo29CAFMultipleSelectImageSettingC5CAFUI27CAFListContentRepresentableA2cDP14prominenceInfoSo24CAFProminenceInformationCSgvgTW_0()
{
  v1 = [v0 prominenceInfo];

  return v1;
}

unint64_t CAFMultipleSelectImageSetting.detailLabel.getter()
{
  v1 = &selRef_systemImageNamed_withConfiguration_;
  v2 = [v0 indicesUserVisibleValue];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_28:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    if (v4)
    {
      v20 = MEMORY[0x245D0D180](0xD000000000000015, 0x800000024242A600);
      v21 = CAFUILocalizedStringForKey(v20);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2424235A0;
      v23 = [v32 v1[179]];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v25 = __CocoaSet.count.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = MEMORY[0x277D83C10];
      *(v22 + 56) = MEMORY[0x277D83B88];
      *(v22 + 64) = v26;
      *(v22 + 32) = v25;
      v27 = String.init(format:_:)();
LABEL_22:

      return v27;
    }

    v5 = MEMORY[0x245D0D180](0x44455443454C4553, 0xED0000454E4F4E5FLL);
    v6 = CAFUILocalizedStringForKey(v5);
LABEL_31:
    v31 = v6;

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v27;
  }

  v7 = [v32 v1[179]];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }

LABEL_30:

    v5 = MEMORY[0x245D0D180](0x44455443454C4553, 0xED0000454E4F4E5FLL);
    v6 = CAFUILocalizedStringForKey(v5);
    goto LABEL_31;
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
    goto LABEL_30;
  }

LABEL_8:
  v9 = 0;
  v10 = &selRef_systemImageNamed_withConfiguration_;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245D0D9A0](v9, v8);
    }

    else
    {
      if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v11 = *(v8 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (([v11 v10[180]] & 0x8000000000000000) == 0)
    {
      v14 = v10;
      v15 = [v12 v10[180]];
      v16 = [v32 listUserVisibleValue];
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = *(v17 + 16);

      v19 = v15 < v18;
      v10 = v14;
      if (v19)
      {
        break;
      }
    }

    ++v9;
    if (v13 == v1)
    {
      goto LABEL_30;
    }
  }

  v28 = [v32 listUserVisibleValue];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v12 v10 + 120];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v29 + 16))
  {
    v27 = *(v29 + 16 * result + 32);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void CAFMultipleSelectImageSetting.detailImage.getter()
{
  v1 = [v0 indicesUserVisibleValue];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D0D9A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 integerValue];

  v6 = [v0 images];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);

  if (v5 < v8)
  {
    v9 = [v0 images];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 < *(v10 + 16))
      {
        v11 = v10 + 16 * v5;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
        outlined copy of Data._Representation(v12, v13);

        v14 = objc_allocWithZone(MEMORY[0x277D755B8]);
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v14 initWithData_];

        outlined consume of Data._Representation(v12, v13);
        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void CAFSingleSelectImageSetting.items.getter()
{
  v1 = [v0 listUserVisibleValue];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);

  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &selRef_systemImageNamed_withConfiguration_;
  while (1)
  {
    v14 = [v0 v7[175]];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v15 + 16);

    if (v5 >= v16)
    {
      goto LABEL_4;
    }

    v17 = [v0 v7[175]];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >= *(v18 + 16))
    {
      break;
    }

    v19 = *(v18 + v4 + 32);
    v20 = *(v18 + v4 + 40);
    outlined copy of Data._Representation(v19, v20);

    v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = [v21 initWithData_];

    outlined consume of Data._Representation(v19, v20);
    if (v23)
    {
      v24 = [v0 listUserVisibleValue];
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v27 = *(v25 + v4 + 32);
      v26 = *(v25 + v4 + 40);

      v36 = 0u;
      v37 = 0u;
      v34 = &type metadata for CAFUIImageRepresentableItem;
      v35 = &protocol witness table for CAFUIImageRepresentableItem;
      v28 = swift_allocObject();
      *&v33 = v28;
      *(v28 + 56) = 0u;
      *(v28 + 72) = 0u;
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      *(v28 + 32) = v23;
      *(v28 + 40) = 0;
      *(v28 + 48) = 1;
      outlined assign with take of Any?(&v36, v28 + 56);
      *(v28 + 88) = 0;
      outlined init with take of CAFUIImageRepresentableItemProtocol(&v33, &v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        v39 = v6;
      }

      v31 = v6[2];
      v30 = v6[3];
      if (v31 >= v30 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v6);
        v39 = v6;
      }

      v8 = *(&v37 + 1);
      v9 = v38;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      MEMORY[0x28223BE20](v10);
      v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v12, &v39, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v36);
      v7 = &selRef_systemImageNamed_withConfiguration_;
    }

LABEL_4:
    ++v5;
    v4 += 16;
    if (v3 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

char *CAFMultipleSelectImageSetting.selectedIndices.getter()
{
  v1 = v0;
  v2 = [v0 indicesUserVisibleValue];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:

    v7 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (v14)
    {
LABEL_12:
      v15 = (v7 + 32);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v20 = *v15++;
        v19 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          v21 = *(CAFSingleSelectImageSetting.items.getter(isUniquelyReferenced_nonNull_native) + 16);

          if (v19 < v21)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
            }

            v18 = *(v16 + 16);
            v17 = *(v16 + 24);
            if (v18 >= v17 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            }

            *(v16 + 16) = v18 + 1;
            *(v16 + 8 * v18 + 32) = v19;
          }
        }

        --v14;
      }

      while (v14);
      goto LABEL_24;
    }

LABEL_23:
    v16 = MEMORY[0x277D84F90];
LABEL_24:

    return v16;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v22 = v1;
    v6 = 0;
    v7 = v23;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D0D9A0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v23 + 16);
      v11 = *(v23 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v23 + 16) = v12 + 1;
      *(v23 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    v14 = *(v23 + 16);
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void CAFMultipleSelectImageSetting.selectedIndices.setter(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v3)
  {
    v4 = (isUniquelyReferenced_nonNull_native + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      v10 = *(CAFSingleSelectImageSetting.items.getter(isUniquelyReferenced_nonNull_native) + 16);

      if (v9 < v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setIndicesUserVisibleValue_];
}

uint64_t (*CAFMultipleSelectImageSetting.selectedIndices.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CAFMultipleSelectImageSetting.selectedIndices.getter();
  return CAFMultipleSelectImageSetting.selectedIndices.modify;
}

void CAFSingleSelectImageSetting.cellSelected()(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 images];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = specialized CAFListContentRepresentable.session.getter();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 configuration];

      [v10 rightHandDrive];
    }

    objc_allocWithZone(type metadata accessor for CAFUICollectionViewController());
    v11 = v2;
    v12 = a1();

    *a2 = v12;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 3;
  }
}

uint64_t CAFSingleSelectImageSetting.isEnabled.getter(uint64_t a1)
{
  if ((specialized CAFListContentRepresentable.isLimitedUI.getter() & 1) == 0)
  {
    return [v1 disabled] ^ 1;
  }

  _StringGuts.grow(_:)(47);

  v3 = v1;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x245D0D240](v5, v7);

  MEMORY[0x245D0D240](46, 0xE100000000000000);
  specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000002CLL, 0x800000024242A5D0, 0x656C62616E457369, 0xE900000000000064, a1);

  return 0;
}

uint64_t (*protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFMultipleSelectImageSetting(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CAFMultipleSelectImageSetting.selectedIndices.getter();
  return protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFMultipleSelectImageSetting;
}

void CAFIntegerSetting.numericDisplayKind.getter(BOOL *a1@<X8>)
{
  v3 = [v1 valueRange];
  v4 = [v3 maximum];

  v5 = [v4 longLongValue];
  v6 = [v1 valueRange];
  v7 = [v6 minimum];

  v8 = [v7 longLongValue];
  v9 = __OFSUB__(v5, v8);
  v10 = v5 - v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = [v1 valueRange];
    v12 = [v11 step];

    v13 = [v12 longLongValue];
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    *a1 = v10 / v14 > 19;
  }
}

uint64_t CAFIntegerSetting.showStepperBar.getter()
{
  if ([v0 hasStepperBarHidden])
  {
    return [v0 stepperBarHidden] ^ 1;
  }

  else
  {
    return 1;
  }
}

id protocol witness for CAFUINumericRepresentable.value.getter in conformance CAFIntegerSetting@<X0>(_DWORD *a1@<X8>)
{
  result = [v1 value];
  *a1 = result;
  return result;
}

id (*protocol witness for CAFUINumericRepresentable.value.modify in conformance CAFIntegerSetting(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 value];
  return protocol witness for CAFUINumericRepresentable.value.modify in conformance CAFIntegerSetting;
}

uint64_t protocol witness for CAFUINumericRepresentable.showStepperBar.getter in conformance CAFIntegerSetting()
{
  if ([v0 hasStepperBarHidden])
  {
    return [v0 stepperBarHidden] ^ 1;
  }

  else
  {
    return 1;
  }
}

id (*protocol witness for CAFUISwitchRepresentable.on.modify in conformance CAFBooleanSetting(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 on];
  return protocol witness for CAFUISwitchRepresentable.on.modify in conformance CAFBooleanSetting;
}

BOOL CAFButtonSetting.isEnabled.getter()
{
  if (specialized CAFListContentRepresentable.isLimitedUI.getter())
  {
    _StringGuts.grow(_:)(47);

    v1 = v0;
    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    MEMORY[0x245D0D240](v3, v5);

    MEMORY[0x245D0D240](46, 0xE100000000000000);
    specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000002CLL, 0x800000024242A5D0, 0x656C62616E457369, 0xE900000000000064, 271);

    return 0;
  }

  else
  {
    return ([v0 disabled] & 1) == 0 && objc_msgSend(v0, sel_buttonAction) == 0;
  }
}

id (*protocol witness for CAFUIButtonRepresentable.buttonAction.modify in conformance CAFButtonSetting(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 buttonAction];
  return protocol witness for CAFUIButtonRepresentable.buttonAction.modify in conformance CAFButtonSetting;
}

uint64_t CAFDeepLinkSetting.configureCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for CAFUITileCellConfiguration(0);
  v47 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  static UIListContentConfiguration.valueCell()();
  v53 = a1;
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v18, v20);
  v48 = *(v15 + 8);
  v49 = v15 + 8;
  v48(v18, v14);
  v21 = [v2 userVisibleLabel];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIListContentConfiguration.text.setter();
  specialized CAFListContentRepresentable.symbolImage.getter();
  UIListContentConfiguration.image.setter();
  if ([v2 hasUserVisibleValue])
  {
    v22 = [v2 userVisibleValue];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        UIListContentConfiguration.secondaryText.setter();
      }

      else
      {
      }
    }
  }

  v28 = [v2 identifier];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  (*(v15 + 16))(v10, v20, v14);
  v31 = *(v15 + 56);
  v32 = v10;
  v50 = v14;
  v31(v10, 0, 1, v14);
  v33 = [v2 userVisibleDescription];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = [v2 userVisibleDetailedDescription];
  v39 = specialized CAFListContentRepresentable.isLimitedUI.getter();
  *v13 = v46;
  v13[1] = v30;
  outlined init with take of UIListContentConfiguration?(v32, v13 + v11[5]);
  v40 = (v13 + v11[6]);
  *v40 = v35;
  v40[1] = v37;
  *(v13 + v11[7]) = v38;
  *(v13 + v11[8]) = 0;
  *(v13 + v11[9]) = 2;
  *(v13 + v11[10]) = v39 & 1;
  v41 = v51;
  outlined init with copy of CAFUITileCellConfiguration(v13, v51);
  (*(v47 + 56))(v41, 0, 1, v11);
  v42 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  v43 = v53;
  swift_beginAccess();
  v44 = v52;
  outlined init with copy of CAFUITileCellConfiguration?(v43 + v42, v52);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v41, v43 + v42);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v44);
  outlined destroy of RequestTemporaryContentModel?(v44, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of RequestTemporaryContentModel?(v41, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of CAFUITileCellConfiguration(v13);
  return (v48)(v20, v50);
}

uint64_t CAFDeepLinkSetting.requestContentManager.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static CAFUIListContentAssociatedObjects.CellValue);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for CAFUIRequestContentManager();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of RequestTemporaryContentModel?(v6, &_sypSgMd);
    return 0;
  }
}

uint64_t CAFDeepLinkSetting.requestContentManager.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &static CAFUIListContentAssociatedObjects.CellValue, a1, 0);
  swift_endAccess();
}

void (*CAFDeepLinkSetting.requestContentManager.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = CAFDeepLinkSetting.requestContentManager.getter();
  return CAFDeepLinkSetting.requestContentManager.modify;
}

void CAFDeepLinkSetting.requestContentManager.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  swift_beginAccess();

  objc_setAssociatedObject(v3, &static CAFUIListContentAssociatedObjects.CellValue, v2, 0);
  swift_endAccess();

  free(v1);
}

uint64_t CAFDeepLinkSetting.isEnabled.getter()
{
  v1 = v0;
  if (CAFDeepLinkSetting.requestContentManager.getter())
  {
    if (specialized CAFListContentRepresentable.isLimitedUI.getter())
    {
      _StringGuts.grow(_:)(47);

      v2 = v0;
      v3 = [v2 description];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      MEMORY[0x245D0D240](v4, v6);

      MEMORY[0x245D0D240](46, 0xE100000000000000);
      v7 = 0xD00000000000002CLL;
      v8 = 0x800000024242A5D0;
      v9 = 333;
LABEL_8:
      specialized static CAFUILogger.default(_:function:file:line:)(v7, v8, 0x656C62616E457369, 0xE900000000000064, v9);

      return 0;
    }

    v10 = [v0 contentURLAction];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    CAFUIRequestContentManager.state(for:)(v14);

    if (!v30)
    {
      _StringGuts.grow(_:)(23);

      v20 = [v1 contentURLAction];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      MEMORY[0x245D0D240](v21, v23);

      MEMORY[0x245D0D240](0xD000000000000012, 0x800000024242A690);
      v7 = 2118736;
      v8 = 0xE300000000000000;
      v9 = 339;
      goto LABEL_8;
    }

    if (v30 == 1)
    {
      _StringGuts.grow(_:)(19);

      v15 = [v1 contentURLAction];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      MEMORY[0x245D0D240](v16, v18);

      MEMORY[0x245D0D240](0x6961766120736920, 0xEE002E656C62616CLL);
      v19 = 345;
    }

    else
    {
      _StringGuts.grow(_:)(24);

      v25 = [v1 contentURLAction];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      MEMORY[0x245D0D240](v26, v28);

      MEMORY[0x245D0D240](0xD000000000000013, 0x800000024242A670);
      v19 = 342;
    }

    specialized static CAFUILogger.default(_:function:file:line:)(2118736, 0xE300000000000000, 0x656C62616E457369, 0xE900000000000064, v19);

    v29 = [v1 disabled];

    return v29 ^ 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void CAFDeepLinkSetting.cellSelected()(uint64_t a1@<X8>)
{
  v3 = [v1 contentURLAction];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 2;
}

void protocol witness for CAFListContentRepresentable.cellSelected() in conformance CAFDeepLinkSetting(uint64_t a1@<X8>)
{
  v3 = [v1 contentURLAction];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 2;
}

uint64_t CAFStaticSetting.configureCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for CAFUITileCellConfiguration(0);
  v46 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  static UIListContentConfiguration.valueCell()();
  v44 = a1;
  specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v18, v20);
  v47 = *(v15 + 8);
  v48 = v15 + 8;
  v47(v18, v14);
  v21 = [v2 userVisibleLabel];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIListContentConfiguration.text.setter();
  v22 = [v2 userVisibleValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIListContentConfiguration.secondaryText.setter();
  specialized CAFListContentRepresentable.symbolImage.getter();
  UIListContentConfiguration.image.setter();
  v23 = [v2 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v25;
  v43 = v24;

  (*(v15 + 16))(v10, v20, v14);
  v26 = *(v15 + 56);
  v45 = v10;
  v49 = v14;
  v26(v10, 0, 1, v14);
  v27 = [v2 userVisibleDescription];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v2 userVisibleDetailedDescription];
  v33 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
  v34 = v44;
  swift_beginAccess();
  v35 = *(v34 + v33);
  LOBYTE(v33) = specialized CAFListContentRepresentable.isLimitedUI.getter();
  v36 = v42;
  *v13 = v43;
  v13[1] = v36;
  outlined init with take of UIListContentConfiguration?(v45, v13 + v11[5]);
  v37 = (v13 + v11[6]);
  *v37 = v29;
  v37[1] = v31;
  *(v13 + v11[7]) = v32;
  *(v13 + v11[8]) = 0;
  *(v13 + v11[9]) = v35;
  *(v13 + v11[10]) = v33 & 1;
  v38 = v50;
  outlined init with copy of CAFUITileCellConfiguration(v13, v50);
  (*(v46 + 56))(v38, 0, 1, v11);
  v39 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  v40 = v51;
  outlined init with copy of CAFUITileCellConfiguration?(v34 + v39, v51);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v38, v34 + v39);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v40);
  outlined destroy of RequestTemporaryContentModel?(v40, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of RequestTemporaryContentModel?(v38, &_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  outlined destroy of CAFUITileCellConfiguration(v13);
  return (v47)(v20, v49);
}

id CAFStaticSetting.cellSelected()@<X0>(uint64_t a1@<X8>)
{
  result = CAFStaticSetting.firstChild.getter();
  if (result)
  {

    result = v1;
    v4 = 1;
  }

  else
  {
    v1 = 0;
    v4 = 3;
  }

  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return result;
}

uint64_t CAFStaticSetting.firstChild.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static CAFUIListContentAssociatedObjects.FirstChild);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of RequestTemporaryContentModel?(v6, &_sypSgMd);
    return 0;
  }
}

id CAFStaticSetting.rowDetailedDescription.getter()
{
  v1 = [v0 userVisibleDetailedDescription];

  return v1;
}

BOOL CAFStaticSetting.isHighlightable.getter()
{
  v1 = [v0 childrenSettingsIdentifiers];
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);

    if (v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t key path setter for CAFDeepLinkSetting.requestContentManager : CAFDeepLinkSetting(void **a1, void **a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  objc_setAssociatedObject(v7, a5, v6, 0);
  return swift_endAccess();
}

void CAFStaticSetting.firstChild.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &static CAFUIListContentAssociatedObjects.FirstChild, a1, 0);
  swift_endAccess();
}

void (*CAFStaticSetting.firstChild.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = CAFStaticSetting.firstChild.getter();
  return CAFStaticSetting.firstChild.modify;
}

void CAFStaticSetting.firstChild.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  swift_beginAccess();
  v7 = v4;
  objc_setAssociatedObject(v6, &static CAFUIListContentAssociatedObjects.FirstChild, v7, 0);
  swift_endAccess();

  if (a2)
  {
    v7 = *v5;
  }

  free(v3);
}

void CAFStaticSetting.accessoryType.getter(char *a1@<X8>)
{
  v2 = CAFStaticSetting.firstChild.getter();
  if (v2)
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

BOOL protocol witness for CAFListContentRepresentable.isHighlightable.getter in conformance CAFStaticSetting()
{
  v1 = [v0 childrenSettingsIdentifiers];
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);

    if (v4)
    {
      return 1;
    }
  }

  return result;
}

id protocol witness for CAFListContentRepresentable.cellSelected() in conformance CAFStaticSetting@<X0>(uint64_t a1@<X8>)
{
  result = CAFStaticSetting.firstChild.getter();
  if (result)
  {

    result = v1;
    v4 = 1;
  }

  else
  {
    v1 = 0;
    v4 = 3;
  }

  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return result;
}

void protocol witness for CAFListContentRepresentable.accessoryType.getter in conformance CAFStaticSetting(char *a1@<X8>)
{
  v2 = CAFStaticSetting.firstChild.getter();
  if (v2)
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

id CAFFloatSetting.rangeValues.getter()
{
  v1 = [v0 valueRange];

  return v1;
}

id protocol witness for CAFUIFloatingPointRepresentable.value.getter in conformance CAFFloatSetting@<X0>(_DWORD *a1@<X8>)
{
  result = [v1 value];
  *a1 = v4;
  return result;
}

id _sSo17CAFIntegerSettingC5CAFUI25CAFUINumericRepresentableA2cDP11rangeValuesSo8CAFRangeCvgTW_0()
{
  v1 = [v0 valueRange];

  return v1;
}

uint64_t CAFSingleSelectSetting.selectedIndices.getter()
{
  v1 = [v0 selectedEntryIndex];
  v2 = [v0 selectSettingEntryList];
  v3 = [v2 selectSettingEntrys];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingEntry);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2424235A0;
  v7 = [v0 selectedEntryIndex];
  result = v6;
  *(v6 + 32) = v7;
  return result;
}

id key path setter for CAFSingleSelectSetting.selectedIndices : CAFSingleSelectSetting(uint64_t *a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(v2 + 32);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4 <= 0xFF)
    {
      return [result setSelectedEntryIndex_];
    }

    __break(1u);
LABEL_5:
    LOBYTE(v4) = 0;
    return [result setSelectedEntryIndex_];
  }

  __break(1u);
  return result;
}

id CAFSingleSelectSetting.selectedIndices.setter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 32);

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (v2 > 0xFF)
  {
    __break(1u);
LABEL_5:

    LOBYTE(v2) = 0;
  }

  return [v1 setSelectedEntryIndex_];
}

id *(*CAFSingleSelectSetting.selectedIndices.modify(uint64_t *a1))(id *result, char a2)
{
  a1[1] = v1;
  *a1 = CAFSingleSelectSetting.selectedIndices.getter();
  return CAFSingleSelectSetting.selectedIndices.modify;
}

id *CAFSingleSelectSetting.selectedIndices.modify(id *result, char a2)
{
  v2 = *result;
  v3 = *(*result + 2);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v3 = v2[4];
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v3 <= 0xFF)
    {
LABEL_10:
      [result[1] setSelectedEntryIndex_];
    }

    __break(1u);
  }

  v4 = result;
  if (!v3)
  {

    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  v5 = v2[4];

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (v5 > 0xFF)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_14:
  v6 = v4[1];

  return [v6 setSelectedEntryIndex_];
}

uint64_t (*protocol witness for CAFUIPickerRepresentable.selectedIndices.modify in conformance CAFSingleSelectSetting(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAFSingleSelectSetting.selectedIndices.modify(v2);
  return protocol witness for CAFUIPickerRepresentable.selectedIndices.modify in conformance CAFSingleSelectSetting;
}

void protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFSingleSelectImageSetting(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *CAFSingleSelectSetting.availableItems.getter()
{
  v1 = [v0 selectSettingEntryList];
  v2 = [v1 selectSettingEntrys];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingEntry);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_19:

    return MEMORY[0x277D84F90];
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v3;
    v26 = v3 & 0xC000000000000001;
    v27 = v3;
    v8 = v28;
    v9 = v4;
    do
    {
      if (v26)
      {
        v10 = MEMORY[0x245D0D9A0](v6, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = [v10 userVisibleLabel];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v17 = [v11 userVisibleDescription];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = [v11 disabled];

      v24 = *(v28 + 16);
      v23 = *(v28 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v6;
      *(v28 + 16) = v24 + 1;
      v25 = v28 + 40 * v24;
      *(v25 + 32) = v14;
      *(v25 + 40) = v16;
      *(v25 + 48) = v19;
      *(v25 + 56) = v21;
      *(v25 + 64) = v22;
      v7 = v27;
    }

    while (v9 != v6);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t CAFSingleSelectImageSetting.rowLabel.getter()
{
  v1 = [v0 userVisibleLabel];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CAFSingleSelectImageSetting.rowDescription.getter()
{
  v1 = [v0 userVisibleDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *CAFMultipleSelectSetting.selectedIndices.getter()
{
  v1 = [v0 selectedEntryIndices];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    v6 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_12:
      v13 = (v6 + 32);
      v14 = MEMORY[0x277D84F90];
      v15 = &selRef_systemImageNamed_withConfiguration_;
      do
      {
        v19 = *v13++;
        v18 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          v20 = [v24 v15[192]];
          v21 = [v20 selectSettingEntrys];

          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingEntry);
          v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v22 >> 62)
          {
            v23 = __CocoaSet.count.getter();
            v15 = &selRef_systemImageNamed_withConfiguration_;
          }

          else
          {
            v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v18 < v23)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
            }

            v17 = *(v14 + 16);
            v16 = *(v14 + 24);
            if (v17 >= v16 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            }

            *(v14 + 16) = v17 + 1;
            *(v14 + 8 * v17 + 32) = v18;
            v15 = &selRef_systemImageNamed_withConfiguration_;
          }
        }

        --v12;
      }

      while (v12);
      goto LABEL_27;
    }

LABEL_26:
    v14 = MEMORY[0x277D84F90];
LABEL_27:

    return v14;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v25 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D0D9A0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      v11 = *(v25 + 16);
      v10 = *(v25 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    v12 = *(v25 + 16);
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void CAFMultipleSelectSetting.selectedIndices.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSelectedEntryIndices_];
}

uint64_t (*CAFMultipleSelectSetting.selectedIndices.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CAFMultipleSelectSetting.selectedIndices.getter();
  return CAFMultipleSelectSetting.selectedIndices.modify;
}

uint64_t CAFSingleSelectImageSetting.selectedIndices.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void CAFSingleSelectSetting.cellSelected()(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 selectSettingEntryList];
  v6 = [v5 selectSettingEntrys];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingEntry);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v12 = __CocoaSet.count.getter();

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v11 = 3;
    goto LABEL_6;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_allocWithZone(type metadata accessor for CAFUIPickerViewController());
  v9 = v2;
  v10 = a1();

  v11 = 0;
LABEL_6:
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
}

uint64_t (*protocol witness for CAFUIPickerRepresentable.selectedIndices.modify in conformance CAFMultipleSelectSetting(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CAFMultipleSelectSetting.selectedIndices.getter();
  return protocol witness for CAFUIPickerRepresentable.selectedIndices.modify in conformance CAFMultipleSelectSetting;
}

uint64_t protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFMultipleSelectImageSetting(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t protocol witness for CAFListContentRepresentable.identifier.getter in conformance CAFSingleSelectImageSetting(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t protocol witness for CAFListContentRepresentable.rowDescription.getter in conformance CAFSingleSelectImageSetting(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t specialized CAFListContentRepresentable.session.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static CAFUIListContentAssociatedObjects.CARSession);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CARSession);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of RequestTemporaryContentModel?(v6, &_sypSgMd);
    return 0;
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of CAFUIImageRepresentableItemProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id specialized CAFUICollectionViewController.init(setting:isRHD:)(void *a1, char a2, _BYTE *a3)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v79 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v79 - v14;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables] = v15;
  v16 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
  *v18 = 0;
  v18[8] = 1;
  v19 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting];
  *v19 = a1;
  v19[1] = &protocol witness table for CAFPairedDevicesInformation;
  v20 = a1;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items] = CAFPairedDevicesInformation.items.getter();
  a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_isRHD] = a2 & 1;
  v21 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v21 setMinimumLineSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424220;
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v23;
  AnyHashable.init<A>(_:)();
  v24 = MEMORY[0x277D84CC0];
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = 0;
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v25;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v24;
  *(inited + 144) = 0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 _setRowAlignmentsOptions_];

  v27 = type metadata accessor for CAFUICollectionViewController();
  v105.receiver = a3;
  v105.super_class = v27;
  v99 = v21;
  v28 = objc_msgSendSuper2(&v105, sel_initWithCollectionViewLayout_, v21);
  v29 = MEMORY[0x245D0D180](0x495F444552494150, 0xEE0053454E4F4850);
  v30 = CAFUILocalizedStringForKey(v29);

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = MEMORY[0x245D0D180](v31, v33);

  [v28 setTitle_];
  v101 = v28;

  objc_opt_self();
  v100 = v20;
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v97 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v98 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectImageSetting and conformance CAFSingleSelectImageSetting, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v37 = CAFObserved<>.observable.getter();
    v38 = dispatch thunk of CAFSingleSelectImageSettingObservable.$listUserVisibleValue.getter();
    v96 = v36;
    v39 = v38;

    v102 = v39;
    v95 = objc_opt_self();
    v40 = [v95 mainRunLoop];
    v104 = v40;
    v41 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v84 = v7;
    v93 = v41;
    v42 = *(v41 - 8);
    v92 = *(v42 + 56);
    v94 = (v42 + 56);
    v92(v13, 1, 1, v41);
    v43 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v83 = v9;
    v79 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v91 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v90 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v44 = v85;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v45 = v43;
    v46 = v87;
    Publisher<>.sink(receiveValue:)();

    (*(v86 + 8))(v44, v46);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v47 = CAFObserved<>.observable.getter();
    v48 = dispatch thunk of CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter();

    v102 = v48;
    v49 = [v95 mainRunLoop];
    v104 = v49;
    v92(v13, 1, 1, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    v50 = v80;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
    v51 = v82;
    Publisher<>.sink(receiveValue:)();

    (*(v81 + 8))(v50, v51);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v52 = CAFObserved<>.observable.getter();
    v53 = dispatch thunk of CAFSingleSelectImageSettingObservable.$images.getter();

    v102 = v53;
    v54 = [v95 mainRunLoop];
    v104 = v54;
    v92(v13, 1, 1, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v55 = v83;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v56 = v84;
    Publisher<>.sink(receiveValue:)();

    (*(v88 + 8))(v55, v56);
    swift_beginAccess();
  }

  else
  {
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (!v57)
    {

      v77 = &v107;
      goto LABEL_8;
    }

    v58 = v57;
    v81 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v95 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v59 = CAFObserved<>.observable.getter();
    v60 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$listUserVisibleValue.getter();

    v102 = v60;
    v94 = objc_opt_self();
    v61 = [v94 mainRunLoop];
    v104 = v61;
    v92 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v62 = *(v92 - 1);
    v91 = *(v62 + 56);
    v93 = v62 + 56;
    v91(v13, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v83 = v9;
    v84 = v7;
    v80 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v90 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v89 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v63 = v85;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v64 = v101;
    swift_unknownObjectWeakInit();
    v82 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v65 = v64;
    v66 = v87;
    Publisher<>.sink(receiveValue:)();

    (*(v86 + 8))(v63, v66);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v79 = v58;
    v67 = CAFObserved<>.observable.getter();
    v68 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$indicesUserVisibleValue.getter();

    v102 = v68;
    v69 = [v94 mainRunLoop];
    v104 = v69;
    v91(v13, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[UInt8], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    v70 = v96;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UInt8], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
    v71 = v98;
    Publisher<>.sink(receiveValue:)();

    (*(v97 + 8))(v70, v71);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v72 = CAFObserved<>.observable.getter();
    v73 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$images.getter();

    v102 = v73;
    v74 = [v94 mainRunLoop];
    v104 = v74;
    v91(v13, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v75 = v83;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v76 = v84;
    Publisher<>.sink(receiveValue:)();

    (*(v88 + 8))(v75, v76);
    swift_beginAccess();
  }

  AnyCancellable.store(in:)();
  swift_endAccess();

  v77 = &v106;
LABEL_8:

  return v101;
}

{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v49 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v49 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = v49 - v11;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables] = v12;
  v13 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting];
  *v16 = a1;
  v16[1] = &protocol witness table for CAFSingleSelectImageSetting;
  v17 = a1;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items] = CAFSingleSelectImageSetting.items.getter();
  a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_isRHD] = a2 & 1;
  v18 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v18 setMinimumLineSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424220;
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v20;
  AnyHashable.init<A>(_:)();
  v21 = MEMORY[0x277D84CC0];
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = 0;
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v22;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v21;
  *(inited + 144) = 0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v53 = v18;
  [v18 _setRowAlignmentsOptions_];

  v24 = type metadata accessor for CAFUICollectionViewController();
  v72.receiver = a3;
  v72.super_class = v24;
  v25 = objc_msgSendSuper2(&v72, sel_initWithCollectionViewLayout_, v18);
  v49[1] = v17;
  v26 = [v17 userVisibleLabel];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = MEMORY[0x245D0D180](v27, v29);

  [v25 setTitle_];

  v49[0] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
  v68 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectImageSetting and conformance CAFSingleSelectImageSetting, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
  v31 = CAFObserved<>.observable.getter();
  v32 = dispatch thunk of CAFSingleSelectImageSettingObservable.$listUserVisibleValue.getter();

  v69 = v32;
  v67 = objc_opt_self();
  v33 = [v67 mainRunLoop];
  v71 = v33;
  v65 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v34 = *(v65 - 8);
  v64 = *(v34 + 56);
  v66 = v34 + 56;
  v64(v10, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
  v62 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
  v63 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
  v61 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v35 = v50;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = MEMORY[0x277CBCD60];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
  v36 = v25;
  v37 = v52;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v35, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v38 = CAFObserved<>.observable.getter();
  v39 = dispatch thunk of CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter();

  v69 = v39;
  v40 = [v67 mainRunLoop];
  v71 = v40;
  v64(v10, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
  v41 = v54;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v42 = v56;
  Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v41, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v43 = CAFObserved<>.observable.getter();
  v44 = dispatch thunk of CAFSingleSelectImageSettingObservable.$images.getter();

  v69 = v44;
  v45 = [v67 mainRunLoop];
  v71 = v45;
  v64(v10, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
  v46 = v57;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
  v47 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v46, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v36;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v88 = v75 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = v75 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v75 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = v75 - v14;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables] = v15;
  v16 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
  *v18 = 0;
  v18[8] = 1;
  v19 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting];
  *v19 = a1;
  v19[1] = &protocol witness table for CAFMultipleSelectImageSetting;
  v20 = a1;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items] = CAFSingleSelectImageSetting.items.getter(v20);
  a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_isRHD] = a2 & 1;
  v21 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v21 setMinimumLineSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424220;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v23;
  AnyHashable.init<A>(_:)();
  v24 = MEMORY[0x277D84CC0];
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = 0;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v25;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v24;
  *(inited + 144) = 0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v21 _setRowAlignmentsOptions_];

  v27 = type metadata accessor for CAFUICollectionViewController();
  v100.receiver = a3;
  v100.super_class = v27;
  v92 = v21;
  v28 = objc_msgSendSuper2(&v100, sel_initWithCollectionViewLayout_, v21);
  v29 = [v20 userVisibleLabel];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = MEMORY[0x245D0D180](v30, v32);

  [v28 setTitle_];
  v96 = v28;

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    v88 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v76 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectImageSetting and conformance CAFSingleSelectImageSetting, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v36 = CAFObserved<>.observable.getter();
    v37 = dispatch thunk of CAFSingleSelectImageSettingObservable.$listUserVisibleValue.getter();

    v97 = v37;
    v87 = objc_opt_self();
    v38 = [v87 mainRunLoop];
    v99 = v38;
    v85 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v39 = *(v85 - 8);
    v84 = *(v39 + 56);
    v86 = (v39 + 56);
    v84(v13, 1, 1, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v82 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v83 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v81 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v40 = v89;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v41 = v96;
    swift_unknownObjectWeakInit();
    v80 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v42 = v41;
    v43 = v91;
    Publisher<>.sink(receiveValue:)();

    (*(v90 + 8))(v40, v43);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v75[1] = v35;
    v44 = CAFObserved<>.observable.getter();
    v45 = dispatch thunk of CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter();

    v97 = v45;
    v46 = [v87 mainRunLoop];
    v99 = v46;
    v84(v13, 1, 1, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    v47 = v77;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
    v48 = v79;
    Publisher<>.sink(receiveValue:)();

    (*(v78 + 8))(v47, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v49 = CAFObserved<>.observable.getter();
    v50 = dispatch thunk of CAFSingleSelectImageSettingObservable.$images.getter();

    v97 = v50;
    v51 = [v87 mainRunLoop];
    v99 = v51;
    v84(v13, 1, 1, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v52 = v93;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v53 = v95;
    Publisher<>.sink(receiveValue:)();

    (*(v94 + 8))(v52, v53);
  }

  else
  {
    v77 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v87 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v54 = CAFObserved<>.observable.getter();
    v55 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$listUserVisibleValue.getter();

    v97 = v55;
    v86 = objc_opt_self();
    v56 = [v86 mainRunLoop];
    v79 = v7;
    v57 = v56;
    v99 = v56;
    v58 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v78 = v6;
    v84 = v58;
    v59 = *(v58 - 8);
    v83 = *(v59 + 56);
    v85 = v59 + 56;
    v83(v13, 1, 1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v76 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v82 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v81 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v60 = v89;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    v61 = v96;
    swift_unknownObjectWeakInit();
    v80 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v62 = v61;
    v63 = v91;
    Publisher<>.sink(receiveValue:)();

    (*(v90 + 8))(v60, v63);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v64 = CAFObserved<>.observable.getter();
    v65 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$indicesUserVisibleValue.getter();

    v97 = v65;
    v66 = [v86 mainRunLoop];
    v99 = v66;
    v83(v13, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[UInt8], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    v67 = v88;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UInt8], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
    v68 = v78;
    Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v67, v68);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = CAFObserved<>.observable.getter();
    v70 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$images.getter();

    v97 = v70;
    v71 = [v86 mainRunLoop];
    v99 = v71;
    v83(v13, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v72 = v93;
    Publisher.receive<A>(on:options:)();
    outlined destroy of RequestTemporaryContentModel?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v73 = v95;
    Publisher<>.sink(receiveValue:)();

    (*(v94 + 8))(v72, v73);
  }

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v96;
}