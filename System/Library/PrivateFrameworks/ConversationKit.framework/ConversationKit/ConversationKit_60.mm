uint64_t OUTLINED_FUNCTION_67_11()
{

  return outlined assign with take of AttributedString?();
}

uint64_t OUTLINED_FUNCTION_69_9()
{
}

void OUTLINED_FUNCTION_107_3()
{
  v0[43] = 0;
  v0[44] = 0;
  v0[45] = 0;
  v0[46] = 1;

  bzero(v0 + 47, 0xB1uLL);
}

double OUTLINED_FUNCTION_117_2()
{
  v2 = *(v1 - 104);
  v3 = v2 + *(v0 + 28);
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v2 + *(v0 + 40)) = 0;
  return result;
}

id OUTLINED_FUNCTION_118_2()
{

  return outlined copy of Participant.RemoteIdentifiers?(v0);
}

id OUTLINED_FUNCTION_129_2()
{
  v2 = *(v0 - 168);

  return outlined copy of Participant.RemoteIdentifiers?(v2);
}

void *OUTLINED_FUNCTION_130_4()
{

  return outlined consume of Participant.RemoteIdentifiers?(v0);
}

uint64_t OUTLINED_FUNCTION_160_2()
{

  return outlined assign with take of AttributedString?();
}

uint64_t OUTLINED_FUNCTION_163_2()
{

  return outlined destroy of Participant.ScreenInfo(v0 + 64);
}

void *OUTLINED_FUNCTION_164_0(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x150uLL);
}

void OUTLINED_FUNCTION_169_2()
{

  JUMPOUT(0x1BFB20B10);
}

uint64_t OUTLINED_FUNCTION_177_3(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_186_1()
{

  return _s15ConversationKit11ParticipantVWObTm_6();
}

void OUTLINED_FUNCTION_206_1()
{

  Participant.screenInfo.getter();
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  *(v1 - 256) = v0;

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return _s15ConversationKit11ParticipantVWObTm_6();
}

uint64_t OUTLINED_FUNCTION_212_3()
{

  return _s15ConversationKit11ParticipantV5StateOWOcTm_0();
}

uint64_t OUTLINED_FUNCTION_223_2()
{
  *(v1 - 144) = v0;
}

void OUTLINED_FUNCTION_224_1()
{

  JUMPOUT(0x1BFB20B10);
}

void *OUTLINED_FUNCTION_225_1()
{

  return outlined consume of Participant.RemoteIdentifiers?(v0);
}

void *OUTLINED_FUNCTION_238_2(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x43uLL);
}

void OUTLINED_FUNCTION_239_2(_BYTE *a1@<X8>)
{
  *a1 = *(v1 - 256);
  a1[1] = v2;
  a1[2] = v3;
}

double OUTLINED_FUNCTION_264_1()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

id OUTLINED_FUNCTION_266_1()
{

  return outlined copy of Participant.RemoteIdentifiers?(v0);
}

uint64_t OUTLINED_FUNCTION_267_1()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_268_1()
{
  *(v1 - 240) = v0;

  return _s15ConversationKit11ParticipantV5StateOWOcTm_0();
}

uint64_t OUTLINED_FUNCTION_270_2()
{

  return outlined destroy of CallControlsService?(v1 - 144, v0);
}

id OUTLINED_FUNCTION_271_2()
{
  v3 = *(*(v1 - 112) + *(v0 + 48));

  return v3;
}

uint64_t OUTLINED_FUNCTION_272_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 184);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_273_0()
{

  return type metadata accessor for Participant.State(0);
}

void OUTLINED_FUNCTION_274()
{

  JUMPOUT(0x1BFB20B10);
}

ConversationKit::RemoteControlSuspensionReason_optional __swiftcall RemoteControlSuspensionReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RemoteControlState.associatedParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  switch(*v1 >> 61)
  {
    case 0:
      v10 = &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd;
      goto LABEL_8;
    case 1:
    case 2:
    case 3:
      goto LABEL_2;
    case 4:
      if (*((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 3)
      {
        goto LABEL_4;
      }

LABEL_2:
      v10 = &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd;
LABEL_8:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10);
      v13 = swift_projectBox();
      (*(v5 + 16))(v9, v13 + *(v12 + 48), v3);
      (*(v5 + 32))(a1, v9, v3);
      OUTLINED_FUNCTION_12();
      result = __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
      break;
    default:
LABEL_4:

      result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
      break;
  }

  return result;
}

uint64_t RemoteControlState.requestedParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 >> 61)
  {
    v11 = type metadata accessor for Participant();
    v8 = a1;
    v9 = 1;
    v10 = 1;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
    v4 = swift_projectBox();
    v5 = *(v3 + 48);
    v6 = type metadata accessor for Participant();
    OUTLINED_FUNCTION_7_0();
    (*(v7 + 16))(a1, v4 + v5, v6);
    OUTLINED_FUNCTION_12();
    v11 = v6;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void RemoteControlStateMachine.state.getter(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *a1 = v4;
  outlined copy of RemoteControlState(v4);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t RemoteControlState.remoteControlStatus.getter()
{
  result = 2;
  switch(*v0 >> 61)
  {
    case 2:
      result = 3;
      break;
    case 3:
      return result;
    case 4:
      v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61;
      v3 = 1;
      if (v2 == 3)
      {
        v3 = 2;
      }

      if (v2 == 2)
      {
        result = 3;
      }

      else
      {
        result = v3;
      }

      break;
    default:
      result = 1;
      break;
  }

  return result;
}

unint64_t RemoteControlStateMachine.init(isBroadcasting:)@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = 0xA000000000000008;
  }

  else
  {
    v3 = 0xA000000000000010;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15ConversationKit18RemoteControlStateOSo16os_unfair_lock_sVGMd);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *a2 = v3;
  a2[1] = v4;

  return outlined copy of RemoteControlState(v3);
}

uint64_t RemoteControlStateMachine.presentOnboardingForRemoteControlRequest(_:from:)()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of RemoteControlState(*v0);

  os_unfair_lock_lock(v2 + 6);
  _s15ConversationKit25RemoteControlStateMachineV07presentcD10Onboarding33_0BCF7F88D63589EF25F35873534EC5E8LL_4fromyAA0cD7RequestV_15GroupActivities11ParticipantVtKFyAA0cdE0OzYbKXEfU_TA_0();
  os_unfair_lock_unlock(v2 + 6);
  outlined consume of RemoteControlState(v1);
}

void RemoteControlStateMachine.validateOutgoingMessage(_:to:)()
{
  OUTLINED_FUNCTION_57_4();
  v8 = OUTLINED_FUNCTION_39_24(v6, v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v65[0] = v11 - v10;
  v12 = OUTLINED_FUNCTION_4_24();
  v13 = type metadata accessor for RemoteControlResponse(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for RemoteControlRequest(0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_42_27();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_59(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_18_57();
      v51 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v0, v17, v50);
      v52 = *v1;
      v53 = v1[1];
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_4_133();
      *(v54 - 32) = v55;
      *(v54 - 24) = v17;
      *(v54 - 16) = v52;
      *(v54 - 8) = v53;
      outlined copy of RemoteControlState(v52);

      os_unfair_lock_lock(v53 + 6);
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingRemoteControlResponse(_:to:)();
      os_unfair_lock_unlock(v53 + 6);
      outlined consume of RemoteControlState(v52);

      v31 = v17;
      v32 = v2;
      goto LABEL_9;
    case 2:
      v39 = OUTLINED_FUNCTION_0_190();
      _s15ConversationKit20RemoteControlRequestVWObTm_0(v39, v5, v40);
      OUTLINED_FUNCTION_24_46();
      MEMORY[0x1EEE9AC00](v41);
      OUTLINED_FUNCTION_4_133();
      *(v42 - 32) = v43;
      *(v42 - 24) = v5;
      OUTLINED_FUNCTION_16_63(v42);
      os_unfair_lock_lock(v2 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingCancellation(_:to:)();
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      OUTLINED_FUNCTION_2_149();
      v31 = v5;
      goto LABEL_9;
    case 3:
      v44 = OUTLINED_FUNCTION_0_190();
      _s15ConversationKit20RemoteControlRequestVWObTm_0(v44, v4, v45);
      OUTLINED_FUNCTION_24_46();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_4_133();
      *(v47 - 32) = v4;
      *(v47 - 24) = v48;
      OUTLINED_FUNCTION_16_63(v47);
      os_unfair_lock_lock(v2 + 6);
      v49 = OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingEndRequest(_:to:)(v49);
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      v38 = type metadata accessor for RemoteControlRequest;
      goto LABEL_6;
    case 4:
      v33 = OUTLINED_FUNCTION_17_60();
      v35 = *v1;
      v34 = v1[1];
      MEMORY[0x1EEE9AC00](v33);
      OUTLINED_FUNCTION_4_133();
      *(v36 - 32) = v4;
      *(v36 - 24) = v37;
      *(v36 - 16) = v35;
      *(v36 - 8) = v34;
      outlined copy of RemoteControlState(v35);

      os_unfair_lock_lock(v34 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingSuspendRequest(_:to:)();
      OUTLINED_FUNCTION_32_25();
      outlined consume of RemoteControlState(v35);

      v38 = type metadata accessor for RemoteControlSuspendRequest;
LABEL_6:
      v32 = v38;
      v31 = v4;
      goto LABEL_9;
    case 5:
      v56 = OUTLINED_FUNCTION_0_190();
      v58 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v56, v3, v57);
      v59 = v1[1];
      MEMORY[0x1EEE9AC00](v58);
      OUTLINED_FUNCTION_4_133();
      *(v60 - 32) = v3;
      *(v60 - 24) = v61;
      OUTLINED_FUNCTION_16_63(v60);
      os_unfair_lock_lock(v59 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingResumeRequest(_:to:)();
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      OUTLINED_FUNCTION_2_149();
      v31 = v3;
      goto LABEL_9;
    case 6:
      v63 = *v1;
      v62 = v1[1];
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v65[-2] = v65[1];
      outlined copy of RemoteControlState(v63);

      os_unfair_lock_lock(v62 + 6);
      v64 = OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingPlaybackServerMessage(to:)(v64);
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_6_105();
      v28 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v0, v2, v27);
      v29 = *v1;
      v30 = v1[1];
      MEMORY[0x1EEE9AC00](v28);
      OUTLINED_FUNCTION_43_22(v65);
      os_unfair_lock_lock(v30 + 6);
      partial apply for closure #1 in RemoteControlStateMachine.validateOutgoingRemoteControlRequest(_:to:)();
      os_unfair_lock_unlock(v30 + 6);
      outlined consume of RemoteControlState(v29);

      v31 = v2;
      v32 = v23;
LABEL_9:
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v31, v32);
LABEL_10:
      OUTLINED_FUNCTION_51_2();
      return;
  }
}

void RemoteControlStateMachine.validateIncomingMessage(_:from:)()
{
  OUTLINED_FUNCTION_57_4();
  v8 = OUTLINED_FUNCTION_39_24(v6, v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v65[0] = v11 - v10;
  v12 = OUTLINED_FUNCTION_4_24();
  v13 = type metadata accessor for RemoteControlResponse(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for RemoteControlRequest(0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_42_27();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_59(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_18_57();
      v51 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v0, v17, v50);
      v52 = *v1;
      v53 = v1[1];
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_4_133();
      *(v54 - 32) = v17;
      *(v54 - 24) = v55;
      *(v54 - 16) = v52;
      *(v54 - 8) = v53;
      outlined copy of RemoteControlState(v52);

      os_unfair_lock_lock(v53 + 6);
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingRemoteControlResponse(_:from:)();
      os_unfair_lock_unlock(v53 + 6);
      outlined consume of RemoteControlState(v52);

      v31 = v17;
      v32 = v2;
      goto LABEL_9;
    case 2:
      v39 = OUTLINED_FUNCTION_0_190();
      _s15ConversationKit20RemoteControlRequestVWObTm_0(v39, v5, v40);
      OUTLINED_FUNCTION_24_46();
      MEMORY[0x1EEE9AC00](v41);
      OUTLINED_FUNCTION_4_133();
      *(v42 - 32) = v5;
      *(v42 - 24) = v43;
      OUTLINED_FUNCTION_16_63(v42);
      os_unfair_lock_lock(v2 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingCancellation(_:from:)();
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      OUTLINED_FUNCTION_2_149();
      v31 = v5;
      goto LABEL_9;
    case 3:
      v44 = OUTLINED_FUNCTION_0_190();
      _s15ConversationKit20RemoteControlRequestVWObTm_0(v44, v4, v45);
      OUTLINED_FUNCTION_24_46();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_4_133();
      *(v47 - 32) = v4;
      *(v47 - 24) = v48;
      OUTLINED_FUNCTION_16_63(v47);
      os_unfair_lock_lock(v2 + 6);
      v49 = OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingEndRequest(_:from:)(v49);
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      v38 = type metadata accessor for RemoteControlRequest;
      goto LABEL_6;
    case 4:
      v33 = OUTLINED_FUNCTION_17_60();
      v35 = *v1;
      v34 = v1[1];
      MEMORY[0x1EEE9AC00](v33);
      OUTLINED_FUNCTION_4_133();
      *(v36 - 32) = v4;
      *(v36 - 24) = v37;
      *(v36 - 16) = v35;
      *(v36 - 8) = v34;
      outlined copy of RemoteControlState(v35);

      os_unfair_lock_lock(v34 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingSuspendRequest(_:from:)();
      OUTLINED_FUNCTION_32_25();
      outlined consume of RemoteControlState(v35);

      v38 = type metadata accessor for RemoteControlSuspendRequest;
LABEL_6:
      v32 = v38;
      v31 = v4;
      goto LABEL_9;
    case 5:
      v56 = OUTLINED_FUNCTION_0_190();
      v58 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v56, v3, v57);
      v59 = v1[1];
      MEMORY[0x1EEE9AC00](v58);
      OUTLINED_FUNCTION_4_133();
      *(v60 - 32) = v3;
      *(v60 - 24) = v61;
      OUTLINED_FUNCTION_16_63(v60);
      os_unfair_lock_lock(v59 + 6);
      OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingResumeRequest(_:from:)();
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      OUTLINED_FUNCTION_2_149();
      v31 = v3;
      goto LABEL_9;
    case 6:
      v63 = *v1;
      v62 = v1[1];
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v65[-2] = v65[1];
      outlined copy of RemoteControlState(v63);

      os_unfair_lock_lock(v62 + 6);
      v64 = OUTLINED_FUNCTION_22_45();
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingPlaybackServerMessage(from:)(v64);
      OUTLINED_FUNCTION_32_25();
      OUTLINED_FUNCTION_28_46();
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_6_105();
      v28 = _s15ConversationKit20RemoteControlRequestVWObTm_0(v0, v2, v27);
      v29 = *v1;
      v30 = v1[1];
      MEMORY[0x1EEE9AC00](v28);
      OUTLINED_FUNCTION_43_22(v65);
      os_unfair_lock_lock(v30 + 6);
      partial apply for closure #1 in RemoteControlStateMachine.validateIncomingRemoteControlRequest(_:from:)();
      os_unfair_lock_unlock(v30 + 6);
      outlined consume of RemoteControlState(v29);

      v31 = v2;
      v32 = v23;
LABEL_9:
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v31, v32);
LABEL_10:
      OUTLINED_FUNCTION_51_2();
      return;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RemoteControlSuspensionReason@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteControlSuspensionReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static RemoteControlState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v143 = v7;
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v138 = v8 - v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v142 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v137 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v141 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v136 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v140 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v135 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v135 - v23;
  v24 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RemoteControlRequest(v24);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v135 - v34);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v135 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v135 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v135 - v45);
  v47 = *a1;
  v48 = *a2;
  v49 = v47;
  switch(v47 >> 61)
  {
    case 1uLL:
      if (v48 >> 61 != 1)
      {
        goto LABEL_37;
      }

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v106 = swift_projectBox();
      v107 = *(v105 + 48);
      swift_projectBox();
      OUTLINED_FUNCTION_14_63();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v106, v39, v108);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v105, v3, v46);
      v109 = *(v143 + 16);
      v110 = v106 + v107;
      v111 = v144;
      v109(v140, v110, v144);
      v112 = v105 + v107;
      v113 = v136;
      v109(v136, v112, v111);
      outlined copy of RemoteControlState(v48);
      outlined copy of RemoteControlState(v49);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        v114 = v140;
        v68 = MEMORY[0x1BFB1AFF0](v140, v113);
        v115 = *(v143 + 8);
        v116 = v113;
        v117 = v144;
        v115(v116, v144);
        v115(v114, v117);
        OUTLINED_FUNCTION_3_139();
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v3, v118);
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v39, v115);
        v88 = v49;
        goto LABEL_22;
      }

      v131 = v144;
      v132 = *(v143 + 8);
      v132(v113, v144);
      v132(v140, v131);
      OUTLINED_FUNCTION_3_139();
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v3, v133);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v39, v132);
      goto LABEL_38;
    case 2uLL:
      v140 = v44;
      if (v48 >> 61 != 2)
      {
        goto LABEL_37;
      }

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v74 = swift_projectBox();
      v75 = *(v73 + 48);
      swift_projectBox();
      OUTLINED_FUNCTION_14_63();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v74, v35, v76);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v73, v2, v46);
      v77 = v143;
      v78 = v49;
      v79 = *(v143 + 16);
      v80 = v74 + v75;
      v81 = v144;
      v79(v141, v80, v144);
      v82 = v73 + v75;
      v83 = v137;
      v79(v137, v82, v81);
      outlined copy of RemoteControlState(v48);
      outlined copy of RemoteControlState(v78);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        v84 = OUTLINED_FUNCTION_39_5();
        v68 = MEMORY[0x1BFB1AFF0](v84);
        v85 = *(v77 + 8);
        v85(v83, v144);
        v86 = OUTLINED_FUNCTION_39_5();
        (v85)(v86);
        OUTLINED_FUNCTION_3_139();
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v2, v87);
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v35, v85);
        v88 = v78;
        goto LABEL_22;
      }

      v120 = *(v77 + 8);
      v121 = v144;
      v120(v83, v144);
      v120(v141, v121);
      OUTLINED_FUNCTION_3_139();
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v2, v122);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v35, v120);
      v123 = v78;
      goto LABEL_39;
    case 3uLL:
      v140 = v44;
      if (v48 >> 61 != 3)
      {
        goto LABEL_37;
      }

      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v90 = swift_projectBox();
      v91 = *(v89 + 48);
      v92 = swift_projectBox();
      OUTLINED_FUNCTION_21_54();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v90, v31, v93);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v92, v28, v35);
      v94 = v143;
      v95 = v49;
      v96 = *(v143 + 16);
      v97 = v90 + v91;
      v98 = v144;
      v96(v142, v97, v144);
      v99 = v92 + v91;
      v100 = v138;
      v96(v138, v99, v98);
      v62 = v95;
      outlined copy of RemoteControlState(v48);
      outlined copy of RemoteControlState(v95);
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        v124 = *(v94 + 8);
        v125 = v144;
        v124(v100, v144);
        v124(v142, v125);
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v28, type metadata accessor for RemoteControlRequest);
        v126 = v31;
        v127 = type metadata accessor for RemoteControlRequest;
        goto LABEL_30;
      }

      v101 = v142;
      v68 = MEMORY[0x1BFB1AFF0](v142, v100);
      v102 = *(v94 + 8);
      v103 = v100;
      v104 = v144;
      v102(v103, v144);
      v102(v101, v104);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v28, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v31, type metadata accessor for RemoteControlRequest);
      v88 = v95;
LABEL_22:
      outlined consume of RemoteControlState(v88);
      outlined consume of RemoteControlState(v48);
      return v68 & 1;
    case 4uLL:
      if (v48 >> 61 != 4)
      {
        goto LABEL_37;
      }

      v69 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v145 = *((v48 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v146 = v70;
      outlined copy of RemoteControlState(v48);
      outlined copy of RemoteControlState(v49);
      v72 = static RemoteControlState.== infix(_:_:)(&v146, &v145);
      outlined consume of RemoteControlState(v49);
      outlined consume of RemoteControlState(v48);
      if ((v72 & 1) == 0)
      {
        goto LABEL_40;
      }

      v68 = v69 == v71;
      return v68 & 1;
    case 5uLL:
      if (v47 == 0xA000000000000000)
      {
        if (v48 == 0xA000000000000000)
        {
          outlined consume of RemoteControlState(0xA000000000000000);
          v119 = 0xA000000000000000;
          goto LABEL_36;
        }
      }

      else if (v47 == 0xA000000000000008)
      {
        if (v48 == 0xA000000000000008)
        {
          outlined consume of RemoteControlState(0xA000000000000008);
          v119 = 0xA000000000000008;
LABEL_36:
          outlined consume of RemoteControlState(v119);
          v68 = 1;
          return v68 & 1;
        }
      }

      else if (v48 == 0xA000000000000010)
      {
        outlined consume of RemoteControlState(0xA000000000000010);
        v119 = 0xA000000000000010;
        goto LABEL_36;
      }

LABEL_37:
      outlined copy of RemoteControlState(v48);
      outlined copy of RemoteControlState(v49);
LABEL_38:
      v123 = v49;
LABEL_39:
      outlined consume of RemoteControlState(v123);
      outlined consume of RemoteControlState(v48);
LABEL_40:
      v68 = 0;
      return v68 & 1;
    default:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
      v51 = swift_projectBox();
      if (v48 >> 61)
      {
        goto LABEL_37;
      }

      v52 = v51;
      v53 = *(v50 + 64);
      LODWORD(v142) = *(v53 + v51);
      v54 = *(v50 + 48);
      v55 = swift_projectBox();
      LODWORD(v141) = *(v53 + v55);
      OUTLINED_FUNCTION_21_54();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v52, v46, v56);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v55, v42, v53);
      v57 = *(v143 + 16);
      v58 = v52 + v54;
      v59 = v144;
      v57(v139, v58, v144);
      v60 = v55 + v54;
      v61 = v135;
      v57(v135, v60, v59);
      outlined copy of RemoteControlState(v48);
      v62 = v49;
      outlined copy of RemoteControlState(v49);
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        v128 = v144;
        v129 = *(v143 + 8);
        (v129)(v61, v144);
        (v129)(v139, v128);
        OUTLINED_FUNCTION_3_139();
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, v130);
        v126 = v46;
        v127 = v129;
LABEL_30:
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v126, v127);
        v123 = v62;
        goto LABEL_39;
      }

      v63 = v139;
      v64 = MEMORY[0x1BFB1AFF0](v139, v61);
      v65 = *(v143 + 8);
      v66 = v61;
      v67 = v144;
      v65(v66, v144);
      v65(v63, v67);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
      outlined consume of RemoteControlState(v49);
      outlined consume of RemoteControlState(v48);
      if ((v64 & 1) == 0)
      {
        goto LABEL_40;
      }

      v68 = v142 ^ v141 ^ 1;
      return v68 & 1;
  }
}

uint64_t RemoteControlState.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  type metadata accessor for RemoteControlRequest(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v58 - v19;
  v21 = *v1;
  switch(v21 >> 61)
  {
    case 1uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      swift_projectBox();
      OUTLINED_FUNCTION_1_154();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v47, v16, v48);
      v49 = OUTLINED_FUNCTION_12_80();
      v50(v49);
      v42 = 4;
      goto LABEL_7;
    case 2uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      swift_projectBox();
      OUTLINED_FUNCTION_1_154();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v38, v16, v39);
      v40 = OUTLINED_FUNCTION_12_80();
      v41(v40);
      v42 = 5;
      goto LABEL_7;
    case 3uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      swift_projectBox();
      OUTLINED_FUNCTION_1_154();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v43, v16, v44);
      v45 = OUTLINED_FUNCTION_12_80();
      v46(v45);
      v42 = 6;
LABEL_7:
      MEMORY[0x1BFB22640](v42);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_5_127();
      _s10Foundation4UUIDVACSHAAWlTm_7(v51, v52);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_20_54();
      _s10Foundation4UUIDVACSHAAWlTm_7(v53, v54);
      dispatch thunk of Hashable.hash(into:)();
      OUTLINED_FUNCTION_19_46();
      _s10Foundation4UUIDVACSHAAWlTm_7(v55, v56);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      (*(v5 + 8))(v9, v3);
      OUTLINED_FUNCTION_2_149();
      v34 = v16;
      goto LABEL_8;
    case 4uLL:
      v35 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x1BFB22640](7, v18);
      v58[1] = v35;
      RemoteControlState.hash(into:)(a1);
      v37 = v36;
      goto LABEL_14;
    case 5uLL:
      if (v21 == 0xA000000000000000)
      {
        v37 = 0;
      }

      else if (v21 == 0xA000000000000008)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

