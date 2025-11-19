uint64_t BannerPresentationManager.shouldPresentSystemApertureElementFromBanner(type:)(uint64_t a1)
{
  result = SBUIIsSystemApertureEnabled();
  if (result)
  {
    outlined init with copy of ConversationControlsType(a1, &v6);
    if (v9 == 7 && ((v3 = vorrq_s8(v7, v8), v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)), (v6 - 23) <= 1) ? (v5 = *&v4 == 0) : (v5 = 0), v5))
    {
      return 1;
    }

    else
    {
      outlined destroy of ConversationControlsType(&v6);
      return 0;
    }
  }

  return result;
}

void BannerPresentationManager.updatePresentedSystemApertureElement(type:sizeClass:dismissPresentedBannerReason:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  v103 = a4;
  v105 = a3;
  v106 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((Features.hudActivityManagerEnabled.getter() & 1) == 0)
  {
    v24 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x200);
    v25 = v24();
    if (v25)
    {
    }

    else
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.banners);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1BBC58000, v28, v29, "Unable to update presentedSystemApertureElement since its nil, making a new instance", v30, 2u);
        MEMORY[0x1BFB23DF0](v30, -1, -1);
      }

      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x250))();
      v26 = swift_unknownObjectRelease();
    }

    v31 = (v24)(v26);
    if (!v31)
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.banners);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1BBC58000, v40, v41, "Unable to makeSystemApertureElementProvider", v42, 2u);
        MEMORY[0x1BFB23DF0](v42, -1, -1);
      }

      v96 = 8;
      goto LABEL_77;
    }

    v32 = v31;
    if ((SBUIIsSystemApertureEnabled() & 1) == 0)
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.banners);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BBC58000, v34, v35, "Invalid state: features.isSystemApertureEnabled is false but presentedSystemApertureElement != nil", v36, 2u);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }
    }

    v37 = MEMORY[0x1E69E7D40];
    v38 = (*((*MEMORY[0x1E69E7D40] & *v32) + 0x558))() == 4 && (*((*v37 & *v32) + 0x1D8))() == 0;
    ConversationControlsType.associatedNotice.getter(&v110);
    v43 = v112.i64[0];
    if (v112.i64[0])
    {
      v44 = v112.i64[1];
      __swift_project_boxed_opaque_existential_1(&v110, v112.i64[0]);
      (*(v44 + 64))(v109, v43, v44);
      v45 = v109[0];
      __swift_destroy_boxed_opaque_existential_1(&v110);
      if (specialized == infix<A>(_:_:)(v45, 0))
      {
        v46 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x1E8))();
        if (v46)
        {
          v47 = v46;
          v48 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x1D8))();

          if (v48 == 3)
          {
            if (!v38)
            {
              v110 = 26;
              v111 = 0u;
              v112 = 0u;
              v113 = 7;
              v102 = static ConversationControlsType.== infix(_:_:)(a1, &v110);
              outlined destroy of ConversationControlsType(&v110);
              v49 = 0;
LABEL_63:
              v104 = v7;
              if (one-time initialization token for banners != -1)
              {
                swift_once();
              }

              v67 = type metadata accessor for Logger();
              v68 = __swift_project_value_buffer(v67, static Logger.banners);
              outlined init with copy of ConversationControlsType(a1, &v110);
              outlined init with copy of ConversationControlsType(a1, v109);
              v69 = v32;
              v100 = v68;
              v70 = Logger.logObject.getter();
              v71 = static os_log_type_t.default.getter();

              v72 = os_log_type_enabled(v70, v71);
              v99 = a5;
              v101 = v69;
              if (v72)
              {
                v98 = a6;
                v73 = v69;
                v74 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v108 = v97;
                *v74 = 136447490;
                outlined init with copy of ConversationControlsType(&v110, v107);
                v75 = specialized >> prefix<A>(_:)(v107);
                v77 = v76;
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit0A12ControlsTypeOSgMd);
                outlined destroy of ConversationControlsType(&v110);
                v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v108);

                *(v74 + 4) = v78;
                *(v74 + 12) = 2080;
                ConversationControlsType.associatedNotice.getter(v107);
                v79 = specialized >> prefix<A>(_:)(v107);
                v81 = v80;
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, &_s15ConversationKit6Notice_pSgMd);
                outlined destroy of ConversationControlsType(v109);
                v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v108);

                *(v74 + 14) = v82;
                *(v74 + 22) = 2082;
                v107[0] = (*((*MEMORY[0x1E69E7D40] & *v73) + 0x1D8))(v83);
                v84 = String.init<A>(reflecting:)();
                v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v108);

                *(v74 + 24) = v86;
                *(v74 + 32) = 2082;
                v87 = v105;
                if (v105)
                {
                  v88 = 0xE300000000000000;
                  v89 = 7104878;
                }

                else
                {
                  v107[0] = v106;
                  v89 = String.init<A>(reflecting:)();
                  v88 = v90;
                }

                v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, &v108);

                *(v74 + 34) = v91;
                *(v74 + 42) = 1024;
                *(v74 + 44) = v102 & 1;
                *(v74 + 48) = 1024;
                *(v74 + 50) = v49 & 1;
                _os_log_impl(&dword_1BBC58000, v70, v71, "updateSystemApertureElement type:%{public}s,\nnotice:%s,\ncurrent sizeClass:%{public}s,\nupdated sizeClass:%{public}s,\nshouldDismissPresentedBanner:%{BOOL}d,\nshouldIgnoreSizeClassUpdate:%{BOOL}d", v74, 0x36u);
                v92 = v97;
                swift_arrayDestroy();
                MEMORY[0x1BFB23DF0](v92, -1, -1);
                MEMORY[0x1BFB23DF0](v74, -1, -1);

                a6 = v98;
                v69 = v101;
              }

              else
              {

                outlined destroy of ConversationControlsType(v109);
                outlined destroy of ConversationControlsType(&v110);
                v87 = v105;
              }

              if (v49)
              {
                v93 = 0;
              }

              else
              {
                v93 = v106;
              }

              (*((*MEMORY[0x1E69E7D40] & *v69) + 0x420))(a1, v93, (v49 | v87) & 1, 0, 0);
              v94 = v104;
              if ((v102 & (v99 != 0)) == 1)
              {
                v95 = MEMORY[0x1BFB209B0](v103);
                [v94 dismissPresentedBannerForReason:v95 animated:0];
              }

              v96 = 12;
LABEL_77:
              *a6 = v96;
              return;
            }

LABEL_58:
            ConversationControlsType.associatedNotice.getter(&v110);
            v64 = v112.i64[0];
            if (v112.i64[0])
            {
              v65 = v112.i64[1];
              __swift_project_boxed_opaque_existential_1(&v110, v112.i64[0]);
              (*(v65 + 64))(v109, v64, v65);
              v66 = v109[0];
              __swift_destroy_boxed_opaque_existential_1(&v110);
              v49 = specialized == infix<A>(_:_:)(v66, 0);
LABEL_62:
              v102 = 1;
              goto LABEL_63;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v110, &_s15ConversationKit6Notice_pSgMd);
LABEL_61:
            v49 = 0;
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v110, &_s15ConversationKit6Notice_pSgMd);
    }

    if (!v38)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  outlined init with copy of ConversationControlsType(a1, &v110);
  if (v113 == 4)
  {
    v21 = a1;
    v23 = 0x4089000000000000;
    goto LABEL_45;
  }

  if (v113 == 5)
  {
    v21 = a1;
    v22 = a6;
    v23 = 0x4085E00000000000;
    goto LABEL_46;
  }

  if (v113 != 7 || ((v110 & 0xFFFFFFFFFFFFFFFDLL) != 0x14 ? (v18 = (v110 & 0xFFFFFFFFFFFFFFEFLL) == 5) : (v18 = 1), !v18 ? (v19 = (v110 - 25) > 1) : (v19 = 0), v19 || (v20 = vorrq_s8(v111, v112), *&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))))
  {
    v21 = a1;
    v23 = 0x4082C00000000000;
LABEL_45:
    v22 = a6;
    outlined destroy of ConversationControlsType(&v110);
    goto LABEL_46;
  }

  v21 = a1;
  v22 = a6;
  v23 = 0x4089000000000000;
LABEL_46:
  v104 = v6;
  v50 = *(v6 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_activityManager);
  outlined init with copy of ConversationControlsType(v21, &v110);
  v51 = ConversationControlsType.isTemporary.getter();
  UUID.init()();
  v52 = &v17[v15[11]];
  *(v52 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v17 = v23;
  outlined init with copy of ConversationControlsType(&v110, (v17 + 8));
  *(v17 + 7) = v106;
  v17[64] = v105 & 1;
  *(v52 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v17[65] = v51 & 1;
  (*(v12 + 16))(&v17[v15[8]], v14, v11);
  static Date.now.getter();
  (*(v12 + 8))(v14, v11);
  outlined destroy of ConversationControlsType(&v110);
  *&v17[v15[10]] = 0;
  v17[v15[12]] = 0;
  v53 = (*((*MEMORY[0x1E69E7D40] & *v50) + 0x118))(v17);
  v55 = v54;
  outlined destroy of HUDActivityManager.BannerUpdate();
  v110 = 5;
  v111 = 0u;
  v112 = 0u;
  v113 = 7;
  v56 = static ConversationControlsType.== infix(_:_:)(v21, &v110);
  outlined destroy of ConversationControlsType(&v110);
  if (v56)
  {
    v57 = v22;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.banners);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v104;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BBC58000, v59, v60, "Adding incoming call activity", v63, 2u);
      MEMORY[0x1BFB23DF0](v63, -1, -1);
    }

    *(v62 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_incomingCallActivity) = v55;
  }

  else
  {
    v57 = v22;
  }

  if (!v53 || (v110 = v53, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd), (swift_dynamicCast() & 1) == 0))
  {
    *v57 = 12;
  }
}

uint64_t BannerPresentationManager.onlyHasGreenTea3PCall.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (result)
  {
    v2 = result;
    v3 = [result provider];
    v4 = [v3 supportsDynamicSystemUI];

    if (v4 && (v5 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init], v6 = objc_msgSend(v5, sel_groupConversations), v5, v6))
    {
      HasChinaSKU = TUDeviceHasChinaSKU();

      if (HasChinaSKU)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t BannerPresentationManager.updatePresentedBanner(type:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))();
  if (v4)
  {
    v5 = v4;
    [*(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBannerDismissalTimer) invalidate];
    [*(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_systemApertureElementDismissalTimer) invalidate];
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.banners);
    outlined init with copy of ConversationControlsType(a1, v25);
    outlined init with copy of ConversationControlsType(a1, v24);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315394;
      outlined init with copy of ConversationControlsType(v25, v22);
      v11 = specialized >> prefix<A>(_:)(v22);
      v13 = v12;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsType(v25);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v23);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      ConversationControlsType.associatedNotice.getter(v22);
      v15 = specialized >> prefix<A>(_:)(v22);
      v17 = v16;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit6Notice_pSgMd);
      outlined destroy of ConversationControlsType(v24);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_1BBC58000, v7, v8, "updatePresentedBanner type:%s, notice:%s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    else
    {

      outlined destroy of ConversationControlsType(v24);
      outlined destroy of ConversationControlsType(v25);
    }

    if (((*((*v3 & *v5) + 0x418))(a1, 0, 1, 0) & 1) == 0)
    {
      lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
      v19 = swift_allocError();
      *v20 = 8;

      return v19;
    }
  }

  return 0;
}

void BannerPresentationManager.requestKeyboardFocus(wantsKeyboardFocus:)(char a1)
{
  v3 = outlined bridged method (pb) of @objc BannerPresentationManager.inCallSceneSessionIdentifier.getter(v1, &selRef_inCallSceneSessionIdentifier);
  if (v4)
  {
    v34 = v3;
    v35 = v4;
    v33 = a1;
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 connectedScenes];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type UIScene and conformance NSObject, &lazy cache variable for type metadata for UIScene);
    OUTLINED_FUNCTION_247();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v7 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v12 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v13 = ~v12;
      v14 = -v12;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v11 = v15 & *(v7 + 56);

      v9 = v13;
      v10 = 0;
    }

    v16 = (v9 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v17 = v10;
    v18 = v11;
    v19 = v10;
    if (v11)
    {
LABEL_13:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v21)
      {
        while (1)
        {
          v22 = v8;
          v23 = v7;
          v36 = v21;
          v24 = [v21 session];
          v25 = [v24 persistentIdentifier];

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          if (v26 == v34 && v35 == v28)
          {
            break;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v30)
          {
            goto LABEL_27;
          }

          v10 = v19;
          v11 = v20;
          v7 = v23;
          v8 = v22;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v21 = v37;
            v19 = v10;
            v20 = v11;
            if (v37)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

LABEL_27:

        outlined consume of Set<TUHandle>.Iterator._Variant();

        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          [v31 setAcceptsKeyboardFocus_];
          if (v33)
          {
            [v32 requestKeyboardFocusIsUserInitiated_];
          }
        }
      }

      else
      {
LABEL_24:
        outlined consume of Set<TUHandle>.Iterator._Variant();
      }
    }

    else
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v16)
        {
          goto LABEL_24;
        }

        v18 = *(v8 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.gameControllerDidRequestActivation()()
{
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_293();
    v1 = (*(v0 + 512))();
    if (v1)
    {
      v2 = v1;
      OUTLINED_FUNCTION_26_40();
      v4 = (*(v3 + 696))();

      (*(*v4 + 160))(0x6E6F4320656D6147, 0xEF72656C6C6F7274, 0, 0);
    }
  }

  BannerPresentationManager.requestKeyboardFocus(wantsKeyboardFocus:)(1);
}

Swift::Void __swiftcall BannerPresentationManager.gameControllerDidRequestDismissal()()
{
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_293();
    if ((*(v0 + 512))())
    {
      OUTLINED_FUNCTION_26_40();
      OUTLINED_FUNCTION_110_6();
      if (v1() != 4 || (OUTLINED_FUNCTION_26_40(), (*(v2 + 472))()))
      {
        BannerPresentationManager.gameControllerDidRequestActivation()();
        goto LABEL_9;
      }
    }
  }

  BannerPresentationManager.requestKeyboardFocus(wantsKeyboardFocus:)(0);
  OUTLINED_FUNCTION_293();
  if (!(*(v3 + 512))())
  {
    return;
  }

  OUTLINED_FUNCTION_26_40();
  OUTLINED_FUNCTION_110_6();
  v4();
LABEL_9:
}

void closure #1 in BannerPresentationManager.dismissPresentedBanner(forReason:animated:)(int a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *a3) + 0x208))(&v41);
    if (v42)
    {
      v39 = a1;
      outlined init with take of TapInteractionHandler(&v41, v44);
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.banners);
      outlined init with copy of IDSLookupManager(v44, &v41);
      v16 = a3;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = a4;
        v20 = v19;
        v38 = swift_slowAlloc();
        v40 = v38;
        *v20 = 136315906;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v16 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier), *(v16 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8), &v40);
        *(v20 + 12) = 2080;
        v22 = v42;
        v21 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        v23 = *(v21 + 8);
        HIDWORD(v36) = v18;
        v23(v22, v21);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*(v10 + 8))(v12, v9);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v40);

        *(v20 + 14) = v27;
        *(v20 + 22) = 1024;
        *(v20 + 24) = v39 & 1;
        *(v20 + 28) = 2080;
        *(v20 + 30) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a5, &v40);
        _os_log_impl(&dword_1BBC58000, v17, BYTE4(v36), "Dismissed banner:%s, notice:%s with result:%{BOOL}d for reason:%s", v20, 0x26u);
        v28 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v28, -1, -1);
        MEMORY[0x1BFB23DF0](v20, -1, -1);

        v29 = v44;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v44);
        v29 = &v41;
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v41, &_s15ConversationKit6Notice_pSgMd);
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.banners);
      v31 = a3;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44[0] = v35;
        *v34 = 136315650;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v31 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier), *(v31 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8), v44);
        *(v34 + 12) = 1024;
        *(v34 + 14) = a1 & 1;
        *(v34 + 18) = 2080;
        *(v34 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v44);
        _os_log_impl(&dword_1BBC58000, v32, v33, "Dismissed banner:%s with result:%{BOOL}d for reason:%s", v34, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v35, -1, -1);
        MEMORY[0x1BFB23DF0](v34, -1, -1);
      }
    }

    BannerPresentationManager.presentedBanner.setter(0);
  }
}

Swift::Void __swiftcall BannerPresentationManager.dismissPresentedBanner(matching:forReason:animated:)(Swift::OpaquePointer matching, Swift::String forReason, Swift::Bool animated)
{
  v4 = v3;
  object = forReason._object;
  countAndFlagsBits = forReason._countAndFlagsBits;
  OUTLINED_FUNCTION_5_18();
  if ((*(v8 + 488))())
  {
    OUTLINED_FUNCTION_82_11();
    OUTLINED_FUNCTION_3_52();
    (*(v9 + 496))(v12);

    MEMORY[0x1EEE9AC00](v10);
    if (specialized Sequence.contains(where:)())
    {
      v11 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
      [v4 dismissPresentedBannerForReason:v11 animated:animated];
    }

    outlined destroy of ConversationControlsType(v12);
  }
}

double BannerPresentationManager.getConversationControlsTypeForPresentedBanner()@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_67_12();
  v3 = (*(v2 + 488))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_26_40();
    (*(v5 + 496))(&v8);

    v6 = v9[0];
    *a1 = v8;
    *(a1 + 16) = v6;
    result = *(v9 + 9);
    *(a1 + 25) = *(v9 + 9);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = 7;
  }

  return result;
}

uint64_t shouldUpdate #1 (existing:) in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(void *a1, void *a2, char a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1F0);
  v7(&v26);
  v8 = v29;
  v9 = outlined destroy of ConversationControlsType(&v26);
  if (v8 == 6)
  {
    return 0;
  }

  (v7)(&v26, v9);
  if (v29 == 7)
  {
    v10 = vorrq_s8(v27, v28);
    v11 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
    if (v26 == 26 && *&v11 == 0)
    {
      outlined destroy of ConversationControlsType(&v26);
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.banners);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "shouldUpdatePresentedHUD=false for controlsType= incomingScreenSharingRequest";
      goto LABEL_23;
    }
  }

  v13 = outlined destroy of ConversationControlsType(&v26);
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity) || (v19 = (*((*v6 & *a2) + 0x188))(v13)) != 0 && (v20 = v19, v21 = [v19 isWaitOnHoldActive], v20, v21))
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.banners);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_24;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "shouldUpdatePresentedHUD=false for active smart holding presentation";
LABEL_23:
    _os_log_impl(&dword_1BBC58000, v15, v16, v18, v17, 2u);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
LABEL_24:

    return 0;
  }

  v22 = (*((*v6 & *a1) + 0x1D8))();
  if (v22 < 2)
  {
    goto LABEL_17;
  }

  if (v22 == 2)
  {
    return 0;
  }

  if (v22 == 3)
  {
LABEL_17:
    if (a3)
    {
      return 1;
    }

    v7(&v26);
    v23 = v29 != 1;
    outlined destroy of ConversationControlsType(&v26);
    return v23;
  }

  v26 = v22;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t canUpdateBanner #1 (to:) in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(uint64_t a1, id a2)
{
  if ([a2 isPresentingFullScreenCallUI])
  {
    ConversationControlsType.canShowOverICS.getter();
    v4 = v3;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.banners);
    outlined init with copy of ConversationControlsType(a1, v26);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315394;
      outlined init with copy of ConversationControlsType(v26, v24);
      v10 = specialized >> prefix<A>(_:)(v24);
      v12 = v11;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsType(v26);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v25);

      *(v8 + 4) = v13;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v4 & 1;
      _os_log_impl(&dword_1BBC58000, v6, v7, "canUpdateBanner for %s is %{BOOL}d, isPresentingFullScreenCallUI: 1", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    else
    {

      outlined destroy of ConversationControlsType(v26);
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.banners);
    outlined init with copy of ConversationControlsType(a1, v26);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      outlined init with copy of ConversationControlsType(v26, v24);
      v19 = specialized >> prefix<A>(_:)(v24);
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsType(v26);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v15, v16, "canUpdateBanner to %s is true because isPresentingFullScreenCallUI: 0", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    else
    {

      outlined destroy of ConversationControlsType(v26);
    }

    v4 = 1;
  }

  return v4 & 1;
}

Swift::Void __swiftcall BannerPresentationManager.updatePresentedHUDCornerRadius()()
{
  OUTLINED_FUNCTION_283_0();
  if ((*(v0 + 488))())
  {
    OUTLINED_FUNCTION_27_47();
    OUTLINED_FUNCTION_110_6();
    v1();
  }
}

Swift::Void __swiftcall BannerPresentationManager.bannerDismissedBySpringBoard()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  if (SBUIIsSystemApertureEnabled())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, static Logger.banners);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v7);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    if (Features.hudActivityManagerEnabled.getter())
    {
      type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
      type metadata accessor for MainActor();
      v17 = v1;
      v18 = static MainActor.shared.getter();
      OUTLINED_FUNCTION_37_0();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      OUTLINED_FUNCTION_59();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

      OUTLINED_FUNCTION_11();
      v21._countAndFlagsBits = 0xD000000000000026;
      HUDActivityManager.dismissPresentedBanner(forReason:animated:)(v21, 1);
    }

    OUTLINED_FUNCTION_293();
    v22 = OUTLINED_FUNCTION_115_5();
    v23(v22);
  }
}

