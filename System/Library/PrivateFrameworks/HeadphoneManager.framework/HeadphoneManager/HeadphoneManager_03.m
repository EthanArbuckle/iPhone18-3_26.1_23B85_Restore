uint64_t implicit closure #1 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:)@<X0>(void *a1@<X8>)
{
  v1 = Headphone_Manager.shared.unsafeMutableAddressor();
  v2 = *v1;
  v6 = *v1;
  v3 = MEMORY[0x1E69E5928](*v1);
  *a1 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x198))(v3);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t HeadphoneDevice.supportsFeature(feature:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v41 = 1;
      break;
    case 1:
      v40 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v40 flags];
      MEMORY[0x1E69E5920](v40);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 2:
      v38 = MEMORY[0x1E69E7D40];
      v37 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v37 0x1FA979C78];
      MEMORY[0x1E69E5920](v37);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v1 = OptionSet<>.contains(_:)();
      v2 = (*((*v42 & *v38) + 0x6B0))(v1 & 1);
      v39 = (*((*v42 & *v38) + 0x240))(v2);
      [v39 0x1FA979C78];
      MEMORY[0x1E69E5920](v39);
      v41 = OptionSet<>.contains(_:)();
      break;
    case 3:
      v36 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v36 flags];
      MEMORY[0x1E69E5920](v36);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 4:
      v35 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v35 flags];
      MEMORY[0x1E69E5920](v35);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 5:
      v34 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v34 flags];
      MEMORY[0x1E69E5920](v34);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 6:
      v33 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      [v33 deviceFlags];
      MEMORY[0x1E69E5920](v33);
      type metadata accessor for CBDeviceFlags();
      lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 7:
      v32 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v32 flags];
      MEMORY[0x1E69E5920](v32);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 8:
      v41 = 0;
      break;
    case 9:
      v41 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x2A0))();
      break;
    case 10:
      v31 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0xBB0))();
      (MEMORY[0x1E69E5928])();
      if (v31)
      {
        v29 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
        [v29 flags];
        MEMORY[0x1E69E5920](v29);
        type metadata accessor for CBProductFlags();
        lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
        v30 = OptionSet<>.contains(_:)();
      }

      else
      {
        v30 = 0;
      }

      (MEMORY[0x1E69E5920])();
      v41 = v30;
      break;
    case 11:
    case 13:
    case 14:
      v41 = 1;
      break;
    case 12:
      v41 = 0;
      break;
    case 15:
      v28 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v28 flags];
      MEMORY[0x1E69E5920](v28);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 16:
      v27 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x240))();
      [v27 flags];
      MEMORY[0x1E69E5920](v27);
      type metadata accessor for CBProductFlags();
      lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
      v41 = OptionSet<>.contains(_:)();
      break;
    case 17:
      v24 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v25 = [v24 muteControlCapability];
      MEMORY[0x1E69E5920](v24);
      v26 = CBPeerCallManagementCapability.rawValue.getter(v25);
      v3 = (MEMORY[0x1E69E5928])();
      if (v26)
      {
        v23 = 1;
      }

      else
      {
        v21 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))(v3);
        v22 = [v21 endCallCapability];
        MEMORY[0x1E69E5920](v21);
        v23 = CBPeerCallManagementCapability.rawValue.getter(v22) != 0;
      }

      (MEMORY[0x1E69E5920])();
      v41 = v23;
      break;
    case 18:
      v19 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v20 = [v19 selectiveSpeechListeningCapability];
      MEMORY[0x1E69E5920](v19);
      v41 = CBPeerSelectiveSpeechListeningCapability.rawValue.getter(v20) != 0;
      break;
    case 19:
      v17 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v18 = [v17 conversationDetectCapability];
      MEMORY[0x1E69E5920](v17);
      v41 = CBPeerConversationDetectCapability.rawValue.getter(v18) != 0;
      break;
    case 20:
      v15 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v16 = [v15 adaptiveVolumeCapability];
      MEMORY[0x1E69E5920](v15);
      v41 = CBPeerAdaptiveVolumeCapability.rawValue.getter(v16) != 0;
      break;
    case 21:
      v14 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0xC30))();
      (MEMORY[0x1E69E5928])();
      if (v14)
      {
        v13 = 1;
      }

      else
      {
        v12 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x258))();
        if (v12)
        {
          v10 = [v12 autoANCCapability];
          MEMORY[0x1E69E5920](v12);
          v11 = AAAutoANCCapability.rawValue.getter(v10);
          v13 = v11 >= AAAutoANCCapability.rawValue.getter(3);
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      (MEMORY[0x1E69E5920])();
      v41 = v13;
      break;
    case 22:
      v9 = (*((*v42 & *MEMORY[0x1E69E7D40]) + 0x258))();
      if (v9)
      {
        v8 = v9;
      }

      else
      {
        LOBYTE(v5) = 2;
        v6 = 428;
        LODWORD(v7) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      [v8 bobbleCapability];
      MEMORY[0x1E69E5920](v8);
      type metadata accessor for AAFeatureCapability();
      lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
      v41 = == infix<A>(_:_:)();
      break;
    case 23:
      v41 = 1;
      break;
    case 24:
    case 25:
      v41 = HeadphoneDevice.shouldShowFirmwareSeeding()();
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return v41 & 1;
}

void (*HeadphoneDevice.updateFeatureValues(feature:)(uint64_t a1))(void)
{
  v358 = MEMORY[0x1EEE9AC00](a1);
  v361 = 0;
  v360._countAndFlagsBits = 0;
  v360._object = 0;
  v385 = v358;
  v384 = v1;
  type metadata accessor for Log();
  static Log.shared.getter();
  v382 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v383 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: updateFeatureValues mode: ", 0x2CuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v381 = v358;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v356 = v382;
  v355 = v383;

  outlined destroy of DefaultStringInterpolation(&v382);
  MEMORY[0x1DA7309B0](v356, v355);
  dispatch thunk of Log.notice(_:function:file:line:)();

  type metadata accessor for CBDeviceSettings();
  v357 = CBDeviceSettings.__allocating_init()();
  v380 = v357;
  type metadata accessor for AADeviceConfig();
  v5 = AADeviceConfig.__allocating_init()();
  v359 = v5;
  v379 = v5;
  v378 = 0;
  v377 = v358;
  switch(v358)
  {
    case 0:
      v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x360))(v358);
      v354 = MEMORY[0x1DA730940](v6);

      [v357 setName_];
      MEMORY[0x1E69E5920](v354);
      goto LABEL_145;
    case 1:
      [v357 setListeningMode_];
      v353 = [v357 listeningMode];
      switch(v353)
      {
        case 1u:
          v352 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
          v351 = (*(*v352 + 112))();
          v9 = *(v8 + 288);
          *(v8 + 280) = v7;

          v351();

          goto LABEL_145;
        case 2u:
          v350 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseCancellation", 0x11uLL, 1);
          v349 = (*(*v350 + 112))();
          v12 = *(v11 + 288);
          *(v11 + 280) = v10;

          v349();

          goto LABEL_145;
        case 3u:
          v348 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Transparency", 0xCuLL, 1);
          v347 = (*(*v348 + 112))();
          v15 = *(v14 + 288);
          *(v14 + 280) = v13;

          v347();

          goto LABEL_145;
        case 4u:
          v346 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
          v345 = (*(*v346 + 112))();
          v18 = *(v17 + 288);
          *(v17 + 280) = v16;

          v345();
          break;
        default:
          v344 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v343 = (*(*v344 + 112))();
          object = v20[25]._object;
          v20[25] = v19;

          v343();
          break;
      }

      goto LABEL_69;
    case 2:
      v342 = MEMORY[0x1E69E7D40];
      v340 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v358);
      v341 = [v340 clickHoldModeLeft];
      MEMORY[0x1E69E5920](v340);
      v365 = v341;
      v364 = (*((*v1 & *v342) + 0x3F0))();
      type metadata accessor for CBPeerUIGestureMode();
      lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v22 & 1) == 0)
      {
        [v357 setClickHoldModeLeft_];
        v339 = [v357 clickHoldModeLeft];
        if (v339 == 1)
        {
          v338 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v337 = (*(*v338 + 112))();
          v25 = v24[25]._object;
          v24[25] = v23;

          v337();
        }

        else if (v339 == 5)
        {
          v336 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseControl", 0xCuLL, 1);
          v335 = (*(*v336 + 112))();
          v28 = v27[25]._object;
          v27[25] = v26;

          v335();
        }

        else if (v339 == 6)
        {
          v334 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeUp", 8uLL, 1);
          v333 = (*(*v334 + 112))();
          v31 = v30[25]._object;
          v30[25] = v29;

          v333();
        }

        else
        {
          if (v339 == 7)
          {
            v332 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeDown", 0xAuLL, 1);
            v331 = (*(*v332 + 112))();
            v34 = v33[25]._object;
            v33[25] = v32;

            v331();
          }

          else
          {
            v330 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v329 = (*(*v330 + 112))();
            v37 = v36[25]._object;
            v36[25] = v35;

            v329();
          }
        }
      }

      v328 = MEMORY[0x1E69E7D40];
      v326 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v22);
      v327 = [v326 clickHoldModeRight];
      MEMORY[0x1E69E5920](v326);
      v363 = v327;
      v362 = (*((*v1 & *v328) + 0x420))();
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v38 & 1) == 0)
      {
        [v357 setClickHoldModeRight_];
        v325 = [v357 clickHoldModeRight];
        if (v325 == 1)
        {
          v324 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v323 = (*(*v324 + 112))();
          v41 = v40[26]._object;
          v40[26] = v39;

          v323();
        }

        else if (v325 == 5)
        {
          v322 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseControl", 0xCuLL, 1);
          v321 = (*(*v322 + 112))();
          v44 = v43[26]._object;
          v43[26] = v42;

          v321();
        }

        else if (v325 == 6)
        {
          v320 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeUp", 8uLL, 1);
          v319 = (*(*v320 + 112))();
          v47 = v46[26]._object;
          v46[26] = v45;

          v319();
        }

        else
        {
          if (v325 == 7)
          {
            v318 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VolumeDown", 0xAuLL, 1);
            v317 = (*(*v318 + 112))();
            v50 = v49[26]._object;
            v49[26] = v48;

            v317();
          }

          else
          {
            v316 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v315 = (*(*v316 + 112))();
            v53 = v52[26]._object;
            v52[26] = v51;

            v315();
          }
        }
      }

      if (((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x678))(v38) & 1) == 0)
      {
        type metadata accessor for CBListeningModeConfigs();
        _allocateUninitializedArray<A>(_:)();
        lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
        SetAlgebra<>.init(arrayLiteral:)();
        v360 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v54 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x4F8))();
        if (v54)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NC", 2uLL, 1);
          static String.+= infix(_:_:)();
        }

        v55 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x4C8))(v54);
        if (v55)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
          static String.+= infix(_:_:)();
        }

        v56 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x498))(v55);
        if (v56)
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("T", 1uLL, 1);
          static String.+= infix(_:_:)();
        }

        if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x468))(v56))
        {
          lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
          OptionSet<>.insert(_:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Auto", 4uLL, 1);
          static String.+= infix(_:_:)();
        }

        v314 = MEMORY[0x1E69E7D40];
        (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x458))(v361);
        v310 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v309 = (*(*v310 + 112))();
        v59 = v58[4]._object;
        v58[4] = v57;

        v309();

        v312 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v311 = (*(*v312 + 112))();
        v62 = v61[3]._object;
        v61[3] = v60;

        v311();

        v313 = (*((*v1 & *v314) + 0x228))(v63);
        [v313 listeningModeConfigs];
        MEMORY[0x1E69E5920](v313);
        (*((*v1 & *v314) + 0x450))();
        lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          v307 = MEMORY[0x1E69E7D40];
          v64 = [v357 setListeningModeConfigs_];
          v308 = (*((*v1 & *v307) + 0x240))(v64);
          [v308 flags];
          MEMORY[0x1E69E5920](v308);
          type metadata accessor for CBProductFlags();
          lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
          if (OptionSet<>.contains(_:)())
          {
            v300 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v298 = v360._object;

            v299 = (*(*v300 + 112))();
            v71 = *(v70 + 88);
            *(v70 + 80) = v360._countAndFlagsBits;
            *(v70 + 88) = v298;

            v299();
          }

          else
          {
            (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
            lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
            v65 = == infix<A>(_:_:)();
            if (v65)
            {
              v306 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

              v304 = v360._object;

              v305 = (*(*v306 + 112))();
              v67 = *(v66 + 56);
              *(v66 + 48) = v360._countAndFlagsBits;
              *(v66 + 56) = v304;

              v305();
            }

            (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x420))(v65);
            if (== infix<A>(_:_:)())
            {
              v303 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

              v301 = v360._object;

              v302 = (*(*v303 + 112))();
              v69 = *(v68 + 72);
              *(v68 + 64) = v360._countAndFlagsBits;
              *(v68 + 72) = v301;

              v302();
            }
          }
        }

        outlined destroy of String(&v360);
      }

      goto LABEL_145;
    case 3:
      v297 = MEMORY[0x1E69E7D40];
      v295 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v358);
      v296 = [v295 doubleTapActionLeft];
      MEMORY[0x1E69E5920](v295);
      v369 = v296;
      v368 = (*((*v1 & *v297) + 0x528))();
      type metadata accessor for CBDoubleTapAction();
      lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction();
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v72 & 1) == 0)
      {
        [v357 setDoubleTapActionLeft_];
        v294 = [v357 doubleTapActionLeft];
        if (v294 == 2)
        {
          v293 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v73 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v292 = (*(*v293 + 112))();
          v75 = *(v74 + 128);
          *(v74 + 120) = v73;

          v292();
        }

        else if (v294 == 3)
        {
          v291 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PlayPause", 9uLL, 1);
          v290 = (*(*v291 + 112))();
          v78 = *(v77 + 128);
          *(v77 + 120) = v76;

          v290();
        }

        else if (v294 == 4)
        {
          v289 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NextTrack", 9uLL, 1);
          v288 = (*(*v289 + 112))();
          v81 = *(v80 + 128);
          *(v80 + 120) = v79;

          v288();
        }

        else
        {
          if (v294 == 5)
          {
            v287 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreviousTrack", 0xDuLL, 1);
            v286 = (*(*v287 + 112))();
            v84 = *(v83 + 128);
            *(v83 + 120) = v82;

            v286();
          }

          else
          {
            v285 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

            v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
            v284 = (*(*v285 + 112))();
            v87 = *(v86 + 128);
            *(v86 + 120) = v85;

            v284();
          }
        }
      }

      v283 = MEMORY[0x1E69E7D40];
      v281 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v72);
      v282 = [v281 doubleTapActionRight];
      MEMORY[0x1E69E5920](v281);
      v367 = v282;
      v366 = (*((*v1 & *v283) + 0x558))();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        goto LABEL_145;
      }

      [v357 setDoubleTapActionRight_];
      v280 = [v357 doubleTapActionRight];
      switch(v280)
      {
        case 2u:
          v279 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Siri", 4uLL, 1);
          v278 = (*(*v279 + 112))();
          v90 = *(v89 + 144);
          *(v89 + 136) = v88;

          v278();

          goto LABEL_145;
        case 3u:
          v277 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PlayPause", 9uLL, 1);
          v276 = (*(*v277 + 112))();
          v93 = *(v92 + 144);
          *(v92 + 136) = v91;

          v276();

          goto LABEL_145;
        case 4u:
          v275 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NextTrack", 9uLL, 1);
          v274 = (*(*v275 + 112))();
          v96 = *(v95 + 144);
          *(v95 + 136) = v94;

          v274();

          goto LABEL_145;
        case 5u:
          v273 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreviousTrack", 0xDuLL, 1);
          v272 = (*(*v273 + 112))();
          v99 = *(v98 + 144);
          *(v98 + 136) = v97;

          v272();
          break;
        default:
          v271 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v270 = (*(*v271 + 112))();
          v102 = *(v101 + 144);
          *(v101 + 136) = v100;

          v270();
          break;
      }

      goto LABEL_69;
    case 4:
      [v357 setCrownRotationDirection_];
      v269 = [v357 crownRotationDirection];
      if (v269 == 1)
      {
        v268 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BackToFront", 0xBuLL, 1);
        v267 = (*(*v268 + 112))();
        v105 = v104[2]._object;
        v104[2] = v103;

        v267();

        goto LABEL_145;
      }

      if (v269 == 2)
      {
        v266 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FrontToBack", 0xBuLL, 1);
        v265 = (*(*v266 + 112))();
        v108 = v107[2]._object;
        v107[2] = v106;

        v265();
      }

      else
      {
        v264 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
        v263 = (*(*v264 + 112))();
        v111 = v110[2]._object;
        v110[2] = v109;

        v263();
      }

      goto LABEL_69;
    case 5:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v358))
      {
        v262 = 1;
      }

      else
      {
        v262 = 2;
      }

      [v357 setPlacementMode_];
      v261 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v112))
      {
        v115 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v114 = v115._object;
        v113 = v115._countAndFlagsBits;
      }

      else
      {
        v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v114 = v116._object;
        v113 = v116._countAndFlagsBits;
      }

      v259 = v113;
      v260 = v114;
      v258 = (*(*v261 + 112))();
      v118 = *(v117 + 264);
      *(v117 + 256) = v259;
      *(v117 + 264) = v260;

      v258();

      goto LABEL_145;
    case 6:
      [v357 setSmartRoutingMode_];
      v257 = [v357 smartRoutingMode];
      if (v257 == 1)
      {
        v256 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
        v255 = (*(*v256 + 112))();
        v121 = v120[2]._object;
        v120[2] = v119;

        v255();

        goto LABEL_145;
      }

      if (v257 == 2)
      {
        v254 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LastConnect", 0xBuLL, 1);
        v253 = (*(*v254 + 112))();
        v124 = v123[2]._object;
        v123[2] = v122;

        v253();
      }

      else
      {
        v252 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
        v251 = (*(*v252 + 112))();
        v127 = v126[2]._object;
        v126[2] = v125;

        v251();
      }

      goto LABEL_69;
    case 7:
      [v357 setMicrophoneMode_];
      v250 = [v357 microphoneMode];
      if (v250 == 1)
      {
        v249 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
        v248 = (*(*v249 + 112))();
        v130 = *(v129 + 336);
        *(v129 + 328) = v128;

        v248();
      }

      else if (v250 == 2)
      {
        v247 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AlwaysLeft", 0xAuLL, 1);
        v246 = (*(*v247 + 112))();
        v133 = *(v132 + 336);
        *(v132 + 328) = v131;

        v246();
      }

      else
      {
        if (v250 == 3)
        {
          v245 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v134 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AlwaysRight", 0xBuLL, 1);
          v244 = (*(*v245 + 112))();
          v136 = *(v135 + 336);
          *(v135 + 328) = v134;

          v244();
        }

        else
        {
          v243 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

          v137 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
          v242 = (*(*v243 + 112))();
          v139 = *(v138 + 336);
          *(v138 + 328) = v137;

          v242();
        }

LABEL_69:
      }

      goto LABEL_145;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 21:
    case 22:
      MEMORY[0x1E69E5920](v5);
      return MEMORY[0x1E69E5920](v357);
    case 17:
      v239 = MEMORY[0x1E69E7D40];
      v140 = [v357 setEndCallConfig_];
      v240 = (*((*v1 & *v239) + 0x228))(v140);
      v241 = [v240 muteControlCapability];
      MEMORY[0x1E69E5920](v240);
      if (CBPeerCallManagementCapability.rawValue.getter(v241))
      {
        [v357 setMuteControlConfig_];
      }

      v371[103] = [v357 endCallConfig];
      v371[102] = 3;
      type metadata accessor for CBPeerCallConfig();
      lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        v228 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressOnce", 9uLL, 1);
        v227 = (*(*v228 + 112))();
        v154 = *(v153 + 208);
        *(v153 + 200) = v152;

        v227();

        v229 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v155);
        v230 = [v229 muteControlCapability];
        MEMORY[0x1E69E5920](v229);
        if (!CBPeerCallManagementCapability.rawValue.getter(v230))
        {
          goto LABEL_145;
        }

        v224 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressTwice", 0xAuLL, 1);
        v223 = (*(*v224 + 112))();
        v158 = v157[22]._object;
        v157[22] = v156;

        v223();

        v225 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

        result = (*(*v225 + 112))(v371);
        v160 = *(v159 + 344);
        v226 = v160 + 1;
        if (!__OFADD__(v160, 1))
        {
          *(v159 + 344) = v226;
          result();

          goto LABEL_145;
        }

        __break(1u);