LABEL_14:
      result = MEMORY[0x1BFB22640](v37);
      break;
    default:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
      v23 = swift_projectBox();
      v24 = *(v22 + 48);
      LOBYTE(v22) = *(v23 + *(v22 + 64));
      OUTLINED_FUNCTION_1_154();
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v25, v20, v26);
      (*(v5 + 16))(v12, v23 + v24, v3);
      MEMORY[0x1BFB22640](3);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_5_127();
      _s10Foundation4UUIDVACSHAAWlTm_7(v27, v28);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_20_54();
      _s10Foundation4UUIDVACSHAAWlTm_7(v29, v30);
      dispatch thunk of Hashable.hash(into:)();
      OUTLINED_FUNCTION_19_46();
      _s10Foundation4UUIDVACSHAAWlTm_7(v31, v32);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(v22);
      (*(v5 + 8))(v12, v3);
      OUTLINED_FUNCTION_2_149();
      v34 = v20;
LABEL_8:
      result = _s15ConversationKit20RemoteControlRequestVWOhTm_0(v34, v33);
      break;
  }

  return result;
}

Swift::Int RemoteControlState.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  RemoteControlState.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlState()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  RemoteControlState.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int RemoteControlStateMachine.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteControlStateMachine.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RemoteControlStateMachine.Errors.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall RemoteControlStateMachine.reset()()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in RemoteControlStateMachine.reset()((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t closure #1 in RemoteControlStateMachine.reset()(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Log.screenSharing);
  outlined copy of RemoteControlState(a2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined consume of RemoteControlState(a2);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = v14;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001BC4E0BA0, v15);
    *(v9 + 12) = 2080;
    v16 = a2;
    outlined copy of RemoteControlState(a2);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v15);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Resetting %s to initial state %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v15[0] = a2;
  v15[1] = a3;
  v16 = a2;
  outlined copy of RemoteControlState(a2);
  RemoteControlStateMachine.transformState(_:to:)(a1, &v16);
  return outlined consume of RemoteControlState(v16);
}

unint64_t RemoteControlStateMachine.transformState(_:to:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.screenSharing);
  outlined copy of RemoteControlState(v4);
  outlined copy of RemoteControlState(v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined consume of RemoteControlState(v4);
  outlined consume of RemoteControlState(v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    outlined copy of RemoteControlState(v4);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    outlined copy of RemoteControlState(v3);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Transforming state machine from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    outlined consume of RemoteControlState(v4);
  }

  else
  {

    outlined consume of RemoteControlState(v4);
  }

  *a1 = v3;
  return outlined copy of RemoteControlState(v3);
}

unint64_t closure #1 in RemoteControlStateMachine.validateIncomingRemoteControlRequest(_:from:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (v6 == 0xA000000000000008)
  {
    v19 = a2;
    v20 = a3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = *(v9 + 48);
    v14 = *(v9 + 64);
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(a4, v11, type metadata accessor for RemoteControlRequest);
    v15 = type metadata accessor for Participant();
    (*(*(v15 - 8) + 16))(v12 + v13, a5, v15);
    *(v12 + v14) = 0;
    v18 = v10;
    RemoteControlStateMachine.transformState(_:to:)(a1, &v18);
    return outlined consume of RemoteControlState(v18);
  }

  else
  {
    v19 = a2;
    v20 = a3;
    v18 = v6;
    outlined copy of RemoteControlState(v6);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v18);
    outlined consume of RemoteControlState(v18);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }
}

void RemoteControlStateMachine.logInvalidTransition(_:)(unint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.screenSharing);
  outlined copy of RemoteControlState(v1);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  outlined consume of RemoteControlState(v1);
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    outlined copy of RemoteControlState(v1);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Invalid state transition request actual:%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }

  else
  {
  }
}

unint64_t closure #1 in RemoteControlStateMachine.presentRemoteControlOnboarding(_:from:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (v6 >> 61)
  {
    v21 = a2;
    v22 = a3;
    v20 = v6;
    outlined copy of RemoteControlState(v6);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v20);
    outlined consume of RemoteControlState(v20);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    OUTLINED_FUNCTION_19_6();
    *v19 = 2;
    return swift_willThrow();
  }

  else
  {
    v21 = a2;
    v22 = a3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = *(v9 + 48);
    v14 = *(v9 + 64);
    OUTLINED_FUNCTION_1_154();
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(a4, v15, v16);
    type metadata accessor for Participant();
    OUTLINED_FUNCTION_7_0();
    (*(v17 + 16))(v12 + v13, a5);
    *(v12 + v14) = 1;
    v20 = v10;
    RemoteControlStateMachine.transformState(_:to:)(a1, &v20);
    return outlined consume of RemoteControlState(v20);
  }
}

uint64_t closure #1 in RemoteControlStateMachine.validateIncomingRemoteControlResponse(_:from:)(unint64_t *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v125 = a3;
  v127 = a2;
  v8 = type metadata accessor for RemoteControlResponse(0);
  MEMORY[0x1EEE9AC00](v8);
  v126 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v114 - v11;
  v13 = type metadata accessor for Participant();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v114 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v114 - v19;
  v21 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v114 - v24;
  v120 = a1;
  v26 = *a1;
  if (v26 >> 61 != 1)
  {
    v130 = a4;
    v131 = a5;
    v132 = v26;
    outlined copy of RemoteControlState(v26);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v132);
    outlined consume of RemoteControlState(v132);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v47 = 2;
    return swift_willThrow();
  }

  v115 = v12;
  v116 = v23;
  v114 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v28 = swift_projectBox();
  v128 = v26;
  v129 = v20;
  v29 = v14;
  v30 = v28;
  v31 = v13;
  v32 = *(v27 + 48);
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v28, v25, type metadata accessor for RemoteControlRequest);
  v118 = v29;
  v33 = *(v29 + 16);
  v34 = (v30 + v32);
  v35 = v129;
  v122 = v31;
  v117 = v33;
  v33(v129, v34, v31);

  v36 = v127;
  v123 = v25;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, &static Log.screenSharing);
    v50 = v126;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v36, v126, type metadata accessor for RemoteControlResponse);
    v51 = v123;
    v52 = v116;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v123, v116, type metadata accessor for RemoteControlRequest);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v130 = v127;
      *v55 = 136315394;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v50, type metadata accessor for RemoteControlResponse);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v130);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v51 = v123;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v52, type metadata accessor for RemoteControlRequest);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v130);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_1BBC58000, v53, v54, "Response.requestUUID != request.uuid (%s != %s", v55, 0x16u);
      v64 = v127;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v64, -1, -1);
      v65 = v55;
      v66 = v128;
      MEMORY[0x1BFB23DF0](v65, -1, -1);
    }

    else
    {

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v52, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v50, type metadata accessor for RemoteControlResponse);
      v66 = v128;
    }

    v67 = v129;
    v110 = v118;
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v111 = 1;
    swift_willThrow();
    (*(v110 + 8))(v67, v122);
    _s15ConversationKit20RemoteControlRequestVWOhTm_0(v51, type metadata accessor for RemoteControlRequest);
    v112 = v66;
    return outlined consume of RemoteControlState(v112);
  }

  v37 = v125;
  if ((MEMORY[0x1BFB1AFF0](v35, v125) & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, &static Log.screenSharing);
    v70 = v121;
    v69 = v122;
    v71 = v117;
    v117(v121, v37, v122);
    v72 = v124;
    v71(v124, v129, v69);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v115;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v120 = v77;
      v127 = swift_slowAlloc();
      v130 = v127;
      *v77 = 136315394;
      v78 = v122;
      v71(v76, v70, v122);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v78);
      specialized >> prefix<A>(_:)(v76, v79, v80, v81, v82, v83, v84, v85, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      v87 = v86;
      LODWORD(v126) = v74;
      v88 = v70;
      v90 = v89;
      outlined destroy of Participant?(v76);
      v125 = v73;
      v91 = *(v118 + 8);
      v91(v88, v78);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v90, &v130);

      v93 = v120;
      *(v120 + 4) = v92;
      *(v93 + 6) = 2080;
      v94 = v124;
      v117(v76, v124, v78);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v78);
      specialized >> prefix<A>(_:)(v76, v95, v96, v97, v98, v99, v100, v101, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      v103 = v102;
      v105 = v104;
      outlined destroy of Participant?(v76);
      v91(v94, v78);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v130);

      *(v93 + 14) = v106;
      v107 = v125;
      _os_log_impl(&dword_1BBC58000, v125, v126, "Rejecting remoteControlResponse from: %s since it mismatches the participant we requested control from: %s", v93, 0x16u);
      v108 = v127;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v108, -1, -1);
      v109 = v128;
      MEMORY[0x1BFB23DF0](v93, -1, -1);
    }

    else
    {

      v78 = v122;
      v91 = *(v118 + 8);
      v91(v72, v122);
      v91(v70, v78);
      v109 = v128;
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v113 = 0;
    swift_willThrow();
    v91(v129, v78);
    _s15ConversationKit20RemoteControlRequestVWOhTm_0(v123, type metadata accessor for RemoteControlRequest);
    v112 = v109;
    return outlined consume of RemoteControlState(v112);
  }

  if (*(v36 + *(v8 + 28)) == 1)
  {
    v130 = v114;
    v131 = a5;
    v38 = swift_allocBox();
    v40 = v39;
    v41 = *(v27 + 48);
    v42 = v123;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v123, v39, type metadata accessor for RemoteControlRequest);
    v43 = (v40 + v41);
    v44 = v129;
    v45 = v122;
    v117(v43, v129, v122);
    v132 = v38 | 0x4000000000000000;
    RemoteControlStateMachine.transformState(_:to:)(v120, &v132);
    outlined consume of RemoteControlState(v132);
    (*(v118 + 8))(v44, v45);
    v46 = v42;
  }

  else
  {
    v130 = v114;
    v131 = a5;
    v132 = v114;
    outlined copy of RemoteControlState(v114);
    RemoteControlStateMachine.transformState(_:to:)(v120, &v132);
    outlined consume of RemoteControlState(v132);
    (*(v118 + 8))(v129, v122);
    v46 = v123;
  }

  _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
  return outlined consume of RemoteControlState(v128);
}

uint64_t closure #1 in RemoteControlStateMachine.validateIncomingCancellation(_:from:)(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v107 = a3;
  v108 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v96 - v9;
  v11 = type metadata accessor for Participant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  v19 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v96 - v24;
  v102 = a1;
  v26 = *a1;
  if (v26 >> 61)
  {
    v110 = a4;
    v111 = a5;
    v112 = v26;
    outlined copy of RemoteControlState(v26);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v112);
    outlined consume of RemoteControlState(v112);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v37 = 2;
    return swift_willThrow();
  }

  v98 = a4;
  v99 = v23;
  v100 = v22;
  v97 = v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
  v28 = swift_projectBox();
  v109 = v26;
  v29 = v28;
  v104 = v11;
  v30 = *(v27 + 48);
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v28, v25, type metadata accessor for RemoteControlRequest);
  v101 = v12;
  v31 = v29 + v30;
  v32 = v104;
  v33 = *(v12 + 16);
  v33(v18, v31, v104);

  v103 = v25;
  v34 = v108;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v107 = v18;
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, &static Log.screenSharing);
    v40 = v99;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v34, v99, type metadata accessor for RemoteControlRequest);
    v41 = v103;
    v42 = v100;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v103, v100, type metadata accessor for RemoteControlRequest);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v110 = v108;
      *v45 = 136315394;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v106) = v44;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v40, type metadata accessor for RemoteControlRequest);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v110);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v32 = v104;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v41 = v103;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, type metadata accessor for RemoteControlRequest);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v110);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_1BBC58000, v43, v106, "cancellationRequest.uuid != request.uuid (%s != %s", v45, 0x16u);
      v54 = v108;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v54, -1, -1);
      v55 = v109;
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

    else
    {

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v40, type metadata accessor for RemoteControlRequest);
      v55 = v109;
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
    (*(v101 + 8))(v107, v32);
    v94 = v41;
    goto LABEL_18;
  }

  v35 = v107;
  if ((MEMORY[0x1BFB1AFF0](v18, v107) & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, &static Log.screenSharing);
    v57 = v105;
    v58 = v33;
    v33(v105, v35, v32);
    v59 = v106;
    v107 = v18;
    v33(v106, v18, v32);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v57;
      v63 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v110 = v108;
      *v63 = 136315394;
      v102 = v60;
      v64 = v97;
      v58(v97, v62, v32);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v32);
      specialized >> prefix<A>(_:)(v64, v65, v66, v67, v68, v69, v70, v71, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v73 = v72;
      v75 = v74;
      outlined destroy of Participant?(v64);
      v100 = v58;
      v76 = *(v101 + 8);
      LODWORD(v101) = v61;
      v76(v105, v32);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v110);

      *(v63 + 4) = v77;
      *(v63 + 12) = 2080;
      v78 = v106;
      v100(v64, v106, v32);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v32);
      specialized >> prefix<A>(_:)(v64, v79, v80, v81, v82, v83, v84, v85, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v87 = v86;
      v89 = v88;
      outlined destroy of Participant?(v64);
      v76(v78, v32);
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v110);

      *(v63 + 14) = v90;
      v55 = v109;
      v91 = v102;
      _os_log_impl(&dword_1BBC58000, v102, v101, "Rejecting cancellationRequest from: %s since it mismatches the participant we requested control from: %s", v63, 0x16u);
      v92 = v108;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v92, -1, -1);
      MEMORY[0x1BFB23DF0](v63, -1, -1);
    }

    else
    {

      v76 = *(v101 + 8);
      v76(v59, v32);
      v76(v57, v32);
      v55 = v109;
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
    v76(v107, v32);
    v94 = v103;
LABEL_18:
    _s15ConversationKit20RemoteControlRequestVWOhTm_0(v94, type metadata accessor for RemoteControlRequest);
    v36 = v55;
    return outlined consume of RemoteControlState(v36);
  }

  v110 = v98;
  v111 = a5;
  v112 = v98;
  outlined copy of RemoteControlState(v98);
  RemoteControlStateMachine.transformState(_:to:)(v102, &v112);
  outlined consume of RemoteControlState(v112);
  (*(v101 + 8))(v18, v32);
  _s15ConversationKit20RemoteControlRequestVWOhTm_0(v103, type metadata accessor for RemoteControlRequest);
  v36 = v109;
  return outlined consume of RemoteControlState(v36);
}

unint64_t closure #1 in RemoteControlStateMachine.validateIncomingSuspendRequest(_:from:)(unint64_t *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a2;
  v113 = a5;
  v110 = a3;
  v106 = type metadata accessor for RemoteControlSuspendRequest(0);
  MEMORY[0x1EEE9AC00](v106);
  v111 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v102 - v9;
  v11 = type metadata accessor for Participant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - v17;
  v19 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v102 - v23;
  v108 = a1;
  v25 = *a1;
  v26 = *a1 >> 61;
  if (((1 << v26) & 0x2B) != 0 || v26 != 2 && *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 2)
  {
    v114 = a4;
    v115 = v113;
    v116 = v25;
    outlined copy of RemoteControlState(v25);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v116);
    outlined consume of RemoteControlState(v116);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    v28 = 2;
LABEL_3:
    *v27 = v28;
    return swift_willThrow();
  }

  v103 = v10;
  v30 = v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v32 = swift_projectBox();
  v33 = *(v31 + 48);
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v32, v24, type metadata accessor for RemoteControlRequest);
  v34 = v32 + v33;
  v35 = v30;
  v104 = *(v12 + 16);
  v105 = v12 + 16;
  v104(v18, v34, v30);
  v36 = v112;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    (*(v12 + 8))(v18, v35);
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, &static Log.screenSharing);
    v48 = v111;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v36, v111, type metadata accessor for RemoteControlSuspendRequest);
    _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v21, type metadata accessor for RemoteControlRequest);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v114 = v52;
      *v51 = 136315394;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v48;
      v56 = v55;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v54, type metadata accessor for RemoteControlSuspendRequest);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v56, &v114);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v21, type metadata accessor for RemoteControlRequest);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v114);

      *(v51 + 14) = v61;
      _os_log_impl(&dword_1BBC58000, v49, v50, "suspendRequest.uuid != request.uuid (%s != %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v52, -1, -1);
      MEMORY[0x1BFB23DF0](v51, -1, -1);
    }

    else
    {

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v21, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v48, type metadata accessor for RemoteControlSuspendRequest);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    v28 = 1;
    goto LABEL_3;
  }

  v37 = v12;
  v38 = v110;
  if ((MEMORY[0x1BFB1AFF0](v18, v110) & 1) == 0)
  {
    _s15ConversationKit20RemoteControlRequestVWOhTm_0(v24, type metadata accessor for RemoteControlRequest);
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, &static Log.screenSharing);
    v63 = v107;
    v64 = v38;
    v65 = v104;
    v104(v107, v64, v35);
    v66 = v109;
    (*(v12 + 32))(v109, v18, v35);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v103;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v112 = v67;
      v72 = v71;
      v113 = swift_slowAlloc();
      v114 = v113;
      *v72 = 136315394;
      v65(v70, v63, v35);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v35);
      specialized >> prefix<A>(_:)(v70, v73, v74, v75, v76, v77, v78, v79, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v81 = v80;
      LODWORD(v111) = v68;
      v82 = v66;
      v84 = v83;
      outlined destroy of Participant?(v70);
      v85 = *(v37 + 8);
      v85(v63, v35);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v84, &v114);

      *(v72 + 4) = v86;
      *(v72 + 12) = 2080;
      v104(v70, v82, v35);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v35);
      specialized >> prefix<A>(_:)(v70, v87, v88, v89, v90, v91, v92, v93, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      v95 = v94;
      v97 = v96;
      outlined destroy of Participant?(v70);
      v85(v82, v35);
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v114);

      *(v72 + 14) = v98;
      v99 = v112;
      _os_log_impl(&dword_1BBC58000, v112, v111, "Rejecting suspendRequest from: %s since it mismatches the participant we requested control from: %s", v72, 0x16u);
      v100 = v113;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v100, -1, -1);
      MEMORY[0x1BFB23DF0](v72, -1, -1);
    }

    else
    {

      v101 = *(v37 + 8);
      v101(v66, v35);
      v101(v63, v35);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    v28 = 0;
    goto LABEL_3;
  }

  (*(v12 + 8))(v18, v35);
  v114 = a4;
  v115 = v113;
  v39 = swift_allocObject();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v41 = v36;
  v42 = swift_allocBox();
  v43 = v38;
  v45 = v44;
  v46 = *(v40 + 48);
  _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v44, type metadata accessor for RemoteControlRequest);
  v104(v45 + v46, v43, v35);
  *(v39 + 16) = v42 | 0x4000000000000000;
  *(v39 + 24) = *(&v41->isa + *(v106 + 24));
  v116 = v39 | 0x8000000000000000;
  RemoteControlStateMachine.transformState(_:to:)(v108, &v116);
  return outlined consume of RemoteControlState(v116);
}

unint64_t closure #1 in RemoteControlStateMachine.validateIncomingResumeRequest(_:from:)(unint64_t *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v114 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v111 = &v104 - v9;
  v10 = type metadata accessor for Participant();
  v116 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v113 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v104 - v15;
  v16 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v104 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = *a1;
  if (*a1 >> 61 != 4 || *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 2)
  {
    v118 = a4;
    v119 = v117;
    v120 = v23;
    outlined copy of RemoteControlState(v23);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v120);
    outlined consume of RemoteControlState(v120);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v43 = 2;
    return swift_willThrow();
  }

  v106 = a1;
  v107 = v22;
  v108 = v23;
  v24 = &v104 - v21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v26 = swift_projectBox();
  v110 = v10;
  v105 = v25;
  v27 = *(v25 + 48);
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v26, v24, type metadata accessor for RemoteControlRequest);
  v28 = v26 + v27;
  v29 = a2;
  v30 = v115;
  v31 = v116 + 16;
  v32 = *(v116 + 16);
  v32(v115, v28, v110);

  v109 = v24;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, &static Log.screenSharing);
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v29, v19, type metadata accessor for RemoteControlRequest);
    v46 = v107;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v109, v107, type metadata accessor for RemoteControlRequest);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v110;
    if (v49)
    {
      v51 = swift_slowAlloc();
      LODWORD(v114) = v48;
      v52 = v51;
      v117 = swift_slowAlloc();
      v118 = v117;
      *v52 = 136315394;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v113 = v47;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v19, type metadata accessor for RemoteControlRequest);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v118);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = v115;
      v50 = v110;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v118);

      *(v52 + 14) = v61;
      v62 = v113;
      _os_log_impl(&dword_1BBC58000, v113, v114, "resumeRequest.uuid != request.uuid (%s != %s", v52, 0x16u);
      v63 = v117;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v63, -1, -1);
      MEMORY[0x1BFB23DF0](v52, -1, -1);
    }

    else
    {

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v19, type metadata accessor for RemoteControlRequest);
      v57 = v30;
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v102 = 1;
    swift_willThrow();
    (*(v116 + 8))(v57, v50);
    goto LABEL_19;
  }

  v33 = v114;
  if ((MEMORY[0x1BFB1AFF0](v30, v114) & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, &static Log.screenSharing);
    v65 = v112;
    v66 = v33;
    v67 = v110;
    v32(v112, v66, v110);
    v68 = v113;
    v32(v113, v30, v67);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v106 = v71;
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315394;
      v72 = v111;
      v32(v111, v65, v67);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v67);
      specialized >> prefix<A>(_:)(v72, v73, v74, v75, v76, v77, v78, v79, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      v104 = v32;
      v105 = v31;
      v114 = v69;
      v81 = v80;
      v83 = v82;
      outlined destroy of Participant?(v72);
      LODWORD(v107) = v70;
      v84 = *(v116 + 8);
      v84(v65, v67);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v118);

      v86 = v106;
      *(v106 + 4) = v85;
      *(v86 + 6) = 2080;
      v87 = v113;
      v104(v72, v113, v67);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v67);
      specialized >> prefix<A>(_:)(v72, v88, v89, v90, v91, v92, v93, v94, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      v96 = v95;
      v98 = v97;
      outlined destroy of Participant?(v72);
      v84(v87, v67);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v118);

      *(v86 + 14) = v99;
      v100 = v114;
      _os_log_impl(&dword_1BBC58000, v114, v107, "Rejecting resumeRequest from: %s since it mismatches the participant we requested control from: %s", v86, 0x16u);
      v101 = v117;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v101, -1, -1);
      MEMORY[0x1BFB23DF0](v86, -1, -1);
    }

    else
    {

      v84 = *(v116 + 8);
      v84(v68, v67);
      v84(v65, v67);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v103 = 0;
    swift_willThrow();
    v84(v115, v67);
LABEL_19:
    v42 = v109;
    goto LABEL_20;
  }

  v118 = a4;
  v119 = v117;
  v34 = v105;
  v35 = swift_allocBox();
  v37 = v36;
  v38 = *(v34 + 48);
  v39 = v109;
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v109, v36, type metadata accessor for RemoteControlRequest);
  v40 = v33;
  v41 = v110;
  v32((v37 + v38), v40, v110);
  v120 = v35 | 0x4000000000000000;
  RemoteControlStateMachine.transformState(_:to:)(v106, &v120);
  outlined consume of RemoteControlState(v120);
  (*(v116 + 8))(v115, v41);
  v42 = v39;
LABEL_20:
  _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, type metadata accessor for RemoteControlRequest);
  return outlined consume of RemoteControlState(v108);
}

unint64_t closure #1 in RemoteControlStateMachine.validateOutgoingRemoteControlRequest(_:to:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (v6 == 0xA000000000000010)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = *(v9 + 48);
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(a4, v11, type metadata accessor for RemoteControlRequest);
    v14 = type metadata accessor for Participant();
    (*(*(v14 - 8) + 16))(v12 + v13, a5, v14);
    v17 = v10 | 0x2000000000000000;
    RemoteControlStateMachine.transformState(_:to:)(a1, &v17);
    return outlined consume of RemoteControlState(v17);
  }

  else
  {
    v17 = v6;
    outlined copy of RemoteControlState(v6);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v17);
    outlined consume of RemoteControlState(v17);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }
}