uint64_t closure #1 in BannerPresentationManager.bannerDismissedBySpringBoard()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in BannerPresentationManager.bannerDismissedBySpringBoard(), v6, v5);
}

uint64_t closure #1 in BannerPresentationManager.bannerDismissedBySpringBoard()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_incomingCallActivity);
  if (v2)
  {
    v3 = *(*v2 + 304);

    v3(v4);
  }

  **(v0 + 16) = v2 == 0;
  OUTLINED_FUNCTION_13();

  return v5();
}

Swift::Void __swiftcall BannerPresentationManager.didOpenGameOverlay()()
{
  SBUIIsSystemApertureEnabled();
  OUTLINED_FUNCTION_283_0();
  if (v2)
  {
    if (!(*(v1 + 512))())
    {
      return;
    }

    OUTLINED_FUNCTION_27_47();
    v7 = v4;
    (*(v3 + 1080))();
  }

  else
  {
    v5 = (*(v1 + 272))();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 bannerPresentationManagerGameOverlayDidOpen];
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_11();
    v7 = MEMORY[0x1BFB209B0](0xD000000000000014);
    [v0 dismissPresentedBannerForReason_animated_];
  }
}

void BannerPresentationManager.requestPreferredLayoutMode()()
{
  OUTLINED_FUNCTION_283_0();
  if ((*(v0 + 512))())
  {
    OUTLINED_FUNCTION_27_47();
    OUTLINED_FUNCTION_110_6();
    v1();
  }
}

Swift::Void __swiftcall BannerPresentationManager.didOpenMessages()()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v4 = 7;
  OUTLINED_FUNCTION_20();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  BannerPresentationManager.presentBanner(as:type:reply:)();

  outlined destroy of ConversationControlsType(v2);
}

void closure #1 in BannerPresentationManager.didOpenMessages()(char a1, void *a2, void *a3)
{
  if (a1)
  {
    if (!SBUIIsSystemApertureEnabled())
    {
      return;
    }

    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x200))();
    if (v5)
    {
      oslog = v5;
      (*((*v4 & v5->isa) + 0x438))();
    }

    else
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.banners);
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1BBC58000, oslog, v17, "[SystemAperture] Unable to request preferredLayoutMode since there is no presentedSystemApertureElement", v18, 2u);
        MEMORY[0x1BFB23DF0](v18, -1, -1);
      }
    }

    goto LABEL_14;
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.banners);
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v9))
  {
LABEL_14:

    return;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v21 = v11;
  *v10 = 136315138;
  if (a2)
  {
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

  *(v10 + 4) = v19;
  _os_log_impl(&dword_1BBC58000, oslog, v9, "Failed to present banner after opening messages with error: %s", v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v11);
  MEMORY[0x1BFB23DF0](v11, -1, -1);
  MEMORY[0x1BFB23DF0](v10, -1, -1);
}

Swift::Void __swiftcall BannerPresentationManager.didRequestAVLessDowngrade()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_140_0();
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  BannerPresentationManager.placeholderCallGroupUUID.getter(v2);
  OUTLINED_FUNCTION_57(v2);
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.banners);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_42();
      v14 = OUTLINED_FUNCTION_166_3();
      *v2 = 138412290;
      *(v2 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      OUTLINED_FUNCTION_145_5();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    (*(v7 + 32))(v1, v2, v5);
    OUTLINED_FUNCTION_13_2();
    v22 = (*((*MEMORY[0x1E69E7D40] & v21) + 0x110))();
    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = v22;
    if ([v22 respondsToSelector_])
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v23 bannerPresentationManagerAVDowngradedGroupUUID_];

      swift_unknownObjectRelease();
LABEL_11:
      v25 = OUTLINED_FUNCTION_45_1();
      v26(v25);
      return;
    }

    v27 = OUTLINED_FUNCTION_45_1();
    v28(v27);
    swift_unknownObjectRelease();
  }
}

uint64_t BannerPresentationManager.placeholderCallGroupUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (PlaceholderCallCenter.activeCall.getter())
  {
    PlaceholderCall.callGroupUUID.getter(a1);
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_10_0();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

Swift::Void __swiftcall BannerPresentationManager.requestEphemeralSystemApertureAlert(reason:shouldOverridePersistentAssertion:)(Swift::String reason, Swift::Bool shouldOverridePersistentAssertion)
{
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_64_16();
    if ((*(v3 + 512))())
    {
      OUTLINED_FUNCTION_82_11();
      OUTLINED_FUNCTION_3_52();
      (*(v4 + 696))();

      v5 = OUTLINED_FUNCTION_309();
      v6(v5);
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, static Logger.banners);
    v25 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_29(v8, v9, v10, v11, v12, v13, v14, v15, v23, v25))
    {
      v16 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v16);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v17, v18, "requestEphemeralSystemApertureAlert called when system aperture isn't supported", v19, v20, v21, v22, v24, v26);
      OUTLINED_FUNCTION_3_83();
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.requestPersistentSystemApertureAlert(reason:)(Swift::String reason)
{
  OUTLINED_FUNCTION_55();
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_153();
    v2 = (*(v1 + 512))();
    if (v2)
    {
      v3 = v2;
      OUTLINED_FUNCTION_26_49();
      (*(v4 + 696))();

      v5 = OUTLINED_FUNCTION_45_1();
      v6(v5);
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, static Logger.banners);
    v25 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_29(v8, v9, v10, v11, v12, v13, v14, v15, v23, v25))
    {
      v16 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v16);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v17, v18, "requestPersistentSystemApertureAlert called when system aperture isn't supported", v19, v20, v21, v22, v24, v26);
      OUTLINED_FUNCTION_3_83();
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(Swift::String reason)
{
  OUTLINED_FUNCTION_55();
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_153();
    v2 = (*(v1 + 512))();
    if (v2)
    {
      v3 = v2;
      OUTLINED_FUNCTION_26_49();
      (*(v4 + 696))();

      v5 = OUTLINED_FUNCTION_45_1();
      v6(v5);
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, static Logger.banners);
    v25 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_29(v8, v9, v10, v11, v12, v13, v14, v15, v23, v25))
    {
      v16 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v16);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v17, v18, "invalidatePersistentSystemApertureAlert called when system aperture isn't supported", v19, v20, v21, v22, v24, v26);
      OUTLINED_FUNCTION_3_83();
    }
  }
}

void BannerPresentationManager.presentShareCardViewController(_:)()
{
  BannerPresentationManager.presentShareCardViewController(_:)();
}

{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153();
  v2 = (*(v1 + 488))();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_26_49();
    v6 = (*(v4 + 720))();

    if (v6)
    {
      type metadata accessor for ConversationHUDViewController();
      if (swift_dynamicCastClass())
      {
        v5 = OUTLINED_FUNCTION_6_4();
        v0(v5);
      }
    }
  }
}

uint64_t BannerPresentationManager.isMicIndicatorVisible.getter()
{
  SBUIIsSystemApertureEnabled();
  OUTLINED_FUNCTION_283_0();
  if (v1)
  {
    v2 = (*(v0 + 512))();
    if (v2)
    {
LABEL_3:
      v3 = v2;
      OUTLINED_FUNCTION_27_47();
      v5 = (*(v4 + 936))();

      return v5 & 1;
    }
  }

  else
  {
    v2 = (*(v0 + 488))();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

Swift::Void __swiftcall BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_6_4();

  v7 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

void protocol witness for SystemConversationControlsDelegate.invalidatePersistentSystemApertureAlert(reason:) in conformance BannerPresentationManager()
{
  v1 = MEMORY[0x1BFB209B0]();
  [v0 invalidatePersistentSystemApertureAlertWithReason_];
}

uint64_t BannerPresentationManager.inCallSceneSessionIdentifier.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 272))();
  if (v1)
  {
    v2 = [v1 inCallSceneSessionIdentifier];
    swift_unknownObjectRelease();
    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_305();
    }
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t BannerPresentationManager.backgroundActivitiesToSuppress.getter()
{
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 272))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v3 = [v2 backgroundActivitiesToSuppress];
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRelease();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id BannerPresentationManager.isAlertAvailable.getter(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 272))();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 *a1];
  swift_unknownObjectRelease();
  return v4;
}

id BannerPresentationManager.isSpringBoardLocked.getter()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 272))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v3 = [v2 bannerPresentationManagerWantsSpringBoardIsLockedStatus];
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

void *BannerPresentationManager.presentFullscreenUI()()
{
  OUTLINED_FUNCTION_5_18();
  result = (*(v0 + 272))();
  if (result)
  {
    [result bannerPresentationManagerShowFullscreenUI];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *BannerPresentationManager.deepLinkToFullScreenCallDetailsView()(SEL *a1)
{
  OUTLINED_FUNCTION_5_18();
  result = (*(v2 + 272))();
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 *a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void BannerPresentationManager.didDismiss(_:reason:)(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_108_4();
  (*(v5 + 352))();
  OUTLINED_FUNCTION_11_23();
  v7 = (*((*v4 & v6) + 0x1D8))();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_108_4();
    (*(v9 + 496))(v19);
    (*((*v4 & *v8) + 0xA98))(v19, a2);

    outlined destroy of ConversationControlsType(v19);
  }

  OUTLINED_FUNCTION_293();
  v11 = (*(v10 + 488))();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for SystemBannerHostViewController();
    v13 = a1;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_115_5();
      BannerPresentationManager.presentedBanner.setter(v15);
      OUTLINED_FUNCTION_293();
      v17 = (*(v16 + 272))();
      if (v17)
      {
        v18 = v17;
        if ([v17 respondsToSelector_])
        {
          [v18 bannerPresentationManagerDidDismissBanner];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.invalidateAndReschedulePresentedBannerTimer(reschedule:)(Swift::Bool reschedule)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBannerDismissalTimer;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBannerDismissalTimer) invalidate];
  if (!reschedule)
  {
    goto LABEL_9;
  }

  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  if (!(*(v6 + 488))())
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_49();
  v21 = v8;
  if ((*(v7 + 1256))())
  {
    OUTLINED_FUNCTION_26_49();
    if (((*(v9 + 1264))() & 1) == 0)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_4_120();
      (*((*v5 & v12) + 0x1F0))(aBlock);
      ConversationControlsType.dismissTimerDuration(inCallControls:)(0);
      outlined destroy of ConversationControlsType(aBlock);
      OUTLINED_FUNCTION_20();
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_278(v13);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v14 = swift_allocObject();
      *(v14 + 16) = aBlock;
      *(v14 + 24) = v21;
      aBlock[4] = partial apply for closure #1 in BannerPresentationManager.invalidateAndReschedulePresentedBannerTimer(reschedule:);
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_79_13();
      aBlock[2] = v15;
      aBlock[3] = &block_descriptor_41_2;
      v16 = _Block_copy(aBlock);
      v17 = v21;

      v19 = OUTLINED_FUNCTION_192_2(v18, sel_scheduledTimerWithTimeInterval_repeats_block_);

      _Block_release(v16);
      v20 = *(v2 + v4);
      *(v2 + v4) = v19;

LABEL_9:
      OUTLINED_FUNCTION_194_5();
      return;
    }
  }

  OUTLINED_FUNCTION_194_5();
}

Swift::Void __swiftcall BannerPresentationManager.invalidateAndRescheduleSystemApertureTimer(reschedule:)(Swift::Bool reschedule)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_systemApertureElementDismissalTimer;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_systemApertureElementDismissalTimer) invalidate];
  if (!reschedule || (v5 = MEMORY[0x1E69E7D40], OUTLINED_FUNCTION_293(), !(*(v6 + 512))()))
  {
LABEL_9:
    OUTLINED_FUNCTION_194_5();
    return;
  }

  OUTLINED_FUNCTION_3_52();
  OUTLINED_FUNCTION_110_6();
  if (v7())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, static Logger.banners);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v11);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_18();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_4_120();
    (*((*v5 & v17) + 0x1F0))(aBlock);
    ConversationControlsType.dismissTimerDuration(inCallControls:)(0);
    outlined destroy of ConversationControlsType(aBlock);
    OUTLINED_FUNCTION_20();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_278(v18);
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in BannerPresentationManager.invalidateAndRescheduleSystemApertureTimer(reschedule:);
    aBlock[5] = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_79_13();
    aBlock[2] = v19;
    aBlock[3] = &block_descriptor_45_0;
    v20 = _Block_copy(aBlock);

    v22 = OUTLINED_FUNCTION_192_2(v21, sel_scheduledTimerWithTimeInterval_repeats_block_);

    _Block_release(v20);
    v23 = *(v2 + v4);
    *(v2 + v4) = v22;

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_194_5();
}

void closure #1 in BannerPresentationManager.invalidateAndReschedulePresentedBannerTimer(reschedule:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a3) + 0x1D8))() == 2)
  {
    v11 = (*((*v10 & *v9) + 0x1D8))();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);

      v14 = (*((*v10 & *v9) + 0x1E8))();
      if (v14)
      {
        v15 = v14;
        (*((*v10 & *v14) + 0x208))(&v40);

        if (*(&v41 + 1))
        {
          outlined init with take of TapInteractionHandler(&v40, &v43);
          v16 = v45;
          __swift_project_boxed_opaque_existential_1(&v43, v45);
          (*(*(&v16 + 1) + 8))(v16, *(&v16 + 1));
          ConversationControlsNoticeCoordinator.noticeDismissed(noticeUUID:dismissContext:)();
          v17 = (*(v5 + 8))(v7, v4);
          (*((*v10 & *v13) + 0x88))(&v40, v17);
          if (*(&v41 + 1))
          {

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v40, &_s15ConversationKit6Notice_pSgMd);
          }

          else
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v40, &_s15ConversationKit6Notice_pSgMd);
            v35 = MEMORY[0x1BFB209B0](0xD000000000000023, 0x80000001BC517230);
            [v9 dismissPresentedBannerForReason:v35 animated:1];
          }

          __swift_destroy_boxed_opaque_existential_1(&v43);
          return;
        }
      }

      else
      {

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v40, &_s15ConversationKit6Notice_pSgMd);
    }

    v29 = MEMORY[0x1BFB209B0](0xD000000000000023, 0x80000001BC517230);
    [v9 dismissPresentedBannerForReason:v29 animated:1];

    return;
  }

  v18 = *((*v10 & *a3) + 0x1F0);
  v18(&v43);
  switch(v46)
  {
    case 1:
      outlined destroy of ConversationControlsType(&v43);
      goto LABEL_21;
    case 2:
    case 4:
      outlined destroy of ConversationControlsType(&v43);
      goto LABEL_32;
    case 3:
    case 6:
      outlined destroy of ConversationControlsType(&v43);
      goto LABEL_11;
    case 5:
      goto LABEL_32;
    case 7:
      if (!(v45 | *(&v45 + 1) | v43 | *(&v44 + 1) | v44))
      {
        goto LABEL_32;
      }

      v33 = v45 | *(&v45 + 1) | *(&v44 + 1) | v44;
      if (v43 == 1 && !v33)
      {
        goto LABEL_32;
      }

      if (v43 == 2 && !v33)
      {
        goto LABEL_32;
      }

      if (v43 == 3 && !v33)
      {
        goto LABEL_32;
      }

      v36 = v43 == 8 || (v43 & 0xFFFFFFFFFFFFFFFCLL) == 4;
      if (!v36 || v33)
      {
        if (v43 == 9 && !v33)
        {
          goto LABEL_32;
        }

        if (v43 == 10 && !v33)
        {
          goto LABEL_32;
        }

        if (v43 == 11 && !v33)
        {
          goto LABEL_32;
        }

        if (v43 == 12 && !v33)
        {
          goto LABEL_32;
        }

        if (v43 == 13 && !v33)
        {
          goto LABEL_32;
        }

        v37 = v43 & 0xFFFFFFFFFFFFFFFELL;
        v38 = v43 == 18 || v37 == 16;
        v39 = v38 || v37 == 14;
        if ((!v39 || v33) && (v43 == 19 && !v33 || v43 == 20 && !v33 || v43 == 21 && !v33 || v43 == 22 && !v33 || (v43 - 23) > 1 || v33))
        {
          goto LABEL_32;
        }
      }

LABEL_11:
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.banners);
      v20 = a3;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v40 = v24;
        *v23 = 136315138;
        v18(&v43);
        v25 = specialized >> prefix<A>(_:)(&v43);
        v27 = v26;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v43, &_s15ConversationKit0A12ControlsTypeOSgMd);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1BBC58000, v21, v22, "reset banner for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1BFB23DF0](v24, -1, -1);
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }

      goto LABEL_32;
    default:
LABEL_21:
      if (SBUIIsSystemApertureEnabled())
      {
LABEL_32:
        v34 = MEMORY[0x1BFB209B0](0xD000000000000023, 0x80000001BC517230);
        [v9 dismissPresentedBannerForReason:v34 animated:1];
      }

      else
      {
        v30 = (*((*v10 & *v9) + 0x1D8))();
        if (v30)
        {
          v31 = v30;
          v32 = ConversationControlsManager.shouldPresentCollaborationHUD.getter();

          if (v32)
          {
            v43 = 10;
            v44 = 0u;
            v45 = 0u;
            v46 = 7;
            BannerPresentationManager.presentBanner(as:type:reply:)(3);

            outlined destroy of ConversationControlsType(&v43);
            return;
          }
        }

        BannerPresentationManager.presentSystemHUD()();
        BannerPresentationManager.showInCallHUD()();
      }

      break;
  }
}

void closure #1 in BannerPresentationManager.invalidateAndRescheduleSystemApertureTimer(reschedule:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    BannerPresentationManager.systemApertureElementDismissalTimerFired()();
  }
}

Swift::Void __swiftcall BannerPresentationManager.systemApertureElementDismissalTimerFired()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_67_12();
  if ((*(v0 + 512))())
  {
    OUTLINED_FUNCTION_26_40();
    v12 = v2;
    if ((*(v1 + 688))())
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178();
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v3, static Logger.banners);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v5))
      {
        v6 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v6);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        OUTLINED_FUNCTION_18();
      }

      BannerPresentationManager.presentSystemHUD()();
    }
  }
}

BOOL BannerPresentationManager.hasAssociatedCall.getter()
{
  v0 = BannerPresentationManager.associatedCall.getter();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  return v0 != 0;
}

uint64_t BannerPresentationManager.wantsBannerWithoutScene.getter()
{
  if (BannerPresentationManager.onlyHasHandoffEligibleCall.getter())
  {
    HasHandedOff = 1;
  }

  else
  {
    HasHandedOff = BannerPresentationManager.onlyHasHandedOffCall.getter();
  }

  HasGreenTea3 = BannerPresentationManager.onlyHasGreenTea3PCall.getter();
  if (SBUIIsSystemApertureEnabled())
  {
    HasGreenTea3 |= HasHandedOff;
  }

  else
  {
    if (HasHandedOff)
    {
      goto LABEL_7;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    if ((*(v2 + 672))() & 1) == 0 && (BannerPresentationManager.onlyHasAVLessCall.getter())
    {
LABEL_7:
      HasGreenTea3 = 1;
    }
  }

  return HasGreenTea3 & 1;
}

void *BannerPresentationManager.onlyHasHandoffEligibleCall.getter()
{
  if ((BannerPresentationManager.onlyHasPlaceholderCall.getter() & 1) == 0)
  {
    return 0;
  }

  result = PlaceholderCallCenter.activeCall.getter();
  if (result)
  {
    v1 = *(result + 16);

    return (v1 == 3);
  }

  return result;
}

uint64_t BannerPresentationManager.onlyHasHandedOffCall.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (result)
  {

    v3 = (*((*v1 & *v0) + 0x188))();
    if (v3)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BannerPresentationManager.onlyHasAVLessCall.getter()
{
  if ((BannerPresentationManager.onlyHasPlaceholderCall.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = PlaceholderCallCenter.activeCall.getter();
  if (v0)
  {
    v1 = *(v0 + 16);

    if (v1 == 1)
    {
      return 1;
    }
  }

  result = PlaceholderCallCenter.activeCall.getter();
  if (result)
  {
    v3 = *(result + 16);

    return v3 == 2;
  }

  return result;
}

uint64_t closure #1 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:), v7, v6);
}

uint64_t closure #1 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_1();
  (*(v2 + 304))();
  *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_incomingCallActivity) = 0;

  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, static Logger.banners);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v6);
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v7, v8, "Ended incoming call activity");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t closure #2 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:), v7, v6);
}

uint64_t closure #2 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_0_1();
  (*(v0 + 304))();
  v1 = OUTLINED_FUNCTION_115_5();
  BannerPresentationManager.waitOnHoldHUDActivity.setter(v1);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v5);
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v6, v7, "Ended Wait on Hold activity");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v8();
}

void closure #3 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.banners);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Failed to present handoff completed banner with error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x178))(0);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.showVideoUpgradeRequest()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v12 = *(v2 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_bannerActivityManager);
  v24 = 31;
  v25 = 0u;
  v26 = 0u;
  v27 = 7;
  UUID.init()();
  v13 = v1 + v11[13];
  *(v13 + 8) = 0;
  swift_unknownObjectWeakInit();
  *v1 = 0x4089000000000000;
  outlined init with copy of ConversationControlsType(&v24, v1 + 8);
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v13 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v1 + 65) = 1;
  (*(v5 + 16))(v1 + v11[10], v9, v3);
  static Date.now.getter();
  v14 = OUTLINED_FUNCTION_170_0();
  v15(v14);
  outlined destroy of ConversationControlsType(&v24);
  *(v1 + v11[12]) = 0;
  *(v1 + v11[14]) = 0;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x110))();
  OUTLINED_FUNCTION_6_110();
  outlined destroy of HUDActivityManager.BannerUpdate();
  *(v2 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_videoUpgradeRequestActivity) = v16;

  if (v16)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v17 + 296))(v18, v19, v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_30_0();
}