LABEL_165:
        __break(1u);
        return result;
      }

      v236 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v141 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressTwice", 0xAuLL, 1);
      v235 = (*(*v236 + 112))();
      v143 = *(v142 + 208);
      *(v142 + 200) = v141;

      v235();

      v237 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v144);
      v238 = [v237 muteControlCapability];
      MEMORY[0x1E69E5920](v237);
      if (!CBPeerCallManagementCapability.rawValue.getter(v238))
      {
        goto LABEL_145;
      }

      v232 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressOnce", 9uLL, 1);
      v231 = (*(*v232 + 112))();
      v147 = v146[22]._object;
      v146[22] = v145;

      v231();

      v233 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v233 + 112))(&v370);
      v150 = *(v149 + 344);
      v234 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        goto LABEL_165;
      }

      *(v149 + 344) = v234;
      result();

LABEL_145:
      v375 = v358;
      v374 = 6;
      lazy protocol witness table accessor for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures();
      if (== infix<A>(_:_:)())
      {
        v206 = HeadphoneDevice.deviceDelegate.getter();
        if (v206)
        {
          v205 = v206;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v205 updateOfflineDeviceConfigWithHpDevice:v1 settings:v357];
        swift_unknownObjectRelease();
        static Log.shared.getter();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call updateOfflineDeviceConfig", 0x44uLL, 1);
        v189 = 649;
        dispatch thunk of Log.notice(_:function:file:line:)();
      }

      else
      {
        v204 = HeadphoneDevice.deviceDelegate.getter();
        if (v204)
        {
          v203 = v204;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v203 updateDeviceConfigWithHpDevice:v1 settings:v357];
        swift_unknownObjectRelease();
        static Log.shared.getter();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call updateDeviceConfig", 0x3DuLL, 1);
        v189 = 652;
        dispatch thunk of Log.notice(_:function:file:line:)();
      }

      v373 = v358;
      v372 = 0;
      if (== infix<A>(_:_:)())
      {
        v202 = HeadphoneDevice.deviceDelegate.getter();
        if (v202)
        {
          v201 = v202;
        }

        else
        {
          LOBYTE(v189) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v201 updateTopLevelEntryWithHpDevice_];
        swift_unknownObjectRelease();
        v200 = HeadphoneDevice.deviceDelegate.getter();
        if (v200)
        {
          v199 = v200;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        swift_getObjectType();
        [v199 updateTitleBar];
        swift_unknownObjectRelease();
      }

      v194 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v196 = MEMORY[0x1E69E7D40];
      v192 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x228))(v183);
      v193 = [v192 productID];
      MEMORY[0x1E69E5920](v192);
      v184 = (*(*v194 + 136))();
      *(v185 + 32) = v193;
      v184();

      v195 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v197 = (*((*v1 & *v196) + 0x228))(v186);
      v198 = [v197 autoAncCapability];
      MEMORY[0x1E69E5920](v197);
      v371[239] = v198;
      v371[238] = 1;
      type metadata accessor for CBPeerAutoAncCapability();
      lazy protocol witness table accessor for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability();
      v191 = (== infix<A>(_:_:)() & 1) != 0;
      v187 = (*(*v195 + 136))();
      *(v188 + 40) = v191;
      v187();

      v190 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      (*(*v190 + 152))(v358);

      MEMORY[0x1E69E5920](v359);
      return MEMORY[0x1E69E5920](v357);
    case 18:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x840))(v358))
      {
        v222 = 1;
      }

      else
      {
        v222 = 2;
      }

      [v357 setSelectiveSpeechListeningConfig_];
      v221 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x840))(v162))
      {
        v165 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v164 = v165._object;
        v163 = v165._countAndFlagsBits;
      }

      else
      {
        v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v164 = v166._object;
        v163 = v166._countAndFlagsBits;
      }

      v219 = v163;
      v220 = v164;
      v218 = (*(*v221 + 112))();
      v168 = *(v167 + 496);
      *(v167 + 488) = v219;
      *(v167 + 496) = v220;

      v218();

      goto LABEL_145;
    case 19:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x870))(v358))
      {
        v217 = 1;
      }

      else
      {
        v217 = 2;
      }

      [v357 setConversationDetectConfig_];
      v216 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x870))(v169))
      {
        v172 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v171 = v172._object;
        v170 = v172._countAndFlagsBits;
      }

      else
      {
        v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v171 = v173._object;
        v170 = v173._countAndFlagsBits;
      }

      v214 = v170;
      v215 = v171;
      v213 = (*(*v216 + 112))();
      v175 = *(v174 + 520);
      *(v174 + 512) = v214;
      *(v174 + 520) = v215;

      v213();

      goto LABEL_145;
    case 20:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v358))
      {
        v212 = 1;
      }

      else
      {
        v212 = 2;
      }

      [v357 setAdaptiveVolumeConfig_];
      v211 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v176))
      {
        v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
        v178 = v179._object;
        v177 = v179._countAndFlagsBits;
      }

      else
      {
        v180 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
        v178 = v180._object;
        v177 = v180._countAndFlagsBits;
      }

      v209 = v177;
      v210 = v178;
      v208 = (*(*v211 + 112))();
      v182 = *(v181 + 544);
      *(v181 + 536) = v209;
      *(v181 + 544) = v210;

      v208();

      goto LABEL_145;
    case 23:
      if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0xAB0))(v358))
      {
        v207 = 1;
      }

      else
      {
        v207 = 2;
      }

      [v357 setSpatialAudioAllowed_];
      goto LABEL_145;
    case 24:
      HeadphoneDevice.setFirmwareUpgradeParticipation()();
      goto LABEL_145;
    case 25:
      HeadphoneDevice.setFirmwareLoggingEnabled()();
      goto LABEL_145;
    default:
      v376 = v358;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_145;
  }
}

uint64_t HeadphoneDevice.getFindMyUrl(hpDevice:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v113 = a1;
  v3 = v2;
  v4 = v113;
  v127 = v3;
  v114 = "getFindMyUrl(hpDevice:)";
  v115 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v116 = "Fatal error";
  v117 = "Unexpectedly found nil while unwrapping an Optional value";
  v118 = "HeadphoneManager/HeadphoneDevice.swift";
  v119 = closure #1 in HeadphoneDevice.getFindMyUrl(hpDevice:);
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v141 = 0;
  v142 = 0;
  v120 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v121 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v122 = v50 - v121;
  v123 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - v121);
  v124 = v50 - v123;
  v125 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50 - v123);
  v126 = v50 - v125;
  v128 = type metadata accessor for SHA256Digest();
  v129 = *(v128 - 8);
  v130 = v128 - 8;
  v131 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128);
  v132 = v50 - v131;
  v152 = v50 - v131;
  v151 = v4;
  v150 = v8;
  v133 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v134 = [v133 btAddressData];
  if (v134)
  {
    v111 = v134;
    v106 = v134;
    v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v9;
    MEMORY[0x1E69E5920](v106);
    v109 = v107;
    v110 = v108;
  }

  else
  {
    v109 = 0;
    v110 = 0xF000000000000000;
  }

  v104 = v110;
  v105 = v109;
  if ((v110 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v133);
    v50[3] = 0;
    type metadata accessor for Log();
    v50[1] = static Log.shared.getter();
    v51 = 1;
    v50[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();

    v50[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://devices", 0x10uLL, v51 & 1)._object;
    URL.init(string:)();

    v52 = type metadata accessor for URL();
    v53 = *(v52 - 8);
    v54 = v52 - 8;
    if ((*(v53 + 48))(v122, v51) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return (*(v53 + 32))(v112, v122, v52);
  }

  else
  {
    v102 = v105;
    v103 = v104;
    v101 = v104;
    v100 = v105;
    v148 = v105;
    v149 = v104;
    MEMORY[0x1E69E5920](v133);
    if (MEMORY[0x1DA730470](v100, v101) == 6)
    {
      v10 = v120;
      v82 = 1;
      v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X:%02X:%02X:%02X:%02X:%02X", 0x1DuLL, 1);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      v79 = _allocateUninitializedArray<A>(_:)();
      v78 = v11;
      v93 = 0;
      v12 = MEMORY[0x1DA7304B0]();
      v13 = v78;
      v76 = MEMORY[0x1E69E7508];
      v78[3] = MEMORY[0x1E69E7508];
      v77 = MEMORY[0x1E69E7558];
      v13[4] = MEMORY[0x1E69E7558];
      *v13 = v12;
      v83 = 1;
      v14 = MEMORY[0x1DA7304B0]();
      v15 = v100;
      v16 = v101;
      v17 = v77;
      v18 = v78;
      v78[8] = v76;
      v18[9] = v17;
      *(v18 + 40) = v14;
      v19 = MEMORY[0x1DA7304B0](2, v15, v16);
      v20 = v100;
      v21 = v101;
      v22 = v77;
      v23 = v78;
      v78[13] = v76;
      v23[14] = v22;
      *(v23 + 80) = v19;
      v24 = MEMORY[0x1DA7304B0](3, v20, v21);
      v25 = v100;
      v26 = v101;
      v27 = v77;
      v28 = v78;
      v78[18] = v76;
      v28[19] = v27;
      *(v28 + 120) = v24;
      v29 = MEMORY[0x1DA7304B0](4, v25, v26);
      v30 = v77;
      v31 = v78;
      v78[23] = v76;
      v31[24] = v30;
      *(v31 + 160) = v29;
      v81 = 5;
      v32 = MEMORY[0x1DA7304B0]();
      v33 = v77;
      v34 = v78;
      v78[28] = v76;
      v34[29] = v33;
      *(v34 + 200) = v32;
      _finalizeUninitializedArray<A>(_:)();
      v84 = String.init(format:_:)();
      v85 = v35;

      v146 = v84;
      v147 = v85;
      v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BT_%@", v81, v82 & 1);
      v88 = _allocateUninitializedArray<A>(_:)();
      v86 = v36;

      v98 = MEMORY[0x1E69E6158];
      v86[3] = MEMORY[0x1E69E6158];
      v37 = lazy protocol witness table accessor for type String and conformance String();
      v38 = v84;
      v39 = v85;
      v40 = v86;
      v86[4] = v37;
      *v40 = v38;
      v40[1] = v39;
      _finalizeUninitializedArray<A>(_:)();
      v90 = String.init(format:_:)();
      v91 = v41;

      v144 = v90;
      v145 = v91;
      v42 = MEMORY[0x1DA730A00]();
      v92 = v143;
      v143[0] = v42;
      v143[1] = v43;
      lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View();
      v95 = Data.init<A>(_:)();
      v94 = v44;
      v141 = v95;
      v142 = v44;
      type metadata accessor for SHA256();
      v97 = v140;
      v140[0] = v95;
      v140[1] = v94;
      v96 = lazy protocol witness table accessor for type SHA256 and conformance SHA256();
      lazy protocol witness table accessor for type Data and conformance Data();
      static HashFunction.hash<A>(data:)();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
      result = Sequence.compactMap<A>(_:)();
      v99 = result;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        v66 = &v139;
        v139 = v99;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v64 = lazy protocol witness table accessor for type [String] and conformance [A]();
        default argument 0 of BidirectionalCollection<>.joined(separator:)();
        v65 = v46;
        v67 = BidirectionalCollection<>.joined(separator:)();
        v68 = v47;

        outlined destroy of [String](v66);
        v137 = v67;
        v138 = v68;
        v72 = 1;
        v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://device/bridgemissingdevice?id=", 0x27uLL, 1);
        object = v48._object;
        v70 = MEMORY[0x1DA7309C0](v48._countAndFlagsBits);
        v71 = v49;

        v135 = v70;
        v136 = v71;
        URL.init(string:)();
        v73 = type metadata accessor for URL();
        v74 = *(v73 - 8);
        v75 = v73 - 8;
        if ((*(v74 + 48))(v126, v72) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        (*(v74 + 32))(v112, v126, v73);

        (*(v129 + 8))(v132, v128);
        outlined consume of Data._Representation(v95, v94);

        return outlined consume of Data._Representation(v100, v101);
      }
    }

    else
    {
      v58 = 0;
      type metadata accessor for Log();
      v56 = static Log.shared.getter();
      v59 = 1;
      v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
      dispatch thunk of Log.error(_:function:file:line:)();

      v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("findmy://devices", 0x10uLL, v59 & 1)._object;
      URL.init(string:)();

      v60 = type metadata accessor for URL();
      v61 = *(v60 - 8);
      v62 = v60 - 8;
      if ((*(v61 + 48))(v124, v59) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      (*(v61 + 32))(v112, v124, v60);
      return outlined consume of Data._Representation(v100, v101);
    }
  }

  return result;
}

uint64_t closure #1 in HeadphoneDevice.getFindMyUrl(hpDevice:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02x", 4uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  _allocateUninitializedArray<A>(_:)();
  *(v2 + 24) = MEMORY[0x1E69E7508];
  *(v2 + 32) = MEMORY[0x1E69E7558];
  *v2 = v5;
  _finalizeUninitializedArray<A>(_:)();
  v6 = String.init(format:_:)();
  v8 = v3;

  result = v6;
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t HeadphoneDevice.featureUpdateListener(_aaDevice:cbDevice:)(void *a1, void *a2)
{
  if ((*((*v2 & *MEMORY[0x1E69E7D40]) + 0x270))())
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Ignore the updated aaDevice", 0x2DuLL, 1);
    dispatch thunk of Log.debug(_:function:file:line:)();
  }

  else
  {
    MEMORY[0x1E69E5928](a1);
    v8 = MEMORY[0x1E69E7D40];
    v3 = (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x260))(a1);
    v9 = (*((*v13 & *v8) + 0xA80))(v3);
    v10 = (*((*v13 & *v8) + 0x258))();
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*v9 + 1960))(v7, v4, v5);
    MEMORY[0x1E69E5920](v7);

    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xB80))(a2);
    return HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(a1, a2);
  }
}