unint64_t closure #1 in RemoteControlStateMachine.validateOutgoingRemoteControlResponse(_:to:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v105 = a5;
  v106 = a4;
  v101 = a3;
  v103 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v95 - v7;
  v9 = type metadata accessor for RemoteControlResponse(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Participant();
  v104 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  v20 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v95 - v23;
  v100 = a1;
  v25 = *a1;
  switch(v25 >> 61)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
      goto LABEL_2;
    case 4uLL:
      if (*((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 3)
      {
LABEL_2:
        v107 = v106;
        v108 = v105;
        v109 = v25;
        outlined copy of RemoteControlState(v25);
        RemoteControlStateMachine.logInvalidTransition(_:)(&v109);
        outlined consume of RemoteControlState(v109);
        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        v27 = 2;
LABEL_3:
        *v26 = v27;
        return swift_willThrow();
      }

      v96 = v22;
      v97 = v11;
      v98 = v8;
      v29 = &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd;
LABEL_7:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
      v31 = swift_projectBox();
      v32 = *(v30 + 48);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v31, v24, type metadata accessor for RemoteControlRequest);
      v33 = v104;
      v34 = (v31 + v32);
      v35 = v104 + 16;
      v99 = *(v104 + 16);
      v99(v19, v34, v12);
      v36 = v103;
      if ((MEMORY[0x1BFB1AFF0](v19, v103) & 1) == 0)
      {
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v24, type metadata accessor for RemoteControlRequest);
        if (one-time initialization token for screenSharing != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, &static Log.screenSharing);
        v44 = v99;
        v99(v16, v36, v12);
        v45 = v104;
        v46 = v102;
        (*(v104 + 32))(v102, v19, v12);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        v49 = os_log_type_enabled(v47, v48);
        v50 = v98;
        if (v49)
        {
          v51 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = v106;
          *v51 = 136315394;
          v44(v50, v16, v12);
          __swift_storeEnumTagSinglePayload(v50, 0, 1, v12);
          specialized >> prefix<A>(_:)(v50, v52, v53, v54, v55, v56, v57, v58, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
          v103 = v35;
          v60 = v59;
          v62 = v61;
          outlined destroy of Participant?(v50);
          LODWORD(v105) = v48;
          v63 = *(v45 + 8);
          v63(v16, v12);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v107);

          *(v51 + 4) = v64;
          *(v51 + 12) = 2080;
          v65 = v102;
          v99(v50, v102, v12);
          __swift_storeEnumTagSinglePayload(v50, 0, 1, v12);
          specialized >> prefix<A>(_:)(v50, v66, v67, v68, v69, v70, v71, v72, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
          v74 = v73;
          v76 = v75;
          outlined destroy of Participant?(v50);
          v63(v65, v12);
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v107);

          *(v51 + 14) = v77;
          _os_log_impl(&dword_1BBC58000, v47, v105, "Rejecting remoteControlResponse from: %s since it mismatches the participant we requested control from: %s", v51, 0x16u);
          v78 = v106;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v78, -1, -1);
          MEMORY[0x1BFB23DF0](v51, -1, -1);
        }

        else
        {

          v94 = *(v45 + 8);
          v94(v46, v12);
          v94(v16, v12);
        }

        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        v27 = 0;
        goto LABEL_3;
      }

      (*(v33 + 8))(v19, v12);
      v37 = v101;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        if (one-time initialization token for screenSharing != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        __swift_project_value_buffer(v79, &static Log.screenSharing);
        v80 = v97;
        _s15ConversationKit20RemoteControlMessageOWOcTm_0(v37, v97, type metadata accessor for RemoteControlResponse);
        v81 = v96;
        _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v96, type metadata accessor for RemoteControlRequest);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = v106;
          *v84 = 136315394;
          type metadata accessor for UUID();
          _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v86;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v80, type metadata accessor for RemoteControlResponse);
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v107);

          *(v84 + 4) = v88;
          *(v84 + 12) = 2080;
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v81, type metadata accessor for RemoteControlRequest);
          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v107);

          *(v84 + 14) = v92;
          _os_log_impl(&dword_1BBC58000, v82, v83, "Response.requestUUID != request.uuid (%s != %s", v84, 0x16u);
          v93 = v106;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v93, -1, -1);
          MEMORY[0x1BFB23DF0](v84, -1, -1);
        }

        else
        {

          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v81, type metadata accessor for RemoteControlRequest);
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v80, type metadata accessor for RemoteControlResponse);
        }

        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        v27 = 1;
        goto LABEL_3;
      }

      if (*(v37 + *(v9 + 28)) == 1)
      {
        v107 = v106;
        v108 = v105;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
        v39 = swift_allocBox();
        v41 = v40;
        v42 = *(v38 + 48);
        _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v40, type metadata accessor for RemoteControlRequest);
        v99(v41 + v42, v36, v12);
        v109 = v39 | 0x6000000000000000;
      }

      else
      {
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v24, type metadata accessor for RemoteControlRequest);
        v107 = v106;
        v108 = v105;
        v109 = v106;
        outlined copy of RemoteControlState(v106);
      }

      RemoteControlStateMachine.transformState(_:to:)(v100, &v109);
      return outlined consume of RemoteControlState(v109);
    default:
      v96 = v22;
      v97 = v11;
      v98 = v8;
      v29 = &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd;
      goto LABEL_7;
  }
}

unint64_t closure #1 in RemoteControlStateMachine.validateOutgoingCancellation(_:to:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v110 = a3;
  v113 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v103 - v9;
  v11 = type metadata accessor for Participant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v112 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - v17;
  v19 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v103 - v24;
  v108 = a1;
  v26 = *a1;
  if (v26 >> 61 == 1)
  {
    v103 = a5;
    v104 = v23;
    v105 = v22;
    v106 = v10;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
    v28 = swift_projectBox();
    v114 = v18;
    v29 = v28;
    v111 = v26;
    v30 = v11;
    v31 = *(v27 + 48);
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v28, v25, type metadata accessor for RemoteControlRequest);
    v107 = v12;
    v32 = *(v12 + 16);
    v33 = v29 + v31;
    v34 = v114;
    v35 = v30;
    v36 = v111;
    v32(v114, v33, v35);

    v37 = v113;
    if (MEMORY[0x1BFB1AFF0](v34, v113))
    {
      v38 = v110;
      if (static UUID.== infix(_:_:)())
      {
        v115 = a4;
        v116 = v103;
        v117 = a4;
        outlined copy of RemoteControlState(a4);
        RemoteControlStateMachine.transformState(_:to:)(v108, &v117);
        outlined consume of RemoteControlState(v117);
        (*(v107 + 8))(v34, v35);
      }

      else
      {
        if (one-time initialization token for screenSharing != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, &static Log.screenSharing);
        v81 = v38;
        v82 = v104;
        _s15ConversationKit20RemoteControlMessageOWOcTm_0(v81, v104, type metadata accessor for RemoteControlRequest);
        v83 = v105;
        _s15ConversationKit20RemoteControlMessageOWOcTm_0(v25, v105, type metadata accessor for RemoteControlRequest);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v112 = v84;
          v87 = v86;
          v113 = swift_slowAlloc();
          v115 = v113;
          *v87 = 136315394;
          type metadata accessor for UUID();
          v110 = v25;
          _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          LODWORD(v109) = v85;
          v88 = dispatch thunk of CustomStringConvertible.description.getter();
          v90 = v89;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v82, type metadata accessor for RemoteControlRequest);
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v115);
          v36 = v111;

          *(v87 + 4) = v91;
          *(v87 + 12) = 2080;
          v92 = v110;
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v94;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v83, type metadata accessor for RemoteControlRequest);
          v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v115);
          v25 = v92;

          *(v87 + 14) = v96;
          v97 = v112;
          _os_log_impl(&dword_1BBC58000, v112, v109, "cancellationRequest.uuid != request.uuid (%s != %s", v87, 0x16u);
          v98 = v113;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v98, -1, -1);
          MEMORY[0x1BFB23DF0](v87, -1, -1);
        }

        else
        {

          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v83, type metadata accessor for RemoteControlRequest);
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v82, type metadata accessor for RemoteControlRequest);
        }

        v101 = v114;
        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        *v102 = 1;
        swift_willThrow();
        (*(v107 + 8))(v101, v35);
      }

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v25, type metadata accessor for RemoteControlRequest);
      v100 = v36;
    }

    else
    {
      v110 = v25;
      if (one-time initialization token for screenSharing != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, &static Log.screenSharing);
      v42 = v109;
      v32(v109, v37, v35);
      v43 = v112;
      v32(v112, v114, v35);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v32;
      v48 = v106;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v104 = v49;
        v113 = swift_slowAlloc();
        v115 = v113;
        *v49 = 136315394;
        v47(v48, v42, v35);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v35);
        specialized >> prefix<A>(_:)(v48, v50, v51, v52, v53, v54, v55, v56, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        v103 = v47;
        v57 = v42;
        v59 = v58;
        v61 = v60;
        outlined destroy of Participant?(v48);
        v108 = v44;
        LODWORD(v105) = v45;
        v62 = *(v107 + 8);
        v62(v57, v35);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v115);

        v64 = v104;
        *(v104 + 1) = v63;
        *(v64 + 12) = 2080;
        v65 = v112;
        v103(v48, v112, v35);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v35);
        specialized >> prefix<A>(_:)(v48, v66, v67, v68, v69, v70, v71, v72, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        v74 = v73;
        v76 = v75;
        outlined destroy of Participant?(v48);
        v62(v65, v35);
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v115);

        *(v64 + 14) = v77;
        v78 = v108;
        _os_log_impl(&dword_1BBC58000, v108, v105, "Rejecting remoteControlResponse from: %s since it mismatches the participant we requested control from: %s", v64, 0x16u);
        v79 = v113;
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v79, -1, -1);
        MEMORY[0x1BFB23DF0](v64, -1, -1);
      }

      else
      {

        v62 = *(v107 + 8);
        v62(v43, v35);
        v62(v42, v35);
      }

      lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
      swift_allocError();
      *v99 = 0;
      swift_willThrow();
      v62(v114, v35);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v110, type metadata accessor for RemoteControlRequest);
      v100 = v111;
    }

    return outlined consume of RemoteControlState(v100);
  }

  else
  {
    v115 = a4;
    v116 = a5;
    v117 = v26;
    outlined copy of RemoteControlState(v26);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v117);
    outlined consume of RemoteControlState(v117);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v39 = 2;
    return swift_willThrow();
  }
}

void closure #1 in RemoteControlStateMachine.validateIncomingEndRequest(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v142 = v25;
  v143 = v24;
  v140 = v27;
  v141 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v132 - v32;
  OUTLINED_FUNCTION_4_24();
  v33 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v139 = v37 - v38;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v138 = v40;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v132 - v42);
  v44 = type metadata accessor for RemoteControlRequest(0);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v132 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v132 - v51;
  v53 = *v29;
  v54 = 1 << (*v29 >> 61);
  if ((v54 & 0x23) != 0 || (v54 & 0xC) == 0 && *((v53 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 62 != 1)
  {
    v144 = v143;
    v145 = v142;
    a10 = v53;
    outlined copy of RemoteControlState(v53);
    RemoteControlStateMachine.logInvalidTransition(_:)(&a10);
    outlined consume of RemoteControlState(a10);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    OUTLINED_FUNCTION_19_6();
    v56 = 2;
LABEL_21:
    *v55 = v56;
    swift_willThrow();
    goto LABEL_22;
  }

  v135 = v50;
  v133 = v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v136 = v33;
  v58 = v57;
  v59 = swift_projectBox();
  v60 = *(v58 + 48);
  OUTLINED_FUNCTION_1_154();
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v61, v52, v62);
  v63 = v59 + v60;
  v64 = v136;
  v134 = *(v35 + 16);
  v134(v43, v63, v136);
  v65 = v141;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    (*(v35 + 8))(v43, v64);
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, &static Log.screenSharing);
    OUTLINED_FUNCTION_1_154();
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v65, v48, v68);
    v69 = OUTLINED_FUNCTION_0_190();
    v70 = v135;
    _s15ConversationKit20RemoteControlRequestVWObTm_0(v69, v135, v71);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v144 = v143;
      *v74 = 136315394;
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_5_127();
      _s10Foundation4UUIDVACSHAAWlTm_7(v75, v76);
      LODWORD(v142) = v73;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      OUTLINED_FUNCTION_6_105();
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v48, v80);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v144);

      *(v74 + 4) = v81;
      *(v74 + 12) = 2080;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v70, v43);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v144);

      *(v74 + 14) = v85;
      _os_log_impl(&dword_1BBC58000, v72, v142, "endRequest.uuid != request.uuid (%s != %s", v74, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_3_139();
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v70, v130);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v48, v72);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    OUTLINED_FUNCTION_19_6();
    v56 = 1;
    goto LABEL_21;
  }

  _s15ConversationKit20RemoteControlRequestVWOhTm_0(v52, type metadata accessor for RemoteControlRequest);
  v66 = v140;
  if ((MEMORY[0x1BFB1AFF0](v43, v140) & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, &static Log.screenSharing);
    v87 = v138;
    v88 = v136;
    v89 = v134;
    v134(v138, v66, v136);
    v90 = v139;
    (*(v35 + 32))(v139, v43, v88);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      LODWORD(v142) = v92;
      v94 = v93;
      v140 = v93;
      v143 = swift_slowAlloc();
      v144 = v143;
      *v94 = 136315394;
      v141 = v91;
      v95 = v137;
      v89(v137, v87, v88);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v88);
      specialized >> prefix<A>(_:)(v95, v99, v100, v101, v102, v103, v104, v105, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
      v107 = v106;
      v109 = v108;
      outlined destroy of Participant?(v95);
      v110 = *(v35 + 8);
      v110(v87, v88);
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v144);

      v112 = v140;
      *(v140 + 4) = v111;
      *(v112 + 12) = 2080;
      v134(v95, v90, v88);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v88);
      specialized >> prefix<A>(_:)(v95, v116, v117, v118, v119, v120, v121, v122, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
      v124 = v123;
      v125 = v90;
      v127 = v126;
      outlined destroy of Participant?(v95);
      v110(v125, v88);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v127, &v144);

      *(v112 + 14) = v128;
      v129 = v141;
      _os_log_impl(&dword_1BBC58000, v141, v142, v133, v112, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v131 = *(v35 + 8);
      v131(v90, v88);
      v131(v87, v88);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    OUTLINED_FUNCTION_19_6();
    v56 = 0;
    goto LABEL_21;
  }

  (*(v35 + 8))(v43, v64);
  v144 = v143;
  v145 = v142;
  a10 = v143;
  outlined copy of RemoteControlState(v143);
  RemoteControlStateMachine.transformState(_:to:)(v29, &a10);
  outlined consume of RemoteControlState(a10);
LABEL_22:
  OUTLINED_FUNCTION_51_2();
}

unint64_t closure #1 in RemoteControlStateMachine.validateOutgoingSuspendRequest(_:to:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = a2;
  v109 = a5;
  v106 = a3;
  v102 = type metadata accessor for RemoteControlSuspendRequest(0);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v98 - v9;
  v11 = type metadata accessor for Participant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v98 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v98 - v17;
  v19 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v104 = a1;
  v25 = *a1;
  switch(*a1 >> 61)
  {
    case 3uLL:
      goto LABEL_5;
    case 4uLL:
      if (*((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 3)
      {
        goto LABEL_2;
      }

LABEL_5:
      v99 = v10;
      v29 = v11;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v31 = swift_projectBox();
      v32 = *(v30 + 48);
      _s15ConversationKit20RemoteControlMessageOWOcTm_0(v31, v24, type metadata accessor for RemoteControlRequest);
      v33 = v31 + v32;
      v34 = v29;
      v100 = *(v12 + 16);
      v101 = v12 + 16;
      v100(v18, v33, v29);
      v35 = v108;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        (*(v12 + 8))(v18, v34);
        if (one-time initialization token for screenSharing != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, &static Log.screenSharing);
        v47 = v107;
        _s15ConversationKit20RemoteControlMessageOWOcTm_0(v35, v107, type metadata accessor for RemoteControlSuspendRequest);
        _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v21, type metadata accessor for RemoteControlRequest);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v110 = v51;
          *v50 = 136315394;
          type metadata accessor for UUID();
          _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v53 = v47;
          v55 = v54;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v53, type metadata accessor for RemoteControlSuspendRequest);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, &v110);

          *(v50 + 4) = v56;
          *(v50 + 12) = 2080;
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v59 = v58;
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v21, type metadata accessor for RemoteControlRequest);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v110);

          *(v50 + 14) = v60;
          _os_log_impl(&dword_1BBC58000, v48, v49, "suspendRequest.uuid != request.uuid (%s != %s", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v51, -1, -1);
          MEMORY[0x1BFB23DF0](v50, -1, -1);
        }

        else
        {

          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v21, type metadata accessor for RemoteControlRequest);
          _s15ConversationKit20RemoteControlRequestVWOhTm_0(v47, type metadata accessor for RemoteControlSuspendRequest);
        }

        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        v27 = 1;
        goto LABEL_3;
      }

      v36 = v12;
      v37 = v106;
      if ((MEMORY[0x1BFB1AFF0](v18, v106) & 1) == 0)
      {
        _s15ConversationKit20RemoteControlRequestVWOhTm_0(v24, type metadata accessor for RemoteControlRequest);
        if (one-time initialization token for screenSharing != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, &static Log.screenSharing);
        v62 = v103;
        v63 = v100;
        v100(v103, v37, v34);
        v64 = v105;
        (*(v12 + 32))(v105, v18, v34);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          LODWORD(v108) = v66;
          v68 = v67;
          v109 = swift_slowAlloc();
          v110 = v109;
          *v68 = 136315394;
          v69 = v99;
          v63(v99, v62, v34);
          __swift_storeEnumTagSinglePayload(v69, 0, 1, v34);
          specialized >> prefix<A>(_:)(v69, v70, v71, v72, v73, v74, v75, v76, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
          v78 = v77;
          v80 = v79;
          outlined destroy of Participant?(v69);
          v81 = *(v36 + 8);
          v81(v62, v34);
          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v110);

          *(v68 + 4) = v82;
          *(v68 + 12) = 2080;
          v83 = v105;
          v100(v69, v105, v34);
          __swift_storeEnumTagSinglePayload(v69, 0, 1, v34);
          specialized >> prefix<A>(_:)(v69, v84, v85, v86, v87, v88, v89, v90, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
          v92 = v91;
          v94 = v93;
          outlined destroy of Participant?(v69);
          v81(v83, v34);
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v110);

          *(v68 + 14) = v95;
          _os_log_impl(&dword_1BBC58000, v65, v108, "Rejecting remoteControlResponse to: %s since it mismatches the participant we requested control from: %s", v68, 0x16u);
          v96 = v109;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v96, -1, -1);
          MEMORY[0x1BFB23DF0](v68, -1, -1);
        }

        else
        {

          v97 = *(v36 + 8);
          v97(v64, v34);
          v97(v62, v34);
        }

        lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
        swift_allocError();
        v27 = 0;
LABEL_3:
        *v26 = v27;
        return swift_willThrow();
      }

      (*(v12 + 8))(v18, v34);
      v110 = a4;
      v111 = v109;
      v38 = swift_allocObject();
      v39 = v35;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v41 = swift_allocBox();
      v42 = v37;
      v44 = v43;
      v45 = *(v40 + 48);
      _s15ConversationKit20RemoteControlRequestVWObTm_0(v24, v43, type metadata accessor for RemoteControlRequest);
      v100((v44 + v45), v42, v34);
      *(v38 + 16) = v41 | 0x6000000000000000;
      *(v38 + 24) = *(v39 + *(v102 + 24));
      v112 = v38 | 0x8000000000000000;
      RemoteControlStateMachine.transformState(_:to:)(v104, &v112);
      return outlined consume of RemoteControlState(v112);
    default:
LABEL_2:
      v110 = a4;
      v111 = v109;
      v112 = v25;
      outlined copy of RemoteControlState(v25);
      RemoteControlStateMachine.logInvalidTransition(_:)(&v112);
      outlined consume of RemoteControlState(v112);
      lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
      swift_allocError();
      v27 = 2;
      goto LABEL_3;
  }
}

unint64_t closure #1 in RemoteControlStateMachine.validateOutgoingResumeRequest(_:to:)(unint64_t *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v114 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v111 = &v104 - v9;
  v10 = type metadata accessor for Participant();
  v116 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v113 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v104 - v15;
  v16 = type metadata accessor for RemoteControlRequest(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v104 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = *a1;
  if (*a1 >> 61 != 4 || *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 != 3)
  {
    v118 = a4;
    v119 = v117;
    v120 = v23;
    outlined copy of RemoteControlState(v23);
    RemoteControlStateMachine.logInvalidTransition(_:)(&v120);
    outlined consume of RemoteControlState(v120);
    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v43 = 2;
    return swift_willThrow();
  }

  v106 = a1;
  v107 = v22;
  v108 = v23;
  v24 = &v104 - v21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v26 = swift_projectBox();
  v110 = v10;
  v105 = v25;
  v27 = *(v25 + 48);
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v26, v24, type metadata accessor for RemoteControlRequest);
  v28 = v26 + v27;
  v29 = a2;
  v30 = v115;
  v31 = v116 + 16;
  v32 = *(v116 + 16);
  v32(v115, v28, v110);

  v109 = v24;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, &static Log.screenSharing);
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v29, v19, type metadata accessor for RemoteControlRequest);
    v46 = v107;
    _s15ConversationKit20RemoteControlMessageOWOcTm_0(v109, v107, type metadata accessor for RemoteControlRequest);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v110;
    if (v49)
    {
      v51 = swift_slowAlloc();
      LODWORD(v114) = v48;
      v52 = v51;
      v117 = swift_slowAlloc();
      v118 = v117;
      *v52 = 136315394;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACSHAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v113 = v47;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v19, type metadata accessor for RemoteControlRequest);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v118);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = v115;
      v50 = v110;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v118);

      *(v52 + 14) = v61;
      v62 = v113;
      _os_log_impl(&dword_1BBC58000, v113, v114, "resumeRequest.uuid != request.uuid (%s != %s", v52, 0x16u);
      v63 = v117;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v63, -1, -1);
      MEMORY[0x1BFB23DF0](v52, -1, -1);
    }

    else
    {

      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v46, type metadata accessor for RemoteControlRequest);
      _s15ConversationKit20RemoteControlRequestVWOhTm_0(v19, type metadata accessor for RemoteControlRequest);
      v57 = v30;
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v102 = 1;
    swift_willThrow();
    (*(v116 + 8))(v57, v50);
    goto LABEL_19;
  }

  v33 = v114;
  if ((MEMORY[0x1BFB1AFF0](v30, v114) & 1) == 0)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, &static Log.screenSharing);
    v65 = v112;
    v66 = v33;
    v67 = v110;
    v32(v112, v66, v110);
    v68 = v113;
    v32(v113, v30, v67);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v106 = v71;
      v117 = swift_slowAlloc();
      v118 = v117;
      *v71 = 136315394;
      v72 = v111;
      v32(v111, v65, v67);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v67);
      specialized >> prefix<A>(_:)(v72, v73, v74, v75, v76, v77, v78, v79, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      v104 = v32;
      v105 = v31;
      v114 = v69;
      v81 = v80;
      v83 = v82;
      outlined destroy of Participant?(v72);
      LODWORD(v107) = v70;
      v84 = *(v116 + 8);
      v84(v65, v67);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v118);

      v86 = v106;
      *(v106 + 4) = v85;
      *(v86 + 6) = 2080;
      v87 = v113;
      v104(v72, v113, v67);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v67);
      specialized >> prefix<A>(_:)(v72, v88, v89, v90, v91, v92, v93, v94, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      v96 = v95;
      v98 = v97;
      outlined destroy of Participant?(v72);
      v84(v87, v67);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v118);

      *(v86 + 14) = v99;
      v100 = v114;
      _os_log_impl(&dword_1BBC58000, v114, v107, "Rejecting resumeRequest to: %s since it mismatches the participant we requested control from: %s", v86, 0x16u);
      v101 = v117;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v101, -1, -1);
      MEMORY[0x1BFB23DF0](v86, -1, -1);
    }

    else
    {

      v84 = *(v116 + 8);
      v84(v68, v67);
      v84(v65, v67);
    }

    lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors();
    swift_allocError();
    *v103 = 0;
    swift_willThrow();
    v84(v115, v67);
LABEL_19:
    v42 = v109;
    goto LABEL_20;
  }

  v118 = a4;
  v119 = v117;
  v34 = v105;
  v35 = swift_allocBox();
  v37 = v36;
  v38 = *(v34 + 48);
  v39 = v109;
  _s15ConversationKit20RemoteControlMessageOWOcTm_0(v109, v36, type metadata accessor for RemoteControlRequest);
  v40 = v33;
  v41 = v110;
  v32((v37 + v38), v40, v110);
  v120 = v35 | 0x6000000000000000;
  RemoteControlStateMachine.transformState(_:to:)(v106, &v120);
  outlined consume of RemoteControlState(v120);
  (*(v116 + 8))(v115, v41);
  v42 = v39;
LABEL_20:
  _s15ConversationKit20RemoteControlRequestVWOhTm_0(v42, type metadata accessor for RemoteControlRequest);
  return outlined consume of RemoteControlState(v108);
}