void BannerPresentationManager.handleSecondaryPillWantsHUDDismissal(_:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v16 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v6 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_278(v7);
  swift_unknownObjectWeakInit();
  v17[4] = partial apply for closure #1 in BannerPresentationManager.handleSecondaryPillWantsHUDDismissal(_:);
  v17[5] = v5;
  OUTLINED_FUNCTION_5_73();
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v17[2] = v8;
  v17[3] = &block_descriptor_56_1;
  v9 = _Block_copy(v17);

  static DispatchQoS.unspecified.getter();
  v17[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_85();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v10, v11);
  v12 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v13, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v9);

  v14 = OUTLINED_FUNCTION_309();
  v15(v14);
  (*(v3 + 8))(v0, v16);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in BannerPresentationManager.handleSecondaryPillWantsHUDDismissal(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1BFB209B0](0xD00000000000002ELL, 0x80000001BC517200);
    [v1 dismissPresentedBannerForReason:v2 animated:1];
  }
}

void closure #1 in BannerPresentationManager.presentNewBanner(as:type:activityUUID:fromActivityManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v31[6] = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  v7 = outlined bridged method (mnnbgnnn) of @objc BNBannerSource.post(_:options:userInfo:)(a2, 1, a3, v31, a1);
  v8 = v31[0];
  if ((v7 & 1) == 0)
  {
    v10 = v31[0];
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.banners);
    outlined init with copy of ConversationControlsType(a4, v31);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315394;
      v18 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v30);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = ConversationControlsType.debugDescription.getter();
      v24 = v23;
      outlined destroy of ConversationControlsType(v31);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Banner Source failed to post banner, error: %s type %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v17, -1, -1);
      MEMORY[0x1BFB23DF0](v16, -1, -1);

      if (a5)
      {
LABEL_8:
        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v26 = swift_allocError();
        *v27 = 7;
        a5();

        v28 = v26;
LABEL_11:

        return;
      }
    }

    else
    {

      outlined destroy of ConversationControlsType(v31);
      if (a5)
      {
        goto LABEL_8;
      }
    }

    v28 = v11;
    goto LABEL_11;
  }

  if (a5)
  {
    v9 = v31[0];
    (a5)(0);
  }

  else
  {

    v29 = v8;
  }
}

Swift::Void __swiftcall BannerPresentationManager.didUpdatePresentationModeToDismissed()()
{
  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_11();
    v1 = MEMORY[0x1BFB209B0](0xD000000000000017);
    [v0 dismissPresentedBannerForReason:v1 animated:1];
  }
}

Swift::Void __swiftcall BannerPresentationManager.didUpdatePresentationModeToFullScreen()()
{
  BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()();
  OUTLINED_FUNCTION_5_18();
  if (!(*(v1 + 512))())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v9, static Logger.banners);
    v40 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v10, v11, v12, v13, v14, v15, v16, v17, v37, v40))
    {
      v18 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v18);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v19, v20, "Ignore request to invalidate alerting assertion since no presentedSystemApertureElement.", v21, v22, v23, v24, v38, v39);
      OUTLINED_FUNCTION_3_83();
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_52();
  OUTLINED_FUNCTION_110_6();
  if (v2())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, static Logger.banners);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v5))
    {
      v6 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v7, v8, "Ignore request to invalidate alerting assertion since it should remain active even if full screen.");
      OUTLINED_FUNCTION_26();
    }

LABEL_12:

    return;
  }

  OUTLINED_FUNCTION_3_52();
  (*(v25 + 1168))();
  if (Features.isEnhancedEmergencyEnabled.getter())
  {
    v26 = [objc_opt_self() sharedInstance];
    v27 = [v26 frontmostAudioOrVideoCall];

    if (v27)
    {
      if ([v27 isEmergency] && objc_msgSend(v27, sel_isActive))
      {
        OUTLINED_FUNCTION_28_48();
        BannerPresentationManager.updatePresentedSystemApertureElement(type:sizeClass:dismissPresentedBannerReason:)(v41, 0, 1, 0, 0, &v42);
        outlined destroy of ConversationControlsType(v41);
        v28 = v42;
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178();
        }

        v29 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v29, static Logger.banners);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v31))
        {
          OUTLINED_FUNCTION_42();
          v32 = OUTLINED_FUNCTION_166_3();
          *v0 = 138412290;
          if (v28 == 12)
          {
            v33 = 0;
            v34 = 0;
          }

          else
          {
            lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
            OUTLINED_FUNCTION_19_6();
            *v35 = v28;
            v33 = _swift_stdlib_bridgeErrorToNSError();
            v34 = v33;
          }

          *(v0 + 4) = v33;
          *v32 = v34;
          _os_log_impl(&dword_1BBC58000, v30, v31, "EnhancedEmergency: entered full screen, update jindo back to in call controls, error = %@", v0, 0xCu);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_sSo8NSObjectCSgMd);
          OUTLINED_FUNCTION_2_2();
          OUTLINED_FUNCTION_18();
        }
      }
    }
  }

  OUTLINED_FUNCTION_5_18();
  (*(v36 + 360))();
}

Swift::Void __swiftcall BannerPresentationManager.handleLockScreenStatusChanged()()
{
  OUTLINED_FUNCTION_283_0();
  if ((*(v0 + 512))())
  {
    OUTLINED_FUNCTION_27_47();
    OUTLINED_FUNCTION_110_6();
    v1();
  }
}

Swift::Void __swiftcall BannerPresentationManager.presentHUDForCurrentContext()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_67_12();
  v2 = (*(v1 + 472))();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_26_40();
    v5 = (*(v4 + 672))();
    ConversationControlsManager.controlsHUDUpdate(for:)(v5, v6, v7, v8, v9, v10, v11, v12, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v24, v25[0], v25[1], v25[2], v25[3]);

    swift_unknownObjectRelease();
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v13, static Logger.banners);
    outlined init with copy of ControlsHUDUpdate(v26, v25);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v15))
    {
      v16 = OUTLINED_FUNCTION_42();
      v17 = OUTLINED_FUNCTION_23();
      v24 = v17;
      *v16 = 136315138;
      outlined init with copy of ConversationControlsType(v25, v23);
      specialized >> prefix<A>(_:)(v23);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ControlsHUDUpdate(v25);
      v18 = OUTLINED_FUNCTION_43_0();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v20);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v14, v0, "Presenting HUD for current context %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      outlined destroy of ControlsHUDUpdate(v25);
    }

    OUTLINED_FUNCTION_3_0();
    BannerPresentationManager.presentBanner(as:type:reply:)();
    outlined destroy of ControlsHUDUpdate(v26);
  }
}

Swift::Void __swiftcall BannerPresentationManager.showGreenTea3PHUD()()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 392))();
  if (v1)
  {
    v2 = v1;
    if (BannerPresentationManager.onlyHasGreenTea3PCall.getter())
    {
      if ([v2 status] == 4)
      {
        SBSUndimScreen();
      }

      OUTLINED_FUNCTION_28_48();
      OUTLINED_FUNCTION_31_34();
      BannerPresentationManager.presentBanner(as:type:reply:)();

      outlined destroy of ConversationControlsType(v3);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall BannerPresentationManager.showWaitOnHoldHUD()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 392))();
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 smartHoldingSession];
  if (!v3 || (v4 = v3, v5 = [v3 state], v4, v5))
  {

LABEL_5:
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v6, static Logger.banners);
    v33 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v7, v8, v9, v10, v11, v12, v13, v14, v31, v33))
    {
      v15 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v15);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v16, v17, "Requested to show preliminary Hold Assist banner but active call does not have a smart holding session.", v18, v19, v20, v21, v32, v34);
      OUTLINED_FUNCTION_3_83();
    }

    return;
  }

  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v22, static Logger.banners);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v24))
  {
    v25 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v25);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_28_48();
  BannerPresentationManager.displayWaitOnHoldActivity(type:)(v35);

  outlined destroy of ConversationControlsType(v35);
}

uint64_t BannerPresentationManager.displayWaitOnHoldActivity(type:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-1] - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of ConversationControlsType(a1, &v12);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v6;
  v10 = v13[0];
  *(v8 + 40) = v12;
  *(v8 + 56) = v10;
  *(v8 + 65) = *(v13 + 9);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_92_7();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = v13;
  (*(v3 + 32))(&v16[v15], &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:), v7, v6);
}

uint64_t closure #1 in BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:)()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    Notification.object.getter();
    if (!*(v0 + 40))
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_sypSgMd);
      goto LABEL_31;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_30;
    }

    v3 = *(v0 + 88);
    OUTLINED_FUNCTION_293();
    v5 = (*(v4 + 392))();
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = [v5 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v3 callUUID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      OUTLINED_FUNCTION_170_0();
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v17 = [v3 smartHoldingSession];
    if (!v17)
    {
LABEL_16:

LABEL_17:
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v19, static Logger.banners);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v21))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_120(&dword_1BBC58000, v22, v23, "Ending WoH activity because the SmartHoldingSession has ended or the call has changed.");
        OUTLINED_FUNCTION_2_2();
      }

      if (*&v2[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity])
      {
        OUTLINED_FUNCTION_0_1();
        v25 = *(v24 + 304);

        v25(v26);
      }

      v27 = OUTLINED_FUNCTION_115_5();
      BannerPresentationManager.waitOnHoldHUDActivity.setter(v27);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      if (SBUIIsSystemApertureEnabled())
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_20_57();
        }

        OUTLINED_FUNCTION_1_57();
        (*(v28 + 304))();
      }

      goto LABEL_29;
    }

    v18 = v17;
    if ([v2 isSpringBoardLocked])
    {

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    if ([v18 state] == 3)
    {
      v31 = 29;
LABEL_36:
      *(v0 + 16) = v31;
      *(v0 + 24) = 0u;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 7;
      BannerPresentationManager.displayWaitOnHoldActivity(type:)(v0 + 16);

      outlined destroy of ConversationControlsType(v0 + 16);
      goto LABEL_31;
    }

    if ([v18 state] == 1)
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_178();
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v32, static Logger.banners);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v34))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v35, v36, "Ending WoH activity because the SmartHoldingSession is in a detecting hold state.");
        OUTLINED_FUNCTION_27();
      }

      if (*&v2[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity])
      {
        OUTLINED_FUNCTION_0_1();
        v38 = *(v37 + 304);

        v38(v39);
      }

      v40 = OUTLINED_FUNCTION_115_5();
      BannerPresentationManager.waitOnHoldHUDActivity.setter(v40);
    }

    else if ([v18 state] == 2 && objc_msgSend(v6, sel_smartHoldingAvailability) == 1)
    {
      if ([v2 isPresentingFullScreenCallUI])
      {
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178();
        }

        v41 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v41, static Logger.banners);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v43))
        {
          *OUTLINED_FUNCTION_33() = 0;
          OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v44, v45, "Skipping presentation of hold detected banner because ICUI is on screen");
          OUTLINED_FUNCTION_27();
        }

        goto LABEL_30;
      }

      v31 = 30;
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_31:
  OUTLINED_FUNCTION_13();

  return v29();
}

uint64_t closure #1 in BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v4[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in BannerPresentationManager.dismissHoldDetectedActivityIfNeeded(), v6, v5);
}

uint64_t closure #1 in BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity);
    if (v4)
    {
      v5 = *(v0 + 144);
      v6 = *(*v4 + 232);

      v6(v7);
      outlined init with copy of ConversationControlsType(v5 + 8, v0 + 16);
      OUTLINED_FUNCTION_6_110();
      outlined destroy of HUDActivityManager.BannerUpdate();
      *(v0 + 64) = 30;
      *(v0 + 72) = 0u;
      *(v0 + 88) = 0u;
      *(v0 + 104) = 7;
      v8 = static ConversationControlsType.== infix(_:_:)(v0 + 16, v0 + 64);
      outlined destroy of ConversationControlsType(v0 + 64);
      outlined destroy of ConversationControlsType(v0 + 16);
      if (v8)
      {
        if (*&v2[v3])
        {
          OUTLINED_FUNCTION_0_1();
          v10 = *(v9 + 304);

          v10(v11);
        }

        v12 = OUTLINED_FUNCTION_115_5();
        BannerPresentationManager.waitOnHoldHUDActivity.setter(v12);
      }
    }
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t closure #1 in BannerPresentationManager.displayWaitOnHoldActivity(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = type metadata accessor for UUID();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in BannerPresentationManager.displayWaitOnHoldActivity(type:), v8, v7);
}

uint64_t closure #1 in BannerPresentationManager.displayWaitOnHoldActivity(type:)()
{

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity))
    {
      v4 = v0[24];
      v5 = v0[18];
      OUTLINED_FUNCTION_0_1();
      v7 = *(v6 + 232);

      v7(v8);
      outlined init with copy of ConversationControlsType(v4 + 8, (v0 + 8));
      OUTLINED_FUNCTION_6_110();
      outlined destroy of HUDActivityManager.BannerUpdate();
      LOBYTE(v4) = static ConversationControlsType.== infix(_:_:)((v0 + 8), v5);

      outlined destroy of ConversationControlsType((v0 + 8));
      if (v4)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (*&v2[v3])
      {
        OUTLINED_FUNCTION_0_1();
        v10 = *(v9 + 304);

        v10(v11);
      }
    }

    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    outlined init with copy of ConversationControlsType(v0[18], (v0 + 2));
    UUID.init()();
    v17 = v12 + v13[11];
    *(v17 + 8) = 0;
    swift_unknownObjectWeakInit();
    *v12 = 0x4089000000000000;
    outlined init with copy of ConversationControlsType((v0 + 2), v12 + 8);
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v17 + 8) = 0;
    swift_unknownObjectWeakAssign();
    *(v12 + 65) = 0;
    (*(v15 + 16))(v12 + v13[8], v14, v16);
    static Date.now.getter();
    (*(v15 + 8))(v14, v16);
    outlined destroy of ConversationControlsType((v0 + 2));
    *(v12 + v13[10]) = 0;
    *(v12 + v13[12]) = 0;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (SBUIIsSystemApertureEnabled())
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_20_57();
      }

      v18 = v0[23];
      OUTLINED_FUNCTION_5_18();
      v20 = (*(v19 + 288))(v18);
      goto LABEL_16;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_32_27();
    }

    OUTLINED_FUNCTION_64_16();
    v22 = (*(v21 + 312))();
    v23 = v0[23];
    if (v22)
    {
      OUTLINED_FUNCTION_64_16();
      v20 = (*(v24 + 272))(v23);
LABEL_16:
      BannerPresentationManager.waitOnHoldHUDActivity.setter(v20);

      OUTLINED_FUNCTION_6_110();
      outlined destroy of HUDActivityManager.BannerUpdate();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_6_110();
    outlined destroy of HUDActivityManager.BannerUpdate();
    goto LABEL_18;
  }

LABEL_19:

  OUTLINED_FUNCTION_13();

  return v25();
}

Swift::Void __swiftcall BannerPresentationManager.showPTTHUD()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 472))();
  if (v1)
  {
    v2 = v1;
    ConversationControlsManager.pttMarkChannelActive()();
  }

  v3[0] = 2;
  OUTLINED_FUNCTION_8_98();
  BannerPresentationManager.presentBanner(as:type:reply:)();
  outlined destroy of ConversationControlsType(v3);
}

void BannerPresentationManager.showInCallHUD()(void (*a1)(void))
{
  OUTLINED_FUNCTION_5_18();
  if ((*(v2 + 472))())
  {
    OUTLINED_FUNCTION_110_6();
    a1();
  }
}

uint64_t BannerPresentationManager.showHandoffHUD()(uint64_t a1)
{
  v2[0] = a1;
  OUTLINED_FUNCTION_8_98();
  BannerPresentationManager.presentBanner(as:type:reply:)();
  return outlined destroy of ConversationControlsType(v2);
}

uint64_t BannerPresentationManager.showEnhancedEmergenctVideoStreamingHUD()(uint64_t a1)
{
  result = Features.isEnhancedEmergencyEnabled.getter();
  if (result)
  {
    result = [v1 isPresentingFullScreenCallUI];
    if ((result & 1) == 0)
    {
      v4[0] = a1;
      OUTLINED_FUNCTION_8_98();
      BannerPresentationManager.presentBanner(as:type:reply:)();
      return outlined destroy of ConversationControlsType(v4);
    }
  }

  return result;
}

Swift::Void __swiftcall BannerPresentationManager.showEnhancedEmergencyMediaUploadDuringStreamingHUD()()
{
  if ((Features.isEnhancedEmergencyEnabled.getter() & 1) != 0 && [v0 isPresentingFullScreenCallUI])
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v1, static Logger.banners);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v4);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_18();
    }

    v10[0] = 18;
    OUTLINED_FUNCTION_8_98();
    BannerPresentationManager.presentBanner(as:type:reply:)();
    outlined destroy of ConversationControlsType(v10);
  }
}

uint64_t BannerPresentationManager.showEnhancedEmergencyRTTVideoStreamingHUD()(uint64_t a1)
{
  result = Features.isEnhancedEmergencyEnabled.getter();
  if (result)
  {
    result = [v1 isPresentingFullScreenCallUI];
    if (result)
    {
      v4[0] = a1;
      OUTLINED_FUNCTION_8_98();
      BannerPresentationManager.presentBanner(as:type:reply:)();
      return outlined destroy of ConversationControlsType(v4);
    }
  }

  return result;
}

Swift::Void __swiftcall BannerPresentationManager.showLagunaPullConversationHUD()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v1 + 624))())
  {
    v2 = SBUIIsSystemApertureEnabled();
    v3 = MEMORY[0x1E69E7D40];
    if (v2)
    {
      OUTLINED_FUNCTION_293();
      v5 = (*(v4 + 512))();
      if (v5)
      {

        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178();
        }

        v6 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v6, static Logger.banners);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_163(v8))
        {
          v9 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v9);
          OUTLINED_FUNCTION_219();
          _os_log_impl(v10, v11, v12, v13, v14, 2u);
          OUTLINED_FUNCTION_18();
        }

        OUTLINED_FUNCTION_11();
        v16 = 0xD000000000000010;

        BannerPresentationManager.requestEphemeralSystemApertureAlert(reason:shouldOverridePersistentAssertion:)(*&v16, 0);
        return;
      }
    }

    v33 = (*((*v3 & *v0) + 0x1D8))();
    if (v33)
    {
      v34 = v33;
      OUTLINED_FUNCTION_26_49();
      v36 = (*(v35 + 704))();
      if (v36)
      {
        v37 = v36;
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_178();
        }

        v38 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v38, static Logger.banners);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v40))
        {
          *OUTLINED_FUNCTION_33() = 0;
          OUTLINED_FUNCTION_120(&dword_1BBC58000, v41, v42, "Requesting laguna handoff completed banner due to request to show laguna pull HUD.");
          OUTLINED_FUNCTION_2_2();
        }

        OUTLINED_FUNCTION_28_48();
        OUTLINED_FUNCTION_31_34();
        BannerPresentationManager.presentBanner(as:type:reply:)();

LABEL_33:
        outlined destroy of ConversationControlsType(v56);
        return;
      }
    }

    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v43, static Logger.banners);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v45))
    {
      v46 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v46);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_18();
    }

    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v58 = 7;
    OUTLINED_FUNCTION_31_34();
    BannerPresentationManager.presentBanner(as:type:reply:)();
    goto LABEL_33;
  }

  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v17, static Logger.banners);
  v54 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54))
  {
    v26 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_21_24(v26);
    OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v27, v28, "Cannot show Laguna pull back banner while feature is not enabled", v29, v30, v31, v32, v53, v55);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall BannerPresentationManager.presentReminderNotice()()
{
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_92_7();
  v7 = type metadata accessor for SessionActionNotice(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = (v10 - v9);
  OUTLINED_FUNCTION_13_2();
  v12 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v13) + 0x1D8))())
  {
    OUTLINED_FUNCTION_3_52();
    v36 = v15;
    v16 = (*(v14 + 704))();
    if (v16)
    {
      v35 = v16;
      OUTLINED_FUNCTION_3_52();
      v18 = (*(v17 + 2440))();
      if (v18)
      {
        v19 = v18;
        v20 = (*((*v12 & *v0) + 0x1E8))();
        if (!v20)
        {
          type metadata accessor for Participant(0);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
          v26 = (v11 + v7[6]);
          v26[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v26[4] = &protocol witness table for TUConversation;
          *v26 = v35;
          v27 = (v11 + v7[7]);
          v27[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
          v27[4] = &protocol witness table for TUConversationActivitySession;
          *v27 = v19;
          UUID.init()();
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v29 = v28;
          (*(v4 + 8))(v1, v2);
          *v11 = xmmword_1BC4D67C0;
          v11[1] = xmmword_1BC4CB170;
          *(v11 + v7[8]) = 1;
          v30 = v11 + v7[9];
          *v30 = 0;
          v30[8] = 1;
          *(v11 + v7[11]) = v29;
          v31 = (v11 + v7[12]);
          *v31 = 0;
          v31[1] = 0;
          *(v11 + v7[13]) = 1;
          v32 = (v11 + v7[14]);
          *v32 = 0;
          v32[1] = 0;
          v33 = (v11 + v7[15]);
          *v33 = 0;
          v33[1] = 0;
          specialized ConversationControlsNoticeCoordinator.post(notice:)();
          outlined destroy of HUDActivityManager.BannerUpdate();

          return;
        }

        v34 = v20;

        v21 = v34;
      }

      else
      {

        v21 = v35;
      }
    }

    else
    {
      v21 = v36;
    }
  }
}

void BannerPresentationManager.conversationManager(_:removedActiveConversation:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 472))();
}