uint64_t HeadphoneDevice.featureUpdateListener(cbDevice:)(uint64_t a1)
{
  v758 = MEMORY[0x1EEE9AC00](a1);
  v746 = v1;
  v747 = "featureUpdateListener(cbDevice:)";
  v748 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v749 = partial apply for implicit closure #3 in HeadphoneDevice.featureUpdateListener(cbDevice:);
  v750 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v751 = closure #1 in OSLogArguments.append(_:)partial apply;
  v752 = closure #1 in OSLogArguments.append(_:)partial apply;
  v753 = closure #1 in OSLogArguments.append(_:)partial apply;
  v754 = "Fatal error";
  v755 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v756 = "HeadphoneManager/HeadphoneDevice.swift";
  v917 = 0;
  v916 = 0;
  v912 = 0;
  v903 = 0;
  v904 = 0;
  v896 = 0;
  v887 = 0;
  v880 = 0;
  v877 = 0;
  v874 = 0;
  v775 = 0;
  v776 = 0;
  v757 = 0;
  v759 = type metadata accessor for Logger();
  v760 = *(v759 - 8);
  v761 = v759 - 8;
  v762 = (*(v760 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v763 = v282 - v762;
  v917 = MEMORY[0x1EEE9AC00](v758);
  v916 = v1;
  if ((*((*v1 & *MEMORY[0x1E69E7D40]) + 0x270))())
  {
    type metadata accessor for Log();
    v282[1] = static Log.shared.getter();
    v282[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Ignore the updated cbDevice", 0x2DuLL, 1)._object;
    dispatch thunk of Log.debug(_:function:file:line:)();
  }

  else
  {
    v915[1] = [v758 deviceFlags];
    v736 = v915;
    v915[0] = 0x10000000;
    v743 = 0;
    v735 = type metadata accessor for CBDeviceFlags();
    lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
    v2 = OptionSet<>.contains(_:)();
    v737 = &v914;
    v914 = v2 & 1;
    v3 = *v746;
    v740 = MEMORY[0x1E69E7D40];
    v4 = *((v3 & *MEMORY[0x1E69E7D40]) + 0xAC0);
    v739 = &v913;
    v5 = v4();
    v6 = v746;
    v738 = v5;
    ==? infix<A>(_:_:)(v7, v737, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    v8 = v738();
    v912 = 0;
    v741 = (*((*v6 & *v740) + 0x240))(v8);
    v742 = [v741 flags];
    MEMORY[0x1E69E5920](v741);
    v911[1] = v742;
    v745 = v911;
    v911[0] = 8;
    v744 = type metadata accessor for CBProductFlags();
    lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
    if (OptionSet<>.contains(_:)())
    {
      v732 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v733 = 0x1FC277000uLL;
      [v732 0x1FC2772B3];
      v734 = v9;
      MEMORY[0x1E69E5920](v732);
      [v758 (v733 + 691)];
      if (v734 == v10)
      {
        v731 = 0;
      }

      else
      {
        v912 = 1;
        v731 = 1;
      }

      v730 = v731;
    }

    else
    {
      v726 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))();
      v727 = 0x1FC277000uLL;
      [v726 0x1FC2772A2];
      v729 = v11;
      MEMORY[0x1E69E5920](v726);
      [v758 (v727 + 674)];
      v728 = v12;
      MEMORY[0x1E69E5928](v746);
      v13 = MEMORY[0x1E69E5928](v758);
      if (v729 == v728)
      {
        v722 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))(v13, v729);
        v723 = 0x1FC277000uLL;
        [v722 0x1FC2772C4];
        v724 = v14;
        MEMORY[0x1E69E5920](v722);
        [v758 (v723 + 708)];
        v725 = v724 != v15;
      }

      else
      {
        v725 = 1;
      }

      v721 = v725;
      MEMORY[0x1E69E5920](v746);
      MEMORY[0x1E69E5920](v758);
      MEMORY[0x1E69E5928](v746);
      v16 = MEMORY[0x1E69E5928](v758);
      if (v721)
      {
        v720 = 1;
      }

      else
      {
        v717 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x228))(v16);
        v718 = 0x1FC277000uLL;
        [v717 0x1FC277291];
        v719 = v17;
        MEMORY[0x1E69E5920](v717);
        [v758 (v718 + 657)];
        v720 = v719 != v18;
      }

      v716 = v720;
      MEMORY[0x1E69E5920](v746);
      MEMORY[0x1E69E5920](v758);
      if (v716)
      {
        v912 = 1;
        v715 = 1;
      }

      else
      {
        v715 = 0;
      }

      v730 = v715;
    }

    v663 = v730;
    v19 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v697 = &v909;
    v909 = v19;
    v910 = v20;
    v695 = 1;
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager featureUpdate:", 0x1FuLL, 1);
    object = v21._object;
    MEMORY[0x1DA7310D0](v21._countAndFlagsBits);

    v665 = &v908;
    v908 = v746;
    v679 = 0;
    v667 = type metadata accessor for HeadphoneDevice();
    lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v690 = " ";
    v694 = 1;
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, v695 & 1);
    v666 = v22._object;
    MEMORY[0x1DA7310D0](v22._countAndFlagsBits);

    v677 = "%p";
    v678 = 2;
    v670 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%p", 2uLL, v695 & 1);
    v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    v669 = _allocateUninitializedArray<A>(_:)();
    v668 = v23;
    MEMORY[0x1E69E5928](v746);
    v668[3] = v667;
    v24 = lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    v25 = v668;
    v26 = v746;
    v668[4] = v24;
    *v25 = v26;
    _finalizeUninitializedArray<A>(_:)();
    v671 = String.init(format:_:)();
    v672 = v27;

    v673 = v907;
    v907[0] = v671;
    v907[1] = v672;
    v686 = MEMORY[0x1E69E6158];
    v687 = MEMORY[0x1E69E61C8];
    v688 = MEMORY[0x1E69E61C0];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v673);
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" aaDevice:", 0xAuLL, v695 & 1);
    v674 = v28._object;
    MEMORY[0x1DA7310D0](v28._countAndFlagsBits);
    v29 = v746;

    v675 = (*((*v29 & *MEMORY[0x1E69E7D40]) + 0xA80))(v30);

    v906[2] = v675;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" cb:", 4uLL, v695 & 1);
    v676 = v31._object;
    MEMORY[0x1DA7310D0](v31._countAndFlagsBits);

    v683 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v677, v678, v695 & 1);
    v682 = _allocateUninitializedArray<A>(_:)();
    v680 = v32;
    MEMORY[0x1E69E5928](v758);
    v692 = type metadata accessor for CBDevice();
    v680[3] = v692;
    v33 = lazy protocol witness table accessor for type CBDevice and conformance NSObject();
    v34 = v680;
    v35 = v758;
    v680[4] = v33;
    *v34 = v35;
    _finalizeUninitializedArray<A>(_:)();
    v684 = String.init(format:_:)();
    v685 = v36;

    v689 = v906;
    v906[0] = v684;
    v906[1] = v685;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v689);
    v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v690, v694, v695 & 1);
    v691 = v37._object;
    MEMORY[0x1DA7310D0](v37._countAndFlagsBits);

    v693 = &v905;
    v905 = v758;
    lazy protocol witness table accessor for type CBDevice and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", v694, v695 & 1);
    v696 = v38._object;
    MEMORY[0x1DA7310D0](v38._countAndFlagsBits);
    v39 = v763;

    v699 = v909;
    v698 = v910;

    outlined destroy of DefaultStringInterpolation(v697);
    v700 = MEMORY[0x1DA7309B0](v699, v698);
    v701 = v40;
    v903 = v700;
    v904 = v40;
    v41 = Logger.shared.unsafeMutableAddressor();
    (*(v760 + 16))(v39, v41, v759);

    v703 = 32;
    v704 = 7;
    v42 = swift_allocObject();
    v43 = v701;
    v705 = v42;
    *(v42 + 16) = v700;
    *(v42 + 24) = v43;
    v713 = Logger.logObject.getter();
    v714 = static os_log_type_t.default.getter();
    v702 = 17;
    v707 = swift_allocObject();
    *(v707 + 16) = 32;
    v708 = swift_allocObject();
    *(v708 + 16) = 8;
    v44 = swift_allocObject();
    v45 = v705;
    v706 = v44;
    *(v44 + 16) = v749;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v706;
    v710 = v46;
    *(v46 + 16) = v750;
    *(v46 + 24) = v47;
    v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v709 = _allocateUninitializedArray<A>(_:)();
    v711 = v48;

    v49 = v707;
    v50 = v711;
    *v711 = v751;
    v50[1] = v49;

    v51 = v708;
    v52 = v711;
    v711[2] = v752;
    v52[3] = v51;

    v53 = v710;
    v54 = v711;
    v711[4] = v753;
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v713, v714))
    {
      v55 = v757;
      v656 = static UnsafeMutablePointer.allocate(capacity:)();
      v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v657 = createStorage<A>(capacity:type:)(0);
      v658 = createStorage<A>(capacity:type:)(1);
      v659 = v768;
      v768[0] = v656;
      v660 = &v767;
      v767 = v657;
      v661 = &v766;
      v766 = v658;
      serialize(_:at:)(2, v768);
      serialize(_:at:)(1, v659);
      v764 = v751;
      v765 = v707;
      closure #1 in osLogInternal(_:log:type:)(&v764, v659, v660, v661);
      v662 = v55;
      if (v55)
      {

        __break(1u);
      }

      else
      {
        v764 = v752;
        v765 = v708;
        closure #1 in osLogInternal(_:log:type:)(&v764, v768, &v767, &v766);
        v654 = 0;
        v764 = v753;
        v765 = v710;
        closure #1 in osLogInternal(_:log:type:)(&v764, v768, &v767, &v766);
        _os_log_impl(&dword_1D93D0000, v713, v714, "%s", v656, 0xCu);
        destroyStorage<A>(_:count:)(v657, 0, v655);
        destroyStorage<A>(_:count:)(v658, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v656, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v56 = v746;
    MEMORY[0x1E69E5920](v713);
    (*(v760 + 8))(v763, v759);
    MEMORY[0x1E69E5928](v758);
    (*((*v56 & *MEMORY[0x1E69E7D40]) + 0x230))(v758);
    if (v663)
    {
      type metadata accessor for Log();
      v652 = static Log.shared.getter();
      v651 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: update battery levels", 0x27uLL, 1)._object;
      dispatch thunk of Log.notice(_:function:file:line:)();

      v653 = HeadphoneDevice.deviceDelegate.getter();
      if (v653)
      {
        v650 = v653;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v649 = v650;
      swift_getObjectType();
      [v649 updateTitleBar];
      swift_unknownObjectRelease();
    }

    v57 = [v758 name];
    v648 = v57;
    if (v57)
    {
      v647 = v648;
      v642 = v648;
      v643 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v644 = v58;
      v57 = MEMORY[0x1E69E5920](v642);
      v645 = v643;
      v646 = v644;
    }

    else
    {
      v645 = 0;
      v646 = 0;
    }

    v640 = v646;
    v641 = v645;
    if (v646)
    {
      v638 = v641;
      v639 = v640;
      v635 = v640;
      v634 = v641;
      v775 = v641;
      v776 = v640;
      v59 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x360))(v57);
      v636 = v774;
      v774[0] = v59;
      v774[1] = v60;
      v772 = v634;
      v773 = v635;
      v637 = MEMORY[0x1DA7309E0](v59, v60, v634, v635);
      outlined destroy of String(v636);
      if ((v637 & 1) == 0)
      {
        v624 = 0;
        type metadata accessor for Log();
        v631 = static Log.shared.getter();
        v61 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v627 = &v770;
        v770 = v61;
        v771 = v62;
        v625 = 1;
        v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: name mismatch - change from ", 0x2EuLL, 1);
        v618 = v63._object;
        MEMORY[0x1DA7310D0](v63._countAndFlagsBits);
        v64 = v746;

        v66 = *v64;
        v632 = MEMORY[0x1E69E7D40];
        v67 = (*((v66 & *MEMORY[0x1E69E7D40]) + 0x360))(v65);
        v619 = v769;
        v769[0] = v67;
        v769[1] = v68;
        v621 = MEMORY[0x1E69E6158];
        v622 = MEMORY[0x1E69E61C8];
        v623 = MEMORY[0x1E69E61C0];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String(v619);
        v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v625 & 1);
        v620 = v69._object;
        MEMORY[0x1DA7310D0](v69._countAndFlagsBits);

        v768[1] = v634;
        v768[2] = v635;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v624, v625 & 1);
        v626 = v70._object;
        MEMORY[0x1DA7310D0](v70._countAndFlagsBits);

        v629 = v770;
        v628 = v771;

        outlined destroy of DefaultStringInterpolation(v627);
        MEMORY[0x1DA7309B0](v629, v628);
        v630 = v71;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v72 = v746;

        (*((*v72 & *v632) + 0x368))(v634, v635);
        v633 = HeadphoneDevice.deviceDelegate.getter();
        if (v633)
        {
          v617 = v633;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v616 = v617;
        swift_getObjectType();
        [v616 updateTopLevelEntryWithHpDevice_];
        swift_unknownObjectRelease();
      }
    }

    v73 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v57);
    v615 = &v902;
    v902 = v73;
    v74 = [v758 listeningMode];
    v613 = &v901;
    v901 = v74;
    v614 = type metadata accessor for CBListeningMode();
    lazy protocol witness table accessor for type CBListeningMode and conformance CBListeningMode();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v603 = 0;
      type metadata accessor for Log();
      v610 = static Log.shared.getter();
      v75 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v606 = &v779;
      v779 = v75;
      v780 = v76;
      v604 = 1;
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: listeningMode mismatch - change from ", 0x37uLL, 1);
      v601 = v77._object;
      MEMORY[0x1DA7310D0](v77._countAndFlagsBits);
      v78 = v746;

      v80 = *v78;
      v612 = MEMORY[0x1E69E7D40];
      v778 = (*((v80 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v79);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v604 & 1);
      v602 = v81._object;
      MEMORY[0x1DA7310D0](v81._countAndFlagsBits);

      v611 = 0x1FAA8B000uLL;
      v777 = [v758 0x1FAA8B378];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v603, v604 & 1);
      v605 = v82._object;
      MEMORY[0x1DA7310D0](v82._countAndFlagsBits);

      v608 = v779;
      v607 = v780;

      outlined destroy of DefaultStringInterpolation(v606);
      MEMORY[0x1DA7309B0](v608, v607);
      v609 = v83;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v84 = v746;

      v85 = [v758 (v611 + 888)];
      (*((*v84 & *v612) + 0x3C8))(v85);
    }

    v86 = [v758 smartRoutingMode];
    v599 = &v900;
    v900 = v86;
    v597 = &v899;
    v899 = 0;
    v598 = type metadata accessor for CBSmartRoutingMode();
    v600 = lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
    if (== infix<A>(_:_:)())
    {
      v782 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x618))();
      v781 = 1;
      if (== infix<A>(_:_:)())
      {
        type metadata accessor for Log();
        v595 = static Log.shared.getter();
        v594 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: smartRoutingMode mismatch - invalid value received, disable SR", 0x50uLL, 1)._object;
        v596 = 2;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v87 = v746;

        (*((*v87 & *MEMORY[0x1E69E7D40]) + 0x620))(v596);
      }
    }

    else
    {
      v88 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x618))();
      v593 = &v898;
      v898 = v88;
      v89 = [v758 smartRoutingMode];
      v592 = &v897;
      v897 = v89;
      lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v582 = 0;
        type metadata accessor for Log();
        v589 = static Log.shared.getter();
        v90 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v585 = &v785;
        v785 = v90;
        v786 = v91;
        v583 = 1;
        v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: smartRoutingMode mismatch - change from ", 0x3AuLL, 1);
        v580 = v92._object;
        MEMORY[0x1DA7310D0](v92._countAndFlagsBits);
        v93 = v746;

        v95 = *v93;
        v591 = MEMORY[0x1E69E7D40];
        v784 = (*((v95 & *MEMORY[0x1E69E7D40]) + 0x618))(v94);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v583 & 1);
        v581 = v96._object;
        MEMORY[0x1DA7310D0](v96._countAndFlagsBits);

        v590 = 0x1FC652000uLL;
        v783 = [v758 0x1FC6521C4];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v582, v583 & 1);
        v584 = v97._object;
        MEMORY[0x1DA7310D0](v97._countAndFlagsBits);

        v587 = v785;
        v586 = v786;

        outlined destroy of DefaultStringInterpolation(v585);
        MEMORY[0x1DA7309B0](v587, v586);
        v588 = v98;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v99 = v746;

        v100 = [v758 (v590 + 452)];
        (*((*v99 & *v591) + 0x620))(v100);
      }
    }

    v896 = 0;
    v101 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    v578 = &v895;
    v895 = v101;
    v102 = [v758 clickHoldModeLeft];
    v576 = &v894;
    v894 = v102;
    v577 = type metadata accessor for CBPeerUIGestureMode();
    v579 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v103 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v103)
    {
      v575 = 0;
    }

    else
    {
      v565 = 0;
      type metadata accessor for Log();
      v572 = static Log.shared.getter();
      v104 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v568 = &v789;
      v789 = v104;
      v790 = v105;
      v566 = 1;
      v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: clickHoldModeLeft mismatch - change from ", 0x3BuLL, 1);
      v563 = v106._object;
      MEMORY[0x1DA7310D0](v106._countAndFlagsBits);
      v107 = v746;

      v109 = *v107;
      v574 = MEMORY[0x1E69E7D40];
      v788 = (*((v109 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v108);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v566 & 1);
      v564 = v110._object;
      MEMORY[0x1DA7310D0](v110._countAndFlagsBits);

      v573 = 0x1FAACC000uLL;
      v787 = [v758 0x1FAACC79CLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v565, v566 & 1);
      v567 = v111._object;
      MEMORY[0x1DA7310D0](v111._countAndFlagsBits);

      v570 = v789;
      v569 = v790;

      outlined destroy of DefaultStringInterpolation(v568);
      MEMORY[0x1DA7309B0](v570, v569);
      v571 = v112;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v113 = v746;

      v114 = [v758 (v573 + 1948)];
      v103 = (*((*v113 & *v574) + 0x3F8))(v114);
      v896 = 1;
      v575 = 1;
    }

    v561 = v575;
    v115 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v103);
    v562 = &v893;
    v893 = v115;
    v892[1] = [v758 clickHoldModeRight];
    v116 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v116)
    {
      v560 = v561;
    }

    else
    {
      v550 = 0;
      type metadata accessor for Log();
      v557 = static Log.shared.getter();
      v117 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v553 = &v793;
      v793 = v117;
      v794 = v118;
      v551 = 1;
      v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: clickHoldModeRight mismatch - change from ", 0x3CuLL, 1);
      v548 = v119._object;
      MEMORY[0x1DA7310D0](v119._countAndFlagsBits);
      v120 = v746;

      v122 = *v120;
      v559 = MEMORY[0x1E69E7D40];
      v792 = (*((v122 & *MEMORY[0x1E69E7D40]) + 0x420))(v121);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v123 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v551 & 1);
      v549 = v123._object;
      MEMORY[0x1DA7310D0](v123._countAndFlagsBits);

      v558 = 0x1FB471000uLL;
      v791 = [v758 0x1FB471778];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v550, v551 & 1);
      v552 = v124._object;
      MEMORY[0x1DA7310D0](v124._countAndFlagsBits);

      v555 = v793;
      v554 = v794;

      outlined destroy of DefaultStringInterpolation(v553);
      MEMORY[0x1DA7309B0](v555, v554);
      v556 = v125;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v126 = v746;

      v127 = [v758 (v558 + 1912)];
      v116 = (*((*v126 & *v559) + 0x428))(v127);
      v896 = 1;
      v560 = 1;
    }

    if (v560)
    {
      v128 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v116);
      v545 = &v805;
      v805 = v128;
      v544 = &v804;
      v804 = 6;
      v546 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
      v547 = == infix<A>(_:_:)();
      MEMORY[0x1E69E5928](v746);
      if (v547)
      {
        v543 = 1;
      }

      else
      {
        v803 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
        v802 = 7;
        v543 = == infix<A>(_:_:)();
      }

      v542 = v543;
      MEMORY[0x1E69E5920](v746);
      v129 = MEMORY[0x1E69E5928](v746);
      if (v542)
      {
        v541 = 1;
      }

      else
      {
        v801 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v129);
        v800 = 6;
        v541 = == infix<A>(_:_:)();
      }

      v540 = v541;
      MEMORY[0x1E69E5920](v746);
      v130 = MEMORY[0x1E69E5928](v746);
      if (v540)
      {
        v539 = 1;
      }

      else
      {
        v799 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x420))(v130);
        v798 = 7;
        v539 = == infix<A>(_:_:)();
      }

      v131 = v746;
      v527 = v539;
      MEMORY[0x1E69E5920](v746);
      v132 = *v131;
      v530 = MEMORY[0x1E69E7D40];
      v133 = *((v132 & *MEMORY[0x1E69E7D40]) + 0x680);
      v532 = 1;
      v133(v527 & 1);
      v531 = 0;
      type metadata accessor for Log();
      v538 = static Log.shared.getter();
      v528 = 50;
      v134 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v534 = &v796;
      v796 = v134;
      v797 = v135;
      v136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: New volumeControlToggle is now: ", v528, v532 & 1);
      v529 = v136._object;
      MEMORY[0x1DA7310D0](v136._countAndFlagsBits);
      v137 = v746;

      v139 = (*((*v137 & *v530) + 0x678))(v138);
      v795 = v139 & v532;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v531, v532 & 1);
      v533 = v140._object;
      MEMORY[0x1DA7310D0](v140._countAndFlagsBits);

      v536 = v796;
      v535 = v797;

      outlined destroy of DefaultStringInterpolation(v534);
      MEMORY[0x1DA7309B0](v536, v535);
      v537 = v141;
      dispatch thunk of Log.notice(_:function:file:line:)();
    }

    v526 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x678))(v116);
    MEMORY[0x1E69E5928](v746);
    MEMORY[0x1E69E5928](v758);
    if (v526)
    {
      v525 = 0;
    }

    else
    {
      v142 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x450))();
      v524 = v807;
      v807[0] = v142;
      v143 = [v758 listeningModeConfigs];
      v522 = &v806;
      v806 = v143;
      v523 = type metadata accessor for CBListeningModeConfigs();
      lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
      v525 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v521 = v525;
    MEMORY[0x1E69E5920](v746);
    v144 = MEMORY[0x1E69E5920](v758);
    if (v521)
    {
      v511 = 0;
      type metadata accessor for Log();
      v518 = static Log.shared.getter();
      v145 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v514 = &v809;
      v809 = v145;
      v810 = v146;
      v512 = 1;
      v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: listeningModeConfigs mismatch - change from ", 0x3EuLL, 1);
      v507 = v147._object;
      MEMORY[0x1DA7310D0](v147._countAndFlagsBits);
      v148 = v746;

      v150 = *v148;
      v520 = MEMORY[0x1E69E7D40];
      v151 = (*((v150 & *MEMORY[0x1E69E7D40]) + 0x450))(v149);
      v508 = &v808;
      v808 = v151;
      v510 = type metadata accessor for CBListeningModeConfigs();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v512 & 1);
      v509 = v152._object;
      MEMORY[0x1DA7310D0](v152._countAndFlagsBits);

      v519 = 0x1FB75B000uLL;
      v807[1] = [v758 0x1FB75B993];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v511, v512 & 1);
      v513 = v153._object;
      MEMORY[0x1DA7310D0](v153._countAndFlagsBits);

      v516 = v809;
      v515 = v810;

      outlined destroy of DefaultStringInterpolation(v514);
      MEMORY[0x1DA7309B0](v516, v515);
      v517 = v154;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v155 = v746;

      v156 = [v758 (v519 + 2451)];
      v144 = (*((*v155 & *v520) + 0x458))(v156);
    }

    v157 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x528))(v144);
    v505 = v892;
    v892[0] = v157;
    v158 = [v758 doubleTapActionLeft];
    v503 = &v891;
    v891 = v158;
    v504 = type metadata accessor for CBDoubleTapAction();
    v506 = lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction();
    v159 = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((v159 & 1) == 0)
    {
      v493 = 0;
      type metadata accessor for Log();
      v500 = static Log.shared.getter();
      v160 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v496 = &v813;
      v813 = v160;
      v814 = v161;
      v494 = 1;
      v162 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: doubleTapActionLeft mismatch - change from ", 0x3DuLL, 1);
      v491 = v162._object;
      MEMORY[0x1DA7310D0](v162._countAndFlagsBits);
      v163 = v746;

      v165 = *v163;
      v502 = MEMORY[0x1E69E7D40];
      v812 = (*((v165 & *MEMORY[0x1E69E7D40]) + 0x528))(v164);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v494 & 1);
      v492 = v166._object;
      MEMORY[0x1DA7310D0](v166._countAndFlagsBits);

      v501 = 0x1FB4C5000uLL;
      v811 = [v758 0x1FB4C5978];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v493, v494 & 1);
      v495 = v167._object;
      MEMORY[0x1DA7310D0](v167._countAndFlagsBits);

      v498 = v813;
      v497 = v814;

      outlined destroy of DefaultStringInterpolation(v496);
      MEMORY[0x1DA7309B0](v498, v497);
      v499 = v168;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v169 = v746;

      v170 = [v758 (v501 + 2424)];
      v159 = (*((*v169 & *v502) + 0x530))(v170);
    }

    v171 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x558))(v159);
    v490 = &v890;
    v890 = v171;
    v889[1] = [v758 doubleTapActionRight];
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v480 = 0;
      type metadata accessor for Log();
      v487 = static Log.shared.getter();
      v172 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v483 = &v817;
      v817 = v172;
      v818 = v173;
      v481 = 1;
      v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: doubleTapActionRight mismatch - change from ", 0x3EuLL, 1);
      v478 = v174._object;
      MEMORY[0x1DA7310D0](v174._countAndFlagsBits);
      v175 = v746;

      v177 = *v175;
      v489 = MEMORY[0x1E69E7D40];
      v816 = (*((v177 & *MEMORY[0x1E69E7D40]) + 0x558))(v176);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v481 & 1);
      v479 = v178._object;
      MEMORY[0x1DA7310D0](v178._countAndFlagsBits);

      v488 = 0x1FB846000uLL;
      v815 = [v758 0x1FB846F78];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v480, v481 & 1);
      v482 = v179._object;
      MEMORY[0x1DA7310D0](v179._countAndFlagsBits);

      v485 = v817;
      v484 = v818;

      outlined destroy of DefaultStringInterpolation(v483);
      MEMORY[0x1DA7309B0](v485, v484);
      v486 = v180;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v181 = v746;

      v182 = [v758 (v488 + 3960)];
      (*((*v181 & *v489) + 0x560))(v182);
    }

    v183 = [v758 crownRotationDirection];
    v475 = v889;
    v889[0] = v183;
    v473 = &v888;
    v888 = 0;
    v474 = type metadata accessor for CBPeerCrownRotationDirection();
    v476 = lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection();
    v477 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v746);
    MEMORY[0x1E69E5928](v758);
    if (v477)
    {
      v472 = 0;
    }

    else
    {
      v184 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x588))();
      v471 = v820;
      v820[0] = v184;
      v819 = [v758 crownRotationDirection];
      v472 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v470 = v472;
    MEMORY[0x1E69E5920](v746);
    v185 = MEMORY[0x1E69E5920](v758);
    if (v470)
    {
      v460 = 0;
      type metadata accessor for Log();
      v467 = static Log.shared.getter();
      v186 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v463 = &v821;
      v821 = v186;
      v822 = v187;
      v461 = 1;
      v188 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: crownRotationDirection mismatch - change from ", 0x40uLL, 1);
      v458 = v188._object;
      MEMORY[0x1DA7310D0](v188._countAndFlagsBits);
      v189 = v746;

      v191 = *v189;
      v469 = MEMORY[0x1E69E7D40];
      v820[2] = (*((v191 & *MEMORY[0x1E69E7D40]) + 0x588))(v190);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v192 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v461 & 1);
      v459 = v192._object;
      MEMORY[0x1DA7310D0](v192._countAndFlagsBits);

      v468 = 0x1FADD1000uLL;
      v820[1] = [v758 0x1FADD15D4];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v193 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v460, v461 & 1);
      v462 = v193._object;
      MEMORY[0x1DA7310D0](v193._countAndFlagsBits);

      v465 = v821;
      v464 = v822;

      outlined destroy of DefaultStringInterpolation(v463);
      MEMORY[0x1DA7309B0](v465, v464);
      v466 = v194;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v195 = v746;

      v196 = [v758 (v468 + 1492)];
      v185 = (*((*v195 & *v469) + 0x590))(v196);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v185) & 1) == 1)
    {
      v457 = 1;
    }

    else
    {
      v457 = 2;
    }

    v451 = v457;
    v887 = v457;
    v197 = [v758 placementMode];
    v454 = &v886;
    v886 = v197;
    v452 = &v885;
    v885 = 0;
    v453 = type metadata accessor for CBDevicePlacementMode();
    v455 = lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
    v456 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v456)
    {
      v450 = 0;
    }

    else
    {
      v449 = &v824;
      v824 = v451;
      v823 = [v758 placementMode];
      v450 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v448 = v450;
    v198 = MEMORY[0x1E69E5920](v758);
    if (v448)
    {
      v437 = 0;
      type metadata accessor for Log();
      v444 = static Log.shared.getter();
      v199 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v440 = &v827;
      v827 = v199;
      v828 = v200;
      v438 = 1;
      v201 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: inEarDetection mismatch - change from ", 0x38uLL, 1);
      v435 = v201._object;
      MEMORY[0x1DA7310D0](v201._countAndFlagsBits);

      v826[2] = v451;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v202 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v438 & 1);
      v436 = v202._object;
      MEMORY[0x1DA7310D0](v202._countAndFlagsBits);

      v445 = 0x1FC64F000uLL;
      v826[1] = [v758 0x1FC64FD9BLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v203 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v437, v438 & 1);
      v439 = v203._object;
      MEMORY[0x1DA7310D0](v203._countAndFlagsBits);

      v442 = v827;
      v441 = v828;

      outlined destroy of DefaultStringInterpolation(v440);
      MEMORY[0x1DA7309B0](v442, v441);
      v443 = v204;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v205 = v746;

      v206 = [v758 (v445 + 3483)];
      v447 = v826;
      v826[0] = v206;
      v446 = &v825;
      v825 = 1;
      lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
      v207 = == infix<A>(_:_:)();
      v198 = (*((*v205 & *MEMORY[0x1E69E7D40]) + 0x5C0))(v207 & 1);
    }

    v208 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x648))(v198);
    v434 = &v884;
    v884 = v208;
    v209 = [v758 microphoneMode];
    v432 = &v883;
    v883 = v209;
    v433 = type metadata accessor for CBMicrophoneMode();
    lazy protocol witness table accessor for type CBMicrophoneMode and conformance CBMicrophoneMode();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v422 = 0;
      type metadata accessor for Log();
      v429 = static Log.shared.getter();
      v210 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v425 = &v831;
      v831 = v210;
      v832 = v211;
      v423 = 1;
      v212 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: microphoneMode mismatch - change from ", 0x38uLL, 1);
      v420 = v212._object;
      MEMORY[0x1DA7310D0](v212._countAndFlagsBits);
      v213 = v746;

      v215 = *v213;
      v431 = MEMORY[0x1E69E7D40];
      v830 = (*((v215 & *MEMORY[0x1E69E7D40]) + 0x648))(v214);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v216 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v423 & 1);
      v421 = v216._object;
      MEMORY[0x1DA7310D0](v216._countAndFlagsBits);

      v430 = 0x1FB03F000uLL;
      v829 = [v758 0x1FB03F9DDLL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v217 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v422, v423 & 1);
      v424 = v217._object;
      MEMORY[0x1DA7310D0](v217._countAndFlagsBits);

      v427 = v831;
      v426 = v832;

      outlined destroy of DefaultStringInterpolation(v425);
      MEMORY[0x1DA7309B0](v427, v426);
      v428 = v218;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v219 = v746;

      v220 = [v758 (v430 + 2525)];
      (*((*v219 & *v431) + 0x650))(v220);
    }

    v418 = [v758 endCallConfig];
    v882 = v418;
    v419 = [v758 muteControlConfig];
    v881 = v419;
    if (CBPeerCallManagementCapability.rawValue.getter([v758 muteControlCapability]))
    {
      v416 = v844;
      v844[0] = v418;
      v414 = &v843;
      v843 = 0;
      v415 = type metadata accessor for CBPeerCallConfig();
      v417 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      if (== infix<A>(_:_:)())
      {
        v412 = 1;
      }

      else
      {
        v842[6] = v418;
        v842[5] = 1;
        v412 = == infix<A>(_:_:)();
      }

      v413 = v418;
      v411 = v418;
      if (v412)
      {
        v409 = 1;
      }

      else
      {
        v842[4] = v419;
        v842[3] = 0;
        v409 = == infix<A>(_:_:)();
      }

      v410 = v419;
      v408 = v419;
      if (v409)
      {
        v406 = 1;
      }

      else
      {
        v842[2] = v408;
        v842[1] = 1;
        v406 = == infix<A>(_:_:)();
      }

      v407 = v408;
      v405 = v408;
      if (v406)
      {
        v882 = 3;
        v881 = 2;
        v403 = 3;
        v404 = 2;
      }

      else
      {
        v403 = v411;
        v404 = v405;
      }

      v398 = v404;
      v397 = v403;
      v221 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7E0))();
      v400 = v842;
      v842[0] = v221;
      v399 = &v841;
      v841 = v398;
      v401 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v402 = dispatch thunk of static Equatable.== infix(_:_:)();
      MEMORY[0x1E69E5928](v746);
      if (v402)
      {
        v840 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v839 = v397;
        v395 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
      }

      else
      {
        v395 = 1;
      }

      v396 = v397;
      v393 = v397;
      v394 = v395;
      v222 = MEMORY[0x1E69E5920](v746);
      if (v394)
      {
        v384 = 0;
        type metadata accessor for Log();
        v391 = static Log.shared.getter();
        v382 = 4;
        v223 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v387 = &v837;
        v837 = v223;
        v838 = v224;
        v385 = 1;
        v225 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: muteControlGesture mismatch - change from ", 0x3CuLL, 1);
        v378 = v225._object;
        MEMORY[0x1DA7310D0](v225._countAndFlagsBits);
        v226 = v746;

        v228 = *v226;
        v392 = MEMORY[0x1E69E7D40];
        v836 = (*((v228 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v227);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v381 = " to ";
        v229 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", v382, v385 & 1);
        v379 = v229._object;
        MEMORY[0x1DA7310D0](v229._countAndFlagsBits);

        v835 = v398;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v230 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" and endCallGesture mismatch - change from ", 0x2BuLL, v385 & 1);
        v380 = v230._object;
        MEMORY[0x1DA7310D0](v230._countAndFlagsBits);
        v231 = v746;

        v834 = (*((*v231 & *v392) + 0x7B0))(v232);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v233 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v381, v382, v385 & 1);
        v383 = v233._object;
        MEMORY[0x1DA7310D0](v233._countAndFlagsBits);

        v833 = v393;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v234 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v384, v385 & 1);
        v386 = v234._object;
        MEMORY[0x1DA7310D0](v234._countAndFlagsBits);

        v389 = v837;
        v388 = v838;

        outlined destroy of DefaultStringInterpolation(v387);
        MEMORY[0x1DA7309B0](v389, v388);
        v390 = v235;
        dispatch thunk of Log.notice(_:function:file:line:)();
        v236 = v746;

        (*((*v236 & *v392) + 0x7B8))(v393);
        v222 = (*((*v746 & *v392) + 0x7E8))(v398);
      }
    }

    else
    {
      v222 = CBPeerCallManagementCapability.rawValue.getter([v758 endCallCapability]);
      if (v222)
      {
        v376 = v850;
        v850[0] = v418;
        v374 = &v849;
        v849 = 0;
        v375 = type metadata accessor for CBPeerCallConfig();
        v377 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
        if (== infix<A>(_:_:)())
        {
          v372 = 1;
        }

        else
        {
          v848[2] = v418;
          v848[1] = 1;
          v372 = == infix<A>(_:_:)();
        }

        v373 = v418;
        v371 = v418;
        if (v372)
        {
          v882 = 2;
          v370 = 2;
        }

        else
        {
          v370 = v371;
        }

        v367 = v370;
        v237 = (*((*v746 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v369 = v848;
        v848[0] = v237;
        v368 = &v847;
        v847 = v367;
        lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
        v222 = dispatch thunk of static Equatable.== infix(_:_:)();
        if ((v222 & 1) == 0)
        {
          v358 = 0;
          type metadata accessor for Log();
          v365 = static Log.shared.getter();
          v238 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
          v361 = &v845;
          v845 = v238;
          v846 = v239;
          v359 = 1;
          v240 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: endCallGesture mismatch - change from ", 0x38uLL, 1);
          v356 = v240._object;
          MEMORY[0x1DA7310D0](v240._countAndFlagsBits);
          v241 = v746;

          v243 = *v241;
          v366 = MEMORY[0x1E69E7D40];
          v844[2] = (*((v243 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v242);
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v244 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v359 & 1);
          v357 = v244._object;
          MEMORY[0x1DA7310D0](v244._countAndFlagsBits);

          v844[1] = v367;
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v245 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v358, v359 & 1);
          v360 = v245._object;
          MEMORY[0x1DA7310D0](v245._countAndFlagsBits);

          v363 = v845;
          v362 = v846;

          outlined destroy of DefaultStringInterpolation(v361);
          MEMORY[0x1DA7309B0](v363, v362);
          v364 = v246;
          dispatch thunk of Log.notice(_:function:file:line:)();
          v247 = v746;

          v222 = (*((*v247 & *v366) + 0x7B8))(v367);
        }
      }
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x840))(v222) & 1) == 1)
    {
      v355 = 1;
    }

    else
    {
      v355 = 2;
    }

    v349 = v355;
    v880 = v355;
    v248 = [v758 selectiveSpeechListeningConfig];
    v352 = &v879;
    v879 = v248;
    v350 = &v878;
    v878 = 0;
    v351 = type metadata accessor for CBPeerSelectiveSpeechListeningConfig();
    v353 = lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
    v354 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v354)
    {
      v348 = 0;
    }

    else
    {
      v850[2] = [v758 selectiveSpeechListeningConfig];
      v850[1] = 3;
      v348 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v347 = v348;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v347)
    {
      v345 = &v851;
      v851 = v349;
      v850[3] = [v758 selectiveSpeechListeningConfig];
      v346 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v346 = 0;
    }

    v344 = v346;
    v249 = MEMORY[0x1E69E5920](v758);
    if (v344)
    {
      v333 = 0;
      type metadata accessor for Log();
      v340 = static Log.shared.getter();
      v250 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v336 = &v854;
      v854 = v250;
      v855 = v251;
      v334 = 1;
      v252 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: SelectiveSpeechListening mismatch - change from ", 0x42uLL, 1);
      v331 = v252._object;
      MEMORY[0x1DA7310D0](v252._countAndFlagsBits);

      v853[2] = v349;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v253 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v334 & 1);
      v332 = v253._object;
      MEMORY[0x1DA7310D0](v253._countAndFlagsBits);

      v341 = 0x1FC650000uLL;
      v853[1] = [v758 0x1FC65032ELL];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v254 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v333, v334 & 1);
      v335 = v254._object;
      MEMORY[0x1DA7310D0](v254._countAndFlagsBits);

      v338 = v854;
      v337 = v855;

      outlined destroy of DefaultStringInterpolation(v336);
      MEMORY[0x1DA7309B0](v338, v337);
      v339 = v255;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v256 = v746;

      v257 = [v758 (v341 + 814)];
      v343 = v853;
      v853[0] = v257;
      v342 = &v852;
      v852 = 1;
      lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
      v258 = == infix<A>(_:_:)();
      v249 = (*((*v256 & *MEMORY[0x1E69E7D40]) + 0x848))(v258 & 1);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x870))(v249) & 1) == 1)
    {
      v330 = 1;
    }

    else
    {
      v330 = 2;
    }

    v324 = v330;
    v877 = v330;
    v259 = [v758 conversationDetectConfig];
    v327 = &v876;
    v876 = v259;
    v325 = &v875;
    v875 = 0;
    v326 = type metadata accessor for CBPeerConversationDetectConfig();
    v328 = lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
    v329 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v329)
    {
      v323 = 0;
    }

    else
    {
      v857 = [v758 conversationDetectConfig];
      v856 = 3;
      v323 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v322 = v323;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v322)
    {
      v320 = &v859;
      v859 = v324;
      v858 = [v758 conversationDetectConfig];
      v321 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v321 = 0;
    }

    v319 = v321;
    v260 = MEMORY[0x1E69E5920](v758);
    if (v319)
    {
      v308 = 0;
      type metadata accessor for Log();
      v315 = static Log.shared.getter();
      v261 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v311 = &v862;
      v862 = v261;
      v863 = v262;
      v309 = 1;
      v263 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: ConversationDetect mismatch - change from ", 0x3CuLL, 1);
      v306 = v263._object;
      MEMORY[0x1DA7310D0](v263._countAndFlagsBits);

      v861[2] = v324;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v264 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v309 & 1);
      v307 = v264._object;
      MEMORY[0x1DA7310D0](v264._countAndFlagsBits);

      v316 = 0x1FC64E000uLL;
      v861[1] = [v758 0x1FC64E1B5];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v265 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v308, v309 & 1);
      v310 = v265._object;
      MEMORY[0x1DA7310D0](v265._countAndFlagsBits);

      v313 = v862;
      v312 = v863;

      outlined destroy of DefaultStringInterpolation(v311);
      MEMORY[0x1DA7309B0](v313, v312);
      v314 = v266;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v267 = v746;

      v268 = [v758 (v316 + 437)];
      v318 = v861;
      v861[0] = v268;
      v317 = &v860;
      v860 = 1;
      lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
      v269 = == infix<A>(_:_:)();
      v260 = (*((*v267 & *MEMORY[0x1E69E7D40]) + 0x878))(v269 & 1);
    }

    if (((*((*v746 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v260) & 1) == 1)
    {
      v305 = 1;
    }

    else
    {
      v305 = 2;
    }

    v299 = v305;
    v874 = v305;
    v270 = [v758 adaptiveVolumeConfig];
    v302 = &v873;
    v873 = v270;
    v300 = &v872;
    v872 = 0;
    v301 = type metadata accessor for CBPeerAdaptiveVolumeConfig();
    v303 = lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
    v304 = dispatch thunk of static Equatable.== infix(_:_:)();
    MEMORY[0x1E69E5928](v758);
    if (v304)
    {
      v298 = 0;
    }

    else
    {
      v865 = [v758 adaptiveVolumeConfig];
      v864 = 3;
      v298 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    v297 = v298;
    MEMORY[0x1E69E5920](v758);
    MEMORY[0x1E69E5928](v758);
    if (v297)
    {
      v295 = &v867;
      v867 = v299;
      v866 = [v758 adaptiveVolumeConfig];
      v296 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v296 = 0;
    }

    v294 = v296;
    v271 = MEMORY[0x1E69E5920](v758);
    if (v294)
    {
      v283 = 0;
      type metadata accessor for Log();
      v290 = static Log.shared.getter();
      v272 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v286 = &v870;
      v870 = v272;
      v871 = v273;
      v284 = 1;
      v274 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: AdaptiveVolume mismatch - change from ", 0x38uLL, 1);
      v282[2] = v274._object;
      MEMORY[0x1DA7310D0](v274._countAndFlagsBits);

      v869[2] = v299;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v275 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v284 & 1);
      v282[3] = v275._object;
      MEMORY[0x1DA7310D0](v275._countAndFlagsBits);

      v291 = 0x1FC64D000uLL;
      v869[1] = [v758 0x1FC64DBE6];
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v276 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v283, v284 & 1);
      v285 = v276._object;
      MEMORY[0x1DA7310D0](v276._countAndFlagsBits);

      v288 = v870;
      v287 = v871;

      outlined destroy of DefaultStringInterpolation(v286);
      MEMORY[0x1DA7309B0](v288, v287);
      v289 = v277;
      dispatch thunk of Log.notice(_:function:file:line:)();
      v278 = v746;

      v279 = [v758 (v291 + 3046)];
      v293 = v869;
      v869[0] = v279;
      v292 = &v868;
      v868 = 1;
      lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
      v280 = == infix<A>(_:_:)();
      v271 = (*((*v278 & *MEMORY[0x1E69E7D40]) + 0x8A8))(v280 & 1);
    }

    (*((*v746 & *MEMORY[0x1E69E7D40]) + 0xBD8))(v271);
  }
}