uint64_t _s15ConversationKit20RemoteControlRequestVWObTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit20RemoteControlRequestVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RemoteControlState and conformance RemoteControlState()
{
  result = lazy protocol witness table cache variable for type RemoteControlState and conformance RemoteControlState;
  if (!lazy protocol witness table cache variable for type RemoteControlState and conformance RemoteControlState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlState and conformance RemoteControlState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors()
{
  result = lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors;
  if (!lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors;
  if (!lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlStateMachine.Errors and conformance RemoteControlStateMachine.Errors);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit18RemoteControlStateO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t getEnumTagSinglePayload for RemoteControlState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for RemoteControlState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *destructiveInjectEnumTag for RemoteControlState(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteControlSuspensionReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15ConversationKit20RemoteControlMessageOWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t InCallControlsParticipantCellViewModel.init(participant:supportsMultiway:mode:isLocalMemberAuthorizedToChangeGroupMembership:isLinkOwner:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v140 = a5;
  LODWORD(v139) = a4;
  v144 = a2;
  v135 = a6;
  v8 = a3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateO_S2btMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v143 = v134 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v137 = v134 - v12;
  v13 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for InCallControlsParticipantCellViewModel();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  Participant.contactDetails.getter();
  v24 = v145[1];
  v23 = v145[2];
  v25 = *&v145[3];
  *v22 = v145[0];
  *(v22 + 16) = v24;
  *(v22 + 32) = v23;
  *(v22 + 48) = v25;
  v138 = v13;
  v26 = *(v13 + 20);
  v27 = v18[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v28 + 16))(v22 + v27, a1 + v26);
  v136 = v8;
  LOBYTE(v8) = v8 < 0x20;
  v142 = a3;
  v29 = Participant.actionForParticipantCell(isBuzzingAllowed:)(v8 & a3 ^ 1);
  *(v22 + v18[8]) = v29;
  _s15ConversationKit11ParticipantVWOcTm_12(a1, v17, type metadata accessor for Participant);
  InCallControlsParticipantCellViewModel.ButtonConfiguration.init(_:action:)(v17, v29);
  v134[1] = v30;
  v32 = v31;
  v33 = 0;
  v34 = 0;
  *(v22 + v18[11]) = v31 & 1;
  *(v22 + v18[10]) = v144 & BYTE1(v31) & v8;
  if (!v29)
  {
    v35 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_10_77();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v36.super.isa = v35;
    v33 = OUTLINED_FUNCTION_17_0(v37, v38, v39, v40, v36);
    v34 = v41;
  }

  v42 = v136 >= 0x20;
  v43 = (v22 + v18[9]);
  *v43 = v33;
  v43[1] = v34;
  v44 = (v29 == 1) & (v32 >> 8);
  if (v42)
  {
    LOBYTE(v44) = 0;
  }

  v45 = v139;
  *(v22 + v18[12]) = v44 & v139;
  v46 = ((v29 & 0xFE) == 2) & (v32 >> 8);
  if (v42)
  {
    LOBYTE(v46) = 0;
  }

  *(v22 + v18[13]) = v46 & v45;
  *(v22 + v18[14]) = (Participant.isDestinationTemporary.getter() & 1) == 0 && (Participant.isOtherInvitedParticipant.getter() & 1) == 0;
  if (v144)
  {
    if (one-time initialization token for tableViewCellTitleLabel != -1)
    {
      OUTLINED_FUNCTION_11_92();
    }

    v136 = 1;
    v47 = &static Colors.InCallControls.tableViewCellTitleLabel;
  }

  else
  {
    if (one-time initialization token for tableViewCellSubtitleLabel != -1)
    {
      swift_once();
    }

    v136 = 0;
    v47 = &static Colors.InCallControls.tableViewCellSubtitleLabel;
  }

  v48 = *v47;
  *(v22 + v18[17]) = v48;
  v49 = v138;
  v50 = *(a1 + *(v138 + 32));
  v51 = v18[16];
  v139 = v22;
  *(v22 + v51) = v50;
  v52 = *(a1 + *(v49 + 44));
  v53 = v48;

  v54 = v137;
  specialized Collection.first.getter(v52, v137);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v49);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s15ConversationKit11ParticipantVSgMd);
  Participant.contactDetails.getter();
  v56 = *(&v145[0] + 1);
  v57 = *&v145[0];
  v58 = *&v145[1];

  if (*(a1 + *(v49 + 36) + 8) && EnumTagSinglePayload == 1)
  {
    v59 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_10_77();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v60.super.isa = v59;
    OUTLINED_FUNCTION_17_0(v61, v62, v63, v64, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1BC4BA940;
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v65 + 32) = v56;
    *(v65 + 40) = v58;

    String.init(format:_:)();
    OUTLINED_FUNCTION_43_7();

    v66 = v139;
    v67 = (v139 + v18[6]);
    *v67 = v56;
    v67[1] = v65;
    *(v66 + v18[15]) = 1;
    v68 = v143;
  }

  else
  {
    if (v140)
    {
      v69 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_10_77();
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v70.super.isa = v69;
      OUTLINED_FUNCTION_17_0(v71, v72, v73, v74, v70);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1BC4BA940;
      *(v75 + 56) = MEMORY[0x1E69E6158];
      *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v75 + 32) = v56;
      *(v75 + 40) = v58;

      v56 = String.init(format:_:)();
      v77 = v76;
    }

    else
    {

      v77 = v58;
    }

    v68 = v143;
    v66 = v139;
    v78 = (v139 + v18[6]);
    *v78 = v56;
    v78[1] = v77;
    *(v66 + v18[15]) = v140 & 1;
  }

  v79 = v142;
  v80 = (v142 & 0xE0) == 32;
  v81 = *(v141 + 48);
  v82 = *(v141 + 64);
  OUTLINED_FUNCTION_3_140();
  _s15ConversationKit11ParticipantVWOcTm_12(a1, v68, v83);
  *(v68 + v81) = v80;
  *(v68 + v82) = v144 & 1;
  type metadata accessor for Participant.State(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {

    v85 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_5_5();
    v86.super.isa = v85;
    OUTLINED_FUNCTION_17_0(v87, v88, v89, v90, v86);
    OUTLINED_FUNCTION_43_7();

    OUTLINED_FUNCTION_15_60();
    *(v91 + 16) = 96;
LABEL_26:
    type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v92 + 8))(v68);
  }

  else if ((v79 & 0xE0) == 0x20)
  {

    v93 = v66 + v18[7];
    *v93 = 0;
    *(v93 + 8) = 0;
    *(v93 + 16) = 0x80;
    _s15ConversationKit11ParticipantVWOhTm_13();
  }

  else
  {
    switch(result)
    {
      case 1:

        if (!v136)
        {
          goto LABEL_39;
        }

        v104 = [objc_opt_self() conversationKit];
        goto LABEL_44;
      case 2:
        __break(1u);
        return result;
      case 3:

        if (v136)
        {
          v94 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_10_77();
          OUTLINED_FUNCTION_40_0();
LABEL_45:
          OUTLINED_FUNCTION_5_5();
          v113.super.isa = v94;
          OUTLINED_FUNCTION_17_0(v114, v115, v116, v117, v113);
          OUTLINED_FUNCTION_43_7();

          OUTLINED_FUNCTION_15_60();
          *(v118 + 16) = 0;
          goto LABEL_26;
        }

LABEL_39:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v105 + 8))(v68);
        v106 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_134();
LABEL_41:
        OUTLINED_FUNCTION_5_5();
        v107.super.isa = v106;
        OUTLINED_FUNCTION_17_0(v108, v109, v110, v111, v107);
        OUTLINED_FUNCTION_43_7();

        OUTLINED_FUNCTION_15_60();
        *(v112 + 16) = 0;
        break;
      case 4:

        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v96 = *(v95 + 48);
        v97 = (v68 + *(v95 + 64));
        v98 = v97[1];
        v146[0] = *v97;
        v146[1] = v98;
        v99 = v97[3];
        v147 = v97[2];
        v148 = v99;
        memcpy(v145, (v68 + v96), sizeof(v145));
        if (!*(&v146[0] + 1))
        {
          goto LABEL_47;
        }

        if (v147)
        {
          v101 = *(&v148 + 1);
          v100 = v148;
          v102 = v145[0];

          outlined destroy of Participant.MediaInfo(v145);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v146, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
          v103 = v102 | 0x40;
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v146, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
LABEL_47:
          if (*&v145[1])
          {
            v119 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_4_134();
            OUTLINED_FUNCTION_5_5();
            v120.super.isa = v119;
            v100 = OUTLINED_FUNCTION_17_0(v121, v122, v123, v124, v120);
            v101 = v125;

            outlined destroy of Participant.MediaInfo(v145);
            v103 = 32;
          }

          else
          {
            if (LOBYTE(v145[0]) == 1)
            {
              v126 = [objc_opt_self() conversationKit];
              OUTLINED_FUNCTION_40_0();
            }

            else
            {
              v126 = [objc_opt_self() conversationKit];
              OUTLINED_FUNCTION_4_134();
            }

            OUTLINED_FUNCTION_5_5();
            v127.super.isa = v126;
            v100 = OUTLINED_FUNCTION_17_0(v128, v129, v130, v131, v127);
            v101 = v132;

            outlined destroy of Participant.MediaInfo(v145);
            v103 = 0;
          }
        }

        v133 = v66 + v18[7];
        *v133 = v100;
        *(v133 + 8) = v101;
        *(v133 + 16) = v103;
        goto LABEL_26;
      case 5:

        v104 = [objc_opt_self() conversationKit];
LABEL_44:
        v94 = v104;
        OUTLINED_FUNCTION_40_0();
        goto LABEL_45;
      case 6:

        v106 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        goto LABEL_41;
      default:

        v94 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_134();
        goto LABEL_45;
    }
  }

  _s15ConversationKit11ParticipantVWOcTm_12(v66, v135, type metadata accessor for InCallControlsParticipantCellViewModel);
  OUTLINED_FUNCTION_1_155();
  _s15ConversationKit11ParticipantVWOhTm_13();
  return _s15ConversationKit11ParticipantVWOhTm_13();
}

unint64_t InCallControlsParticipantCellViewModel.Action.description.getter(char a1)
{
  result = 2054845794;
  switch(a1)
  {
    case 1:
      result = 0x74756F206B63696BLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t InCallControlsParticipantCellViewModel.Action.buttonText.getter(char a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v2.super.isa = v1;
    OUTLINED_FUNCTION_17_0(0xD000000000000012, 0x80000001BC515E70, v3, v4, v2);
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for InCallControlsParticipantCellViewModel()
{
  result = type metadata singleton initialization cache for InCallControlsParticipantCellViewModel;
  if (!type metadata singleton initialization cache for InCallControlsParticipantCellViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int InCallControlsParticipantCellViewModel.Action.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsParticipantCellViewModel.Action()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InCallControlsParticipantCellViewModel.Action.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t static InCallControlsParticipantCellViewModel.SubtitleState.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  switch(a3 >> 5)
  {
    case 1:
      if ((a6 & 0xE0) == 0x20)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    case 2:
      if ((a6 & 0xE0) != 0x40)
      {
        goto LABEL_25;
      }

      v8 = a1 == a4 && a2 == a5;
      if (v8 || (OUTLINED_FUNCTION_13_70(), v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = 0, (v9 & 1) != 0))
      {
        v10 = a6 ^ a3 ^ 1;
      }

      return v10 & 1;
    case 3:
      if ((a6 & 0xE0) == 0x60)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    case 4:
      if ((a6 & 0xE0) != 0x80 || a5 | a4 || a6 != 128)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    default:
      if (a6 >= 0x20u)
      {
LABEL_25:
        v10 = 0;
        return v10 & 1;
      }

LABEL_16:
      if (a1 == a4 && a2 == a5)
      {
LABEL_23:
        v10 = 1;
        return v10 & 1;
      }

      OUTLINED_FUNCTION_13_70();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t InCallControlsParticipantCellViewModel.ButtonConfiguration.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.ButtonConfiguration.init(_:action:)(uint64_t a1, char a2)
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  switch(a2)
  {
    case 1:
      Participant.isKickingAvailable.getter();
      Participant.isKickingAvailable.getter();
      OUTLINED_FUNCTION_1_155();
      _s15ConversationKit11ParticipantVWOhTm_13();
      v13 = 0;
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_140();
      _s15ConversationKit11ParticipantVWOcTm_12(a1, v9, v10);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v21 = *(v20 + 48);
          OUTLINED_FUNCTION_37(&v9[*(v20 + 64)]);
          outlined destroy of Participant.MediaInfo(&v9[v21]);
          goto LABEL_3;
        case 6u:
          goto LABEL_4;
        default:
LABEL_3:
          type metadata accessor for Date();
          OUTLINED_FUNCTION_7_0();
          (*(v11 + 8))(v9);
LABEL_4:
          OUTLINED_FUNCTION_3_140();
          _s15ConversationKit11ParticipantVWOcTm_12(a1, v6, v12);
          OUTLINED_FUNCTION_1_155();
          _s15ConversationKit11ParticipantVWOhTm_13();
          v13 = 0;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              type metadata accessor for Date();
              OUTLINED_FUNCTION_7_0();
              (*(v19 + 8))(v6);
              return 0;
            case 4u:
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
              v23 = *(v22 + 48);
              OUTLINED_FUNCTION_37(&v6[*(v22 + 64)]);
              outlined destroy of Participant.MediaInfo(&v6[v23]);
              goto LABEL_5;
            case 6u:
              return v13;
            default:
LABEL_5:
              type metadata accessor for Date();
              OUTLINED_FUNCTION_7_0();
              (*(v14 + 8))(v6);
              goto LABEL_7;
          }
      }

    case 4:
      OUTLINED_FUNCTION_1_155();
      _s15ConversationKit11ParticipantVWOhTm_13();
LABEL_7:
      v13 = 0;
      break;
    default:
      v15 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v16.super.isa = v15;
      v13 = OUTLINED_FUNCTION_17_0(0xD000000000000012, 0x80000001BC515E70, v17, v18, v16);

      Participant.isBuzzable.getter();
      if ((Participant.isNotActiveAndNotLocal.getter() & 1) != 0 && (Participant.isOtherInvitedParticipant.getter() & 1) == 0)
      {
        Participant.isDestinationTemporary.getter();
        OUTLINED_FUNCTION_1_155();
        _s15ConversationKit11ParticipantVWOhTm_13();
      }

      else
      {
        OUTLINED_FUNCTION_1_155();
        _s15ConversationKit11ParticipantVWOhTm_13();
      }

      break;
  }

  return v13;
}

uint64_t static InCallControlsParticipantCellViewModel.ButtonConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a2)
  {
    result = 0;
    if (a5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    if (((a3 ^ a6) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }

    return 0;
  }

  OUTLINED_FUNCTION_13_70();
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  if (((a3 ^ a6) & 1) == 0)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InCallControlsParticipantCellViewModel.ButtonConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return static InCallControlsParticipantCellViewModel.ButtonConfiguration.== infix(_:_:)(*a1, *(a1 + 8), v2 | *(a1 + 16), *a2, *(a2 + 8), v3 | *(a2 + 16));
}

uint64_t InCallControlsParticipantCellViewModel.contactDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v5 = *(v1 + 4);
  v4 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  v8 = v7;
}

__n128 InCallControlsParticipantCellViewModel.contactDetails.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v2 = *(a1 + 6);
  v3 = *v1;

  *v1 = v7;
  *(v1 + 16) = v6;
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.participantIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InCallControlsParticipantCellViewModel() + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t InCallControlsParticipantCellViewModel.participantIdentifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for InCallControlsParticipantCellViewModel() + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t InCallControlsParticipantCellViewModel.participantIdentifier.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.name.getter()
{
  type metadata accessor for InCallControlsParticipantCellViewModel();

  return OUTLINED_FUNCTION_46();
}

uint64_t InCallControlsParticipantCellViewModel.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InCallControlsParticipantCellViewModel() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.name.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for InCallControlsParticipantCellViewModel() + 28) + 16);
  v2 = OUTLINED_FUNCTION_46();
  outlined copy of InCallControlsParticipantCellViewModel.SubtitleState(v2, v3, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t InCallControlsParticipantCellViewModel.subtitle.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for InCallControlsParticipantCellViewModel() + 28);
  result = outlined consume of InCallControlsParticipantCellViewModel.SubtitleState(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.subtitle.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.action.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.action.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.actionButtonLabel.getter()
{
  type metadata accessor for InCallControlsParticipantCellViewModel();

  return OUTLINED_FUNCTION_46();
}

uint64_t InCallControlsParticipantCellViewModel.actionButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InCallControlsParticipantCellViewModel() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.actionButtonLabel.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowActionButton.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowActionButton.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldEnableActionButton.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldEnableActionButton.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowKickMemberButton.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowKickMemberButton.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowLMIButtons.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowLMIButtons.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowInfoButton.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldShowInfoButton.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.shouldUseExtendedHeight.setter()
{
  result = OUTLINED_FUNCTION_17_61();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.shouldUseExtendedHeight.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t InCallControlsParticipantCellViewModel.contactGradient.getter()
{
  type metadata accessor for InCallControlsParticipantCellViewModel();
}

uint64_t InCallControlsParticipantCellViewModel.contactGradient.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for InCallControlsParticipantCellViewModel() + 64);

  *(v1 + v2) = v0;
  return result;
}

uint64_t InCallControlsParticipantCellViewModel.contactGradient.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

id InCallControlsParticipantCellViewModel.nameLabelColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for InCallControlsParticipantCellViewModel() + 68));

  return v1;
}

void InCallControlsParticipantCellViewModel.nameLabelColor.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for InCallControlsParticipantCellViewModel() + 68);

  *(v1 + v2) = v0;
}

uint64_t InCallControlsParticipantCellViewModel.nameLabelColor.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsParticipantCellViewModel();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t static InCallControlsParticipantCellViewModel.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v8 = *(a1 + 6);
  v39 = *a1;
  v40 = v5;
  v41 = v4;
  v42 = v7;
  v43 = v6;
  v44 = v8;
  v10 = *(a2 + 2);
  v9 = *(a2 + 3);
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  v13 = *(a2 + 6);
  v33 = *a2;
  v34 = v10;
  v35 = v9;
  v36 = v12;
  v37 = v11;
  v38 = v13;
  v14 = v33;

  v15 = v39;

  LOBYTE(v5) = static ParticipantContactDetails.== infix(_:_:)(&v39, &v33);
  v16 = v33;

  v17 = v39;

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for InCallControlsParticipantCellViewModel();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v18[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v18[7];
  if ((static InCallControlsParticipantCellViewModel.SubtitleState.== infix(_:_:)(*(a1 + v24), *(a1 + v24 + 8), *(a1 + v24 + 16), *(a2 + v24), *(a2 + v24 + 8), *(a2 + v24 + 16)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_2();
  if (!v23)
  {
    return 0;
  }

  v25 = v18[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = *v26 == *v28 && v27 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_2();
  if (v23)
  {
    OUTLINED_FUNCTION_27_2();
    if (v23)
    {
      OUTLINED_FUNCTION_27_2();
      if (v23)
      {
        OUTLINED_FUNCTION_27_2();
        if (v23)
        {
          OUTLINED_FUNCTION_27_2();
          if (v23)
          {
            OUTLINED_FUNCTION_27_2();
            if (v23)
            {
              _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7UIColorC_Tt1g5(*(a1 + v18[16]), *(a2 + v18[16]));
              if (v31)
              {
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
                return static NSObject.== infix(_:_:)() & 1;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t InCallControlsParticipantCellViewModel.init(contactDetails:participantIdentifier:name:subtitle:action:actionButtonLabel:shouldShowActionButton:shouldEnableActionButton:shouldShowKickMemberButton:shouldShowLMIButtons:shouldShowInfoButton:shouldUseExtendedHeight:contactGradient:nameLabelColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  v25 = *(a1 + 16);
  v24 = *(a1 + 32);
  v26 = *(a1 + 48);
  *a9 = *a1;
  *(a9 + 16) = v25;
  *(a9 + 32) = v24;
  *(a9 + 48) = v26;
  v27 = type metadata accessor for InCallControlsParticipantCellViewModel();
  v28 = v27[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  result = (*(v29 + 32))(a9 + v28, a2);
  v31 = (a9 + v27[6]);
  *v31 = a3;
  v31[1] = a4;
  v32 = a9 + v27[7];
  *v32 = a5;
  *(v32 + 8) = a6;
  *(v32 + 16) = a7;
  *(a9 + v27[8]) = a8;
  v33 = (a9 + v27[9]);
  *v33 = a10;
  v33[1] = a11;
  *(a9 + v27[10]) = a12;
  *(a9 + v27[11]) = a13;
  *(a9 + v27[12]) = a14;
  *(a9 + v27[13]) = a15;
  *(a9 + v27[14]) = a16;
  *(a9 + v27[15]) = a17;
  *(a9 + v27[16]) = a18;
  *(a9 + v27[17]) = a19;
  return result;
}

uint64_t Participant.actionForParticipantCell(isBuzzingAllowed:)(char a1)
{
  v3 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  _s15ConversationKit11ParticipantVWOcTm_12(v1, &v23 - v7, type metadata accessor for Participant.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 8))(v8, v17);
      return 2;
    case 4u:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v19 = *(v18 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v8[*(v18 + 64)], *&v8[*(v18 + 64) + 8]);
      outlined destroy of Participant.MediaInfo(&v8[v19]);
      goto LABEL_2;
    case 6u:
      goto LABEL_3;
    default:
LABEL_2:
      v9 = type metadata accessor for Date();
      (*(*(v9 - 8) + 8))(v8, v9);
      if ((Participant.isNotActiveAndNotLocal.getter() & 1) == 0)
      {
        Participant.isBuzzable.getter();
        if ((v10 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      _s15ConversationKit11ParticipantVWOcTm_12(v1, v5, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
        case 3u:
        case 5u:
          goto LABEL_6;
        case 4u:
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v22 = *(v21 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v5[*(v21 + 64)], *&v5[*(v21 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v5[v22]);
LABEL_6:
          v11 = type metadata accessor for Date();
          (*(*(v11 - 8) + 8))(v5, v11);
          break;
        case 6u:
          goto LABEL_7;
        default:
          v20 = type metadata accessor for Date();
          (*(*(v20 - 8) + 8))(v5, v20);
          goto LABEL_16;
      }

      v12 = *(v1 + *(type metadata accessor for Participant(0) + 28));
      if (v12)
      {
        v13 = [v12 value];
        if (!v13)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = MEMORY[0x1BFB209B0](v14);
        }

        v15 = [v13 destinationIdIsTemporary];

        if (v15)
        {
          goto LABEL_16;
        }
      }

LABEL_7:
      if (a1)
      {
        return 0;
      }

LABEL_16:
      if (Participant.isKickingAvailable.getter())
      {
        return 1;
      }

      return 4;
  }
}

id InCallControlsParticipantCellViewModel.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for InCallControlsParticipantCellViewModel();
  v8 = (a1 + v7[9]);
  *v8 = 0;
  v8[1] = 0;
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_43_7();

  (*(v3 + 8))(v6, v2);
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.localizedUppercase.getter();
  v14 = v13;

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = v12;
  a1[6] = v14;
  UUID.init()();
  v15 = (a1 + v7[6]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = a1 + v7[7];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 0x80;
  *(a1 + v7[8]) = 4;
  *(a1 + v7[10]) = 0;
  *(a1 + v7[11]) = 0;
  *(a1 + v7[12]) = 0;
  *(a1 + v7[13]) = 0;
  *(a1 + v7[14]) = 0;
  *(a1 + v7[15]) = 0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(a1 + v7[16]) = static Colors.ParticipantGradients.default;
  v17 = one-time initialization token for tableViewCellTitleLabel;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_11_92();
  }

  v18 = static Colors.InCallControls.tableViewCellTitleLabel;
  *(a1 + v7[17]) = static Colors.InCallControls.tableViewCellTitleLabel;

  return v18;
}

uint64_t outlined copy of InCallControlsParticipantCellViewModel.SubtitleState(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsParticipantCellViewModel.Action and conformance InCallControlsParticipantCellViewModel.Action()
{
  result = lazy protocol witness table cache variable for type InCallControlsParticipantCellViewModel.Action and conformance InCallControlsParticipantCellViewModel.Action;
  if (!lazy protocol witness table cache variable for type InCallControlsParticipantCellViewModel.Action and conformance InCallControlsParticipantCellViewModel.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsParticipantCellViewModel.Action and conformance InCallControlsParticipantCellViewModel.Action);
  }

  return result;
}

void type metadata completion function for InCallControlsParticipantCellViewModel()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [UIColor]();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSObject(319, &lazy cache variable for type metadata for UIColor);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [UIColor]()
{
  if (!lazy cache variable for type metadata for [UIColor])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIColor]);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InCallControlsParticipantCellViewModel.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit38InCallControlsParticipantCellViewModelV13SubtitleStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t getEnumTagSinglePayload for InCallControlsParticipantCellViewModel.SubtitleState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 17))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for InCallControlsParticipantCellViewModel.SubtitleState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for InCallControlsParticipantCellViewModel.SubtitleState(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InCallControlsParticipantCellViewModel.ButtonConfiguration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for InCallControlsParticipantCellViewModel.ButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter()
{
  result = [v0 incomingCall];
  if (result || (result = [v0 incomingVideoCall]) != 0)
  {

    return 1;
  }

  return result;
}

void TUCallCenter.needsMultipleRejection.getter()
{
  if (TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter())
  {
    v1 = [v0 currentCallGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized Array.count.getter(v2);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
        goto LABEL_12;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB22010](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = [v5 status];

      ++v4;
      if (v7 == 1)
      {

        v8 = [v0 currentCallGroups];
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = specialized Array.count.getter(v9);
        v11 = 0;
        while (v10 != v11)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1BFB22010](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_23;
          }

          v14 = [v12 status];

          ++v11;
          if (v14 == 2)
          {
            break;
          }
        }

LABEL_12:

        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t SBUISystemApertureLayoutMode.debugName.getter()
{
  v0 = SBUISystemApertureLayoutModeDescription();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t CallScreeningCaptionsProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t key path getter for CallScreeningCaptionsProvider.participantCaptionsProviderDelegate : CallScreeningCaptionsProvider@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CallScreeningCaptionsProvider.participantCaptionsProviderDelegate : CallScreeningCaptionsProvider(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CallScreeningCaptionsProvider.participantCaptionsProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CallScreeningCaptionsProvider.participantCaptionsProviderDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantGridViewControllerDelegate.modify;
}

void CallScreeningCaptionsProvider.init(logger:call:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v92 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v80 - v8;
  v91 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1();
  v88 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_106(v11, v80);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  type metadata accessor for LanguageManager();
  OUTLINED_FUNCTION_1();
  v81 = v18;
  v82 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  *&v0[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsClient] = 0;
  v22 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_lowConfidenceThreshold;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&v0[v22] = (*(*static Defaults.shared + 776))();
  v0[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsEnabled] = 0;
  v23 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_logger;
  v24 = type metadata accessor for Logger();
  v86 = *(v24 - 8);
  v87 = v24;
  (*(v86 + 16))(&v1[v23], v92);
  v25 = [v3 uniqueProxyIdentifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = &v1[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_uniqueProxyIdentifier];
  *v29 = v26;
  v29[1] = v28;
  v95.receiver = v1;
  v95.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v95, sel_init);
  v31 = objc_allocWithZone(MEMORY[0x1E69D8AE0]);
  v85 = v30;
  v32 = [v31 initWithDelegate_call_];
  v33 = v3;
  v34 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v83 = v33;
  v84 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = [v33 uniqueProxyIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v93[0] = v40;
    v93[1] = v42;
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v94);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    v93[0] = v34;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCaptionsClient);
    v46 = v34;
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v94);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_1BBC58000, v35, v36, "Captions client created for call %s: %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v50 = v91;
  v51 = v88;
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v52 = *(v51 + 8);
  v52(v16, v50);
  (*(v81 + 8))(v21, v82);

  v53 = v90;
  static Locale.current.getter();
  v54 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [v54 setLocale_];

  [v54 setUsage_];
  [v54 setExplicitLanguageFilterEnabled_];
  v56 = TUTranscriptionAvailability.avcTaskHint.getter();
  if ((v56 & 0x100) == 0)
  {
    [v54 setTaskHint_];
  }

  v57 = *(v51 + 16);
  v58 = v89;
  v57(v89, v53, v50);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93[0] = v88;
    *v61 = 136315138;
    v62 = v52;
    v63 = v80;
    v57(v80, v58, v50);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v50);
    specialized >> prefix<A>(_:)(v63, v64, v65, v66, v67, v68, v69, v70, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    v72 = v71;
    v74 = v73;
    v75 = v63;
    v52 = v62;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation6LocaleVSgMd);
    v62(v58, v91);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v93);
    v50 = v91;

    *(v61 + 4) = v76;
    _os_log_impl(&dword_1BBC58000, v59, v60, "Captions client configure with locale: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_27();
    v53 = v90;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v52(v58, v50);
  }

  v77 = v84;
  [v84 configureCaptions_];

  (*(v86 + 8))(v92, v87);
  v52(v53, v50);
  v78 = v85;
  v79 = *&v85[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsClient];
  *&v85[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsClient] = v77;

  OUTLINED_FUNCTION_30_0();
}

void CallScreeningCaptionsProvider.__deallocating_deinit()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, v1 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_logger, v3);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v18 = ObjectType;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = *&v10[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_uniqueProxyIdentifier];
    v16 = *&v10[OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_uniqueProxyIdentifier + 8];

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Releasing CallScreeningCaptionsProvider with call uuid %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_27();
    ObjectType = v18;
    OUTLINED_FUNCTION_27();
  }

  (*(v5 + 8))(v9, v3);
  v20.receiver = v10;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_dealloc);
  OUTLINED_FUNCTION_30_0();
}

uint64_t CallScreeningCaptionsProvider.captionsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallScreeningCaptionsProvider.captionsEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall CallScreeningCaptionsProvider.enableCaptions(_:)(Swift::Bool a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsClient))
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_captionsClient) enableCaptions_];
  }
}

void CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)()
{
  CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)();
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = v7;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v29[1] = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 67109378;
    *(v17 + 4) = v9 & 1;
    *(v17 + 8) = 2112;
    if (v7)
    {
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 10) = v20;
    *v18 = v21;
    _os_log_impl(&dword_1BBC58000, v15, v16, v4, v17, 0x12u);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v22 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_78(v13, v23, v24, v22);
  v25 = v5;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  *(v27 + 32) = v25;
  *(v27 + 40) = v9 & 1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:), v7, v6);
}