void BannerPresentationManager.conversationManager(_:stateChangedFor:fromOldConversation:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v63 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_159();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v62 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    if (![v5 avMode])
    {
      if ([v5 state])
      {
        if ([v5 state] != 4 && !objc_msgSend(v3, sel_state))
        {
          v31 = [v5 presentationContext];
          v61 = [v31 mode];

          if (v61 != 2)
          {
            if (one-time initialization token for banners != -1)
            {
              OUTLINED_FUNCTION_0_178();
            }

            v32 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v32, static Logger.banners);
            v60 = v5;
            v61 = Logger.logObject.getter();
            v33 = static os_log_type_t.default.getter();

            v59 = v33;
            if (os_log_type_enabled(v61, v33))
            {
              v34 = OUTLINED_FUNCTION_42();
              v58 = v34;
              v35 = OUTLINED_FUNCTION_23();
              v57 = v35;
              *v34 = 136315138;
              v36 = v60;
              v64 = v60;
              v65 = v35;
              v56 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
              v37 = v36;
              v38 = String.init<A>(reflecting:)();
              v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v65);

              v40 = v58;
              v41 = v61;
              *(v58 + 1) = v60;
              _os_log_impl(&dword_1BBC58000, v41, v59, "Presenting banner for joining AVLess conversation %s", v40, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v57);
              OUTLINED_FUNCTION_3_83();
              OUTLINED_FUNCTION_27();
            }

            BannerPresentationManager.presentSystemHUD()();
          }
        }
      }
    }

    if ([v5 state] == 4)
    {
      OUTLINED_FUNCTION_153();
      v61 = (*(v20 + 488))();
      if (v61)
      {
        v60 = v1;
        OUTLINED_FUNCTION_153();
        v21 += 59;
        v22 = *v21;
        v23 = (*v21)();
        if (v23)
        {

          v24 = v22();
          if (v24)
          {
            v25 = v24;
            OUTLINED_FUNCTION_3_52();
            v27 = (*(v26 + 704))();

            v28 = v60;
            if (v27)
            {
              v29 = [v27 UUID];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = 0;
            }

            else
            {
              v30 = 1;
            }
          }

          else
          {
            v30 = 1;
            v28 = v60;
          }

          __swift_storeEnumTagSinglePayload(v19, v30, 1, v6);
          v42 = [v5 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
          v43 = *(v9 + 48);
          outlined init with copy of Notice?(v19, v0, &_s10Foundation4UUIDVSgMd);
          outlined init with copy of Notice?(v16, v0 + v43, &_s10Foundation4UUIDVSgMd);
          OUTLINED_FUNCTION_57(v0);
          if (!v47)
          {
            v46 = v62;
            outlined init with copy of Notice?(v0, v62, &_s10Foundation4UUIDVSgMd);
            OUTLINED_FUNCTION_57(v0 + v43);
            if (!v47)
            {
              v50 = v63;
              (*(v63 + 32))(v28, v0 + v43, v6);
              OUTLINED_FUNCTION_2_153();
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v51, v52);
              v53 = dispatch thunk of static Equatable.== infix(_:_:)();
              v54 = *(v50 + 8);
              v55 = OUTLINED_FUNCTION_309();
              v54(v55);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
              (v54)(v46, v6);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
              if ((v53 & 1) == 0)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
            v48 = OUTLINED_FUNCTION_170_0();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, v49);
            (*(v63 + 8))(v46, v6);
LABEL_28:
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_31:

            goto LABEL_32;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
          v44 = OUTLINED_FUNCTION_170_0();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, v45);
          OUTLINED_FUNCTION_57(v0 + v43);
          if (!v47)
          {
            goto LABEL_28;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
        }

LABEL_30:
        (*((*MEMORY[0x1E69E7D40] & v61->isa) + 0x498))(0xD00000000000001BLL, 0x80000001BC516F00, 1, 0, 0);
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_30_0();
}

id BannerPresentationManager.conversationForHandoffCompleted()()
{
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 368))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) activeConversationForCall_];

  return v4;
}

id outlined bridged method (mnnbgnnn) of @objc BNBannerSource.post(_:options:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = [a5 postPresentable:a1 options:a2 userInfo:isa error:a4];

  return v10;
}

uint64_t outlined bridged method (pb) of @objc BannerPresentationManager.inCallSceneSessionIdentifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305();
  }

  return OUTLINED_FUNCTION_46();
}

void specialized ConversationControlsNoticeCoordinator.post(notice:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_101_4();
  v7 = type metadata accessor for FaceIDUnavailableNotice(v6);
  v8 = OUTLINED_FUNCTION_205_4(v7, &protocol witness table for FaceIDUnavailableNotice);
  v9 = OUTLINED_FUNCTION_177_4();
  outlined init with copy of FaceIDUnavailableNotice(v9, v8);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  OUTLINED_FUNCTION_171_2();
  v11 = OUTLINED_FUNCTION_204_1();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_170_3(v12))
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_57_17();
    OUTLINED_FUNCTION_144_3();
    v87[0] = v13;
    *v1 = 136315394;
    OUTLINED_FUNCTION_11();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, v14, v87);
    *(v1 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    v15 = OUTLINED_FUNCTION_154_3();
    v16(v15);
    OUTLINED_FUNCTION_2_153();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v17, v18);
    v19 = OUTLINED_FUNCTION_132_2();
    v21 = v20;
    v4 += 8;
    v22 = OUTLINED_FUNCTION_157();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v88);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v87);
    OUTLINED_FUNCTION_28_0();

    *(v1 + 14) = v19;
    OUTLINED_FUNCTION_122_1(&dword_1BBC58000, v24, v25, "> Adding to queue, notice: %s, uuid: %s");
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_98_4();
    OUTLINED_FUNCTION_59_14();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v26 = *(v8 + *(v7 + 28));
  OUTLINED_FUNCTION_135_2();
  OUTLINED_FUNCTION_49_19();
  specialized Dictionary.subscript.modify();
  OUTLINED_FUNCTION_178_0();
  if (v4)
  {
    OUTLINED_FUNCTION_134_2(v27, v28);
    v29 = OUTLINED_FUNCTION_29_37();
    v30(v29);
  }

  v31 = OUTLINED_FUNCTION_161_3();
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_164_1();
  (v8)(v32);
  OUTLINED_FUNCTION_19_48();
  OUTLINED_FUNCTION_187_4();
  v33();
  if (v87[3])
  {
    OUTLINED_FUNCTION_87_8();
    ConversationControlsNoticeCoordinator.peek()(v34);
    if (v86[3])
    {
      v35 = OUTLINED_FUNCTION_10_83();
      if (v36(v35))
      {
        OUTLINED_FUNCTION_202_1();
        OUTLINED_FUNCTION_91_0();
        if (v37)
        {
          OUTLINED_FUNCTION_42_28();
          v38 = OUTLINED_FUNCTION_17_63();
          if (v39(v38))
          {
            OUTLINED_FUNCTION_139_6();
            v40 = OUTLINED_FUNCTION_119();
            v41 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v41))
            {
              OUTLINED_FUNCTION_30_1();
              v42 = OUTLINED_FUNCTION_10_40();
              OUTLINED_FUNCTION_35_26(v42);
              v43 = OUTLINED_FUNCTION_1_161(4.8151e-34);
              v45 = v44(v43);
              OUTLINED_FUNCTION_18_59(v45, v46);
              OUTLINED_FUNCTION_247();

              OUTLINED_FUNCTION_36_34();
              v47 = OUTLINED_FUNCTION_3_145(v88);
              v49 = v48(v47);
              OUTLINED_FUNCTION_196_4(v49, v50);
              OUTLINED_FUNCTION_28_0();

              *(v7 + 14) = v1;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
              OUTLINED_FUNCTION_136_4();
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v85);
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v82 = v88;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v69 = OUTLINED_FUNCTION_119();
            v70 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v70))
            {
              v71 = OUTLINED_FUNCTION_42();
              v72 = OUTLINED_FUNCTION_23();
              OUTLINED_FUNCTION_35_26(v72);
              v73 = OUTLINED_FUNCTION_1_161(4.8149e-34);
              v75 = v74(v73);
              OUTLINED_FUNCTION_18_59(v75, v76);
              OUTLINED_FUNCTION_247();

              *(v71 + 4) = v26;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v2);
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v85);
            }

            v82 = v86;
          }

          outlined init with copy of IDSLookupManager(v82, v85);
          OUTLINED_FUNCTION_11_96();
          v83 = OUTLINED_FUNCTION_182_4();
          v84(v83);
          __swift_destroy_boxed_opaque_existential_1(v86);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s15ConversationKit6Notice_pSgMd);
          v62 = OUTLINED_FUNCTION_119();
          v63 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v63))
          {
            v64 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_25_31(v64);
            OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v65, v66, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_239();
          }

          OUTLINED_FUNCTION_68_9();
          OUTLINED_FUNCTION_11_96();
          v67 = OUTLINED_FUNCTION_183_3();
          v68(v67);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit6Notice_pSgMd);
    v56 = OUTLINED_FUNCTION_119();
    v57 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v57))
    {
      v58 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v58);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v59, v60, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_239();
    }

    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_11_96();
    (*(v61 + 144))(v88);
  }

  __swift_destroy_boxed_opaque_existential_1(&v89);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_101_4();
  v7 = type metadata accessor for AppLaunchNotice(v6);
  v8 = OUTLINED_FUNCTION_205_4(v7, &protocol witness table for AppLaunchNotice);
  v9 = OUTLINED_FUNCTION_177_4();
  outlined init with copy of FaceIDUnavailableNotice(v9, v8);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_199_2();
  v11 = OUTLINED_FUNCTION_204_1();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_170_3(v12))
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_57_17();
    OUTLINED_FUNCTION_144_3();
    v87[0] = v13;
    *v1 = 136315394;
    OUTLINED_FUNCTION_131_3();
    v14 = AppLaunchNotice.description.getter();
    OUTLINED_FUNCTION_99_4(v14, v15);
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_97_7();
    v16 = OUTLINED_FUNCTION_154_3();
    v17(v16);
    OUTLINED_FUNCTION_2_153();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v18, v19);
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_305();
    v4 += 8;
    v20 = OUTLINED_FUNCTION_157();
    v21(v20);
    OUTLINED_FUNCTION_203_3();
    v22 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
    OUTLINED_FUNCTION_247();

    *(v1 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_122_1(&dword_1BBC58000, v25, v26, "> Adding to queue, notice: %s, uuid: %s");
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_98_4();
    OUTLINED_FUNCTION_59_14();
  }

  else
  {

    OUTLINED_FUNCTION_162_3();
  }

  v27 = *(v8 + *(v7 + 24));
  OUTLINED_FUNCTION_135_2();
  OUTLINED_FUNCTION_49_19();
  specialized Dictionary.subscript.modify();
  OUTLINED_FUNCTION_178_0();
  if (v8)
  {
    OUTLINED_FUNCTION_134_2(v28, v29);
    v30 = OUTLINED_FUNCTION_29_37();
    v31(v30);
  }

  v32 = OUTLINED_FUNCTION_161_3();
  (v4)(v32);
  v33 = OUTLINED_FUNCTION_164_1();
  (v7)(v33);
  OUTLINED_FUNCTION_19_48();
  OUTLINED_FUNCTION_187_4();
  v34();
  if (v88[3])
  {
    OUTLINED_FUNCTION_87_8();
    ConversationControlsNoticeCoordinator.peek()(v35);
    if (v87[3])
    {
      v36 = OUTLINED_FUNCTION_10_83();
      if (v37(v36))
      {
        OUTLINED_FUNCTION_202_1();
        OUTLINED_FUNCTION_91_0();
        if (v38)
        {
          OUTLINED_FUNCTION_42_28();
          v39 = OUTLINED_FUNCTION_17_63();
          if (v40(v39))
          {
            OUTLINED_FUNCTION_139_6();
            v41 = OUTLINED_FUNCTION_119();
            v42 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v42))
            {
              OUTLINED_FUNCTION_30_1();
              v43 = OUTLINED_FUNCTION_10_40();
              OUTLINED_FUNCTION_35_26(v43);
              v44 = OUTLINED_FUNCTION_1_161(4.8151e-34);
              v46 = v45(v44);
              OUTLINED_FUNCTION_18_59(v46, v47);
              OUTLINED_FUNCTION_247();

              OUTLINED_FUNCTION_36_34();
              v48 = OUTLINED_FUNCTION_3_145(v89);
              v50 = v49(v48);
              OUTLINED_FUNCTION_196_4(v50, v51);
              OUTLINED_FUNCTION_28_0();

              *(v4 + 14) = v1;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
              OUTLINED_FUNCTION_136_4();
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v86);
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v83 = v89;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v70 = OUTLINED_FUNCTION_119();
            v71 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v71))
            {
              v72 = OUTLINED_FUNCTION_42();
              v73 = OUTLINED_FUNCTION_23();
              OUTLINED_FUNCTION_35_26(v73);
              v74 = OUTLINED_FUNCTION_1_161(4.8149e-34);
              v76 = v75(v74);
              OUTLINED_FUNCTION_18_59(v76, v77);
              OUTLINED_FUNCTION_247();

              *(v72 + 4) = v27;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v2);
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v86);
            }

            v83 = v87;
          }

          outlined init with copy of IDSLookupManager(v83, v86);
          OUTLINED_FUNCTION_11_96();
          v84 = OUTLINED_FUNCTION_182_4();
          v85(v84);
          __swift_destroy_boxed_opaque_existential_1(v87);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit6Notice_pSgMd);
          v63 = OUTLINED_FUNCTION_119();
          v64 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v64))
          {
            v65 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_25_31(v65);
            OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v66, v67, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_239();
          }

          OUTLINED_FUNCTION_68_9();
          OUTLINED_FUNCTION_11_96();
          v68 = OUTLINED_FUNCTION_183_3();
          v69(v68);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v88);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s15ConversationKit6Notice_pSgMd);
    v57 = OUTLINED_FUNCTION_119();
    v58 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v58))
    {
      v59 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v59);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v60, v61, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_239();
    }

    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_11_96();
    (*(v62 + 144))(v89);
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);
  OUTLINED_FUNCTION_30_0();
}

{
  specialized ConversationControlsNoticeCoordinator.post(notice:)();
}

{
  specialized ConversationControlsNoticeCoordinator.post(notice:)();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for SessionActionNotice(0);
  v10 = OUTLINED_FUNCTION_205_4(v9, &protocol witness table for SessionActionNotice);
  v11 = OUTLINED_FUNCTION_177_4();
  outlined init with copy of FaceIDUnavailableNotice(v11, v10);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v12, &static Logger.conversationControls);
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_199_2();
  v13 = OUTLINED_FUNCTION_204_1();
  v14 = static os_log_type_t.default.getter();
  v15 = &unk_1BC4BB000;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_30_1();
    v91 = OUTLINED_FUNCTION_57_17();
    v93[0] = v91;
    *v1 = 136315394;
    OUTLINED_FUNCTION_131_3();
    v16 = SessionActionNotice.description.getter();
    OUTLINED_FUNCTION_99_4(v16, v17);
    OUTLINED_FUNCTION_28_0();

    v18 = OUTLINED_FUNCTION_97_7();
    (*(v4 + 16))(v8, &v18[*(v9 + 40)], v2);
    OUTLINED_FUNCTION_2_153();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v19, v20);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_305();
    v21 = *(v4 + 8);
    v4 += 8;
    v21(v8, v2);
    OUTLINED_FUNCTION_203_3();
    v22 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
    OUTLINED_FUNCTION_247();

    *(v1 + 14) = &unk_1BC4BB000;
    _os_log_impl(&dword_1BBC58000, v13, v14, "> Adding to queue, notice: %s, uuid: %s", v1, 0x16u);
    v15 = v91;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_59_14();
  }

  else
  {

    OUTLINED_FUNCTION_162_3();
  }

  v25 = v10[2];
  if (v25 >> 62 == 3)
  {
    v26 = v10[3];
    v28 = *v10;
    v27 = v10[1];
    if (v25 == 0xC000000000000000 && !(v26 | v28 | v27) || !v26 && (v25 == 0xC000000000000000 ? (v29 = v28 == 1) : (v29 = 0), v29 && !v27) || !v26 && (v25 == 0xC000000000000000 ? (v30 = v28 == 7) : (v30 = 0), v30 && !v27) || (v31 = 5, !v26) && (v25 == 0xC000000000000000 ? (v32 = v28 == 10) : (v32 = 0), v32 && !v27))
    {
      v31 = 4;
    }
  }

  else
  {
    v31 = 5;
  }

  OUTLINED_FUNCTION_135_2();
  OUTLINED_FUNCTION_49_19();
  specialized Dictionary.subscript.modify();
  OUTLINED_FUNCTION_178_0();
  if (v2)
  {
    OUTLINED_FUNCTION_134_2(v33, v34);
    v35 = OUTLINED_FUNCTION_29_37();
    v36(v35);
  }

  v37 = OUTLINED_FUNCTION_161_3();
  (v31)(v37);
  v38 = OUTLINED_FUNCTION_164_1();
  (v4)(v38);
  OUTLINED_FUNCTION_19_48();
  OUTLINED_FUNCTION_187_4();
  v39();
  if (v94[3])
  {
    OUTLINED_FUNCTION_87_8();
    ConversationControlsNoticeCoordinator.peek()(v40);
    if (v93[3])
    {
      v41 = OUTLINED_FUNCTION_10_83();
      if (v42(v41))
      {
        OUTLINED_FUNCTION_202_1();
        OUTLINED_FUNCTION_91_0();
        if (v43)
        {
          OUTLINED_FUNCTION_42_28();
          v44 = OUTLINED_FUNCTION_17_63();
          if (v45(v44))
          {
            OUTLINED_FUNCTION_139_6();
            v46 = OUTLINED_FUNCTION_119();
            v47 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v47))
            {
              OUTLINED_FUNCTION_30_1();
              v48 = OUTLINED_FUNCTION_10_40();
              OUTLINED_FUNCTION_35_26(v48);
              v49 = OUTLINED_FUNCTION_1_161(4.8151e-34);
              v51 = v50(v49);
              OUTLINED_FUNCTION_18_59(v51, v52);
              OUTLINED_FUNCTION_247();

              OUTLINED_FUNCTION_36_34();
              v53 = OUTLINED_FUNCTION_3_145(v95);
              v55 = v54(v53);
              OUTLINED_FUNCTION_196_4(v55, v56);
              OUTLINED_FUNCTION_28_0();

              *(v31 + 14) = v1;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
              OUTLINED_FUNCTION_136_4();
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v92);
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v88 = v95;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v75 = OUTLINED_FUNCTION_119();
            v76 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v76))
            {
              v77 = OUTLINED_FUNCTION_42();
              v78 = OUTLINED_FUNCTION_23();
              OUTLINED_FUNCTION_35_26(v78);
              v79 = OUTLINED_FUNCTION_1_161(4.8149e-34);
              v81 = v80(v79);
              OUTLINED_FUNCTION_18_59(v81, v82);
              OUTLINED_FUNCTION_247();

              *(v77 + 4) = v15;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v8);
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v92);
            }

            v88 = v93;
          }

          outlined init with copy of IDSLookupManager(v88, v92);
          OUTLINED_FUNCTION_11_96();
          v89 = OUTLINED_FUNCTION_182_4();
          v90(v89);
          __swift_destroy_boxed_opaque_existential_1(v93);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit6Notice_pSgMd);
          v68 = OUTLINED_FUNCTION_119();
          v69 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v69))
          {
            v70 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_25_31(v70);
            OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v71, v72, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_239();
          }

          OUTLINED_FUNCTION_68_9();
          OUTLINED_FUNCTION_11_96();
          v73 = OUTLINED_FUNCTION_183_3();
          v74(v73);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v94);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s15ConversationKit6Notice_pSgMd);
    v62 = OUTLINED_FUNCTION_119();
    v63 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v63))
    {
      v64 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v64);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v65, v66, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_239();
    }

    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_11_96();
    (*(v67 + 144))(v95);
  }

  __swift_destroy_boxed_opaque_existential_1(&v96);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_101_4();
  v7 = type metadata accessor for PushToTalkNotice(v6);
  v8 = OUTLINED_FUNCTION_205_4(v7, &protocol witness table for PushToTalkNotice);
  v9 = OUTLINED_FUNCTION_177_4();
  outlined init with copy of FaceIDUnavailableNotice(v9, v8);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_199_2();
  v11 = OUTLINED_FUNCTION_204_1();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_170_3(v12))
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_57_17();
    OUTLINED_FUNCTION_144_3();
    v87[0] = v13;
    *v1 = 136315394;
    OUTLINED_FUNCTION_131_3();
    v14 = PushToTalkNotice.description.getter();
    OUTLINED_FUNCTION_99_4(v14, v15);
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_97_7();
    v16 = OUTLINED_FUNCTION_154_3();
    v17(v16);
    OUTLINED_FUNCTION_2_153();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v18, v19);
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_305();
    v4 += 8;
    v20 = OUTLINED_FUNCTION_157();
    v21(v20);
    OUTLINED_FUNCTION_203_3();
    v22 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
    OUTLINED_FUNCTION_247();

    *(v1 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_122_1(&dword_1BBC58000, v25, v26, "> Adding to queue, notice: %s, uuid: %s");
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_98_4();
    OUTLINED_FUNCTION_59_14();
  }

  else
  {

    OUTLINED_FUNCTION_162_3();
  }

  v27 = *(v8 + *(v7 + 28));
  OUTLINED_FUNCTION_135_2();
  OUTLINED_FUNCTION_49_19();
  specialized Dictionary.subscript.modify();
  OUTLINED_FUNCTION_178_0();
  if (v8)
  {
    OUTLINED_FUNCTION_134_2(v28, v29);
    v30 = OUTLINED_FUNCTION_29_37();
    v31(v30);
  }

  v32 = OUTLINED_FUNCTION_161_3();
  (v4)(v32);
  v33 = OUTLINED_FUNCTION_164_1();
  (v7)(v33);
  OUTLINED_FUNCTION_19_48();
  OUTLINED_FUNCTION_187_4();
  v34();
  if (v88[3])
  {
    OUTLINED_FUNCTION_87_8();
    ConversationControlsNoticeCoordinator.peek()(v35);
    if (v87[3])
    {
      v36 = OUTLINED_FUNCTION_10_83();
      if (v37(v36))
      {
        OUTLINED_FUNCTION_202_1();
        OUTLINED_FUNCTION_91_0();
        if (v38)
        {
          OUTLINED_FUNCTION_42_28();
          v39 = OUTLINED_FUNCTION_17_63();
          if (v40(v39))
          {
            OUTLINED_FUNCTION_139_6();
            v41 = OUTLINED_FUNCTION_119();
            v42 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v42))
            {
              OUTLINED_FUNCTION_30_1();
              v43 = OUTLINED_FUNCTION_10_40();
              OUTLINED_FUNCTION_35_26(v43);
              v44 = OUTLINED_FUNCTION_1_161(4.8151e-34);
              v46 = v45(v44);
              OUTLINED_FUNCTION_18_59(v46, v47);
              OUTLINED_FUNCTION_247();

              OUTLINED_FUNCTION_36_34();
              v48 = OUTLINED_FUNCTION_3_145(v89);
              v50 = v49(v48);
              OUTLINED_FUNCTION_196_4(v50, v51);
              OUTLINED_FUNCTION_28_0();

              *(v4 + 14) = v1;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
              OUTLINED_FUNCTION_136_4();
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v86);
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v83 = v89;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v70 = OUTLINED_FUNCTION_119();
            v71 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_75_12(v71))
            {
              v72 = OUTLINED_FUNCTION_42();
              v73 = OUTLINED_FUNCTION_23();
              OUTLINED_FUNCTION_35_26(v73);
              v74 = OUTLINED_FUNCTION_1_161(4.8149e-34);
              v76 = v75(v74);
              OUTLINED_FUNCTION_18_59(v76, v77);
              OUTLINED_FUNCTION_247();

              *(v72 + 4) = v27;
              OUTLINED_FUNCTION_67_0();
              _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v2);
              OUTLINED_FUNCTION_2_2();
              OUTLINED_FUNCTION_18();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v86);
            }

            v83 = v87;
          }

          outlined init with copy of IDSLookupManager(v83, v86);
          OUTLINED_FUNCTION_11_96();
          v84 = OUTLINED_FUNCTION_182_4();
          v85(v84);
          __swift_destroy_boxed_opaque_existential_1(v87);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s15ConversationKit6Notice_pSgMd);
          v63 = OUTLINED_FUNCTION_119();
          v64 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_163(v64))
          {
            v65 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_25_31(v65);
            OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v66, v67, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_239();
          }

          OUTLINED_FUNCTION_68_9();
          OUTLINED_FUNCTION_11_96();
          v68 = OUTLINED_FUNCTION_183_3();
          v69(v68);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v88);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s15ConversationKit6Notice_pSgMd);
    v57 = OUTLINED_FUNCTION_119();
    v58 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v58))
    {
      v59 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25_31(v59);
      OUTLINED_FUNCTION_12_8(&dword_1BBC58000, v60, v61, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_239();
    }

    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_11_96();
    (*(v62 + 144))(v89);
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);
  OUTLINED_FUNCTION_30_0();
}