Swift::String __swiftcall HeadphoneDevice.getModelName()()
{
  v21 = v0;
  v20 = HeadphoneDevice.deviceDelegate.getter();
  v16 = v20 == 0;
  outlined destroy of HeadphoneDeviceDelegate?(&v20);
  if (v16)
  {
    assertionFailure(_:file:line:)();
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deviceDelegate will call isAppleHeadphone", 0x3BuLL, 1);
  v6 = 866;
  dispatch thunk of Log.notice(_:function:file:line:)();

  v15 = HeadphoneDevice.deviceDelegate.getter();
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    LOBYTE(v6) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  ObjectType = swift_getObjectType();
  v12 = (*((*v17 & *MEMORY[0x1E69E7D40]) + 0x228))(ObjectType);
  v13 = [v14 isAppleHeadphoneWithCbDevice_];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    v10 = (*((*v17 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v11 = [v10 productName];
    if (v11)
    {
      v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8._object = v2;
      MEMORY[0x1E69E5920](v11);
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1E69E5920](v10);
    v18 = v9;
    if (v9._object)
    {
      v19 = v18;
    }

    else
    {
      v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AirPods", 7uLL, 1);
    }

    v7 = v19;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Not Available", 0xDuLL, 1);
  }

  object = v7._object;
  countAndFlagsBits = v7._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Void __swiftcall HeadphoneDevice.setFindMyStatus()()
{
  v40 = partial apply for closure #1 in HeadphoneDevice.setFindMyStatus();
  v41 = partial apply for closure #2 in HeadphoneDevice.setFindMyStatus();
  v42 = "setFindMyStatus()";
  v43 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v44 = 0;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = v17 - v48;
  v50 = type metadata accessor for DispatchQoS();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v17 - v53;
  v76 = v0;
  v1 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();
  v56 = v1;

  (*(*v1 + 152))(9);
  v2 = v55;

  v57 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x228))(v3);
  v58 = [v57 btAddressData];
  if (v58)
  {
    v39 = v58;
    v34 = v58;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v4;
    MEMORY[0x1E69E5920](v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  v32 = v38;
  v33 = v37;
  if ((v38 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v57);
    type metadata accessor for Log();
    v17[2] = static Log.shared.getter();
    v17[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set FindMyNetwork Status, Invalid BT Address", 0x48uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v30 = v33;
    v31 = v32;
    v5 = v55;
    v29 = v32;
    v28 = v33;
    v74 = v33;
    v75 = v32;
    MEMORY[0x1E69E5920](v57);
    v27 = dispatch_group_create();
    v73 = v27;
    dispatch_group_enter(v27);
    v6 = *v5;
    v18 = MEMORY[0x1E69E7D40];
    v7 = (*((v6 & *MEMORY[0x1E69E7D40]) + 0x300))();
    v8 = v55;
    v22 = v7;
    swift_getObjectType();
    outlined copy of Data._Representation(v28, v29);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = outlined consume of Data._Representation(v28, v29);
    v19 = (*((*v8 & *v18) + 0x2D0))(v9);
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v27);
    v23 = 7;
    v10 = swift_allocObject();
    v11 = v40;
    v12 = v10;
    v13 = v27;
    *(v12 + 16) = v55;
    *(v12 + 24) = v13;
    v71 = v11;
    v72 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v67 = 1107296256;
    v68 = 0;
    v69 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v70 = &block_descriptor_0;
    v20 = _Block_copy(&aBlock);

    MEMORY[0x1E69E5920](v55);
    [v22 setFindMyNetworkStatusForMACAddress:isa status:v19 & 1 completion:v20];
    _Block_release(v20);
    MEMORY[0x1E69E5920](isa);
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    MEMORY[0x1E69E5928](v55);
    MEMORY[0x1E69E5928](v55);
    v14 = swift_allocObject();
    v15 = v41;
    v16 = v24;
    *(v14 + 16) = v55;
    v64 = v15;
    v65 = v14;
    v59 = MEMORY[0x1E69E9820];
    v60 = v16;
    v61 = 0;
    v62 = thunk for @escaping @callee_guaranteed () -> ();
    v63 = &block_descriptor_289;
    v25 = _Block_copy(&v59);
    default argument 0 of OS_dispatch_group.notify(qos:flags:queue:execute:)();
    default argument 1 of OS_dispatch_group.notify(qos:flags:queue:execute:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    (*(v46 + 8))(v49, v45);
    (*(v51 + 8))(v54, v50);
    _Block_release(v25);

    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    outlined consume of Data._Representation(v28, v29);
  }
}

void closure #1 in HeadphoneDevice.setFindMyStatus()(void *a1, void *a2, NSObject *a3)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a1;
  if (a1)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v36 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v37 = v14;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set FindMyNetwork Status. Error code: ", 0x42uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v16 = a1;
    v35[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v35[0] = String.init<A>(describing:)();
    v35[1] = v17;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v35);
    v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v18);

    v20 = v36;
    v19 = v37;

    outlined destroy of DefaultStringInterpolation(&v36);
    MEMORY[0x1DA7309B0](v20, v19);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v33 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v34 = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMyNetwork set to ", 0x27uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v4);

    v28 = MEMORY[0x1E69E7D40];
    v32[39] = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v5) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v26 = v33;
    v25 = v34;

    outlined destroy of DefaultStringInterpolation(&v33);
    MEMORY[0x1DA7309B0](v26, v25);
    dispatch thunk of Log.notice(_:function:file:line:)();

    (*((*a2 & *v28) + 0x320))(1);
    v27 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    if ((*((*a2 & *v28) + 0x2D0))(v7))
    {
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
      object = v10._object;
      v8 = v10._countAndFlagsBits;
    }

    else
    {
      v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      object = v11._object;
      v8 = v11._countAndFlagsBits;
    }

    v23 = v8;
    v24 = object;
    v21 = (*(*v27 + 112))(v32);
    v13 = *(v12 + 232);
    *(v12 + 224) = v23;
    *(v12 + 232) = v24;

    v21(v32);

    v22 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    (*(*v22 + 152))(9);
  }

  dispatch_group_leave(a3);
}

uint64_t closure #2 in HeadphoneDevice.setFindMyStatus()(void *a1)
{
  if (((*((*a1 & *MEMORY[0x1E69E7D40]) + 0x318))() & 1) == 0)
  {
    (*((*a1 & *MEMORY[0x1E69E7D40]) + 0xB98))();
  }

  v2 = MEMORY[0x1E69E7D40];
  (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x338))(0);
  return (*((*a1 & *v2) + 0x320))(0);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t default argument 1 of OS_dispatch_group.notify(qos:flags:queue:execute:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(0);
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Void __swiftcall HeadphoneDevice.resetToggle()()
{
  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset FindMyNetwork toggle", 0x2CuLL, 1);
  dispatch thunk of Log.error(_:function:file:line:)();

  v3 = MEMORY[0x1E69E7D40];
  v0 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x2C0))(1);
  v1 = (*((*v2 & *v3) + 0x2D0))(v0);
  (*((*v2 & *v3) + 0x2D8))((v1 ^ 1) & 1);
}