uint64_t closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:), v7, v6);
}

uint64_t closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)()
{

  OUTLINED_FUNCTION_3_141();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OUTLINED_FUNCTION_14_64();
    (*(v0 + 16))(v2, &protocol witness table for CallScreeningCaptionsProvider, v1, v4, v0);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_22_3(Strong == 0);

  return v5();
}

void CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v76 - v5;
  type metadata accessor for Participant.Caption(0);
  OUTLINED_FUNCTION_1();
  v81 = v7;
  v82 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_106(v16, v76);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v22 = v2;
  v90 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v86 = v11;
  v87 = v6;
  if (v25)
  {
    v26 = v21;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v95[0] = v28;
    *v27 = 136315138;
    v93 = v22;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCaptionsResult);
    v29 = v22;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v95);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Captions updated: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_27();
    v21 = v26;
    OUTLINED_FUNCTION_27();
  }

  Date.init()();
  v80 = [v22 utteranceNumber];
  v84 = v14;
  v33 = *(v14 + 16);
  v33(v88, v21, v12);
  v83 = v21;
  v85 = v12;
  v33(v89, v21, v12);
  v34 = [v22 text];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v95[0] = v35;
  v95[1] = v37;
  v93 = 39;
  v94 = 0xE100000000000000;
  v91 = 10060002;
  v92 = 0xA300000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v78 = v39;
  v79 = v38;

  v77 = [v22 utteranceComplete];
  v40 = [v22 tokens];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCaption);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v95[0] = MEMORY[0x1E69E7CC0];
  v42 = specialized Array.count.getter(v41);
  v43 = 0;
  v44 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_lowConfidenceThreshold;
  while (1)
  {
    if (v42 == v43)
    {

      v48 = v95[0];
      v49 = specialized Array.count.getter(v95[0]);
      if (v49)
      {
        v50 = v49;
        v95[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        if (v50 < 0)
        {
          goto LABEL_28;
        }

        v51 = 0;
        v52 = v95[0];
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1BFB22010](v51, v48);
          }

          else
          {
            v53 = *(v48 + 8 * v51 + 32);
          }

          v54 = v53;
          v55 = [v53 range];
          v57 = v56;

          v95[0] = v52;
          v58 = *(v52 + 16);
          if (v58 >= *(v52 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v52 = v95[0];
          }

          ++v51;
          *(v52 + 16) = v58 + 1;
          v59 = v52 + 16 * v58;
          *(v59 + 32) = v55;
          *(v59 + 40) = v57;
        }

        while (v50 != v51);
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      v61 = v85;
      v60 = v86;
      *v86 = v80;
      v62 = v81;
      v63 = v84;
      v64 = *(v84 + 32);
      v64(v60 + v81[5], v88, v61);
      v64(v60 + v62[6], v89, v61);
      v65 = (v60 + v62[7]);
      v66 = v78;
      *v65 = v79;
      v65[1] = v66;
      *(v60 + v62[8]) = v77;
      *(v60 + v62[9]) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV7CaptionVGMd);
      v67 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1BC4BA940;
      outlined init with copy of Participant.Caption(v60, v68 + v67);
      v69 = type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_10_78(v87, v70, v71, v69);
      v72 = v90;

      v73 = static MainActor.shared.getter();
      v74 = swift_allocObject();
      v75 = MEMORY[0x1E69E85E0];
      v74[2] = v73;
      v74[3] = v75;
      v74[4] = v72;
      v74[5] = v72;
      v74[6] = &protocol witness table for CallScreeningCaptionsProvider;
      v74[7] = v68;
      OUTLINED_FUNCTION_16_10();

      outlined destroy of Participant.Caption(v60);
      (*(v63 + 8))(v83, v61);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1BFB22010](v43, v41);
    }

    else
    {
      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v45 = *(v41 + 8 * v43 + 32);
    }

    v46 = v45;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    [v45 confidence];
    if (v47 >= *&v90[v44])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v43;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t closure #2 in CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:), v9, v8);
}

uint64_t closure #2 in CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)()
{
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_3_141();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v1[8];
    v3 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v7 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v6, &protocol witness table for CallScreeningCaptionsProvider, v5, v4, v3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_22_3(Strong == 0);

  return v9();
}

uint64_t CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Captions updated isGibberish: %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_27();
  }

  v12 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_78(v8, v13, v14, v12);
  v15 = v3;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = a2 & 1;
  OUTLINED_FUNCTION_16_10();
}

uint64_t closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:), v7, v6);
}

uint64_t closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)()
{

  OUTLINED_FUNCTION_3_141();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OUTLINED_FUNCTION_14_64();
    (*(v0 + 24))(v2, &protocol witness table for CallScreeningCaptionsProvider, v1, v4, v0);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_22_3(Strong == 0);

  return v5();
}

id CallScreeningCaptionsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*protocol witness for ParticipantCaptionsProvider.participantCaptionsProviderDelegate.modify in conformance CallScreeningCaptionsProvider(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29CallScreeningCaptionsProvider_participantCaptionsProviderDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

uint64_t partial apply for closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_16(v2);

  return closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)(v4, v5, v6, v7, v0);
}

uint64_t partial apply for closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_16(v2);

  return closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)(v4, v5, v6, v7, v0);
}

uint64_t partial apply for closure #2 in CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)()
{
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_16(v5);

  return closure #2 in CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t partial apply for closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_16(v2);

  return closure #1 in CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)(v4, v5, v6, v7, v0);
}

uint64_t type metadata accessor for CallScreeningCaptionsProvider()
{
  result = type metadata singleton initialization cache for CallScreeningCaptionsProvider;
  if (!type metadata singleton initialization cache for CallScreeningCaptionsProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallScreeningCaptionsProvider()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void ParticipantViewLabelContainerView.isCentered.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  ParticipantViewLabelContainerView.isCentered.didset(v4);
}

double ParticipantViewLabelContainerView.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
  v2 = [v1 font];
  if (v2)
  {
  }

  [v1 intrinsicContentSize];
  v4 = v3;
  [v1 intrinsicContentSize];
  return v4;
}

uint64_t ParticipantViewLabelContainerView.isCentered.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for ParticipantViewLabelContainerView.isCentered : ParticipantViewLabelContainerView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void ParticipantViewLabelContainerView.isCentered.didset(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
    swift_beginAccess();
    if (*(v2 + v9) != (a1 & 1))
    {
      if (*(v2 + v9))
      {
        v10 = 1;
      }

      else
      {
        v10 = 4;
      }

      [*(v2 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label) setTextAlignment_];
      v11 = objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 activateConstraints_];

      v13 = Array._bridgeToObjectiveC()().super.isa;

      [v11 deactivateConstraints_];
    }
  }

  else
  {
    __break(1u);
  }
}

void (*ParticipantViewLabelContainerView.isCentered.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return ParticipantViewLabelContainerView.isCentered.modify;
}

void ParticipantViewLabelContainerView.isCentered.modify(uint64_t a1)
{
  v1 = *a1;
  ParticipantViewLabelContainerView.isCentered.setter(*(*a1 + 32));

  free(v1);
}

id ParticipantViewLabelContainerView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *ParticipantViewLabelContainerView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_centerAlignedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_leadingAlignedConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered) = 1;
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3);
  [v6 setClipsToBounds_];
  v7 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label;
  [*&v6[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = one-time initialization token for titleLabel;
  v9 = *&v6[v7];
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setTextColor_];

  v10 = one-time initialization token for title;
  v11 = *&v6[v7];
  if (v10 != -1)
  {
    swift_once();
  }

  [v11 setFont_];

  v12 = *&v6[v7];
  v13 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  v80 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered;
  swift_beginAccess();
  [v12 setTextAlignment_];
  [*&v6[v7] setNumberOfLines_];
  LODWORD(v14) = 1148846080;
  [*&v6[v7] setContentHuggingPriority:1 forAxis:v14];
  [v6 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = OUTLINED_FUNCTION_3_6();
  *(v15 + 16) = xmmword_1BC4BA930;
  v16 = v15;
  v17 = [*&v6[v7] topAnchor];
  v18 = [v6 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [*&v6[v7] bottomAnchor];
  v21 = [v6 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v16 + 40) = v22;
  v23 = [*&v6[v7] centerXAnchor];
  v24 = [v6 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  LODWORD(v26) = 1132068864;
  [v25 setPriority_];
  v27 = OUTLINED_FUNCTION_3_6();
  v35 = [OUTLINED_FUNCTION_4_135(v27 v28];
  v36 = [v6 leadingAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor_];

  v23[4] = v37;
  v23[5] = v25;
  v38 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_centerAlignedConstraints;
  *&v6[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_centerAlignedConstraints] = v23;
  v84 = v25;

  v39 = OUTLINED_FUNCTION_3_6();
  v47 = [OUTLINED_FUNCTION_4_135(v39 v40];
  v48 = [v6 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  v23[4] = v49;
  v50 = [*&v6[v7] trailingAnchor];
  v51 = [v6 trailingAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  v23[5] = v52;
  v53 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_leadingAlignedConstraints;
  *&v6[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_leadingAlignedConstraints] = v23;

  if (v6[v82])
  {
    v54 = v38;
  }

  else
  {
    v54 = v53;
  }

  v55 = *&v6[v54];

  v56 = objc_opt_self();
  specialized Array.append<A>(contentsOf:)(v55);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v58 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v59 = OUTLINED_FUNCTION_3_6();
    *(v59 + 16) = v87;
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v60 = static Colors.ParticipantViews.background;
    *(v59 + 32) = [static Colors.ParticipantViews.background colorWithAlphaComponent_];
    *(v59 + 40) = v60;
    v61 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
    swift_beginAccess();
    *&v58[v61] = v59;
    v62 = v60;

    GradientView.updateGradient()();
    v63 = GradientView.gradientLayer.getter();
    [v63 setStartPoint_];

    v64 = GradientView.gradientLayer.getter();
    [v64 setEndPoint_];

    v65 = v58;
    [v65 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 addSubview_];
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1BC4BA7F0;
    v67 = [v65 topAnchor];
    v68 = OUTLINED_FUNCTION_1_156([v6 topAnchor]);

    *(v66 + 32) = v68;
    v69 = [v65 bottomAnchor];
    v70 = OUTLINED_FUNCTION_1_156([v6 bottomAnchor]);

    *(v66 + 40) = v70;
    v71 = [v65 trailingAnchor];
    v72 = OUTLINED_FUNCTION_1_156([v6 trailingAnchor]);

    *(v66 + 48) = v72;
    v73 = [v65 widthAnchor];

    v74 = [v73 constraintEqualToConstant_];
    *(v66 + 56) = v74;
    v75 = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints_];
  }

  return v6;
}

id ParticipantViewLabelContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantViewLabelContainerView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_centerAlignedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_leadingAlignedConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_isCentered) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static ParticipantViewLabelContainerView.layerClass.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    return type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
  }

  return type metadata accessor for ParticipantViewLabelContainerViewLayer();
}

id ParticipantViewLabelContainerViewLayer.init()()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v18, sel_init);
  v2 = objc_allocWithZone(MEMORY[0x1E6979380]);
  v3 = v1;
  v4 = [v2 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAA20;
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  v8 = [v7 CGColor];

  type metadata accessor for CGColorRef(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [v6 clearColor];
  v12 = [v11 CGColor];

  *(v5 + 88) = v10;
  *(v5 + 64) = v12;
  outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v5, v4);
  type metadata accessor for AppUtilities();
  v13 = static AppUtilities.isRTL.getter();
  if (v13)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  if (v13)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [v4 setStartPoint_];
  [v4 setEndPoint_];
  v16 = v4;
  [v3 setMask_];

  return v3;
}

uint64_t ParticipantViewLabelContainerViewLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    v4 = v8;
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v8);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void ParticipantViewLabelContainerViewLayer.layoutSublayers()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSublayers);
  v1 = [v0 mask];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      [v0 bounds];
      if (v5 > 0.0)
      {
        v6 = v2;
        v7 = v0;
        specialized CALayer.coordinateAnimation(_:animations:)(v7, v4, v7);
      }
    }
  }
}

id closure #1 in ParticipantViewLabelContainerViewLayer.layoutSublayers()(void *a1, id a2)
{
  [a2 bounds];
  v4 = 0.0;
  [a1 setFrame_];
  [a2 bounds];
  v6 = fmin(32.0 / v5, 1.0);
  type metadata accessor for AppUtilities();
  v7 = static AppUtilities.isRTL.getter();
  v8 = 1.0 - v6;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v4 = 1.0;
  }

  [a1 setStartPoint_];

  return [a1 setEndPoint_];
}

void outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setColors_];
}

void static ViewControllerLayout.effectsConstraintManagers(with:layoutIdiom:controlsView:localParticipantView:effectsView:effectsBrowserView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_321();
  a28 = v29;
  a29 = v30;
  v71 = v32;
  v72 = v31;
  v69 = v33;
  v35 = v34;
  v37 = v36;
  v70 = *v38;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v37 addLayoutGuide_];
  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BC4BA7F0;
  v42 = [v39 topAnchor];
  v43 = [v37 safeAreaLayoutGuide];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v41 + 32) = v45;
  v46 = [v39 bottomAnchor];
  v47 = OUTLINED_FUNCTION_12_81();
  v48 = [v47 bottomAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  *(v41 + 40) = v49;
  v50 = [v39 leadingAnchor];
  v51 = OUTLINED_FUNCTION_12_81();
  v52 = [v51 leadingAnchor];

  v53 = [v45 constraintEqualToAnchor_];
  *(v41 + 48) = v53;
  v54 = [v39 trailingAnchor];
  v55 = OUTLINED_FUNCTION_12_81();
  v56 = [v55 trailingAnchor];

  v57 = [v45 constraintEqualToAnchor_];
  *(v41 + 56) = v57;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1BC4BAA20;
  v60 = type metadata accessor for EffectsViewConstraintManager();
  swift_allocObject();
  v61 = v35;
  v62 = v69;
  v63 = v39;
  v64 = EffectsViewConstraintManager.init(containingGuide:localParticipantView:effectsView:)(v63, v35, v62);
  *(v59 + 56) = v60;
  *(v59 + 64) = &protocol witness table for EffectsViewConstraintManager;
  *(v59 + 32) = v64;
  a17 = v70;
  v65 = type metadata accessor for EffectsBrowserViewConstraintManager();
  swift_allocObject();
  v66 = v63;
  v67 = v61;
  v68 = EffectsBrowserViewConstraintManager.init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(&a17, v66, v71, v72, v35);
  *(v59 + 96) = v65;
  *(v59 + 104) = &protocol witness table for EffectsBrowserViewConstraintManager;
  *(v59 + 72) = v68;

  OUTLINED_FUNCTION_18_13();
}

uint64_t static ViewControllerLayout.buttonShelfConstraintManagers(with:localParticipantView:localParticipantButtonShelfView:localParticipantControlsView:layoutIdiom:)(void *a1, void *a2, void *a3, void *a4, char *a5)
{
  v9 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v18 = v9;
  v11 = type metadata accessor for LocalParticipantButtonShelfViewConstraintManager();
  swift_allocObject();
  v12 = a3;
  v13 = a1;
  v14 = LocalParticipantButtonShelfViewConstraintManager.init(localParticipantButtonShelfView:containingView:layoutIdiom:)(v12, v13, &v18);
  *(v10 + 56) = v11;
  *(v10 + 64) = &protocol witness table for LocalParticipantButtonShelfViewConstraintManager;
  *(v10 + 32) = v14;
  v15 = type metadata accessor for LocalParticipantControlsViewConstraintManager();
  swift_allocObject();
  v16 = LocalParticipantControlsViewConstraintManager.init(containingView:localParticipantControlsView:localParticipantView:localParticipantButtonShelfView:layoutIdiom:)(v13, a4, a2, v12);
  *(v10 + 96) = v15;
  *(v10 + 104) = &protocol witness table for LocalParticipantControlsViewConstraintManager;
  *(v10 + 72) = v16;
  return v10;
}