{
  specialized ConversationControlsNoticeCoordinator.post(notice:)();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_101_4();
  v88[3] = v5(v9);
  v88[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  outlined init with copy of FaceIDUnavailableNotice(v7, boxed_opaque_existential_1);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_199_2();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = MEMORY[0x1E69E7CA0];
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_30_1();
    v14 = OUTLINED_FUNCTION_29_7();
    v84[0] = v14;
    *v15 = 136315394;
    v16 = OUTLINED_FUNCTION_131_3();
    v1(v16);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v17 = OUTLINED_FUNCTION_334();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v19);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v21 = OUTLINED_FUNCTION_154_3();
    v22(v21);
    OUTLINED_FUNCTION_2_153();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v23, v24);
    OUTLINED_FUNCTION_132_2();
    v25 = OUTLINED_FUNCTION_157();
    v26(v25);
    OUTLINED_FUNCTION_203_3();
    v27 = OUTLINED_FUNCTION_334();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);

    *(v15 + 14) = v30;
    _os_log_impl(&dword_1BBC58000, v11, v12, "> Adding to queue, notice: %s, uuid: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  ConversationControlsNoticeCoordinator.noticeQueue.modify(v87);
  OUTLINED_FUNCTION_305();
  v32 = specialized Dictionary.subscript.modify();
  v33 = *(v31 + 24);
  if (v33)
  {
    v34 = *(v31 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v31, *(v31 + 24));
    (*(v34 + 16))(v88, v33, v34);
  }

  v35 = OUTLINED_FUNCTION_161_3();
  (v32)(v35);
  v36 = OUTLINED_FUNCTION_164_1();
  v14(v36);
  OUTLINED_FUNCTION_53_1();
  (*(v37 + 136))(v85);
  if (v86)
  {
    OUTLINED_FUNCTION_87_8();
    ConversationControlsNoticeCoordinator.peek()(v38);
    if (v84[3])
    {
      v39 = OUTLINED_FUNCTION_10_83();
      if (v40(v39))
      {
        ConversationControlsNoticeCoordinator.pop()();
        OUTLINED_FUNCTION_91_0();
        if (v41)
        {
          OUTLINED_FUNCTION_42_28();
          v42 = OUTLINED_FUNCTION_17_63();
          if (v43(v42))
          {
            OUTLINED_FUNCTION_139_6();
            v44 = OUTLINED_FUNCTION_195_0();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = OUTLINED_FUNCTION_30_1();
              v81 = OUTLINED_FUNCTION_29_7();
              *v46 = 136315394;
              OUTLINED_FUNCTION_16_64(v82, v83);
              v47 = OUTLINED_FUNCTION_43_0();
              v49 = v48(v47);
              v51 = OUTLINED_FUNCTION_185_4(v49, v50);

              *(v46 + 4) = v51;
              *(v46 + 12) = 2080;
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              OUTLINED_FUNCTION_16_64(v87, v87[3]);
              v52 = OUTLINED_FUNCTION_43_0();
              v54 = v53(v52);
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v81);

              *(v46 + 14) = v56;
              _os_log_impl(&dword_1BBC58000, v44, v45, "> Coalescing active notice with notice: %s, result: %s", v46, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_4_4();
              OUTLINED_FUNCTION_239();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v82);
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v78 = v87;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v69 = OUTLINED_FUNCTION_195_0();
            v70 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = OUTLINED_FUNCTION_42();
              v72 = OUTLINED_FUNCTION_23();
              v81 = v72;
              *v71 = 136315138;
              OUTLINED_FUNCTION_16_64(v82, v83);
              v73 = OUTLINED_FUNCTION_43_0();
              v75 = v74(v73);
              v77 = OUTLINED_FUNCTION_185_4(v75, v76);

              *(v71 + 4) = v77;
              _os_log_impl(&dword_1BBC58000, v69, v70, "> Replacing active notice with notice: %s", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v72);
              OUTLINED_FUNCTION_4_4();
              OUTLINED_FUNCTION_26();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v82);
            }

            v78 = v84;
          }

          outlined init with copy of IDSLookupManager(v78, v82);
          OUTLINED_FUNCTION_53_1();
          (*(v79 + 144))(v82);
          __swift_destroy_boxed_opaque_existential_1(v84);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit6Notice_pSgMd);
          v63 = OUTLINED_FUNCTION_195_0();
          v64 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_25(v64))
          {
            v65 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_50_0(v65);
            OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v66, v67, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_26();
          }

          OUTLINED_FUNCTION_68_9();
          OUTLINED_FUNCTION_53_1();
          (*(v68 + 144))(v84);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v85);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s15ConversationKit6Notice_pSgMd);
    v57 = OUTLINED_FUNCTION_195_0();
    v58 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v58))
    {
      v59 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v59);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v60, v61, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_26();
    }

    ConversationControlsNoticeCoordinator.pop()();
    OUTLINED_FUNCTION_53_1();
    (*(v62 + 144))(v87);
  }

  __swift_destroy_boxed_opaque_existential_1(v88);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v82[3] = v3;
  v82[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v13, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v82, v79);
  outlined init with copy of IDSLookupManager(v82, &v76);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_30_1();
    v5 = OUTLINED_FUNCTION_29_7();
    *&v73 = v5;
    *v16 = 136315394;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v17 = OUTLINED_FUNCTION_182();
    v19 = v18(v17, v1);
    v20 = __swift_destroy_boxed_opaque_existential_1(v79);
    OUTLINED_FUNCTION_22_48(v20, v21, &v73);
    OUTLINED_FUNCTION_75_0();

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v22 = OUTLINED_FUNCTION_182();
    v23(v22, v1);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v69 + 8))(v11, v6);
    v25 = __swift_destroy_boxed_opaque_existential_1(&v76);
    OUTLINED_FUNCTION_22_48(v25, v26, &v73);
    OUTLINED_FUNCTION_75_0();

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1BBC58000, v14, v15, "> Adding to queue, notice: %s, uuid: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v76);
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  (*(v1 + 56))(&v73, v3, v1);
  ConversationControlsNoticeCoordinator.noticeQueue.modify(v79);
  OUTLINED_FUNCTION_305();
  v28 = specialized Dictionary.subscript.modify();
  if (*(v27 + 24))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v27, *(v27 + 24));
    OUTLINED_FUNCTION_158();
    v29();
  }

  (v28)(&v76, 0);
  v5(v79, 0);
  OUTLINED_FUNCTION_6_114();
  (*(v30 + 136))(&v76);
  if (v77)
  {
    outlined init with take of TapInteractionHandler(&v76, v79);
    ConversationControlsNoticeCoordinator.peek()(&v73);
    if (*(&v74 + 1))
    {
      outlined init with take of TapInteractionHandler(&v73, &v76);
      v31 = v77;
      v32 = v78;
      __swift_project_boxed_opaque_existential_1(&v76, v77);
      if ((*(v32 + 216))(v79, v31, v32))
      {
        ConversationControlsNoticeCoordinator.pop()();
        if (v72)
        {
          outlined init with take of TapInteractionHandler(&v71, &v73);
          v33 = v80;
          v34 = v81;
          __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
          if ((*(v34 + 208))(&v73, v33, v34))
          {
            outlined init with copy of IDSLookupManager(&v73, &v71);
            v35 = OUTLINED_FUNCTION_119();
            v36 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = OUTLINED_FUNCTION_30_1();
              v70[0] = OUTLINED_FUNCTION_29_7();
              *v37 = 136315394;
              __swift_project_boxed_opaque_existential_1(&v71, v72);
              v38 = OUTLINED_FUNCTION_3_147();
              v40 = v39(v38);
              v41 = __swift_destroy_boxed_opaque_existential_1(&v71);
              OUTLINED_FUNCTION_22_48(v41, v42, v70);
              OUTLINED_FUNCTION_75_0();

              *(v37 + 4) = v40;
              *(v37 + 12) = 2080;
              swift_beginAccess();
              __swift_project_boxed_opaque_existential_1(v79, v80);
              v43 = OUTLINED_FUNCTION_3_147();
              v45 = v44(v43);
              v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v70);

              *(v37 + 14) = v47;
              _os_log_impl(&dword_1BBC58000, v35, v36, "> Coalescing active notice with notice: %s, result: %s", v37, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_239();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v71);
            }

            swift_beginAccess();
            v67 = v79;
          }

          else
          {
            outlined init with copy of IDSLookupManager(&v73, &v71);
            v58 = OUTLINED_FUNCTION_119();
            v59 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = OUTLINED_FUNCTION_42();
              v61 = OUTLINED_FUNCTION_23();
              v70[0] = v61;
              *v60 = 136315138;
              __swift_project_boxed_opaque_existential_1(&v71, v72);
              v62 = OUTLINED_FUNCTION_3_147();
              v64 = v63(v62);
              v65 = __swift_destroy_boxed_opaque_existential_1(&v71);
              OUTLINED_FUNCTION_22_48(v65, v66, v70);
              OUTLINED_FUNCTION_75_0();

              *(v60 + 4) = v64;
              _os_log_impl(&dword_1BBC58000, v58, v59, "> Replacing active notice with notice: %s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v61);
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_26();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v71);
            }

            v67 = &v73;
          }

          outlined init with copy of IDSLookupManager(v67, &v71);
          OUTLINED_FUNCTION_6_114();
          (*(v68 + 144))(&v71);
          __swift_destroy_boxed_opaque_existential_1(&v73);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v71, &_s15ConversationKit6Notice_pSgMd);
          v53 = OUTLINED_FUNCTION_119();
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v54))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v55, v56, "Tried to pop next notice but there wasn't a notice to pop");
            OUTLINED_FUNCTION_26();
          }

          v75 = 0;
          v73 = 0u;
          v74 = 0u;
          OUTLINED_FUNCTION_6_114();
          (*(v57 + 144))(&v73);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v76);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v73, &_s15ConversationKit6Notice_pSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v76, &_s15ConversationKit6Notice_pSgMd);
    v48 = OUTLINED_FUNCTION_119();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v50, v51, "> No active notice, present just pushed notice");
      OUTLINED_FUNCTION_26();
    }

    ConversationControlsNoticeCoordinator.pop()();
    OUTLINED_FUNCTION_6_114();
    (*(v52 + 144))(v79);
  }

  __swift_destroy_boxed_opaque_existential_1(v82);
  OUTLINED_FUNCTION_30_0();
}

char *specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, unsigned __int8 a15, _BYTE *a16)
{
  v113 = a8;
  v111 = a7;
  v110 = a6;
  LODWORD(v119) = a5;
  v151 = a3;
  v149 = a4;
  v150 = a14;
  LODWORD(v114) = a15;
  v112 = a9;
  v148 = a11;
  v116 = a10;
  v118 = a13;
  v117 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE17SchedulerTimeTypeV6StrideVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v137 = &v109 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAKy_AMy8Dispatch0K8WorkItemCSgAOGGGSo9NSRunLoopCGAUGMd);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v109 - v22;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAMy_AOy8Dispatch0L8WorkItemCSgAQGGGSo9NSRunLoopCGAWGA0_GMd);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v109 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAOy_AQy8Dispatch0N8WorkItemCSgASGGGSo9NSRunLoopCGAYGA2_GSo17OS_dispatch_queueCGMd);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v109 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v131 = &v109 - v26;
  v133 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCy8Dispatch0G8WorkItemCSgs5NeverOGGMd);
  v124 = *(v125 - 1);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v109 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGMd);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v109 - v29;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAGy_AIy8Dispatch0I8WorkItemCSgAKGGGMd);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v109 - v30;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAIy_AKy8Dispatch0J8WorkItemCSgAMGGGSo9NSRunLoopCGMd);
  v134 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v109 - v31;
  swift_unknownObjectWeakInit();
  v32 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice];
  *(v32 + 32) = 0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  v33 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_captureGroupName];
  *v33 = 0xD00000000000001ALL;
  v33[1] = 0x80000001BC5103D0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_shadowView] = 0;
  v34 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationTaskSubject;
  v156 = 0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy8Dispatch0E8WorkItemCSgs5NeverOGMd);
  swift_allocObject();
  *&a16[v34] = CurrentValueSubject.init(_:)();
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationCancellable] = 0;
  v35 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent];
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  v35[48] = -1;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager] = 0;
  v36 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController];
  *v36 = 0;
  v36[1] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation] = 0;
  v37 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requesterIdentifier];
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_panGestureProxy] = 0;
  swift_unknownObjectWeakInit();
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_dismissalPreventionAssertion] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isShowingSystemApertureOverAssociatedScene] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activeLayoutMode] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion] = 0;
  v39 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode];
  *v39 = 0;
  v39[8] = 1;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_contentRole] = 2;
  v40 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_leadingViewContainer;
  v41 = type metadata accessor for SystemApertureContainerView();
  *&a16[v40] = [objc_allocWithZone(v41) init];
  v42 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_trailingViewContainer;
  *&a16[v42] = [objc_allocWithZone(v41) init];
  v43 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_minimalViewContainer;
  *&a16[v43] = [objc_allocWithZone(v41) init];
  v44 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_detachedMinimalViewContainer;
  *&a16[v44] = [objc_allocWithZone(v41) init];
  v45 = *MEMORY[0x1E69D45B0];
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_elementIdentifier] = *MEMORY[0x1E69D45B0];
  v46 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_keyColor;
  v47 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v48 = v45;
  *&a16[v46] = [v47 initWithRed:0.192 green:0.82 blue:0.345 alpha:1.0];
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager] = a1;
  v49 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2B8);
  v126 = a1;
  v50 = v49();
  v51 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier];
  *v51 = v50;
  v51[1] = v52;
  v53 = a2;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass] = a2;
  v54 = v151;
  outlined init with copy of ConversationControlsType(v151, &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsType]);
  ConversationControlsType.associatedNotice.getter(&v156);
  swift_beginAccess();
  outlined assign with take of Notice?(&v156, v32);
  swift_endAccess();
  v55 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_defaults];
  *v55 = v148;
  v55[1] = &protocol witness table for Defaults;
  v56 = v117;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_features] = v117;
  v57 = v118;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notificationCenter] = v118;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation] = v119;
  v154 = 0;
  v155 = 0xE000000000000000;

  v119 = v56;
  v58 = v57;
  _StringGuts.grow(_:)(38);

  v154 = 0xD000000000000021;
  v155 = 0x80000001BC510C70;
  v59 = ConversationControlsSizeClass.description.getter(v53);
  MEMORY[0x1BFB20B10](v59);

  MEMORY[0x1BFB20B10](46, 0xE100000000000000);
  v60 = *v51;
  v61 = v51[1];
  v62 = MEMORY[0x1E69E7D40];

  MEMORY[0x1BFB20B10](v60, v61);

  v63 = v155;
  v64 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requestIdentifier];
  *v64 = v154;
  v64[1] = v63;
  v65 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activityUUID;
  v66 = type metadata accessor for UUID();
  v117 = *(v66 - 8);
  v67 = *(v117 + 16);
  v118 = v66;
  v67(&a16[v65], v150);
  swift_beginAccess();
  v68 = v111;
  *v37 = v110;
  v37[1] = v68;

  swift_beginAccess();
  v69 = *&a16[v38];
  v70 = v116;
  *&a16[v38] = v116;
  v116 = v70;

  v71 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_destination];
  *v71 = v113;
  v71[8] = v112 & 1;
  v72 = type metadata accessor for SystemBannerHostViewController();
  v153.receiver = a16;
  v153.super_class = v72;
  v73 = objc_msgSendSuper2(&v153, sel_initWithNibName_bundle_, 0, 0);
  v74 = *((*v62 & *v73) + 0x418);
  v75 = v73;
  v74(v54, 0, 1, v114);
  [v58 addObserver:v75 selector:sel_callStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];
  v76 = one-time initialization token for contextMenuWillPresent;
  v77 = v75;
  if (v76 != -1)
  {
    swift_once();
  }

  [v58 addObserver:v77 selector:sel_contextMenuWillPresent_ name:static NSNotificationName.contextMenuWillPresent object:0];

  v78 = one-time initialization token for contextMenuDidDismiss;
  v79 = v77;
  if (v78 != -1)
  {
    swift_once();
  }

  [v58 addObserver:v79 selector:sel_contextMenuDidDismiss_ name:static NSNotificationName.contextMenuDidDismiss object:0];

  [v58 addObserver:v79 selector:sel_callDisplayContextChanged_ name:*MEMORY[0x1E69D8E70] object:0];
  v80 = one-time initialization token for requestPreferredLayoutModeNotification;
  v81 = v79;
  if (v80 != -1)
  {
    swift_once();
  }

  [v58 addObserver:v81 selector:sel_requestPreferredLayoutMode name:static NSNotificationName.requestPreferredLayoutModeNotification object:0];

  [v58 addObserver:v81 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE348] object:0];
  v82 = [v58 addObserver:v81 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE338] object:0];
  v83 = *((*v62 & *v81) + 0x2B8);
  v114 = v81;
  v84 = *(v83(v82) + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_invalidationInProgressSubject);

  v152 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  v85 = v120;
  Publisher.filter(_:)();

  v152 = *(v81 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationTaskSubject);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<DispatchWorkItem?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy8Dispatch0E8WorkItemCSgs5NeverOGMd);

  v86 = v123;
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<CurrentValueSubject<Bool, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCy8Dispatch0G8WorkItemCSgs5NeverOGGMd);
  v87 = v127;
  v88 = v122;
  v89 = v125;
  Publisher.zip<A>(_:)();
  (v124)[1](v86, v89);
  (*(v121 + 8))(v85, v88);
  v90 = v130;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v124 = objc_opt_self();
  v91 = [v124 mainRunLoop];
  v152 = v91;
  v123 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v125 = v58;
  v92 = v131;
  __swift_storeEnumTagSinglePayload(v131, 1, 1, v123);
  v122 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>> and conformance Publishers.Zip<A, B>, &_s7Combine10PublishersO3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAGy_AIy8Dispatch0I8WorkItemCSgAKGGGMd);
  v121 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v93 = v129;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v132 = *(v132 + 8);
  v94 = v133;
  (v132)(v90, v133);
  (*(v128 + 8))(v87, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemCSgMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAIy_AKy8Dispatch0J8WorkItemCSgAMGGGSo9NSRunLoopCGMd);
  v95 = v135;
  Publisher.map<A>(_:)();
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v96 = v137;
  __swift_storeEnumTagSinglePayload(v137, 1, 1, v94);
  v97 = [v124 mainRunLoop];
  v152 = v97;
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v123);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAKy_AMy8Dispatch0K8WorkItemCSgAOGGGSo9NSRunLoopCGAUGMd);
  v98 = v139;
  v99 = v138;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_sSo9NSRunLoopC10FoundationE17SchedulerTimeTypeV6StrideVSgMd);
  (v132)(v90, v94);
  (*(v136 + 8))(v95, v99);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v100 = static OS_dispatch_queue.main.getter();
  v152 = v100;
  v101 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v102 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v101);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Delay<Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?>, NSRunLoop> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAMy_AOy8Dispatch0L8WorkItemCSgAQGGGSo9NSRunLoopCGAWGA0_GMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v103 = v143;
  v104 = v141;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v140 + 8))(v98, v104);
  swift_allocObject();
  v105 = v114;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Delay<Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?>, NSRunLoop>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAOy_AQy8Dispatch0N8WorkItemCSgASGGGSo9NSRunLoopCGAYGA2_GSo17OS_dispatch_queueCGMd);
  v106 = v145;
  v107 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();

  (*(v117 + 8))(v150, v118);
  outlined destroy of ConversationControlsType(v151);
  (*(v144 + 8))(v103, v106);
  (*(v134 + 8))(v146, v147);
  *&v105[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationCancellable] = v107;

  return v105;
}

