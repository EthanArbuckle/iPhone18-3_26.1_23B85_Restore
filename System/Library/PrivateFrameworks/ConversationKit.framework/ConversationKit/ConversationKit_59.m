uint64_t Participant.VideoInfo.cameraType.getter()
{
  specialized Dictionary.subscript.getter();
  if (!v8)
  {
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    v4 = 0u;
    v5 = 0u;
    v6 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15CameraContainer_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    goto LABEL_7;
  }

  if (!*(&v5 + 1))
  {
LABEL_7:
    outlined destroy of CallControlsService?(&v4, &_s15ConversationKit15CameraContainer_pSgMd);
    return 2;
  }

  outlined init with take of TapInteractionHandler(&v4, v7);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v0 = OUTLINED_FUNCTION_44_0();
  v2 = v1(v0) & 1;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t Participant.isEffectsEnabled.getter()
{
  v1 = OUTLINED_FUNCTION_89_6();
  if (*(v0 + v2))
  {
    return 0;
  }

  else
  {
    return *(v0 + *(v1 + 40));
  }
}

uint64_t Participant.isRequestToScreenShareAvailable.getter()
{
  v4 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_209();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_33_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v7 = *(v6 + 48);
    OUTLINED_FUNCTION_37((v3 + *(v6 + 64)));
    memcpy(v23, (v3 + v7), 0x150uLL);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v8 + 8))(v3);
    v9 = v23[0];
    outlined destroy of Participant.MediaInfo(v23);
    OUTLINED_FUNCTION_88_6();
    if ((*(v0 + v10 + 4) & 1) == 0)
    {
LABEL_7:
      v12 = 0;
      return v12 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v11 = type metadata accessor for Participant(0);
    v9 = 0;
    v12 = 0;
    if (*(v0 + *(v11 + 24) + 4) != 1)
    {
      return v12 & 1;
    }
  }

  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_28_45(v16);
      outlined destroy of Participant.MediaInfo(v1 + v2);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v17 + 8))(v1);
      v18 = type metadata accessor for Participant(0);
      v19 = *(v0 + *(v18 + 28));
      if (v19)
      {
        v20 = [v19 value];
        if (!v20)
        {
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = MEMORY[0x1BFB209B0](v21);
        }

        v22 = [v20 destinationIdIsTemporary];

        if (v22)
        {
          goto LABEL_7;
        }
      }

      v12 = *(v0 + *(v18 + 24) + 1) & (v9 ^ 1);
      break;
    case 6:
      return v12 & 1;
    default:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v14 + 8))(v1);
      goto LABEL_7;
  }

  return v12 & 1;
}

BOOL Participant.isDisplayEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  static Participant.State.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Participant(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (*(a1 + *(v5 + 28)) == 0) != (*(v2 + *(v5 + 28)) == 0))
  {
    return 0;
  }

  OUTLINED_FUNCTION_120_4();
  v7 = v6 ? 0x100000000 : 0;
  v8 = OUTLINED_FUNCTION_195(v7);
  if (!static Participant.Capabilities.== infix(_:_:)(v8, v9))
  {
    return 0;
  }

  v10 = Participant.deviceOrientation.getter();
  v12 = v11;
  v13 = Participant.deviceOrientation.getter();
  if (v12)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v14 & 1) != 0 || v10 != v13)
  {
    return 0;
  }

  Participant.videoInfo.getter();
  v15 = v26[0];
  if (v26[0])
  {
    v24 = v28;
    v25 = v27;
    v16 = v29;
    outlined destroy of CallControlsService?(v26, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v16 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  Participant.videoInfo.getter();
  if (v30[0])
  {
    v17 = v33;
    v22 = v31;
    v23 = v32;
    outlined destroy of CallControlsService?(v30, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    if (!v15)
    {
      return 0;
    }

    v38[0] = v25;
    v38[1] = v24;
    v39 = v16 & 1;
    v40[0] = v22;
    v40[1] = v23;
    v41 = v17 & 1;
    if (!static AspectRatio.== infix(_:_:)(v38, v40))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  Participant.videoInfo.getter();
  if (v34[0])
  {
    v18 = v35;
    outlined destroy of CallControlsService?(v34, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  }

  else
  {
    v18 = 3;
  }

  Participant.videoInfo.getter();
  if (v36[0])
  {
    v19 = v37;
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    if (v18 == 3)
    {
      if (v19 != 3)
      {
        return 0;
      }
    }

    else if (v19 == 3 || v18 != v19)
    {
      return 0;
    }

    return 1;
  }

  return v18 == 3;
}

double Participant.ScreenInfo.contentsSize.getter()
{
  if (*(v0 + 208))
  {
    v2 = [objc_opt_self() defaultDisplayScale];
    [v2 doubleValue];
  }

  v3 = 64;
  v4 = 88;
  if ((*(v0 + 48) | 2) == 3)
  {
    v4 = 72;
  }

  else
  {
    v3 = 80;
  }

  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  if (*(v0 + 96))
  {
    v5 = 1.0;
    v6 = 1.0;
  }

  OUTLINED_FUNCTION_257_0(v5, v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v7 = static UIView.screenScale.getter();
  v8 = round(v1 * v7) / v7;
  static UIView.screenScale.getter();
  return v8;
}

uint64_t Participant.isOtherInvitedParticipant.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 5:
      goto LABEL_2;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_192_1();
      OUTLINED_FUNCTION_37((v0 + v6));
      outlined destroy of Participant.MediaInfo(v0 + 1);
LABEL_2:
      v2 = 0;
      goto LABEL_3;
    case 6:
      return result;
    default:
LABEL_3:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v5 + 8))(v0);
      return v2;
  }
}

uint64_t Participant.idsIdentifier.getter()
{
  OUTLINED_FUNCTION_89_6();
  v2 = (v0 + v1);
  if (*v2)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t Participant.isActiveWithAV.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_164_0(v7);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    v4 = v7[0];
    outlined destroy of Participant.MediaInfo(v7);
    v5 = v4 ^ 1;
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Participant.avInfo.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_164_0(v5);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    outlined destroy of Participant.MediaInfo(v5);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_4_31();
}

void Participant.Caption.init(utteranceNumber:dateCreated:dateUpdated:text:utteranceComplete:lowConfidenceRanges:)()
{
  OUTLINED_FUNCTION_408();
  v16 = v4;
  v15 = v5;
  OUTLINED_FUNCTION_256_2();
  v7 = v6;
  *v6 = v8;
  v9 = type metadata accessor for Participant.Caption(0);
  v10 = v9[5];
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v13 = *(v12 + 32);
  v13(&v7[v10], v3, v11);
  v13(&v7[v9[6]], v2, v11);
  v14 = &v7[v9[7]];
  *v14 = v1;
  *(v14 + 1) = v0;
  v7[v9[8]] = v15;
  *&v7[v9[9]] = v16;
  OUTLINED_FUNCTION_415();
}

void Participant.CaptionInfo.init(provider:captions:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_45_1();

  specialized Participant.CaptionInfo.init(provider:captions:)();
}

ConversationKit::Participant::Capabilities __swiftcall Participant.Capabilities.init(momentsCapture:screenSharing:gondolaCalling:kickable:requestScreenSharing:)(Swift::Bool momentsCapture, Swift::Bool screenSharing, Swift::Bool gondolaCalling, Swift::Bool kickable, Swift::Bool requestScreenSharing)
{
  v5 = 0x100000000;
  if (!requestScreenSharing)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!kickable)
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (!gondolaCalling)
  {
    v7 = 0;
  }

  v8 = 256;
  if (!screenSharing)
  {
    v8 = 0;
  }

  return (v8 & 0xFFFFFFFFFFFFFFFELL | momentsCapture | v7 | v6 | v5);
}

uint64_t Participant.RemoteIdentifiers.init(handle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

void Participant.init(state:identifier:capabilities:remoteIdentifiers:gradient:nickname:countdownInfo:isAuthorizedToChangeGroupMembership:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_408();
  v59 = v11;
  v60 = v12;
  v57 = v13;
  v58 = v14;
  v16 = v15;
  v18 = v17;
  v56 = v19;
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v25 = OUTLINED_FUNCTION_4_24();
  v26 = type metadata accessor for Participant.CountdownInfo(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v55 = *(v16 + 4);
  v28 = type metadata accessor for Participant(0);
  v29 = v21 + v28[7];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v30 = (v21 + v28[9]);
  *(v21 + v28[10]) = 0;
  *(v21 + v28[11]) = MEMORY[0x1E69E7CD0];
  *(v21 + v28[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantVWObTm_6();
  v31 = v28[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v32 = vdupq_n_s64(v18);
  v33 = OUTLINED_FUNCTION_139_5(v32, vshlq_u64(v32, xmmword_1BC4DFB80), xmmword_1BC4DFB90);
  v35 = vand_s8(v33, v34);
  v53 = v16[1];
  v54 = *v16;
  *&v37 = v36(v21 + v31, v56);
  v38 = v21 + v28[6];
  *v38 = v18 & 1;
  *(v38 + 1) = vuzp1_s8(v35, v37).u32[0];
  outlined consume of Participant.RemoteIdentifiers?(*v29);
  *v29 = v54;
  *(v29 + 16) = v53;
  *(v29 + 32) = v55;
  *(v21 + v28[8]) = v57;
  *v30 = v58;
  v30[1] = v59;
  OUTLINED_FUNCTION_137_1(v28[15]);
  OUTLINED_FUNCTION_12_5(v60);
  if (v39)
  {
    v40 = type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    v44 = OUTLINED_FUNCTION_34_32();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v40);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v40);
    OUTLINED_FUNCTION_171_1();
    outlined assign with take of AttributedString?();
    outlined assign with take of AttributedString?();
    *(v10 + *(v26 + 24)) = 0;
    OUTLINED_FUNCTION_12_5(v60);
    if (!v39)
    {
      outlined destroy of CallControlsService?(v60, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  _s15ConversationKit11ParticipantVWObTm_6();
  *(v21 + v28[16]) = a10;
  OUTLINED_FUNCTION_415();
}

ConversationKit::Participant::AVInfo __swiftcall Participant.AVInfo.init(isAVLess:audioToken:)(Swift::Bool isAVLess, Swift::Int audioToken)
{
  v2 = isAVLess;
  result.audioToken = audioToken;
  result.isAVLess = v2;
  return result;
}

ConversationKit::Participant::VideoState __swiftcall Participant.VideoState.init(isReceivingVideoFrames:isVideoSuspended:isVideoPaused:videoDegradedState:isVideoDegradedUI:isVideoReconnecting:isVideoMirrored:isVideoCroppedByAspectRatio:)(Swift::Bool isReceivingVideoFrames, Swift::Bool isVideoSuspended, Swift::Bool isVideoPaused, ConversationKit::Participant::VideoDegradedState videoDegradedState, Swift::Bool isVideoDegradedUI, Swift::Bool isVideoReconnecting, Swift::Bool isVideoMirrored, Swift::Bool isVideoCroppedByAspectRatio)
{
  v8 = 256;
  if (!isVideoSuspended)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | isReceivingVideoFrames;
  v10 = 0x10000;
  if (!isVideoPaused)
  {
    v10 = 0;
  }

  v11 = (v9 | v10) & 0xFFFFFFFF00FFFFFFLL | (videoDegradedState << 24);
  v12 = 0x100000000;
  if (!isVideoDegradedUI)
  {
    v12 = 0;
  }

  v13 = 0x10000000000;
  if (!isVideoMirrored)
  {
    v13 = 0;
  }

  v14 = 0x1000000000000;
  if (!isVideoReconnecting)
  {
    v14 = 0;
  }

  v15 = v11 | v12 | v14 | v13;
  v16 = isVideoCroppedByAspectRatio;
  result.isReceivingVideoFrames = v15;
  result.isVideoSuspended = BYTE1(v15);
  result.isVideoPaused = BYTE2(v15);
  result.videoDegradedState = BYTE3(v15);
  result.isVideoDegradedUI = BYTE4(v15);
  result.isVideoMirrored = BYTE5(v15);
  result.isVideoReconnecting = BYTE6(v15);
  result.isChangingMirroredVideo = HIBYTE(v15);
  result.isVideoCroppedByAspectRatio = v16;
  result.isChangingExternalCameraUsageOnIPad = HIBYTE(v16);
  return result;
}

__n128 Participant.VideoInfo.init(providers:state:orientation:cameraPosition:aspectRatio:isMixedWithScreen:isFullBleedReceiver:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  result = *a6;
  v10 = *(a6 + 16);
  *(a9 + 40) = *a6;
  v11 = *(a6 + 32) & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v10;
  *(a9 + 72) = v11;
  *(a9 + 73) = a7;
  *(a9 + 74) = a8;
  return result;
}

uint64_t Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:)()
{
  Participant.copresenceInfo.getter(v1);
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  return outlined destroy of CallControlsService?(v1, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
}

void Participant.asWaiting()()
{
  OUTLINED_FUNCTION_29();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v9 = OUTLINED_FUNCTION_4_24();
  v89 = type metadata accessor for Participant.CountdownInfo(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v87 = v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62_14(v13);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v17 = OUTLINED_FUNCTION_61_11(v16);
  type metadata accessor for Participant(v17);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_133_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v85 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_17();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_83_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_38_30();
  v32 = type metadata accessor for Participant.State(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_243();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v35 + 8))(v3);
    OUTLINED_FUNCTION_27_45();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    Date.init()();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    v36 = OUTLINED_FUNCTION_54_15();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
    v39 = OUTLINED_FUNCTION_33_35();
    OUTLINED_FUNCTION_272_0(v39, v40, v41);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v90);
    OUTLINED_FUNCTION_316();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v2);
    if (v45)
    {
      OUTLINED_FUNCTION_0_189();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_12_5(v2);
      if (!v45)
      {
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantV5StateOSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_148();
      _s15ConversationKit11ParticipantVWObTm_6();
    }

    OUTLINED_FUNCTION_207_0();
    OUTLINED_FUNCTION_16_62(v4);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_52_16();
      v47(v46);
      OUTLINED_FUNCTION_16_62(v4);
      v50 = v85;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v4, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      v48 = OUTLINED_FUNCTION_81_5();
      v49(v48);
      v50 = v85;
    }

    OUTLINED_FUNCTION_30_31();
    OUTLINED_FUNCTION_158_1();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v50);
    if (v45)
    {
      OUTLINED_FUNCTION_5_126();
      OUTLINED_FUNCTION_212_3();
      v51 = OUTLINED_FUNCTION_54_15();
      OUTLINED_FUNCTION_79_12(v51, v52, v53);

      if (v3 != 1)
      {
        outlined destroy of CallControlsService?(v50, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
      }
    }

    else
    {
      outlined init with take of Participant.CountdownInfo?(v50, v92);
      OUTLINED_FUNCTION_129_2();
    }

    OUTLINED_FUNCTION_40_21();
    *(v0 + v1[11]) = MEMORY[0x1E69E7CD0];
    *(v0 + v1[12]) = 0;
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v54 = OUTLINED_FUNCTION_100_4();
    v55(v54);
    OUTLINED_FUNCTION_39_23();
    OUTLINED_FUNCTION_130_4();
    *v90 = v86;
    v90[1] = v85;
    v90[2] = v84;
    v90[3] = v83;
    v90[4] = v82;
    *(v0 + v1[8]) = v81;
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_180_3(v80);
    OUTLINED_FUNCTION_137_1(v56);
    v57 = OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_32_24(v57, v58);
    if (v45)
    {
      v59 = type metadata accessor for Date();
      v60 = OUTLINED_FUNCTION_34_32();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
      v63 = OUTLINED_FUNCTION_36_31();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
      v66 = OUTLINED_FUNCTION_33_35();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v59);
      OUTLINED_FUNCTION_160_2();
      OUTLINED_FUNCTION_162_2();
      *(v87 + *(v89 + 24)) = 0;
      OUTLINED_FUNCTION_12_79();
      v72 = v88;
      v73 = v5;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v92, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_153();
      OUTLINED_FUNCTION_209_1();
      v72 = v88;
      v73 = v5;
    }

    OUTLINED_FUNCTION_1_153();
    OUTLINED_FUNCTION_236_3();
    *(v0 + v1[16]) = v91;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v74 = static Defaults.shared;
    OUTLINED_FUNCTION_0_1();
    v76 = (*(v75 + 608))();
    outlined destroy of CallControlsService?(v73, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    outlined destroy of CallControlsService?(v79, &_s10Foundation4UUIDVSgMd);
    v77 = OUTLINED_FUNCTION_224_0();
    outlined destroy of CallControlsService?(v77, v78);
    if (v76)
    {
      OUTLINED_FUNCTION_161_2();

      *&v73[v72] = v76;
    }

    OUTLINED_FUNCTION_232_2();

    *(v72 + v76) = v74;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t Participant.isPendingAuthorization.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_3;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_192_1();
      OUTLINED_FUNCTION_37((v0 + v6));
      outlined destroy of Participant.MediaInfo(v0 + 1);
      goto LABEL_2;
    case 6:
      return result;
    default:
LABEL_2:
      v2 = 0;
LABEL_3:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v5 + 8))(v0);
      return v2;
  }
}

uint64_t Array<A>.sorted()()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.sorted(by:)();
}