uint64_t static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:)(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v52[0] = *a2;
  *(v52 + 15) = *(a2 + 15);
  v6 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    return v6;
  }

  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = v51;
    v12 = v7 + 32;
    do
    {
      outlined init with copy of IDSLookupManager(v12, v48);
      v13 = v49;
      v14 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v47[0] = v52[0];
      *(v47 + 15) = *(v52 + 15);
      v15 = (*(v14 + 8))(v47, a3, v13, v14, a4, a5);
      result = __swift_destroy_boxed_opaque_existential_1(v48);
      v51 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v18;
      *(v11 + 8 * v17 + 32) = v15;
      v12 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v42 = v18;
  v43 = v11 + 32;
  v20 = &_sSaySo18NSLayoutConstraintCGMd;
  v40 = v11;
  while (1)
  {
    if (v19 == v18)
    {

      return v6;
    }

    if (v19 >= *(v11 + 16))
    {
      break;
    }

    v21 = v20;
    v22 = *(v43 + 8 * v19);
    if (v22 >> 62)
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v6 >> 62;
    if (v6 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = result + v23;
    if (__OFADD__(result, v23))
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v44 = v23;
    if (!result)
    {
      if (v24)
      {
LABEL_23:
        __CocoaSet.count.getter();
      }

LABEL_24:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v45 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v24)
    {
      goto LABEL_23;
    }

    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

    v45 = v6;
LABEL_25:
    v46 = v19 + 1;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v29 = v26 + 8 * v27;
    if (v22 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (v31)
      {
        v32 = v31;
        result = __CocoaSet.count.getter();
        if (v28 < result)
        {
          goto LABEL_50;
        }

        if (v32 < 1)
        {
          goto LABEL_51;
        }

        v41 = result;
        lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], v20);
        for (i = 0; i != v32; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v20);
          v34 = specialized protocol witness for Collection.subscript.read in conformance [A](v48, i, v22);
          v36 = *v35;
          v34(v48, 0);
          v20 = v21;
          *(v29 + 32 + 8 * i) = v36;
        }

        v11 = v40;
        v30 = v41;
        goto LABEL_35;
      }

LABEL_39:

      v6 = v45;
      v18 = v42;
      ++v19;
      if (v44 > 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_39;
      }

      if (v28 < v30)
      {
        goto LABEL_49;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      swift_arrayInitWithCopy();
LABEL_35:

      v6 = v45;
      v18 = v42;
      v19 = v46;
      if (v30 < v44)
      {
        goto LABEL_47;
      }

      if (v30 > 0)
      {
        v37 = *(v26 + 16);
        v38 = __OFADD__(v37, v30);
        v39 = v37 + v30;
        if (v38)
        {
          goto LABEL_48;
        }

        *(v26 + 16) = v39;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

double static ViewControllerLayout.participantLabelsViewFrame(isDisplayedInBanner:isDisplayedInAmbient:containingView:participantLabelsView:)(char a1, char a2, id a3, void *a4)
{
  if (a1)
  {
    [a3 bounds];
    v9 = v8;
  }

  else
  {
    if (a2)
    {
      v10 = [a3 safeAreaLayoutGuide];
    }

    else
    {
      v10 = [a3 readableContentGuide];
    }

    v11 = v10;
    [v11 layoutFrame];
    v9 = v12;
  }

  [a4 systemLayoutSizeFittingSize_];
  if (a2)
  {
    [a3 safeAreaInsets];
    v14 = v13;
    if ((a1 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    [a3 bounds];
    v14 = floor((v15 - v9) * 0.5);
    if ((a1 & 1) == 0)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 bounds];

      [a3 safeAreaInsets];
      return v14;
    }
  }

  [a3 bounds];
  return v14;
}

uint64_t protocol witness for static ViewControllerLayout.constraints(with:layoutState:size:deviceOrientation:) in conformance LargeMultiwayControllerLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, void, unint64_t, uint64_t))
{
  v6 = 0x10000;
  if ((*(a2 + 18) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if ((*(a2 + 20) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((*(a2 + 21) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x1000000000000;
  if ((*(a2 + 22) & 1) == 0)
  {
    v9 = 0;
  }

  return a6(a1, *a2 & 1, *(a2 + 8), *(a2 + 16) | (*(a2 + 19) << 24) | v6 | v7 | v8 | v9, a3);
}

uint64_t dispatch thunk of ViewControllerLayout.update(localParticipantAspectRatio:layoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  return v4(v8);
}

uint64_t lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LocalVideoRecordButtonViewModel.__allocating_init()()
{
  OUTLINED_FUNCTION_36();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t LocalVideoRecordButtonViewModel.config.getter()
{
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v38 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.Scale();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (*(v0 + 16))
  {
    v16 = *(v0 + 16);
  }

  else
  {
    v35 = v0;
    static Color.white.getter();
    v17 = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOff.getter();
    *(&v40 + 1) = MEMORY[0x1E69815C0];
    v41 = MEMORY[0x1E6981568];
    *&v39 = v17;
    static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
    v18 = type metadata accessor for _Glass();
    v34 = v1;
    v19 = v18;
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    (*(v8 + 104))(v10, *MEMORY[0x1E69816E0], v7);
    v32[1] = MEMORY[0x1E69E7CA8] + 8;
    static IconButtonStyle.Defaults.mac.iconFont.getter();
    v33 = v2;
    static Font.Weight.regular.getter();
    static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:scale:font:weight:)();

    (*(v8 + 8))(v10, v7);
    outlined destroy of TapInteractionHandler?(v13, &_s7SwiftUI6_GlassVSgMd);
    outlined destroy of TapInteractionHandler?(&v39, &_s7SwiftUI10ShapeStyle_pSgMd);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
    static Color.white.getter();
    static Font.subheadline.getter();
    v21 = v36;
    v20 = v37;
    (*(v36 + 104))(v6, *MEMORY[0x1E6980EA8], v37);
    Font.leading(_:)();

    (*(v21 + 8))(v6, v20);
    static IconButtonStyle.Defaults.phone.iconWidth.getter();
    (*(v33 + 104))(v38, *MEMORY[0x1E6995BD0], v34);
    IconButtonStyle.init(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v22 = [objc_opt_self() conversationKit];
      v42._object = 0xE000000000000000;
      v23._object = 0x80000001BC5161C0;
      v23._countAndFlagsBits = 0xD000000000000016;
      v24.value._countAndFlagsBits = 0x61737265766E6F43;
      v24.value._object = 0xEF74694B6E6F6974;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v42);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    v26 = [objc_opt_self() conversationKit];
    v43._object = 0xE000000000000000;
    v27._object = 0x80000001BC5161C0;
    v27._countAndFlagsBits = 0xD000000000000016;
    v28.value._countAndFlagsBits = 0x61737265766E6F43;
    v28.value._object = 0xEF74694B6E6F6974;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v43);

    swift_allocObject();
    v30 = v35;
    swift_weakInit();
    v16 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v30 + 16) = v16;
  }

  return v16;
}

uint64_t LocalVideoRecordButtonViewModel.enabled(for:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static Defaults.shared + 592))() & 1;
}

uint64_t LocalVideoRecordButtonViewModel.__deallocating_deinit()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocClassInstance();
}

uint64_t LocalVideoRecordButtonViewModel.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t MockCaptionsProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t MockCaptionsProvider.participantCaptionsProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t MockCaptionsProvider.captionsTask.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5();
  *(v1 + 32) = a1;
}

uint64_t key path getter for MockCaptionsProvider.captionsEnabled : MockCaptionsProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t MockCaptionsProvider.captionsEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_3_5();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  return MockCaptionsProvider.captionsEnabled.didset(v3);
}

uint64_t MockCaptionsProvider.captionsEnabled.didset(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  result = swift_beginAccess();
  if (*(v1 + 40) == 1)
  {
    if (a1)
    {
      return result;
    }

    swift_beginAccess();
    if (*(v1 + 32))
    {

      MEMORY[0x1BFB21000](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    static TaskPriority.userInitiated.getter();
    v8 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    *(v1 + 32) = v10;
  }

  else
  {
    result = swift_beginAccess();
    if (!*(v1 + 32))
    {
      return result;
    }

    MEMORY[0x1BFB21000](v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }
}

uint64_t closure #1 in MockCaptionsProvider.captionsEnabled.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return MockCaptionsProvider.start()();
}

uint64_t MockCaptionsProvider.start()()
{
  OUTLINED_FUNCTION_24_0();
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](MockCaptionsProvider.start(), 0, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = 0;
  v0[17] = 0;
  while (1)
  {
    v0[30] = v1;
    specialized MutableCollection<>.shuffle<A>(using:)();
    OUTLINED_FUNCTION_12_82(&outlined read-only object #0 of one-time initialization function for phrases);
    OUTLINED_FUNCTION_3_5();
    v0[33] = 0;
    v0[34] = 0;
    v0[35] = 0;
    v5 = v0[31];
    if (v0[32])
    {
      break;
    }

    v6 = v0[30];

    if (v6 == 100)
    {
      OUTLINED_FUNCTION_6_108();

      OUTLINED_FUNCTION_13();

      return v11();
    }

    v1 = v0[30] + 1;
  }

  if (v5[2])
  {
    v0[36] = v5[4];
    v0[37] = v5[5];

    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    OUTLINED_FUNCTION_7_16();
    v7 = OUTLINED_FUNCTION_13_59();
    v8(v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_0_192(v9);
    v5 = OUTLINED_FUNCTION_5_105(v10);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DC10](v5, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  v5 = v2[38];
  if (v0)
  {
    v6 = v3[29];
    v7 = v3[26];
    v8 = v3[27];
    v9 = v3[25];
    v10 = v3[21];

    v5(v9, v10);
    (*(v8 + 8))(v6, v7);
    v11 = MockCaptionsProvider.start();
  }

  else
  {
    v12 = v3[29];
    v13 = v3[26];
    v14 = v3[27];
    v5(v3[25], v3[21]);
    v15 = *(v14 + 8);
    v3[42] = v15;
    v3[43] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);
    v11 = MockCaptionsProvider.start();
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

{
  *(v0 + 120) = *(v0 + 288);
  *(v0 + 104) = 0;
  v1 = *(v0 + 296);
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 128) = v1;
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v3 = MEMORY[0x1BFB21D70](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v2);
  *(v0 + 352) = v3;
  v7 = *(v3 + 16);
  v8 = *(v0 + 272);
  *(v0 + 360) = v7;
  *(v0 + 368) = 0;
  if (!v7)
  {
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 144);

    specialized sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()(v17, v16, 1, (v0 + 136), v18);

    if (!__OFADD__(v8, 1))
    {
      *(v0 + 136) = v8 + 1;
      for (i = *(v0 + 264) + 1; ; i = 0)
      {
        v3 = OUTLINED_FUNCTION_20_55(i);
        if (!v21)
        {
          break;
        }

        v22 = *(v0 + 240);

        if (v22 == 100)
        {
          OUTLINED_FUNCTION_6_108();

          OUTLINED_FUNCTION_13();

          return v26();
        }

        ++*(v0 + 240);
        specialized MutableCollection<>.shuffle<A>(using:)();
        OUTLINED_FUNCTION_12_82(&outlined read-only object #0 of one-time initialization function for phrases);
        OUTLINED_FUNCTION_3_5();
      }

      if (v20 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_10_80(v3, v20);
      ContinuousClock.init()();
      static ContinuousClock.Instant.now.getter();
      OUTLINED_FUNCTION_7_16();
      v23 = OUTLINED_FUNCTION_13_59();
      v24(v23);
      v25 = swift_task_alloc();
      *(v0 + 320) = v25;
      *v25 = v0;
      OUTLINED_FUNCTION_0_192();
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return MEMORY[0x1EEE6DC10](v3, v4, v5, v6);
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v13 = *(v3 + 48);
  v12 = *(v3 + 56);
  *(v0 + 16) = *(v3 + 32);
  *(v0 + 32) = v13;
  *(v0 + 40) = v12;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  OUTLINED_FUNCTION_13_71();
  v9(v10, v11);
  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_7_95(v14);
LABEL_12:
  v3 = OUTLINED_FUNCTION_5_105(v15);

  return MEMORY[0x1EEE6DC10](v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  v3[48] = v0;

  if (v0)
  {
    v19 = v3[42];
    v6 = v3[38];
    v7 = v3[28];
    v8 = v3[26];
    v9 = v3[23];
    v10 = v3[21];

    v6(v9, v10);
    v19(v7, v8);
  }

  else
  {
    v11 = v3[42];
    v12 = v3[28];
    v13 = v3[26];
    (v3[38])(v3[23], v3[21]);
    v11(v12, v13);
  }

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  v45 = *(v0 + 104);
  v1 = *(v0 + 280);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v1;
  *(v8 + 40) = v45;
  *(v8 + 48) = v5;
  *(v8 + 56) = 0;
  *(v8 + 64) = v4;
  outlined init with copy of TaskPriority?(v3, v2);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v2, 1, v6);

  v10 = *(v0 + 152);
  if (v2 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152));
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v6 - 8) + 8))(v10, v6);
  }

  v11 = *(v8 + 16);
  swift_unknownObjectRetain();

  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  outlined destroy of TaskPriority?(*(v0 + 160));
  v15 = swift_allocObject();
  *(v15 + 16) = &async function pointer to partial apply for closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start();
  *(v15 + 24) = v8;
  if (v14 | v12)
  {
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v12;
    *(v0 + 72) = v14;
  }

  swift_task_create();

  v19 = *(v0 + 360);
  v20 = *(v0 + 280);
  v21 = *(v0 + 368) + 1;
  *(v0 + 368) = v21;
  v22 = *(v0 + 352);
  if (v21 != v19)
  {
    if (v21 < *(v22 + 16))
    {
      v30 = *(v0 + 304);
      v31 = *(v0 + 192);
      v32 = *(v0 + 168);
      v33 = v22 + 32 * v21;
      v35 = *(v33 + 48);
      v34 = *(v33 + 56);
      *(v0 + 16) = *(v33 + 32);
      *(v0 + 32) = v35;
      *(v0 + 40) = v34;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();
      ContinuousClock.init()();
      static ContinuousClock.Instant.now.getter();
      OUTLINED_FUNCTION_13_71();
      v30(v31, v32);
      v36 = swift_task_alloc();
      *(v0 + 376) = v36;
      *v36 = v0;
      OUTLINED_FUNCTION_7_95();
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v25 = *(v0 + 144);

  specialized sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()(v24, v23, 1, (v0 + 136), v25);

  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x1EEE6DC10](v22, v16, v17, v18);
  }

  *(v0 + 136) = v20 + 1;
  for (i = *(v0 + 264) + 1; ; i = 0)
  {
    v22 = OUTLINED_FUNCTION_20_55(i);
    if (!v28)
    {
      break;
    }

    v29 = *(v0 + 240);

    if (v29 == 100)
    {
      OUTLINED_FUNCTION_6_108();

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    ++*(v0 + 240);
    specialized MutableCollection<>.shuffle<A>(using:)();
    OUTLINED_FUNCTION_12_82(&outlined read-only object #0 of one-time initialization function for phrases);
    OUTLINED_FUNCTION_3_5();
  }

  if (v27 >= *(v22 + 16))
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_10_80(v22, v27);
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  OUTLINED_FUNCTION_7_16();
  v38 = OUTLINED_FUNCTION_13_59();
  v39(v38);
  v40 = swift_task_alloc();
  *(v0 + 320) = v40;
  *v40 = v0;
  OUTLINED_FUNCTION_0_192();
LABEL_20:
  OUTLINED_FUNCTION_5_105(v37);
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DC10](v22, v16, v17, v18);
}

{

  OUTLINED_FUNCTION_6_108();

  OUTLINED_FUNCTION_13();

  return v1();
}

{

  OUTLINED_FUNCTION_6_108();

  OUTLINED_FUNCTION_13();

  return v1();
}

void (*MockCaptionsProvider.captionsEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 40);
  return MockCaptionsProvider.captionsEnabled.modify;
}

void MockCaptionsProvider.captionsEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  MockCaptionsProvider.captionsEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t specialized sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  swift_beginAccess();
  v13 = *a4;
  static TaskPriority.userInitiated.getter();
  v14 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v13;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  *(v16 + 64) = a5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for Participant.Caption(0);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 96) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start(), v11, v10);
}

uint64_t closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 104);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  Date.init()();
  Date.init()();
  *v1 = v8;
  v9 = (v1 + v3[7]);
  *v9 = v7;
  v9[1] = v6;
  *(v1 + v3[8]) = v4;
  *(v1 + v3[9]) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV7CaptionVGMd);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  outlined init with copy of Participant.Caption(v1, v11 + v10);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  if (v12)
  {
    v15 = *(v14 + 24);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);

    swift_unknownObjectRetain();
    v17(v14, &protocol witness table for MockCaptionsProvider, v14, &protocol witness table for MockCaptionsProvider, v11, ObjectType, v15);

    swift_unknownObjectRelease();
    outlined destroy of Participant.Caption(v13);
  }

  else
  {

    outlined destroy of Participant.Caption(v13);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t MockCaptionsProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MockCaptionsProvider.__deallocating_deinit()
{
  MockCaptionsProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t MockCaptionsProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t protocol witness for ParticipantCaptionsProvider.participantCaptionsProviderDelegate.setter in conformance MockCaptionsProvider(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x1BFB23E10](&v20, 8);
      v5 = (v20 * v2) >> 64;
      if (v2 > v20 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v20 * v2)
        {
          do
          {
            v20 = 0;
            MEMORY[0x1BFB23E10](&v20, 8);
          }

          while (v6 > v20 * v2);
          v5 = (v20 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = (v1 + 32 + 16 * v4);
        v11 = *v9;
        v10 = v9[1];
        v12 = (v1 + 32 + 16 * v7);
        v14 = *v12;
        v13 = v12[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
          v1 = v15;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v16 = (v1 + 32 + 16 * v4);
        *v16 = v14;
        v16[1] = v13;

        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        v17 = (v1 + 32 + 16 * v7);
        *v17 = v11;
        v17[1] = v10;

        *v19 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_11_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_14_65();

  return closure #1 in sendUpdate #1 (_:complete:) in MockCaptionsProvider.start()(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MockCaptionsProvider.captionsEnabled.didset()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);

  return closure #1 in MockCaptionsProvider.captionsEnabled.didset();
}

uint64_t PushToTalkControlsRecipeGenerator.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void PushToTalkControlsRecipeGenerator.pttNoticeRecipe(controlsManager:notice:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v79 - v9;
  v10 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  v16 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - v22;
  v24 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))(v21);
  objc_opt_self();
  v91 = v24;
  v25 = swift_dynamicCastObjCClass();
  if (v25 && (v26 = specialized PushToTalkControlsRecipeGenerator.pttLeadingAccessoryView(call:)(v25)) != 0)
  {
    v29 = v26;
    v80 = a1;
    v81 = a3;
    v82 = v23;
    v88 = a4;
    v84 = v27;
    v85 = v28;
    v30 = v27;
    v92[3] = type metadata accessor for PushToTalkNotice(0);
    v92[4] = &protocol witness table for PushToTalkNotice;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
    outlined init with copy of PushToTalkNotice(v90, boxed_opaque_existential_1, type metadata accessor for PushToTalkNotice);
    v93 = 1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v87 = v30;
    v86 = v29;
    v32._countAndFlagsBits = PushToTalkNotice.title.getter();
    isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BAC30;
    PushToTalkNotice.attributedSubtitle.getter();
    *(v33 + 32) = NSAttributedString.init(_:)();
    v34 = v10;
    v35 = v89;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v34);
    v39 = v16[9];
    OUTLINED_FUNCTION_10_0();
    v79 = v34;
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);
    v43 = (v19 + v16[10]);
    v44 = v16[15];
    *(v19 + v16[16]) = 0;
    v45 = v19 + v44;
    v46 = v19 + v16[17];
    v47 = (v19 + v16[18]);
    *v47 = 1;
    v48 = OUTLINED_FUNCTION_9_95(v47, 0);
    outlined init with copy of ConversationControlsType(v48, v19);
    v19[6] = 0;
    v19[7] = v29;
    v49 = v85;
    v19[8] = v84;
    v19[9] = v49;
    v19[10] = isa;
    v19[11] = v33;
    v43[1] = 0;
    v43[2] = 0;
    *v43 = 0;
    outlined assign with copy of AttributedString?(v35, v19 + v39);
    *(v19 + v16[11]) = 2;
    *(v19 + v16[12]) = 0;
    *(v19 + v16[13]) = 1;
    *(v19 + v16[14]) = 1;
    *v46 = 0;
    *(v46 + 1) = 0;
    v46[16] = -1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v92);
    *v45 = 0u;
    *(v45 + 1) = 0u;
    *(v45 + 4) = 0;
    v45[40] = -2;
    OUTLINED_FUNCTION_1_158();
    outlined init with copy of PushToTalkNotice(v19, v15, v50);
    OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    OUTLINED_FUNCTION_9_4();
    outlined destroy of ConversationControlsRecipe(v19, v55);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {

      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    }

    else
    {
      v65 = v86;
      v66 = v87;
      OUTLINED_FUNCTION_7_3();
      v67 = v15;
      v68 = v82;
      _s15ConversationKit0A14ControlsRecipeVWObTm_1(v67, v82, v69);
      v70 = SBUIIsSystemApertureEnabled();
      v71 = v88;
      if (v70)
      {
        v72 = v89;
        PushToTalkNotice.fullSentence.getter();
        __swift_storeEnumTagSinglePayload(v72, 0, 1, v79);
        _s10Foundation16AttributedStringVSgWOdTm_0(v72, v68 + v16[9], &_s10Foundation16AttributedStringVSgMd);
        PushToTalkControlsRecipeGenerator.makePTTHUDSystemApertureElement(controlsManager:alertingStyle:)(v80, 64, v92);

        swift_unknownObjectRelease();
        _s10Foundation16AttributedStringVSgWOdTm_0(v92, v68 + v16[18], &_s15ConversationKit21SystemApertureElementVSgMd);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_1_158();
      outlined init with copy of PushToTalkNotice(v68, v71, v73);
      OUTLINED_FUNCTION_16_5();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      OUTLINED_FUNCTION_9_4();
      outlined destroy of ConversationControlsRecipe(v68, v78);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }
}

void PushToTalkControlsRecipeGenerator.pttHUDRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146._object - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v146._object - v12;
  v14 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v146._object - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v146._object - v20;
  v22 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))(v19);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = specialized PushToTalkControlsRecipeGenerator.pttLeadingAccessoryView(call:)(v23);
    if (v25)
    {
      v129 = v25;
      v138 = v9;
      v139 = v26;
      v131 = v27;
      v132 = a1;
      v133 = v13;
      v134 = v22;
      v135 = a2;
      v136 = v21;
      v137 = a3;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v28 = [v24 channelDisplayName];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      v33.super.isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;
      v34 = [v24 provider];
      v35 = [v34 localizedName];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = [v24 status];
      v130 = v14;
      if (v39 == 1)
      {
        if (![v24 isSendingTransmission])
        {
          if (![v24 isReceivingTransmission])
          {
LABEL_20:
            v142 = 2;
            v143 = 0u;
            v144 = 0u;
            v145 = 7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_1BC4BAC30;
            v127 = v139;
            v126 = v33.super.isa;
            v65 = v129;
            v128 = v129;
            v66._countAndFlagsBits = v36;
            v66._object = v38;
            *(v64 + 32) = NSAttributedString.__allocating_init(string:)(v66);
            v67 = type metadata accessor for AttributedString();
            v68 = v138;
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v69, v70, v71, v67);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
            type metadata accessor for ConversationControlsAction();
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_1BC4BA940;
            swift_storeEnumTagMultiPayload();
            v73 = v130;
            v74 = v130[9];
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v75, v76, v77, v67);
            v78 = (v17 + v73[10]);
            v79 = v17 + v73[15];
            *(v79 + 4) = 0;
            *v79 = 0u;
            *(v79 + 1) = 0u;
            v79[40] = -2;
            *(v17 + v73[16]) = 0;
            v80 = v17 + v73[17];
            v81 = (v17 + v73[18]);
            *v81 = 1;
            v82 = OUTLINED_FUNCTION_9_95(v81, 0);
            outlined init with copy of ConversationControlsType(v82, v17);
            v17[6] = 0;
            v17[7] = v65;
            v83 = v126;
            v84 = v131;
            v17[8] = v139;
            v17[9] = v84;
            v17[10] = v83;
            v17[11] = v64;
            v78[1] = 0;
            v78[2] = 0;
            *v78 = 0;
            outlined assign with copy of AttributedString?(v68, v17 + v74);
            *(v17 + v73[11]) = 2;
            *(v17 + v73[12]) = 1;
            *(v17 + v73[13]) = 1;
            *(v17 + v73[14]) = 1;
            *v80 = 0;
            *(v80 + 1) = 0;
            v80[16] = -1;
            v85 = *(v72 + 16);
            v86 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
            if (v85 <= 2)
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation16AttributedStringVSgMd);
              outlined destroy of ConversationControlsType(&v142);
              *v79 = v72;
              *(v79 + 8) = 0u;
              *(v79 + 24) = 0u;
              v79[40] = 0;
              OUTLINED_FUNCTION_1_158();
              v98 = v133;
              outlined init with copy of PushToTalkNotice(v17, v133, v105);
              OUTLINED_FUNCTION_16_5();
              __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
              OUTLINED_FUNCTION_9_4();
              outlined destroy of ConversationControlsRecipe(v17, v110);
              v97 = v136;
              v99 = v132;
            }

            else
            {
              if (one-time initialization token for conversationControls != -1)
              {
                OUTLINED_FUNCTION_0_0();
              }

              v87 = type metadata accessor for Logger();
              __swift_project_value_buffer(v87, &static Logger.conversationControls);

              v88 = Logger.logObject.getter();
              v89 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                v91 = swift_slowAlloc();
                v140 = v85;
                v141 = v91;
                *v90 = 136315138;
                v92 = String.init<A>(reflecting:)();
                v94 = v83;
                v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v141);

                *(v90 + 4) = v95;
                v83 = v94;
                _os_log_impl(&dword_1BBC58000, v88, v89, "Too many trailing actions (%s)", v90, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v91);
                MEMORY[0x1BFB23DF0](v91, -1, -1);
                v96 = v90;
                v86 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
                MEMORY[0x1BFB23DF0](v96, -1, -1);
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s10Foundation16AttributedStringVSgMd);
              outlined destroy of ConversationControlsType(&v142);
              v97 = v136;
              v98 = v133;
              v99 = v132;
              OUTLINED_FUNCTION_9_4();
              outlined destroy of ConversationControlsRecipe(v17, v100);
              OUTLINED_FUNCTION_7_7();
              __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
            }

            if (__swift_getEnumTagSinglePayload(v98, 1, v73) == 1)
            {

              swift_unknownObjectRelease();
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit0A14ControlsRecipeVSgMd);
              OUTLINED_FUNCTION_7_7();
              __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
            }

            else
            {
              OUTLINED_FUNCTION_7_3();
              _s15ConversationKit0A14ControlsRecipeVWObTm_1(v98, v97, v115);
              *(v97 + v73[16]) = 1;
              if (SBUIIsSystemApertureEnabled())
              {
                if (v86[25] != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                }

                v116 = type metadata accessor for Logger();
                __swift_project_value_buffer(v116, &static Logger.conversationControls);
                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  *v119 = 0;
                  _os_log_impl(&dword_1BBC58000, v117, v118, "pttHUD: [SystemAperture] showing content", v119, 2u);
                  MEMORY[0x1BFB23DF0](v119, -1, -1);
                }

                PushToTalkControlsRecipeGenerator.makePTTHUDSystemApertureElement(controlsManager:alertingStyle:)(v99, 128, &v142);
                swift_unknownObjectRelease();

                _s10Foundation16AttributedStringVSgWOdTm_0(&v142, v97 + v73[18], &_s15ConversationKit21SystemApertureElementVSgMd);
              }

              else
              {

                swift_unknownObjectRelease();
              }

              OUTLINED_FUNCTION_1_158();
              outlined init with copy of PushToTalkNotice(v97, v137, v120);
              OUTLINED_FUNCTION_16_5();
              __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
              OUTLINED_FUNCTION_9_4();
              outlined destroy of ConversationControlsRecipe(v97, v125);
            }

            OUTLINED_FUNCTION_30_0();
            return;
          }

          v51 = [v24 activeRemoteParticipant];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 name];
            v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            v57._countAndFlagsBits = v54;
            v57._object = v56;
            isa = NSAttributedString.__allocating_init(string:)(v57).super.isa;

            v33.super.isa = isa;
          }

          v34 = [v24 channelDisplayName];
          countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_19:
          v36 = countAndFlagsBits;
          v38 = object;

          goto LABEL_20;
        }

        v40 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_5_5();
        v44 = 0xE900000000000067;
      }

      else
      {
        v34 = &selRef_fillRule;
        if (![v24 serviceStatus])
        {
          goto LABEL_20;
        }

        v50 = [v24 serviceStatus];
        if (v50 != 2 && v50 != 1)
        {
          goto LABEL_20;
        }

        v61 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_5_5();
      }

      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v146._countAndFlagsBits = 0;
      v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v41, *&v42, v34, v62, v146);
      object = v63._object;
      countAndFlagsBits = v63._countAndFlagsBits;
      goto LABEL_19;
    }
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
}