uint64_t partial apply for closure #1 in BannerPresentationManager.bannerDismissedBySpringBoard()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in BannerPresentationManager.bannerDismissedBySpringBoard()(v5, v6, v7, v1);
}

uint64_t partial apply for closure #1 in BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in BannerPresentationManager.dismissHoldDetectedActivityIfNeeded()(v5, v6, v7, v1);
}

uint64_t partial apply for closure #1 in BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_22(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in BannerPresentationManager.handleCallSmartHoldingSessionChanged(_:)(v6, v7, v8, v2, v9);
}

uint64_t getEnumTagSinglePayload for BannerPresentationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BannerPresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in BannerPresentationManager.displayWaitOnHoldActivity(type:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in BannerPresentationManager.displayWaitOnHoldActivity(type:)(v5, v6, v7, v1, v8);
}

uint64_t partial apply for closure #2 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33_37();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #2 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(v6, v7, v8, v2, v1);
}

uint64_t objectdestroy_111Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33_37();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(v6, v7, v8, v2, v1);
}

uint64_t outlined destroy of HUDActivityManager.BannerUpdate()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t partial apply for closure #1 in closure #1 in BannerPresentationManager.presentBanner(as:type:activityTypeForNewBanner:activityUUID:fromActivityManager:reply:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result == 0, result);
  }

  return result;
}

uint64_t outlined init with copy of FaceIDUnavailableNotice(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_99_4(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 - 168);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 256));
}

uint64_t OUTLINED_FUNCTION_139_6()
{

  return outlined init with copy of IDSLookupManager(v0 - 256, v0 - 296);
}

uint64_t OUTLINED_FUNCTION_166_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return Logger.logObject.getter();
}

uint64_t ParticipantViewRepresentableViewModel.participantViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
  v3 = OUTLINED_FUNCTION_1_162(v2);
  return _s15ConversationKit11ParticipantVWOcTm_13(v3, a1);
}

uint64_t ParticipantViewRepresentableViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Participant(0) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ParticipantViewRepresentableViewModel.isVideoEnabled.getter()
{
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  v4 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
  v5 = OUTLINED_FUNCTION_1_162(v4);
  _s15ConversationKit11ParticipantVWOcTm_13(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v8 = *(v7 + 48);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + *(v7 + 64));
    v9 = v3 + v8;
LABEL_5:
    outlined destroy of ParticipantVideoView.ViewModel(v9);
    OUTLINED_FUNCTION_2_154();
    _s15ConversationKit20ParticipantViewModelO0C7DetailsVWOhTm_0(v3, v10);
    return 1;
  }

  v12 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
  v13 = *v12;
  v14 = *(v12 + 72);
  v15 = *(v12 + 80);
  OUTLINED_FUNCTION_2_154();
  _s15ConversationKit20ParticipantViewModelO0C7DetailsVWOhTm_0(v3, v16);

  outlined consume of (title: String, subtitle: String?)?(v14, v15);
  return 0;
}

uint64_t ParticipantViewRepresentableViewModel.displayName.getter()
{
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
  v12 = OUTLINED_FUNCTION_1_162(v11);
  _s15ConversationKit11ParticipantVWOcTm_13(v12, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v17 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd) + 48);
      v18 = *v17;
      v19 = *(v17 + 72);
      v20 = *(v17 + 80);
      v24 = *(v17 + 96);
      v25 = v18;

      outlined consume of (title: String, subtitle: String?)?(v19, v20);
      OUTLINED_FUNCTION_0_198();
      _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(v3, v7);
      goto LABEL_7;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd);
    v15 = *(v14 + 48);
    v16 = *(v14 + 64);
    OUTLINED_FUNCTION_0_198();
    _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(v3, v7);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + v16);
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd) + 48);
    OUTLINED_FUNCTION_0_198();
    _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(v3, v7);
  }

  outlined destroy of ParticipantVideoView.ViewModel(v3 + v15);
LABEL_7:
  OUTLINED_FUNCTION_0_198();
  _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(v7, v10);
  v21 = *&v10[*(v4 + 20)];

  OUTLINED_FUNCTION_2_154();
  _s15ConversationKit20ParticipantViewModelO0C7DetailsVWOhTm_0(v10, v22);
  return v21;
}

void *ParticipantViewRepresentableViewModel.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 28));
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t ParticipantViewRepresentableViewModel.init(participant:isLocal:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  _s15ConversationKit11ParticipantVWOcTm_13(a1, a3);
  v14 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
  *(a3 + v14[5]) = a2;
  _s15ConversationKit11ParticipantVWOcTm_13(a1, v9);
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v9, v15, 0, 0, 0, 0, 0, v13, 1u, 0, 1u, 1u);
  _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(v13, a3 + v14[6]);
  v16 = Participant.deviceOrientation.getter();
  v18 = v17;
  result = _s15ConversationKit20ParticipantViewModelO0C7DetailsVWOhTm_0(a1, type metadata accessor for Participant);
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16;
  }

  *(a3 + v14[7]) = v20;
  return result;
}

uint64_t _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5(v4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t _s15ConversationKit20ParticipantViewModelO0C7DetailsVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL static ParticipantViewRepresentableViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  static Participant.State.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Participant(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  if (*(a2 + v6))
  {
    if (!v7)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(v5 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 1);
  v11 = *(a1 + v8 + 2);
  v12 = *(a1 + v8 + 3);
  v13 = *(a1 + v8 + 4);
  v14 = (a2 + v8);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  if (v13)
  {
    v20 = 0x100000000;
  }

  else
  {
    v20 = 0;
  }

  if (v12)
  {
    v21 = 0x1000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = v11 == 0;
  v23 = 0x10000;
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000;
  }

  v22 = v10 == 0;
  v25 = 256;
  if (v22)
  {
    v26 = 0;
  }

  else
  {
    v26 = 256;
  }

  v27 = v26 | v9 | v24 | v21;
  if (v19)
  {
    v28 = 0x100000000;
  }

  else
  {
    v28 = 0;
  }

  if (v18)
  {
    v29 = 0x1000000;
  }

  else
  {
    v29 = 0;
  }

  if (!v17)
  {
    v23 = 0;
  }

  if (!v16)
  {
    v25 = 0;
  }

  if (static Participant.Capabilities.== infix(_:_:)(v27 | v20, v25 | v15 | v23 | v29 | v28))
  {
    v30 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
    if (*(a1 + *(v30 + 20)) == *(a2 + *(v30 + 20)))
    {
      v31 = v30;
      static ParticipantViewModel.== infix(_:_:)();
      if (v32)
      {
        return *(a1 + *(v31 + 28)) == *(a2 + *(v31 + 28));
      }
    }
  }

  return 0;
}

uint64_t ParticipantViewRepresentable.isInRoster.setter(char a1)
{
  result = OUTLINED_FUNCTION_6_111();
  *(v1 + v4) = a1;
  return result;
}

uint64_t ParticipantViewRepresentable.init(viewModel:isInRoster:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  _s15ConversationKit20ParticipantViewModelO0C7DetailsVWObTm_0(a1, a3);
  result = OUTLINED_FUNCTION_6_111();
  *(a3 + v6) = a2;
  return result;
}

char *ParticipantViewRepresentable.makeUIView(context:)()
{
  v1 = *(v0 + *(type metadata accessor for ParticipantViewRepresentableViewModel(0) + 20));
  v2 = objc_allocWithZone(type metadata accessor for ParticipantView());
  return ParticipantView.init(frame:localParticipant:)(v1);
}

uint64_t ParticipantViewRepresentable.updateUIView(_:context:)()
{
  v1 = OUTLINED_FUNCTION_24_1();
  v2 = type metadata accessor for ParticipantViewRepresentableViewModel(v1);
  ParticipantView.configure(with:isOneToOneMode:)(v0 + *(v2 + 24), 0);
  OUTLINED_FUNCTION_6_111();
  return ParticipantView.isInRoster.setter(*(v0 + v3));
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ParticipantViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4UUIDVACSHAAWlTm_8(&lazy protocol witness table cache variable for type ParticipantViewRepresentable and conformance ParticipantViewRepresentable, type metadata accessor for ParticipantViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ParticipantViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4UUIDVACSHAAWlTm_8(&lazy protocol witness table cache variable for type ParticipantViewRepresentable and conformance ParticipantViewRepresentable, type metadata accessor for ParticipantViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ParticipantViewRepresentable()
{
  _s10Foundation4UUIDVACSHAAWlTm_8(&lazy protocol witness table cache variable for type ParticipantViewRepresentable and conformance ParticipantViewRepresentable, type metadata accessor for ParticipantViewRepresentable);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t outlined assign with take of ParticipantViewRepresentableViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantViewRepresentableViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ParticipantViewRepresentableViewModel()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ParticipantViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CNKDeviceOrientation(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for ParticipantViewRepresentable()
{
  result = type metadata accessor for ParticipantViewRepresentableViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ScreenSharingSpectatorViewModel.__allocating_init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_28_0();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_2_80();

  return specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v0, v1, v2, v3);
}

uint64_t key path setter for ScreenSharingSpectatorViewModel.broadcastingParticipant : ScreenSharingSpectatorViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v8 - v5, &_s15ConversationKit11ParticipantVSgMd);
  return (*(**a2 + 224))(v6);
}

uint64_t ScreenSharingSpectatorViewModel.broadcastingParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 912))();

  v4 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v4, a1, &_s15ConversationKit11ParticipantVSgMd);
}

uint64_t ScreenSharingSpectatorViewModel.broadcastingParticipant.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  v6 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v6, v2, &_s15ConversationKit11ParticipantVSgMd);
  v7 = OUTLINED_FUNCTION_45_1();
  v9 = specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(v7, v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
  if (v9)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_91();
    *(v11 - 16) = v1;
    *(v11 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v12();
  }

  else
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v2, &_s15ConversationKit11ParticipantVSgMd);
    swift_beginAccess();
    outlined assign with take of Participant?(v2, v1 + v6);
    swift_endAccess();
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit11ParticipantVSgMd);
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.broadcastingParticipant.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant;
  swift_beginAccess();
  outlined assign with copy of Participant?(a2, a1 + v4);
  return swift_endAccess();
}

void (*ScreenSharingSpectatorViewModel.broadcastingParticipant.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._broadcastingParticipant.modify();
  return ScreenSharingSpectatorViewModel.broadcastingParticipant.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.isZoomEnabled : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.isZoomEnabled.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isZoomEnabled;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*ScreenSharingSpectatorViewModel.isZoomEnabled.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._isZoomEnabled.modify();
  return ScreenSharingSpectatorViewModel.isZoomEnabled.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.isPipped : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.isPipped.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isPipped;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*ScreenSharingSpectatorViewModel.isPipped.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._isPipped.modify();
  return ScreenSharingSpectatorViewModel.isPipped.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.disableRequestButton : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingSpectatorViewModel.isZoomEnabled.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 912))();

  v5 = *a2;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v2 + v5);
}

uint64_t ScreenSharingSpectatorViewModel.isZoomEnabled.setter(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v7 - 16) = v2;
    *(v7 - 8) = v3;
    (*(*v2 + 920))();
  }

  return result;
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.disableRequestButton.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__disableRequestButton;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*ScreenSharingSpectatorViewModel.disableRequestButton.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._disableRequestButton.modify();
  return ScreenSharingSpectatorViewModel.disableRequestButton.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.activeParticipantObserver : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingSpectatorViewModel.activeParticipantObserver : ScreenSharingSpectatorViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 416);

  return v2(v3);
}

uint64_t ScreenSharingSpectatorViewModel.activeParticipantObserver.getter()
{
  return ScreenSharingSpectatorViewModel.activeParticipantObserver.getter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 912))();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

void (*ScreenSharingSpectatorViewModel.activeParticipantObserver.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._activeParticipantObserver.modify();
  return ScreenSharingSpectatorViewModel.activeParticipantObserver.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.sessionObserver : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingSpectatorViewModel.sessionObserver : ScreenSharingSpectatorViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 464);

  return v2(v3);
}

uint64_t ScreenSharingSpectatorViewModel.activeParticipantObserver.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();

  v6 = specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(v5, a1);

  if (v6)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_91();
    *(v8 - 16) = v2;
    *(v8 - 8) = a1;
    (*(*v2 + 920))();
  }

  else
  {
    *(v2 + v4) = a1;
  }
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.activeParticipantObserver.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void (*ScreenSharingSpectatorViewModel.sessionObserver.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_23_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22_1(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  (*(v3 + 912))();

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_0_199();
  v6 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v4, v5);
  OUTLINED_FUNCTION_19_17(v6);

  OUTLINED_FUNCTION_57_0();
  *(v0 + 56) = ScreenSharingSpectatorViewModel._sessionObserver.modify();
  return ScreenSharingSpectatorViewModel.sessionObserver.modify;
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.isTransitioningRemoteControlState : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingSpectatorViewModel.isTransitioningRemoteControlState.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 912))();

  return *(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState);
}

uint64_t ScreenSharingSpectatorViewModel.isTransitioningRemoteControlState.setter(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlState) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v5();
  }

  return result;
}

uint64_t ScreenSharingSpectatorViewModel.isTransitioningRemoteControlStateTask.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 912))();
}

uint64_t ScreenSharingSpectatorViewModel.isTransitioningRemoteControlStateTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask;

  v5 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v4, a1);

  if (v5)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_91();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v8();
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.isTransitioningRemoteControlStateTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__isTransitioningRemoteControlStateTask) = a2;
}

uint64_t ScreenSharingSpectatorViewModel.remoteControlStateTransitionTime.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ScreenSharingSpectatorViewModel.remoteControlStateTransitionTime.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 912))();

  return *(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
}

uint64_t ScreenSharingSpectatorViewModel.remoteControlStateTransitionTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime);
  result = static Duration.== infix(_:_:)();
  if (result)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_63_2();
    v8();
  }

  return result;
}

uint64_t ScreenSharingSpectatorViewModel._remoteControlState.didset(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = *a1;
  v8 = *(*v2 + 648);
  v9 = outlined copy of RemoteControlState(*a1);
  v8(&v25, v9);
  v10 = v25;
  v11 = v7 >> 61;
  if (v7 >> 61 != 1)
  {
    if (v11 == 2)
    {
      v12 = v25 >> 61 == 5;
LABEL_8:
      if (!v12 || (v25 | 0x10) != 0xA000000000000010)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    if (v11 == 4)
    {
      v12 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 == 2 && (v25 & 0xE000000000000000) == 0xA000000000000000;
      goto LABEL_8;
    }

LABEL_12:
    outlined consume of RemoteControlState(v7);
    return outlined consume of RemoteControlState(v10);
  }

  if (v25 >> 61 != 2)
  {
    if (v25 >> 61 == 4)
    {
      v15 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      outlined consume of RemoteControlState(v7);
      result = outlined consume of RemoteControlState(v10);
      if (v15 >> 61 != 2)
      {
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_17:
  outlined consume of RemoteControlState(v7);
  outlined consume of RemoteControlState(v10);
LABEL_18:
  ScreenSharingSpectatorViewModel.isTransitioningRemoteControlState.setter(1);
  v16 = ScreenSharingSpectatorViewModel.isTransitioningRemoteControlStateTask.getter();
  if (v16)
  {
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v17, MEMORY[0x1E69E7CA8] + 8, v18, MEMORY[0x1E69E7288]);
  }

  v19 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v19);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v2;
  v23 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  return ScreenSharingSpectatorViewModel.isTransitioningRemoteControlStateTask.setter(v23);
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset, v7, v6);
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset()
{
  OUTLINED_FUNCTION_44();
  ScreenSharingSpectatorViewModel.remoteControlStateTransitionTime.getter();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset;
  OUTLINED_FUNCTION_3_0();

  return specialized Clock.sleep(for:tolerance:)();
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = OUTLINED_FUNCTION_32_2();
  v4(v3);
  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData();
  }

  else
  {
    v7 = closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  ScreenSharingSpectatorViewModel.isTransitioningRemoteControlState.setter(0);

  OUTLINED_FUNCTION_13();

  return v0();
}

unint64_t ScreenSharingSpectatorViewModel._remoteControlState.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState);
  *(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState) = *a1;
  outlined copy of RemoteControlState(v2);
  outlined consume of RemoteControlState(v2);
  v4 = v2;
  ScreenSharingSpectatorViewModel._remoteControlState.didset(&v4);

  return outlined consume of RemoteControlState(v2);
}

void *key path getter for ScreenSharingSpectatorViewModel.remoteControlState : ScreenSharingSpectatorViewModel@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 648))(&v4);
  *a2 = v4;
  return result;
}

unint64_t key path setter for ScreenSharingSpectatorViewModel.remoteControlState : ScreenSharingSpectatorViewModel(unint64_t *a1)
{
  v2 = *a1;
  outlined copy of RemoteControlState(v2);
  return ScreenSharingSpectatorViewModel.remoteControlState.setter(&v2);
}

unint64_t ScreenSharingSpectatorViewModel.remoteControlState.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 912))();

  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState);
  *a1 = v4;

  return outlined copy of RemoteControlState(v4);
}

unint64_t ScreenSharingSpectatorViewModel.remoteControlState.setter(unint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState);
  outlined copy of RemoteControlState(v3);
  v4 = OUTLINED_FUNCTION_45_1();
  v6 = specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(v4, v5);
  outlined consume of RemoteControlState(v3);
  if (v6)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_91();
    *(v8 - 16) = v1;
    *(v8 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v9();
    outlined consume of RemoteControlState(v2);
  }

  else
  {
    v11 = v2;
    return ScreenSharingSpectatorViewModel._remoteControlState.setter(&v11);
  }
}

unint64_t closure #1 in ScreenSharingSpectatorViewModel.remoteControlState.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  outlined copy of RemoteControlState(a2);
  return ScreenSharingSpectatorViewModel._remoteControlState.setter(&v3);
}

uint64_t ScreenSharingSpectatorViewModel.requirmentsLock.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 912))();
}

uint64_t ScreenSharingSpectatorViewModel.requirmentsLock.setter(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 920))();
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.requirmentsLock.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__requirmentsLock) = a2;
}