void Participant.RemoteIdentifiers.init(participant:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [a1 handle];
  *(a2 + 8) = [a1 identifier];
  *(a2 + 16) = 0;
  v4 = [a1 avcIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
}

unint64_t Participant.State.debugDescription.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  v2 = 0x676E696E696F6A2ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v5 + 8))(v0);
      v2 = 0x676E69746961772ELL;
      break;
    case 2u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v6 + 8))(v0);
      v2 = 0xD000000000000015;
      break;
    case 3u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0);
      v2 = 0x676E75722ELL;
      break;
    case 4u:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v8 = *(v7 + 48);
      v9 = (v0 + *(v7 + 64));
      v10 = v9[1];
      v17 = *v9;
      v18 = v10;
      v11 = v9[3];
      v19 = v9[2];
      v20 = v11;
      memcpy(v16, (v0 + v8), sizeof(v16));
      MEMORY[0x1BFB20B10](0x2864656E696F6A2ELL, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
      v12 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v12);

      OUTLINED_FUNCTION_204_0();
      v2 = 0;
      outlined destroy of Participant.MediaInfo(v16);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v13 + 8))(v0);
      break;
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v14 + 8))(v0);
      v2 = 0x7466656C2ELL;
      break;
    case 6u:
      return v2;
    default:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v3 + 8))(v0);
      v2 = 0x64657469766E692ELL;
      break;
  }

  return v2;
}

BOOL Participant.State.isWaiting.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t Participant.RemoteIdentifiers.avcIdentifier.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void Participant.RemoteIdentifiers.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  NSObject.hash(into:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22680](v1);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  OUTLINED_FUNCTION_44_0();

  String.hash(into:)();
}

Swift::Int Participant.RemoteIdentifiers.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_29_1();
  NSObject.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22680](v1);
  }

  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant.RemoteIdentifiers()
{
  Hasher.init(_seed:)();
  Participant.RemoteIdentifiers.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Participant.Capabilities.debugDescription.getter()
{
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(105);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_229_2();

  OUTLINED_FUNCTION_2_67();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_229_2();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_229_2();

  MEMORY[0x1BFB20B10](0x62616B63696B202CLL, 0xEB000000003D656CLL);
  OUTLINED_FUNCTION_214_2();
  OUTLINED_FUNCTION_229_2();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_276_0();

  return v1;
}

void Participant.Capabilities.hash(into:)()
{
  OUTLINED_FUNCTION_6_7();
  Hasher._combine(_:)(v0 & 1);
  Hasher._combine(_:)(BYTE1(v0) & 1);
  Hasher._combine(_:)(BYTE2(v0) & 1);
  Hasher._combine(_:)(BYTE3(v0) & 1);
  Hasher._combine(_:)(BYTE4(v0) & 1);
}

Swift::Int Participant.Capabilities.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  Participant.Capabilities.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant.Capabilities()
{
  Hasher.init(_seed:)();
  Participant.Capabilities.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Participant.Capabilities(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x100000000;
  if (a1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v13 = v3 == 0;
  v18 = 256;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return static Participant.Capabilities.== infix(_:_:)(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

uint64_t Participant.MediaInfo.avInfo.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Participant.MediaInfo.captionInfo.getter()
{
  v0 = OUTLINED_FUNCTION_44_0();
  outlined copy of Participant.CaptionInfo?(v0);
  return OUTLINED_FUNCTION_44_0();
}

uint64_t Participant.MediaInfo.captionInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = outlined consume of Participant.CaptionInfo?(v3[39]);
  v3[39] = a1;
  v3[40] = a2;
  v3[41] = a3;
  return result;
}

uint64_t Participant.MediaInfo.init(audioToken:screenInfo:)()
{
  OUTLINED_FUNCTION_6_7();
  v2 = v1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 96) = 0;
  *(v1 + 120) = 1;
  *v1 = 0;
  bzero((v1 + 128), 0xB1uLL);
  *(v2 + 8) = v0;
  memset(v4, 0, 75);
  outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 75) = 0u;
  result = outlined assign with take of AttributedString?();
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 312) = 0;
  return result;
}

void Participant.MediaInfo.init(avInfo:videoInfo:screenInfo:captionInfo:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_256_2();
  v7 = v6;
  v9 = v8;
  *(v8 + 75) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  *(v8 + 120) = 1;
  bzero((v8 + 128), 0xB1uLL);
  *v9 = v7;
  *(v9 + 8) = v1;
  OUTLINED_FUNCTION_143_4();
  outlined assign with take of AttributedString?();
  outlined assign with take of AttributedString?();
  *(v9 + 312) = v0;
  *(v9 + 320) = v5;
  *(v9 + 328) = v3;
  OUTLINED_FUNCTION_30_0();
}

uint64_t Participant.MediaInfo.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = 0x6F666E497661;
  *(inited + 40) = 0xE600000000000000;
  v2 = *(v0 + 8);
  *(inited + 48) = *v0;
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for Participant.AVInfo;
  *(inited + 80) = 0x666E496F65646976;
  *(inited + 88) = 0xE90000000000006FLL;
  memcpy(__dst, (v0 + 16), 0x4BuLL);
  v3 = __dst[0];
  OUTLINED_FUNCTION_238_2(__src);
  if (v3)
  {
    *(inited + 120) = &type metadata for Participant.VideoInfo;
    v4 = swift_allocObject();
    *(inited + 96) = v4;
    *(v4 + 16) = v3;
    memcpy((v4 + 24), __src, 0x43uLL);
  }

  else
  {
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
  }

  *(inited + 128) = 0x6E496E6565726373;
  *(inited + 136) = 0xEA00000000006F66;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (v7[3] == 1)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    *(inited + 144) = 0u;
    *(inited + 160) = 0u;
  }

  else
  {
    *(inited + 168) = &type metadata for Participant.ScreenInfo;
    v5 = swift_allocObject();
    *(inited + 144) = v5;
    memcpy((v5 + 16), v7, 0xD1uLL);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
  }

  v7[3] = &type metadata for Participant.MediaInfo;
  v7[0] = swift_allocObject();
  outlined init with copy of Participant.MediaInfo(v0, v7[0] + 16);
  return String.init(namedPropertyValues:for:)(inited, v7);
}

void Participant.VideoState.debugDescription.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = v2 >> 8;
  v5 = v2 >> 16;
  v6 = v2 >> 24;
  v7 = HIDWORD(v2);
  v8 = v2 >> 40;
  v9 = HIWORD(v2);
  v38 = v10;
  v11 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd);
  *(swift_initStackObject() + 16) = xmmword_1BC4CD550;
  OUTLINED_FUNCTION_24_7();
  *(v12 + 32) = 0xD000000000000016;
  *(v12 + 40) = v13;
  *(v12 + 48) = v3 & 1;
  OUTLINED_FUNCTION_193_1();
  *(v14 + 72) = v15;
  *(v14 + 80) = v16;
  *(v14 + 88) = v17;
  *(v14 + 96) = BYTE1(v3) & 1;
  *(v14 + 120) = v15;
  strcpy((v14 + 128), "isVideoPaused");
  *(v14 + 142) = -4864;
  *(v14 + 144) = BYTE2(v3) & 1;
  OUTLINED_FUNCTION_193_1();
  *(v19 + 168) = v20;
  *(v19 + 176) = v18 | 2;
  *(v19 + 184) = v21;
  *(v19 + 192) = v6;
  *(v19 + 216) = &type metadata for Participant.VideoDegradedState;
  *(v19 + 224) = 0x4D6F656469567369;
  *(v19 + 232) = 0xEF6465726F727269;
  *(v19 + 240) = BYTE5(v3) & 1;
  OUTLINED_FUNCTION_193_1();
  *(v23 + 264) = v24;
  *(v23 + 272) = v22 | 3;
  *(v23 + 280) = v25;
  *(v23 + 288) = BYTE6(v3) & 1;
  OUTLINED_FUNCTION_193_1();
  *(v27 + 312) = v28;
  *(v27 + 320) = v26 | 7;
  *(v27 + 328) = v29;
  *(v27 + 336) = HIBYTE(v3) & 1;
  OUTLINED_FUNCTION_193_1();
  *(v31 + 360) = v32;
  *(v31 + 368) = v30 | 0xB;
  *(v31 + 376) = v33;
  *(v31 + 384) = v1 & 1;
  *(v31 + 408) = v32;
  *(v31 + 416) = v30 + 19;
  *(v31 + 424) = 0x80000001BC515A00;
  LOBYTE(v30) = v38;
  *(v31 + 456) = v32;
  *(v31 + 432) = v30;
  v37 = &type metadata for Participant.VideoState;
  LOBYTE(v34) = v3;
  BYTE1(v34) = v4;
  BYTE2(v34) = v5;
  BYTE3(v34) = v6;
  BYTE4(v34) = v7;
  BYTE5(v34) = v8;
  BYTE6(v34) = v9;
  HIBYTE(v34) = v11;
  v35 = v1;
  v36 = v38;
  String.init(namedPropertyValues:for:)(v31, &v34);
  OUTLINED_FUNCTION_30_0();
}

ConversationKit::Participant::ScreenState __swiftcall Participant.ScreenState.init(isReceivingFrames:isSuspended:isPaused:isDegraded:)(Swift::Bool isReceivingFrames, Swift::Bool isSuspended, Swift::Bool isPaused, Swift::Bool isDegraded)
{
  if (isDegraded)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  if (isPaused)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (isSuspended)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 0xFFFFFFFE | isReceivingFrames | v5 | v4);
}

uint64_t Participant.ScreenState.debugDescription.getter(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd);
  *(swift_initStackObject() + 16) = xmmword_1BC4BB990;
  OUTLINED_FUNCTION_24_7();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = v3;
  v4 = MEMORY[0x1E69E6370];
  *(v2 + 48) = a1 & 1;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0x6E65707375537369;
  *(v2 + 88) = 0xEB00000000646564;
  *(v2 + 96) = BYTE1(a1) & 1;
  *(v2 + 120) = v4;
  *(v2 + 128) = 0x6465737561507369;
  *(v2 + 136) = 0xE800000000000000;
  *(v2 + 144) = BYTE2(a1) & 1;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x6461726765447369;
  *(v2 + 184) = 0xEA00000000006465;
  *(v2 + 216) = v4;
  *(v2 + 192) = HIBYTE(a1) & 1;
  v6[3] = &type metadata for Participant.ScreenState;
  LOWORD(v6[0]) = a1 & 0x101;
  BYTE2(v6[0]) = BYTE2(a1) & 1;
  BYTE3(v6[0]) = HIBYTE(a1) & 1;
  return String.init(namedPropertyValues:for:)(v2, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Participant.ScreenState()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return Participant.ScreenState.debugDescription.getter(v3 | *v0 | v2 | v1);
}

uint64_t Participant.VideoProviderType.debugDescription.getter(char a1)
{
  result = 0x646972672ELL;
  switch(a1)
  {
    case 1:
      result = 0x7473696C2ELL;
      break;
    case 2:
      result = 0x49506C61636F6C2ELL;
      break;
    case 3:
      result = 0x6E65657263732ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Participant.CopresenceInfo.uniqueIdentifier.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Participant.CopresenceInfo.appName.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Participant.CopresenceInfo.ongoingDescription.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Participant.CopresenceInfo.debugDescription.getter()
{
  OUTLINED_FUNCTION_408();
  v1 = v0;
  _StringGuts.grow(_:)(63);
  MEMORY[0x1BFB20B10](0xD000000000000021, 0x80000001BC515A50);
  MEMORY[0x1BFB20B10](*v1, v1[1]);
  MEMORY[0x1BFB20B10](0x656D614E70706120, 0xEA0000000000203ALL);
  MEMORY[0x1BFB20B10](v1[2], v1[3]);
  MEMORY[0x1BFB20B10](0x697463417369202CLL, 0xEC000000203A6576);
  if (*(v0 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v2, v3);

  MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
  _StringGuts.grow(_:)(49);

  OUTLINED_FUNCTION_24_7();
  v8 = v4;
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v6, v7);

  MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC515AA0);
  MEMORY[0x1BFB20B10](*(v0 + 48), *(v0 + 56));
  OUTLINED_FUNCTION_204_0();

  MEMORY[0x1BFB20B10](0xD000000000000016, v8);

  OUTLINED_FUNCTION_415();
}

uint64_t Participant.CopresenceInfo.init(uniqueIdentifier:appName:isActive:preferredBroadcastingAttributes:ongoingDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

BOOL Participant.AVInfo.init(for:)(void *a1)
{
  v2 = [a1 audioVideoMode];
  v3 = [a1 streamToken];
  if (!v2 && v3)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC4BA940;
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:type:_:)();
  }

  return v2 == 0;
}

unint64_t Participant.AVInfo.debugDescription.getter(char a1)
{
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(36);

  OUTLINED_FUNCTION_24_7();
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v2, v3);

  MEMORY[0x1BFB20B10](0x546F69647561202CLL, 0xEE00203A6E656B6FLL);
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_276_0();

  OUTLINED_FUNCTION_204_0();
  return 0xD000000000000011;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant.VideoDegradedState(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t Participant.VideoInfo.providers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Participant.VideoInfo.state.setter(uint64_t result, __int16 a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

__n128 Participant.VideoInfo.aspectRatio.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

void Participant.VideoInfo.debugDescription.getter()
{
  v1 = v0;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  MEMORY[0x1BFB20B10](0xD000000000000011, 0x80000001BC515B10);
  *&v46[0] = v0[1];
  WORD4(v46[0]) = *(v0 + 8);
  _print_unlocked<A, B>(_:_:)();
  v2 = OUTLINED_FUNCTION_197_2();
  MEMORY[0x1BFB20B10](v2, v3 | 0xEE005B203A730000);
  v4 = 0xE000000000000000;
  v5 = 0;
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v38 = v47[0];
    v39 = v0;
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = v49;
    v11 = specialized Dictionary.Keys.startIndex.getter();
    v12 = 0;
    v13 = v6 + 64;
    v41 = v9;
    v42 = v7;
    v40 = v6 + 72;
    v14 = v6;
    v43 = v6 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v14 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v14 + 36) != v9)
      {
        goto LABEL_30;
      }

      v45 = v9;
      v44 = v10;
      v16 = *(*(v14 + 48) + v11);
      outlined init with copy of IDSLookupManager(*(v14 + 56) + 40 * v11, v47 + 8);
      LOBYTE(v46[0]) = v16;
      outlined init with take of TapInteractionHandler((v47 + 8), v46 + 8);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1BFB20B10](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of CallControlsService?(v46, &_s15ConversationKit11ParticipantV17VideoProviderTypeO3key_AA0cdE0_p5valuetMd);
      v49 = v8;
      v17 = *(v8 + 16);
      v18 = v8;
      if (v17 >= *(v8 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v49;
      }

      *(v18 + 16) = v17 + 1;
      v19 = v18 + 16 * v17;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      v20 = 1 << *(v14 + 32);
      if (v11 >= v20)
      {
        goto LABEL_31;
      }

      v13 = v43;
      v21 = *(v43 + 8 * v15);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_32;
      }

      v8 = v18;
      if (*(v14 + 36) != v45)
      {
        goto LABEL_33;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v23 = v42;
      }

      else
      {
        v24 = v15 << 6;
        v25 = v15 + 1;
        v26 = (v40 + 8 * v15);
        v23 = v42;
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v11, v45, v44 & 1);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v11, v45, v44 & 1);
      }

LABEL_19:
      v10 = 0;
      ++v12;
      v11 = v20;
      v9 = v41;
      if (v12 == v23)
      {
        v4 = *(&v38 + 1);
        v1 = v39;
        v5 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_21:
    *&v47[0] = v8;
    v29 = OUTLINED_FUNCTION_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    BidirectionalCollection<>.joined(separator:)();

    *&v47[0] = v5;
    *(&v47[0] + 1) = v4;

    v30 = OUTLINED_FUNCTION_44_0();
    MEMORY[0x1BFB20B10](v30);

    v31 = v47[0];
    *&v47[0] = 0;
    *(&v47[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v46[0] = v47[0];
    OUTLINED_FUNCTION_224_1();
    *&v47[0] = v1[3];
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v32);

    v33 = OUTLINED_FUNCTION_152_2();
    MEMORY[0x1BFB20B10](v33);
    v34 = *(v1 + 7);
    v47[0] = *(v1 + 5);
    v47[1] = v34;
    v48 = *(v1 + 72);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC515B50);
    if (*(v1 + 73))
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    if (*(v1 + 73))
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x1BFB20B10](v35, v36);

    v47[0] = v31;

    v37 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1BFB20B10](v37);
  }
}

__n128 Participant.ScreenShareAttributes.systemRootLayerTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 Participant.ScreenShareAttributes.systemRootLayerTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

void *Participant.ScreenShareAttributes.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_getObjectType();
  specialized Participant.ScreenShareAttributes.init(_:)(a1, v5);
  return memcpy(a2, v5, 0x60uLL);
}

uint64_t Participant.ScreenShareAttributes.init(displayScale:displayCornerRadius:deviceFamily:deviceHomeButtonType:style:systemRootLayerTransform:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, int8x16_t *a12)
{
  v13 = a12[1];
  if (a12[3].i8[0])
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = vdupq_n_s64(v14);
  v16 = vbslq_s8(v15, xmmword_1BC4C1E40, *a12);
  if (a11)
  {
    a10 = 0;
  }

  if (a8)
  {
    v17 = 0;
  }

  else
  {
    v17 = a7;
  }

  if (a6)
  {
    v18 = 0;
  }

  else
  {
    v18 = a5;
  }

  v19 = *&result;
  if (a2)
  {
    v19 = 1.0;
  }

  v20 = a12[2];
  *a9 = v19;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4 & 1;
  *(a9 + 24) = v16;
  *(a9 + 40) = vbslq_s8(v15, xmmword_1BC4BD490, v13);
  *(a9 + 56) = vbicq_s8(v20, v15);
  *(a9 + 72) = v18;
  *(a9 + 80) = v17;
  *(a9 + 88) = a10;
  return result;
}