uint64_t HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:)(uint64_t a1, unint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v19 = partial apply for closure #1 in HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:);
  v12[3] = "fetchFindMyNetworkStatus(btAddr:)";
  v12[4] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v31 = 0;
  v26 = type metadata accessor for DispatchTime();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v17);
  v25 = v12 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = v12 - v14;
  v41 = v5;
  v42 = v6;
  v40 = v2;
  v15 = dispatch_group_create();
  v39 = v15;
  dispatch_group_enter(v15);
  v7 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x300))();
  v8 = v15;
  v22 = v7;
  swift_getObjectType();
  outlined copy of Data._Representation(v17, v16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v17, v16);
  MEMORY[0x1E69E5928](v18);
  MEMORY[0x1E69E5928](v8);
  v9 = swift_allocObject();
  v10 = v19;
  *(v9 + 16) = v18;
  *(v9 + 24) = v8;
  v37 = v10;
  v38 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v36 = &block_descriptor_295;
  v20 = _Block_copy(&aBlock);

  [v22 fetchFindMyNetworkStatusForMACAddress:isa completion:v20];
  _Block_release(v20);
  MEMORY[0x1E69E5920](isa);
  swift_unknownObjectRelease();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v23 + 8);
  v27 = v23 + 8;
  v28(v25, v26);
  v30 = MEMORY[0x1DA730C80](v29);
  v28(v29, v26);
  v31 = v30 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v12[2] = static Log.shared.getter();
    v12[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchFindMyNetworkStatus timedout", 0x33uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  return MEMORY[0x1E69E5920](v15);
}

void closure #1 in HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:)(char a1, void *a2, void *a3, NSObject *a4)
{
  v32 = a1 & 1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v26 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27 = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMy Status: Fetch Completed: Error code:", 0x3DuLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v10 = a2;
    v25[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v25[0] = String.init<A>(describing:)();
    v25[1] = v11;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v25);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v12);

    v14 = v26;
    v13 = v27;

    outlined destroy of DefaultStringInterpolation(&v26);
    MEMORY[0x1DA7309B0](v14, v13);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7D40];
    (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x2A8))(1);
    (*((*a3 & *v15) + 0x2D8))(a1 & 1);
    type metadata accessor for Log();
    static Log.shared.getter();
    v23 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v24 = v4;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMy Status enabled: ", 0x29uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v5);

    v22 = (*((*a3 & *v15) + 0x2D0))(v6) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v7);

    v17 = v23;
    v16 = v24;

    outlined destroy of DefaultStringInterpolation(&v23);
    MEMORY[0x1DA7309B0](v17, v16);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }

  dispatch_group_leave(a4);
}