void ScreenSharingSpectatorViewModel._remoteControlRequirements.didset()
{
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.screenSharing);
  OUTLINED_FUNCTION_28_0();

  oslog = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_397();

  if (os_log_type_enabled(oslog, v1))
  {
    v3 = OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_23();
    *v3 = 136315138;
    (*(*v0 + 752))();
    v4 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v15);
    OUTLINED_FUNCTION_28_0();

    *(v3 + 4) = v0;
    OUTLINED_FUNCTION_33_38(&dword_1BBC58000, v6, v7, "Updated remote control requirements satisfied %s", v8, v9, v10, v11, v12, oslog);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }
}

uint64_t key path getter for ScreenSharingSpectatorViewModel.remoteControlRequirements : ScreenSharingSpectatorViewModel()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 752))();
  *v0 = result;
  return result;
}

uint64_t ScreenSharingSpectatorViewModel.remoteControlRequirements.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 912))();

  return *(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
}

void ScreenSharingSpectatorViewModel.remoteControlRequirements.setter(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) == a1)
  {

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v5();
  }
}

uint64_t ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_2_80();

  return specialized ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v0, v1, v2, v3);
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_23_17(v7);
    type metadata accessor for MainActor();

    v8 = a2;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v8;
    OUTLINED_FUNCTION_67_13();
  }

  return result;
}

uint64_t closure #1 in closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  v8 = v0;
  v1 = *(v0 + 24);

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))(&v7, v2);
  ScreenSharingSpectatorViewModel.remoteControlState.setter(&v7);
  OUTLINED_FUNCTION_87_0();
  (*(v3 + 648))(&v7);
  switch(v7 >> 61)
  {
    case 1uLL:
      v6 = *(v0 + 16);
      outlined consume of RemoteControlState(v7);
      (*(*v6 + 368))(1);
      break;
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v7);
LABEL_3:
      (*(**(v0 + 16) + 368))(0);
      break;
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

void closure #2 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
  OUTLINED_FUNCTION_1();
  v36 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *v4;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Log.screenSharing);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_42();
    v14 = OUTLINED_FUNCTION_38_32();
    v38[0] = v14;
    *v0 = 136315138;
    if (v10)
    {
      v37 = v10;
      type metadata accessor for ScreenSharingInteractionSession();

      v15 = String.init<A>(reflecting:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v38);

    *(v0 + 4) = v18;
    OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v19, v20, "Loading session into view model %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (v10)
  {

    GroupSession.activity.getter();
    if (v38[0])
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_38();
      (*(v21 + 912))();

      v38[0] = v2;
      swift_getKeyPath();
      OUTLINED_FUNCTION_0_199();
      _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v22, v23);
      OUTLINED_FUNCTION_49_20();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v24 = *(v2 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
      if ((v24 & 0x10) == 0)
      {
        *(v2 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v24 | 0x10;
      }

      ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
      v38[0] = v2;
      swift_getKeyPath();
      OUTLINED_FUNCTION_49_20();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_13_38();
    (*(v25 + 912))();

    v38[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_199();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v26, v27);
    OUTLINED_FUNCTION_49_20();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v28 = *(v2 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v28 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v28 | 1;
    }

    ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
    v38[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_49_20();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    GroupSession.$activeParticipants.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v2;
    *(v29 + 24) = v10;
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);

    v30 = Publisher<>.sink(receiveValue:)();

    (*(v36 + 8))(v9, v5);
    OUTLINED_FUNCTION_87_0();
    (*(v31 + 416))(v30);
  }

  else
  {
    ScreenSharingSpectatorViewModel.requirmentsLock.getter();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v32);
    *(&v35 - 2) = partial apply for closure #1 in closure #2 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:);
    *(&v35 - 1) = v2;
    os_unfair_lock_lock(v33 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v34, v38);
    os_unfair_lock_unlock(0x10);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #2 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  (*(*a1 + 912))();

  swift_getKeyPath();
  _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4 = *(a1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
  if (v4)
  {
    *(a1 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements) = v4 & 0xFFFFFFFFFFFFFFFELL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v4 & 1) == 0;
  ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #2 in closure #2 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  v0 = ScreenSharingSpectatorViewModel.requirmentsLock.getter();
  os_unfair_lock_lock(v0 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v0 + 4);
}

uint64_t closure #1 in closure #2 in closure #2 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.screenSharing);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(a1 + 16);

    *(v8 + 12) = 2080;
    type metadata accessor for ScreenSharingInteractionSession();

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Updating participant requirement with active count %ld for session %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  (*(*a3 + 912))(KeyPath);

  if (v13 == 2)
  {
    v20 = a3;
    swift_getKeyPath();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements;
    v16 = *(a3 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v16 & 2) == 0)
    {
      v17 = v16 | 2;
LABEL_11:
      *(a3 + v15) = v17;
    }
  }

  else
  {
    v20 = a3;
    swift_getKeyPath();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements;
    v18 = *(a3 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v18 & 2) != 0)
    {
      v17 = v18 & 0xFFFFFFFFFFFFFFFDLL;
      goto LABEL_11;
    }
  }

  ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
  v20 = a3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t ScreenSharingSpectatorViewModel.activeControlParticipant.getter@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 648))(&v8);
  v3 = (v8 >> 61) - 2;
  result = outlined consume of RemoteControlState(v8);
  if (v3 <= 2 && (OUTLINED_FUNCTION_5_18(), (result = (*(v5 + 248))()) != 0))
  {
    ScreenSharingInteractionSession.activeControlParticipant.getter(&v7);

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void ScreenSharingSpectatorViewModel.statusText.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 216))();
  v8 = OUTLINED_FUNCTION_60_16();
  if (__swift_getEnumTagSinglePayload(v8, v9, v5) != 1)
  {
    outlined init with take of Participant(v2, v1);
    OUTLINED_FUNCTION_0_1();
    v11 = (*(v10 + 648))(&v73);
    v12 = v73;
    v13 = (*(*v0 + 784))(&v72, v11);
    v14 = v72;
    v15 = (*(*v0 + 504))(v13);
    OUTLINED_FUNCTION_38_4();
    v17 = (*(v16 + 264))();
    if (v14)
    {
      if (v14 != 1)
      {
        v18 = "ONTROLLING_ZOOM_OUT";
        v19 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v23 = v22 | 2;
LABEL_18:
        v25.super.isa = v19;
        OUTLINED_FUNCTION_17_0(v23, v18 | 0x8000000000000000, v20, v21, v25);
        OUTLINED_FUNCTION_87();

LABEL_20:
        outlined consume of RemoteControlState(v12);
LABEL_35:
        OUTLINED_FUNCTION_1_163();
        _s15ConversationKit11ParticipantVWOhTm_14(v1, v62);
        goto LABEL_36;
      }

      if ((v15 & 1) == 0)
      {
        v26 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v27.super.isa = v26;
        OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC517470, v28, v29, v27);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_63_13();
        Participant.contactDetails.getter();
        v31 = v68;
        v32 = v69;

        *(v30 + 56) = MEMORY[0x1E69E6158];
        *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v30 + 32) = v31;
        *(v30 + 40) = v32;
        OUTLINED_FUNCTION_32_2();
        String.init(format:_:)();
        OUTLINED_FUNCTION_87();

        goto LABEL_20;
      }
    }

    if (v12 >> 61 != 2)
    {
      if (v12 >> 61 == 5 && (v12 == 0xA000000000000000 || v12 == 0xA000000000000010))
      {
        if (v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined consume of RemoteControlState(v12);
      }

      goto LABEL_14;
    }

    if ((v17 & 1) == 0)
    {
      outlined consume of RemoteControlState(v12);
      if ((v15 & 1) == 0)
      {
LABEL_24:
        v33 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v34.super.isa = v33;
        OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC5173E0, v35, v36, v34);
        OUTLINED_FUNCTION_87();

        goto LABEL_35;
      }

LABEL_14:
      OUTLINED_FUNCTION_63_13();
      Participant.screenInfo.getter();
      if (v68 == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      }

      else if (v71)
      {
        outlined destroy of Participant.ScreenInfo(v67);
      }

      else
      {
        v37 = v70;
        outlined destroy of Participant.ScreenInfo(v67);
        v38 = TUScreenShareDeviceFamily.displayName.getter(v37);
        if (v39)
        {
          v40 = v39;
          v63 = v38;
          v41 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v42.super.isa = v41;
          OUTLINED_FUNCTION_17_0(v43, 0x80000001BC5173C0, v44, v45, v42);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1BC4BAA20;
          Participant.contactDetails.getter();

          v47 = MEMORY[0x1E69E6158];
          *(v46 + 56) = MEMORY[0x1E69E6158];
          v48 = lazy protocol witness table accessor for type String and conformance String();
          *(v46 + 32) = v65;
          *(v46 + 40) = v66;
          *(v46 + 96) = v47;
          *(v46 + 104) = v48;
          *(v46 + 64) = v48;
          *(v46 + 72) = v63;
          *(v46 + 80) = v40;
          String.init(format:_:)();
          OUTLINED_FUNCTION_87();
LABEL_34:

          goto LABEL_35;
        }
      }

      OUTLINED_FUNCTION_63_13();
      Participant.screenInfo.getter();
      if (v68 == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        v49 = 0;
        v50 = 1;
      }

      else
      {
        v50 = v71;
        if (v71)
        {
          v49 = 0;
        }

        else
        {
          v49 = v70;
        }

        outlined destroy of Participant.ScreenInfo(v67);
      }

      v51 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v49, v50 & 1, 0xD000000000000018, 0x80000001BC4F84F0);
      v53 = v52;
      v54 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v55.super.isa = v54;
      OUTLINED_FUNCTION_17_0(v51, v53, v56, v57, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1BC4BA940;
      OUTLINED_FUNCTION_63_13();
      Participant.contactDetails.getter();
      v59 = v67[0];
      v60 = v68;
      v61 = v69;

      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v58 + 32) = v60;
      *(v58 + 40) = v61;
      String.init(format:_:)();
      OUTLINED_FUNCTION_87();
      goto LABEL_34;
    }

    v18 = "ONTROLLING_READY";
    v19 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v23 = v24 | 3;
    goto LABEL_18;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
LABEL_36:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ScreenSharingSpectatorViewModel.isContentTransformEnabled.getter()
{
  if (static Platform.current.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  (*(v1 + 648))(&v3);
  v0 = (v3 >> 61) - 5 < 0xFFFFFFFD;
  outlined consume of RemoteControlState(v3);
  return v0;
}

uint64_t ScreenSharingSpectatorViewModel.contentOrientation.getter()
{
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4();
  if (((*(v6 + 800))() & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  (*(v7 + 216))();
  v8 = OUTLINED_FUNCTION_60_16();
  if (__swift_getEnumTagSinglePayload(v8, v9, v2))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    return 0;
  }

  else
  {
    _s15ConversationKit11ParticipantVWOcTm_14(v1, v0, type metadata accessor for Participant);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    v10 = Participant.deviceOrientation.getter();
    _s15ConversationKit11ParticipantVWOhTm_14(v0, type metadata accessor for Participant);
  }

  return v10;
}

uint64_t ScreenSharingSpectatorViewModel.contentSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  OUTLINED_FUNCTION_0_1();
  (*(v17 + 216))();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit11ParticipantVSgMd);
  }

  outlined init with take of Participant(v8, v16);
  v19 = ScreenSharingSpectatorViewModel.contentOrientation.getter();
  if ((v20 & 1) == 0)
  {
    if ((v19 | 2) == 3)
    {
      Participant.aspectRatio.getter(&v35);
      if ((v36 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Participant.aspectRatio.getter(&v35);
      if ((v36 & 1) == 0)
      {
LABEL_14:
        OUTLINED_FUNCTION_1_163();
        return _s15ConversationKit11ParticipantVWOhTm_14(v16, v33);
      }
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationKit);
  OUTLINED_FUNCTION_19_49();
  _s15ConversationKit11ParticipantVWOcTm_14(v16, v13, v22);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_38_32();
    v34 = v25;
    *v0 = 136315138;
    _s15ConversationKit11ParticipantVWOcTm_14(v13, v5, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    specialized >> prefix<A>(_:)();
    v27 = v26;
    v29 = v28;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_14(v13, type metadata accessor for Participant);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v34);

    *(v0 + 4) = v30;
    OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v31, v32, "Couldn't determine participant orientation or size, falling back to a square aspect ratio for participant: %s");
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    _s15ConversationKit11ParticipantVWOhTm_14(v13, type metadata accessor for Participant);
  }

  return _s15ConversationKit11ParticipantVWOhTm_14(v16, type metadata accessor for Participant);
}

uint64_t ScreenSharingSpectatorViewModel.contentScale.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 216))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  }

  v8 = OUTLINED_FUNCTION_45_1();
  outlined init with take of Participant(v8, v9);
  Participant.screenInfo.getter();
  if (v12 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  }

  else
  {
    outlined destroy of Participant.ScreenInfo(v11);
  }

  Participant.screenInfo.getter();
  OUTLINED_FUNCTION_1_163();
  _s15ConversationKit11ParticipantVWOhTm_14(v0, v10);
  if (v12 == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  }

  else
  {
    return outlined destroy of Participant.ScreenInfo(v11);
  }
}

uint64_t ScreenSharingSpectatorViewModel.cornerRadius.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 216))();
  v7 = OUTLINED_FUNCTION_60_16();
  if (__swift_getEnumTagSinglePayload(v7, v8, v4) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  }

  outlined init with take of Participant(v1, v0);
  Participant.screenInfo.getter();
  if (v14 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v10 + 416))();
    goto LABEL_11;
  }

  if ((v17 & 1) != 0 || (v15 & 1) == 0)
  {
LABEL_10:
    outlined destroy of Participant.ScreenInfo(v13);
LABEL_11:
    OUTLINED_FUNCTION_13_38();
    (*(v11 + 824))();
    OUTLINED_FUNCTION_1_163();
    return _s15ConversationKit11ParticipantVWOhTm_14(v0, v12);
  }

  switch(v16)
  {
    case 0:
    case 1:
    case 3:
    case 4:
      goto LABEL_10;
    case 2:
      type metadata accessor for UIView();
      static UIView.screenScale.getter();
      static UIView.screenScale.getter();
      goto LABEL_10;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25TUScreenShareDeviceFamilyVSgMd);
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t ScreenSharingSpectatorViewModel.bezelEffects.getter()
{
  v9 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 856))())
  {
    specialized Set._Variant.insert(_:)(&v5, 0);
  }

  OUTLINED_FUNCTION_13_38();
  if (((*(v1 + 264))() & 1) == 0)
  {
    OUTLINED_FUNCTION_13_38();
    if (((*(v2 + 312))() & 1) == 0)
    {
      specialized Set._Variant.insert(_:)(&v8, 1u);
      OUTLINED_FUNCTION_87_0();
      (*(v3 + 784))(&v7);
      if (v7 == 1)
      {
        specialized Set._Variant.insert(_:)(&v6, 2u);
      }
    }
  }

  return v9;
}

BOOL ScreenSharingSpectatorViewModel.bezelShieldMaterial.getter()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 648))(&v7);
  v3 = v7;
  v4 = (*(*v0 + 504))(v2);
  v5 = 0;
  if (v3 >> 61 == 4 && (v4 & 1) == 0)
  {
    v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 2;
  }

  outlined consume of RemoteControlState(v3);
  return v5;
}

uint64_t ScreenSharingSpectatorViewModel.shouldShowModalOverlay.getter()
{
  OUTLINED_FUNCTION_0_1();
  if ((*(v1 + 312))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_1();
  v3 = (*(v2 + 648))(&v8);
  v4 = v8;
  v5 = (*(*v0 + 504))(v3);
  switch(v4 >> 61)
  {
    case 1uLL:
      outlined consume of RemoteControlState(v4);
      goto LABEL_10;
    case 2uLL:
      outlined consume of RemoteControlState(v4);
      goto LABEL_9;
    case 4uLL:
      v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      outlined consume of RemoteControlState(v4);
      if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_10;
    case 5uLL:
      if (v4 != 0xA000000000000000 && v4 != 0xA000000000000010)
      {
        goto LABEL_11;
      }

LABEL_9:
      if ((v5 & 1) == 0)
      {
        return 0;
      }

LABEL_10:
      result = 1;
      break;
    default:
LABEL_11:
      outlined consume of RemoteControlState(v4);
      return 0;
  }

  return result;
}

BOOL ScreenSharingSpectatorViewModel.shouldShowHomeButton.getter()
{
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4();
  (*(v6 + 648))(v15);
  v7 = (v15[0] >> 61) - 2;
  outlined consume of RemoteControlState(v15[0]);
  if (v7 > 2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_1();
  (*(v8 + 216))();
  v9 = OUTLINED_FUNCTION_60_16();
  if (__swift_getEnumTagSinglePayload(v9, v10, v2))
  {
    v11 = &_s15ConversationKit11ParticipantVSgMd;
    v12 = v1;
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, v11);
    return 0;
  }

  _s15ConversationKit11ParticipantVWOcTm_14(v1, v0, type metadata accessor for Participant);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_14(v0, type metadata accessor for Participant);
  if (v15[3] == 1)
  {
    v11 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
    v12 = v15;
    goto LABEL_6;
  }

  if ((v16 & 1) == 0)
  {
    v14 = v15[24];
    outlined destroy of Participant.ScreenInfo(v15);
    return v14 - 1 < 2;
  }

  outlined destroy of Participant.ScreenInfo(v15);
  return 0;
}

Swift::Void __swiftcall ScreenSharingSpectatorViewModel.handleHomeButtonTapped()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = type metadata accessor for SystemGestureEvent();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v7 = *((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel_interactionController)) + 0xF8);
  v8 = v7();
  if (v8)
  {
    v9 = (*(*v8 + 312))(v8);

    if (v9)
    {
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, &static Log.screenSharing);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v20 = v12;
        OUTLINED_FUNCTION_42();
        v19 = OUTLINED_FUNCTION_38_32();
        v21 = v19;
        *v2 = 136315138;
        if (v7())
        {
          type metadata accessor for ScreenSharingInteractionSession();
          v13 = String.init<A>(reflecting:)();
          v15 = v14;
        }

        else
        {
          v15 = 0xE300000000000000;
          v13 = 7104878;
        }

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

        *(v2 + 4) = v16;
        _os_log_impl(&dword_1BBC58000, v11, v20, "Sending home button event to remote control session: %s", v2, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      (*(v5 + 104))(v1, *MEMORY[0x1E69C9D60], v3);
      CaptureUIInteraction.sendHardwareGesture(_:)();

      v17 = OUTLINED_FUNCTION_45_1();
      v18(v17);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ScreenSharingSpectatorViewModel.requestOrEndRemoteControl()()
{
  OUTLINED_FUNCTION_0_1();
  v2 += 81;
  v3 = *v2;
  (*v2)(&v24);
  v4 = 1 << (v24 >> 61);
  if ((v4 & 0xB) != 0)
  {
    outlined consume of RemoteControlState(v24);
  }

  else
  {
    if ((v4 & 0x14) != 0)
    {
      outlined consume of RemoteControlState(v24);
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_7_17();

      __asm { BRAA            X0, X16 }
    }

    if (v24 == 0xA000000000000010)
    {
      OUTLINED_FUNCTION_13_38();
      (*(v19 + 888))();
      goto LABEL_16;
    }
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.screenSharing);
  OUTLINED_FUNCTION_28_0();

  oslog = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_397();

  if (os_log_type_enabled(oslog, v1))
  {
    v6 = OUTLINED_FUNCTION_42();
    v24 = OUTLINED_FUNCTION_23();
    *v6 = 136315138;
    v3(&v23);
    v7 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v24);
    OUTLINED_FUNCTION_28_0();

    *(v6 + 4) = v0;
    OUTLINED_FUNCTION_33_38(&dword_1BBC58000, v9, v10, "Unexpected user interaction to start/end screen sharing in current state %s", v11, v12, v13, v14, v20, oslog);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_27();

LABEL_16:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ScreenSharingSpectatorViewModel.requestRemoteControl()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_38_4();
  (*(v2 + 272))(0);
  v3 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_23_17(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  OUTLINED_FUNCTION_67_13();
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd);
  v0[3] = swift_task_alloc();
  v0[4] = type metadata accessor for RemoteControlRequest(0);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl(), 0, 0);
}

{
  v22 = v0;
  UUID.init()();
  Date.init()();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v3, &static Log.screenSharing);
  _s15ConversationKit11ParticipantVWOcTm_14(v2, v1, type metadata accessor for RemoteControlRequest);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_23();
    *v10 = 136446210;
    _s15ConversationKit11ParticipantVWOcTm_14(v7, v9, type metadata accessor for RemoteControlRequest);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v8);
    specialized >> prefix<A>(_:)();
    v12 = v11;
    v14 = v13;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit20RemoteControlRequestVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_14(v7, type metadata accessor for RemoteControlRequest);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Sending remote control request %{public}s", v10, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_7_97();
    _s15ConversationKit11ParticipantVWOhTm_14(v7, v16);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_18();
  v20 = (*(v17 + 552) + **(v17 + 552));
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl();

  return v20();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl();
  }

  else
  {
    v5 = closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_7_97();
  _s15ConversationKit11ParticipantVWOhTm_14(v0, v1);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  v18 = v1;
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_7_97();
  _s15ConversationKit11ParticipantVWOhTm_14(v3, v4);
  v5 = v2;
  v6 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v0))
  {
    v7 = *(v1 + 72);
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v17 = v9;
    *v8 = 136315138;
    *(v1 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v6, v0, "Error sending remote control request %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
    v14 = *(v1 + 72);
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

Swift::Void __swiftcall ScreenSharingSpectatorViewModel.endRemoteControl()()
{
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 520))();
  OUTLINED_FUNCTION_87_0();
  if ((*(v1 + 408))())
  {
    AnyCancellable.cancel()();
  }
}