void PushToTalkControlsRecipeGenerator.makePTTHUDSystemApertureElement(controlsManager:alertingStyle:)(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-v7];
  v9 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34[-v13];
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit18SystemApertureIconVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, &static Logger.conversationControls);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BBC58000, v16, v17, "PushToTalk: [SystemAperture] missing status icon", v18, 2u);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v35 = a2;
    _s15ConversationKit0A14ControlsRecipeVWObTm_1(v8, v14, type metadata accessor for SystemApertureIcon);
    outlined init with copy of PushToTalkNotice(v14, v11, type metadata accessor for SystemApertureIcon);
    v27 = type metadata accessor for SystemApertureIconView(0);
    v28 = objc_allocWithZone(v27);
    SystemApertureIconView.init(icon:isDetached:)();
    v26 = v29;
    type metadata accessor for SystemApertureEmptyTrailingView();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    outlined init with copy of PushToTalkNotice(v14, v11, type metadata accessor for SystemApertureIcon);
    v30 = objc_allocWithZone(v27);
    SystemApertureIconView.init(icon:isDetached:)();
    v21 = v31;
    outlined init with copy of PushToTalkNotice(v14, v11, type metadata accessor for SystemApertureIcon);
    v32 = objc_allocWithZone(v27);
    SystemApertureIconView.init(icon:isDetached:)();
    v22 = v33;
    v25 = v35;
    outlined destroy of ConversationControlsRecipe(v14, type metadata accessor for SystemApertureIcon);
    v23 = &protocol witness table for SystemApertureIconView;
    v20 = &protocol witness table for SystemApertureEmptyTrailingView;
    v24 = 4;
  }

  *a3 = v26;
  *(a3 + 8) = v23;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  *(a3 + 40) = v23;
  *(a3 + 48) = v22;
  *(a3 + 56) = v23;
  *(a3 + 64) = v24;
  *(a3 + 72) = v25;
}

id specialized PushToTalkControlsRecipeGenerator.pttLeadingAccessoryView(call:)(void *a1)
{
  v40 = type metadata accessor for UUID();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PushToTalkChannelState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
  v12 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([a1 provider]);
  v14 = static UIImageView.appIcon(for:)(v12, v13);

  v15 = [v14 image];

  v16 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
  v17 = a1;
  PushToTalkChannelState.init(_:)(v16, v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E6995F40], v5);
  LOBYTE(v16) = static PushToTalkChannelState.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if ((v16 & 1) != 0 && (v19 = [v17 activeRemoteParticipant]) != 0)
  {
    v20 = v19;
    v21 = v17;
    v22 = v20;
    v23 = v15;
    v24 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall23activeRemoteParticipant10badgeImageACSg20CommunicationsUICore05BasicI0_p_So13TUParticipantCSo7UIImageCSgtcfCTf4ennn_nAA0i6CenterI0V_Tt2g5(v21, v22, v15);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 view];
    }

    else
    {
      v26 = 0;
    }

    Hasher.init()();
    if (v25)
    {
      v34 = v26;
      v35 = v25;
      v36 = [v21 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x58))(v4);
      (*(v2 + 8))(v4, v40);
      Hasher._combine(_:)(1u);
      MEMORY[0x1BFB22640](v37);
    }

    else
    {
      Hasher._combine(_:)(0);
      v38 = v26;
      v35 = 0;
    }

    MEMORY[0x1BFB22640]([v22 hash]);
    Hasher.finalize()();
  }

  else
  {
    v27 = v17;
    v28 = v15;
    _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall10badgeImageACSg20CommunicationsUICore05BasicI0_p_So7UIImageCSgtcfCTf4enn_nAA0i6CenterI0V_Tt1g5(v27, v15);
    if (v29)
    {
      v30 = v29;
      v26 = [v29 view];
      v31 = v26;
      v32 = v30;
      v33 = [v27 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*((*MEMORY[0x1E69E7D40] & *v32) + 0x58))(v4);
      (*(v2 + 8))(v4, v40);
    }

    else
    {

      return 0;
    }
  }

  return v26;
}

uint64_t _s10Foundation16AttributedStringVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PushToTalkNotice(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void VideoMessagePlayerViewModel.__allocating_init(videoMessageURL:playerSpaciality:)()
{
  OUTLINED_FUNCTION_55();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_45_1();
  VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
}

void VideoMessageControlsView.verticalSizeClass.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = type metadata accessor for VideoMessageControlsView(0);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v0 + *(v6 + 20), v1, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v1, v3, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_45_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_30_0();
}

void VideoMessageControlsView.horizontalSizeClass.getter()
{
  VideoMessageControlsView.horizontalSizeClass.getter();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v8 = v3(0);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v0 + *(v8 + 24), v1, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v1, v5, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = OUTLINED_FUNCTION_45_1();
    v11(v10);
  }

  OUTLINED_FUNCTION_30_0();
}

id VideoMessageControlsView.videoMessageViewModel.getter()
{
  OUTLINED_FUNCTION_52_17();
  v2 = *(v0 + v1 + 8);

  return v2;
}

void VideoMessageControlsView.videoMessageViewModel.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_52_17();
  v4 = v1 + v3;

  *(v4 + 8) = a1;
}

void VideoMessageControlsView.$videoMessageViewModel.getter()
{
  OUTLINED_FUNCTION_52_17();
  type metadata accessor for VideoMessagePlayerViewModel(0);
  OUTLINED_FUNCTION_3_143();
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(v0, v1);
  OUTLINED_FUNCTION_46();

  JUMPOUT(0x1BFB1E3A0);
}

void *VideoMessageControlsView.player.getter()
{
  v1 = *(v0 + *(type metadata accessor for VideoMessageControlsView(0) + 36));
  v2 = v1;
  return v1;
}

double VideoMessageControlsView.buttonBottomPaddingDivisor.getter()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v43 = v0;
  VideoMessageControlsView.verticalSizeClass.getter();
  v24 = *MEMORY[0x1E697FF40];
  v47 = v2;
  v41 = *(v2 + 104);
  v41(v20, v24, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v42 = v4;
  v25 = *(v4 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v20, &v8[v25], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    v38 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) != 1)
    {
LABEL_11:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
      return 0.0725;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  else
  {
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
    {
LABEL_10:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      (*(v47 + 8))(v17, v1);
      goto LABEL_11;
    }

    v38 = v24;
    v26 = v47;
    v27 = v40;
    (*(v47 + 32))(v40, &v8[v25], v1);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *(v26 + 8);
    v28(v27, v1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v28(v17, v1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if ((v37 & 1) == 0)
    {
      return 0.0725;
    }
  }

  v23 = v45;
  VideoMessageControlsView.horizontalSizeClass.getter();
  v20 = v44;
  v41(v44, v38, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v29 = *(v42 + 48);
  v8 = v46;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, v46, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v20, &v8[v29], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) != 1)
  {
    v17 = v39;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v39, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v1) == 1)
    {
      goto LABEL_10;
    }

    v31 = v20;
    v32 = v23;
    v33 = v47;
    v34 = v40;
    (*(v47 + 32))(v40, &v8[v29], v1);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *(v33 + 8);
    v36(v34, v1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v36(v17, v1);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v35)
    {
      return 0.055;
    }

    return 0.0725;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v1) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return 0.055;
}

void VideoMessageControlsView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for VideoMessageControlsView(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_2();
  outlined init with copy of VideoMessageControlsView(v20, &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v30 = swift_allocObject();
  outlined init with take of VideoMessageControlsView(&a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for VideoMessageControlsView);
  KeyPath = swift_getKeyPath();
  v32 = (v21 + *(v27 + 44));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
  v34 = *MEMORY[0x1E697DBA8];
  type metadata accessor for ColorScheme();
  OUTLINED_FUNCTION_7_0();
  (*(v35 + 104))(v32 + v33, v34);
  *v32 = KeyPath;
  *v21 = partial apply for closure #1 in VideoMessageControlsView.body.getter;
  v21[1] = v30;
  specialized VideoMessageControlsView.backgroundOrCurtainAppliedToView<A>(_:)(v21);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGMd);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v5 = type metadata accessor for VideoMessageControlsView(0);
  v6 = v5 - 8;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v7;
  v70 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA6VStackVyAA19_ConditionalContentVyAEyAA08ModifiedH0VyAKyAIyAIyAKyAKy15ConversationKit020VideoMessageControlsE0V03TopnE033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAIyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAEyAKyAA6HStackVyAEyA4__AKyAKyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AIyA7_yAEyA4__AIyAKyAKyAKyAN011LocalBottomnE0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GAKyAKyAKyAN012RemoteBottomnE0APLLVASGASGAZGGtGGAGyA34_GGAEyAKyAKyAGyAEyA4__AIyAKyAKyAN010PlayButtonE0APLLVA1_GA25_GAKyA41_AA16_OverlayModifierVyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_AKyAKyAKyAKyAGyAEyA4__AKyAKyAKyAKyAKyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAIyAA06_ShapeE0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGAKyAKyAKyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v56 - v12);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGMd);
  MEMORY[0x1EEE9AC00](v61);
  v15 = &v56 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GMd);
  MEMORY[0x1EEE9AC00](v62);
  v17 = &v56 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGMd);
  MEMORY[0x1EEE9AC00](v64);
  v19 = &v56 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v56 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGAA01_D13ShapeModifierVyAA9RectangleVGGA82_yACyACyAA14LinearGradientVA72_GA1_GGGMd);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v56 - v21;
  *v13 = static Alignment.center.getter();
  v13[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA6VStackVyAA19_ConditionalContentVyAIyAA08ModifiedK0VyAOyAMyAMyAOyAOy15ConversationKit020VideoMessageControlsD0V03TopqD033_B419541366E265736F7249488C40E55CLLVAA08_PaddingG0VGAWGAMyA2XGGAXGAA010_FlexFrameG0VGAA14_OpacityEffectVG_AA6SpacerVtGAIyAOyAA6HStackVyAIyA8__AOyAOyAP18AnimatedSaveButtonVAA01_zG0VGAWGtGGA2_G_A8_tGGG_AMyA11_yAIyA8__AMyAOyAOyAOyAR011LocalBottomqD0ATLLVA5_GAA32_EnvironmentKeyTransformModifierVySbGGA5_GAOyAOyAOyAR012RemoteBottomqD0ATLLVAWGAWGA2_GGtGGAKyA38_GGAIyAOyAOyAKyAIyA8__AMyAOyAOyAR010PlayButtonD0ATLLVA5_GA29_GAOyA45_AA16_OverlayModifierVyAOyAOyAOyAOyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA51_yAA8MaterialVSgGGA15_GAA25_AlignmentWritingModifierVGGGGA8_tGGAA024_SafeAreaRegionsIgnoringG0VGA2_G_AOyAOyAOyAOyAKyAIyA8__AOyAOyAOyAOyAOyA49_AWGA51_yAA5ColorVSgGGAA19_BackgroundModifierVyAMyAA06_ShapeD0VyAA16RoundedRectangleVA81_GA88_yA90_A62_GGGGAA11_ClipEffectVyA90_GGAA31AccessibilityAttachmentModifierVGAOyAOyAOyAP13MovieScrubberATLLVA98_GAA010_FixedSizeG0VGA15_GtGGA76_GA2_GAWGA5_GSgtGSgtGGMd);
  v24 = closure #1 in closure #1 in VideoMessageControlsView.body.getter(a2, v60, v13 + *(v23 + 44));
  (*((*MEMORY[0x1E69E7D40] & **(a2 + *(v6 + 36) + 8)) + 0x120))(v79, v24);
  v71 = a2;
  if (v79[0])
  {
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
  }

  else
  {
    v60 = v8;
    v26 = *a2;
    if (*(a2 + 8) == 1)
    {
      v28 = *a2;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v58 = a3;
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<UIInterfaceOrientation>.Content(v26, 0);
      v57 = v17;
      v59 = *(v59 + 8);
      (v59)(v10, v60);
      v28 = *v79;

      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<UIInterfaceOrientation>.Content(v26, 0);
      (v59)(v10, v60);
      v17 = v57;
      v26 = v79[0];
    }

    v27 = v28 + v28;
    v25 = 0x4030000000000000;
  }

  v31 = static Edge.Set.all.getter();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v15, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA6VStackVyAA19_ConditionalContentVyAEyAA08ModifiedH0VyAKyAIyAIyAKyAKy15ConversationKit020VideoMessageControlsE0V03TopnE033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAIyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAEyAKyAA6HStackVyAEyA4__AKyAKyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AIyA7_yAEyA4__AIyAKyAKyAKyAN011LocalBottomnE0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GAKyAKyAKyAN012RemoteBottomnE0APLLVASGASGAZGGtGGAGyA34_GGAEyAKyAKyAGyAEyA4__AIyAKyAKyAN010PlayButtonE0APLLVA1_GA25_GAKyA41_AA16_OverlayModifierVyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_AKyAKyAKyAKyAGyAEyA4__AKyAKyAKyAKyAKyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAIyAA06_ShapeE0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGAKyAKyAKyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGMd);
  v32 = &v15[*(v61 + 36)];
  *v32 = v31;
  *(v32 + 1) = v27;
  *(v32 + 2) = v25;
  *(v32 + 3) = v26;
  *(v32 + 4) = v25;
  v32[40] = 0;
  v33 = static SafeAreaRegions.all.getter();
  v34 = static Edge.Set.all.getter();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v15, v17, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGMd);
  v35 = &v17[*(v62 + 36)];
  *v35 = v33;
  v35[8] = v34;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v17, v19, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GMd);
  memcpy(&v19[*(v64 + 36)], v79, 0x70uLL);
  v36 = v65;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v19, v65, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGMd);
  *(v36 + *(v63 + 36)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BC4BB980;
  static Color.black.getter();
  v38 = Color.opacity(_:)();

  *(v37 + 32) = v38;
  static Color.black.getter();
  v39 = Color.opacity(_:)();

  *(v37 + 40) = v39;
  static Color.black.getter();
  v40 = Color.opacity(_:)();

  *(v37 + 48) = v40;
  MEMORY[0x1BFB201F0](v37);
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v41 = static SafeAreaRegions.all.getter();
  LOBYTE(v33) = static Edge.Set.all.getter();
  v42 = v79[14];
  v43 = v79[15];
  v44 = v79[16];
  v45 = v79[17];
  v46 = v79[18];
  v47 = VideoMessagePlayerViewModel.playButtonOpacity.getter();
  v48 = static Alignment.center.getter();
  v50 = v49;
  v73[0] = v42;
  v73[1] = v43;
  v73[2] = v44;
  v73[3] = v45;
  v73[4] = v46;
  v73[5] = v41;
  LOBYTE(v73[6]) = v33;
  *&v73[7] = v47;
  v73[8] = v48;
  v73[9] = v49;
  v51 = v66;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v36, v66, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  memcpy((v51 + *(v67 + 36)), v73, 0x50uLL);
  v74[0] = v42;
  v74[1] = v43;
  v74[2] = v44;
  v74[3] = v45;
  v74[4] = v46;
  v74[5] = v41;
  v75 = v33;
  v76 = v47;
  v77 = v48;
  v78 = v50;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v73, &v72, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGAA14_OpacityEffectVGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGAA14_OpacityEffectVGGMd);
  v52 = v70;
  outlined init with copy of VideoMessageControlsView(v71, v70);
  v53 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v54 = swift_allocObject();
  outlined init with take of VideoMessageControlsView(v52, v54 + v53, type metadata accessor for VideoMessageControlsView);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(VStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>, _FlexFrameLayout>, _OpacityEffect>, Spacer)>, TupleView<(ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<AnimatedSaveButton, _FrameLayout>, _PaddingLayout>)>>, _FlexFrameLayout>, Spacer)>>>, _ConditionalContent<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKey();
  View.onTapGesture(count:perform:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ZStackVyAA9TupleViewVyAA6VStackVyAA012_ConditionalD0VyAGyACyACyAKyAKyACyACy15ConversationKit020VideoMessageControlsG0V03TopnG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGASGAKyA2TGGATGAA010_FlexFrameV0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyACyAA6HStackVyAGyA4__ACyACyAL18AnimatedSaveButtonVAA01_xV0VGASGtGGAZG_A4_tGGG_AKyA7_yAGyA4__AKyACyACyACyAN011LocalBottomnG0APLLVA1_GAA32_EnvironmentKeyTransformModifierVySbGGA1_GACyACyACyAN012RemoteBottomnG0APLLVASGASGAZGGtGGAIyA34_GGAGyACyACyAIyAGyA4__AKyACyACyAN010PlayButtonG0APLLVA1_GA25_GACyA41_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA47_yAA8MaterialVSgGGA11_GAA25_AlignmentWritingModifierVGGGGA4_tGGAA024_SafeAreaRegionsIgnoringV0VGAZG_ACyACyACyACyAIyAGyA4__ACyACyACyACyACyA45_ASGA47_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA77_GA84_yA86_A58_GGGGAA05_ClipZ0VyA86_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA94_GAA010_FixedSizeV0VGA11_GtGGA72_GAZGASGA1_GSgtGSgtGGASGA72_GAZGAA01_D13ShapeModifierVyAA9RectangleVGGA82_yACyACyAA14LinearGradientVA72_GA1_GGGMd);
}

uint64_t closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v122 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGMd);
  MEMORY[0x1EEE9AC00](v121);
  v115 = &v95 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGMd);
  MEMORY[0x1EEE9AC00](v100);
  v102 = (&v95 - v8);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGMd);
  MEMORY[0x1EEE9AC00](v101);
  v107 = &v95 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGMd);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v95 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGMd);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v95 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  MEMORY[0x1EEE9AC00](v108);
  v19 = &v95 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v120 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v95 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAKyAKy15ConversationKit020VideoMessageControlsG0V011LocalBottomnG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnG0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA8_GGMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v119 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v95 - v34;
  v118 = static HorizontalAlignment.center.getter();
  v36 = 1;
  v130[0] = 1;
  closure #1 in closure #1 in closure #1 in VideoMessageControlsView.body.getter(a1, v127);
  memcpy(v131, v127, 0x122uLL);
  memcpy(v132, v127, 0x122uLL);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v131, v126, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyACyACyAGyAGy15ConversationKit020VideoMessageControlsF0V03ToplF033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGACyA2PGGAPGAA010_FlexFrameT0VGAA14_OpacityEffectVG_AA6SpacerVtGAEyAGyAA6HStackVyAEyA0__AGyAGyAH18AnimatedSaveButtonVAA01_vT0VGAOGtGGAVG_A0_tGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v132, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyACyACyAGyAGy15ConversationKit020VideoMessageControlsF0V03ToplF033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGACyA2PGGAPGAA010_FlexFrameT0VGAA14_OpacityEffectVG_AA6SpacerVtGAEyAGyAA6HStackVyAEyA0__AGyAGyAH18AnimatedSaveButtonVAA01_vT0VGAOGtGGAVG_A0_tGGMd);
  memcpy(&v128[7], v131, 0x122uLL);
  v116 = v130[0];
  v124 = a1;
  v125 = a2;
  v123 = a1;
  v117 = v35;
  specialized View.conditionallyStacked<A>(with:condition:)(partial apply for closure #2 in closure #1 in closure #1 in VideoMessageControlsView.body.getter, partial apply for closure #3 in closure #1 in closure #1 in VideoMessageControlsView.body.getter, v35);
  v37 = type metadata accessor for VideoMessageControlsView(0);
  v38 = *(a1 + *(v37 + 28) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v38) + 0xC0))() == 1)
  {
    v96 = v30;
    *v19 = static HorizontalAlignment.center.getter();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v39 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAOyA0_AA16_OverlayModifierVyAOyAOyAOyAOyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA6_yAA8MaterialVSgGGAA06_FrameG0VGAA25_AlignmentWritingModifierVGGGGAKtGGMd) + 44)];
    v95 = a2;
    closure #4 in closure #1 in closure #1 in VideoMessageControlsView.body.getter(a1, a2, v39);
    v40 = static SafeAreaRegions.all.getter();
    v41 = static Edge.Set.all.getter();
    v42 = &v19[*(v108 + 36)];
    *v42 = v40;
    v42[8] = v41;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v19, v23, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    memcpy(&v23[v110[9]], v129, 0x70uLL);
    v43 = v109;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v23, v109, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
    v44 = *(a1 + *(v37 + 36));
    if (v44)
    {
      v45 = v37;
      v46 = v44;
      v47 = static HorizontalAlignment.center.getter();
      v48 = v102;
      *v102 = v47;
      *(v48 + 8) = 0x4018000000000000;
      *(v48 + 16) = 0;
      v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAMyAMyAMyAA4TextVAA08_PaddingG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundQ0VyAA012_ConditionalK0VyAA06_ShapeD0VyAA16RoundedRectangleVAVGA3_yA5_AA8MaterialVGGGGAA11_ClipEffectVyA5_GGAA023AccessibilityAttachmentQ0VGAMyAMyAMy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA15_GAA010_FixedSizeG0VGAA06_FrameG0VGtGGMd) + 44));
      v110 = v46;
      closure #5 in closure #1 in closure #1 in VideoMessageControlsView.body.getter(a1, v46, v49);
      v50 = static SafeAreaRegions.all.getter();
      v51 = static Edge.Set.all.getter();
      v52 = v48 + *(v100 + 36);
      *v52 = v50;
      *(v52 + 8) = v51;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v53 = v107;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v48, v107, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGMd);
      memcpy((v53 + *(v101 + 36)), v130, 0x70uLL);
      LOBYTE(v50) = static Edge.Set.bottom.getter();
      v54 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v50)
      {
        v54 = Edge.Set.init(rawValue:)();
      }

      v55 = GeometryProxy.size.getter();
      (*((*MEMORY[0x1E69E7D40] & *v38) + 0x120))(v127, v55);
      v56 = 0.0;
      v57 = v106;
      if (v127[0])
      {
        v58 = *a1;
        if (*(a1 + 8) != 1)
        {

          static os_log_type_t.fault.getter();
          v61 = v45;
          v62 = v43;
          v63 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v43 = v62;
          v45 = v61;
          v64 = v97;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          outlined consume of Environment<UIInterfaceOrientation>.Content(v58, 0);
          v65 = v64;
          v53 = v107;
          (*(v98 + 8))(v65, v99);
        }
      }

      EdgeInsets.init(_all:)();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v53, v57, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGMd);
      v74 = v57 + *(v103 + 36);
      *v74 = v54;
      *(v74 + 8) = v67;
      *(v74 + 16) = v69;
      *(v74 + 24) = v71;
      *(v74 + 32) = v73;
      *(v74 + 40) = 0;
      v75 = a1 + *(v45 + 32);
      v76 = *v75;
      v77 = *(v75 + 8);
      LOBYTE(v127[0]) = v76;
      v127[1] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      v78 = State.wrappedValue.getter();
      if (LOBYTE(v126[0]) == 1)
      {
        v56 = VideoMessagePlayerViewModel.scrubberOpacity.getter(v78);
      }

      v79 = v105;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v57, v105, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGMd);
      v59 = v113;
      *(v79 + *(v113 + 36)) = v56;
      v80 = v79;
      v81 = v104;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v80, v104, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGMd);
      v60 = v112;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v81, v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGMd);
      v36 = 0;
    }

    else
    {
      v60 = v112;
      v59 = v113;
    }

    __swift_storeEnumTagSinglePayload(v60, v36, 1, v59);
    v82 = v111;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v43, v111, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
    v83 = v114;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v114, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGSgMd);
    v84 = v43;
    v85 = v115;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v82, v115, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_ACyACyACyACyAEyAGyAI_ACyACyACyACyACyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeG0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGACyACyACyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v83, v85 + *(v86 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundO0VyAA012_ConditionalD0VyAA06_ShapeG0VyAA16RoundedRectangleVARGA_yA1_AA8MaterialVGGGGAA11_ClipEffectVyA1_GGAA023AccessibilityAttachmentO0VGACyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA11_GAA010_FixedSizeK0VGAA06_FrameK0VGtGGAA024_SafeAreaRegionsIgnoringK0VGAA010_FlexFrameK0VGAMGAA08_OpacityX0VGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACy15ConversationKit020VideoMessageControlsG0V010PlayButtonG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGACyAxA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVGMd);
    v30 = v96;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v85, v96, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGMd);
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v36, 1, v121);
  v87 = v117;
  v88 = v119;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v117, v119, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAKyAKy15ConversationKit020VideoMessageControlsG0V011LocalBottomnG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnG0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA8_GGMd);
  v89 = v120;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v30, v120, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGSgMd);
  v90 = v118;
  v126[0] = v118;
  v126[1] = 0;
  v91 = v116;
  LOBYTE(v126[2]) = v116;
  memcpy(&v126[2] + 1, v128, 0x129uLL);
  v92 = v122;
  memcpy(v122, v126, 0x13AuLL);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA19_ConditionalContentVyAA9TupleViewVyAA08ModifiedE0VyAIyAEyAEyAIyAIy15ConversationKit020VideoMessageControlsG0V03TopmG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAQGAEyA2RGGARGAA010_FlexFrameU0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyAIyAA6HStackVyAGyA2__AIyAIyAJ18AnimatedSaveButtonVAA01_wU0VGAQGtGGAXG_A2_tGGG_AEyA5_yAGyA2__AEyAIyAIyAIyAL011LocalBottommG0ANLLVA_GAA32_EnvironmentKeyTransformModifierVySbGGA_GAIyAIyAIyAL012RemoteBottommG0ANLLVAQGAQGAXGGtGGACyA32_GGAGyAIyAIyACyAGyA2__AEyAIyAIyAL010PlayButtonG0ANLLVA_GA23_GAIyA39_AA16_OverlayModifierVyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA45_yAA8MaterialVSgGGA9_GAA25_AlignmentWritingModifierVGGGGA2_tGGAA024_SafeAreaRegionsIgnoringU0VGAXG_AIyAIyAIyAIyACyAGyA2__AIyAIyAIyAIyAIyA43_AQGA45_yAA5ColorVSgGGAA19_BackgroundModifierVyAEyAA06_ShapeG0VyAA16RoundedRectangleVA75_GA82_yA84_A56_GGGGAA05_ClipY0VyA84_GGAA31AccessibilityAttachmentModifierVGAIyAIyAIyAJ13MovieScrubberANLLVA92_GAA010_FixedSizeU0VGA9_GtGGA70_GAXGAQGA_GSgtGSgtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v88, v92 + *(v93 + 48), &_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAKyAKy15ConversationKit020VideoMessageControlsG0V011LocalBottomnG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnG0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA8_GGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v89, v92 + *(v93 + 64), &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v126, v127, &_s7SwiftUI6VStackVyAA19_ConditionalContentVyAA9TupleViewVyAA08ModifiedE0VyAIyAEyAEyAIyAIy15ConversationKit020VideoMessageControlsG0V03TopmG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAQGAEyA2RGGARGAA010_FlexFrameU0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyAIyAA6HStackVyAGyA2__AIyAIyAJ18AnimatedSaveButtonVAA01_wU0VGAQGtGGAXG_A2_tGGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAKyAKy15ConversationKit020VideoMessageControlsG0V011LocalBottomnG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnG0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA8_GGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6SpacerV_AA012_ConditionalF0VyAEyAEy15ConversationKit020VideoMessageControlsD0V010PlayButtonD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyAxA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA01_xY15WritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA2_yAA8MaterialVSgGGAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGGGGAItGGAA30_SafeAreaRegionsIgnoringLayoutVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAGyACyAI_AEyAEyAEyAEyAEyA0_AA14_PaddingLayoutVGA2_yAA5ColorVSgGGAA19_BackgroundModifierVyAKyAA06_ShapeD0VyAA16RoundedRectangleVA38_GA45_yA47_A13_GGGGAA05_ClipW0VyA47_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAL13MovieScrubberAPLLVA55_GAA16_FixedSizeLayoutVGA18_GtGGA29_GA32_GA35_GASGSgtGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAKyAKy15ConversationKit020VideoMessageControlsG0V011LocalBottomnG033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnG0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA8_GGMd);
  v127[0] = v90;
  v127[1] = 0;
  LOBYTE(v127[2]) = v91;
  memcpy(&v127[2] + 1, v128, 0x129uLL);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v127, &_s7SwiftUI6VStackVyAA19_ConditionalContentVyAA9TupleViewVyAA08ModifiedE0VyAIyAEyAEyAIyAIy15ConversationKit020VideoMessageControlsG0V03TopmG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAQGAEyA2RGGARGAA010_FlexFrameU0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyAIyAA6HStackVyAGyA2__AIyAIyAJ18AnimatedSaveButtonVAA01_wU0VGAQGtGGAXG_A2_tGGGMd);
}