Swift::Void __swiftcall HeadphoneDevice.setCaseSilentMode()()
{
  v25 = "setCaseSilentMode()";
  v26 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v27 = partial apply for closure #1 in HeadphoneDevice.setCaseSilentMode();
  v49 = 0;
  v47 = 0;
  v28 = 0;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = v10 - v32;
  v34 = type metadata accessor for DispatchQoS();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v10 - v37;
  v49 = v0;
  v48 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x750))();
  v23 = v48 != 0;
  v22 = v23;
  outlined destroy of BTAirPodsControlServiceClient?(&v48);
  if (v22)
  {
    v1 = *v24;
    v20 = MEMORY[0x1E69E7D40];
    v2 = (*((v1 & *MEMORY[0x1E69E7D40]) + 0x720))();
    v21 = v2 ^ 1;
    v47 = (v2 ^ 1) & 1;
    v46 = (*((*v24 & *v20) + 0x750))();
    if (v46)
    {
      v16 = &v46;
      v17 = v46;
      MEMORY[0x1E69E5928](v46);
      outlined destroy of BTAirPodsControlServiceClient?(v16);
      v19 = [v17 dispatchQueue];
      MEMORY[0x1E69E5920](v17);
      MEMORY[0x1E69E5928](v24);
      MEMORY[0x1E69E5928](v24);
      v3 = swift_allocObject();
      v4 = v21;
      v5 = v27;
      *(v3 + 16) = v24;
      *(v3 + 24) = v4 & 1;
      v44 = v5;
      v45 = v3;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = 0;
      v42 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v43 = &block_descriptor_301;
      v18 = _Block_copy(&aBlock);
      default argument 1 of OS_dispatch_queue.async(group:qos:flags:execute:)();
      default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)();
      MEMORY[0x1DA730CD0](0, v38, v33, v18);
      (*(v30 + 8))(v33, v29);
      (*(v35 + 8))(v38, v34);
      _Block_release(v18);

      MEMORY[0x1E69E5920](v24);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      outlined destroy of BTAirPodsControlServiceClient?(&v46);
    }
  }

  else
  {
    v10[0] = type metadata accessor for Log();
    v10[2] = static Log.shared.getter();
    v14 = 1;
    v10[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BTAirPodsControlServiceClient. Unable to set CaseSound ", 0x51uLL, 1)._object;
    v10[3] = 19;
    v11 = 2;
    v10[4] = 112;
    dispatch thunk of Log.error(_:function:file:line:)();

    v13 = static Log.shared.getter();
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset case sound toggle.", 0x2AuLL, v14 & 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
    v6 = v24;

    v7 = *v6;
    v15 = MEMORY[0x1E69E7D40];
    v8 = (*((v7 & *MEMORY[0x1E69E7D40]) + 0x770))(v14 & 1);
    v9 = (*((*v24 & *v15) + 0x720))(v8);
    (*((*v24 & *v15) + 0x728))((v9 ^ 1) & 1);
  }
}

uint64_t *closure #1 in HeadphoneDevice.setCaseSilentMode()(void *a1, char a2)
{
  v17 = a1;
  v16 = a2 & 1;
  v15 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v15)
  {
    v5 = v15;
    MEMORY[0x1E69E5928](v15);
    outlined destroy of BTAirPodsControlServiceClient?(&v15);
    MEMORY[0x1E69E5928](a1);
    MEMORY[0x1E69E5928](a1);
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v13 = partial apply for closure #1 in closure #1 in HeadphoneDevice.setCaseSilentMode();
    v14 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = 0;
    v11 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v12 = &block_descriptor_352;
    v4 = _Block_copy(&aBlock);

    MEMORY[0x1E69E5920](a1);
    [v5 setSilentMode:a2 & 1 completionHandler:v4];
    _Block_release(v4);
    return MEMORY[0x1E69E5920](v5);
  }

  else
  {
    result = &v15;
    outlined destroy of BTAirPodsControlServiceClient?(&v15);
  }

  return result;
}

uint64_t closure #1 in closure #1 in HeadphoneDevice.setCaseSilentMode()(void *a1, void *a2)
{
  v42 = a1;
  v41 = a2;
  v40 = a1;
  if (a1)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v38 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v39 = v13;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set CaseSound. Error code: ", 0x37uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v15 = a1;
    v37[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v37[0] = String.init<A>(describing:)();
    v37[1] = v16;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v37);
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v17);

    v22 = v38;
    v21 = v39;

    outlined destroy of DefaultStringInterpolation(&v38);
    MEMORY[0x1DA7309B0](v22, v21);
    dispatch thunk of Log.error(_:function:file:line:)();

    v23 = MEMORY[0x1E69E7D40];
    (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x770))(1);
    static Log.shared.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset case sound toggle.", 0x2AuLL, 1);
    dispatch thunk of Log.error(_:function:file:line:)();

    v19 = (*((*a2 & *v23) + 0x720))(v18);
    (*((*a2 & *v23) + 0x728))((v19 ^ 1) & 1);
  }

  else
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v35 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v36 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound set to ", 0x23uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v3);

    v31 = MEMORY[0x1E69E7D40];
    v34[39] = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x720))(v4) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v5);

    v29 = v35;
    v28 = v36;

    outlined destroy of DefaultStringInterpolation(&v35);
    MEMORY[0x1DA7309B0](v29, v28);
    dispatch thunk of Log.notice(_:function:file:line:)();

    v30 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    if ((*((*a2 & *v31) + 0x720))(v6))
    {
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
      object = v9._object;
      v7 = v9._countAndFlagsBits;
    }

    else
    {
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      object = v10._object;
      v7 = v10._countAndFlagsBits;
    }

    v26 = v7;
    v27 = object;
    v24 = (*(*v30 + 112))(v34);
    v12 = *(v11 + 16);
    *(v11 + 8) = v26;
    *(v11 + 16) = v27;

    v24(v34);

    v25 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    (*(*v25 + 152))(16);
  }

  return (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x788))(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(0);
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Bool __swiftcall HeadphoneDevice.isiCloudSignedIn()()
{
  v8[1] = 0;
  v7 = [objc_opt_self() defaultStore];
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 959;
    LODWORD(v3) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = [v6 aa_primaryAppleAccount];
  MEMORY[0x1E69E5920](v6);
  v8[0] = v5;
  outlined destroy of ACAccount?(v8);
  if (v5)
  {
    return 1;
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: iCloud Account is not signed in", 0x31uLL, 1);
  dispatch thunk of Log.error(_:function:file:line:)();

  return 0;
}

Swift::Void __swiftcall HeadphoneDevice.setPressHoldDefaults()()
{
  if ((*((*v0 & *MEMORY[0x1E69E7D40]) + 0x678))())
  {
    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    type metadata accessor for CBPeerUIGestureMode();
    lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v8 = == infix<A>(_:_:)();
    (MEMORY[0x1E69E5928])();
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
      v7 = == infix<A>(_:_:)();
    }

    (MEMORY[0x1E69E5920])();
    if (v7)
    {
      v6 = MEMORY[0x1E69E7D40];
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))(7);
      (*((*v9 & *v6) + 0x428))(6);
    }
  }

  else
  {
    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    type metadata accessor for CBPeerUIGestureMode();
    lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v5 = == infix<A>(_:_:)();
    (MEMORY[0x1E69E5928])();
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
      v4 = == infix<A>(_:_:)();
    }

    v1 = (MEMORY[0x1E69E5920])();
    if (v4)
    {
      if ((*((*v9 & *MEMORY[0x1E69E7D40]) + 0xC38))(v1))
      {
        v3 = MEMORY[0x1E69E7D40];
        (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))();
        (*((*v9 & *v3) + 0x428))(1);
      }

      else
      {
        v2 = MEMORY[0x1E69E7D40];
        (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))();
        (*((*v9 & *v2) + 0x428))(5);
      }
    }
  }
}

Swift::Void __swiftcall HeadphoneDevice.isSpatialProfileRecordPresent()()
{
  v10 = partial apply for closure #1 in HeadphoneDevice.isSpatialProfileRecordPresent();
  v6[2] = "isSpatialProfileRecordPresent()";
  v6[3] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v22 = 0;
  v6[4] = 0;
  v17 = type metadata accessor for DispatchTime();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v16 = v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = v6 - v8;
  v32 = v0;
  type metadata accessor for BTCloudServicesClient();
  v12 = BTCloudServicesClient.__allocating_init()();
  v31 = v12;
  v3 = dispatch_group_create();
  v9 = v3;
  v30 = v3;
  dispatch_group_enter(v3);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v3);
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v11;
  *(v4 + 24) = v3;
  v28 = v5;
  v29 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BTCloudSoundProfileRecord?, @guaranteed Error?) -> ();
  v27 = &block_descriptor_307;
  v13 = _Block_copy(&aBlock);

  MEMORY[0x1E69E5920](v11);
  [v12 fetchSoundProfileRecordWithCompletion_];
  _Block_release(v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v16, v17);
  v21 = MEMORY[0x1DA730C80](v20);
  v19(v20, v17);
  v22 = v21 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v6[1] = static Log.shared.getter();
    v6[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchSoundProfileRecord timedout", 0x32uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v12);
}

void closure #1 in HeadphoneDevice.isSpatialProfileRecordPresent()(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v16 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v17 = v4;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchSoundProfileRecord failed with Error code:", 0x41uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v6 = a2;
    v15[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v15[0] = String.init<A>(describing:)();
    v15[1] = v7;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v15);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v8);

    v11 = v16;
    v10 = v17;

    outlined destroy of DefaultStringInterpolation(&v16);
    MEMORY[0x1DA7309B0](v11, v10);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v18 = a1;
    v9 = a1 == 0;
    type metadata accessor for Log();
    static Log.shared.getter();
    if (v9)
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: soundProfileRecord does not exist", 0x33uLL, 1);
      dispatch thunk of Log.error(_:function:file:line:)();
    }

    else
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: soundProfileRecord does exist", 0x2FuLL, 1);
      dispatch thunk of Log.notice(_:function:file:line:)();

      (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x6C8))(1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BTCloudSoundProfileRecord?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5(a2);

  MEMORY[0x1E69E5920](a2);
}

Swift::Void __swiftcall HeadphoneDevice.removeSpatialProfileRecord()()
{
  v11 = partial apply for closure #1 in HeadphoneDevice.removeSpatialProfileRecord();
  v6[3] = "removeSpatialProfileRecord()";
  v6[4] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v23 = 0;
  v9 = 0;
  v17 = type metadata accessor for DispatchTime();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v16 = v6 - v7;
  v8 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v7);
  v20 = v6 - v8;
  v33 = v0;
  v2 = *((*v0 & *MEMORY[0x1E69E7D40]) + 0x6C8);
  v22 = 1;
  v2(0);
  type metadata accessor for BTCloudServicesClient();
  v12 = BTCloudServicesClient.__allocating_init()();
  v32 = v12;
  v3 = dispatch_group_create();
  v10 = v3;
  v31 = v3;
  dispatch_group_enter(v3);
  MEMORY[0x1E69E5928](v3);
  v4 = swift_allocObject();
  v5 = v11;
  *(v4 + 16) = v3;
  v29 = v5;
  v30 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = 0;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v28 = &block_descriptor_313;
  v13 = _Block_copy(&aBlock);

  [v12 deleteSoundProfileRecordWithCompletion_];
  _Block_release(v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v16, v17);
  v21 = MEMORY[0x1DA730C80](v20);
  v19(v20, v17);
  v23 = v21 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v6[2] = static Log.shared.getter();
    v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deleteSoundProfileRecord timedout", 0x33uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v12);
}

void closure #1 in HeadphoneDevice.removeSpatialProfileRecord()(void *a1, NSObject *a2)
{
  v17 = a1;
  v16 = a2;
  v15 = a1;
  v9 = a1 != 0;
  type metadata accessor for Log();
  static Log.shared.getter();
  if (v9)
  {
    v13 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v14 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deleteSoundProfileRecord failed with Error code:", 0x42uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v4 = a1;
    v12[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v12[0] = String.init<A>(describing:)();
    v12[1] = v5;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v12);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v8 = v13;
    v7 = v14;

    outlined destroy of DefaultStringInterpolation(&v13);
    MEMORY[0x1DA7309B0](v8, v7);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Sound Profile Reset Completed", 0x2FuLL, 1);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }

  dispatch_group_leave(a2);
}

Swift::Void __swiftcall HeadphoneDevice.getCaseSilentMode()()
{
  v53 = "getCaseSilentMode()";
  v54 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v55 = partial apply for closure #1 in HeadphoneDevice.getCaseSilentMode();
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v61 = 0;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = v16 - v59;
  v62 = type metadata accessor for DispatchQoS();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v66 = v16 - v65;
  v84 = v0;
  type metadata accessor for BTAirPodsControlServiceClient();
  v1 = BTAirPodsControlServiceClient.__allocating_init()();
  v2 = *v67;
  v68 = MEMORY[0x1E69E7D40];
  v3 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x758))(v1);
  v83 = (*((*v67 & *v68) + 0x750))(v3);
  v52 = v83 != 0;
  v51 = v52;
  outlined destroy of BTAirPodsControlServiceClient?(&v83);
  if (v51)
  {
    v49 = (*((*v67 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v50 = [v49 serialNumber];
    if (v50)
    {
      v48 = v50;
      v43 = v50;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v4;
      MEMORY[0x1E69E5920](v43);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v41 = v47;
    v42 = v46;
    if (v47)
    {
      v39 = v42;
      v40 = v41;
      v5 = v67;
      v37 = v41;
      v38 = v42;
      v78 = v42;
      v79 = v41;
      v6 = MEMORY[0x1E69E5920](v49);
      v77 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x750))(v6);
      if (v77)
      {
        v34 = &v77;
        v36 = v77;
        MEMORY[0x1E69E5928](v77);
        outlined destroy of BTAirPodsControlServiceClient?(v34);

        v35 = MEMORY[0x1DA730940](v38, v37);

        [v36 setDeviceSN_];
        MEMORY[0x1E69E5920](v35);
        MEMORY[0x1E69E5920](v36);
      }

      else
      {
        outlined destroy of BTAirPodsControlServiceClient?(&v77);
      }

      v12 = v67;

      v76 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x750))(v13);
      if (v76)
      {
        v17 = &v76;
        v18 = v76;
        MEMORY[0x1E69E5928](v76);
        outlined destroy of BTAirPodsControlServiceClient?(v17);
        v20 = [v18 dispatchQueue];
        MEMORY[0x1E69E5920](v18);
        MEMORY[0x1E69E5928](v67);
        v14 = swift_allocObject();
        v15 = v55;
        *(v14 + 16) = v67;
        v74 = v15;
        v75 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = 0;
        v72 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v73 = &block_descriptor_319;
        v19 = _Block_copy(&aBlock);
        default argument 1 of OS_dispatch_queue.async(group:qos:flags:execute:)();
        default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)();
        MEMORY[0x1DA730CD0](0, v66, v60, v19);
        (*(v57 + 8))(v60, v56);
        (*(v63 + 8))(v66, v62);
        _Block_release(v19);

        MEMORY[0x1E69E5920](v20);
      }

      else
      {
        outlined destroy of BTAirPodsControlServiceClient?(&v76);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v49);
      v26 = 0;
      type metadata accessor for Log();
      v33 = static Log.shared.getter();
      v21 = 52;
      v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v29 = &v81;
      v81 = v7;
      v82 = v8;
      v27 = 1;
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Invalid serial number for device ", v21, 1);
      object = v9._object;
      MEMORY[0x1DA7310D0](v9._countAndFlagsBits);

      v23 = *(v67 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
      v24 = *(v67 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

      v25 = v80;
      v80[0] = v23;
      v80[1] = v24;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v25);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v26, v27 & 1);
      v28 = v10._object;
      MEMORY[0x1DA7310D0](v10._countAndFlagsBits);

      v31 = v81;
      v30 = v82;

      outlined destroy of DefaultStringInterpolation(v29);
      MEMORY[0x1DA7309B0](v31, v30);
      v32 = v11;
      dispatch thunk of Log.error(_:function:file:line:)();
    }
  }

  else
  {
    type metadata accessor for Log();
    v16[2] = static Log.shared.getter();
    v16[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Failed to initialize BTAirPodsControlServiceClient", 0x45uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }
}

void *closure #1 in HeadphoneDevice.getCaseSilentMode()(void *a1)
{
  v13[1] = a1;
  v13[0] = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v13[0])
  {
    v4 = v13[0];
    MEMORY[0x1E69E5928](v13[0]);
    outlined destroy of BTAirPodsControlServiceClient?(v13);
    MEMORY[0x1E69E5928](a1);
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v11 = partial apply for closure #1 in closure #1 in HeadphoneDevice.getCaseSilentMode();
    v12 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    v8 = 0;
    v9 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10 = &block_descriptor_346;
    v3 = _Block_copy(&aBlock);

    [v4 getSilentModeWithCompletionHandler_];
    _Block_release(v3);
    return MEMORY[0x1E69E5920](v4);
  }

  else
  {
    result = v13;
    outlined destroy of BTAirPodsControlServiceClient?(v13);
  }

  return result;
}

uint64_t closure #1 in closure #1 in HeadphoneDevice.getCaseSilentMode()(int a1, void *a2, void *a3)
{
  v30 = a1 & 1;
  v29 = a2;
  v28 = a3;
  v27 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v25 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v26 = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound Status: Fetch Completed: Error code:", 0x40uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v10 = a2;
    v24[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v24[0] = String.init<A>(describing:)();
    v24[1] = v11;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v24);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v12);

    v14 = v25;
    v13 = v26;

    outlined destroy of DefaultStringInterpolation(&v25);
    MEMORY[0x1DA7309B0](v14, v13);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7D40];
    (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x6F8))(1);
    (*((*a3 & *v15) + 0x728))((a1 ^ 1) & 1);
    type metadata accessor for Log();
    static Log.shared.getter();
    v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v23 = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound enabled: ", 0x25uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v4);

    v21 = (*((*a3 & *v15) + 0x720))(v5) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v17 = v22;
    v16 = v23;

    outlined destroy of DefaultStringInterpolation(&v22);
    MEMORY[0x1DA7309B0](v17, v16);
    dispatch thunk of Log.error(_:function:file:line:)();
  }
}