Swift::Void __swiftcall ScreenSharingSpectatorViewModel.cancelOrEndRemoteControl()()
{
  OUTLINED_FUNCTION_0_1();
  v2 += 81;
  v3 = *v2;
  (*v2)(&v23);
  switch(v23 >> 61)
  {
    case 1uLL:
      outlined consume of RemoteControlState(v23);
      OUTLINED_FUNCTION_5_18();
      (*(v18 + 512))();
      goto LABEL_14;
    case 2uLL:
    case 4uLL:
      outlined consume of RemoteControlState(v23);
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_7_17();

      __asm { BRAA            X0, X16 }

      return;
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v23);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, &static Log.screenSharing);
      OUTLINED_FUNCTION_28_0();

      oslog = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_397();

      if (os_log_type_enabled(oslog, v1))
      {
        v5 = OUTLINED_FUNCTION_42();
        v23 = OUTLINED_FUNCTION_23();
        *v5 = 136315138;
        v3(&v22);
        v6 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v23);
        OUTLINED_FUNCTION_28_0();

        *(v5 + 4) = v0;
        OUTLINED_FUNCTION_33_38(&dword_1BBC58000, v8, v9, "Unexpected user interaction to start/end screen sharing in current state %s", v10, v11, v12, v13, v19, oslog);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_27();

LABEL_14:
        OUTLINED_FUNCTION_7_17();
      }

      else
      {
        OUTLINED_FUNCTION_7_17();
      }

      return;
  }
}

uint64_t ScreenSharingSpectatorViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_199();
  _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ScreenSharingSpectatorViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_199();
  _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_49_20();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

BOOL specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for AnyCancellable();
      _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);

      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v14 = *(v13 + 56);
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v42 - v11, &_s15ConversationKit11ParticipantVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(a2, &v12[v14], &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v12, v9, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) == 1)
    {
      _s15ConversationKit11ParticipantVWOhTm_14(v9, type metadata accessor for Participant);
      goto LABEL_6;
    }

    outlined init with take of Participant(&v12[v14], v6);
    static Participant.State.== infix(_:_:)();
    if (v16 & 1) != 0 && (static UUID.== infix(_:_:)())
    {
      v17 = *(v4 + 28);
      v18 = *&v9[v17];
      if (*&v6[v17])
      {
        if (v18)
        {
LABEL_11:
          v19 = *(v4 + 24);
          v20 = v9[v19];
          v21 = v9[v19 + 1];
          v22 = v9[v19 + 2];
          v23 = v9[v19 + 3];
          v24 = v9[v19 + 4];
          v25 = &v6[v19];
          v26 = *v25;
          v27 = v25[1];
          v28 = v25[2];
          v29 = v25[3];
          v30 = v25[4];
          if (v24)
          {
            v31 = 0x100000000;
          }

          else
          {
            v31 = 0;
          }

          if (v23)
          {
            v32 = 0x1000000;
          }

          else
          {
            v32 = 0;
          }

          v33 = v22 == 0;
          v34 = 0x10000;
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0x10000;
          }

          v33 = v21 == 0;
          v36 = 256;
          if (v33)
          {
            v37 = 0;
          }

          else
          {
            v37 = 256;
          }

          v38 = v37 | v20 | v35 | v32;
          if (v30)
          {
            v39 = 0x100000000;
          }

          else
          {
            v39 = 0;
          }

          if (v29)
          {
            v40 = 0x1000000;
          }

          else
          {
            v40 = 0;
          }

          if (!v28)
          {
            v34 = 0;
          }

          if (!v27)
          {
            v36 = 0;
          }

          v15 = !static Participant.Capabilities.== infix(_:_:)(v38 | v31, v36 | v26 | v34 | v40 | v39);
          goto LABEL_36;
        }
      }

      else if (!v18)
      {
        goto LABEL_11;
      }
    }

    v15 = 1;
LABEL_36:
    _s15ConversationKit11ParticipantVWOhTm_14(v6, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_14(v9, type metadata accessor for Participant);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantVSgMd);
    return v15;
  }

  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantVSg_ADtMd);
    return 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantVSgMd);
  return 0;
}

BOOL specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return (static RemoteControlState.== infix(_:_:)(&v4, &v3) & 1) == 0;
}

uint64_t ScreenSharingSpectatorViewModel.deinit()
{
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__broadcastingParticipant, &_s15ConversationKit11ParticipantVSgMd);

  outlined consume of RemoteControlState(*(v0 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlState));

  v1 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ScreenSharingSpectatorViewModel.__deallocating_deinit()
{
  ScreenSharingSpectatorViewModel.deinit();
  OUTLINED_FUNCTION_38_4();

  return swift_deallocClassInstance();
}

void ScreenSharingSpectatorViewModel.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  type metadata accessor for ScreenSharingStateMonitor();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x108);
    v17 = swift_unknownObjectRetain();
    v16(v17);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.conversationKit);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_18_0(v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1BBC58000, v19, v20, "Couldn't find active participant, not updating screen sharing view.", v21, 2u);
        OUTLINED_FUNCTION_27();
      }

      __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
      (*(v1->isa + 28))(v6);
      goto LABEL_8;
    }

    outlined init with take of Participant(v9, v14);
    if (Participant.screenState.getter() == 2 || (Participant.isReceivingScreenFrames.getter() & 1) == 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      Participant.screenProvider.getter();
      if (!v70[3])
      {
        OUTLINED_FUNCTION_1_163();
        _s15ConversationKit11ParticipantVWOhTm_14(v14, v46);
        swift_unknownObjectRelease();
        v47 = &_s15ConversationKit24ParticipantVideoProvider_pSgMd;
        v48 = v70;
LABEL_34:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, v47);
        goto LABEL_23;
      }

      v28 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      (*(v0->isa + 27))(v28);
      v29 = Participant.requiresScreenInfoUpdate(from:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
      if ((v29 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_163();
        _s15ConversationKit11ParticipantVWOhTm_14(v14, v49);
LABEL_8:
        swift_unknownObjectRelease();
LABEL_23:
        OUTLINED_FUNCTION_30_0();
        return;
      }

      OUTLINED_FUNCTION_19_49();
      v30 = OUTLINED_FUNCTION_32_2();
      _s15ConversationKit11ParticipantVWOcTm_14(v30, v31, v32);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
      (*(v1->isa + 28))(v6);
      Participant.screenInfo.getter();
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v33 = type metadata accessor for Logger();
      v34 = __swift_project_value_buffer(v33, &static Log.screenSharing);
      outlined init with copy of (CGFloat, AutoplayCandidate)(v70, v68, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v66 = v34;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_42();
        v38 = OUTLINED_FUNCTION_23();
        v67 = v38;
        *v37 = 136315138;
        v39 = specialized >> prefix<A>(_:)(v68);
        v41 = v40;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v67);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1BBC58000, v35, v36, "Received broadcaster screen info %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      }

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v51))
      {
        OUTLINED_FUNCTION_42();
        v52 = OUTLINED_FUNCTION_38_32();
        v68[0] = v52;
        *v36 = 136315138;
        v67 = [objc_opt_self() currentDeviceFamily];
        type metadata accessor for TUScreenShareDeviceFamily(0);
        v53 = String.init<A>(reflecting:)();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v68);

        *(v36 + 4) = v55;
        OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v56, v57, "Local user device type is %s");
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      outlined init with copy of (CGFloat, AutoplayCandidate)(v70, v68, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if (v68[3] == 1)
      {
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        OUTLINED_FUNCTION_1_163();
        _s15ConversationKit11ParticipantVWOhTm_14(v14, v58);
        v48 = v68;
        v47 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
        goto LABEL_34;
      }

      if (v69)
      {
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        OUTLINED_FUNCTION_1_163();
        _s15ConversationKit11ParticipantVWOhTm_14(v14, v59);
        outlined destroy of Participant.ScreenInfo(v68);
        goto LABEL_23;
      }

      v60 = v68[23];
      outlined destroy of Participant.ScreenInfo(v68);
      v61 = [objc_opt_self() currentDeviceFamily];
      v62 = ScreenSharingSpectatorViewModel.requirmentsLock.getter();
      MEMORY[0x1EEE9AC00](v62);
      *(&v66 - 4) = v61;
      *(&v66 - 3) = v60;
      *(&v66 - 2) = v1;
      MEMORY[0x1EEE9AC00](v63);
      *(&v66 - 2) = partial apply for closure #1 in ScreenSharingSpectatorViewModel.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:);
      *(&v66 - 1) = v64;
      os_unfair_lock_lock(v65 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
      os_unfair_lock_unlock(v62 + 4);

      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    }

    OUTLINED_FUNCTION_1_163();
    _s15ConversationKit11ParticipantVWOhTm_14(v14, v43);
    goto LABEL_23;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationKit);
  swift_unknownObjectRetain();
  v66 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v66, v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    v70[0] = OUTLINED_FUNCTION_23();
    *v24 = 136315138;
    swift_getObjectType();
    v25 = _typeName(_:qualified:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v70);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v66, v23, "screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:) was unexpectedly passed a %s", v24, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_27();

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ScreenSharingSpectatorViewModel.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    if (a2 != 1)
    {
      goto LABEL_14;
    }
  }

  else if (a1 == 3)
  {
    if (a2 != 3 && a2 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (a1 != 2 || a2 != 2)
  {
LABEL_14:
    swift_getKeyPath();
    (*(*a3 + 912))();

    swift_getKeyPath();
    _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements;
    v8 = *(a3 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
    if ((v8 & 4) != 0)
    {
      v7 = v8 & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  swift_getKeyPath();
  (*(*a3 + 912))();

  swift_getKeyPath();
  _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements;
  v6 = *(a3 + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlRequirements);
  if ((v6 & 4) == 0)
  {
    v7 = v6 | 4;
LABEL_16:
    *(a3 + v5) = v7;
  }

LABEL_17:
  ScreenSharingSpectatorViewModel._remoteControlRequirements.didset();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

{
  v1 = v0[9];
  v2 = type metadata accessor for ContinuousClock();
  v3 = _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_32_2();
  v5(v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = specialized Clock.sleep(for:tolerance:);
  v7 = v0[11];

  return MEMORY[0x1EEE6DE58](v7, v0 + 2, v2, v3);
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  result = specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t outlined init with take of Participant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ScreenSharingSpectatorViewModel()
{
  result = type metadata singleton initialization cache for ScreenSharingSpectatorViewModel;
  if (!type metadata singleton initialization cache for ScreenSharingSpectatorViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl()()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_49(v1);

  return closure #1 in ScreenSharingSpectatorViewModel.requestRemoteControl()();
}

unint64_t lazy protocol witness table accessor for type RemoteControlRequirements and conformance RemoteControlRequirements()
{
  result = lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements;
  if (!lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements;
  if (!lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements;
  if (!lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements;
  if (!lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlRequirements and conformance RemoteControlRequirements);
  }

  return result;
}

void type metadata completion function for ScreenSharingSpectatorViewModel()
{
  type metadata accessor for Participant?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t partial apply for closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_24_49(v4);

  return closure #1 in ScreenSharingSpectatorViewModel._remoteControlState.didset(v6, v7, v1, v2);
}

__n128 partial apply for closure #1 in ScreenSharingSpectatorViewModel.remoteControlStateTransitionTime.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC15ConversationKit31ScreenSharingSpectatorViewModel__remoteControlStateTransitionTime) = result;
  return result;
}

uint64_t _s15ConversationKit31ScreenSharingSpectatorViewModelCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)()
{
  OUTLINED_FUNCTION_44();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_24_49(v5);

  return closure #1 in closure #1 in ScreenSharingSpectatorViewModel.init(serverBag:interactionController:screenSharingStateMonitor:)(v7, v8, v1, v3, v2);
}

void OUTLINED_FUNCTION_67_13()
{

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t CNKBannerPresentationManager.presentationDelegate.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 272);
  v3 = v2;
  v4 = v1();

  return v4;
}

void CNKBannerPresentationManager.presentationDelegate.setter()
{
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 280);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v2(v5);
}

id key path getter for CNKBannerPresentationManager.presentationDelegate : CNKBannerPresentationManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationDelegate];
  *a2 = result;
  return result;
}

uint64_t CNKBannerPresentationManager.audioRoutingDelegate.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 296);
  v3 = v2;
  v4 = v1();

  return v4;
}

void CNKBannerPresentationManager.audioRoutingDelegate.setter()
{
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 304);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v2(v5);
}

id key path getter for CNKBannerPresentationManager.audioRoutingDelegate : CNKBannerPresentationManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioRoutingDelegate];
  *a2 = result;
  return result;
}

uint64_t CNKBannerPresentationManager.handedOffCall.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 368);
  v3 = v2;
  v4 = v1();

  return v4;
}

void CNKBannerPresentationManager.handedOffCall.setter()
{
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 376);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v2(v5);
}

id key path getter for CNKBannerPresentationManager.handedOffCall : CNKBannerPresentationManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 handedOffCall];
  *a2 = result;
  return result;
}

uint64_t CNKBannerPresentationManager.inCallControlsVisible.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 656);
  v3 = v2;
  v4 = v1();

  return v4 & 1;
}

void CNKBannerPresentationManager.localAudioTogglingDelegate.getter()
{
  OUTLINED_FUNCTION_11_97();
  v0 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 472);
  v4 = v3;
  OUTLINED_FUNCTION_9_97();
  v5 = v2();

  if (v5)
  {
    OUTLINED_FUNCTION_2_20();
    (*(v6 + 1328))();
  }

  OUTLINED_FUNCTION_10_84();
}

void CNKBannerPresentationManager.localAudioTogglingDelegate.setter()
{
  OUTLINED_FUNCTION_11_97();
  v1 = v0;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 472);
  v5 = v4;
  v6 = v3();

  if (v6)
  {
    OUTLINED_FUNCTION_6_112();
    (*(v7 + 1336))(v1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_10_84();
}

id key path getter for CNKBannerPresentationManager.localAudioTogglingDelegate : CNKBannerPresentationManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 localAudioTogglingDelegate];
  *a2 = result;
  return result;
}

void CNKBannerPresentationManager.placeholderCallGroupUUID.getter(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  v4 = *(v1 + v3);
  BannerPresentationManager.placeholderCallGroupUUID.getter(a1);
}

Class @objc CNKBannerPresentationManager.placeholderCallGroupUUID.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1;
  a3();

  v9 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  return isa;
}

void CNKBannerPresentationManager.callUUID.getter()
{
  OUTLINED_FUNCTION_11_97();
  v1 = v0;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 472);
  v5 = v4;
  v6 = v3();

  if (v6)
  {
    OUTLINED_FUNCTION_6_112();
    (*(v7 + 680))();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v1, v8, 1, v9);
  OUTLINED_FUNCTION_10_84();
}

void CNKBannerPresentationManager.shouldShowCallDetailsWhenReady.getter()
{
  OUTLINED_FUNCTION_11_97();
  v0 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 472);
  v4 = v3;
  OUTLINED_FUNCTION_9_97();
  v5 = v2();

  if (v5)
  {
    OUTLINED_FUNCTION_2_20();
    (*(v6 + 912))();
  }

  OUTLINED_FUNCTION_10_84();
}

void CNKBannerPresentationManager.applicationState.getter()
{
  OUTLINED_FUNCTION_11_97();
  v0 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 472);
  v4 = v3;
  OUTLINED_FUNCTION_9_97();
  v5 = v2();

  if (v5)
  {
    OUTLINED_FUNCTION_2_20();
    (*(v6 + 2536))();
  }

  OUTLINED_FUNCTION_10_84();
}

void CNKBannerPresentationManager.applicationState.setter()
{
  OUTLINED_FUNCTION_11_97();
  v1 = v0;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 472);
  v5 = v4;
  v6 = v3();

  if (v6)
  {
    OUTLINED_FUNCTION_6_112();
    (*(v7 + 2544))(v1);
  }

  OUTLINED_FUNCTION_10_84();
}

uint64_t CNKBannerPresentationManager.activeCall.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 392);
  v3 = v2;
  v4 = v1();

  return v4;
}

BOOL CNKBannerPresentationManager.hasAssociatedCall.getter()
{
  v1 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = BannerPresentationManager.associatedCall.getter();

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

char *CNKBannerPresentationManager.gameControllerManager.getter()
{
  type metadata accessor for CNKGameControllerManager(0);
  v1 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  return CNKGameControllerManager.init(value:)(*(*(v0 + v1) + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_gameControllerManager));
}

Swift::Void __swiftcall CNKBannerPresentationManager.refreshShareableContentWithBundleIdentifier(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  OUTLINED_FUNCTION_4_5();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_137();
  v5 = *(v4 + 472);
  v7 = v6;
  v8 = v5();

  if (v8)
  {
    (*((*v3 & *v8) + 0x890))(countAndFlagsBits, object);
  }
}

Swift::Void __swiftcall CNKBannerPresentationManager.dismissPresentedBanner(forReason:animated:)(Swift::String forReason, Swift::Bool animated)
{
  OUTLINED_FUNCTION_11_97();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_4_5();
  v10 = *(v2 + v9);
  v11 = MEMORY[0x1BFB209B0](v8, v6);
  [v10 dismissPresentedBannerForReason:v11 animated:v4 & 1];

  OUTLINED_FUNCTION_10_84();
}

Swift::Void __swiftcall CNKBannerPresentationManager.gameControllerDidRequestFocus(_:)(Swift::Bool a1)
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  v4 = *(v1 + v3);
  BannerPresentationManager.requestKeyboardFocus(wantsKeyboardFocus:)(a1);
}

Swift::Void __swiftcall CNKBannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v4 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_4_5();
  v5 = *(v1 + v4);
  v6 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  [v5 invalidatePersistentSystemApertureAlertWithReason_];
}

id CNKBannerPresentationManager.didUpdatePresentationModeToFullScreen()(SEL *a1)
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  return [*(v1 + v3) *a1];
}

uint64_t CNKBannerPresentationManager.makeSystemApertureElementProvider()()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 592);
  v3 = v2;
  v4 = v1();

  return v4;
}

uint64_t CNKBannerPresentationManager.conversationControlsManager.getter()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 472);
  v3 = v2;
  v4 = v1();

  return v4;
}

id CNKBannerPresentationManager.value.getter()
{
  v1 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void CNKBannerPresentationManager.value.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void __swiftcall CNKBannerPresentationManager.init()(CNKBannerPresentationManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CNKBannerPresentationManager.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for BannerPresentationManager());
  *&v0[OBJC_IVAR___CNKBannerPresentationManager_value] = BannerPresentationManager.init(delegate:)();
  v3.receiver = v0;
  v3.super_class = CNKBannerPresentationManager;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t CNKBannerPresentationManager.init(delegate:)(uint64_t a1)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRelease();
  return v1;
}

void CNKBannerPresentationManager.init(delegate:)()
{
  OUTLINED_FUNCTION_11_97();
  [v0 init];
  v1 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 280);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_28_0();
  v3(v6);

  OUTLINED_FUNCTION_10_84();
}

unint64_t type metadata accessor for CNKBannerPresentationManager()
{
  result = lazy cache variable for type metadata for CNKBannerPresentationManager;
  if (!lazy cache variable for type metadata for CNKBannerPresentationManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNKBannerPresentationManager);
  }

  return result;
}

uint64_t NotificationObserver.__allocating_init(name:notificationCenter:onNotificaiton:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NotificationObserver.init(name:notificationCenter:onNotificaiton:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NotificationObserver.init(name:notificationCenter:onNotificaiton:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v12[3] = &block_descriptor_98;
  v7 = _Block_copy(v12);
  v8 = a2;
  v9 = a1;

  v10 = [v8 addObserverForName:v9 object:v4 queue:0 usingBlock:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t NotificationObserver.deinit()
{
  [*(v0 + 16) removeObserver_];

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  NotificationObserver.deinit();

  return swift_deallocClassInstance();
}

id PushToTalkTalkButtonGestureRecognizer.init(interval:maximumVerticalVelocity:target:action:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_timer] = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_previous;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointV8location_10Foundation4DateV4timetMd);
  __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_recognizedGestureWorkItem] = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_interval;
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  *&v4[OBJC_IVAR____TtC15ConversationKit37PushToTalkTalkButtonGestureRecognizer_maximumVerticalVelocity] = a4;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a2, v29, &_sypSgMd);
  v14 = v30;
  if (v30)
  {
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v27[1] = v27;
    OUTLINED_FUNCTION_2_7();
    v15 = a1;
    v16 = a3;
    v18 = v17;
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_8();
    v22 = v21 - v20;
    (*(v18 + 16))(v21 - v20);
    v23 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v22, v14);
    a3 = v16;
    a1 = v15;
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for PushToTalkTalkButtonGestureRecognizer();
  v28.receiver = v4;
  v28.super_class = v24;
  v25 = objc_msgSendSuper2(&v28, sel_initWithTarget_action_, v23, a3);
  swift_unknownObjectRelease();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a2, &_sypSgMd);
  (*(v13 + 8))(a1, v12);
  return v25;
}