uint64_t Participant.ScreenShareAttributes.debugDescription.getter()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC515BE0);
    Double.write<A>(to:)();
    MEMORY[0x1BFB20B10](44, 0xE100000000000000);
  }

  _StringGuts.grow(_:)(99);
  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10]();
  v1 = Double.description.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](44, 0xE100000000000000);
  v2 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x1BFB20B10](v2);

  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10]();
  type metadata accessor for CGAffineTransform(0);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_224_1();
  type metadata accessor for TUScreenShareDeviceFamily(0);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_169_2();
  type metadata accessor for TUScreenShareStyle(0);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_204_0();
  return 0;
}

uint64_t Participant.ScreenInfo.screenState.getter()
{
  if (v0[43])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[42])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[41])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v0[40] | v2 | v1;
}

uint64_t Participant.ScreenInfo.screenState.setter(uint64_t result)
{
  v1[40] = result & 1;
  v1[41] = BYTE1(result) & 1;
  v1[42] = BYTE2(result) & 1;
  v1[43] = BYTE3(result) & 1;
  return result;
}

__n128 Participant.ScreenInfo.aspectRatio.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  *(v1 + 96) = *(a1 + 32);
  return result;
}

__n128 Participant.ScreenInfo.init(provider:screenState:remoteAttributes:orientation:videoRotation:aspectRatio:scaleFactor:)@<Q0>(int a1@<W1>, const void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 208) = 1;
  outlined assign with take of AttributedString?();
  *(a6 + 40) = a1 & 1;
  *(a6 + 41) = BYTE1(a1) & 1;
  *(a6 + 42) = BYTE2(a1) & 1;
  *(a6 + 43) = HIBYTE(a1) & 1;
  memcpy((a6 + 112), a2, 0x61uLL);
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  result = *a5;
  v15 = *(a5 + 16);
  *(a6 + 64) = *a5;
  *(a6 + 80) = v15;
  *(a6 + 96) = *(a5 + 32);
  *(a6 + 104) = a7;
  return result;
}

uint64_t Participant.ScreenInfo.debugDescription.getter()
{
  _StringGuts.grow(_:)(209);
  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10]();
  OUTLINED_FUNCTION_106_5();
  MEMORY[0x1BFB20B10](0x746E6569726F202CLL, 0xEF203A6E6F697461);
  type metadata accessor for CNKDeviceOrientation(0);
  OUTLINED_FUNCTION_231_3();
  MEMORY[0x1BFB20B10](0x46656C616373202CLL, 0xEF203A726F746361);
  Double.description.getter();
  OUTLINED_FUNCTION_274();

  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_56_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_274();

  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10](v0);
  Participant.ScreenInfo.displayCornerRadius.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd);
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_274();

  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_56_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v1);

  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10](v2, v3);
  OUTLINED_FUNCTION_56_17();
  v4 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v4);

  OUTLINED_FUNCTION_169_2();
  OUTLINED_FUNCTION_56_17();
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_274();

  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10](v5, v6);
  OUTLINED_FUNCTION_231_3();
  v7 = OUTLINED_FUNCTION_152_2();
  MEMORY[0x1BFB20B10](v7);
  OUTLINED_FUNCTION_106_5();
  v8 = OUTLINED_FUNCTION_197_2();
  MEMORY[0x1BFB20B10](v8, v9 & 0xFFFF0000FFFFLL | 0xEC000000203A0000);
  OUTLINED_FUNCTION_289();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v10 = OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  v11 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v11);

  OUTLINED_FUNCTION_204_0();
  return 0;
}

uint64_t Participant.ScreenInfo.deviceHomeButtonType.getter()
{
  if (*(v0 + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + 192);
  }
}

uint64_t Participant.ScreenInfo.style.getter()
{
  if (*(v0 + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + 200);
  }
}

Swift::Bool __swiftcall Participant.ScreenInfo.isMaybeTouchIDDevice()()
{
  if (*(v0 + 208))
  {
    v2 = [objc_opt_self() defaultDisplayScale];
    [v2 doubleValue];
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  if (*(v0 + 96))
  {
    v3 = 1.0;
    v4 = 1.0;
  }

  v5 = OUTLINED_FUNCTION_257_0(v3, v4);
  v7 = v6 * v5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v8 = static UIView.screenScale.getter();
  v9 = round(v1 * v8) / v8;
  v10 = static UIView.screenScale.getter();
  return fabs(v9 / (round(v7 * v10) / v10)) < 0.01;
}

uint64_t Participant.CountdownInfo.receivedApprovalDate.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for Participant.CountdownInfo(v0);
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t Participant.CountdownInfo.receivedApprovalDate.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.CountdownInfo(v0);
  return outlined assign with take of AttributedString?();
}

uint64_t Participant.CountdownInfo.receivedApprovalDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.CountdownInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.CountdownInfo.hasCanceledJoinCountdown.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for Participant.CountdownInfo(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Participant.CountdownInfo.hasCanceledJoinCountdown.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.CountdownInfo(v0);
  return OUTLINED_FUNCTION_26_0();
}

void Participant.CountdownInfo.init(requestedApprovalDate:receivedApprovalDate:hasCanceledJoinCountdown:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for Participant.CountdownInfo(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  OUTLINED_FUNCTION_62_0();
  outlined assign with take of AttributedString?();
  outlined assign with take of AttributedString?();
  *(v3 + *(v8 + 24)) = v1;
  OUTLINED_FUNCTION_49();
}

uint64_t Participant.CountdownInfo.debugDescription.getter()
{
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(96);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  specialized >> prefix<A>(_:)(v0, v1, v2, v3, v4, v5, v6, v7, v17, v19, v21, v24, v26, v28, v30, v32, v34, v36);
  MEMORY[0x1BFB20B10]();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000018);
  v8 = type metadata accessor for Participant.CountdownInfo(0);
  specialized >> prefix<A>(_:)(v0 + *(v8 + 20), v9, v10, v11, v12, v13, v14, v15, v18, v20, v22, v25, v27, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_229_2();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_276_0();

  OUTLINED_FUNCTION_204_0();
  return v23;
}

void Participant.CountdownInfo.shouldShowJoinCountdown.getter()
{
  OUTLINED_FUNCTION_408();
  v26 = v2;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  v10 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  OUTLINED_FUNCTION_82_1();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v1);
  if (v19)
  {
    v17 = v1;
LABEL_7:
    outlined destroy of CallControlsService?(v17, &_s10Foundation4DateVSgMd);
    goto LABEL_8;
  }

  v18 = *(v12 + 32);
  v18(v16, v1, v10);
  type metadata accessor for Participant.CountdownInfo(0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v8);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_5();
    v21(v20);
    v17 = v8;
    goto LABEL_7;
  }

  v18(v0, v8, v10);
  Date.timeIntervalSince(_:)();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  (*(v22 + 1080))();
  v23 = *(v12 + 8);
  v23(v0, v10);
  v24 = OUTLINED_FUNCTION_1_5();
  (v23)(v24);
LABEL_8:
  OUTLINED_FUNCTION_415();
}

uint64_t Participant.CaptionInfo.provider.setter()
{
  OUTLINED_FUNCTION_55();
  result = swift_unknownObjectRelease();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Participant.CaptionInfo.captions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Participant.CaptionInfo.debugDescription.getter()
{
  OUTLINED_FUNCTION_55();
  MEMORY[0x1BFB20B10](0x496E6F6974706143, 0xEB000000006F666ELL);
  MEMORY[0x1BFB20B10](0x656469766F727028, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t Participant.Caption.dateCreated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.Caption.dateUpdated.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = *(type metadata accessor for Participant.Caption(v2) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Participant.Caption.dateUpdated.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for Participant.Caption(v2) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Participant.Caption.dateUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.Caption.text.getter()
{
  type metadata accessor for Participant.Caption(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t Participant.Caption.text.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + *(type metadata accessor for Participant.Caption(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Participant.Caption.text.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.Caption.utteranceComplete.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for Participant.Caption(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t Participant.Caption.utteranceComplete.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.Caption.lowConfidenceRanges.getter()
{
  type metadata accessor for Participant.Caption(0);
}

uint64_t Participant.Caption.lowConfidenceRanges.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for Participant.Caption(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Participant.Caption.lowConfidenceRanges.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t static Participant.Caption.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_7();
  v5 = type metadata accessor for Participant.Caption(0);
  OUTLINED_FUNCTION_263_0(v5);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(v3 + v6);
  v8 = *(v3 + v6 + 8);
  v9 = (v2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v3 + v4[8]) != *(v2 + v4[8]))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *(v3 + v12);
  v14 = *(v2 + v12);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(v13, v14);
}

void Participant.Caption.hash(into:)()
{
  MEMORY[0x1BFB22640](*v0);
  v1 = type metadata accessor for Participant.Caption(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_46_22();
  _s10Foundation4UUIDVACSQAAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_76();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_76();
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));

  specialized Array<A>.hash(into:)();
}

Swift::Int Participant.Caption.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  Participant.Caption.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant.Caption()
{
  Hasher.init(_seed:)();
  Participant.Caption.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Participant.Caption.dateCreated.getter@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  a2(0);
  OUTLINED_FUNCTION_7_0();
  v9 = *(v8 + 16);

  return v9(a3, v3 + v6, v7);
}

uint64_t Participant.Caption.dateCreated.setter(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v6 = *(a2(0) + 20);
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 40);

  return v8(v3 + v6, a1);
}

uint64_t Participant.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.capabilities.getter()
{
  OUTLINED_FUNCTION_88_6();
  v2 = (v0 + v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4] == 0;
  v8 = 0x100000000;
  if (v7)
  {
    v8 = 0;
  }

  v7 = v6 == 0;
  v9 = 0x1000000;
  if (v7)
  {
    v9 = 0;
  }

  v7 = v5 == 0;
  v10 = 0x10000;
  if (v7)
  {
    v10 = 0;
  }

  v7 = v4 == 0;
  v11 = 256;
  if (v7)
  {
    v11 = 0;
  }

  return v11 | v3 | v10 | v9 | v8;
}

int8x8_t Participant.capabilities.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  *(v1 + *(type metadata accessor for Participant(v2) + 24)) = v0 & 1;
  v3 = vdupq_n_s64(v0);
  v4 = OUTLINED_FUNCTION_139_5(v3, vshlq_u64(v3, xmmword_1BC4DFB80), xmmword_1BC4DFB90);
  v6 = vand_s8(v4, v5);
  result = vuzp1_s8(v6, v6);
  *(v8 + 1) = result.i32[0];
  return result;
}

uint64_t Participant.capabilities.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

id Participant.remoteIdentifiers.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_89_6();
  v4 = v1 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  *a1 = *v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;

  return outlined copy of Participant.RemoteIdentifiers?(v5);
}

__n128 Participant.remoteIdentifiers.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_89_6();
  v5 = v1 + v4;
  outlined consume of Participant.RemoteIdentifiers?(*v5);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  return result;
}

uint64_t Participant.remoteIdentifiers.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.gradient.getter()
{
  type metadata accessor for Participant(0);
}

uint64_t Participant.gradient.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for Participant(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Participant.gradient.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.nickname.getter()
{
  type metadata accessor for Participant(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t Participant.nickname.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + *(type metadata accessor for Participant(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Participant.nickname.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.effectsEnabled.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for Participant(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t Participant.effectsEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

void Participant.hasReducedQualityVideo.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_209();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_33_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v5 = *(v4 + 48);
    OUTLINED_FUNCTION_37((v1 + *(v4 + 64)));
    memcpy(v12, (v1 + v5), sizeof(v12));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v6 + 8))(v1);
    memcpy(v11, &v12[16], 0x4BuLL);
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(v12);
    if (v11[0])
    {
      v7 = BYTE1(v11[1]);
      outlined destroy of CallControlsService?(v11, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v8);
    OUTLINED_FUNCTION_208_3(v12);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v9 + 8))(v0);
    memcpy(v11, &v12[16], 0x4BuLL);
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(v12);
    if (v11[0])
    {
      v10 = BYTE2(v11[1]);
      outlined destroy of CallControlsService?(v11, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  if ((Participant.isVideoDegradedUI.getter() & 1) == 0)
  {
    Participant.isVideoReconnecting.getter();
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

uint64_t Participant.isVideoDegradedUI.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5)
    {
      outlined destroy of CallControlsService?(&v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_201_1();
}

uint64_t Participant.isVideoReconnecting.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5)
    {
      outlined destroy of CallControlsService?(&v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_201_1();
}

uint64_t Participant.associatedParticipants.getter()
{
  type metadata accessor for Participant(0);
}

uint64_t Participant.associatedParticipants.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for Participant(v2) + 44);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Participant.associatedParticipants.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

void *Participant.unverifiedAssociatedHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 48));
  v2 = v1;
  return v1;
}

void Participant.unverifiedAssociatedHandle.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for Participant(v2) + 48);

  *(v1 + v3) = v0;
}

uint64_t Participant.unverifiedAssociatedHandle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.shouldHideInactiveTile.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for Participant(v2);
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t Participant.shouldHideInactiveTile.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.debugDescription.getter()
{
  _StringGuts.grow(_:)(71);
  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10](0xD000000000000012);
  type metadata accessor for Participant.State(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](0x61636F4C7369202CLL, 0xEA00000000003D6CLL);
  v1 = (v0 + *(type metadata accessor for Participant(0) + 28));
  if (*v1)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v2, v3);

  OUTLINED_FUNCTION_114_1();
  MEMORY[0x1BFB20B10]();
  v4 = *v1;
  if (*v1)
  {

    v5 = v4;
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1BFB20B10](v6, v8);

  MEMORY[0x1BFB20B10](0x746E656469202C29, 0xEE003D7265696669);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_58();
  _s10Foundation4UUIDVACSQAAWlTm_0(v9, v10);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v11);

  OUTLINED_FUNCTION_204_0();
  return 0;
}

uint64_t Participant.isActiveWithVideo.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5[0])
    {
      outlined destroy of CallControlsService?(v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      return 1;
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return 0;
}

uint64_t Participant.audioToken.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v0);
    v2 = v6[1];
    outlined destroy of Participant.MediaInfo(v6);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    return 0;
  }

  return v2;
}

uint64_t Participant.videoState.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    return 2;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  OUTLINED_FUNCTION_17_59(v2);
  OUTLINED_FUNCTION_68_7();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  OUTLINED_FUNCTION_110_5();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of Participant.MediaInfo(&v7);
  if (!v6[0])
  {
    return 2;
  }

  v4 = v6[1];
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v4;
}

uint64_t Participant.screenState.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_107_3();
    goto LABEL_14;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  OUTLINED_FUNCTION_17_59(v2);
  OUTLINED_FUNCTION_164_0(v13);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of Participant.MediaInfo(v13);
  if (v14[3] == 1)
  {
LABEL_14:
    outlined destroy of CallControlsService?(v14, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    return 2;
  }

  memcpy(v13, v14, 0xD1uLL);
  v4 = v13[40];
  v5 = v13[41];
  v6 = v13[42];
  v7 = v13[43];
  outlined destroy of Participant.ScreenInfo(v13);
  if (v5)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v4;
  if (v6)
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  return v9 | v10 | v11;
}

uint64_t Participant.captionsProvider.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_164_0(v7);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    v4 = v7[39];
    v5 = OUTLINED_FUNCTION_15_14();
    outlined copy of Participant.CaptionInfo?(v5);
    outlined destroy of Participant.MediaInfo(v7);
    if (v4)
    {
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_15_14();
}

uint64_t Participant.isReceivingScreenFrames.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_107_3();
    goto LABEL_5;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  OUTLINED_FUNCTION_17_59(v2);
  OUTLINED_FUNCTION_164_0(v6);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of Participant.MediaInfo(v6);
  if (v7[3] == 1)
  {
LABEL_5:
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    return 0;
  }

  memcpy(v6, v7, 0xD1uLL);
  v4 = v6[40];
  outlined destroy of Participant.ScreenInfo(v6);
  return v4;
}

uint64_t Participant.isNotActiveAndNotLocal.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_89_6();
  if (!*(v1 + v3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v4 = 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_192_1();
      OUTLINED_FUNCTION_37((v0 + v7));
      outlined destroy of Participant.MediaInfo(v0 + 1);
      v4 = 0;
      goto LABEL_3;
    case 6u:
      return v4;
    default:
LABEL_3:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v5 + 8))(v0);
      break;
  }

  return v4;
}

void Participant.isBuzzable.getter()
{
  OUTLINED_FUNCTION_50_2();
  v5 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_139();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v8 + 8))(v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v9 = *(type metadata accessor for Participant(0) + 28);
    if (*(v0 + v9))
    {
      OUTLINED_FUNCTION_0_189();
      OUTLINED_FUNCTION_209();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_33_0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v11 = *(v10 + 48);
        OUTLINED_FUNCTION_37((v3 + *(v10 + 64)));
        memcpy(v20, (v3 + v11), sizeof(v20));
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v12 + 8))(v3);
        v13 = v20[0];
        outlined destroy of Participant.MediaInfo(v20);
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_132();
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      }
    }

    if (Participant.isNotActiveAndNotLocal.getter())
    {
      OUTLINED_FUNCTION_0_189();
      OUTLINED_FUNCTION_15_14();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_62_0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
        case 3u:
        case 5u:
          goto LABEL_11;
        case 4u:
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          OUTLINED_FUNCTION_28_45(v19);
          outlined destroy of Participant.MediaInfo(v1 + v2);
LABEL_11:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v14 + 8))(v1);
          goto LABEL_12;
        case 6u:
LABEL_12:
          v15 = *(v0 + v9);
          if (v15)
          {
            v16 = [v15 value];
            if (!v16)
            {
              v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v16 = MEMORY[0x1BFB209B0](v17);
            }

            [v16 destinationIdIsTemporary];
          }

          break;
        default:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v18 + 8))(v1);
          break;
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_49();
}

uint64_t Participant.broadcastStartDate.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v3 = *(v2 + 48);
    OUTLINED_FUNCTION_21_53(v2);
    v4 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    v5 = OUTLINED_FUNCTION_46();
    v6(v5);
    outlined destroy of Participant.MediaInfo(v0 + v3);
    v7 = OUTLINED_FUNCTION_21_3();
    v10 = v4;
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Participant.countdownInfo.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for Participant(v0);
  OUTLINED_FUNCTION_5_126();
  return _s15ConversationKit11ParticipantV5StateOWOcTm_0();
}

uint64_t Participant.countdownInfo.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return outlined assign with take of Participant.Caption();
}

uint64_t Participant.countdownInfo.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.isAuthorizedToChangeGroupMembership.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for Participant(v2);
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t Participant.isAuthorizedToChangeGroupMembership.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t Participant.shouldShowJoinCountdown.getter()
{
  OUTLINED_FUNCTION_89_6();
  if (*(v0 + v1))
  {
    return 0;
  }

  Participant.CountdownInfo.shouldShowJoinCountdown.getter();
  return v3 & 1;
}

BOOL Participant.isKickingAvailableWithLeeway.getter()
{
  v1 = v0;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_209();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v5 = *(v4 + 48);
    OUTLINED_FUNCTION_21_53(v4);
    v6 = OUTLINED_FUNCTION_187_3();
    v7(v6);
    outlined destroy of Participant.MediaInfo(v0 + v5);
    Date.timeIntervalSinceNow.getter();
    if (v8 <= 0.0)
    {
      Date.timeIntervalSinceNow.getter();
      v17 = -v16;
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      v19 = (*(v18 + 720))();
      v20 = OUTLINED_FUNCTION_1_5();
      v21(v20);
      v14 = v19 + 0.5 >= v17;
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_251_2();
      if (v23)
      {
        v13 = v22;
LABEL_12:
        type metadata accessor for Participant(0);
        if (*(v1 + *(v13 + 28)))
        {
          return v14;
        }
      }
    }

    else
    {
      v9 = OUTLINED_FUNCTION_1_5();
      v10(v9);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_251_2();
      if (v12 == 1)
      {
        v13 = v11;
        v14 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return 0;
}

void Participant.isMessageCapable.getter()
{
  OUTLINED_FUNCTION_50_2();
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  v3 = *(type metadata accessor for Participant(0) + 28);
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = [v4 value];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x1BFB209B0](v6);
  }

  v7 = [v5 destinationIdIsTemporary];

  if ((v7 & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_189();
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_44_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v12 + 8))(v0);
        break;
      case 4u:
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v14 = *(v13 + 48);
        OUTLINED_FUNCTION_37((v0 + *(v13 + 64)));
        outlined destroy of Participant.MediaInfo(v0 + v14);
        goto LABEL_6;
      case 6u:
        goto LABEL_7;
      default:
LABEL_6:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v8 + 8))(v0);
LABEL_7:
        v9 = *(v1 + v3);
        if (v9)
        {
          v10 = [v9 value];
          if (!v10)
          {
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v10 = MEMORY[0x1BFB209B0](v11);
          }

          [v10 destinationIdIsPseudonym];
        }

        break;
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t Participant.cache.getter()
{
  type metadata accessor for Participant(0);
}

void Participant.asFullyWaited()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v23;
  a20 = v24;
  v144 = v20;
  v136 = v25;
  v137 = type metadata accessor for Participant.CountdownInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40();
  v135 = v27;
  v28 = OUTLINED_FUNCTION_4_24();
  v154 = type metadata accessor for Participant(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_40();
  v143 = v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  v142 = v32;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v139 = v34;
  v140 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_40();
  v138 = v35;
  v36 = OUTLINED_FUNCTION_4_24();
  v150 = type metadata accessor for Participant.State(v36);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_246_2(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  v152 = v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_115_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  v148 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  v141 = v51;
  OUTLINED_FUNCTION_4_24();
  v52 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_8();
  v58 = v57 - v56;
  v146 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_57();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v63 = OUTLINED_FUNCTION_22(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_103_4();
  v66 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_149();
  static Calendar.current.getter();
  (*(v54 + 104))(v58, *MEMORY[0x1E6969A98], v52);
  Date.init()();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v71 = OUTLINED_FUNCTION_258_0();
  v132 = v72;
  (v72)(v71);
  (*(v54 + 8))(v58, v52);
  (*(v60 + 8))(v20, v146);
  OUTLINED_FUNCTION_22_5(v22);
  if (v73)
  {
    Date.init()();
    OUTLINED_FUNCTION_2_83(v22);
    if (!v73)
    {
      outlined destroy of CallControlsService?(v22, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v68 + 32))(v21, v22, v66);
  }

  v133 = v21;
  OUTLINED_FUNCTION_172_1();
  v74();
  swift_storeEnumTagMultiPayload();
  v75 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v150);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v140);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v131);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_12_5(v148);
  v84 = v130;
  if (v73)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12_5(v148);
    v85 = v152;
    if (!v73)
    {
      outlined destroy of CallControlsService?(v148, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v85 = v152;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v86 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115(v86, v87, v140);
  v134 = v66;
  if (v73)
  {
    (*(v139 + 16))(v138, v20 + v154[5], v140);
    v88 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v88, v89, v140);
    if (!v73)
    {
      outlined destroy of CallControlsService?(v85, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v139 + 32))(v138, v85, v140);
  }

  v90 = (v20 + v154[6]);
  v91 = *v90;
  v92 = v90[1];
  v93 = v90[2];
  v94 = v90[3];
  v95 = v144 + v154[7];
  v151 = *(v95 + 8);
  v153 = *v95;
  v145 = *(v95 + 16);
  v147 = *(v95 + 24);
  v149 = *(v95 + 32);
  v96 = *(v144 + v154[8]);
  v97 = *(v144 + v154[9] + 8);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v98 = OUTLINED_FUNCTION_71_12();
  OUTLINED_FUNCTION_115(v98, v99, v131);
  v129 = v97;
  v128 = v96;
  if (v73)
  {
    OUTLINED_FUNCTION_5_126();
    v84 = v131;
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v137);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v130, 1, v131);
    outlined copy of Participant.RemoteIdentifiers?(v153);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v130, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v130, v142);
    outlined copy of Participant.RemoteIdentifiers?(v153);
  }

  v104 = *(v144 + v154[16]);
  OUTLINED_FUNCTION_86_6(v154[7]);
  v105 = (v143 + v154[9]);
  *(v143 + v154[10]) = 0;
  *(v143 + v154[11]) = MEMORY[0x1E69E7CD0];
  *(v143 + v154[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v139 + 32))(v143 + v154[5], v138, v140);
  OUTLINED_FUNCTION_252_1();
  *v106 = v91;
  v106[1] = v92;
  v106[2] = v93;
  v106[3] = v94;
  OUTLINED_FUNCTION_127_1(v106);

  v107 = OUTLINED_FUNCTION_46();
  outlined consume of Participant.RemoteIdentifiers?(v107);
  *v84 = v153;
  v84[1] = v151;
  v84[2] = v145;
  v84[3] = v147;
  OUTLINED_FUNCTION_243_1(v149);
  *(v143 + v108) = v128;
  OUTLINED_FUNCTION_180_3(v129);
  OUTLINED_FUNCTION_181_2(v109);
  v110 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v110, v111, v137);
  if (v73)
  {
    OUTLINED_FUNCTION_10_0();
    v125 = v134;
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v134);
    v115 = OUTLINED_FUNCTION_29_35(&a10);
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v134);
    v118 = OUTLINED_FUNCTION_36_31();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v134);
    v105 = *(v137 + 20);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v134);
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    *(v135 + *(v137 + 24)) = 0;
    OUTLINED_FUNCTION_2_83(v142);
    v124 = v136;
    if (!v73)
    {
      outlined destroy of CallControlsService?(v142, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v124 = v136;
    v125 = v134;
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v143 + v154[16]) = v104;
  OUTLINED_FUNCTION_3_138();
  OUTLINED_FUNCTION_76();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v127 = (*(v126 + 608))();
  outlined destroy of CallControlsService?(v156, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v155, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v141, &_s15ConversationKit11ParticipantV5StateOSgMd);
  v132(v133, v125);
  if (v127)
  {
    OUTLINED_FUNCTION_69_9();

    *(v105 + v124) = v127;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asRung()()
{
  OUTLINED_FUNCTION_29();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v9 = OUTLINED_FUNCTION_4_24();
  v89 = type metadata accessor for Participant.CountdownInfo(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v87 = v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62_14(v13);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v17 = OUTLINED_FUNCTION_61_11(v16);
  type metadata accessor for Participant(v17);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_133_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v85 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_17();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_83_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_38_30();
  v32 = type metadata accessor for Participant.State(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_243();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v35 + 8))(v3);
    OUTLINED_FUNCTION_27_45();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    Date.init()();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    v36 = OUTLINED_FUNCTION_54_15();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
    v39 = OUTLINED_FUNCTION_33_35();
    OUTLINED_FUNCTION_272_0(v39, v40, v41);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v90);
    OUTLINED_FUNCTION_316();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v2);
    if (v45)
    {
      OUTLINED_FUNCTION_0_189();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_12_5(v2);
      if (!v45)
      {
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantV5StateOSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_148();
      _s15ConversationKit11ParticipantVWObTm_6();
    }

    OUTLINED_FUNCTION_207_0();
    OUTLINED_FUNCTION_16_62(v4);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_52_16();
      v47(v46);
      OUTLINED_FUNCTION_16_62(v4);
      v50 = v85;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v4, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      v48 = OUTLINED_FUNCTION_81_5();
      v49(v48);
      v50 = v85;
    }

    OUTLINED_FUNCTION_30_31();
    OUTLINED_FUNCTION_158_1();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v50);
    if (v45)
    {
      OUTLINED_FUNCTION_5_126();
      OUTLINED_FUNCTION_212_3();
      v51 = OUTLINED_FUNCTION_54_15();
      OUTLINED_FUNCTION_79_12(v51, v52, v53);

      if (v3 != 1)
      {
        outlined destroy of CallControlsService?(v50, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
      }
    }

    else
    {
      outlined init with take of Participant.CountdownInfo?(v50, v92);
      OUTLINED_FUNCTION_129_2();
    }

    OUTLINED_FUNCTION_40_21();
    *(v0 + v1[11]) = MEMORY[0x1E69E7CD0];
    *(v0 + v1[12]) = 0;
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v54 = OUTLINED_FUNCTION_100_4();
    v55(v54);
    OUTLINED_FUNCTION_39_23();
    OUTLINED_FUNCTION_130_4();
    *v90 = v86;
    v90[1] = v85;
    v90[2] = v84;
    v90[3] = v83;
    v90[4] = v82;
    *(v0 + v1[8]) = v81;
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_180_3(v80);
    OUTLINED_FUNCTION_137_1(v56);
    v57 = OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_32_24(v57, v58);
    if (v45)
    {
      v59 = type metadata accessor for Date();
      v60 = OUTLINED_FUNCTION_34_32();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
      v63 = OUTLINED_FUNCTION_36_31();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
      v66 = OUTLINED_FUNCTION_33_35();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v59);
      OUTLINED_FUNCTION_160_2();
      OUTLINED_FUNCTION_162_2();
      *(v87 + *(v89 + 24)) = 0;
      OUTLINED_FUNCTION_12_79();
      v72 = v88;
      v73 = v5;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v92, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_153();
      OUTLINED_FUNCTION_209_1();
      v72 = v88;
      v73 = v5;
    }

    OUTLINED_FUNCTION_1_153();
    OUTLINED_FUNCTION_236_3();
    *(v0 + v1[16]) = v91;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v74 = static Defaults.shared;
    OUTLINED_FUNCTION_0_1();
    v76 = (*(v75 + 608))();
    outlined destroy of CallControlsService?(v73, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    outlined destroy of CallControlsService?(v79, &_s10Foundation4UUIDVSgMd);
    v77 = OUTLINED_FUNCTION_224_0();
    outlined destroy of CallControlsService?(v77, v78);
    if (v76)
    {
      OUTLINED_FUNCTION_161_2();

      *&v73[v72] = v76;
    }

    OUTLINED_FUNCTION_232_2();

    *(v72 + v76) = v74;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_30_0();
}