Swift::Void __swiftcall HeadphoneDevice.populateSerialNumbers()()
{
  v33 = v0;
  v28 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x810))();
  v29 = MEMORY[0x1DA7308C0](v28, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  if (v29)
  {
    v25 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v26 = [v25 serialNumber];
    if (v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v1;
      MEMORY[0x1E69E5920](v26);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      MEMORY[0x1E69E5920](v25);
      SerialNumberType.rawValue.getter();

      v22 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v22();
    }

    else
    {
      v2 = MEMORY[0x1E69E5920](v25);
    }

    v20 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
    v21 = [v20 serialNumberLeft];
    if (v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v3;
      MEMORY[0x1E69E5920](v21);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      MEMORY[0x1E69E5920](v20);
      SerialNumberType.rawValue.getter();

      v17 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v17();
    }

    else
    {
      v4 = MEMORY[0x1E69E5920](v20);
    }

    v15 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))(v4);
    v16 = [v15 serialNumberRight];
    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v5;
      MEMORY[0x1E69E5920](v16);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1E69E5920](v15);
    if (v14)
    {
      SerialNumberType.rawValue.getter();

      v12 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v12();
    }

    type metadata accessor for Log();
    static Log.shared.getter();
    v31 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v32 = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: populateSerialNumbers:", 0x28uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v30 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x810))(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    lazy protocol witness table accessor for type [Int : String] and conformance [A : B]();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of [Int : String](&v30);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v9);

    v11 = v31;
    v10 = v32;

    outlined destroy of DefaultStringInterpolation(&v31);
    MEMORY[0x1DA7309B0](v11, v10);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }
}

Swift::Bool __swiftcall HeadphoneDevice.validatePressHoldCombination()()
{
  v10 = ((*((*v0 & *MEMORY[0x1E69E7D40]) + 0x4C8))() & 1) != 0;
  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x468))();
  v9 = result;
  v8 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x498))();
  v7 = result;
  v6 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    goto LABEL_15;
  }

  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x4F8))();
  v5 = result;
  if (!__OFADD__(v6, v5))
  {
    return v6 + v5 >= 2;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFindMyNetworkAlert()()
{
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x2A0))() & 1;
  v1 = (MEMORY[0x1E69E5928])();
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))(v1);
    v4 = checkIsFindMyNetworkSupported(cbDevice:)(v3);
    MEMORY[0x1E69E5920](v3);
    v5 = v4;
  }

  (MEMORY[0x1E69E5920])();
  return (v5 & 1) != 0;
}

uint64_t HeadphoneDevice.accessorySettingFeatureBitMask.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.accessorySettingFeatureBitMask.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.accessorySettingFeatureBitMask : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xBF0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.accessorySettingFeatureBitMask : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xBF8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.deviceColor.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_deviceColor);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.deviceColor.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_deviceColor);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.deviceColor : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC08))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.deviceColor : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xC10))(v4);
  return MEMORY[0x1E69E5920](v3);
}

BOOL HeadphoneDevice.forceShowBobble.getter()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v4 = MEMORY[0x1DA730940](countAndFlagsBits);
  CFPreferencesAppSynchronize(v4);
  MEMORY[0x1E69E5920](v4);

  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forceShowBobble", 0xFuLL, 1)._countAndFlagsBits;
  v6 = MEMORY[0x1DA730940](v1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x1DA730940](v2);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v6, v5, 0);
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v6);

  return AppBooleanValue != 0;
}

BOOL HeadphoneDevice.forceShowAdaptiveAudio.getter()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v4 = MEMORY[0x1DA730940](countAndFlagsBits);
  CFPreferencesAppSynchronize(v4);
  MEMORY[0x1E69E5920](v4);

  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forceShowAdaptiveAudio", 0x16uLL, 1)._countAndFlagsBits;
  v6 = MEMORY[0x1DA730940](v1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x1DA730940](v2);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v6, v5, 0);
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v6);

  return AppBooleanValue != 0;
}

Swift::Bool __swiftcall HeadphoneDevice.pressHoldSupportsSiriOnly()()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB60))(2);
  (MEMORY[0x1E69E5928])();
  if (v4)
  {
    v2 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xB60))(1) ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  (MEMORY[0x1E69E5920])();
  return v2 & 1;
}

id HeadphoneDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HeadphoneDevice@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeadphoneDevice();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for deviceKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HPM_HEADPHONE_DEVICE_KEY", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HeadphoneDevice.deviceKey = v1;
  return result;
}

__int128 *HeadphoneDevice.deviceKey.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceKey != -1)
  {
    swift_once();
  }

  return &static HeadphoneDevice.deviceKey;
}

uint64_t static HeadphoneDevice.deviceKey.getter()
{
  v0 = HeadphoneDevice.deviceKey.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t HeadphoneDevice.standardAddress.getter()
{
  v7[2] = 0;
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v7[0] = v2;
  v7[1] = v3;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String(&v5);
  outlined destroy of String(&v6);
  outlined destroy of String(v7);
  return v4;
}

uint64_t HeadphoneDevice.hpsAddress.getter()
{
  v7[2] = 0;
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v7[0] = v2;
  v7[1] = v3;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String(&v5);
  outlined destroy of String(&v6);
  outlined destroy of String(v7);
  return v4;
}

uint64_t protocol witness for OptionSet.init(rawValue:) in conformance CBListeningModeConfigs@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = CBListeningModeConfigs.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerUIGestureMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerUIGestureMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerUIGestureMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerUIGestureMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerCallConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerCallConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerCallConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerCallConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerCrownRotationDirection@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerCrownRotationDirection.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerCrownRotationDirection@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerCrownRotationDirection.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBDevicePlacementMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBDevicePlacementMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBDevicePlacementMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBDevicePlacementMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBSmartRoutingMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBSmartRoutingMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBSmartRoutingMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBSmartRoutingMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerSelectiveSpeechListeningConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerSelectiveSpeechListeningConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerSelectiveSpeechListeningConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerSelectiveSpeechListeningConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerConversationDetectConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerConversationDetectConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerConversationDetectConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerConversationDetectConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerAdaptiveVolumeConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerAdaptiveVolumeConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerAdaptiveVolumeConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerAdaptiveVolumeConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for OptionSet.init(rawValue:) in conformance CBDeviceFlags@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CBDeviceFlags.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for OptionSet.init(rawValue:) in conformance CBProductFlags@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = CBProductFlags.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAFeatureCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAFeatureCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAFeatureCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAFeatureCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBListeningModeConfigs()
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBListeningModeConfigs()
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBListeningModeConfigs()
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBListeningModeConfigs()
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerAutoAncCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerAutoAncCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerAutoAncCapability@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerAutoAncCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBListeningModeConfigs@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBListeningModeConfigs.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBListeningModeConfigs@<X0>(_DWORD *a1@<X8>)
{
  result = CBListeningModeConfigs.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBDeviceFlags@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBDeviceFlags.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBDeviceFlags@<X0>(uint64_t *a1@<X8>)
{
  result = CBDeviceFlags.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBDeviceFlags()
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBDeviceFlags()
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBDeviceFlags()
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBDeviceFlags()
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBProductFlags@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBProductFlags.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBProductFlags@<X0>(_DWORD *a1@<X8>)
{
  result = CBProductFlags.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBProductFlags()
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBProductFlags()
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBProductFlags()
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBProductFlags()
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBDoubleTapAction@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBDoubleTapAction.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBDoubleTapAction@<X0>(_BYTE *a1@<X8>)
{
  result = CBDoubleTapAction.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBListeningMode@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBListeningMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t CBListeningMode.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBListeningMode@<X0>(_DWORD *a1@<X8>)
{
  result = CBListeningMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBMicrophoneMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBMicrophoneMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBMicrophoneMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBMicrophoneMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t type metadata accessor for CBListeningModeConfigs()
{
  v4 = lazy cache variable for type metadata for CBListeningModeConfigs;
  if (!lazy cache variable for type metadata for CBListeningModeConfigs)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBListeningModeConfigs);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs()
{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBProductInfo()
{
  v2 = lazy cache variable for type metadata for CBProductInfo;
  if (!lazy cache variable for type metadata for CBProductInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBProductInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection()
{
  v2 = lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection;
  if (!lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection)
  {
    type metadata accessor for CBPeerCrownRotationDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection;
  if (!lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection)
  {
    type metadata accessor for CBPeerCrownRotationDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBDevicePlacementMode()
{
  v4 = lazy cache variable for type metadata for CBDevicePlacementMode;
  if (!lazy cache variable for type metadata for CBDevicePlacementMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDevicePlacementMode);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode()
{
  v2 = lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode;
  if (!lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode)
  {
    type metadata accessor for CBDevicePlacementMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode;
  if (!lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode)
  {
    type metadata accessor for CBDevicePlacementMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode()
{
  v2 = lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode;
  if (!lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode)
  {
    type metadata accessor for CBSmartRoutingMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode;
  if (!lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode)
  {
    type metadata accessor for CBSmartRoutingMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode);
    return WitnessTable;
  }

  return v2;
}

uint64_t CBProductIDIsAirPods_0(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8202:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8223:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    case 8231:
      v2 = 1;
      break;
    case 8232:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

unint64_t type metadata accessor for SPOwnerInterface()
{
  v2 = lazy cache variable for type metadata for SPOwnerInterface;
  if (!lazy cache variable for type metadata for SPOwnerInterface)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SPOwnerInterface);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode()
{
  v2 = lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode;
  if (!lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode)
  {
    type metadata accessor for CBPeerUIGestureMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode;
  if (!lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode)
  {
    type metadata accessor for CBPeerUIGestureMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBPeerSelectiveSpeechListeningConfig()
{
  v4 = lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig;
  if (!lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig;
  if (!lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig)
  {
    type metadata accessor for CBPeerSelectiveSpeechListeningConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig;
  if (!lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig)
  {
    type metadata accessor for CBPeerSelectiveSpeechListeningConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBPeerConversationDetectConfig()
{
  v4 = lazy cache variable for type metadata for CBPeerConversationDetectConfig;
  if (!lazy cache variable for type metadata for CBPeerConversationDetectConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerConversationDetectConfig);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig;
  if (!lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig)
  {
    type metadata accessor for CBPeerConversationDetectConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig;
  if (!lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig)
  {
    type metadata accessor for CBPeerConversationDetectConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBPeerAdaptiveVolumeConfig()
{
  v4 = lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig;
  if (!lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig;
  if (!lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig)
  {
    type metadata accessor for CBPeerAdaptiveVolumeConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig;
  if (!lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig)
  {
    type metadata accessor for CBPeerAdaptiveVolumeConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBDeviceFlags()
{
  v4 = lazy cache variable for type metadata for CBDeviceFlags;
  if (!lazy cache variable for type metadata for CBDeviceFlags)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDeviceFlags);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags()
{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBProductFlags()
{
  v4 = lazy cache variable for type metadata for CBProductFlags;
  if (!lazy cache variable for type metadata for CBProductFlags)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBProductFlags);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags()
{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig;
  if (!lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig)
  {
    type metadata accessor for CBPeerCallConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig;
  if (!lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig)
  {
    type metadata accessor for CBPeerCallConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of DefaultStringInterpolation(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t type metadata accessor for HKAudiogramSample()
{
  v2 = lazy cache variable for type metadata for HKAudiogramSample;
  if (!lazy cache variable for type metadata for HKAudiogramSample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKAudiogramSample);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDevice()
{
  v2 = lazy cache variable for type metadata for CBDevice;
  if (!lazy cache variable for type metadata for CBDevice)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDevice);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBDevice and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type CBDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CBDevice and conformance NSObject)
  {
    type metadata accessor for CBDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CBDevice and conformance NSObject)
  {
    type metadata accessor for CBDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
  v1 = lazy protocol witness table accessor for type [String : HMDeviceRecord] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      type metadata accessor for DispatchWorkItemFlags();
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = type metadata accessor for DispatchWorkItemFlags();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability()
{
  v2 = lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability;
  if (!lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability)
  {
    type metadata accessor for AAFeatureCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability;
  if (!lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability)
  {
    type metadata accessor for AAFeatureCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDeviceSettings()
{
  v2 = lazy cache variable for type metadata for CBDeviceSettings;
  if (!lazy cache variable for type metadata for CBDeviceSettings)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDeviceSettings);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CBPeerAutoAncCapability()
{
  v4 = lazy cache variable for type metadata for CBPeerAutoAncCapability;
  if (!lazy cache variable for type metadata for CBPeerAutoAncCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerAutoAncCapability);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability()
{
  v2 = lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability;
  if (!lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability)
  {
    type metadata accessor for CBPeerAutoAncCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction()
{
  v2 = lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction;
  if (!lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction)
  {
    type metadata accessor for CBDoubleTapAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction;
  if (!lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction)
  {
    type metadata accessor for CBDoubleTapAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View()
{
  v2 = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  v2 = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest()
{
  v2 = lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest;
  if (!lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest)
  {
    type metadata accessor for SHA256Digest();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [String](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t partial apply for implicit closure #3 in HeadphoneDevice.featureUpdateListener(cbDevice:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #3 in HeadphoneDevice.featureUpdateListener(cbDevice:)();
  return result;
}

unint64_t lazy protocol witness table accessor for type CBListeningMode and conformance CBListeningMode()
{
  v2 = lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode;
  if (!lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode)
  {
    type metadata accessor for CBListeningMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode;
  if (!lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode)
  {
    type metadata accessor for CBListeningMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBMicrophoneMode and conformance CBMicrophoneMode()
{
  v2 = lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode;
  if (!lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode)
  {
    type metadata accessor for CBMicrophoneMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode;
  if (!lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode)
  {
    type metadata accessor for CBMicrophoneMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of HeadphoneDeviceDelegate?(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t block_copy_helper_287(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_293(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_299(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for BTCloudServicesClient()
{
  v2 = lazy cache variable for type metadata for BTCloudServicesClient;
  if (!lazy cache variable for type metadata for BTCloudServicesClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for BTCloudServicesClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_305(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_311(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for BTAirPodsControlServiceClient()
{
  v2 = lazy cache variable for type metadata for BTAirPodsControlServiceClient;
  if (!lazy cache variable for type metadata for BTAirPodsControlServiceClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for BTAirPodsControlServiceClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_317(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type SerialNumberType and conformance SerialNumberType()
{
  v2 = lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType;
  if (!lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType;
  if (!lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of BTAirPodsControlServiceClient?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *outlined init with copy of AudioAccessoryDevice?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t block_copy_helper_344(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  v2 = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_350(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t AADevice._deviceRemoteSendState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t AADevice._deviceRemoteSendState.setter(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v3;
  return swift_endAccess();
}

uint64_t key path getter for AADevice.acceptReplyPlayPauseConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 456))(v2);
}

uint64_t key path setter for AADevice.acceptReplyPlayPauseConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 464))(v3);
}

uint64_t AADevice.acceptReplyPlayPauseConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.acceptReplyPlayPauseConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.acceptReplyPlayPauseConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.acceptReplyPlayPauseConfig.modify;
}

uint64_t AADevice.acceptReplyPlayPauseConfig.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._acceptReplyPlayPauseConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAHeadGestureConfig();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig()
{
  v2 = lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig;
  if (!lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig)
  {
    type metadata accessor for AAHeadGestureConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig;
  if (!lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig)
  {
    type metadata accessor for AAHeadGestureConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$acceptReplyPlayPauseConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._acceptReplyPlayPauseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._acceptReplyPlayPauseConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *(v1 + 24) = v5;
  *(v1 + 32) = v9;
  *(v1 + 40) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.autoANCStrength : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 488))(v2);
}

uint64_t key path setter for AADevice.autoANCStrength : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 496))(v3);
}

uint64_t AADevice.autoANCStrength.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.autoANCStrength.setter(int a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

void (*AADevice.autoANCStrength.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v2;

  KeyPath = swift_getKeyPath();
  v3[1] = KeyPath;
  v3[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (v3 + 3));
  return AADevice.autoANCStrength.modify;
}

void AADevice.autoANCStrength.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = v8[2];
    v3 = v8[1];
    v4 = *v8;
    *(v8 + 7) = *(v8 + 6);
    static AADeviceProperty.subscript.setter(v8 + 28, v4, v3, v2);
  }

  else
  {
    v5 = v8[2];
    v6 = v8[1];
    v7 = *v8;
    *(v8 + 8) = *(v8 + 6);
    static AADeviceProperty.subscript.setter((v8 + 4), v7, v6, v5);
  }

  free(v8);
}

uint64_t variable initialization expression of AADevice._autoANCStrength@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAAutoANCStrength();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength()
{
  v2 = lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength;
  if (!lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength)
  {
    type metadata accessor for AAAutoANCStrength();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength;
  if (!lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength)
  {
    type metadata accessor for AAAutoANCStrength();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$autoANCStrength.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo17AAAutoANCStrengthVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo17AAAutoANCStrengthVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._autoANCStrength.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 96);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._autoANCStrength.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *(v1 + 64) = v5;
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  *(v1 + 88) = v11;
  *(v1 + 96) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bobbleConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 520))(v2);
}

uint64_t key path setter for AADevice.bobbleConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 528))(v3);
}

uint64_t AADevice.bobbleConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.bobbleConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.bobbleConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.bobbleConfig.modify;
}

uint64_t AADevice.bobbleConfig.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._bobbleConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AABobbleConfiguration();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration()
{
  v2 = lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration;
  if (!lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration)
  {
    type metadata accessor for AABobbleConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration;
  if (!lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration)
  {
    type metadata accessor for AABobbleConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$bobbleConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo21AABobbleConfigurationVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo21AABobbleConfigurationVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._bobbleConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v8 = *(v1 + 136);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._bobbleConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *(v1 + 104) = v5;
  *(v1 + 112) = v9;
  *(v1 + 120) = v10;
  *(v1 + 128) = v11;
  *(v1 + 136) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.declineDismissSkipConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 552))(v2);
}

uint64_t key path setter for AADevice.declineDismissSkipConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 560))(v3);
}

uint64_t AADevice.declineDismissSkipConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.declineDismissSkipConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.declineDismissSkipConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.declineDismissSkipConfig.modify;
}

uint64_t AADevice.declineDismissSkipConfig.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._declineDismissSkipConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAHeadGestureConfig();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$declineDismissSkipConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._declineDismissSkipConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v8 = *(v1 + 176);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._declineDismissSkipConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  *(v1 + 144) = v5;
  *(v1 + 152) = v9;
  *(v1 + 160) = v10;
  *(v1 + 168) = v11;
  *(v1 + 176) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.headGestureToggle : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 584))(v2);
}

uint64_t key path setter for AADevice.headGestureToggle : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 592))(v3);
}

uint64_t AADevice.headGestureToggle.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.headGestureToggle.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.headGestureToggle.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.headGestureToggle.modify;
}

uint64_t AADevice.headGestureToggle.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._headGestureToggle@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState()
{
  v2 = lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState;
  if (!lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState)
  {
    type metadata accessor for AAMultiState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState;
  if (!lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState)
  {
    type metadata accessor for AAMultiState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$headGestureToggle.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._headGestureToggle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v8 = *(v1 + 216);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._headGestureToggle.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 192);
  v7 = *(v1 + 200);
  v8 = *(v1 + 208);
  *(v1 + 184) = v5;
  *(v1 + 192) = v9;
  *(v1 + 200) = v10;
  *(v1 + 208) = v11;
  *(v1 + 216) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.headGestureProxCardShown : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 616))(v2);
}

uint64_t key path setter for AADevice.headGestureProxCardShown : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 624))(v3);
}

uint64_t AADevice.headGestureProxCardShown.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.headGestureProxCardShown.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.headGestureProxCardShown.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.headGestureProxCardShown.modify;
}

uint64_t AADevice.headGestureProxCardShown.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._headGestureProxCardShown@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$headGestureProxCardShown.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._headGestureProxCardShown.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v8 = *(v1 + 256);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._headGestureProxCardShown.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 232);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  *(v1 + 224) = v5;
  *(v1 + 232) = v9;
  *(v1 + 240) = v10;
  *(v1 + 248) = v11;
  *(v1 + 256) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidEnrolled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 648))(v2);
}

uint64_t key path setter for AADevice.hearingAidEnrolled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 656))(v3);
}

uint64_t AADevice.hearingAidEnrolled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidEnrolled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidEnrolled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hearingAidEnrolled.modify;
}

uint64_t AADevice.hearingAidEnrolled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hearingAidEnrolled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$hearingAidEnrolled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidEnrolled.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  v8 = *(v1 + 296);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidEnrolled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 272);
  v7 = *(v1 + 280);
  v8 = *(v1 + 288);
  *(v1 + 264) = v5;
  *(v1 + 272) = v9;
  *(v1 + 280) = v10;
  *(v1 + 288) = v11;
  *(v1 + 296) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidGainSwipeEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 680))(v2);
}

uint64_t key path setter for AADevice.hearingAidGainSwipeEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 688))(v3);
}

uint64_t AADevice.hearingAidGainSwipeEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidGainSwipeEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidGainSwipeEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hearingAidGainSwipeEnabled.modify;
}

uint64_t AADevice.hearingAidGainSwipeEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hearingAidGainSwipeEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$hearingAidGainSwipeEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidGainSwipeEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v8 = *(v1 + 336);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidGainSwipeEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 312);
  v7 = *(v1 + 320);
  v8 = *(v1 + 328);
  *(v1 + 304) = v5;
  *(v1 + 312) = v9;
  *(v1 + 320) = v10;
  *(v1 + 328) = v11;
  *(v1 + 336) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bluetoothAddressData : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 712))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.bluetoothAddressData : AADevice(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of Data?(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  AADevice.bluetoothAddressData.setter(v4, v6);
}

uint64_t AADevice.bluetoothAddressData.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 344);
  outlined copy of Data?(v2, *(v0 + 352));
  swift_endAccess();
  return v2;
}

uint64_t AADevice.bluetoothAddressData.setter(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 344);
  v4 = *(v2 + 352);
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  outlined consume of Data?(v3, v4);
  swift_endAccess();
  return outlined consume of Data?(a1, a2);
}

uint64_t key path getter for AADevice.autoANCCapability : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 736))(v2);
}

uint64_t key path setter for AADevice.autoANCCapability : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 744))(v3);
}

uint64_t AADevice.autoANCCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.autoANCCapability.setter(int a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

void (*AADevice.autoANCCapability.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v2;

  KeyPath = swift_getKeyPath();
  v3[1] = KeyPath;
  v3[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (v3 + 3));
  return AADevice.autoANCCapability.modify;
}

void AADevice.autoANCCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = v8[2];
    v3 = v8[1];
    v4 = *v8;
    *(v8 + 7) = *(v8 + 6);
    static AADeviceProperty.subscript.setter(v8 + 28, v4, v3, v2);
  }

  else
  {
    v5 = v8[2];
    v6 = v8[1];
    v7 = *v8;
    *(v8 + 8) = *(v8 + 6);
    static AADeviceProperty.subscript.setter((v8 + 4), v7, v6, v5);
  }

  free(v8);
}

uint64_t variable initialization expression of AADevice._autoANCCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAAutoANCCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability()
{
  v2 = lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability;
  if (!lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability)
  {
    type metadata accessor for AAAutoANCCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability;
  if (!lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability)
  {
    type metadata accessor for AAAutoANCCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$autoANCCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAAutoANCCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAAutoANCCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._autoANCCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 360);
  v4 = *(v1 + 368);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  v8 = *(v1 + 392);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._autoANCCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 368);
  v7 = *(v1 + 376);
  v8 = *(v1 + 384);
  *(v1 + 360) = v5;
  *(v1 + 368) = v9;
  *(v1 + 376) = v10;
  *(v1 + 384) = v11;
  *(v1 + 392) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bobbleCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 768))(v2);
}

uint64_t key path setter for AADevice.bobbleCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 776))(v3);
}

uint64_t AADevice.bobbleCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.bobbleCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.bobbleCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.bobbleCapability.modify;
}

uint64_t AADevice.bobbleCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._bobbleCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$bobbleCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._bobbleCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  v6 = *(v1 + 424);
  v8 = *(v1 + 432);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._bobbleCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 408);
  v7 = *(v1 + 416);
  v8 = *(v1 + 424);
  *(v1 + 400) = v5;
  *(v1 + 408) = v9;
  *(v1 + 416) = v10;
  *(v1 + 424) = v11;
  *(v1 + 432) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.caseSoundCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 800))(v2);
}

uint64_t key path setter for AADevice.caseSoundCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 808))(v3);
}