void *closure #1 in closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for VideoMessageControlsView(0) + 28) + 8);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x120))(v28);
  if (LOBYTE(v28[0]) == 1 && static Platform.current.getter() != 1)
  {
    v12 = static VerticalAlignment.center.getter();
    v23 = 1;
    closure #1 in closure #1 in closure #1 in closure #1 in VideoMessageControlsView.body.getter(a1, v28);
    memcpy(v25, v28, 0x89uLL);
    memcpy(__src, v28, 0x89uLL);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v21, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingN0VGtGMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__src, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingN0VGtGMd);
    memcpy(&v22[7], v25, 0x89uLL);
    v13 = v23;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    memcpy(&v24[7], v27, 0x70uLL);
    v17[0] = v12;
    v17[1] = 0;
    LOBYTE(v17[2]) = v13;
    memcpy(&v17[2] + 1, v22, 0x90uLL);
    memcpy(&v17[20] + 1, v24, 0x77uLL);
    memcpy(v20, v17, sizeof(v20));
    memcpy(v18, v17, sizeof(v18));
    memcpy(v19, v17, sizeof(v19));
    v16[296] = 1;
    v11 = &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v17, v28, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v28, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VGMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VGMd);
    memcpy(v21, v19, 0x118uLL);
    v21[35] = 0;
    LOBYTE(v21[36]) = 1;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyACyACyAIyAIy15ConversationKit020VideoMessageControlsG0V03TopmG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAQGACyA2RGGARGAA010_FlexFrameU0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyAIyAA6HStackVyAGyA2__AIyAIyAJ18AnimatedSaveButtonVAA01_wU0VGAQGtGGAXG_A2_tG_GWOi0_(v21);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    type metadata accessor for VideoMessagePlayerViewModel(0);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    v6 = v4;
    v7 = ObservedObject.init(wrappedValue:)();
    v9 = v8;
    VideoMessageControlsView.TopControlsView.iPadPadded(using:)(KeyPath, 0, v7, v8, __src);

    memcpy(__dst, __src, 0x7BuLL);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v10 = VideoMessagePlayerViewModel.topControlsOpacity.getter();
    memcpy(v17, __dst, 0xF0uLL);
    *&v17[30] = v10;
    memcpy(v20, v17, 0xF8uLL);
    memcpy(v18, v17, 0xF8uLL);
    memcpy(v19, v17, 0xF8uLL);
    v25[0] = 1;
    v11 = &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyACyACy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGAEyA2NGGANGAA010_FlexFrameS0VGAA14_OpacityEffectVGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v17, v28, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyACyACy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGAEyA2NGGANGAA010_FlexFrameS0VGAA14_OpacityEffectVGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v28, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyACyACy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGAEyA2NGGANGAA010_FlexFrameS0VGAA14_OpacityEffectVGMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyACyACy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGAEyA2NGGANGAA010_FlexFrameS0VGAA14_OpacityEffectVGMd);
    memcpy(v21, v19, 0xF8uLL);
    v21[31] = 0;
    LOBYTE(v21[32]) = 1;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyACyACyAIyAIy15ConversationKit020VideoMessageControlsG0V03TopmG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAQGACyA2RGGARGAA010_FlexFrameU0VGAA14_OpacityEffectVG_AA6SpacerVtGAGyAIyAA6HStackVyAGyA2__AIyAIyAJ18AnimatedSaveButtonVAA01_wU0VGAQGtGGAXG_A2_tG_GWOi_(v21);
  }

  memcpy(v28, v21, 0x122uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAGyAEyAEy15ConversationKit020VideoMessageControlsD0V03ToplD033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGAGyA2PGGAPGAA010_FlexFrameT0VGAA14_OpacityEffectVG_AA6SpacerVtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AEyAEy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VG_AItGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>, _FlexFrameLayout>, _OpacityEffect>, Spacer)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAGyAEyAEy15ConversationKit020VideoMessageControlsD0V03ToplD033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGAGyA2PGGAPGAA010_FlexFrameT0VGAA14_OpacityEffectVG_AA6SpacerVtGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<AnimatedSaveButton, _FrameLayout>, _PaddingLayout>)>>, _FlexFrameLayout>, Spacer)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AEyAEy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingO0VGtGGAA05_FlexnO0VG_AItGMd);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, v11);
  memcpy(v28, v16, 0x122uLL);
  return memcpy(a2, v28, 0x122uLL);
}

void *VideoMessageControlsView.TopControlsView.iPadPadded(using:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, void (*a3)(char *, uint64_t)@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  LODWORD(v7) = a2;
  v55 = a5;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Platform.current.getter() == 1)
  {
    (*((*MEMORY[0x1E69E7D40] & *a4) + 0x120))(v61);
    if (v61[0])
    {
      GeometryProxy.safeAreaInsets.getter();
      v14 = v13;
      v53 = v10;
      if (v7)
      {
        v15 = *&a1;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v28 = v7;
        v7 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        LODWORD(v7) = v28;
        v10 = v53;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        (*(v10 + 8))(v12, v9);
        v15 = *v61;
      }

      GeometryProxy.safeAreaInsets.getter();
      v30 = v29;
      if (v7)
      {
        v31 = *&a1;
        v32 = a1;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v54 = v7;
        v40 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v52 = a3;
        v41 = *(v10 + 8);
        v41(v12, v9);
        v31 = *v61;

        static os_log_type_t.fault.getter();
        v7 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        LOBYTE(v7) = v54;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v41(v12, v9);
        a3 = v52;
        v32 = v61[0];
      }

      GeometryProxy.safeAreaInsets.getter();
      v43 = v42;
      if (v7)
      {
        v60[0] = a1;
        v44 = *&a1;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v45 = v32;
        v46 = v7;
        v7 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        LOBYTE(v7) = v46;
        v32 = v45;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        (*(v53 + 8))(v12, v9);
        v44 = *v60;
      }

      v47 = v43 + v44 + v44;
      v48 = static Edge.Set.all.getter();
      v59[0] = v7 & 1;
      v57[0] = 0;
      v56[0] = 1;
      v61[0] = a1;
      LOBYTE(v61[1]) = v7 & 1;
      v61[2] = a3;
      v61[3] = a4;
      LOBYTE(v61[4]) = v48;
      *&v61[5] = v14 + v15 + v15;
      *&v61[6] = v30 + v31 + v31;
      v61[7] = v32;
      *&v61[8] = v47;
      LOWORD(v61[9]) = 256;
      v49 = a4;
      outlined copy of Environment<Edge>.Content(a1, v7 & 1);
    }

    else
    {
      v54 = v7;
      if (v7)
      {
        v24 = *&a1;
        v60[0] = a1;
        v25 = a1;
        v26 = a1;
        v27 = a1;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v33 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v34 = *(v10 + 8);
        v34(v12, v9);
        v24 = *v61;

        static os_log_type_t.fault.getter();
        v35 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v34(v12, v9);
        v52 = v34;
        v53 = v61[0];

        static os_log_type_t.fault.getter();
        v36 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v34(v12, v9);
        v26 = v61[0];

        static os_log_type_t.fault.getter();
        v37 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
        v52(v12, v9);
        v27 = v53;
        v25 = v60[0];
      }

      v38 = static Edge.Set.all.getter();
      v59[0] = v54 & 1;
      v57[0] = 0;
      v56[0] = 0;
      v61[0] = a1;
      LOBYTE(v61[1]) = v54 & 1;
      v61[2] = a3;
      v61[3] = a4;
      LOBYTE(v61[4]) = v38;
      *&v61[5] = v24 + v24;
      v61[6] = v27;
      v61[7] = v26;
      v61[8] = v25;
      LOWORD(v61[9]) = 0;
      outlined copy of Environment<Edge>.Content(a1, v54 & 1);
      v39 = a4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    memcpy(v57, v58, 0x4AuLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy15ConversationKit24VideoMessageControlsViewV03TopkL033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGACyA2PG_GWOi0_(v57);
    memcpy(v61, v57, 0x7AuLL);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v58, v60, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGANGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    memcpy(v60, v56, 0x7AuLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy15ConversationKit24VideoMessageControlsViewV03TopkL033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGACyA2PGGAP_GWOi_(v60);
    memcpy(v61, v60, 0x7BuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGACyA2NGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGANGMd);
    memcpy(v61, v59, 0x7BuLL);
  }

  else
  {
    v16 = static Edge.Set.top.getter();
    v17 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v16)
    {
      v17 = Edge.Set.init(rawValue:)();
    }

    v18 = GeometryProxy.safeAreaInsets.getter();
    (*((*MEMORY[0x1E69E7D40] & *a4) + 0xC0))(v18);
    EdgeInsets.init(_all:)();
    v57[0] = v7 & 1;
    v56[0] = 0;
    v60[0] = a1;
    LOBYTE(v60[1]) = v7 & 1;
    v60[2] = a3;
    v60[3] = a4;
    LOBYTE(v60[4]) = v17;
    v60[5] = v19;
    v60[6] = v20;
    v60[7] = v21;
    v60[8] = v22;
    LOBYTE(v60[9]) = 0;
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy15ConversationKit24VideoMessageControlsViewV03TopkL033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAOGACyA2PGGAP_GWOi0_(v60);
    memcpy(v59, v60, sizeof(v59));
    outlined copy of Environment<Edge>.Content(a1, v7 & 1);
    v23 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGACyA2NGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  return memcpy(v55, v61, 0x7BuLL);
}

double VideoMessagePlayerViewModel.topControlsOpacity.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))())
  {
    return 1.0;
  }

  v2 = (*((*v1 & *v0) + 0xF0))();
  result = 1.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VideoMessageControlsView(0) + 28) + 8);
  type metadata accessor for VideoMessagePlayerViewModel(0);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
  v4 = v3;
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  State.init(wrappedValue:)();
  v8 = v17;
  v9 = v18;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12[128] = 1;
  *&__src[0] = v5;
  *(&__src[0] + 1) = v7;
  LOBYTE(__src[1]) = v17;
  *(&__src[1] + 1) = v18;
  __src[2] = v13;
  __src[3] = v14;
  __src[4] = v15;
  LOBYTE(__src[5]) = v3;
  *(&__src[5] + 1) = 0x404D000000000000;
  __src[6] = 0uLL;
  *&__src[7] = 0x402A000000000000;
  BYTE8(__src[7]) = 0;
  memcpy(&v12[7], __src, 0x79uLL);
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v12, 0x80uLL);
  v17 = v5;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v3;
  v25 = 0x404D000000000000;
  v26 = 0;
  v27 = 0;
  v28 = 0x402A000000000000;
  v29 = 0;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(__src, v11, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingK0VGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v17, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit18AnimatedSaveButtonVAA12_FrameLayoutVGAA08_PaddingK0VGMd);
}

uint64_t AnimatedSaveButton.init(videoMessageViewModel:showsTitle:)()
{
  type metadata accessor for VideoMessagePlayerViewModel(0);
  OUTLINED_FUNCTION_3_143();
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(v0, v1);
  OUTLINED_FUNCTION_15_14();
  ObservedObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_18_8();
  State.init(wrappedValue:)();
  return OUTLINED_FUNCTION_15_14();
}

uint64_t closure #2 in closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v133 = a2;
  v139 = a3;
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v131 = *(v4 - 8);
  v132 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v127);
  v120 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v113 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy15ConversationKit24VideoMessageControlsViewV011LocalBottomkL033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAOGAGyAGyAGyAJ06RemotenkL0ALLLVAA14_PaddingLayoutVGAYGAA16_FlexFrameLayoutVG_GMd);
  MEMORY[0x1EEE9AC00](v138);
  v23 = &v113 - v22;
  v24 = type metadata accessor for VideoMessageControlsView.LocalBottomControlsView(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGMd);
  MEMORY[0x1EEE9AC00](v123);
  v28 = &v113 - v27;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v113 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAKGMd);
  MEMORY[0x1EEE9AC00](v135);
  v31 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v126 = &v113 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy15ConversationKit24VideoMessageControlsViewV011LocalBottomjK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAMGAEyAEyAEyAH06RemotemjK0AJLLVAA14_PaddingLayoutVGAWGAA16_FlexFrameLayoutVGGMd);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v137 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v136 = &v113 - v37;
  v117 = type metadata accessor for VideoMessageControlsView(0);
  v38 = *(a1 + *(v117 + 28) + 8);
  (*((*MEMORY[0x1E69E7D40] & *v38) + 0x120))(v143);
  v134 = v23;
  if (v143[0])
  {
    v113 = v6;
    v126 = a1;
    type metadata accessor for VideoMessagePlayerViewModel(0);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    v39 = v38;
    v40 = ObservedObject.init(wrappedValue:)();
    v124 = v41;
    v125 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v43 = static Edge.Set.leading.getter();
    *(inited + 32) = v43;
    v44 = static Edge.Set.trailing.getter();
    *(inited + 33) = v44;
    v45 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v43)
    {
      v45 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v46 = Edge.Set.init(rawValue:)();
    v47 = v132;
    v48 = v129;
    if (v46 != v44)
    {
      v45 = Edge.Set.init(rawValue:)();
    }

    v49 = v128;
    LODWORD(v123) = v45;
    EdgeInsets.init(_all:)();
    v116 = v50;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v140 = 0;
    v57 = static Edge.Set.bottom.getter();
    v58 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v57)
    {
      v58 = Edge.Set.init(rawValue:)();
    }

    v115 = v58;
    VideoMessageControlsView.buttonBottomPaddingDivisor.getter();
    GeometryProxy.size.getter();
    EdgeInsets.init(_all:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v141 = 0;
    VideoMessageControlsView.verticalSizeClass.getter();
    v67 = *(v131 + 104);
    LODWORD(v133) = *MEMORY[0x1E697FF40];
    v114 = v67;
    v67(v49);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    v68 = *(v127 + 48);
    v69 = v48;
    v70 = v48;
    v71 = v130;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v130, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v49, v71 + v68, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(v71, 1, v47) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v71 = v130;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (__swift_getEnumTagSinglePayload(v71 + v68, 1, v47) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        goto LABEL_20;
      }
    }

    else
    {
      v90 = v122;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v71, v122, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (__swift_getEnumTagSinglePayload(v71 + v68, 1, v47) != 1)
      {
        v92 = v131;
        v93 = v71 + v68;
        v94 = v113;
        (*(v131 + 32))(v113, v93, v47);
        lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
        v95 = dispatch thunk of static Equatable.== infix(_:_:)();
        v96 = v90;
        v97 = *(v92 + 8);
        v97(v94, v132);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v97(v96, v132);
        v47 = v132;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        if (v95)
        {
LABEL_20:
          v98 = v119;
          VideoMessageControlsView.horizontalSizeClass.getter();
          v99 = v121;
          v114(v121, v133, v47);
          __swift_storeEnumTagSinglePayload(v99, 0, 1, v47);
          v100 = *(v127 + 48);
          v101 = v120;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v98, v120, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v99, v101 + v100, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          if (__swift_getEnumTagSinglePayload(v101, 1, v47) == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101 + v100, 1, v47);
            v91 = v134;
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
              goto LABEL_27;
            }
          }

          else
          {
            v103 = v118;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v101, v118, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            if (__swift_getEnumTagSinglePayload(v101 + v100, 1, v47) != 1)
            {
              v104 = v131;
              v105 = v113;
              (*(v131 + 32))(v113, v101 + v100, v47);
              lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
              LODWORD(v133) = dispatch thunk of static Equatable.== infix(_:_:)();
              v106 = v98;
              v107 = *(v104 + 8);
              v107(v105, v47);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
              v107(v103, v47);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
              v91 = v134;
              goto LABEL_27;
            }

            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            (*(v131 + 8))(v103, v47);
            v91 = v134;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
          goto LABEL_27;
        }

LABEL_18:
        v91 = v134;
LABEL_27:
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        memcpy(&v142[7], v143, 0x70uLL);
        v108 = v124;
        *v91 = v125;
        *(v91 + 8) = v108;
        *(v91 + 16) = v123;
        *(v91 + 24) = v116;
        *(v91 + 32) = v52;
        *(v91 + 40) = v54;
        *(v91 + 48) = v56;
        *(v91 + 56) = 0;
        *(v91 + 64) = v115;
        *(v91 + 72) = v60;
        *(v91 + 80) = v62;
        *(v91 + 88) = v64;
        *(v91 + 96) = v66;
        *(v91 + 104) = 0;
        memcpy((v91 + 105), v142, 0x77uLL);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV012RemoteBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGAA010_FlexFrameS0VGMd);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
        v89 = v136;
        _ConditionalContent<>.init(storage:)();
        goto LABEL_28;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      (*(v131 + 8))(v90, v47);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_18;
  }

  v72 = v38;
  v73 = VideoMessageControlsView.buttonBottomPaddingDivisor.getter();
  GeometryProxy.size.getter();
  v75 = v74 - (1.0 - v73) * v74 + -16.0;
  *&v26[v24[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  *&v26[v24[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for VideoMessagePlayerViewModel(0);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
  *v26 = ObservedObject.init(wrappedValue:)();
  *(v26 + 1) = v76;
  *(v26 + 2) = swift_getKeyPath();
  v26[24] = 0;
  *&v26[v24[8]] = v75;
  v77 = *((*MEMORY[0x1E69E7D40] & *v72) + 0xF0);
  if (v77() == 4)
  {
    v78 = 0.1;
  }

  else
  {
    v78 = 1.0;
  }

  v79 = outlined init with take of VideoMessageControlsView(v26, v28, type metadata accessor for VideoMessageControlsView.LocalBottomControlsView);
  *&v28[*(v123 + 36)] = v78;
  v80 = (v77)(v79) == 4;
  KeyPath = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  v83 = v125;
  v84 = outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v28, v125, &_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGMd);
  v85 = (v83 + *(v124 + 36));
  *v85 = KeyPath;
  v85[1] = closure #1 in View.disabled(_:)partial apply;
  v85[2] = v82;
  v86 = VideoMessagePlayerViewModel.scrubberOpacity.getter(v84);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v83, v31, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  *&v31[*(v135 + 36)] = v86;
  v87 = v126;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v31, v126, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAKGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v87, v134, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAKGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV012RemoteBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGAA010_FlexFrameS0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v88 = v136;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAKGMd);
  v89 = v88;
LABEL_28:
  v109 = v137;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v89, v137, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy15ConversationKit24VideoMessageControlsViewV011LocalBottomjK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAMGAEyAEyAEyAH06RemotemjK0AJLLVAA14_PaddingLayoutVGAWGAA16_FlexFrameLayoutVGGMd);
  v110 = v139;
  *v139 = 0;
  *(v110 + 8) = 1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA08ModifiedE0VyAGyAGy15ConversationKit24VideoMessageControlsViewV011LocalBottomkL033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAOGAGyAGyAGyAJ06RemotenkL0ALLLVAA14_PaddingLayoutVGAYGAA16_FlexFrameLayoutVGGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v109, v110 + *(v111 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy15ConversationKit24VideoMessageControlsViewV011LocalBottomjK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAMGAEyAEyAEyAH06RemotemjK0AJLLVAA14_PaddingLayoutVGAWGAA16_FlexFrameLayoutVGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy15ConversationKit24VideoMessageControlsViewV011LocalBottomjK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAMGAEyAEyAEyAH06RemotemjK0AJLLVAA14_PaddingLayoutVGAWGAA16_FlexFrameLayoutVGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy15ConversationKit24VideoMessageControlsViewV011LocalBottomjK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAMGAEyAEyAEyAH06RemotemjK0AJLLVAA14_PaddingLayoutVGAWGAA16_FlexFrameLayoutVGGMd);
}