void Participant.asJoining()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v26;
  a20 = v27;
  v149 = v20;
  v137 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  v33 = OUTLINED_FUNCTION_16(v32);
  v138 = type metadata accessor for Participant.CountdownInfo(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  v136 = v35;
  v36 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v36);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_188_2(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_47_15(v41);
  v42 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v134 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40();
  v145 = v45;
  v46 = OUTLINED_FUNCTION_4_24();
  v47 = type metadata accessor for Participant.State(v46);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  v143 = v51;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_103_4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v54 = OUTLINED_FUNCTION_22(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_83_1();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v126 - v59;
  OUTLINED_FUNCTION_38_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v47);
  v146 = v23;
  v64 = OUTLINED_FUNCTION_33_35();
  v150 = v42;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v42);
  v147 = v24;
  v67 = OUTLINED_FUNCTION_34_32();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v39);
  v135 = v60;
  OUTLINED_FUNCTION_15_14();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v21);
  if (v70)
  {
    OUTLINED_FUNCTION_0_189();
    v71 = v149;
    OUTLINED_FUNCTION_139();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v21);
    if (!v70)
    {
      outlined destroy of CallControlsService?(v21, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    OUTLINED_FUNCTION_211();
    _s15ConversationKit11ParticipantVWObTm_6();
    v71 = v149;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v72 = OUTLINED_FUNCTION_71_12();
  OUTLINED_FUNCTION_115(v72, v73, v150);
  v74 = v39;
  if (v70)
  {
    v75 = OUTLINED_FUNCTION_77_12();
    v76(v75);
    OUTLINED_FUNCTION_3_62(v25);
    v79 = v143;
    if (!v70)
    {
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v77 = OUTLINED_FUNCTION_183_2();
    v78(v77, v25, v150);
    v79 = v143;
  }

  OUTLINED_FUNCTION_119_4();
  v81 = *v80;
  v82 = v80[1];
  v131 = v80[2];
  v132 = v81;
  v83 = v80[3];
  v129 = v80[4];
  v130 = v83;
  v85 = *(v71 + v84);
  v86 = *(v71 + v84 + 8);
  v87 = *(v71 + v84 + 16);
  v142 = *(v71 + v84 + 24);
  v143 = v87;
  OUTLINED_FUNCTION_80_6();
  v140 = v88;
  v141 = v89;
  OUTLINED_FUNCTION_131_2();
  v133 = v90;
  v139 = v91;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v79);
  v128 = v86;
  v127 = v85;
  if (v70)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v138);
    v95 = OUTLINED_FUNCTION_180();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, v96, v74);
    OUTLINED_FUNCTION_167_0(v85);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v79, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v79, v148);
    OUTLINED_FUNCTION_167_0(v85);
  }

  OUTLINED_FUNCTION_128_3();
  v126[5] = v98;
  v100 = *(v71 + v99);
  v101 = v144;
  v102 = (v144 + v22[7]);
  OUTLINED_FUNCTION_202_0();
  v102[4] = 0;
  v103 = (v101 + v22[9]);
  *(v101 + v22[10]) = 0;
  *(v101 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v101 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  v104 = OUTLINED_FUNCTION_265_1(v22[5]);
  v105(v104);
  v106 = (v101 + v22[6]);
  v107 = v131;
  *v106 = v132;
  v106[1] = v82;
  v106[2] = v107;
  v108 = v129;
  v106[3] = v130;
  v106[4] = v108;
  v109 = v102[2];
  v150 = v100;

  OUTLINED_FUNCTION_225_1();
  v110 = v128;
  *v102 = v127;
  v102[1] = v110;
  v111 = v142;
  v102[2] = v143;
  v102[3] = v111;
  v112 = v140;
  v102[4] = v141;
  *(v101 + v22[8]) = v112;
  v113 = v139;
  *v103 = v133;
  v103[1] = v113;
  OUTLINED_FUNCTION_185_3(v22[15]);
  v114 = v148;
  OUTLINED_FUNCTION_12_79();
  if (v70)
  {
    v115 = type metadata accessor for Date();
    v116 = OUTLINED_FUNCTION_29_35(&a15);
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
    v119 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v115);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    if (!v70)
    {
      outlined destroy of CallControlsService?(v114, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  v122 = v144;
  OUTLINED_FUNCTION_186_1();
  *(v122 + v22[16]) = v150;
  OUTLINED_FUNCTION_3_138();
  v123 = v137;
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v125 = (*(v124 + 608))();
  outlined destroy of CallControlsService?(v147, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v146, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v135, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v125)
  {
    OUTLINED_FUNCTION_69_9();

    *&v109[v123] = v125;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asLeft()()
{
  OUTLINED_FUNCTION_29();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v9 = OUTLINED_FUNCTION_4_24();
  v89 = type metadata accessor for Participant.CountdownInfo(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v87 = v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62_14(v13);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v17 = OUTLINED_FUNCTION_61_11(v16);
  type metadata accessor for Participant(v17);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_133_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v85 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_17();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_83_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_38_30();
  v32 = type metadata accessor for Participant.State(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_243();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v35 + 8))(v3);
    OUTLINED_FUNCTION_27_45();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    Date.init()();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    v36 = OUTLINED_FUNCTION_54_15();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
    v39 = OUTLINED_FUNCTION_33_35();
    OUTLINED_FUNCTION_272_0(v39, v40, v41);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v90);
    OUTLINED_FUNCTION_316();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v2);
    if (v45)
    {
      OUTLINED_FUNCTION_0_189();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_12_5(v2);
      if (!v45)
      {
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantV5StateOSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_148();
      _s15ConversationKit11ParticipantVWObTm_6();
    }

    OUTLINED_FUNCTION_207_0();
    OUTLINED_FUNCTION_16_62(v4);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_52_16();
      v47(v46);
      OUTLINED_FUNCTION_16_62(v4);
      v50 = v85;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v4, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      v48 = OUTLINED_FUNCTION_81_5();
      v49(v48);
      v50 = v85;
    }

    OUTLINED_FUNCTION_30_31();
    OUTLINED_FUNCTION_158_1();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_12_5(v50);
    if (v45)
    {
      OUTLINED_FUNCTION_5_126();
      OUTLINED_FUNCTION_212_3();
      v51 = OUTLINED_FUNCTION_54_15();
      OUTLINED_FUNCTION_79_12(v51, v52, v53);

      if (v3 != 1)
      {
        outlined destroy of CallControlsService?(v50, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
      }
    }

    else
    {
      outlined init with take of Participant.CountdownInfo?(v50, v92);
      OUTLINED_FUNCTION_129_2();
    }

    OUTLINED_FUNCTION_40_21();
    *(v0 + v1[11]) = MEMORY[0x1E69E7CD0];
    *(v0 + v1[12]) = 0;
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v54 = OUTLINED_FUNCTION_100_4();
    v55(v54);
    OUTLINED_FUNCTION_39_23();
    OUTLINED_FUNCTION_130_4();
    *v90 = v86;
    v90[1] = v85;
    v90[2] = v84;
    v90[3] = v83;
    v90[4] = v82;
    *(v0 + v1[8]) = v81;
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_180_3(v80);
    OUTLINED_FUNCTION_137_1(v56);
    v57 = OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_32_24(v57, v58);
    if (v45)
    {
      v59 = type metadata accessor for Date();
      v60 = OUTLINED_FUNCTION_34_32();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
      v63 = OUTLINED_FUNCTION_36_31();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
      v66 = OUTLINED_FUNCTION_33_35();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v59);
      OUTLINED_FUNCTION_160_2();
      OUTLINED_FUNCTION_162_2();
      *(v87 + *(v89 + 24)) = 0;
      OUTLINED_FUNCTION_12_79();
      v72 = v88;
      v73 = v5;
      if (!v45)
      {
        outlined destroy of CallControlsService?(v92, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_153();
      OUTLINED_FUNCTION_209_1();
      v72 = v88;
      v73 = v5;
    }

    OUTLINED_FUNCTION_1_153();
    OUTLINED_FUNCTION_236_3();
    *(v0 + v1[16]) = v91;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v74 = static Defaults.shared;
    OUTLINED_FUNCTION_0_1();
    v76 = (*(v75 + 608))();
    outlined destroy of CallControlsService?(v73, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    outlined destroy of CallControlsService?(v79, &_s10Foundation4UUIDVSgMd);
    v77 = OUTLINED_FUNCTION_224_0();
    outlined destroy of CallControlsService?(v77, v78);
    if (v76)
    {
      OUTLINED_FUNCTION_161_2();

      *&v73[v72] = v76;
    }

    OUTLINED_FUNCTION_232_2();

    *(v72 + v76) = v74;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_30_0();
}

void Participant.asPendingAuthorization()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v24;
  a20 = v25;
  v115 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  v31 = OUTLINED_FUNCTION_16(v30);
  v117 = type metadata accessor for Participant.CountdownInfo(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_40();
  v33 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v33);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_188_2(v35);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_1();
  v127 = v37;
  OUTLINED_FUNCTION_4_24();
  v112 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v123 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40();
  v126 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  v121 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_246_2(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v119 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_115_4(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_32();
  v55 = OUTLINED_FUNCTION_61_11(v54);
  v56 = type metadata accessor for Participant.State(v55);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_38_30();
  v59 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v61 = v60;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_8();
  v65 = v64 - v63;
  OUTLINED_FUNCTION_0_189();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_45_1();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v61 + 32))(v65, v21, v59);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    Date.init()();
  }

  OUTLINED_FUNCTION_252_1();
  v110 = v66[1];
  v111 = *v66;
  v109 = v66[2];
  v113 = v61;
  v116 = v59;
  (*(v61 + 16))(v128, v65, v59);
  OUTLINED_FUNCTION_45_1();
  swift_storeEnumTagMultiPayload();
  v67 = OUTLINED_FUNCTION_54_15();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v56);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v112);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v114);
  OUTLINED_FUNCTION_211();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v23);
  if (v76)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v23);
    v77 = v20;
    v78 = v121;
    if (!v76)
    {
      outlined destroy of CallControlsService?(v23, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v77 = v20;
    v78 = v121;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_22_5(v119);
  if (v76)
  {
    v79 = v123;
    (*(v123 + 16))(v126, v77 + v22[5], v112);
    OUTLINED_FUNCTION_22_5(v119);
    if (!v76)
    {
      outlined destroy of CallControlsService?(v119, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v79 = v123;
    (*(v123 + 32))(v126, v119, v112);
  }

  v80 = v77 + v22[7];
  v81 = *v80;
  v82 = *(v80 + 8);
  v122 = *(v80 + 24);
  v124 = *(v80 + 16);
  v120 = *(v80 + 32);
  v83 = *(v77 + v22[8]);
  v118 = *(v77 + v22[9] + 8);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v84 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v84, v85, v114);
  if (v76)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v117);
    v89 = OUTLINED_FUNCTION_29_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, v90, v114);
    OUTLINED_FUNCTION_167_0(v81);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v78, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v78, v127);
    OUTLINED_FUNCTION_167_0(v81);
  }

  OUTLINED_FUNCTION_86_6(v22[7]);
  *(v125 + v22[10]) = 0;
  *(v125 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v125 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v79 + 32))(v125 + v22[5], v126, v112);
  OUTLINED_FUNCTION_252_1();
  *v92 = v111;
  *(v92 + 1) = v110;
  *(v92 + 2) = v109;
  *(v92 + 3) = 1;
  OUTLINED_FUNCTION_250_1();

  v93 = OUTLINED_FUNCTION_139();
  outlined consume of Participant.RemoteIdentifiers?(v93);
  OUTLINED_FUNCTION_168_1();
  *v82 = v94;
  v82[1] = v82;
  v82[2] = v124;
  v82[3] = v122;
  OUTLINED_FUNCTION_243_1(v120);
  *(v125 + v95) = v83;
  OUTLINED_FUNCTION_180_3(v118);
  OUTLINED_FUNCTION_181_2(v96);
  OUTLINED_FUNCTION_12_79();
  if (v76)
  {
    v97 = OUTLINED_FUNCTION_29_35(&a12);
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v116);
    v100 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v116);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    v104 = v65;
    v103 = v113;
    if (!v76)
    {
      outlined destroy of CallControlsService?(v127, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v104 = v65;
    v103 = v113;
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v125 + v22[16]) = v126;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v106 = (*(v105 + 608))();
  outlined destroy of CallControlsService?(v130, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v129, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v128, &_s15ConversationKit11ParticipantV5StateOSgMd);
  v108 = *(v103 + 8);
  v107 = (v103 + 8);
  v108(v104, v116);
  if (v106)
  {
    OUTLINED_FUNCTION_69_9();

    *&v107[v115] = v106;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asAuthorizedToChangeGroupMembership(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v26;
  a20 = v27;
  v130 = v20;
  v117 = v28;
  v118 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32();
  v34 = OUTLINED_FUNCTION_16(v33);
  v119 = type metadata accessor for Participant.CountdownInfo(v34);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40();
  v36 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v36);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47_15(v43);
  v131 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v115 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_40();
  v127 = v46;
  v47 = OUTLINED_FUNCTION_4_24();
  v48 = type metadata accessor for Participant.State(v47);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v51 = OUTLINED_FUNCTION_22(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4();
  v125 = v52;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_103_4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v55 = OUTLINED_FUNCTION_22(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_17();
  v58 = v56 - v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_83_1();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v61 = OUTLINED_FUNCTION_22(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v48);
  v128 = v23;
  v66 = OUTLINED_FUNCTION_33_35();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v131);
  v69 = OUTLINED_FUNCTION_34_32();
  v70 = v41;
  __swift_storeEnumTagSinglePayload(v69, v71, v72, v41);
  v116 = v21;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v25);
  if (v73)
  {
    OUTLINED_FUNCTION_0_189();
    v74 = v130;
    OUTLINED_FUNCTION_139();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v25);
    if (!v73)
    {
      outlined destroy of CallControlsService?(v25, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v74 = v130;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v58, 1, v131);
  v75 = v70;
  if (v73)
  {
    v76 = OUTLINED_FUNCTION_77_12();
    v77(v76);
    OUTLINED_FUNCTION_3_62(v58);
    v80 = v129;
    v81 = v125;
    if (!v73)
    {
      outlined destroy of CallControlsService?(v58, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v78 = OUTLINED_FUNCTION_183_2();
    v79(v78, v58, v131);
    v80 = v129;
    v81 = v125;
  }

  OUTLINED_FUNCTION_119_4();
  v83 = *v82;
  v84 = v82[1];
  v112 = v82[3];
  v113 = v82[2];
  v86 = *(v74 + v85);
  v124 = *(v74 + v85 + 16);
  v126 = *(v74 + v85 + 8);
  v122 = *(v74 + v85 + 32);
  v123 = *(v74 + v85 + 24);
  OUTLINED_FUNCTION_131_2();
  v114 = v87;
  v120 = v88;
  v121 = v89;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v81);
  if (v73)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v119);
    v93 = OUTLINED_FUNCTION_180();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, v94, v75);
    outlined copy of Participant.RemoteIdentifiers?(v86);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v81, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v81, v80);
    outlined copy of Participant.RemoteIdentifiers?(v86);
  }

  v96 = *(v74 + v22[16]);
  v97 = v40 + v22[7];
  *v97 = 0u;
  *(v97 + 16) = 0u;
  *(v97 + 32) = 0;
  v98 = (v40 + v22[9]);
  *(v40 + v22[10]) = 0;
  *(v40 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v40 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v115 + 32))(v40 + v22[5], v127, v131);
  v99 = (v40 + v22[6]);
  *v99 = v83;
  v99[1] = v84;
  v99[2] = v113;
  v99[3] = v112;
  OUTLINED_FUNCTION_127_1(v99);
  v100 = *(v97 + 16);

  OUTLINED_FUNCTION_225_1();
  OUTLINED_FUNCTION_196_3();
  *v97 = v101;
  *(v97 + 8) = v126;
  *(v97 + 16) = v124;
  *(v97 + 24) = v123;
  OUTLINED_FUNCTION_243_1(v122);
  *(v40 + v102) = v121;
  *v98 = v114;
  v98[1] = v120;
  *(v40 + v22[15]) = v117 & 1;
  *(v40 + v22[13]) = 0;
  OUTLINED_FUNCTION_12_79();
  if (v73)
  {
    v103 = type metadata accessor for Date();
    v104 = OUTLINED_FUNCTION_29_35(&a15);
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
    v107 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v103);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    if (!v73)
    {
      outlined destroy of CallControlsService?(v129, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  _s15ConversationKit11ParticipantVWObTm_6();
  *(v40 + v22[16]) = v96;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v111 = (*(v110 + 608))();
  outlined destroy of CallControlsService?(v24, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v128, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v116, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v111)
  {
    OUTLINED_FUNCTION_69_9();

    *&v100[v118] = v111;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asRequestedApproval()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v23;
  a20 = v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  v127 = v26;
  OUTLINED_FUNCTION_4_24();
  v118 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40();
  v28 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_40();
  v30 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v30);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  v125 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v117 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  v123 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_246_2(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_115_4(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_32();
  v126 = v47;
  v48 = OUTLINED_FUNCTION_143_4();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v48);
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v52);
  v53 = OUTLINED_FUNCTION_38_30();
  v128 = type metadata accessor for Participant.CountdownInfo(v53);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_126();
  OUTLINED_FUNCTION_211_2(v56);
  OUTLINED_FUNCTION_44_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for Date();
  v57 = OUTLINED_FUNCTION_29_5();
  v115 = v58;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, v59, v58);
  v61 = OUTLINED_FUNCTION_316();
  outlined destroy of CallControlsService?(v61, v62);
  if (EnumTagSinglePayload == 1)
  {
    Date.init()();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v115);
    OUTLINED_FUNCTION_38_2();
    outlined assign with take of AttributedString?();
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_272_0(v66, v67, v68);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v118);
  OUTLINED_FUNCTION_5_126();
  OUTLINED_FUNCTION_268_1();
  v72 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v128);
  v75 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v116);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_12_79();
  if (v78)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12_79();
    if (!v78)
    {
      outlined destroy of CallControlsService?(v22, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_2_83(v21);
  if (v78)
  {
    v79 = OUTLINED_FUNCTION_85_6();
    v80(v79);
    OUTLINED_FUNCTION_2_83(v21);
    v83 = v123;
    if (!v78)
    {
      outlined destroy of CallControlsService?(v21, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v81 = OUTLINED_FUNCTION_247_2();
    v82(v81, v21, v118);
    v83 = v123;
  }

  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_55_17(v84);
  v86 = *v85;
  v122 = v85[3];
  v124 = v85[2];
  OUTLINED_FUNCTION_80_6();
  v120 = v87;
  v121 = v88;
  OUTLINED_FUNCTION_131_2();
  v119 = v89;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v83);
  if (v78)
  {
    OUTLINED_FUNCTION_5_126();
    OUTLINED_FUNCTION_210_1();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v128);
    v93 = OUTLINED_FUNCTION_71_12();
    v95 = __swift_getEnumTagSinglePayload(v93, v94, v116);
    OUTLINED_FUNCTION_118_2();

    if (v95 != 1)
    {
      outlined destroy of CallControlsService?(v83, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v83, v127);
    OUTLINED_FUNCTION_118_2();
  }

  OUTLINED_FUNCTION_128_3();
  OUTLINED_FUNCTION_245_1(v96);
  v98 = (v83 + v97);
  OUTLINED_FUNCTION_264_1();
  v98[4] = 0;
  v99 = (v83 + v20[9]);
  *(v83 + v20[10]) = 0;
  *(v83 + v20[11]) = MEMORY[0x1E69E7CD0];
  *(v83 + v20[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_132_1();
  v101(v83 + v100);
  OUTLINED_FUNCTION_111_7();

  OUTLINED_FUNCTION_227_3();
  OUTLINED_FUNCTION_249_1();
  *v98 = v103;
  v98[1] = v102;
  v98[2] = v124;
  v98[3] = v122;
  v98[4] = v121;
  *(v83 + v20[8]) = v120;
  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_180_3(v119);
  OUTLINED_FUNCTION_185_3(v104);
  OUTLINED_FUNCTION_12_79();
  if (v78)
  {
    v105 = OUTLINED_FUNCTION_29_35(&a18);
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v115);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v115);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    v111 = v117;
    if (!v78)
    {
      outlined destroy of CallControlsService?(v127, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v111 = v117;
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v125 + v20[16]) = v86;
  OUTLINED_FUNCTION_3_138();
  OUTLINED_FUNCTION_76();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v112 = static Defaults.shared;
  OUTLINED_FUNCTION_0_1();
  v114 = (*(v113 + 608))();
  outlined destroy of CallControlsService?(v130, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v129, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v126, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v114)
  {
    OUTLINED_FUNCTION_233_3();

    *&v99[v111] = v114;
  }

  OUTLINED_FUNCTION_271_2();

  *(v111 + v114) = v112;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_43_21();
  _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asReceivedApproval()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  v129 = v25;
  OUTLINED_FUNCTION_4_24();
  v118 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40();
  v27 = OUTLINED_FUNCTION_4_24();
  v123 = type metadata accessor for Participant.State(v27);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_40();
  v29 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v29);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  v127 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32();
  v117 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v125 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_246_2(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v121 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_115_4(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_32();
  v128 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_38_30();
  v53 = type metadata accessor for Participant.CountdownInfo(v52);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_126();
  OUTLINED_FUNCTION_211_2(v56);
  v130 = v53;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for Date();
  v57 = OUTLINED_FUNCTION_29_5();
  v115 = v58;
  LODWORD(v53) = __swift_getEnumTagSinglePayload(v57, v59, v58);
  v60 = OUTLINED_FUNCTION_211();
  outlined destroy of CallControlsService?(v60, v61);
  if (v53 == 1)
  {
    Date.init()();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v115);
    outlined assign with take of AttributedString?();
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v123);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v118);
  OUTLINED_FUNCTION_5_126();
  OUTLINED_FUNCTION_268_1();
  v71 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v130);
  v74 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v116);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_12_5(v21);
  if (v77)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12_5(v21);
    v78 = v121;
    if (!v77)
    {
      outlined destroy of CallControlsService?(v21, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    v78 = v121;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_2_83(v78);
  if (v77)
  {
    v79 = OUTLINED_FUNCTION_85_6();
    v80(v79);
    OUTLINED_FUNCTION_2_83(v78);
    v83 = v125;
    if (!v77)
    {
      outlined destroy of CallControlsService?(v78, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v81 = OUTLINED_FUNCTION_247_2();
    v82(v81, v78, v118);
    v83 = v125;
  }

  OUTLINED_FUNCTION_119_4();
  OUTLINED_FUNCTION_55_17(v84);
  v86 = *v85;
  v124 = v85[3];
  v126 = v85[2];
  OUTLINED_FUNCTION_80_6();
  v120 = v87;
  v122 = v88;
  OUTLINED_FUNCTION_131_2();
  v119 = v89;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v83);
  if (v77)
  {
    OUTLINED_FUNCTION_5_126();
    OUTLINED_FUNCTION_210_1();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v130);
    v93 = OUTLINED_FUNCTION_71_12();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, v94, v116);
    OUTLINED_FUNCTION_118_2();

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v83, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v83, v129);
    OUTLINED_FUNCTION_118_2();
  }

  OUTLINED_FUNCTION_128_3();
  OUTLINED_FUNCTION_245_1(v96);
  v98 = (v83 + v97);
  *v98 = 0u;
  v98[1] = 0u;
  *(v98 + 4) = 0;
  v99 = (v83 + v20[9]);
  *(v83 + v20[10]) = 0;
  *(v83 + v20[11]) = MEMORY[0x1E69E7CD0];
  *(v83 + v20[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_132_1();
  v101(v83 + v100);
  OUTLINED_FUNCTION_111_7();

  OUTLINED_FUNCTION_227_3();
  OUTLINED_FUNCTION_249_1();
  *v98 = v103;
  *(v98 + 1) = v102;
  *(v98 + 2) = v126;
  *(v98 + 3) = v124;
  *(v98 + 4) = v122;
  *(v83 + v20[8]) = v120;
  OUTLINED_FUNCTION_168_1();
  *v99 = v104;
  v99[1] = v119;
  OUTLINED_FUNCTION_185_3(v20[15]);
  OUTLINED_FUNCTION_12_79();
  if (v77)
  {
    v105 = OUTLINED_FUNCTION_29_35(&a18);
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v115);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v115);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    v111 = v117;
    if (!v77)
    {
      outlined destroy of CallControlsService?(v129, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v111 = v117;
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v127 + v20[16]) = v86;
  OUTLINED_FUNCTION_3_138();
  OUTLINED_FUNCTION_76();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v112 = static Defaults.shared;
  OUTLINED_FUNCTION_0_1();
  v114 = (*(v113 + 608))();
  outlined destroy of CallControlsService?(v132, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v131, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v128, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v114)
  {
    OUTLINED_FUNCTION_233_3();

    *(v98 + v111) = v114;
  }

  OUTLINED_FUNCTION_271_2();

  *(v111 + v114) = v112;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_43_21();
  _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asCanceledJoinCountdown()()
{
  OUTLINED_FUNCTION_29();
  v104 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v11 = OUTLINED_FUNCTION_16(v10);
  type metadata accessor for Participant(v11);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_115_4(v13);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v114 = v15;
  OUTLINED_FUNCTION_4_24();
  v97 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v112 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_40();
  v111 = v18;
  v19 = OUTLINED_FUNCTION_4_24();
  v20 = type metadata accessor for Participant.State(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_133_0(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v100 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_17();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v110 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_103_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_38_30();
  v35 = type metadata accessor for Participant.CountdownInfo(v34);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  v102 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_67_1();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  *(v4 + *(v35 + 24)) = 1;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v20);
  v113 = v5;
  v42 = v97;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v97);
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v35);
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v99);
  v103 = v2;
  OUTLINED_FUNCTION_45_1();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_2_83(v0);
  if (v52)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_2_83(v0);
    if (!v52)
    {
      outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v53 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115(v53, v54, v97);
  if (v52)
  {
    (*(v112 + 16))(v111, v1 + v3[5], v97);
    v55 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v55, v56, v97);
    if (!v52)
    {
      outlined destroy of CallControlsService?(v110, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v112 + 32))(v111, v110, v97);
  }

  OUTLINED_FUNCTION_119_4();
  v58 = *(v57 + 3);
  v60 = *(v1 + v59);
  OUTLINED_FUNCTION_136_3((v1 + v59));
  v106 = *(v1 + v3[8]);
  OUTLINED_FUNCTION_131_2();
  v98 = v61;
  v105 = v62;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v63 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v63, v64, v99);
  if (v52)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v35);
    v68 = OUTLINED_FUNCTION_90_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, v69, v99);
    outlined copy of Participant.RemoteIdentifiers?(v60);

    v52 = EnumTagSinglePayload == 1;
    v42 = v97;
    if (!v52)
    {
      outlined destroy of CallControlsService?(v100, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    v71 = OUTLINED_FUNCTION_258_0();
    outlined init with take of Participant.CountdownInfo?(v71, v72);
    outlined copy of Participant.RemoteIdentifiers?(v60);
  }

  OUTLINED_FUNCTION_128_3();
  v101 = v73;
  v75 = *(v1 + v74);
  v76 = v116 + v3[7];
  *v76 = 0u;
  *(v76 + 16) = 0u;
  *(v76 + 32) = 0;
  v77 = (v116 + v3[9]);
  *(v116 + v3[10]) = 0;
  *(v116 + v3[11]) = MEMORY[0x1E69E7CD0];
  *(v116 + v3[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v112 + 32))(v116 + v3[5], v111, v42);
  OUTLINED_FUNCTION_239_2((v116 + v3[6]));
  *(v78 + 3) = v58;
  OUTLINED_FUNCTION_127_1(v78);
  v79 = *v76;
  v80 = *(v76 + 16);

  outlined consume of Participant.RemoteIdentifiers?(v79);
  *v76 = v60;
  *(v76 + 8) = v110;
  *(v76 + 16) = v109;
  *(v76 + 24) = v108;
  *(v76 + 32) = v107;
  *(v116 + v3[8]) = v106;
  *v77 = v98;
  v77[1] = v105;
  *(v116 + v3[15]) = v101;
  *(v116 + v3[13]) = 0;
  OUTLINED_FUNCTION_12_79();
  if (v52)
  {
    v81 = type metadata accessor for Date();
    v82 = OUTLINED_FUNCTION_36_31();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v81);
    v88 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v81);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v81);
    v80 = &_s10Foundation4DateVSgMR;
    outlined assign with take of AttributedString?();
    outlined assign with take of AttributedString?();
    *(v102 + *(v35 + 24)) = 0;
    OUTLINED_FUNCTION_12_79();
    v94 = v104;
    if (!v52)
    {
      outlined destroy of CallControlsService?(v114, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v94 = v104;
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_236_3();
  *(v116 + v3[16]) = v75;
  OUTLINED_FUNCTION_3_138();
  OUTLINED_FUNCTION_76();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v96 = (*(v95 + 608))();
  outlined destroy of CallControlsService?(v115, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v113, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v103, &_s15ConversationKit11ParticipantV5StateOSgMd);
  OUTLINED_FUNCTION_43_21();
  _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  if (v96)
  {
    OUTLINED_FUNCTION_69_9();

    *&v80[v94] = v96;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.asKickable(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v25;
  a20 = v26;
  v120 = v20;
  v109 = v27;
  v110 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  v33 = OUTLINED_FUNCTION_16(v32);
  v111 = type metadata accessor for Participant.CountdownInfo(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  v35 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v35);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  v116 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62_14(v40);
  v41 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v107 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40();
  v117 = v44;
  v45 = OUTLINED_FUNCTION_4_24();
  v46 = type metadata accessor for Participant.State(v45);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_53_17();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_17();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_83_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v46);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v41);
  v66 = (v120 + v22[6]);
  v103 = v66[1];
  v104 = *v66;
  v102 = v66[2];
  v105 = v66[4];
  OUTLINED_FUNCTION_241_2();
  v67 = v38;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v38);
  v108 = v21;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v24);
  if (v71)
  {
    OUTLINED_FUNCTION_0_189();
    OUTLINED_FUNCTION_157();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v24);
    if (!v71)
    {
      outlined destroy of CallControlsService?(v24, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v55, 1, v41);
  if (v71)
  {
    (*(v107 + 16))(v117, v120 + v22[5], v41);
    OUTLINED_FUNCTION_57(v55);
    if (!v71)
    {
      outlined destroy of CallControlsService?(v55, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v107 + 32))(v117, v55, v41);
  }

  v72 = v120 + v22[7];
  v74 = *v72;
  v73 = *(v72 + 8);
  v114 = *(v72 + 24);
  v115 = *(v72 + 16);
  v75 = *(v72 + 32);
  v76 = *(v120 + v22[8]);
  v77 = (v120 + v22[9]);
  v101 = *v77;
  v112 = v77[1];
  v113 = v75;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v78 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v78, v79, v67);
  v100 = v73;
  if (v71)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v80 = OUTLINED_FUNCTION_54_15();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v111);
    v83 = OUTLINED_FUNCTION_311();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v67);
    outlined copy of Participant.RemoteIdentifiers?(v74);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v106, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v106, v119);
    outlined copy of Participant.RemoteIdentifiers?(v74);
  }

  OUTLINED_FUNCTION_86_6(v22[7]);
  v86 = (v116 + v22[9]);
  *(v116 + v22[10]) = 0;
  *(v116 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v116 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  OUTLINED_FUNCTION_224_0();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v107 + 32))(v116 + v22[5], v117, v41);
  OUTLINED_FUNCTION_252_1();
  *v87 = v104;
  v87[1] = v103;
  v87[2] = v102;
  v87[3] = v109 & 1;
  v87[4] = v105;
  v88 = v67[4];
  OUTLINED_FUNCTION_250_1();

  OUTLINED_FUNCTION_58_3();
  outlined consume of Participant.RemoteIdentifiers?(v89);
  *v67 = v74;
  v67[1] = v100;
  v67[2] = v115;
  v67[3] = v114;
  OUTLINED_FUNCTION_243_1(v113);
  *(v116 + v90) = v76;
  *v86 = v101;
  v86[1] = v112;
  OUTLINED_FUNCTION_181_2(v22[15]);
  OUTLINED_FUNCTION_12_79();
  if (v71)
  {
    v91 = type metadata accessor for Date();
    v92 = OUTLINED_FUNCTION_29_35(&a13);
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
    v95 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v91);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_12_79();
    if (!v71)
    {
      outlined destroy of CallControlsService?(v119, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v116 + v22[16]) = v117;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v99 = (*(v98 + 608))();
  outlined destroy of CallControlsService?(v118, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v23, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v108, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v99)
  {
    OUTLINED_FUNCTION_69_9();

    *&v88[v110] = v99;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.with(idsIdentifier:avcIdentifier:capabilities:nickname:)()
{
  OUTLINED_FUNCTION_29();
  v7 = v0;
  v132 = v8;
  v119 = v9;
  v120 = v10;
  v117 = v12;
  v118 = v11;
  v136 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v18 = OUTLINED_FUNCTION_16(v17);
  v127 = type metadata accessor for Participant.CountdownInfo(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v121 = v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  v134 = v22;
  OUTLINED_FUNCTION_4_24();
  v128 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v123 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_188_2(v25);
  v26 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40();
  v27 = OUTLINED_FUNCTION_4_24();
  v28 = type metadata accessor for Participant(v27);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  v122 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  v116 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_67_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_83_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_149();
  v135 = v7;
  v45 = *(v7 + v28[7]);
  if (v45)
  {
    outlined copy of Participant.RemoteIdentifiers?(v45);

    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v2);
    v125 = v3;
    v49 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v128);
    v126 = v4;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v129);
    v115 = v1;
    OUTLINED_FUNCTION_4_31();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v43, 1, v2);
    if (v55)
    {
      OUTLINED_FUNCTION_0_189();
      v64 = v135;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v2);
      v57 = v45;

      v65 = v123;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of CallControlsService?(v43, &_s15ConversationKit11ParticipantV5StateOSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_148();
      _s15ConversationKit11ParticipantVWObTm_6();
      v63 = v45;

      v64 = v135;
      v65 = v123;
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_22_5(v6);
    if (v55)
    {
      (*(v65 + 16))(v131, v64 + v28[5], v128);
      OUTLINED_FUNCTION_22_5(v6);
      if (!v55)
      {
        outlined destroy of CallControlsService?(v6, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      (*(v65 + 32))(v131, v6, v128);
    }

    v124 = *(v64 + v28[8]);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v66 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_115(v66, v67, v129);
    v133 = v45;
    if (v55)
    {
      OUTLINED_FUNCTION_5_126();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v127);
      v71 = OUTLINED_FUNCTION_180();
      v73 = __swift_getEnumTagSinglePayload(v71, v72, v129);

      v74 = v45;

      if (v73 != 1)
      {
        outlined destroy of CallControlsService?(v116, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
      }
    }

    else
    {
      v75 = OUTLINED_FUNCTION_138_2();
      outlined init with take of Participant.CountdownInfo?(v75, v76);

      v77 = v45;
    }

    v130 = *(v64 + v28[15]);
    v78 = *(v64 + v28[16]);
    v79 = v5 + v28[7];
    *v79 = 0u;
    *(v79 + 16) = 0u;
    *(v79 + 32) = 0;
    v80 = (v5 + v28[9]);
    *(v5 + v28[10]) = 0;
    *(v5 + v28[11]) = MEMORY[0x1E69E7CD0];
    *(v5 + v28[12]) = 0;
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    (*(v65 + 32))(v5 + v28[5], v131, v128);
    v81 = vdupq_n_s64(v117);
    *(v5 + v28[6]) = v117 & 1;
    v82 = OUTLINED_FUNCTION_139_5(v81, vshlq_u64(v81, xmmword_1BC4DFB80), xmmword_1BC4DFB90);
    v84 = vand_s8(v82, v83);
    *(v85 + 1) = vuzp1_s8(v84, v84).u32[0];

    OUTLINED_FUNCTION_82_1();
    outlined consume of Participant.RemoteIdentifiers?(v86);
    *v79 = v133;
    *(v79 + 8) = v118;
    *(v79 + 16) = 0;
    *(v79 + 24) = v119;
    *(v79 + 32) = v136;
    *(v5 + v28[8]) = v124;
    *v80 = v120;
    v80[1] = v132;
    *(v5 + v28[15]) = v130;
    *(v5 + v28[13]) = 0;
    v87 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v87, v88, v127);
    if (v55)
    {
      v89 = type metadata accessor for Date();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
      v93 = OUTLINED_FUNCTION_36_31();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v89);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v89);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v89);
      outlined assign with take of AttributedString?();
      outlined assign with take of AttributedString?();
      *(v121 + *(v127 + 24)) = 0;
      OUTLINED_FUNCTION_22_5(v134);
      v102 = v122;
      v103 = v126;
      if (!v55)
      {
        outlined destroy of CallControlsService?(v134, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_153();
      _s15ConversationKit11ParticipantVWObTm_6();
      v102 = v122;
      v103 = v126;
    }

    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    *(v5 + v28[16]) = v78;
    OUTLINED_FUNCTION_3_138();
    _s15ConversationKit11ParticipantVWObTm_6();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    v105 = (*(v104 + 608))();

    outlined destroy of CallControlsService?(v103, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    outlined destroy of CallControlsService?(v125, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CallControlsService?(v115, &_s15ConversationKit11ParticipantV5StateOSgMd);
    if (v105)
    {
      v106 = v28[11];
      v107 = *(v135 + v106);

      *(v102 + v106) = v107;
    }

    v108 = v28[12];
    v109 = *(v135 + v108);
    v110 = *(v102 + v108);
    v111 = v109;

    *(v102 + v108) = v109;
    OUTLINED_FUNCTION_3_138();
    OUTLINED_FUNCTION_157();
    _s15ConversationKit11ParticipantVWObTm_6();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v28);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_36_31();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  }
}

void Participant.withGradient(gradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v25;
  a20 = v26;
  v112 = v27;
  v108 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_32();
  v33 = OUTLINED_FUNCTION_16(v32);
  v109 = type metadata accessor for Participant.CountdownInfo(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_40();
  v35 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v35);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_115_4(v37);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_1();
  v114 = v39;
  OUTLINED_FUNCTION_4_24();
  v40 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v111 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40();
  v43 = OUTLINED_FUNCTION_4_24();
  v44 = type metadata accessor for Participant.State(v43);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_57();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_53_17();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_26_7();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_83_1();
  v55 = OUTLINED_FUNCTION_33_35();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v44);
  OUTLINED_FUNCTION_250_1();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v40);
  OUTLINED_FUNCTION_241_2();
  v61 = v101;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v101);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v21);
  if (v65)
  {
    OUTLINED_FUNCTION_0_189();
    OUTLINED_FUNCTION_138_2();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v21);
    if (!v65)
    {
      outlined destroy of CallControlsService?(v21, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v66 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v66, v67, v40);
  if (v65)
  {
    v68 = OUTLINED_FUNCTION_85_6();
    v69(v68);
    OUTLINED_FUNCTION_22_5(v23);
    if (!v65)
    {
      outlined destroy of CallControlsService?(v23, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_247_2();
    OUTLINED_FUNCTION_82_1();
    v70();
  }

  OUTLINED_FUNCTION_119_4();
  v72 = *(v71 + 1);
  v73 = *(v71 + 2);
  OUTLINED_FUNCTION_191(v71);
  OUTLINED_FUNCTION_136_3(v74);
  v75 = (v20 + v22[9]);
  v105 = *v75;
  v110 = v75[1];
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v76 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115(v76, v77, v101);
  if (v65)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v109);
    v81 = OUTLINED_FUNCTION_18_12();
    v61 = v106;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, v82, v101);
    OUTLINED_FUNCTION_176_0();

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v106, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v106, v114);
    OUTLINED_FUNCTION_176_0();
  }

  OUTLINED_FUNCTION_128_3();
  v107 = v84;
  OUTLINED_FUNCTION_117_2();
  *(v112 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v112 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_132_1();
  v86(v112 + v85);
  v87 = (v112 + v22[6]);
  *v87 = v104;
  v87[1] = v72;
  v87[2] = v73;
  v87[3] = v103;
  v87[4] = v102;
  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_289();
  outlined consume of Participant.RemoteIdentifiers?(v88);
  OUTLINED_FUNCTION_151_1();
  *(v112 + v89) = v112;
  *v61 = v105;
  v61[1] = v110;
  *(v112 + v22[15]) = v107;
  *(v112 + v22[13]) = 0;
  v90 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_32_24(v90, v91);
  if (v65)
  {
    v92 = type metadata accessor for Date();
    v93 = OUTLINED_FUNCTION_29_35(&a14);
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
    v96 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v92);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_16_62(v114);
    if (!v65)
    {
      outlined destroy of CallControlsService?(v114, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v116 + v22[16]) = v111;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v100 = (*(v99 + 608))();
  outlined destroy of CallControlsService?(v115, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v113, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v24, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v100)
  {
    OUTLINED_FUNCTION_69_9();

    *&v72[v108] = v100;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.withNames(nickname:siriDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v25;
  a20 = v26;
  v110 = v27;
  v105 = v28;
  v106 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32();
  v34 = OUTLINED_FUNCTION_16(v33);
  v107 = type metadata accessor for Participant.CountdownInfo(v34);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40();
  v36 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant(v36);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_115_4(v38);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_1();
  v112 = v40;
  OUTLINED_FUNCTION_4_24();
  v41 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v109 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40();
  v44 = OUTLINED_FUNCTION_4_24();
  v45 = type metadata accessor for Participant.State(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_57();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  v103 = v49;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_53_17();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_26_7();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v55 = OUTLINED_FUNCTION_22(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_83_1();
  v57 = OUTLINED_FUNCTION_33_35();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v45);
  OUTLINED_FUNCTION_250_1();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v41);
  OUTLINED_FUNCTION_241_2();
  v63 = v102;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v102);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v21);
  if (v67)
  {
    OUTLINED_FUNCTION_0_189();
    OUTLINED_FUNCTION_138_2();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v21);
    if (!v67)
    {
      outlined destroy of CallControlsService?(v21, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v68 = OUTLINED_FUNCTION_311();
  OUTLINED_FUNCTION_115(v68, v69, v41);
  if (v67)
  {
    v70 = OUTLINED_FUNCTION_85_6();
    v71(v70);
    OUTLINED_FUNCTION_22_5(v23);
    if (!v67)
    {
      outlined destroy of CallControlsService?(v23, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_247_2();
    OUTLINED_FUNCTION_82_1();
    v72();
  }

  OUTLINED_FUNCTION_119_4();
  v74 = *(v73 + 1);
  v101 = *(v73 + 3);
  OUTLINED_FUNCTION_136_3((v20 + v75));
  v108 = *(v20 + v22[8]);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v76 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_115(v76, v77, v102);
  if (v67)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v107);
    v81 = OUTLINED_FUNCTION_18_12();
    v63 = v103;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, v82, v102);
    OUTLINED_FUNCTION_176_0();

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v103, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v103, v112);
    OUTLINED_FUNCTION_176_0();
  }

  OUTLINED_FUNCTION_128_3();
  v104 = v84;
  OUTLINED_FUNCTION_117_2();
  *(v110 + v22[11]) = MEMORY[0x1E69E7CD0];
  *(v110 + v22[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  OUTLINED_FUNCTION_132_1();
  v86(v110 + v85);
  OUTLINED_FUNCTION_239_2((v110 + v22[6]));
  *(v87 + 3) = v101;
  OUTLINED_FUNCTION_127_1(v87);
  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_289();
  outlined consume of Participant.RemoteIdentifiers?(v88);
  OUTLINED_FUNCTION_151_1();
  *(v110 + v89) = v108;
  *v63 = v105;
  v63[1] = v110;
  *(v110 + v22[15]) = v104;
  *(v110 + v22[13]) = 0;
  v90 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_32_24(v90, v91);
  if (v67)
  {
    v92 = type metadata accessor for Date();
    v93 = OUTLINED_FUNCTION_29_35(&a14);
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
    v96 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v92);
    OUTLINED_FUNCTION_18_56();
    OUTLINED_FUNCTION_67_11();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_154_2();
    OUTLINED_FUNCTION_16_62(v112);
    if (!v67)
    {
      outlined destroy of CallControlsService?(v112, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
  }

  OUTLINED_FUNCTION_1_153();
  OUTLINED_FUNCTION_186_1();
  *(v114 + v22[16]) = v109;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v100 = (*(v99 + 608))();
  outlined destroy of CallControlsService?(v113, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v111, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v24, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v100)
  {
    OUTLINED_FUNCTION_69_9();

    *&v74[v106] = v100;
  }

  OUTLINED_FUNCTION_109_6();

  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_30_0();
}

void Participant.withAssociatedParticipants(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v26;
  a20 = v27;
  v166 = v20;
  v142 = v28;
  v154 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32();
  v34 = OUTLINED_FUNCTION_16(v33);
  v156 = type metadata accessor for Participant.CountdownInfo(v34);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40();
  v153 = v36;
  v37 = OUTLINED_FUNCTION_4_24();
  v38 = type metadata accessor for Participant(v37);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_188_2(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47_15(v43);
  v44 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v155 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_40();
  v162 = v47;
  v48 = OUTLINED_FUNCTION_4_24();
  v49 = type metadata accessor for Participant.State(v48);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_103_4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v55 = OUTLINED_FUNCTION_22(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_67_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v141 - v60;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v49);
  v163 = v23;
  OUTLINED_FUNCTION_10_0();
  v167 = v44;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v44);
  v164 = v24;
  v68 = OUTLINED_FUNCTION_34_32();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v41);
  v152 = v61;
  OUTLINED_FUNCTION_15_14();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v21);
  if (v71)
  {
    OUTLINED_FUNCTION_0_189();
    v72 = v166;
    OUTLINED_FUNCTION_208();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_57(v21);
    if (!v71)
    {
      outlined destroy of CallControlsService?(v21, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    OUTLINED_FUNCTION_62_0();
    _s15ConversationKit11ParticipantVWObTm_6();
    v72 = v166;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v73 = OUTLINED_FUNCTION_71_12();
  OUTLINED_FUNCTION_115(v73, v74, v167);
  v75 = v41;
  v76 = v150;
  v151 = v22;
  if (v71)
  {
    v77 = OUTLINED_FUNCTION_77_12();
    v78(v77);
    OUTLINED_FUNCTION_3_62(v25);
    if (!v71)
    {
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    v79 = OUTLINED_FUNCTION_183_2();
    v80(v79, v25, v167);
  }

  v81 = (v72 + v38[6]);
  v82 = *v81;
  v83 = v81[1];
  OUTLINED_FUNCTION_191(v81);
  v85 = *v84;
  v86 = v84[1];
  v88 = v84[2];
  v87 = v84[3];
  v159 = v84[4];
  v160 = v87;
  OUTLINED_FUNCTION_131_2();
  v149 = v89;
  v157 = v90;
  v158 = v91;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_57(v76);
  v145 = v86;
  v144 = v88;
  v143 = v85;
  if (v71)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v156);
    v95 = OUTLINED_FUNCTION_180();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, v96, v75);
    OUTLINED_FUNCTION_266_1();

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v76, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v76, v165);
    OUTLINED_FUNCTION_266_1();
  }

  v98 = v38[16];
  LODWORD(v150) = *(v72 + v38[15]);
  v99 = *(v72 + v98);
  v100 = v161;
  v101 = (v161 + v38[7]);
  OUTLINED_FUNCTION_202_0();
  v101[4] = 0;
  v102 = (v100 + v38[9]);
  *(v100 + v38[10]) = 0;
  *(v100 + v38[11]) = MEMORY[0x1E69E7CD0];
  *(v100 + v38[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  v103 = OUTLINED_FUNCTION_265_1(v38[5]);
  v104(v103);
  v105 = (v100 + v38[6]);
  *v105 = v82;
  v105[1] = v83;
  v106 = v147;
  v105[2] = v148;
  v105[3] = v106;
  v105[4] = v146;
  v167 = v99;

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_123_2();
  outlined consume of Participant.RemoteIdentifiers?(v107);
  OUTLINED_FUNCTION_168_1();
  v108 = v145;
  *v101 = v109;
  v101[1] = v108;
  OUTLINED_FUNCTION_196_3();
  v110 = v159;
  v111 = v160;
  v101[2] = v112;
  v101[3] = v111;
  v101[4] = v110;
  *(v100 + v38[8]) = v158;
  v114 = v156;
  v113 = v157;
  *v102 = v149;
  v102[1] = v113;
  *(v100 + v38[15]) = v150;
  *(v100 + v38[13]) = 0;
  v115 = v165;
  OUTLINED_FUNCTION_12_79();
  if (v71)
  {
    v116 = type metadata accessor for Date();
    v117 = OUTLINED_FUNCTION_29_35(&a13);
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v116);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v116);
    v123 = v153;
    v124 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v116);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v116);
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_58_3();
    outlined assign with take of AttributedString?();
    *(v123 + *(v114 + 24)) = 0;
    OUTLINED_FUNCTION_12_79();
    v130 = v154;
    if (!v71)
    {
      outlined destroy of CallControlsService?(v115, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v130 = v154;
  }

  OUTLINED_FUNCTION_1_153();
  v131 = v161;
  OUTLINED_FUNCTION_236_3();
  *(v131 + v38[16]) = v167;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  v132 = v166;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v134 = (*(v133 + 608))();
  outlined destroy of CallControlsService?(v164, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v163, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v152, &_s15ConversationKit11ParticipantV5StateOSgMd);
  if (v134)
  {
    v135 = v38[11];
    v136 = v142;

    *(v130 + v135) = v136;
  }

  v137 = v38[12];
  v138 = *(v132 + v137);
  v139 = *(v130 + v137);
  v140 = v138;

  *(v130 + v137) = v138;
  OUTLINED_FUNCTION_30_0();
}

void Participant.name(_:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_316();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_100();
  v5 = type metadata accessor for Participant(0);
  specialized Collection.first.getter(*(v0 + *(v5 + 44)), v1);
  v6 = OUTLINED_FUNCTION_311();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, v7, v5);
  OUTLINED_FUNCTION_172_1();
  outlined destroy of CallControlsService?(v9, v10);
  if (*(v0 + *(v5 + 36) + 8))
  {
    v11 = EnumTagSinglePayload == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = [objc_opt_self() conversationKit];
    v21._object = 0xE000000000000000;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v14._object = 0x80000001BC4FDAC0;
    v14._countAndFlagsBits = 0xD000000000000020;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;

    v17 = MEMORY[0x1E69E6158];
    v18 = String.init<A>(_:)();
    v20 = v19;
    *(v16 + 56) = v17;
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    OUTLINED_FUNCTION_171_1();
    String.init(format:_:)();
  }

  else
  {
  }

  OUTLINED_FUNCTION_49();
}

uint64_t *static Participant.VideoInfo.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v73 = 1;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  result = outlined init with copy of Participant.VideoInfo(a1, v81);
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v12 = *(v3[6] + (__clz(__rbit64(v7)) | (v9 << 6)));
    if (v3[2] && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v14 & 1) != 0))
    {
      outlined init with copy of IDSLookupManager(v3[7] + 40 * v13, v87);
    }

    else
    {
      v88 = 0;
      memset(v87, 0, sizeof(v87));
    }

    v15 = *a2;
    if (*(*a2 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v17 & 1) != 0))
    {
      outlined init with copy of IDSLookupManager(*(v15 + 56) + 40 * v16, v85);
    }

    else
    {
      v86 = 0;
      memset(v85, 0, sizeof(v85));
    }

    v7 &= v7 - 1;
    OUTLINED_FUNCTION_275_0();
    OUTLINED_FUNCTION_275_0();
    if (v82)
    {
      if (v84)
      {
        OUTLINED_FUNCTION_275_0();
        if (!v77)
        {
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v37, v38);
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v39, v40);
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v41, v42);
          goto LABEL_27;
        }

        outlined init with take of TapInteractionHandler(&v76, v78);
        OUTLINED_FUNCTION_275_0();
        if (!v75)
        {
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v43, v44);
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v45, v46);
          OUTLINED_FUNCTION_82_1();
          outlined destroy of CallControlsService?(v47, v48);
          __swift_destroy_boxed_opaque_existential_1(v78);
          goto LABEL_27;
        }

        outlined init with take of TapInteractionHandler(&v74, &v76);
        v71 = a2;
        v18 = v79;
        v19 = v80;
        __swift_project_boxed_opaque_existential_1(v78, v79);
        v20 = *(v19 + 128);
        v21 = v19;
        a2 = v71;
        v22 = v20(&v76, v18, v21);
        __swift_destroy_boxed_opaque_existential_1(&v76);
        OUTLINED_FUNCTION_82_1();
        outlined destroy of CallControlsService?(v23, v24);
        OUTLINED_FUNCTION_82_1();
        outlined destroy of CallControlsService?(v25, v26);
        __swift_destroy_boxed_opaque_existential_1(v78);
        OUTLINED_FUNCTION_82_1();
        outlined destroy of CallControlsService?(v27, v28);
        OUTLINED_FUNCTION_82_1();
        result = outlined destroy of CallControlsService?(v29, v30);
        v73 &= v22;
      }

      else
      {
        OUTLINED_FUNCTION_82_1();
        outlined destroy of CallControlsService?(v35, v36);
LABEL_27:
        OUTLINED_FUNCTION_82_1();
        outlined destroy of CallControlsService?(v49, v50);
LABEL_28:
        OUTLINED_FUNCTION_82_1();
        result = outlined destroy of CallControlsService?(v51, v52);
        v73 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_82_1();
      outlined destroy of CallControlsService?(v31, v32);
      OUTLINED_FUNCTION_82_1();
      outlined destroy of CallControlsService?(v33, v34);
      result = &v83;
      if (v84)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  if ((v73 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (a1[9])
  {
    v53 = 256;
  }

  else
  {
    v53 = 0;
  }

  v54 = 0x10000;
  if (a1[10])
  {
    v55 = 0x10000;
  }

  else
  {
    v55 = 0;
  }

  v56 = 0x100000000;
  if (a1[12])
  {
    v57 = 0x100000000;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0x10000000000;
  if (a1[13])
  {
    v59 = 0x10000000000;
  }

  else
  {
    v59 = 0;
  }

  v60 = 0x1000000000000;
  if (a1[14])
  {
    v61 = 0x1000000000000;
  }

  else
  {
    v61 = 0;
  }

  v62 = 0x100000000000000;
  if (a1[15])
  {
    v63 = 0x100000000000000;
  }

  else
  {
    v63 = 0;
  }

  v64 = (a1[8] & 1 | (a1[11] << 24) | v53 | v55 | v57 | v59) + v61;
  if (a1[17])
  {
    v65 = 256;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 & 0xFFFE | a1[16] & 1;
  if (a2[9])
  {
    v67 = 256;
  }

  else
  {
    v67 = 0;
  }

  if ((a2[10] & 1) == 0)
  {
    v54 = 0;
  }

  if ((a2[12] & 1) == 0)
  {
    v56 = 0;
  }

  if ((a2[13] & 1) == 0)
  {
    v58 = 0;
  }

  if ((a2[14] & 1) == 0)
  {
    v60 = 0;
  }

  if ((a2[15] & 1) == 0)
  {
    v62 = 0;
  }

  v68 = (a2[8] & 1 | (a2[11] << 24) | v67 | v54 | v56 | v58) + v60;
  v69 = (a2[17] & 1) != 0 ? 256 : 0;
  if (static Participant.VideoState.== infix(_:_:)(v64 | v63, v66, v68 | v62, v69 & 0xFFFE | a2[16] & 1))
  {
    v70 = a1[73] ^ a2[73] ^ 1;
  }

  else
  {
LABEL_69:
    v70 = 0;
  }

  return (v70 & 1);
}

BOOL static Participant.ScreenInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_55();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (!*(&v15[1] + 1))
  {
    outlined destroy of CallControlsService?(v15, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
LABEL_7:
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_270_2();
    if (v2)
    {
      return 0;
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_270_2();
    goto LABEL_11;
  }

  outlined init with take of TapInteractionHandler(v15, __dst);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (!*(&v11 + 1))
  {
    outlined destroy of CallControlsService?(&v10, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_7;
  }

  outlined init with take of TapInteractionHandler(&v10, v15);
  v3 = __dst[3];
  v4 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v5 = (*(v4 + 128))(v15, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v6 = 0;
  if (*(v1 + 40) == *(v0 + 40) && ((*(v1 + 41) ^ *(v0 + 41)) & 1) == 0 && ((*(v1 + 42) ^ *(v0 + 42)) & 1) == 0 && ((*(v1 + 43) ^ *(v0 + 43)) & 1) == 0)
  {
    if (*(v1 + 208))
    {
      if (*(v0 + 208))
      {
        goto LABEL_20;
      }
    }

    else if ((*(v0 + 208) & 1) == 0)
    {
      memcpy(__dst, (v0 + 112), sizeof(__dst));
      memcpy(v15, (v1 + 112), sizeof(v15));
      if (static Participant.ScreenShareAttributes.== infix(_:_:)(v15, __dst))
      {
LABEL_20:
        if (*(v1 + 104) == *(v0 + 104) && *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56))
        {
          v8 = *(v1 + 80);
          v13[0] = *(v1 + 64);
          v13[1] = v8;
          v14 = *(v1 + 96);
          v9 = *(v0 + 80);
          v10 = *(v0 + 64);
          v11 = v9;
          v12 = *(v0 + 96);
          return static AspectRatio.== infix(_:_:)(v13, &v10);
        }
      }
    }

    return 0;
  }

  return v6;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Participant.VideoState(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v22 = a2[9];
  v23 = v3 & 1;
  if (v4)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v5 & 1) == 0;
  v26 = 0x10000;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x10000;
  }

  v25 = (v7 & 1) == 0;
  v28 = 0x100000000;
  if (v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x100000000;
  }

  v25 = (v8 & 1) == 0;
  v30 = 0x10000000000;
  if (v25)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0x10000000000;
  }

  v25 = (v9 & 1) == 0;
  v32 = 0x1000000000000;
  if (v25)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0x1000000000000;
  }

  v25 = (v10 & 1) == 0;
  v34 = 0x100000000000000;
  if (v25)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0x100000000000000;
  }

  v36 = (v23 | (v6 << 24) | v24 | v27 | v29 | v31) + v33;
  if (v12)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 & 0xFFFE | v11 & 1;
  if (v14)
  {
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v26 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v28 = 0;
  }

  if ((v18 & 1) == 0)
  {
    v30 = 0;
  }

  if ((v19 & 1) == 0)
  {
    v32 = 0;
  }

  if ((v20 & 1) == 0)
  {
    v34 = 0;
  }

  v40 = (v13 & 1 | (v16 << 24) | v39 | v26 | v28 | v30) + v32;
  if (v22)
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41 & 0xFFFE | v21 & 1;

  return static Participant.VideoState.== infix(_:_:)(v36 | v35, v38, v40 | v34, v42);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Participant.ScreenState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (a1[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v2;
  v7 = v4 | v3;
  if (a2[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  if (a2[2])
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (a2[1])
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return static Participant.ScreenState.== infix(_:_:)(v6 | v7, v10 | *a2 | v9 | v8);
}

void static Participant.MediaInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_2();
  if (*v2 == *v3 && *(v2 + 1) == *(v3 + 1))
  {
    OUTLINED_FUNCTION_6_7();
    memcpy(__dst, (v1 + 16), 0x4BuLL);
    memcpy(v16, (v0 + 16), 0x4BuLL);
    v5 = __dst[0];
    OUTLINED_FUNCTION_238_2(v9);
    v6 = v16[0];
    if (v5)
    {
      if (v16[0])
      {
        __src[0] = v16[0];
        memcpy(&__src[1], (v0 + 24), 0x43uLL);
        memcpy(v19, __src, 0x4BuLL);
        OUTLINED_FUNCTION_238_2(&v18);
        v17 = v5;
        OUTLINED_FUNCTION_123_2();
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        OUTLINED_FUNCTION_123_2();
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v7 = static Participant.VideoInfo.== infix(_:_:)(&v17, v19);
        outlined destroy of CallControlsService?(__src, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v11 = v5;
        memcpy(v12, v9, 0x43uLL);
        outlined destroy of CallControlsService?(&v11, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        if ((v7 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else if (!v16[0])
    {
      v11 = 0;
      OUTLINED_FUNCTION_238_2(v12);
      OUTLINED_FUNCTION_123_2();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_123_2();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of CallControlsService?(&v11, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
LABEL_13:
      OUTLINED_FUNCTION_123_2();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_123_2();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (v12[2] == 1)
      {
        if (v14[3] == 1)
        {
          outlined destroy of CallControlsService?(&v11, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
          goto LABEL_20;
        }
      }

      else
      {
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        if (v14[3] != 1)
        {
          memcpy(v9, v14, 0xD1uLL);
          static Participant.ScreenInfo.== infix(_:_:)();
          outlined destroy of Participant.ScreenInfo(v9);
          outlined destroy of Participant.ScreenInfo(__src);
          outlined destroy of CallControlsService?(&v11, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
          goto LABEL_20;
        }

        outlined destroy of Participant.ScreenInfo(__src);
      }

      v8 = &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMd;
LABEL_19:
      outlined destroy of CallControlsService?(&v11, v8);
      goto LABEL_20;
    }

    v11 = v5;
    OUTLINED_FUNCTION_238_2(v12);
    v12[9] = v6;
    memcpy(v13, (v0 + 24), sizeof(v13));
    OUTLINED_FUNCTION_58_3();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_58_3();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v8 = &_s15ConversationKit11ParticipantV9VideoInfoVSg_AFtMd;
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t static Participant.RemoteIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  OUTLINED_FUNCTION_46();
  v6 = static NSObject.== infix(_:_:)();
  v7 = v6 & v5;
  v8 = (v2 == v4) & ~v5;
  if (v3)
  {
    v8 = v6 & v5;
  }

  if (v6)
  {
    v7 = v8;
  }

  return v7 & 1;
}

uint64_t static Participant.CopresenceInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v1 + 16) == *(v0 + 16) ? (v4 = *(v1 + 24) == *(v0 + 24)) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v5 = *(v1 + 32) ^ *(v0 + 32) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t static Participant.ScreenShareAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 88) == *(a2 + 88) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v2 = static CGAffineTransform.== infix(_:_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *Participant.handle.getter()
{
  OUTLINED_FUNCTION_89_6();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

uint64_t Participant.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_58();
  _s10Foundation4UUIDVACSQAAWlTm_0(v1, v2);
  OUTLINED_FUNCTION_44_0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Participant.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  type metadata accessor for Participant(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_58();
  _s10Foundation4UUIDVACSQAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_267_1();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_58();
  _s10Foundation4UUIDVACSQAAWlTm_0(v0, v1);
  OUTLINED_FUNCTION_267_1();
  return Hasher._finalize()();
}

uint64_t closure #1 in Array<A>.sorted()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = v6(a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 value];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = v6(a3, a4);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 value];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  if (v16 == v10 && v18 == v12)
  {
    v20 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v122 = type metadata accessor for Participant.Caption(0);
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v124 = (&v106 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v106 - v14;
  v119 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v124 = *v110;
    if (!v124)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v98 = v17 + 16;
      v99 = *(v17 + 2);
      while (v99 >= 2)
      {
        if (!*v119)
        {
          goto LABEL_138;
        }

        v100 = v5;
        v101 = v17;
        v5 = &v17[16 * v99];
        v102 = *v5;
        v103 = &v98[2 * v99];
        v104 = *(v103 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v119 + *(v117 + 72) * *v5, *v119 + *(v117 + 72) * *v103, *v119 + *(v117 + 72) * v104, v124);
        v17 = v100;
        if (v100)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_126;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v5 = v102;
        *(v5 + 1) = v104;
        v105 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_128;
        }

        v99 = *v98 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v103 + 16, v105, v103);
        *v98 = v99;
        v5 = 0;
        v17 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    goto LABEL_102;
  }

  v106 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v107 = v17;
      v108 = v5;
      v5 = (v16 + 1);
      v19 = *v119;
      v20 = *(v117 + 72);
      v21 = *v119 + v20 * (v16 + 1);
      v22 = v123;
      v116 = v15;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v23 = v124;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v24 = *v22;
      v114 = *v23;
      v115 = v24;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v25 = v116;
      v109 = v16;
      v26 = (v16 + 2);
      v118 = v20;
      v27 = v19 + v20 * (v16 + 2);
      v18 = v5;
      while (1)
      {
        v17 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        LODWORD(v120) = v115 < v114;
        v28 = v123;
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v5 = v124;
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v29 = *v28;
        v30 = *v5;
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        v25 = v116;
        v27 += v118;
        v21 += v118;
        v26 = v17 + 1;
        if (((v120 ^ (v29 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v115 >= v114)
      {
        v17 = v107;
        v5 = v108;
      }

      else
      {
        v16 = v109;
        if (v18 < v109)
        {
          goto LABEL_132;
        }

        if (v109 >= v18)
        {
          v17 = v107;
          v5 = v108;
          goto LABEL_32;
        }

        if (v25 >= v17)
        {
          v31 = v17;
        }

        else
        {
          v31 = v25;
        }

        v32 = v118 * (v31 - 1);
        v33 = v118 * v31;
        v34 = v109 * v118;
        v35 = v109;
        v36 = v18;
        v5 = v108;
        do
        {
          if (v35 != --v36)
          {
            v37 = v18;
            v38 = *v119;
            if (!*v119)
            {
              goto LABEL_139;
            }

            _s15ConversationKit11ParticipantVWObTm_6();
            v39 = v34 < v32 || v38 + v34 >= v38 + v33;
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_6();
            v18 = v37;
          }

          ++v35;
          v32 -= v118;
          v33 -= v118;
          v34 += v118;
        }

        while (v35 < v36);
        v17 = v107;
      }

      v16 = v109;
    }

LABEL_32:
    v40 = v119[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v16))
      {
        goto LABEL_131;
      }

      if (v18 - v16 < v106)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v16)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v96;
    }

    v54 = *(v17 + 2);
    v53 = *(v17 + 3);
    v55 = v54 + 1;
    v118 = v18;
    if (v54 >= v53 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v97;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    v58 = v118;
    *v57 = v16;
    *(v57 + 1) = v58;
    v120 = *v110;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v54)
    {
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v56[16 * v55 - 16];
        v61 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v17 + 4);
          v63 = *(v17 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_117;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_125;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_119;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_122;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_124;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v119)
        {
          goto LABEL_137;
        }

        v91 = &v56[16 * v59 - 16];
        v92 = *v91;
        v93 = &v56[16 * v59];
        v94 = *(v93 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v119 + *(v117 + 72) * *v91, *v119 + *(v117 + 72) * *v93, *v119 + *(v117 + 72) * v94, v120);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v94 < v92)
        {
          goto LABEL_112;
        }

        v5 = v17;
        v17 = *(v17 + 2);
        if (v59 > v17)
        {
          goto LABEL_113;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        if (v59 >= v17)
        {
          goto LABEL_114;
        }

        v55 = (v17 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v93 + 16, &v17[-v59 - 1], &v56[16 * v59]);
        *(v5 + 2) = v17 - 1;
        v95 = v17 > 2;
        v17 = v5;
        v5 = 0;
        if (!v95)
        {
          goto LABEL_97;
        }
      }

      v66 = &v56[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_115;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_116;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_118;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_121;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v16 = v118;
    v15 = v119[1];
    if (v118 >= v15)
    {
      goto LABEL_100;
    }
  }

  v41 = (v16 + v106);
  if (__OFADD__(v16, v106))
  {
    goto LABEL_133;
  }

  if (v41 >= v40)
  {
    v41 = v119[1];
  }

  if (v41 < v16)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v41)
  {
    goto LABEL_48;
  }

  v107 = v17;
  v108 = v5;
  v42 = *v119;
  v43 = *(v117 + 72);
  v44 = *v119 + v43 * (v18 - 1);
  v45 = -v43;
  v109 = v16;
  v46 = v16 - v18;
  v120 = v42;
  v111 = v43;
  v112 = v41;
  v47 = v42 + v18 * v43;
LABEL_41:
  v118 = v18;
  v114 = v47;
  v115 = v46;
  v116 = v44;
  v48 = v44;
  while (1)
  {
    v49 = v123;
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v50 = v124;
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v51 = *v49;
    v52 = *v50;
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    if (v51 >= v52)
    {
LABEL_46:
      v18 = v118 + 1;
      v44 = v116 + v111;
      v46 = v115 - 1;
      v47 = v114 + v111;
      if ((v118 + 1) == v112)
      {
        v18 = v112;
        v17 = v107;
        v5 = v108;
        v16 = v109;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v120)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWObTm_6();
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_6();
    v48 += v45;
    v47 += v45;
    v39 = __CFADD__(v46++, 1);
    if (v39)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(void *a1)
{
  v1 = [a1 siriDisplayName];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t outlined init with take of Participant.CountdownInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 specialized Participant.ScreenShareAttributes.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 displayScale];
  if (v4)
  {
    v5 = v4;
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [a1 cornerRadius];
  v9 = v8;
  v10 = 0;
  v11 = 0;
  if (v8)
  {
    [v8 doubleValue];
    v11 = v12;
  }

  v28 = v9 == 0;
  v13 = [a1 systemRootLayerTransform];
  if (v13)
  {
    v14 = v13;
    [v13 CGAffineTransformValue];
    v20 = v24;
    v22 = v25;
    v10 = v26;
    v15 = v27;
  }

  else
  {
    v22 = xmmword_1BC4BD490;
    v20 = xmmword_1BC4C1E40;
    v15 = 0;
  }

  v16 = [a1 deviceFamily];
  v17 = [a1 deviceHomeButtonType];
  v18 = [a1 style];
  swift_unknownObjectRelease();
  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = v28;
  result = v21;
  *(a2 + 40) = v23;
  *(a2 + 24) = v21;
  *(a2 + 56) = v10;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  return result;
}

uint64_t outlined assign with take of Participant.Caption()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type Participant.RemoteIdentifiers and conformance Participant.RemoteIdentifiers()
{
  result = lazy protocol witness table cache variable for type Participant.RemoteIdentifiers and conformance Participant.RemoteIdentifiers;
  if (!lazy protocol witness table cache variable for type Participant.RemoteIdentifiers and conformance Participant.RemoteIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.RemoteIdentifiers and conformance Participant.RemoteIdentifiers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Participant.Capabilities and conformance Participant.Capabilities()
{
  result = lazy protocol witness table cache variable for type Participant.Capabilities and conformance Participant.Capabilities;
  if (!lazy protocol witness table cache variable for type Participant.Capabilities and conformance Participant.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.Capabilities and conformance Participant.Capabilities);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Participant.VideoDegradedState and conformance Participant.VideoDegradedState()
{
  result = lazy protocol witness table cache variable for type Participant.VideoDegradedState and conformance Participant.VideoDegradedState;
  if (!lazy protocol witness table cache variable for type Participant.VideoDegradedState and conformance Participant.VideoDegradedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoDegradedState and conformance Participant.VideoDegradedState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Participant.VideoInfo.CameraType and conformance Participant.VideoInfo.CameraType()
{
  result = lazy protocol witness table cache variable for type Participant.VideoInfo.CameraType and conformance Participant.VideoInfo.CameraType;
  if (!lazy protocol witness table cache variable for type Participant.VideoInfo.CameraType and conformance Participant.VideoInfo.CameraType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Participant.VideoInfo.CameraType and conformance Participant.VideoInfo.CameraType);
  }

  return result;
}

void type metadata completion function for Participant()
{
  type metadata accessor for Participant.State(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Participant.RemoteIdentifiers?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [UIColor](319, &lazy cache variable for type metadata for [UIColor], &lazy cache variable for type metadata for UIColor, 0x1E69DC888, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Set<Participant>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for [UIColor](319, &lazy cache variable for type metadata for TUHandle?, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Participant.CountdownInfo(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ParticipantContactDetailsCache();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Set<Participant>()
{
  if (!lazy cache variable for type metadata for Set<Participant>)
  {
    type metadata accessor for Participant(255);
    _s10Foundation4UUIDVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Participant>);
    }
  }
}

void type metadata accessor for [UIColor](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata completion function for Participant.State()
{
  type metadata accessor for (date: Date)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for (date: Date, mediaInfo: Participant.MediaInfo, copresenceInfo: Participant.CopresenceInfo?)();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata accessor for (date: Date)()
{
  if (!lazy cache variable for type metadata for (date: Date))
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (date: Date));
    }
  }
}

void type metadata accessor for (date: Date, mediaInfo: Participant.MediaInfo, copresenceInfo: Participant.CopresenceInfo?)()
{
  if (!lazy cache variable for type metadata for (date: Date, mediaInfo: Participant.MediaInfo, copresenceInfo: Participant.CopresenceInfo?))
  {
    type metadata accessor for Date();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (date: Date, mediaInfo: Participant.MediaInfo, copresenceInfo: Participant.CopresenceInfo?));
    }
  }
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Participant.Capabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant.MediaInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 336))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.MediaInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Participant.VideoState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[10])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.VideoState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.ScreenState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Participant.VideoDegradedState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant.AVInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.AVInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Participant.VideoInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Participant.VideoInfo.CameraType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant.ScreenShareAttributes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Participant.ScreenShareAttributes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for Participant.ScreenInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata completion function for Participant.CountdownInfo()
{
  _sSaySo8_NSRangeVGMaTm_1(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void _sSaySo8_NSRangeVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for Participant.Caption()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    _sSaySo8_NSRangeVGMaTm_1(319, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id outlined copy of SensitiveContentController.HistoryCheckStatus(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}