uint64_t AADevice.caseSoundCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.caseSoundCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.caseSoundCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.caseSoundCapability.modify;
}

uint64_t AADevice.caseSoundCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._caseSoundCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$caseSoundCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._caseSoundCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 440);
  v4 = *(v1 + 448);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  v8 = *(v1 + 472);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._caseSoundCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 448);
  v7 = *(v1 + 456);
  v8 = *(v1 + 464);
  *(v1 + 440) = v5;
  *(v1 + 448) = v9;
  *(v1 + 456) = v10;
  *(v1 + 464) = v11;
  *(v1 + 472) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.earTipFitTestCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 832))(v2);
}

uint64_t key path setter for AADevice.earTipFitTestCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 840))(v3);
}

uint64_t AADevice.earTipFitTestCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.earTipFitTestCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.earTipFitTestCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.earTipFitTestCapability.modify;
}

uint64_t AADevice.earTipFitTestCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._earTipFitTestCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$earTipFitTestCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._earTipFitTestCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v8 = *(v1 + 512);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._earTipFitTestCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 488);
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);
  *(v1 + 480) = v5;
  *(v1 + 488) = v9;
  *(v1 + 496) = v10;
  *(v1 + 504) = v11;
  *(v1 + 512) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.frequencyBand : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 864))(v2);
}

uint64_t key path setter for AADevice.frequencyBand : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 872))(v3);
}

uint64_t AADevice.frequencyBand.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.frequencyBand.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.frequencyBand.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.frequencyBand.modify;
}

uint64_t AADevice.frequencyBand.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._frequencyBand@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFrequencyBand();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand()
{
  v2 = lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand;
  if (!lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand)
  {
    type metadata accessor for AAFrequencyBand();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand;
  if (!lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand)
  {
    type metadata accessor for AAFrequencyBand();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$frequencyBand.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo15AAFrequencyBandVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo15AAFrequencyBandVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._frequencyBand.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 520);
  v4 = *(v1 + 528);
  v5 = *(v1 + 536);
  v6 = *(v1 + 544);
  v8 = *(v1 + 552);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._frequencyBand.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 528);
  v7 = *(v1 + 536);
  v8 = *(v1 + 544);
  *(v1 + 520) = v5;
  *(v1 + 528) = v9;
  *(v1 + 536) = v10;
  *(v1 + 544) = v11;
  *(v1 + 552) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 896))(v2);
}

uint64_t key path setter for AADevice.hearingAidCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 904))(v3);
}

uint64_t AADevice.hearingAidCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hearingAidCapability.modify;
}

uint64_t AADevice.hearingAidCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hearingAidCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAHearingAidCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability()
{
  v2 = lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability;
  if (!lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability)
  {
    type metadata accessor for AAHearingAidCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability;
  if (!lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability)
  {
    type metadata accessor for AAHearingAidCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingAidCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo22AAHearingAidCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo22AAHearingAidCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 560);
  v4 = *(v1 + 568);
  v5 = *(v1 + 576);
  v6 = *(v1 + 584);
  v8 = *(v1 + 592);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 568);
  v7 = *(v1 + 576);
  v8 = *(v1 + 584);
  *(v1 + 560) = v5;
  *(v1 + 568) = v9;
  *(v1 + 576) = v10;
  *(v1 + 584) = v11;
  *(v1 + 592) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 928))(v2);
}

uint64_t key path setter for AADevice.hearingAidConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 936))(v3);
}

uint64_t AADevice.hearingAidConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hearingAidConfig.modify;
}

uint64_t AADevice.hearingAidConfig.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hearingAidConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAHearingAidConfiguration();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration()
{
  v2 = lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration;
  if (!lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration)
  {
    type metadata accessor for AAHearingAidConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration;
  if (!lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration)
  {
    type metadata accessor for AAHearingAidConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingAidConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo25AAHearingAidConfigurationVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo25AAHearingAidConfigurationVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 600);
  v4 = *(v1 + 608);
  v5 = *(v1 + 616);
  v6 = *(v1 + 624);
  v8 = *(v1 + 632);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 608);
  v7 = *(v1 + 616);
  v8 = *(v1 + 624);
  *(v1 + 600) = v5;
  *(v1 + 608) = v9;
  *(v1 + 616) = v10;
  *(v1 + 624) = v11;
  *(v1 + 632) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingTestCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 960))(v2);
}

uint64_t key path setter for AADevice.hearingTestCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 968))(v3);
}

uint64_t AADevice.hearingTestCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingTestCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingTestCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hearingTestCapability.modify;
}

uint64_t AADevice.hearingTestCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hearingTestCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAHearingTestCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability()
{
  v2 = lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability;
  if (!lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability)
  {
    type metadata accessor for AAHearingTestCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability;
  if (!lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability)
  {
    type metadata accessor for AAHearingTestCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingTestCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo23AAHearingTestCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo23AAHearingTestCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingTestCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 640);
  v4 = *(v1 + 648);
  v5 = *(v1 + 656);
  v6 = *(v1 + 664);
  v8 = *(v1 + 672);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingTestCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 648);
  v7 = *(v1 + 656);
  v8 = *(v1 + 664);
  *(v1 + 640) = v5;
  *(v1 + 648) = v9;
  *(v1 + 656) = v10;
  *(v1 + 664) = v11;
  *(v1 + 672) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hideOffListeningModeCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 992))(v2);
}

uint64_t key path setter for AADevice.hideOffListeningModeCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1000))(v3);
}

uint64_t AADevice.hideOffListeningModeCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hideOffListeningModeCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hideOffListeningModeCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hideOffListeningModeCapability.modify;
}

uint64_t AADevice.hideOffListeningModeCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hideOffListeningModeCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$hideOffListeningModeCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hideOffListeningModeCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 680);
  v4 = *(v1 + 688);
  v5 = *(v1 + 696);
  v6 = *(v1 + 704);
  v8 = *(v1 + 712);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hideOffListeningModeCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v9;
  __b[2] = v10;
  __b[3] = v11;
  LOBYTE(__b[4]) = v6;

  swift_beginAccess();
  v2 = *(v1 + 688);
  v7 = *(v1 + 696);
  v8 = *(v1 + 704);
  *(v1 + 680) = v5;
  *(v1 + 688) = v9;
  *(v1 + 696) = v10;
  *(v1 + 704) = v11;
  *(v1 + 712) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.audiogramEnrolledTimestamp : AADevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);

  v11 = v7;
  v10 = v7;
  (*(*v7 + 1024))(v2);
  outlined init with take of Date?(v8, v9);
}

uint64_t key path setter for AADevice.audiogramEnrolledTimestamp : AADevice(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v4 - v6;
  outlined init with copy of Date?(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1032))(v8);
}

uint64_t AADevice.audiogramEnrolledTimestamp.getter@<X0>(uint64_t a1@<X8>)
{

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, a1);
}

uint64_t AADevice.audiogramEnrolledTimestamp.setter(const void *a1)
{
  v10 = a1;
  v12 = 0;
  v11 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v4 - v5;
  v12 = v2;
  v11 = v1;

  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  outlined init with copy of Date?(v10, v9);
  static AADeviceProperty.subscript.setter(v9, v6, KeyPath, v8);
  return outlined destroy of Date?(v10);
}

void *outlined init with copy of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void (*AADevice.audiogramEnrolledTimestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  *v4 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v4[1] = __swift_coroFrameAllocStub(v3);
  v7 = __swift_coroFrameAllocStub(v3);
  v4[2] = v7;

  KeyPath = swift_getKeyPath();
  v4[3] = KeyPath;
  v4[4] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, v7);
  return AADevice.audiogramEnrolledTimestamp.modify;
}

void AADevice.audiogramEnrolledTimestamp.modify(uint64_t **a1, char a2)
{
  v9 = *a1;
  if (a2)
  {
    v2 = v9[4];
    v3 = v9[3];
    v5 = v9[2];
    v6 = v9[1];
    v4 = *v9;
    outlined init with copy of Date?(v5, v6);
    static AADeviceProperty.subscript.setter(v6, v4, v3, v2);
    outlined destroy of Date?(v5);

    free(v5);
    free(v6);
  }

  else
  {
    v7 = v9[2];
    v8 = v9[1];
    static AADeviceProperty.subscript.setter(v7, *v9, v9[3], v9[4]);

    free(v7);
    free(v8);
  }

  free(v9);
}

uint64_t variable initialization expression of AADevice._audiogramEnrolledTimestamp@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v3 - v4;
  KeyPath = swift_getKeyPath();
  v5 = 0;
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 56))(v7, 1);
  v9 = type metadata accessor for AADevice();
  v8 = &v13;
  v13 = 1;
  v11 = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, v7, v9, v8, v9, v10, v6);
}

uint64_t AADevice.$audiogramEnrolledTimestamp.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._audiogramEnrolledTimestamp.getter@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp);
  swift_beginAccess();
  outlined init with copy of AADeviceProperty<AADevice, Date?>(v3, a1);
  return swift_endAccess();
}

char *outlined init with copy of AADeviceProperty<AADevice, Date?>(char *a1, char *a2)
{
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a2, a1, v13);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  v4 = v10[13];
  v5 = *&a1[v4];

  *&a2[v4] = v5;
  v6 = v10[14];
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = v10[15];
  v9 = *&a1[v8];

  result = a2;
  *&a2[v8] = v9;
  a2[v10[16]] = a1[v10[16]];
  return result;
}

uint64_t AADevice._audiogramEnrolledTimestamp.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v9 = v1;
  outlined init with copy of AADeviceProperty<AADevice, Date?>(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp);
  v6 = &v8;
  swift_beginAccess();
  outlined assign with take of AADeviceProperty<AADevice, Date?>(v4, v5);
  swift_endAccess();
  return outlined destroy of AADeviceProperty<AADevice, Date?>(v7);
}

char *outlined assign with take of AADeviceProperty<AADevice, Date?>(char *a1, char *a2)
{
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2, 1))
  {
    if (v16(a1, 1, v14))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v15 + 32))(a2, a1, v14);
      (*(v15 + 56))(a2, 0, 1, v14);
    }
  }

  else if (v16(a1, 1, v14))
  {
    (*(v15 + 8))(a2, v14);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v15 + 40))(a2, a1, v14);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  v4 = &a2[v11[13]];
  v5 = *v4;
  *v4 = *&a1[v11[13]];

  v6 = &a2[v11[14]];
  v7 = *v6;
  *v6 = *&a1[v11[14]];

  v8 = &a2[v11[15]];
  v9 = *v8;
  *v8 = *&a1[v11[15]];

  result = a2;
  a2[v11[16]] = a1[v11[16]];
  return result;
}

uint64_t outlined destroy of AADeviceProperty<AADevice, Date?>(uint64_t a1)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1, 1))
  {
    (*(v8 + 8))(a1, v7);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  v1 = *(a1 + v5[13]);

  v2 = *(a1 + v5[14]);

  v3 = *(a1 + v5[15]);

  return a1;
}

uint64_t property wrapper backing initializer of AADevice.heartRateMonitorCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.heartRateMonitorCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1056))(v2);
}

uint64_t key path setter for AADevice.heartRateMonitorCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1064))(v3);
}

uint64_t AADevice.heartRateMonitorCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.heartRateMonitorCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.heartRateMonitorCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.heartRateMonitorCapability.modify;
}

void AADevice.heartRateMonitorCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$heartRateMonitorCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1080))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$heartRateMonitorCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1088))(v8);
}

uint64_t AADevice.$heartRateMonitorCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$heartRateMonitorCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$heartRateMonitorCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$heartRateMonitorCapability.getter();
  return AADevice.$heartRateMonitorCapability.modify;
}

void AADevice.$heartRateMonitorCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$heartRateMonitorCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$heartRateMonitorCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}