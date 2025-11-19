uint64_t key path setter for HearingRecord.$hearingAssistCapability : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingAssistCapability.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingAssistCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingAssistCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingAssistCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingAssistCapability.getter();
  return HearingRecord.$hearingAssistCapability.modify;
}

void HearingRecord.$hearingAssistCapability.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingAssistCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingAssistCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingAssistCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingAssistCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingAssistEnrolled@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMMultiState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingAssistEnrolled : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x410))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingAssistEnrolled : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingAssistEnrolled.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingAssistEnrolled.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingAssistEnrolled.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingAssistEnrolled.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingAssistEnrolled.modify;
}

void HearingRecord.hearingAssistEnrolled.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingAssistEnrolled : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x428))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingAssistEnrolled : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingAssistEnrolled.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingAssistEnrolled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingAssistEnrolled.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingAssistEnrolled.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingAssistEnrolled.getter();
  return HearingRecord.$hearingAssistEnrolled.modify;
}

void HearingRecord.$hearingAssistEnrolled.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingAssistEnrolled.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingAssistEnrolled.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingAssistEnrolled.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnrolled;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingAssistEnrolled.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnrolled;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingAssistRegionStatus@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMRegionStatus();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingAssistRegionStatus : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x440))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingAssistRegionStatus : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingAssistRegionStatus.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingAssistRegionStatus.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingAssistRegionStatus.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingAssistRegionStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingAssistRegionStatus.modify;
}

void HearingRecord.hearingAssistRegionStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingAssistRegionStatus : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x458))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingAssistRegionStatus : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingAssistRegionStatus.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingAssistRegionStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingAssistRegionStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingAssistRegionStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingAssistRegionStatus.getter();
  return HearingRecord.$hearingAssistRegionStatus.modify;
}

void HearingRecord.$hearingAssistRegionStatus.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingAssistRegionStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingAssistRegionStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingAssistRegionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistRegionStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingAssistRegionStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistRegionStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionRegionStatus@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMRegionStatus();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingProtectionRegionStatus : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x470))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionRegionStatus : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionRegionStatus.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionRegionStatus.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionRegionStatus.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingProtectionRegionStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionRegionStatus.modify;
}

void HearingRecord.hearingProtectionRegionStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionRegionStatus : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x488))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionRegionStatus : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionRegionStatus.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionRegionStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionRegionStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionRegionStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionRegionStatus.getter();
  return HearingRecord.$hearingProtectionRegionStatus.modify;
}

void HearingRecord.$hearingProtectionRegionStatus.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionRegionStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionRegionStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionRegionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionRegionStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionRegionStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionRegionStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMMultiState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingProtectionCapability : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4A0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionCapability : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionCapability.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionCapability.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionCapability.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingProtectionCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionCapability.modify;
}

void HearingRecord.hearingProtectionCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionCapability : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x4B8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionCapability : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionCapability.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionCapability.getter();
  return HearingRecord.$hearingProtectionCapability.modify;
}

void HearingRecord.$hearingProtectionCapability.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for HearingRecord.hearingProtectionEnabled : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4D0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionEnabled : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x4D8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionEnabled.getter()
{
  v5 = v0;
  MEMORY[0x1E69E5928](v0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static HearingRecordConfig.subscript.getter(KeyPath, &v4);
  v3 = v4;

  MEMORY[0x1E69E5920](v0);
  return v3;
}

uint64_t HearingRecord.hearingProtectionEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;
  MEMORY[0x1E69E5928](v1);
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static HearingRecordConfig.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*HearingRecord.hearingProtectionEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  MEMORY[0x1E69E5928](v1);
  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();
  MEMORY[0x1E69E5928](v1);

  static HearingRecordConfig.subscript.getter(KeyPath, (a1 + 3));
  return HearingRecord.hearingProtectionEnabled.modify;
}

uint64_t HearingRecord.hearingProtectionEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static HearingRecordConfig.subscript.setter(a1 + 25, v5, v4, v3);

    return MEMORY[0x1E69E5920](v5);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static HearingRecordConfig.subscript.setter(a1 + 26, v8, v7, v6);

    return MEMORY[0x1E69E5920](v8);
  }
}

uint64_t variable initialization expression of HearingRecord._hearingProtectionEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for HearingRecord();
  v5 = type metadata accessor for HMMultiState();
  lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v7);
  v6 = v7;
  return HearingRecordConfig.init(_:_:_:)(KeyPath, &v8, &v6, v4, v5, a1);
}

uint64_t HearingRecord.$hearingProtectionEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager19HearingRecordConfigVyAA0cD0CSo12HMMultiStateVAGs23CustomStringConvertibleAAyHCg0_GMd, &_s16HeadphoneManager19HearingRecordConfigVyAA0cD0CSo12HMMultiStateVAGs23CustomStringConvertibleAAyHCg0_GMR);
  HearingRecordConfig.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t HearingRecord._hearingProtectionEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionEnabled;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of HearingRecord.hearingTestRegionStatus@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMRegionStatus();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingTestRegionStatus : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingTestRegionStatus : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingTestRegionStatus.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingTestRegionStatus.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingTestRegionStatus.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingTestRegionStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingTestRegionStatus.modify;
}

void HearingRecord.hearingTestRegionStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingTestRegionStatus : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x508))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingTestRegionStatus : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingTestRegionStatus.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingTestRegionStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingTestRegionStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingTestRegionStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingTestRegionStatus.getter();
  return HearingRecord.$hearingTestRegionStatus.modify;
}

void HearingRecord.$hearingTestRegionStatus.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingTestRegionStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingTestRegionStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingTestRegionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingTestRegionStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingTestRegionStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingTestRegionStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.earLossArrayLeft@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HearingRecord.earLossArrayLeft : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x520))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.earLossArrayLeft : HearingRecord(uint64_t *a1, void *a2)
{
  outlined init with copy of [NSNumber](a1, &v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.earLossArrayLeft.setter();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.earLossArrayLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.earLossArrayLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HearingRecord.earLossArrayLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.earLossArrayLeft.modify;
}

void HearingRecord.earLossArrayLeft.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$earLossArrayLeft : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x538))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$earLossArrayLeft : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$earLossArrayLeft.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$earLossArrayLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$earLossArrayLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$earLossArrayLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$earLossArrayLeft.getter();
  return HearingRecord.$earLossArrayLeft.modify;
}

void HearingRecord.$earLossArrayLeft.modify(uint64_t **a1, char a2)
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
    HearingRecord.$earLossArrayLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$earLossArrayLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._earLossArrayLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._earLossArrayLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.earLossArrayRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HearingRecord.earLossArrayRight : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x550))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.earLossArrayRight : HearingRecord(uint64_t *a1, void *a2)
{
  outlined init with copy of [NSNumber](a1, &v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.earLossArrayRight.setter();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.earLossArrayRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.earLossArrayRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HearingRecord.earLossArrayRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.earLossArrayRight.modify;
}

void HearingRecord.earLossArrayRight.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$earLossArrayRight : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x568))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$earLossArrayRight : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$earLossArrayRight.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$earLossArrayRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$earLossArrayRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$earLossArrayRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo8NSNumberCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$earLossArrayRight.getter();
  return HearingRecord.$earLossArrayRight.modify;
}

void HearingRecord.$earLossArrayRight.modify(uint64_t **a1, char a2)
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
    HearingRecord.$earLossArrayRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$earLossArrayRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._earLossArrayRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._earLossArrayRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionOcclusionResult@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMOcclusionResult();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingProtectionOcclusionResult : HearingRecord@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x580))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionOcclusionResult : HearingRecord(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionOcclusionResult.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionOcclusionResult.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionOcclusionResult.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingProtectionOcclusionResult.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionOcclusionResult.modify;
}

void HearingRecord.hearingProtectionOcclusionResult.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionOcclusionResult : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMd, &_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x598))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionOcclusionResult : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMd, &_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionOcclusionResult.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionOcclusionResult.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionOcclusionResult.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMd, &_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionOcclusionResult.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMd, &_s7Combine9PublishedV9PublisherVySo17HMOcclusionResultV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionOcclusionResult.getter();
  return HearingRecord.$hearingProtectionOcclusionResult.modify;
}

void HearingRecord.$hearingProtectionOcclusionResult.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionOcclusionResult.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionOcclusionResult.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionOcclusionResult.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionOcclusionResult;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionOcclusionResult.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionOcclusionResult;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.validAudiograms@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKAudiogramSampleCGMd, &_sSaySo17HKAudiogramSampleCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HearingRecord.validAudiograms : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5B0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.validAudiograms : HearingRecord(uint64_t *a1, void *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.validAudiograms.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.validAudiograms.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HearingRecord.validAudiograms.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.validAudiograms.modify;
}

void HearingRecord.validAudiograms.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$validAudiograms : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5C8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$validAudiograms : HearingRecord(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x5D0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$validAudiograms.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$validAudiograms.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$validAudiograms.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$validAudiograms.getter();
  return HearingRecord.$validAudiograms.modify;
}

void HearingRecord.$validAudiograms.modify(uint64_t **a1, char a2)
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
    HearingRecord.$validAudiograms.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$validAudiograms.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._validAudiograms.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__validAudiograms;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._validAudiograms.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__validAudiograms;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.invalidAudiograms@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKAudiogramSampleCGMd, &_sSaySo17HKAudiogramSampleCGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HearingRecord.invalidAudiograms : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5E0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.invalidAudiograms : HearingRecord(uint64_t *a1, void *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5E8))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.invalidAudiograms.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.invalidAudiograms.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HearingRecord.invalidAudiograms.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.invalidAudiograms.modify;
}

void HearingRecord.invalidAudiograms.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$invalidAudiograms : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5F8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$invalidAudiograms : HearingRecord(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x600))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$invalidAudiograms.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$invalidAudiograms.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$invalidAudiograms.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17HKAudiogramSampleCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$invalidAudiograms.getter();
  return HearingRecord.$invalidAudiograms.modify;
}

void HearingRecord.$invalidAudiograms.modify(uint64_t **a1, char a2)
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
    HearingRecord.$invalidAudiograms.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$invalidAudiograms.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._invalidAudiograms.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__invalidAudiograms;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._invalidAudiograms.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__invalidAudiograms;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.safetyInformation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecord.safetyInformation : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x610))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.safetyInformation : HearingRecord(void *a1, void *a2)
{
  outlined init with copy of HMInfo?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x618))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.safetyInformation.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.safetyInformation.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*HearingRecord.safetyInformation.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.safetyInformation.modify;
}

void HearingRecord.safetyInformation.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$safetyInformation : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x628))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$safetyInformation : HearingRecord(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x630))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$safetyInformation.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$safetyInformation.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$safetyInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6HMInfoCSg_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$safetyInformation.getter();
  return HearingRecord.$safetyInformation.modify;
}

void HearingRecord.$safetyInformation.modify(uint64_t **a1, char a2)
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
    HearingRecord.$safetyInformation.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$safetyInformation.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._safetyInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__safetyInformation;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._safetyInformation.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__safetyInformation;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionPPECapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMMultiState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingProtectionPPECapability : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x640))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionPPECapability : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionPPECapability.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionPPECapability.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionPPECapability.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingProtectionPPECapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionPPECapability.modify;
}

void HearingRecord.hearingProtectionPPECapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionPPECapability : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x658))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionPPECapability : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionPPECapability.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionPPECapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionPPECapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionPPECapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionPPECapability.getter();
  return HearingRecord.$hearingProtectionPPECapability.modify;
}

void HearingRecord.$hearingProtectionPPECapability.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionPPECapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionPPECapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionPPECapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionPPECapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionPPECapLevel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for NSNumber();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecord.hearingProtectionPPECapLevel : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x670))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionPPECapLevel : HearingRecord(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionPPECapLevel.setter(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HearingRecord.hearingProtectionPPECapLevel.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionPPECapLevel.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*HearingRecord.hearingProtectionPPECapLevel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionPPECapLevel.modify;
}

void HearingRecord.hearingProtectionPPECapLevel.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionPPECapLevel : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x688))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionPPECapLevel : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionPPECapLevel.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionPPECapLevel.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionPPECapLevel.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionPPECapLevel.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionPPECapLevel.getter();
  return HearingRecord.$hearingProtectionPPECapLevel.modify;
}

void HearingRecord.$hearingProtectionPPECapLevel.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionPPECapLevel.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionPPECapLevel.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionPPECapLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapLevel;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionPPECapLevel.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapLevel;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for HearingRecord.hearingProtectionPPEEnabled : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6A0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionPPEEnabled : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6A8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionPPEEnabled.getter()
{
  v5 = v0;
  MEMORY[0x1E69E5928](v0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static HearingRecordConfig.subscript.getter(KeyPath, &v4);
  v3 = v4;

  MEMORY[0x1E69E5920](v0);
  return v3;
}

uint64_t HearingRecord.hearingProtectionPPEEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;
  MEMORY[0x1E69E5928](v1);
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static HearingRecordConfig.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*HearingRecord.hearingProtectionPPEEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  MEMORY[0x1E69E5928](v1);
  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();
  MEMORY[0x1E69E5928](v1);

  static HearingRecordConfig.subscript.getter(KeyPath, (a1 + 3));
  return HearingRecord.hearingProtectionPPEEnabled.modify;
}

uint64_t HearingRecord.hearingProtectionPPEEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static HearingRecordConfig.subscript.setter(a1 + 25, v5, v4, v3);

    return MEMORY[0x1E69E5920](v5);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static HearingRecordConfig.subscript.setter(a1 + 26, v8, v7, v6);

    return MEMORY[0x1E69E5920](v8);
  }
}

uint64_t variable initialization expression of HearingRecord._hearingProtectionPPEEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for HearingRecord();
  v5 = type metadata accessor for HMMultiState();
  lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v7);
  v6 = v7;
  return HearingRecordConfig.init(_:_:_:)(KeyPath, &v8, &v6, v4, v5, a1);
}

uint64_t HearingRecord.$hearingProtectionPPEEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager19HearingRecordConfigVyAA0cD0CSo12HMMultiStateVAGs23CustomStringConvertibleAAyHCg0_GMd, &_s16HeadphoneManager19HearingRecordConfigVyAA0cD0CSo12HMMultiStateVAGs23CustomStringConvertibleAAyHCg0_GMR);
  HearingRecordConfig.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionPPEEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPEEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t HearingRecord._hearingProtectionPPEEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPEEnabled;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of HearingRecord.hearingProtectionPPERegionStatus@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMRegionStatus();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingProtectionPPERegionStatus : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6C0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingProtectionPPERegionStatus : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingProtectionPPERegionStatus.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingProtectionPPERegionStatus.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingProtectionPPERegionStatus.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingProtectionPPERegionStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingProtectionPPERegionStatus.modify;
}

void HearingRecord.hearingProtectionPPERegionStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingProtectionPPERegionStatus : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x6D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingProtectionPPERegionStatus : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingProtectionPPERegionStatus.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingProtectionPPERegionStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingProtectionPPERegionStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingProtectionPPERegionStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingProtectionPPERegionStatus.getter();
  return HearingRecord.$hearingProtectionPPERegionStatus.modify;
}

void HearingRecord.$hearingProtectionPPERegionStatus.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingProtectionPPERegionStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingProtectionPPERegionStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingProtectionPPERegionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPERegionStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingProtectionPPERegionStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPERegionStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingAidV2RegionStatus@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMRegionStatus();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingAidV2RegionStatus : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingAidV2RegionStatus : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingAidV2RegionStatus.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingAidV2RegionStatus.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingAidV2RegionStatus.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingAidV2RegionStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingAidV2RegionStatus.modify;
}

void HearingRecord.hearingAidV2RegionStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingAidV2RegionStatus : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x708))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingAidV2RegionStatus : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingAidV2RegionStatus.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingAidV2RegionStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingAidV2RegionStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingAidV2RegionStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMd, &_s7Combine9PublishedV9PublisherVySo14HMRegionStatusV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingAidV2RegionStatus.getter();
  return HearingRecord.$hearingAidV2RegionStatus.modify;
}

void HearingRecord.$hearingAidV2RegionStatus.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingAidV2RegionStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingAidV2RegionStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingAidV2RegionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2RegionStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingAidV2RegionStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2RegionStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HearingRecord.hearingAidV2Capability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for HMMultiState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for HearingRecord.hearingAidV2Capability : HearingRecord@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x720))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.hearingAidV2Capability : HearingRecord(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  HearingRecord.hearingAidV2Capability.setter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HearingRecord.hearingAidV2Capability.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HearingRecord.hearingAidV2Capability.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HearingRecord.hearingAidV2Capability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HearingRecord.hearingAidV2Capability.modify;
}

void HearingRecord.hearingAidV2Capability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HearingRecord.$hearingAidV2Capability : HearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x738))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HearingRecord.$hearingAidV2Capability : HearingRecord(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  HearingRecord.$hearingAidV2Capability.setter(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HearingRecord.$hearingAidV2Capability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HearingRecord.$hearingAidV2Capability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HearingRecord.$hearingAidV2Capability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMd, &_s7Combine9PublishedV9PublisherVySo12HMMultiStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HearingRecord.$hearingAidV2Capability.getter();
  return HearingRecord.$hearingAidV2Capability.modify;
}

void HearingRecord.$hearingAidV2Capability.modify(uint64_t **a1, char a2)
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
    HearingRecord.$hearingAidV2Capability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HearingRecord.$hearingAidV2Capability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HearingRecord._hearingAidV2Capability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2Capability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HearingRecord._hearingAidV2Capability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2Capability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for HearingRecord.deviceRecord : HearingRecord@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x750))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HearingRecord.deviceRecord : HearingRecord(void *a1, void *a2)
{
  outlined init with copy of HMDeviceRecord?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x758))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HearingRecord.deviceRecord.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRecord);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HearingRecord.deviceRecord.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRecord);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecord.updateWithRecord(_:)(void *a1)
{
  v138 = a1;
  v117 = implicit closure #3 in HearingRecord.updateWithRecord(_:);
  v118 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v119 = partial apply for implicit closure #4 in HearingRecord.updateWithRecord(_:);
  v120 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v121 = closure #1 in OSLogArguments.append(_:)partial apply;
  v122 = closure #1 in OSLogArguments.append(_:)partial apply;
  v123 = closure #1 in OSLogArguments.append(_:)partial apply;
  v124 = closure #1 in OSLogArguments.append(_:)partial apply;
  v125 = closure #1 in OSLogArguments.append(_:)partial apply;
  v126 = closure #1 in OSLogArguments.append(_:)partial apply;
  v127 = implicit closure #1 in HearingRecord.updateWithRecord(_:);
  v128 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_6;
  v129 = partial apply for implicit closure #2 in HearingRecord.updateWithRecord(_:);
  v130 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v131 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_6;
  v132 = closure #1 in OSLogArguments.append(_:)partial apply;
  v133 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_6;
  v134 = closure #1 in OSLogArguments.append(_:)partial apply;
  v135 = closure #1 in OSLogArguments.append(_:)partial apply;
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v162 = 0;
  v161 = 0;
  v137 = 0;
  v139 = type metadata accessor for Logger();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v138);
  v143 = v54 - v142;
  v144 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v145 = v54 - v144;
  v162 = v4;
  v161 = v1;
  v146 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v146)
  {
    v115 = v146;
    v5 = v145;
    MEMORY[0x1E69E5920](v146);
    v6 = Logger.shared.unsafeMutableAddressor();
    (*(v140 + 16))(v5, v6, v139);
    MEMORY[0x1E69E5928](v138);
    v101 = 7;
    v102 = swift_allocObject();
    *(v102 + 16) = v138;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v98 = 17;
    v104 = swift_allocObject();
    v97 = 32;
    *(v104 + 16) = 32;
    v105 = swift_allocObject();
    v99 = 8;
    *(v105 + 16) = 8;
    v100 = 32;
    v7 = swift_allocObject();
    v96 = v7;
    *(v7 + 16) = v117;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v96;
    v106 = v8;
    *(v8 + 16) = v118;
    *(v8 + 24) = v9;
    v107 = swift_allocObject();
    *(v107 + 16) = v97;
    v108 = swift_allocObject();
    *(v108 + 16) = v99;
    v10 = swift_allocObject();
    v11 = v102;
    v103 = v10;
    *(v10 + 16) = v119;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v103;
    v110 = v12;
    *(v12 + 16) = v120;
    *(v12 + 24) = v13;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v109 = _allocateUninitializedArray<A>(_:)();
    v111 = v14;

    v15 = v104;
    v16 = v111;
    *v111 = v121;
    v16[1] = v15;

    v17 = v105;
    v18 = v111;
    v111[2] = v122;
    v18[3] = v17;

    v19 = v106;
    v20 = v111;
    v111[4] = v123;
    v20[5] = v19;

    v21 = v107;
    v22 = v111;
    v111[6] = v124;
    v22[7] = v21;

    v23 = v108;
    v24 = v111;
    v111[8] = v125;
    v24[9] = v23;

    v25 = v110;
    v26 = v111;
    v111[10] = v126;
    v26[11] = v25;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v113, v114))
    {
      v27 = v137;
      v88 = static UnsafeMutablePointer.allocate(capacity:)();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v89 = createStorage<A>(capacity:type:)(0);
      v90 = createStorage<A>(capacity:type:)(2);
      v92 = &v151;
      v151 = v88;
      v93 = &v150;
      v150 = v89;
      v94 = &v149;
      v149 = v90;
      v91 = 2;
      serialize(_:at:)(2, &v151);
      serialize(_:at:)(v91, v92);
      v147 = v121;
      v148 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v147, v92, v93, v94);
      v95 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v147 = v122;
        v148 = v105;
        closure #1 in osLogInternal(_:log:type:)(&v147, &v151, &v150, &v149);
        v86 = 0;
        v147 = v123;
        v148 = v106;
        closure #1 in osLogInternal(_:log:type:)(&v147, &v151, &v150, &v149);
        v85 = 0;
        v147 = v124;
        v148 = v107;
        closure #1 in osLogInternal(_:log:type:)(&v147, &v151, &v150, &v149);
        v84 = 0;
        v147 = v125;
        v148 = v108;
        closure #1 in osLogInternal(_:log:type:)(&v147, &v151, &v150, &v149);
        v83 = 0;
        v147 = v126;
        v148 = v110;
        closure #1 in osLogInternal(_:log:type:)(&v147, &v151, &v150, &v149);
        _os_log_impl(&dword_1D93D0000, v113, v114, "HeadphoneManager: %s: value changed update: %s", v88, 0x16u);
        destroyStorage<A>(_:count:)(v89, 0, v87);
        destroyStorage<A>(_:count:)(v90, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v88, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v28 = v116;
    MEMORY[0x1E69E5920](v113);
    (*(v140 + 8))(v145, v139);
    MEMORY[0x1E69E5928](v138);
    (*((*v28 & *MEMORY[0x1E69E7D40]) + 0x758))(v138);
    default argument 1 of HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(&v153);
    v152 = v153;
    return HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(v138, &v152);
  }

  else
  {
    v30 = v116;
    MEMORY[0x1E69E5928](v138);
    (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x758))(v138);
    default argument 1 of HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(&v160);
    v159 = v160;
    HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(v138, &v159);
    v31 = v143;
    v32 = Logger.shared.unsafeMutableAddressor();
    (*(v140 + 16))(v31, v32, v139);
    MEMORY[0x1E69E5928](v138);
    v69 = 7;
    v70 = swift_allocObject();
    *(v70 + 16) = v138;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    v66 = 17;
    v72 = swift_allocObject();
    v65 = 32;
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    v67 = 8;
    *(v73 + 16) = 8;
    v68 = 32;
    v33 = swift_allocObject();
    v64 = v33;
    *(v33 + 16) = v127;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v64;
    v74 = v34;
    *(v34 + 16) = v128;
    *(v34 + 24) = v35;
    v75 = swift_allocObject();
    *(v75 + 16) = v65;
    v76 = swift_allocObject();
    *(v76 + 16) = v67;
    v36 = swift_allocObject();
    v37 = v70;
    v71 = v36;
    *(v36 + 16) = v129;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v71;
    v78 = v38;
    *(v38 + 16) = v130;
    *(v38 + 24) = v39;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v77 = _allocateUninitializedArray<A>(_:)();
    v79 = v40;

    v41 = v72;
    v42 = v79;
    *v79 = v131;
    v42[1] = v41;

    v43 = v73;
    v44 = v79;
    v79[2] = v132;
    v44[3] = v43;

    v45 = v74;
    v46 = v79;
    v79[4] = v133;
    v46[5] = v45;

    v47 = v75;
    v48 = v79;
    v79[6] = v134;
    v48[7] = v47;

    v49 = v76;
    v50 = v79;
    v79[8] = v135;
    v50[9] = v49;

    v51 = v78;
    v52 = v79;
    v79[10] = v136;
    v52[11] = v51;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v81, v82))
    {
      v53 = v137;
      v56 = static UnsafeMutablePointer.allocate(capacity:)();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v57 = createStorage<A>(capacity:type:)(0);
      v58 = createStorage<A>(capacity:type:)(2);
      v60 = &v158;
      v158 = v56;
      v61 = &v157;
      v157 = v57;
      v62 = &v156;
      v156 = v58;
      v59 = 2;
      serialize(_:at:)(2, &v158);
      serialize(_:at:)(v59, v60);
      v154 = v131;
      v155 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v154, v60, v61, v62);
      v63 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v154 = v132;
        v155 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v158, &v157, &v156);
        v54[4] = 0;
        v154 = v133;
        v155 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v158, &v157, &v156);
        v54[3] = 0;
        v154 = v134;
        v155 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v158, &v157, &v156);
        v54[2] = 0;
        v154 = v135;
        v155 = v76;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v158, &v157, &v156);
        v54[1] = 0;
        v154 = v136;
        v155 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v158, &v157, &v156);
        _os_log_impl(&dword_1D93D0000, v81, v82, "HeadphoneManager: %s: deviceRecord set: %s", v56, 0x16u);
        destroyStorage<A>(_:count:)(v57, 0, v55);
        destroyStorage<A>(_:count:)(v58, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v56, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v81);
    return (*(v140 + 8))(v143, v139);
  }
}

uint64_t implicit closure #2 in HearingRecord.updateWithRecord(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t implicit closure #4 in HearingRecord.updateWithRecord(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(void *a1, uint64_t a2)
{
  v296 = a1;
  v156 = a2;
  v302 = implicit closure #1 in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:);
  v303 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v308 = partial apply for implicit closure #2 in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:);
  v312 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v314 = closure #1 in OSLogArguments.append(_:)partial apply;
  v316 = closure #1 in OSLogArguments.append(_:)partial apply;
  v318 = closure #1 in OSLogArguments.append(_:)partial apply;
  v320 = closure #1 in OSLogArguments.append(_:)partial apply;
  v322 = closure #1 in OSLogArguments.append(_:)partial apply;
  v325 = closure #1 in OSLogArguments.append(_:)partial apply;
  v405 = 0;
  v404 = 0;
  v403 = 0;
  v155 = 0;
  v253 = 0;
  v300 = type metadata accessor for Logger();
  v298 = *(v300 - 8);
  v299 = v300 - 8;
  v157 = (*(v298 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v287 = v145 - v157;
  v405 = MEMORY[0x1EEE9AC00](v296);
  v404 = *v3;
  v403 = v2;
  v402 = v404;
  v4 = *v2;
  v275 = MEMORY[0x1E69E7D40];
  (*((v4 & *MEMORY[0x1E69E7D40]) + 0x188))(&v402);
  v5 = v301;
  v158 = [v296 tone];
  v187 = 0x1FA982000uLL;
  [v158 0x1FA9827C8];
  v159 = v6;
  MEMORY[0x1E69E5920](v158);
  v160 = &v401;
  v401 = v159;
  v7 = *((*v5 & *v275) + 0x248);
  v162 = &v400;
  v8 = v7();
  v9 = v301;
  v161 = v8;
  v190 = MEMORY[0x1E69E6448];
  v191 = MEMORY[0x1E69E6470];
  ==? infix<A>(_:_:)(v10, v160, MEMORY[0x1E69E6448], MEMORY[0x1E69E6470]);
  v289 = 0;
  v161();
  v163 = [v296 amplification];
  [v163 (v187 + 1992)];
  v164 = v11;
  MEMORY[0x1E69E5920](v163);
  v165 = &v399;
  v399 = v164;
  v12 = *((*v9 & *v275) + 0x1A8);
  v167 = &v398;
  v13 = v12();
  v14 = v301;
  v166 = v13;
  ==? infix<A>(_:_:)(v15, v165, v190, v191);
  v166();
  v168 = [v296 balance];
  [v168 (v187 + 1992)];
  v169 = v16;
  MEMORY[0x1E69E5920](v168);
  v170 = &v397;
  v397 = v169;
  v17 = *((*v14 & *v275) + 0x1C8);
  v172 = &v396;
  v18 = v17();
  v19 = v301;
  v171 = v18;
  ==? infix<A>(_:_:)(v20, v170, v190, v191);
  v171();
  v173 = [v296 beamFormer];
  [v173 (v187 + 1992)];
  v174 = v21;
  MEMORY[0x1E69E5920](v173);
  v175 = &v395;
  v395 = v174;
  v22 = *((*v19 & *v275) + 0x1E8);
  v177 = &v394;
  v176 = v22();
  ==? infix<A>(_:_:)(v23, v175, v190, v191);
  v176();
  v24 = [v296 earTipFitTestCapability];
  v178 = &v393;
  v393 = v24;
  v181 = v392;
  v25 = HearingRecord.earTipFitTestCapability.modify(v392);
  v26 = v301;
  v180 = v25;
  v179 = v27;
  v293 = type metadata accessor for HMMultiState();
  v294 = lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  ==? infix<A>(_:_:)(v179, v178, v293, v294);
  v180();
  v182 = [v296 noiseSuppression];
  [v182 (v187 + 1992)];
  v183 = v28;
  MEMORY[0x1E69E5920](v182);
  v184 = &v391;
  v391 = v183;
  v29 = *((*v26 & *v275) + 0x208);
  v186 = &v390;
  v30 = v29();
  v31 = v301;
  v185 = v30;
  ==? infix<A>(_:_:)(v32, v184, v190, v191);
  v185();
  v188 = [v296 ownVoiceLevelGain];
  [v188 (v187 + 1992)];
  v189 = v33;
  MEMORY[0x1E69E5920](v188);
  v192 = &v389;
  v389 = v189;
  v34 = *((*v31 & *v275) + 0x228);
  v194 = &v388;
  v35 = v34();
  v36 = v301;
  v193 = v35;
  ==? infix<A>(_:_:)(v37, v192, v190, v191);
  v193();
  v38 = [v296 pmeVoiceEnabled];
  v195 = &v387;
  v387 = v38;
  v39 = *((*v36 & *v275) + 0x268);
  v197 = &v386;
  v40 = v39();
  v41 = v301;
  v196 = v40;
  ==? infix<A>(_:_:)(v42, v195, v293, v294);
  v196();
  v43 = [v296 pmeMediaEnabled];
  v198 = &v385;
  v385 = v43;
  v44 = *((*v41 & *v275) + 0x288);
  v200 = &v384;
  v45 = v44();
  v46 = v301;
  v199 = v45;
  ==? infix<A>(_:_:)(v47, v198, v293, v294);
  v199();
  v48 = [v296 hearingAssistEnabled];
  v201 = &v383;
  v383 = v48;
  v49 = *((*v46 & *v275) + 0x2C8);
  v203 = &v382;
  v50 = v49();
  v51 = v301;
  v202 = v50;
  ==? infix<A>(_:_:)(v52, v201, v293, v294);
  v202();
  v53 = [v296 mediaAssistEnabled];
  v204 = &v381;
  v381 = v53;
  v54 = *((*v51 & *v275) + 0x2A8);
  v206 = &v380;
  v55 = v54();
  v56 = v301;
  v205 = v55;
  ==? infix<A>(_:_:)(v57, v204, v293, v294);
  v205();
  v58 = [v296 swipeGainEnabled];
  v207 = &v379;
  v379 = v58;
  v59 = *((*v56 & *v275) + 0x2E8);
  v209 = &v378;
  v60 = v59();
  v61 = v301;
  v208 = v60;
  ==? infix<A>(_:_:)(v62, v207, v293, v294);
  v208();
  v63 = [v296 hearingAidEnabled];
  v210 = &v377;
  v377 = v63;
  v64 = *((*v61 & *v275) + 0x308);
  v212 = &v376;
  v211 = v64();
  ==? infix<A>(_:_:)(v65, v210, v293, v294);
  v211();
  v216 = [v296 bluetoothAddress];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v215 = v375;
  v375[0] = v66;
  v375[1] = v67;
  v214 = v374;
  v213 = HearingRecord.bluetoothAddress.modify(v374);
  v217 = MEMORY[0x1E69E6158];
  v218 = MEMORY[0x1E69E6180];
  ==? infix<A>(_:_:)(v68, v215, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);
  v213();
  outlined destroy of String(v215);
  MEMORY[0x1E69E5920](v216);
  v222 = [v296 bluetoothUUID];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v221 = v373;
  v373[0] = v69;
  v373[1] = v70;
  v220 = v372;
  v219 = HearingRecord.bluetoothUUID.modify(v372);
  ==? infix<A>(_:_:)(v71, v221, v217, v218);
  v219();
  outlined destroy of String(v221);
  MEMORY[0x1E69E5920](v222);
  v72 = [v296 hearingAssistCapability];
  v223 = &v371;
  v371 = v72;
  v225 = v370;
  v224 = HearingRecord.hearingAssistCapability.modify(v370);
  ==? infix<A>(_:_:)(v73, v223, v293, v294);
  v224();
  v74 = [v296 hearingAssistEnrolled];
  v226 = &v369;
  v369 = v74;
  v228 = v368;
  v227 = HearingRecord.hearingAssistEnrolled.modify(v368);
  ==? infix<A>(_:_:)(v75, v226, v293, v294);
  v227();
  v76 = [v296 hearingAssistRegionStatus];
  v229 = &v367;
  v367 = v76;
  v232 = v366;
  v231 = HearingRecord.hearingAssistRegionStatus.modify(v366);
  v230 = v77;
  v282 = type metadata accessor for HMRegionStatus();
  v283 = lazy protocol witness table accessor for type HMRegionStatus and conformance HMRegionStatus();
  ==? infix<A>(_:_:)(v230, v229, v282, v283);
  v231();
  [v296 hearingProtectionRegionStatus];
  HearingRecord.hearingProtectionRegionStatus.setter();
  v78 = [v296 hearingProtectionCapability];
  v233 = &v365;
  v365 = v78;
  v235 = v364;
  v79 = HearingRecord.hearingProtectionCapability.modify(v364);
  v80 = v301;
  v234 = v79;
  ==? infix<A>(_:_:)(v81, v233, v293, v294);
  v234();
  v82 = [v296 hearingProtectionEnabled];
  v236 = &v363;
  v363 = v82;
  v83 = *((*v80 & *v275) + 0x4E0);
  v238 = &v362;
  v237 = v83();
  ==? infix<A>(_:_:)(v84, v236, v293, v294);
  v237();
  v85 = [v296 hearingTestRegionStatus];
  v239 = &v361;
  v361 = v85;
  v241 = v360;
  v240 = HearingRecord.hearingTestRegionStatus.modify(v360);
  ==? infix<A>(_:_:)(v86, v239, v282, v283);
  v240();
  v246 = [v296 earLossArrayLeft];
  v271 = type metadata accessor for NSNumber();
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v245 = &v359;
  v359 = v87;
  v244 = v358;
  v243 = HearingRecord.earLossArrayLeft.modify(v358);
  v242 = v88;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  v248 = lazy protocol witness table accessor for type [NSNumber] and conformance <A> [A]();
  ==? infix<A>(_:_:)(v242, v245, v247, v248);
  v243();
  outlined destroy of [NSNumber](v245);
  MEMORY[0x1E69E5920](v246);
  v252 = [v296 earLossArrayRight];
  v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v251 = &v357;
  v357 = v89;
  v250 = v356;
  v249 = HearingRecord.earLossArrayRight.modify(v356);
  ==? infix<A>(_:_:)(v90, v251, v247, v248);
  v249();
  outlined destroy of [NSNumber](v251);
  MEMORY[0x1E69E5920](v252);
  v91 = [v296 hearingProtectionOcclusionResult];
  v254 = &v355;
  v355 = v91;
  v258 = v354;
  v257 = HearingRecord.hearingProtectionOcclusionResult.modify(v354);
  v256 = v92;
  v255 = type metadata accessor for HMOcclusionResult();
  v93 = lazy protocol witness table accessor for type HMOcclusionResult and conformance HMOcclusionResult();
  ==? infix<A>(_:_:)(v256, v254, v255, v93);
  v257();
  v94 = [v296 hideOffModeCapability];
  v259 = &v353;
  v353 = v94;
  v261 = v352;
  v95 = HearingRecord.hideOffModeCapability.modify(v352);
  v96 = v301;
  v260 = v95;
  ==? infix<A>(_:_:)(v97, v259, v293, v294);
  v260();
  v98 = [v296 safetyInformation];
  v266 = &v351;
  v351 = v98;
  v99 = *((*v96 & *v275) + 0x620);
  v265 = &v350;
  v264 = v99();
  v263 = v100;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
  v101 = lazy protocol witness table accessor for type HMInfo? and conformance <A> A?();
  ==? infix<A>(_:_:)(v263, v266, v262, v101);
  v264();
  outlined destroy of HMInfo?(v266);
  v102 = [v296 hearingProtectionPPECapability];
  v267 = &v349;
  v349 = v102;
  v269 = v348;
  v268 = HearingRecord.hearingProtectionPPECapability.modify(v348);
  ==? infix<A>(_:_:)(v103, v267, v293, v294);
  v268();
  v104 = [v296 hearingProtectionPPECapLevel];
  v270 = &v347;
  v347 = v104;
  v274 = v346;
  v105 = HearingRecord.hearingProtectionPPECapLevel.modify(v346);
  v106 = v301;
  v273 = v105;
  v272 = v107;
  v108 = lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  ==? infix<A>(_:_:)(v272, v270, v271, v108);
  v273();
  MEMORY[0x1E69E5920](v347);
  v109 = [v296 hearingProtectionPPEEnabled];
  v276 = &v345;
  v345 = v109;
  v110 = *((*v106 & *v275) + 0x6B0);
  v278 = &v344;
  v277 = v110();
  ==? infix<A>(_:_:)(v111, v276, v293, v294);
  v277();
  v112 = [v296 hearingProtectionPPERegionStatus];
  v279 = &v343;
  v343 = v112;
  v281 = v342;
  v280 = HearingRecord.hearingProtectionPPERegionStatus.modify(v342);
  ==? infix<A>(_:_:)(v113, v279, v282, v283);
  v280();
  v114 = [v296 hearingAidV2RegionStatus];
  v284 = &v341;
  v341 = v114;
  v286 = v340;
  v285 = HearingRecord.hearingAidV2RegionStatus.modify(v340);
  ==? infix<A>(_:_:)(v115, v284, v282, v283);
  v285();
  v116 = [v296 hearingAidV2Capability];
  v288 = &v339;
  v339 = v116;
  v291 = v338;
  v117 = HearingRecord.hearingAidV2Capability.modify(v338);
  v118 = v287;
  v290 = v117;
  ==? infix<A>(_:_:)(v119, v288, v293, v294);
  v290();
  v295 = 0x1FBF9F000uLL;
  v120 = [v296 0x1FBF9F3DELL];
  v292 = &v337;
  v337 = v120;
  v336 = [v301 (v295 + 990)];
  ==? infix<A>(_:_:)(&v336, v292, v293, v294);
  v297 = 0x1FC276000uLL;
  [v301 0x1FC276177];
  v121 = [v296 (v295 + 990)];
  [v301 (v297 + 375)];
  v122 = Logger.shared.unsafeMutableAddressor();
  (*(v298 + 16))(v118, v122, v300);
  MEMORY[0x1E69E5928](v301);
  v310 = 7;
  v311 = swift_allocObject();
  *(v311 + 16) = v301;
  v329 = Logger.logObject.getter();
  v330 = static os_log_type_t.default.getter();
  v306 = 17;
  v315 = swift_allocObject();
  v305 = 32;
  *(v315 + 16) = 32;
  v317 = swift_allocObject();
  v307 = 8;
  *(v317 + 16) = 8;
  v309 = 32;
  v123 = swift_allocObject();
  v304 = v123;
  *(v123 + 16) = v302;
  *(v123 + 24) = 0;
  v124 = swift_allocObject();
  v125 = v304;
  v319 = v124;
  *(v124 + 16) = v303;
  *(v124 + 24) = v125;
  v321 = swift_allocObject();
  *(v321 + 16) = v305;
  v323 = swift_allocObject();
  *(v323 + 16) = v307;
  v126 = swift_allocObject();
  v127 = v311;
  v313 = v126;
  *(v126 + 16) = v308;
  *(v126 + 24) = v127;
  v128 = swift_allocObject();
  v129 = v313;
  v326 = v128;
  *(v128 + 16) = v312;
  *(v128 + 24) = v129;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v324 = _allocateUninitializedArray<A>(_:)();
  v327 = v130;

  v131 = v315;
  v132 = v327;
  *v327 = v314;
  v132[1] = v131;

  v133 = v317;
  v134 = v327;
  v327[2] = v316;
  v134[3] = v133;

  v135 = v319;
  v136 = v327;
  v327[4] = v318;
  v136[5] = v135;

  v137 = v321;
  v138 = v327;
  v327[6] = v320;
  v138[7] = v137;

  v139 = v323;
  v140 = v327;
  v327[8] = v322;
  v140[9] = v139;

  v141 = v326;
  v142 = v327;
  v327[10] = v325;
  v142[11] = v141;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v329, v330))
  {
    v143 = v155;
    v147 = static UnsafeMutablePointer.allocate(capacity:)();
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v148 = createStorage<A>(capacity:type:)(0);
    v149 = createStorage<A>(capacity:type:)(2);
    v151 = &v335;
    v335 = v147;
    v152 = &v334;
    v334 = v148;
    v153 = &v333;
    v333 = v149;
    v150 = 2;
    serialize(_:at:)(2, &v335);
    serialize(_:at:)(v150, v151);
    v331 = v314;
    v332 = v315;
    closure #1 in osLogInternal(_:log:type:)(&v331, v151, v152, v153);
    v154 = v143;
    if (v143)
    {

      __break(1u);
    }

    else
    {
      v331 = v316;
      v332 = v317;
      closure #1 in osLogInternal(_:log:type:)(&v331, &v335, &v334, &v333);
      v145[4] = 0;
      v331 = v318;
      v332 = v319;
      closure #1 in osLogInternal(_:log:type:)(&v331, &v335, &v334, &v333);
      v145[3] = 0;
      v331 = v320;
      v332 = v321;
      closure #1 in osLogInternal(_:log:type:)(&v331, &v335, &v334, &v333);
      v145[2] = 0;
      v331 = v322;
      v332 = v323;
      closure #1 in osLogInternal(_:log:type:)(&v331, &v335, &v334, &v333);
      v145[1] = 0;
      v331 = v325;
      v332 = v326;
      closure #1 in osLogInternal(_:log:type:)(&v331, &v335, &v334, &v333);
      _os_log_impl(&dword_1D93D0000, v329, v330, "HeadphoneManager: %s: updated VM set: %s", v147, 0x16u);
      destroyStorage<A>(_:count:)(v148, 0, v146);
      destroyStorage<A>(_:count:)(v149, 2, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v147, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v329);
  (*(v298 + 8))(v287, v300);
  return $defer #1 () in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(v301);
}

uint64_t $defer #1 () in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

uint64_t implicit closure #2 in HearingRecord.updatePropertiesFor(updateRecord:remoteSendState:)(void *a1)
{
  v2 = [a1 debugDescription];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

Swift::Void __swiftcall HearingRecord.setPublishedAudiogram(_:)(HKAudiogramSample a1)
{
  isa = a1.super.super.super.isa;
  v66 = partial apply for closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v67 = implicit closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v68 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v69 = implicit closure #2 in HearingRecord.setPublishedAudiogram(_:);
  v70 = _sSiIegd_SiIegr_TRTA_3;
  v71 = closure #1 in OSLogArguments.append(_:)partial apply;
  v72 = closure #1 in OSLogArguments.append(_:)partial apply;
  v73 = closure #1 in OSLogArguments.append(_:)partial apply;
  v74 = closure #1 in OSLogArguments.append(_:)partial apply;
  v75 = closure #1 in OSLogArguments.append(_:)partial apply;
  v76 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4;
  v100 = 0;
  v99 = 0;
  v77 = 0;
  v93 = 0;
  v92 = 0;
  v79 = type metadata accessor for Logger();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v30 - v82;
  v100 = MEMORY[0x1EEE9AC00](isa);
  v99 = v1;
  v84 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v84)
  {
    v65 = v84;
    v64 = v84;
    v93 = v84;
    type metadata accessor for HMDeviceConfigurations();
    v63 = HMDeviceConfigurations.__allocating_init()();
    v92 = v63;
    [v63 setSelectedAudiogram_];
    v57 = *Headphone_Manager.shared.unsafeMutableAddressor();
    v2 = v57;
    v3 = MEMORY[0x1E69E5928](v57);
    v62 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x150))(v3);
    MEMORY[0x1E69E5920](v57);
    v59 = [v64 bluetoothUUID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v5;
    v61 = MEMORY[0x1DA730940](v4);

    MEMORY[0x1E69E5920](v59);
    MEMORY[0x1E69E5928](isa);
    v6 = swift_allocObject();
    v7 = v66;
    *(v6 + 16) = isa;
    v90 = v7;
    v91 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = 0;
    v88 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v89 = &block_descriptor_4;
    v60 = _Block_copy(&aBlock);

    [v62 modifyDeviceConfig:v63 identifier:v61 completion:v60];
    _Block_release(v60);
    MEMORY[0x1E69E5920](v61);
    MEMORY[0x1E69E5920](v62);
    MEMORY[0x1E69E5920](v63);
    MEMORY[0x1E69E5920](v64);
  }

  else
  {
    v8 = v83;
    v9 = Logger.shared.unsafeMutableAddressor();
    (*(v80 + 16))(v8, v9, v79);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v41 = 17;
    v44 = 7;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    v42 = 8;
    *(v47 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v40 = v10;
    *(v10 + 16) = v67;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v40;
    v48 = v11;
    *(v11 + 16) = v68;
    *(v11 + 24) = v12;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = v42;
    v13 = swift_allocObject();
    v45 = v13;
    *(v13 + 16) = v69;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v45;
    v52 = v14;
    *(v14 + 16) = v70;
    *(v14 + 24) = v15;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v16;

    v17 = v46;
    v18 = v53;
    *v53 = v71;
    v18[1] = v17;

    v19 = v47;
    v20 = v53;
    v53[2] = v72;
    v20[3] = v19;

    v21 = v48;
    v22 = v53;
    v53[4] = v73;
    v22[5] = v21;

    v23 = v49;
    v24 = v53;
    v53[6] = v74;
    v24[7] = v23;

    v25 = v50;
    v26 = v53;
    v53[8] = v75;
    v26[9] = v25;

    v27 = v52;
    v28 = v53;
    v53[10] = v76;
    v28[11] = v27;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v55, v56))
    {
      v29 = v77;
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0);
      v34 = createStorage<A>(capacity:type:)(1);
      v36 = &v98;
      v98 = v32;
      v37 = &v97;
      v97 = v33;
      v38 = &v96;
      v96 = v34;
      v35 = 2;
      serialize(_:at:)(2, &v98);
      serialize(_:at:)(v35, v36);
      v94 = v71;
      v95 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v94, v36, v37, v38);
      v39 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v94 = v72;
        v95 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[3] = 0;
        v94 = v73;
        v95 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[2] = 0;
        v94 = v74;
        v95 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[1] = 0;
        v94 = v75;
        v95 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        v30[0] = 0;
        v94 = v76;
        v95 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v94, &v98, &v97, &v96);
        _os_log_impl(&dword_1D93D0000, v55, v56, "HeadphoneManager: %s: %ld unable to set audiogram without device record!", v32, 0x16u);
        destroyStorage<A>(_:count:)(v33, 0, v31);
        destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v32, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v55);
    (*(v80 + 8))(v83, v79);
  }
}

void closure #1 in HearingRecord.setPublishedAudiogram(_:)(void *a1, uint64_t a2)
{
  v188 = a1;
  v180 = a2;
  v148 = implicit closure #1 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v149 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v150 = implicit closure #2 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v151 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v152 = partial apply for implicit closure #3 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v153 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v154 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v155 = closure #1 in OSLogArguments.append(_:)partial apply;
  v156 = closure #1 in OSLogArguments.append(_:)partial apply;
  v157 = closure #1 in OSLogArguments.append(_:)partial apply;
  v158 = closure #1 in OSLogArguments.append(_:)partial apply;
  v159 = closure #1 in OSLogArguments.append(_:)partial apply;
  v160 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v161 = closure #1 in OSLogArguments.append(_:)partial apply;
  v162 = closure #1 in OSLogArguments.append(_:)partial apply;
  v163 = closure #1 in OSLogArguments.append(_:)partial apply;
  v164 = implicit closure #4 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v165 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v166 = implicit closure #5 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v167 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v168 = partial apply for implicit closure #6 in closure #1 in HearingRecord.setPublishedAudiogram(_:);
  v169 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v170 = closure #1 in OSLogArguments.append(_:)partial apply;
  v171 = closure #1 in OSLogArguments.append(_:)partial apply;
  v172 = closure #1 in OSLogArguments.append(_:)partial apply;
  v173 = closure #1 in OSLogArguments.append(_:)partial apply;
  v174 = closure #1 in OSLogArguments.append(_:)partial apply;
  v175 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v176 = closure #1 in OSLogArguments.append(_:)partial apply;
  v177 = closure #1 in OSLogArguments.append(_:)partial apply;
  v178 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = 0;
  v200 = 0;
  v179 = 0;
  v194 = 0;
  v181 = type metadata accessor for Logger();
  v182 = *(v181 - 8);
  v183 = v181 - 8;
  v184 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v188);
  v185 = v74 - v184;
  v186 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v187 = v74 - v186;
  v201 = v4;
  v200 = v5;
  v6 = v4;
  if (v188)
  {
    v147 = v188;
    v7 = v187;
    v123 = v188;
    v194 = v188;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v182 + 16))(v7, v8, v181);
    v9 = v123;
    v130 = 7;
    v128 = swift_allocObject();
    *(v128 + 16) = v123;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    v126 = 17;
    v133 = swift_allocObject();
    *(v133 + 16) = 32;
    v134 = swift_allocObject();
    v127 = 8;
    *(v134 + 16) = 8;
    v129 = 32;
    v10 = swift_allocObject();
    v124 = v10;
    *(v10 + 16) = v148;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v124;
    v135 = v11;
    *(v11 + 16) = v149;
    *(v11 + 24) = v12;
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v127;
    v13 = swift_allocObject();
    v125 = v13;
    *(v13 + 16) = v150;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v125;
    v138 = v14;
    *(v14 + 16) = v151;
    *(v14 + 24) = v15;
    v139 = swift_allocObject();
    *(v139 + 16) = 64;
    v140 = swift_allocObject();
    *(v140 + 16) = v127;
    v16 = swift_allocObject();
    v17 = v128;
    v131 = v16;
    *(v16 + 16) = v152;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v131;
    v132 = v18;
    *(v18 + 16) = v153;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v132;
    v142 = v20;
    *(v20 + 16) = v154;
    *(v20 + 24) = v21;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v141 = _allocateUninitializedArray<A>(_:)();
    v143 = v22;

    v23 = v133;
    v24 = v143;
    *v143 = v155;
    v24[1] = v23;

    v25 = v134;
    v26 = v143;
    v143[2] = v156;
    v26[3] = v25;

    v27 = v135;
    v28 = v143;
    v143[4] = v157;
    v28[5] = v27;

    v29 = v136;
    v30 = v143;
    v143[6] = v158;
    v30[7] = v29;

    v31 = v137;
    v32 = v143;
    v143[8] = v159;
    v32[9] = v31;

    v33 = v138;
    v34 = v143;
    v143[10] = v160;
    v34[11] = v33;

    v35 = v139;
    v36 = v143;
    v143[12] = v161;
    v36[13] = v35;

    v37 = v140;
    v38 = v143;
    v143[14] = v162;
    v38[15] = v37;

    v39 = v142;
    v40 = v143;
    v143[16] = v163;
    v40[17] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v145, v146))
    {
      v41 = v179;
      v116 = static UnsafeMutablePointer.allocate(capacity:)();
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v115 = 1;
      v117 = createStorage<A>(capacity:type:)(1);
      v118 = createStorage<A>(capacity:type:)(v115);
      v119 = &v193;
      v193 = v116;
      v120 = &v192;
      v192 = v117;
      v121 = &v191;
      v191 = v118;
      serialize(_:at:)(2, &v193);
      serialize(_:at:)(3, v119);
      v189 = v155;
      v190 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v189, v119, v120, v121);
      v122 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v189 = v156;
        v190 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v113 = 0;
        v189 = v157;
        v190 = v135;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v112 = 0;
        v189 = v158;
        v190 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v111 = 0;
        v189 = v159;
        v190 = v137;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v110 = 0;
        v189 = v160;
        v190 = v138;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v109 = 0;
        v189 = v161;
        v190 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v108 = 0;
        v189 = v162;
        v190 = v140;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        v107 = 0;
        v189 = v163;
        v190 = v142;
        closure #1 in osLogInternal(_:log:type:)(&v189, &v193, &v192, &v191);
        _os_log_impl(&dword_1D93D0000, v145, v146, "HeadphoneManager: %s: %ld failed to set published audiogram! %@", v116, 0x20u);
        v106 = 1;
        destroyStorage<A>(_:count:)(v117, 1, v114);
        destroyStorage<A>(_:count:)(v118, v106, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v116, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v145);
    (*(v182 + 8))(v187, v181);
  }

  else
  {
    v42 = v185;
    v43 = Logger.shared.unsafeMutableAddressor();
    (*(v182 + 16))(v42, v43, v181);
    MEMORY[0x1E69E5928](v180);
    v89 = 7;
    v90 = swift_allocObject();
    *(v90 + 16) = v180;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v86 = 17;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v93 = swift_allocObject();
    v87 = 8;
    *(v93 + 16) = 8;
    v88 = 32;
    v44 = swift_allocObject();
    v84 = v44;
    *(v44 + 16) = v164;
    *(v44 + 24) = 0;
    v45 = swift_allocObject();
    v46 = v84;
    v94 = v45;
    *(v45 + 16) = v165;
    *(v45 + 24) = v46;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    v47 = swift_allocObject();
    v85 = v47;
    *(v47 + 16) = v166;
    *(v47 + 24) = 0;
    v48 = swift_allocObject();
    v49 = v85;
    v97 = v48;
    *(v48 + 16) = v167;
    *(v48 + 24) = v49;
    v98 = swift_allocObject();
    *(v98 + 16) = 64;
    v99 = swift_allocObject();
    *(v99 + 16) = v87;
    v50 = swift_allocObject();
    v51 = v90;
    v91 = v50;
    *(v50 + 16) = v168;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v91;
    v101 = v52;
    *(v52 + 16) = v169;
    *(v52 + 24) = v53;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v100 = _allocateUninitializedArray<A>(_:)();
    v102 = v54;

    v55 = v92;
    v56 = v102;
    *v102 = v170;
    v56[1] = v55;

    v57 = v93;
    v58 = v102;
    v102[2] = v171;
    v58[3] = v57;

    v59 = v94;
    v60 = v102;
    v102[4] = v172;
    v60[5] = v59;

    v61 = v95;
    v62 = v102;
    v102[6] = v173;
    v62[7] = v61;

    v63 = v96;
    v64 = v102;
    v102[8] = v174;
    v64[9] = v63;

    v65 = v97;
    v66 = v102;
    v102[10] = v175;
    v66[11] = v65;

    v67 = v98;
    v68 = v102;
    v102[12] = v176;
    v68[13] = v67;

    v69 = v99;
    v70 = v102;
    v102[14] = v177;
    v70[15] = v69;

    v71 = v101;
    v72 = v102;
    v102[16] = v178;
    v72[17] = v71;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v104, v105))
    {
      v73 = v179;
      v77 = static UnsafeMutablePointer.allocate(capacity:)();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = 1;
      v78 = createStorage<A>(capacity:type:)(1);
      v79 = createStorage<A>(capacity:type:)(v76);
      v80 = &v199;
      v199 = v77;
      v81 = &v198;
      v198 = v78;
      v82 = &v197;
      v197 = v79;
      serialize(_:at:)(2, &v199);
      serialize(_:at:)(3, v80);
      v195 = v170;
      v196 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v195, v80, v81, v82);
      v83 = v73;
      if (v73)
      {

        __break(1u);
      }

      else
      {
        v195 = v171;
        v196 = v93;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[7] = 0;
        v195 = v172;
        v196 = v94;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[6] = 0;
        v195 = v173;
        v196 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[5] = 0;
        v195 = v174;
        v196 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[4] = 0;
        v195 = v175;
        v196 = v97;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[3] = 0;
        v195 = v176;
        v196 = v98;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[2] = 0;
        v195 = v177;
        v196 = v99;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        v74[1] = 0;
        v195 = v178;
        v196 = v101;
        closure #1 in osLogInternal(_:log:type:)(&v195, &v199, &v198, &v197);
        _os_log_impl(&dword_1D93D0000, v104, v105, "HeadphoneManager: %s: %ld sucessfully set published audiogram! %@", v77, 0x20u);
        v74[0] = 1;
        destroyStorage<A>(_:count:)(v78, 1, v75);
        destroyStorage<A>(_:count:)(v79, v74[0], MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v77, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v104);
    (*(v182 + 8))(v185, v181);
  }
}

uint64_t default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
}

{
  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
}

uint64_t HearingRecord.resetHearingAidTunings(completion:)(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v36 = a1;
  v37 = a2;
  v35 = v2;
  v34 = 2;
  v17 = MEMORY[0x1E69E7D40];
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x188))(&v34);
  type metadata accessor for HMDeviceConfigurations();
  v24 = HMDeviceConfigurations.__allocating_init()();
  v33 = v24;
  type metadata accessor for NSNumber();
  isa = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setBalance_];
  MEMORY[0x1E69E5920](isa);
  v11 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setTone_];
  MEMORY[0x1E69E5920](v11);
  v12 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v24 setBeamFormer_];
  MEMORY[0x1E69E5920](v12);
  v13 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v24 setNoiseSuppression_];
  MEMORY[0x1E69E5920](v13);
  v14 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setOwnVoiceLevelGain_];
  MEMORY[0x1E69E5920](v14);
  v15 = NSNumber.init(floatLiteral:)(0.5).super.super.isa;
  [v24 setAmplification_];
  MEMORY[0x1E69E5920](v15);
  v3 = Headphone_Manager.shared.unsafeMutableAddressor();
  v4 = *v3;
  v16 = *v3;
  v5 = MEMORY[0x1E69E5928](*v3);
  v23 = (*((*v4 & *v17) + 0x150))(v5);
  v6 = MEMORY[0x1E69E5920](v16);
  v7 = (*((*v25 & *v17) + 0x350))(v6);
  v22 = MEMORY[0x1DA730940](v7);

  v20 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  MEMORY[0x1E69E5928](v24);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v20;
  v8[5] = v24;
  v31 = partial apply for closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v32 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = 0;
  v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v30 = &block_descriptor_327;
  v21 = _Block_copy(&aBlock);

  [v23 modifyDeviceConfig:v24 identifier:v22 completion:v21];
  _Block_release(v21);
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v24);
  return $defer #1 () in HearingRecord.resetHearingAidTunings(completion:)(v25);
}

uint64_t $defer #1 () in HearingRecord.resetHearingAidTunings(completion:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

uint64_t closure #1 in HearingRecord.resetHearingAidTunings(completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v151 = a1;
  v145 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v130 = implicit closure #1 in closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v131 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v132 = partial apply for implicit closure #2 in closure #1 in HearingRecord.resetHearingAidTunings(completion:);
  v133 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v134 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v135 = closure #1 in OSLogArguments.append(_:)partial apply;
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = closure #1 in OSLogArguments.append(_:)partial apply;
  v138 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = closure #1 in OSLogArguments.append(_:)partial apply;
  v140 = closure #1 in OSLogArguments.append(_:)partial apply;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v169 = 0;
  v168 = 0;
  v157 = 0;
  v141 = 0;
  v146 = type metadata accessor for Logger();
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v149 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v57 - v149;
  v172 = MEMORY[0x1EEE9AC00](v151);
  v170 = v5;
  v171 = v6;
  v169 = v7 + 16;
  v168 = v8;
  v9 = v172;
  if (v151)
  {
    v129 = v151;
    v10 = v150;
    v108 = v151;
    v157 = v151;
    v11 = Logger.shared.unsafeMutableAddressor();
    (*(v147 + 16))(v10, v11, v146);
    v12 = v108;
    v114 = 7;
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    v110 = 17;
    v117 = swift_allocObject();
    *(v117 + 16) = 32;
    v118 = swift_allocObject();
    v111 = 8;
    *(v118 + 16) = 8;
    v113 = 32;
    v13 = swift_allocObject();
    v109 = v13;
    *(v13 + 16) = v130;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v109;
    v119 = v14;
    *(v14 + 16) = v131;
    *(v14 + 24) = v15;
    v120 = swift_allocObject();
    *(v120 + 16) = 64;
    v121 = swift_allocObject();
    *(v121 + 16) = v111;
    v16 = swift_allocObject();
    v17 = v112;
    v115 = v16;
    *(v16 + 16) = v132;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v115;
    v116 = v18;
    *(v18 + 16) = v133;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v116;
    v123 = v20;
    *(v20 + 16) = v134;
    *(v20 + 24) = v21;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v122 = _allocateUninitializedArray<A>(_:)();
    v124 = v22;

    v23 = v117;
    v24 = v124;
    *v124 = v135;
    v24[1] = v23;

    v25 = v118;
    v26 = v124;
    v124[2] = v136;
    v26[3] = v25;

    v27 = v119;
    v28 = v124;
    v124[4] = v137;
    v28[5] = v27;

    v29 = v120;
    v30 = v124;
    v124[6] = v138;
    v30[7] = v29;

    v31 = v121;
    v32 = v124;
    v124[8] = v139;
    v32[9] = v31;

    v33 = v123;
    v34 = v124;
    v124[10] = v140;
    v34[11] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v126, v127))
    {
      v35 = v141;
      v100 = static UnsafeMutablePointer.allocate(capacity:)();
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v99 = 1;
      v101 = createStorage<A>(capacity:type:)(1);
      v102 = createStorage<A>(capacity:type:)(v99);
      v104 = &v156;
      v156 = v100;
      v105 = &v155;
      v155 = v101;
      v106 = &v154;
      v154 = v102;
      v103 = 2;
      serialize(_:at:)(2, &v156);
      serialize(_:at:)(v103, v104);
      v152 = v135;
      v153 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v152, v104, v105, v106);
      v107 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v152 = v136;
        v153 = v118;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v97 = 0;
        v152 = v137;
        v153 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v96 = 0;
        v152 = v138;
        v153 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v95 = 0;
        v152 = v139;
        v153 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        v94 = 0;
        v152 = v140;
        v153 = v123;
        closure #1 in osLogInternal(_:log:type:)(&v152, &v156, &v155, &v154);
        _os_log_impl(&dword_1D93D0000, v126, v127, "HeadphoneManager: %s:  reset HearingAid Tunings failed ... restoring %@", v100, 0x16u);
        v93 = 1;
        destroyStorage<A>(_:count:)(v101, 1, v98);
        destroyStorage<A>(_:count:)(v102, v93, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v100, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v126);
    (*(v147 + 8))(v150, v146);

    return $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(v145);
  }

  else
  {
    v128 = v143 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v37 = Strong;
      v92 = Strong;
      MEMORY[0x1E69E5928](Strong);
      outlined destroy of HearingRecord?(p_Strong);
      swift_endAccess();
      v158 = 2;
      (*((*v37 & *MEMORY[0x1E69E7D40]) + 0x188))(&v158);
      MEMORY[0x1E69E5920](v92);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
    }

    v90 = v143 + 16;
    swift_beginAccess();
    v166 = swift_unknownObjectWeakLoadStrong();
    if (v166)
    {
      v86 = &v166;
      v38 = v166;
      v89 = v166;
      MEMORY[0x1E69E5928](v166);
      outlined destroy of HearingRecord?(v86);
      swift_endAccess();
      v87 = [v144 amplification];
      [v87 floatValue];
      v88 = v39;
      v40 = MEMORY[0x1E69E5920](v87);
      (*((*v38 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v40, v88);
      MEMORY[0x1E69E5920](v89);
    }

    else
    {
      outlined destroy of HearingRecord?(&v166);
      swift_endAccess();
    }

    v85 = v143 + 16;
    swift_beginAccess();
    v165 = swift_unknownObjectWeakLoadStrong();
    if (v165)
    {
      v81 = &v165;
      v41 = v165;
      v84 = v165;
      MEMORY[0x1E69E5928](v165);
      outlined destroy of HearingRecord?(v81);
      swift_endAccess();
      v82 = [v144 balance];
      [v82 floatValue];
      v83 = v42;
      v43 = MEMORY[0x1E69E5920](v82);
      (*((*v41 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v43, v83);
      MEMORY[0x1E69E5920](v84);
    }

    else
    {
      outlined destroy of HearingRecord?(&v165);
      swift_endAccess();
    }

    v80 = v143 + 16;
    swift_beginAccess();
    v164 = swift_unknownObjectWeakLoadStrong();
    if (v164)
    {
      v76 = &v164;
      v44 = v164;
      v79 = v164;
      MEMORY[0x1E69E5928](v164);
      outlined destroy of HearingRecord?(v76);
      swift_endAccess();
      v77 = [v144 ownVoiceLevelGain];
      [v77 floatValue];
      v78 = v45;
      v46 = MEMORY[0x1E69E5920](v77);
      (*((*v44 & *MEMORY[0x1E69E7D40]) + 0x220))(v46, v78);
      MEMORY[0x1E69E5920](v79);
    }

    else
    {
      outlined destroy of HearingRecord?(&v164);
      swift_endAccess();
    }

    v75 = v143 + 16;
    swift_beginAccess();
    v163 = swift_unknownObjectWeakLoadStrong();
    if (v163)
    {
      v71 = &v163;
      v47 = v163;
      v74 = v163;
      MEMORY[0x1E69E5928](v163);
      outlined destroy of HearingRecord?(v71);
      swift_endAccess();
      v72 = [v144 beamFormer];
      [v72 floatValue];
      v73 = v48;
      v49 = MEMORY[0x1E69E5920](v72);
      (*((*v47 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v49, v73);
      MEMORY[0x1E69E5920](v74);
    }

    else
    {
      outlined destroy of HearingRecord?(&v163);
      swift_endAccess();
    }

    v70 = v143 + 16;
    swift_beginAccess();
    v162 = swift_unknownObjectWeakLoadStrong();
    if (v162)
    {
      v66 = &v162;
      v50 = v162;
      v69 = v162;
      MEMORY[0x1E69E5928](v162);
      outlined destroy of HearingRecord?(v66);
      swift_endAccess();
      v67 = [v144 noiseSuppression];
      [v67 floatValue];
      v68 = v51;
      v52 = MEMORY[0x1E69E5920](v67);
      (*((*v50 & *MEMORY[0x1E69E7D40]) + 0x200))(v52, v68);
      MEMORY[0x1E69E5920](v69);
    }

    else
    {
      outlined destroy of HearingRecord?(&v162);
      swift_endAccess();
    }

    v65 = v143 + 16;
    swift_beginAccess();
    v161[0] = swift_unknownObjectWeakLoadStrong();
    if (v161[0])
    {
      v61 = v161;
      v53 = v161[0];
      v64 = v161[0];
      MEMORY[0x1E69E5928](v161[0]);
      outlined destroy of HearingRecord?(v61);
      swift_endAccess();
      v62 = [v144 tone];
      [v62 floatValue];
      v63 = v54;
      v55 = MEMORY[0x1E69E5920](v62);
      (*((*v53 & *MEMORY[0x1E69E7D40]) + 0x240))(v55, v63);
      MEMORY[0x1E69E5920](v64);
    }

    else
    {
      outlined destroy of HearingRecord?(v161);
      swift_endAccess();
    }

    v60 = v143 + 16;
    swift_beginAccess();
    v160[0] = swift_unknownObjectWeakLoadStrong();
    if (v160[0])
    {
      v58 = v160;
      v56 = v160[0];
      v59 = v160[0];
      MEMORY[0x1E69E5928](v160[0]);
      outlined destroy of HearingRecord?(v58);
      swift_endAccess();
      v159 = 0;
      (*((*v56 & *MEMORY[0x1E69E7D40]) + 0x188))(&v159);
      MEMORY[0x1E69E5920](v59);
    }

    else
    {
      outlined destroy of HearingRecord?(v160);
      swift_endAccess();
    }

    return $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(v145);
  }
}

uint64_t $defer #1 () in closure #1 in HearingRecord.resetHearingAidTunings(completion:)(void (*a1)(void))
{

  a1();
}

uint64_t HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a1;
  v64 = a2;
  v61 = a3;
  v62 = a4;
  v72 = partial apply for implicit closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
  v76 = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_2;
  v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v80 = closure #1 in OSLogArguments.append(_:)partial apply;
  v83 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_2;
  v59 = partial apply for closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v60 = 0;
  v69 = type metadata accessor for Logger();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v39 - v65;
  v66 = &v39 - v65;
  v106 = MEMORY[0x1EEE9AC00](v70);
  v105 = v5;
  v103 = v6;
  v104 = v7;
  v102 = v8;
  v9 = Logger.shared.unsafeMutableAddressor();
  (*(v67 + 16))(v4, v9, v69);
  MEMORY[0x1E69E5928](v70);
  v74 = 7;
  v75 = swift_allocObject();
  *(v75 + 16) = v70;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v71 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 64;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v73 = 32;
  v10 = swift_allocObject();
  v11 = v75;
  v77 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v77;
  v84 = v12;
  *(v12 + 16) = v76;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v82 = _allocateUninitializedArray<A>(_:)();
  v85 = v14;

  v15 = v79;
  v16 = v85;
  *v85 = v78;
  v16[1] = v15;

  v17 = v81;
  v18 = v85;
  v85[2] = v80;
  v18[3] = v17;

  v19 = v84;
  v20 = v85;
  v85[4] = v83;
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v87, v88))
  {
    v21 = v60;
    v52 = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(1);
    v54 = createStorage<A>(capacity:type:)(0);
    v55 = &v93;
    v93 = v52;
    v56 = &v92;
    v92 = v53;
    v57 = &v91;
    v91 = v54;
    serialize(_:at:)(2, &v93);
    serialize(_:at:)(1, v55);
    v89 = v78;
    v90 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v89, v55, v56, v57);
    v58 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v89 = v80;
      v90 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      v50 = 0;
      v89 = v83;
      v90 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_1D93D0000, v87, v88, "HeadphoneManager: group config set: %@", v52, 0xCu);
      destroyStorage<A>(_:count:)(v53, 1, v51);
      destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v52, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  v22 = v63;
  MEMORY[0x1E69E5920](v87);
  (*(v67 + 8))(v66, v69);
  v101 = 2;
  v23 = *v22;
  v41 = MEMORY[0x1E69E7D40];
  (*((v23 & *MEMORY[0x1E69E7D40]) + 0x188))(&v101);
  v40 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v24 = v40;
  v25 = MEMORY[0x1E69E5928](v40);
  v26 = (*((*v24 & *v41) + 0x150))(v25);
  v27 = v63;
  v49 = v26;
  v28 = MEMORY[0x1E69E5920](v40);
  v29 = (*((*v27 & *v41) + 0x350))(v28);
  v42 = v30;
  v48 = MEMORY[0x1DA730940](v29);

  v45 = 7;
  v46 = swift_allocObject();
  v43 = v46 + 16;
  MEMORY[0x1E69E5928](v63);
  v44 = v63;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v44);

  MEMORY[0x1E69E5928](v70);
  v31 = swift_allocObject();
  v32 = v62;
  v33 = v64;
  v34 = v59;
  v35 = v70;
  v36 = v31;
  v37 = v46;
  v36[2] = v61;
  v36[3] = v32;
  v36[4] = v37;
  v36[5] = v33;
  v36[6] = v35;
  v99 = v34;
  v100 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = 0;
  v97 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v98 = &block_descriptor_351;
  v47 = _Block_copy(&aBlock);

  [v49 modifyDeviceConfig:v70 identifier:v48 completion:v47];
  _Block_release(v47);
  MEMORY[0x1E69E5920](v48);
  MEMORY[0x1E69E5920](v49);
  return $defer #1 () in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v63);
}

uint64_t $defer #1 () in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void *a1)
{
  v3 = a1;
  v2 = 0;
  return (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x188))(&v2);
}

void closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v120 = a6;
  v119 = a5;
  v118 = a4;
  v117 = a3;
  v121 = a2;
  v127 = a1;
  v115 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v116 = 0;
  v133 = 0;
  v122 = type metadata accessor for Logger();
  v123 = *(v122 - 8);
  v124 = v123;
  v6 = *(v123 + 64);
  v7 = MEMORY[0x1EEE9AC00](v127);
  v125 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v7;
  v141 = v9;
  v142 = v10;
  v126 = v11 + 16;
  v140 = v11 + 16;
  v139 = v12;
  v138 = v13;
  v14 = v7;
  if (v127)
  {
    v114 = v127;
    v15 = v125;
    v85 = v127;
    v133 = v127;
    v16 = Logger.shared.unsafeMutableAddressor();
    (*(v124 + 16))(v15, v16, v122);
    v17 = v85;
    v99 = 7;
    v97 = swift_allocObject();
    *(v97 + 16) = v85;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v113 = Logger.logObject.getter();
    v86 = v113;
    v112 = static os_log_type_t.error.getter();
    v87 = v112;
    v93 = 17;
    v103 = swift_allocObject();
    v88 = v103;
    v89 = 32;
    *(v103 + 16) = 32;
    v18 = swift_allocObject();
    v19 = v89;
    v104 = v18;
    v90 = v18;
    v95 = 8;
    *(v18 + 16) = 8;
    v98 = v19;
    v20 = swift_allocObject();
    v91 = v20;
    *(v20 + 16) = implicit closure #1 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
    *(v20 + 24) = 0;
    v21 = swift_allocObject();
    v22 = v91;
    v105 = v21;
    v92 = v21;
    *(v21 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v21 + 24) = v22;
    v106 = swift_allocObject();
    v94 = v106;
    *(v106 + 16) = 64;
    v107 = swift_allocObject();
    v96 = v107;
    *(v107 + 16) = v95;
    v23 = swift_allocObject();
    v24 = v97;
    v100 = v23;
    *(v23 + 16) = partial apply for implicit closure #2 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:);
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v100;
    v101 = v25;
    *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v101;
    v110 = v27;
    v102 = v27;
    *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v27 + 24) = v28;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v108 = _allocateUninitializedArray<A>(_:)();
    v109 = v29;

    v30 = v103;
    v31 = v109;
    *v109 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31[1] = v30;

    v32 = v104;
    v33 = v109;
    v109[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v33[3] = v32;

    v34 = v105;
    v35 = v109;
    v109[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v35[5] = v34;

    v36 = v106;
    v37 = v109;
    v109[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v37[7] = v36;

    v38 = v107;
    v39 = v109;
    v109[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v39[9] = v38;

    v40 = v109;
    v41 = v110;
    v109[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v40[11] = v41;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v113, v112))
    {
      v43 = v116;
      v78 = static UnsafeMutablePointer.allocate(capacity:)();
      v74 = v78;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = 1;
      v79 = createStorage<A>(capacity:type:)(1);
      v77 = v79;
      v80 = createStorage<A>(capacity:type:)(v76);
      v132 = v78;
      v131 = v79;
      v130 = v80;
      v81 = 2;
      v82 = &v132;
      serialize(_:at:)(2, &v132);
      serialize(_:at:)(v81, v82);
      v128 = closure #1 in OSLogArguments.append(_:)partial apply;
      v129 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v128, v82, &v131, &v130);
      v83 = v43;
      v84 = v43;
      if (v43)
      {
        v72 = 0;

        __break(1u);
      }

      else
      {
        v128 = closure #1 in OSLogArguments.append(_:)partial apply;
        v129 = v90;
        closure #1 in osLogInternal(_:log:type:)(&v128, &v132, &v131, &v130);
        v70 = 0;
        v71 = 0;
        v128 = closure #1 in OSLogArguments.append(_:)partial apply;
        v129 = v92;
        closure #1 in osLogInternal(_:log:type:)(&v128, &v132, &v131, &v130);
        v68 = 0;
        v69 = 0;
        v128 = closure #1 in OSLogArguments.append(_:)partial apply;
        v129 = v94;
        closure #1 in osLogInternal(_:log:type:)(&v128, &v132, &v131, &v130);
        v66 = 0;
        v67 = 0;
        v128 = closure #1 in OSLogArguments.append(_:)partial apply;
        v129 = v96;
        closure #1 in osLogInternal(_:log:type:)(&v128, &v132, &v131, &v130);
        v64 = 0;
        v65 = 0;
        v128 = closure #1 in OSLogArguments.append(_:)partial apply;
        v129 = v102;
        closure #1 in osLogInternal(_:log:type:)(&v128, &v132, &v131, &v130);
        v62 = 0;
        v63 = 0;
        _os_log_impl(&dword_1D93D0000, v86, v87, "HeadphoneManager: %s:  (Set) updateGroupValues failed ... restoring %@", v74, 0x16u);
        v61 = 1;
        destroyStorage<A>(_:count:)(v77, 1, v75);
        destroyStorage<A>(_:count:)(v80, v61, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v74, MEMORY[0x1E69E7508]);

        v73 = v62;
      }
    }

    else
    {
      v44 = v116;

      v73 = v44;
    }

    v45 = v73;

    (*(v124 + 8))(v125, v122);
    $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v121);
    v60 = v45;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      v59 = Strong;
      v47 = Strong;
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
      v134 = 2;
      (*((*v46 & *MEMORY[0x1E69E7D40]) + 0x188))(&v134);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
    }

    v48 = v116;
    v136[5] = v119;

    v49 = v120;
    v55 = &v53;
    MEMORY[0x1EEE9AC00](&v53);
    v56 = &v53 - 4;
    *(&v53 - 2) = v118;
    *(&v53 - 1) = v50;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMd, &_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMR);
    lazy protocol witness table accessor for type [PartialKeyPath<HearingRecordModel>] and conformance [A]();
    Sequence.forEach(_:)();
    v58 = v48;
    if (v48)
    {

      __break(1u);
    }

    else
    {

      swift_beginAccess();
      v136[0] = swift_unknownObjectWeakLoadStrong();
      if (v136[0])
      {
        v51 = v136[0];
        v54 = v136[0];
        v52 = v136[0];
        outlined destroy of HearingRecord?(v136);
        swift_endAccess();
        v135 = 0;
        (*((*v51 & *MEMORY[0x1E69E7D40]) + 0x188))(&v135);
      }

      else
      {
        outlined destroy of HearingRecord?(v136);
        swift_endAccess();
      }

      $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(v121);
      v60 = v58;
    }
  }
}

uint64_t $defer #1 () in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(void (*a1)(void))
{

  a1();
}

uint64_t closure #1 in closure #1 in HearingRecord.updateGroupValues(config:configurationKeyPaths:completion:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v95 = *a1;
  v94 = a2 + 16;
  v93 = a3;

  v92[31] = swift_getKeyPath();
  v92[30] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMd, &_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMR);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v78)
  {

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v76 = Strong;
      MEMORY[0x1E69E5928](Strong);
      outlined destroy of HearingRecord?(&Strong);
      swift_endAccess();
      v74 = [a3 amplification];
      [v74 floatValue];
      v75 = v5;
      v6 = MEMORY[0x1E69E5920](v74);
      (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v6, v75);
      return MEMORY[0x1E69E5920](v76);
    }

    else
    {
      outlined destroy of HearingRecord?(&Strong);
      return swift_endAccess();
    }
  }

  else
  {

    v92[29] = swift_getKeyPath();
    v92[28] = v95;
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v73)
    {

      swift_beginAccess();
      v80 = swift_unknownObjectWeakLoadStrong();
      if (v80)
      {
        v7 = v80;
        v72 = v80;
        MEMORY[0x1E69E5928](v80);
        outlined destroy of HearingRecord?(&v80);
        swift_endAccess();
        v70 = [a3 balance];
        [v70 floatValue];
        v71 = v8;
        v9 = MEMORY[0x1E69E5920](v70);
        (*((*v7 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v9, v71);
        return MEMORY[0x1E69E5920](v72);
      }

      else
      {
        outlined destroy of HearingRecord?(&v80);
        return swift_endAccess();
      }
    }

    else
    {

      v92[27] = swift_getKeyPath();
      v92[26] = v95;
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v69)
      {

        swift_beginAccess();
        v81 = swift_unknownObjectWeakLoadStrong();
        if (v81)
        {
          v10 = v81;
          v68 = v81;
          MEMORY[0x1E69E5928](v81);
          outlined destroy of HearingRecord?(&v81);
          swift_endAccess();
          v66 = [a3 beamFormer];
          [v66 floatValue];
          v67 = v11;
          v12 = MEMORY[0x1E69E5920](v66);
          (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v12, v67);
          return MEMORY[0x1E69E5920](v68);
        }

        else
        {
          outlined destroy of HearingRecord?(&v81);
          return swift_endAccess();
        }
      }

      else
      {

        v92[25] = swift_getKeyPath();
        v92[24] = v95;
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v65)
        {

          swift_beginAccess();
          v82 = swift_unknownObjectWeakLoadStrong();
          if (v82)
          {
            v13 = v82;
            v64 = v82;
            MEMORY[0x1E69E5928](v82);
            outlined destroy of HearingRecord?(&v82);
            swift_endAccess();
            v62 = [a3 noiseSuppression];
            [v62 floatValue];
            v63 = v14;
            v15 = MEMORY[0x1E69E5920](v62);
            (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x200))(v15, v63);
            return MEMORY[0x1E69E5920](v64);
          }

          else
          {
            outlined destroy of HearingRecord?(&v82);
            return swift_endAccess();
          }
        }

        else
        {

          v92[23] = swift_getKeyPath();
          v92[22] = v95;
          v61 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v61)
          {

            swift_beginAccess();
            v83 = swift_unknownObjectWeakLoadStrong();
            if (v83)
            {
              v16 = v83;
              v60 = v83;
              MEMORY[0x1E69E5928](v83);
              outlined destroy of HearingRecord?(&v83);
              swift_endAccess();
              v58 = [a3 ownVoiceLevelGain];
              [v58 floatValue];
              v59 = v17;
              v18 = MEMORY[0x1E69E5920](v58);
              (*((*v16 & *MEMORY[0x1E69E7D40]) + 0x220))(v18, v59);
              return MEMORY[0x1E69E5920](v60);
            }

            else
            {
              outlined destroy of HearingRecord?(&v83);
              return swift_endAccess();
            }
          }

          else
          {

            v92[21] = swift_getKeyPath();
            v92[20] = v95;
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v57)
            {

              swift_beginAccess();
              v84 = swift_unknownObjectWeakLoadStrong();
              if (v84)
              {
                v19 = v84;
                v56 = v84;
                MEMORY[0x1E69E5928](v84);
                outlined destroy of HearingRecord?(&v84);
                swift_endAccess();
                v20 = [a3 enablePMEVoice];
                (*((*v19 & *MEMORY[0x1E69E7D40]) + 0x260))(v20);
                return MEMORY[0x1E69E5920](v56);
              }

              else
              {
                outlined destroy of HearingRecord?(&v84);
                return swift_endAccess();
              }
            }

            else
            {

              v92[19] = swift_getKeyPath();
              v92[18] = v95;
              v55 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v55)
              {

                swift_beginAccess();
                v85 = swift_unknownObjectWeakLoadStrong();
                if (v85)
                {
                  v21 = v85;
                  v54 = v85;
                  MEMORY[0x1E69E5928](v85);
                  outlined destroy of HearingRecord?(&v85);
                  swift_endAccess();
                  v22 = [a3 enablePMEMedia];
                  (*((*v21 & *MEMORY[0x1E69E7D40]) + 0x280))(v22);
                  return MEMORY[0x1E69E5920](v54);
                }

                else
                {
                  outlined destroy of HearingRecord?(&v85);
                  return swift_endAccess();
                }
              }

              else
              {

                v92[17] = swift_getKeyPath();
                v92[16] = v95;
                v53 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v53)
                {

                  swift_beginAccess();
                  v86 = swift_unknownObjectWeakLoadStrong();
                  if (v86)
                  {
                    v23 = v86;
                    v52 = v86;
                    MEMORY[0x1E69E5928](v86);
                    outlined destroy of HearingRecord?(&v86);
                    swift_endAccess();
                    v50 = [a3 tone];
                    [v50 floatValue];
                    v51 = v24;
                    v25 = MEMORY[0x1E69E5920](v50);
                    (*((*v23 & *MEMORY[0x1E69E7D40]) + 0x240))(v25, v51);
                    return MEMORY[0x1E69E5920](v52);
                  }

                  else
                  {
                    outlined destroy of HearingRecord?(&v86);
                    return swift_endAccess();
                  }
                }

                else
                {

                  v92[15] = swift_getKeyPath();
                  v92[14] = v95;
                  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v49)
                  {

                    swift_beginAccess();
                    v87 = swift_unknownObjectWeakLoadStrong();
                    if (v87)
                    {
                      v26 = v87;
                      v48 = v87;
                      MEMORY[0x1E69E5928](v87);
                      outlined destroy of HearingRecord?(&v87);
                      swift_endAccess();
                      v27 = [a3 enableHearingAssist];
                      (*((*v26 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v27);
                      return MEMORY[0x1E69E5920](v48);
                    }

                    else
                    {
                      outlined destroy of HearingRecord?(&v87);
                      return swift_endAccess();
                    }
                  }

                  else
                  {

                    v92[13] = swift_getKeyPath();
                    v92[12] = v95;
                    v47 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v47)
                    {

                      swift_beginAccess();
                      v88 = swift_unknownObjectWeakLoadStrong();
                      if (v88)
                      {
                        v28 = v88;
                        v46 = v88;
                        MEMORY[0x1E69E5928](v88);
                        outlined destroy of HearingRecord?(&v88);
                        swift_endAccess();
                        v29 = [a3 enableMediaAssist];
                        (*((*v28 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v29);
                        return MEMORY[0x1E69E5920](v46);
                      }

                      else
                      {
                        outlined destroy of HearingRecord?(&v88);
                        return swift_endAccess();
                      }
                    }

                    else
                    {

                      v92[11] = swift_getKeyPath();
                      v92[10] = v95;
                      v45 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v45)
                      {

                        swift_beginAccess();
                        v89 = swift_unknownObjectWeakLoadStrong();
                        if (v89)
                        {
                          v30 = v89;
                          v44 = v89;
                          MEMORY[0x1E69E5928](v89);
                          outlined destroy of HearingRecord?(&v89);
                          swift_endAccess();
                          v31 = [a3 enableHearingAid];
                          (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x300))(v31);
                          return MEMORY[0x1E69E5920](v44);
                        }

                        else
                        {
                          outlined destroy of HearingRecord?(&v89);
                          return swift_endAccess();
                        }
                      }

                      else
                      {

                        v92[9] = swift_getKeyPath();
                        v92[8] = v95;
                        v43 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v43)
                        {

                          swift_beginAccess();
                          v90 = swift_unknownObjectWeakLoadStrong();
                          if (v90)
                          {
                            v32 = v90;
                            v42 = v90;
                            MEMORY[0x1E69E5928](v90);
                            outlined destroy of HearingRecord?(&v90);
                            swift_endAccess();
                            v33 = [a3 enableSwipeGain];
                            (*((*v32 & *MEMORY[0x1E69E7D40]) + 0x2E0))(v33);
                            return MEMORY[0x1E69E5920](v42);
                          }

                          else
                          {
                            outlined destroy of HearingRecord?(&v90);
                            return swift_endAccess();
                          }
                        }

                        else
                        {

                          v92[7] = swift_getKeyPath();
                          v92[6] = v95;
                          v41 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v41)
                          {

                            swift_beginAccess();
                            v91 = swift_unknownObjectWeakLoadStrong();
                            if (v91)
                            {
                              v34 = v91;
                              v40 = v91;
                              MEMORY[0x1E69E5928](v91);
                              outlined destroy of HearingRecord?(&v91);
                              swift_endAccess();
                              v35 = [a3 enableHearingProtection];
                              (*((*v34 & *MEMORY[0x1E69E7D40]) + 0x4D8))(v35);
                              return MEMORY[0x1E69E5920](v40);
                            }

                            else
                            {
                              outlined destroy of HearingRecord?(&v91);
                              return swift_endAccess();
                            }
                          }

                          else
                          {

                            v92[5] = swift_getKeyPath();
                            v92[4] = v95;
                            v39 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v39)
                            {

                              swift_beginAccess();
                              v92[0] = swift_unknownObjectWeakLoadStrong();
                              if (v92[0])
                              {
                                v36 = v92[0];
                                v38 = v92[0];
                                MEMORY[0x1E69E5928](v92[0]);
                                outlined destroy of HearingRecord?(v92);
                                swift_endAccess();
                                v37 = [a3 enableHearingProtectionPPE];
                                (*((*v36 & *MEMORY[0x1E69E7D40]) + 0x6A8))(v37);
                                return MEMORY[0x1E69E5920](v38);
                              }

                              else
                              {
                                outlined destroy of HearingRecord?(v92);
                                return swift_endAccess();
                              }
                            }

                            else
                            {
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
        }
      }
    }
  }
}

uint64_t HearingRecord.debugDescription.getter()
{
  v335 = 0;
  v334._countAndFlagsBits = 0;
  v334._object = 0;
  v334 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" tone: ", 7uLL, 1);
  v332 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v333 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v241 = MEMORY[0x1E69E7D40];
  v331 = (*((*v240 & *MEMORY[0x1E69E7D40]) + 0x238))(v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v183 = v332;
  v182 = v333;

  outlined destroy of DefaultStringInterpolation(&v332);
  v5 = MEMORY[0x1DA7309B0](v183, v182);
  MEMORY[0x1DA7309C0](v0._countAndFlagsBits, v0._object, v5);

  static String.+= infix(_:_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" amp: ", 6uLL, 1);
  v329 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v330 = v7;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v328 = (*((*v240 & *v241) + 0x198))(v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v185 = v329;
  v184 = v330;

  outlined destroy of DefaultStringInterpolation(&v329);
  v11 = MEMORY[0x1DA7309B0](v185, v184);
  MEMORY[0x1DA7309C0](v6._countAndFlagsBits, v6._object, v11);

  static String.+= infix(_:_:)();

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bal: ", 6uLL, 1);
  v326 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v327 = v13;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v325 = (*((*v240 & *v241) + 0x1B8))(v15);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v187 = v326;
  v186 = v327;

  outlined destroy of DefaultStringInterpolation(&v326);
  v17 = MEMORY[0x1DA7309B0](v187, v186);
  MEMORY[0x1DA7309C0](v12._countAndFlagsBits, v12._object, v17);

  static String.+= infix(_:_:)();

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bmFrmr: ", 9uLL, 1);
  v323 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v324 = v19;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v20);

  v322 = (*((*v240 & *v241) + 0x1D8))(v21);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v22);

  v189 = v323;
  v188 = v324;

  outlined destroy of DefaultStringInterpolation(&v323);
  v23 = MEMORY[0x1DA7309B0](v189, v188);
  MEMORY[0x1DA7309C0](v18._countAndFlagsBits, v18._object, v23);

  static String.+= infix(_:_:)();

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" nseSup: ", 9uLL, 1);
  v320 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v321 = v25;
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v319 = (*((*v240 & *v241) + 0x1F8))(v27);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v28);

  v191 = v320;
  v190 = v321;

  outlined destroy of DefaultStringInterpolation(&v320);
  v29 = MEMORY[0x1DA7309B0](v191, v190);
  MEMORY[0x1DA7309C0](v24._countAndFlagsBits, v24._object, v29);

  static String.+= infix(_:_:)();

  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ownV: ", 7uLL, 1);
  v317 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v318 = v31;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v32);

  v316 = (*((*v240 & *v241) + 0x218))(v33);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v34);

  v193 = v317;
  v192 = v318;

  outlined destroy of DefaultStringInterpolation(&v317);
  v35 = MEMORY[0x1DA7309B0](v193, v192);
  MEMORY[0x1DA7309C0](v30._countAndFlagsBits, v30._object, v35);

  static String.+= infix(_:_:)();

  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" pmeV En: ", 0xAuLL, 1);
  v314 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v315 = v37;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v38);

  v313 = (*((*v240 & *v241) + 0x258))(v39);
  type metadata accessor for HMMultiState();
  lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v40);

  v195 = v314;
  v194 = v315;

  outlined destroy of DefaultStringInterpolation(&v314);
  v41 = MEMORY[0x1DA7309B0](v195, v194);
  MEMORY[0x1DA7309C0](v36._countAndFlagsBits, v36._object, v41);

  static String.+= infix(_:_:)();

  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" pmeM En: ", 0xAuLL, 1);
  v311 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v312 = v43;
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v44);

  v310 = (*((*v240 & *v241) + 0x278))(v45);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v46);

  v197 = v311;
  v196 = v312;

  outlined destroy of DefaultStringInterpolation(&v311);
  v47 = MEMORY[0x1DA7309B0](v197, v196);
  MEMORY[0x1DA7309C0](v42._countAndFlagsBits, v42._object, v47);

  static String.+= infix(_:_:)();

  v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha En: ", 8uLL, 1);
  v308 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v309 = v49;
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v50);

  v307 = (*((*v240 & *v241) + 0x2B8))(v51);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v52);

  v199 = v308;
  v198 = v309;

  outlined destroy of DefaultStringInterpolation(&v308);
  v53 = MEMORY[0x1DA7309B0](v199, v198);
  MEMORY[0x1DA7309C0](v48._countAndFlagsBits, v48._object, v53);

  static String.+= infix(_:_:)();

  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ma En: ", 8uLL, 1);
  v305 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v306 = v55;
  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v56);

  v304 = (*((*v240 & *v241) + 0x298))(v57);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v58);

  v201 = v305;
  v200 = v306;

  outlined destroy of DefaultStringInterpolation(&v305);
  v59 = MEMORY[0x1DA7309B0](v201, v200);
  MEMORY[0x1DA7309C0](v54._countAndFlagsBits, v54._object, v59);

  static String.+= infix(_:_:)();

  v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" swpGain En: ", 0xDuLL, 1);
  v302 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v303 = v61;
  v62 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v62);

  v301 = (*((*v240 & *v241) + 0x2D8))(v63);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v64);

  v203 = v302;
  v202 = v303;

  outlined destroy of DefaultStringInterpolation(&v302);
  v65 = MEMORY[0x1DA7309B0](v203, v202);
  MEMORY[0x1DA7309C0](v60._countAndFlagsBits, v60._object, v65);

  static String.+= infix(_:_:)();

  v66 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" h aEn: ", 8uLL, 1);
  v299 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v300 = v67;
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v68);

  v298 = (*((*v240 & *v241) + 0x2F8))(v69);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v70);

  v205 = v299;
  v204 = v300;

  outlined destroy of DefaultStringInterpolation(&v299);
  v71 = MEMORY[0x1DA7309B0](v205, v204);
  MEMORY[0x1DA7309C0](v66._countAndFlagsBits, v66._object, v71);

  static String.+= infix(_:_:)();

  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs Cap: ", 0xAuLL, 1);
  v296 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v297 = v73;
  v74 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v74);

  v295 = (*((*v240 & *v241) + 0x3E0))(v75);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v76 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v76);

  v207 = v296;
  v206 = v297;

  outlined destroy of DefaultStringInterpolation(&v296);
  v77 = MEMORY[0x1DA7309B0](v207, v206);
  MEMORY[0x1DA7309C0](v72._countAndFlagsBits, v72._object, v77);

  static String.+= infix(_:_:)();

  v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs enrll: ", 0xCuLL, 1);
  v293 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v294 = v79;
  v80 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v80);

  v292 = (*((*v240 & *v241) + 0x410))(v81);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v82);

  v209 = v293;
  v208 = v294;

  outlined destroy of DefaultStringInterpolation(&v293);
  v83 = MEMORY[0x1DA7309B0](v209, v208);
  MEMORY[0x1DA7309C0](v78._countAndFlagsBits, v78._object, v83);

  static String.+= infix(_:_:)();

  v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hAs RegStat: ", 0xEuLL, 1);
  v290 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v291 = v85;
  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v86);

  v289 = (*((*v240 & *v241) + 0x440))(v87);
  type metadata accessor for HMRegionStatus();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v88);

  v211 = v290;
  v210 = v291;

  outlined destroy of DefaultStringInterpolation(&v290);
  v89 = MEMORY[0x1DA7309B0](v211, v210);
  MEMORY[0x1DA7309C0](v84._countAndFlagsBits, v84._object, v89);

  static String.+= infix(_:_:)();

  v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp RegStat: ", 0xDuLL, 1);
  v287 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v288 = v91;
  v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v92);

  v286 = (*((*v240 & *v241) + 0x470))(v93);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v94);

  v213 = v287;
  v212 = v288;

  outlined destroy of DefaultStringInterpolation(&v287);
  v95 = MEMORY[0x1DA7309B0](v213, v212);
  MEMORY[0x1DA7309C0](v90._countAndFlagsBits, v90._object, v95);

  static String.+= infix(_:_:)();

  v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp Cap: ", 9uLL, 1);
  v284 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v285 = v97;
  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v98);

  v283 = (*((*v240 & *v241) + 0x4A0))(v99);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v100);

  v215 = v284;
  v214 = v285;

  outlined destroy of DefaultStringInterpolation(&v284);
  v101 = MEMORY[0x1DA7309B0](v215, v214);
  MEMORY[0x1DA7309C0](v96._countAndFlagsBits, v96._object, v101);

  static String.+= infix(_:_:)();

  v102 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp En: ", 8uLL, 1);
  v281 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v282 = v103;
  v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v104);

  v280 = (*((*v240 & *v241) + 0x4D0))(v105);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v106);

  v217 = v281;
  v216 = v282;

  outlined destroy of DefaultStringInterpolation(&v281);
  v107 = MEMORY[0x1DA7309B0](v217, v216);
  MEMORY[0x1DA7309C0](v102._countAndFlagsBits, v102._object, v107);

  static String.+= infix(_:_:)();

  v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ht RegStat: ", 0xDuLL, 1);
  v278 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v279 = v109;
  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v110);

  v277 = (*((*v240 & *v241) + 0x4F0))(v111);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v112);

  v219 = v278;
  v218 = v279;

  outlined destroy of DefaultStringInterpolation(&v278);
  v113 = MEMORY[0x1DA7309B0](v219, v218);
  MEMORY[0x1DA7309C0](v108._countAndFlagsBits, v108._object, v113);

  static String.+= infix(_:_:)();

  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp Ocl res: ", 0xDuLL, 1);
  v275 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v276 = v115;
  v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v116);

  v274 = (*((*v240 & *v241) + 0x580))(v117);
  type metadata accessor for HMOcclusionResult();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v118 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v118);

  v221 = v275;
  v220 = v276;

  outlined destroy of DefaultStringInterpolation(&v275);
  v119 = MEMORY[0x1DA7309B0](v221, v220);
  MEMORY[0x1DA7309C0](v114._countAndFlagsBits, v114._object, v119);

  static String.+= infix(_:_:)();

  v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" offMo Cap: ", 0xCuLL, 1);
  v272 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v273 = v121;
  v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v122);

  v271 = (*((*v240 & *v241) + 0x3B0))(v123);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v124);

  v223 = v272;
  v222 = v273;

  outlined destroy of DefaultStringInterpolation(&v272);
  v125 = MEMORY[0x1DA7309B0](v223, v222);
  MEMORY[0x1DA7309C0](v120._countAndFlagsBits, v120._object, v125);

  static String.+= infix(_:_:)();

  v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" offMo Allow: ", 0xEuLL, 1);
  v269 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v270 = v127;
  v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v128);

  v268 = [v240 listeningModeOffAllowed];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v129);

  v225 = v269;
  v224 = v270;

  outlined destroy of DefaultStringInterpolation(&v269);
  v130 = MEMORY[0x1DA7309B0](v225, v224);
  MEMORY[0x1DA7309C0](v126._countAndFlagsBits, v126._object, v130);

  static String.+= infix(_:_:)();

  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" btAddress: ", 0xCuLL, 1);
  v266 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v267 = v132;
  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v133);

  v265[0] = (*((*v240 & *v241) + 0x320))(v134);
  v265[1] = v135;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v265);
  v136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v136);

  v227 = v266;
  v226 = v267;

  outlined destroy of DefaultStringInterpolation(&v266);
  v137 = MEMORY[0x1DA7309B0](v227, v226);
  MEMORY[0x1DA7309C0](v131._countAndFlagsBits, v131._object, v137);

  static String.+= infix(_:_:)();

  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" btUUID: ", 9uLL, 1);
  v263 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v264 = v139;
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v140);

  v262[0] = (*((*v240 & *v241) + 0x350))(v141);
  v262[1] = v142;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v262);
  v143 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v143);

  v229 = v263;
  v228 = v264;

  outlined destroy of DefaultStringInterpolation(&v263);
  v144 = MEMORY[0x1DA7309B0](v229, v228);
  MEMORY[0x1DA7309C0](v138._countAndFlagsBits, v138._object, v144);

  static String.+= infix(_:_:)();

  v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE Cap: ", 0xDuLL, 1);
  v260 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v261 = v146;
  v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v147);

  v259 = (*((*v240 & *v241) + 0x640))(v148);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v149);

  v231 = v260;
  v230 = v261;

  outlined destroy of DefaultStringInterpolation(&v260);
  v150 = MEMORY[0x1DA7309B0](v231, v230);
  MEMORY[0x1DA7309C0](v145._countAndFlagsBits, v145._object, v150);

  static String.+= infix(_:_:)();

  v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE CapLvl: ", 0x10uLL, 1);
  v257 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v258 = v152;
  v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v153);

  v256 = (*((*v240 & *v241) + 0x670))(v154);
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v256);
  v155 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v155);

  v233 = v257;
  v232 = v258;

  outlined destroy of DefaultStringInterpolation(&v257);
  v156 = MEMORY[0x1DA7309B0](v233, v232);
  MEMORY[0x1DA7309C0](v151._countAndFlagsBits, v151._object, v156);

  static String.+= infix(_:_:)();

  v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp PPE En: ", 0xCuLL, 1);
  v254 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v255 = v158;
  v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v159);

  v253 = (*((*v240 & *v241) + 0x6A0))(v160);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v161);

  v235 = v254;
  v234 = v255;

  outlined destroy of DefaultStringInterpolation(&v254);
  v162 = MEMORY[0x1DA7309B0](v235, v234);
  MEMORY[0x1DA7309C0](v157._countAndFlagsBits, v157._object, v162);

  static String.+= infix(_:_:)();

  v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hp ppE RegStat: ", 0x11uLL, 1);
  v251 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v252 = v164;
  v165 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v165);

  v250 = (*((*v240 & *v241) + 0x6C0))(v166);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v167);

  v237 = v251;
  v236 = v252;

  outlined destroy of DefaultStringInterpolation(&v251);
  v168 = MEMORY[0x1DA7309B0](v237, v236);
  MEMORY[0x1DA7309C0](v163._countAndFlagsBits, v163._object, v168);

  static String.+= infix(_:_:)();

  v169 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha V2 RegStat: ", 0x10uLL, 1);
  v248 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v249 = v170;
  v171 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v171);

  v247 = (*((*v240 & *v241) + 0x6F0))(v172);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v173);

  v239 = v248;
  v238 = v249;

  outlined destroy of DefaultStringInterpolation(&v248);
  v174 = MEMORY[0x1DA7309B0](v239, v238);
  MEMORY[0x1DA7309C0](v169._countAndFlagsBits, v169._object, v174);

  static String.+= infix(_:_:)();

  v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ha V2 Cap: ", 0xCuLL, 1);
  v245 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v246 = v176;
  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v177);

  (*((*v240 & *v241) + 0x720))(v178);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v179 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v179);

  v243 = v245;
  v242 = v246;

  outlined destroy of DefaultStringInterpolation(&v245);
  v180 = MEMORY[0x1DA7309B0](v243, v242);
  MEMORY[0x1DA7309C0](v175._countAndFlagsBits, v175._object, v180);

  static String.+= infix(_:_:)();

  v244 = v334._countAndFlagsBits;

  outlined destroy of String(&v334);
  return v244;
}

char *HearingRecord.init()()
{
  v224 = 0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCGMd, &_s7Combine9PublishedVySo8NSNumberCGMR);
  v146 = *(v151 - 8);
  v147 = v151 - 8;
  v11 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v10 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HMInfoCSgGMd, &_s7Combine9PublishedVySo6HMInfoCSgGMR);
  v138 = *(v143 - 8);
  v139 = v143 - 8;
  v12 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v10 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMd, &_s7Combine9PublishedVySaySo17HKAudiogramSampleCGGMR);
  v127 = *(v135 - 8);
  v128 = v135 - 8;
  v13 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v10 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HMOcclusionResultVGMd, &_s7Combine9PublishedVySo17HMOcclusionResultVGMR);
  v121 = *(v126 - 8);
  v122 = v126 - 8;
  v14 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v10 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo8NSNumberCGGMd, &_s7Combine9PublishedVySaySo8NSNumberCGGMR);
  v111 = *(v118 - 8);
  v112 = v118 - 8;
  v15 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v10 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14HMRegionStatusVGMd, &_s7Combine9PublishedVySo14HMRegionStatusVGMR);
  v97 = *(v165 - 8);
  v98 = v165 - 8;
  v16 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v10 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12HMMultiStateVGMd, &_s7Combine9PublishedVySo12HMMultiStateVGMR);
  v87 = *(v172 - 8);
  v88 = v172 - 8;
  v17 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v10 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v75 = *(v84 - 8);
  v76 = v84 - 8;
  v18 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v10 - v18;
  v224 = v0;
  v0[OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRemoteSendState] = 0;
  v20 = v224;
  v19 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__amplification;
  KeyPath = swift_getKeyPath();
  v22 = &v223;
  v39 = 0;
  v223 = 0;
  v175 = 0;
  v176 = type metadata accessor for HearingRecord();
  v157 = lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  v44 = MEMORY[0x1E69E6448];
  v45 = MEMORY[0x1E69E6498];
  v46 = MEMORY[0x1E69E6470];
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v222);
  v221 = v222;
  HearingRecordConfig.init(_:_:_:)(KeyPath, v22, &v221, v176, v44, &v20[v19]);
  v24 = v224;
  v23 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__balance;
  v25 = swift_getKeyPath();
  v26 = &v220;
  v220 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v219);
  v218 = v219;
  HearingRecordConfig.init(_:_:_:)(v25, v26, &v218, v176, v44, &v24[v23]);
  v28 = v224;
  v27 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__beamFormer;
  v29 = swift_getKeyPath();
  v30 = &v217;
  v217 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v216);
  v215 = v216;
  HearingRecordConfig.init(_:_:_:)(v29, v30, &v215, v176, v44, &v28[v27]);
  v32 = v224;
  v31 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__noiseSuppression;
  v33 = swift_getKeyPath();
  v34 = &v214;
  v214 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v213);
  v212 = v213;
  HearingRecordConfig.init(_:_:_:)(v33, v34, &v212, v176, v44, &v32[v31]);
  v36 = v224;
  v35 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__ownVoiceLevel;
  v37 = swift_getKeyPath();
  v38 = &v211;
  v211 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v210);
  v209 = v210;
  HearingRecordConfig.init(_:_:_:)(v37, v38, &v209, v176, v44, &v36[v35]);
  v41 = v224;
  v40 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__tone;
  v42 = swift_getKeyPath();
  v43 = &v208;
  v208 = v39;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v207);
  v206 = v207;
  HearingRecordConfig.init(_:_:_:)(v42, v43, &v206, v176, v44, &v41[v40]);
  v48 = v224;
  v47 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__pmeVoiceEnabled;
  v49 = swift_getKeyPath();
  v50 = &v205;
  v205 = 0;
  v156 = type metadata accessor for HMMultiState();
  v158 = lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  v159 = lazy protocol witness table accessor for type HMMultiState and conformance HMMultiState();
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v204);
  v203 = v204;
  HearingRecordConfig.init(_:_:_:)(v49, v50, &v203, v176, v156, &v48[v47]);
  v52 = v224;
  v51 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__pmeMediaEnabled;
  v53 = swift_getKeyPath();
  v54 = &v202;
  v202 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v201);
  v200 = v201;
  HearingRecordConfig.init(_:_:_:)(v53, v54, &v200, v176, v156, &v52[v51]);
  v56 = v224;
  v55 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__mediaAssistEnabled;
  v57 = swift_getKeyPath();
  v58 = &v199;
  v199 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v198);
  v197 = v198;
  HearingRecordConfig.init(_:_:_:)(v57, v58, &v197, v176, v156, &v56[v55]);
  v60 = v224;
  v59 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnabled;
  v61 = swift_getKeyPath();
  v62 = &v196;
  v196 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v195);
  v194 = v195;
  HearingRecordConfig.init(_:_:_:)(v61, v62, &v194, v176, v156, &v60[v59]);
  v64 = v224;
  v63 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__swipeGainEnabled;
  v65 = swift_getKeyPath();
  v66 = &v193;
  v193 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v192);
  v191 = v192;
  HearingRecordConfig.init(_:_:_:)(v65, v66, &v191, v176, v156, &v64[v63]);
  v68 = v224;
  v67 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidEnabled;
  v69 = swift_getKeyPath();
  v70 = &v190;
  v190 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v189);
  v188 = v189;
  HearingRecordConfig.init(_:_:_:)(v69, v70, &v188, v176, v156, &v68[v67]);
  v72 = v224;
  v71 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__listeningModeOffAllowed;
  v73 = swift_getKeyPath();
  v74 = &v187;
  v187 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v186);
  v185 = v186;
  HearingRecordConfig.init(_:_:_:)(v73, v74, &v185, v176, v156, &v72[v71]);
  v78 = v224;
  v77 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__bluetoothAddress;
  v80 = "";
  v79 = 1;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v175, 1);
  property wrapper backing initializer of HearingRecord.bluetoothAddress(v1._countAndFlagsBits, v1._object, v83);
  v86 = *(v75 + 32);
  v85 = v75 + 32;
  v86(&v78[v77], v83, v84);
  v82 = v224;
  v81 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__bluetoothUUID;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v80, v175, v79 & 1);
  property wrapper backing initializer of HearingRecord.bluetoothUUID(v2._countAndFlagsBits, v2._object, v83);
  v86(&v82[v81], v83, v84);
  v90 = v224;
  v89 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earTipFitTestCapability;
  v168 = 0;
  property wrapper backing initializer of HearingRecord.earTipFitTestCapability(0, v171);
  v174 = *(v87 + 32);
  v173 = v87 + 32;
  v174(&v90[v89], v171, v172);
  v92 = v224;
  v91 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hideOffModeCapability;
  property wrapper backing initializer of HearingRecord.hideOffModeCapability(v168, v171);
  v174(&v92[v91], v171, v172);
  v94 = v224;
  v93 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistCapability;
  property wrapper backing initializer of HearingRecord.hearingAssistCapability(v168, v171);
  v174(&v94[v93], v171, v172);
  v96 = v224;
  v95 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistEnrolled;
  property wrapper backing initializer of HearingRecord.hearingAssistEnrolled(v168, v171);
  v174(&v96[v95], v171, v172);
  v100 = v224;
  v99 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAssistRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingAssistRegionStatus(v168, v164);
  v167 = *(v97 + 32);
  v166 = v97 + 32;
  v167(&v100[v99], v164, v165);
  v102 = v224;
  v101 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingProtectionRegionStatus(v168, v164);
  v167(&v102[v101], v164, v165);
  v104 = v224;
  v103 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionCapability;
  property wrapper backing initializer of HearingRecord.hearingProtectionCapability(v168, v171);
  v174(&v104[v103], v171, v172);
  v106 = v224;
  v105 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionEnabled;
  v107 = swift_getKeyPath();
  v108 = &v184;
  v184 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v183);
  v182 = v183;
  HearingRecordConfig.init(_:_:_:)(v107, v108, &v182, v176, v156, &v106[v105]);
  v110 = v224;
  v109 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingTestRegionStatus;
  property wrapper backing initializer of HearingRecord.hearingTestRegionStatus(v168, v164);
  v167(&v110[v109], v164, v165);
  v114 = v224;
  v113 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayLeft;
  type metadata accessor for NSNumber();
  v3 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.earLossArrayLeft(v3, v117);
  v120 = *(v111 + 32);
  v119 = v111 + 32;
  v120(&v114[v113], v117, v118);
  v116 = v224;
  v115 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__earLossArrayRight;
  v4 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.earLossArrayRight(v4, v117);
  v120(&v116[v115], v117, v118);
  v124 = v224;
  v123 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionOcclusionResult;
  property wrapper backing initializer of HearingRecord.hearingProtectionOcclusionResult(v168, v125);
  (*(v121 + 32))(&v124[v123], v125, v126);
  v130 = v224;
  v129 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__validAudiograms;
  v131 = type metadata accessor for HKAudiogramSample();
  v5 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.validAudiograms(v5, v134);
  v137 = *(v127 + 32);
  v136 = v127 + 32;
  v137(&v130[v129], v134, v135);
  v133 = v224;
  v132 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__invalidAudiograms;
  v6 = _allocateUninitializedArray<A>(_:)();
  property wrapper backing initializer of HearingRecord.invalidAudiograms(v6, v134);
  v137(&v133[v132], v134, v135);
  v141 = v224;
  v140 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__safetyInformation;
  property wrapper backing initializer of HearingRecord.safetyInformation(v175, v142);
  (*(v138 + 32))(&v141[v140], v142, v143);
  v145 = v224;
  v144 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapability;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPECapability(v168, v171);
  v174(&v145[v144], v171, v172);
  v149 = v224;
  v148 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPECapLevel;
  v7.super.super.isa = NSNumber.__allocating_init(value:)(v175).super.super.isa;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPECapLevel(v7.super.super.isa, v150);
  (*(v146 + 32))(&v149[v148], v150, v151);
  v153 = v224;
  v152 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPEEnabled;
  v154 = swift_getKeyPath();
  v155 = &v181;
  v181 = 0;
  default argument 2 of HearingRecordConfig.init(_:_:_:)(&v180);
  v179 = v180;
  HearingRecordConfig.init(_:_:_:)(v154, v155, &v179, v176, v156, &v153[v152]);
  v161 = v224;
  v160 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingProtectionPPERegionStatus;
  property wrapper backing initializer of HearingRecord.hearingProtectionPPERegionStatus(v168, v164);
  v167(&v161[v160], v164, v165);
  v163 = v224;
  v162 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2RegionStatus;
  property wrapper backing initializer of HearingRecord.hearingAidV2RegionStatus(v168, v164);
  v167(&v163[v162], v164, v165);
  v170 = v224;
  v169 = OBJC_IVAR____TtC16HeadphoneManager13HearingRecord__hearingAidV2Capability;
  property wrapper backing initializer of HearingRecord.hearingAidV2Capability(v168, v171);
  v174(&v170[v169], v171, v172);
  v8 = v176;
  *&v224[OBJC_IVAR____TtC16HeadphoneManager13HearingRecord_deviceRecord] = v175;
  v178.receiver = v224;
  v178.super_class = v8;
  v177 = objc_msgSendSuper2(&v178, sel_init);
  MEMORY[0x1E69E5928](v177);
  v224 = v177;
  MEMORY[0x1E69E5920](v177);
  return v177;
}

id HearingRecord.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HearingRecord@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HearingRecord();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for HearingRecordModel.bluetoothAddress : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 296))(v2);
  a2[1] = v3;
}

uint64_t key path setter for HearingRecordModel.bluetoothAddress : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 304))(v4, v6);
}

uint64_t HearingRecordModel.bluetoothAddress.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.bluetoothAddress.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.bluetoothUUID : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 320))(v2);
  a2[1] = v3;
}

uint64_t key path setter for HearingRecordModel.bluetoothUUID : HearingRecordModel(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 328))(v4, v6);
}

uint64_t HearingRecordModel.bluetoothUUID.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.bluetoothUUID.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t HearingRecordModel.amplification.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.amplification.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.balance.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.balance.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.beamFormer.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.beamFormer.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecordModel.earLossArrayLeft : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 416))(v2);
}

uint64_t key path setter for HearingRecordModel.earLossArrayLeft : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of [NSNumber](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 424))(v4);
}

uint64_t HearingRecordModel.earLossArrayLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.earLossArrayLeft.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.earLossArrayRight : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 440))(v2);
}

uint64_t key path setter for HearingRecordModel.earLossArrayRight : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of [NSNumber](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 448))(v4);
}

uint64_t HearingRecordModel.earLossArrayRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 80);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.earLossArrayRight.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistCapability : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 464))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistCapability : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 472))(v3);
}

uint64_t HearingRecordModel.hearingAssistCapability.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistCapability.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.mediaAssistEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 89);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.mediaAssistEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 89) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingAssistEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 90);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 90) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistEnrolled : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 536))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistEnrolled : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 544))(v3);
}

uint64_t HearingRecordModel.hearingAssistEnrolled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 91);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistEnrolled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 91) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingAssistRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 560))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingAssistRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 568))(v3);
}

uint64_t HearingRecordModel.hearingAssistRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 92);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAssistRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 92) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingProtectionRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 584))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 592))(v3);
}

uint64_t HearingRecordModel.hearingProtectionRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 93);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 93) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingProtectionCapability : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 608))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingProtectionCapability : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 616))(v3);
}

uint64_t HearingRecordModel.hearingProtectionCapability.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 94);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionCapability.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 94) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingProtectionEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 95);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 95) = a1;
  return swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.hearingTestRegionStatus : HearingRecordModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 656))(v2);
}

uint64_t key path setter for HearingRecordModel.hearingTestRegionStatus : HearingRecordModel(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 664))(v3);
}

uint64_t HearingRecordModel.hearingTestRegionStatus.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingTestRegionStatus.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingAidEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 97);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingAidEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 97) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.noiseSuppression.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.noiseSuppression.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.ownVoiceLevel.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.ownVoiceLevel.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t HearingRecordModel.pmeVoiceEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.pmeVoiceEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.pmeMediaEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 121);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.pmeMediaEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 121) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.tone.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 128);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.tone.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HearingRecordModel.validAudiograms : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 824))(v2);
}

uint64_t key path setter for HearingRecordModel.validAudiograms : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 832))(v4);
}

uint64_t HearingRecordModel.validAudiograms.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 136);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.validAudiograms.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t key path getter for HearingRecordModel.invalidAudiograms : HearingRecordModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 848))(v2);
}

uint64_t key path setter for HearingRecordModel.invalidAudiograms : HearingRecordModel(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of [HKAudiogramSample](a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 856))(v4);
}

uint64_t HearingRecordModel.invalidAudiograms.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 144);

  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.invalidAudiograms.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t HearingRecordModel.swipeGainEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 152);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.swipeGainEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.listeningModeOffAllowed.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 153);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.listeningModeOffAllowed.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 153) = a1;
  return swift_endAccess();
}

uint64_t HearingRecordModel.hearingProtectionPPEEnabled.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 154);
  swift_endAccess();
  return v2;
}

uint64_t HearingRecordModel.hearingProtectionPPEEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 154) = a1;
  return swift_endAccess();
}

uint64_t static HearingRecordModel.debugStringForModifyPath(keyPath:)()
{

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMd, &_ss14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGMR);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v17)
  {

    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amplification", 0xDuLL, 1)._countAndFlagsBits;
  }

  else
  {

    swift_getKeyPath();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v15)
    {

      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1)._countAndFlagsBits;
    }

    else
    {

      swift_getKeyPath();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v14)
      {

        return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("beamFormer", 0xAuLL, 1)._countAndFlagsBits;
      }

      else
      {

        swift_getKeyPath();
        v13 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v13)
        {

          return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noiseSuppression", 0x10uLL, 1)._countAndFlagsBits;
        }

        else
        {

          swift_getKeyPath();
          v12 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v12)
          {

            return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ownVoiceLevel", 0xDuLL, 1)._countAndFlagsBits;
          }

          else
          {

            swift_getKeyPath();
            v11 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v11)
            {

              return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pmeVoiceEnabled", 0xFuLL, 1)._countAndFlagsBits;
            }

            else
            {

              swift_getKeyPath();
              v10 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v10)
              {

                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pmeMediaEnabled", 0xFuLL, 1)._countAndFlagsBits;
              }

              else
              {

                swift_getKeyPath();
                v9 = dispatch thunk of static Equatable.== infix(_:_:)();

                if (v9)
                {

                  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tone", 4uLL, 1)._countAndFlagsBits;
                }

                else
                {

                  swift_getKeyPath();
                  v8 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v8)
                  {

                    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingAssistEnabled", 0x14uLL, 1)._countAndFlagsBits;
                  }

                  else
                  {

                    swift_getKeyPath();
                    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

                    if (v7)
                    {

                      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mediaAssistEnabled", 0x12uLL, 1)._countAndFlagsBits;
                    }

                    else
                    {

                      swift_getKeyPath();
                      v6 = dispatch thunk of static Equatable.== infix(_:_:)();

                      if (v6)
                      {

                        return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingAidEnabled", 0x11uLL, 1)._countAndFlagsBits;
                      }

                      else
                      {

                        swift_getKeyPath();
                        v5 = dispatch thunk of static Equatable.== infix(_:_:)();

                        if (v5)
                        {

                          return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("swipeGainEnabled", 0x10uLL, 1)._countAndFlagsBits;
                        }

                        else
                        {

                          swift_getKeyPath();
                          v4 = dispatch thunk of static Equatable.== infix(_:_:)();

                          if (v4)
                          {

                            return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingProtectionEnabled", 0x18uLL, 1)._countAndFlagsBits;
                          }

                          else
                          {

                            swift_getKeyPath();
                            v3 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v3)
                            {

                              return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeningModeOffAllowed:", 0x18uLL, 1)._countAndFlagsBits;
                            }

                            else
                            {

                              swift_getKeyPath();
                              v2 = dispatch thunk of static Equatable.== infix(_:_:)();

                              if (v2)
                              {
                                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hearingProtectionPPEEnabled", 0x1BuLL, 1)._countAndFlagsBits;
                              }

                              else
                              {
                                return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNKNOWN", 7uLL, 1)._countAndFlagsBits;
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
          }
        }
      }
    }
  }
}

uint64_t HearingRecordModel.deinit()
{
  outlined destroy of String((v0 + 2));
  outlined destroy of String((v0 + 4));
  MEMORY[0x1E69E5920](v0[6]);
  MEMORY[0x1E69E5920](v0[7]);
  MEMORY[0x1E69E5920](v0[8]);
  outlined destroy of [NSNumber](v0 + 9);
  outlined destroy of [NSNumber](v0 + 10);
  MEMORY[0x1E69E5920](v0[13]);
  MEMORY[0x1E69E5920](v0[14]);
  MEMORY[0x1E69E5920](v0[16]);
  outlined destroy of [HKAudiogramSample](v0 + 17);
  outlined destroy of [HKAudiogramSample](v0 + 18);
  return v2;
}

uint64_t HearingRecordModel.init()()
{
  v0[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for NSNumber();
  *(v3 + 48) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 56) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 64) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 72) = _allocateUninitializedArray<A>(_:)();
  *(v3 + 80) = _allocateUninitializedArray<A>(_:)();
  *(v3 + 88) = 0;
  *(v3 + 89) = 0;
  *(v3 + 90) = 0;
  *(v3 + 91) = 0;
  *(v3 + 92) = 0;
  *(v3 + 93) = 0;
  *(v3 + 94) = 0;
  *(v3 + 95) = 0;
  *(v3 + 96) = 0;
  *(v3 + 97) = 0;
  *(v3 + 104) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 112) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 120) = 0;
  *(v3 + 121) = 0;
  *(v3 + 128) = NSNumber.init(integerLiteral:)(0);
  type metadata accessor for HKAudiogramSample();
  *(v3 + 136) = _allocateUninitializedArray<A>(_:)();
  v1 = _allocateUninitializedArray<A>(_:)();
  result = v3;
  *(v3 + 144) = v1;
  *(v3 + 152) = 0;
  *(v3 + 153) = 0;
  *(v3 + 154) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMRegionStatus@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HMRegionStatus.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMRegionStatus@<X0>(_BYTE *a1@<X8>)
{
  result = HMRegionStatus.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMMultiState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HMMultiState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMMultiState@<X0>(_BYTE *a1@<X8>)
{
  result = HMMultiState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HMOcclusionResult@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = HMOcclusionResult.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t HMOcclusionResult.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HMOcclusionResult@<X0>(_DWORD *a1@<X8>)
{
  result = HMOcclusionResult.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t lazy protocol witness table accessor for type [NSNumber] and conformance <A> [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSNumber] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [NSNumber](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t lazy protocol witness table accessor for type HMOcclusionResult and conformance HMOcclusionResult()
{
  v2 = lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult;
  if (!lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult)
  {
    type metadata accessor for HMOcclusionResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult;
  if (!lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult)
  {
    type metadata accessor for HMOcclusionResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMOcclusionResult and conformance HMOcclusionResult);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HMInfo? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
    lazy protocol witness table accessor for type HMInfo and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMInfo? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HMInfo and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HMInfo and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HMInfo and conformance NSObject)
  {
    type metadata accessor for HMInfo();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HMInfo and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HMInfo()
{
  v2 = lazy cache variable for type metadata for HMInfo;
  if (!lazy cache variable for type metadata for HMInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HMInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t block_copy_helper_325(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_349(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *outlined destroy of HearingRecordConfig<HearingRecord, Float>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of HearingRecordConfig<HearingRecord, HMMultiState>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

uint64_t *outlined destroy of [HKAudiogramSample](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t instantiation function for generic protocol witness table for HearingRecord(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HearingRecord and conformance HearingRecord();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Published<HMInfo?>()
{
  v4 = lazy cache variable for type metadata for Published<HMInfo?>;
  if (!lazy cache variable for type metadata for Published<HMInfo?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6HMInfoCSgMd, &_sSo6HMInfoCSgMR);
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<HMInfo?>);
      return v1;
    }
  }

  return v4;
}

void *outlined init with copy of [HKAudiogramSample](uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of [NSNumber](uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of HMDeviceRecord?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [PartialKeyPath<HearingRecordModel>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMd, &_sSays14PartialKeyPathCy16HeadphoneManager18HearingRecordModelCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PartialKeyPath<HearingRecordModel>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t _s2os9serialize_2atyx_Spys5UInt8VGzts17FixedWidthIntegerRzlFySWXEfU_TA_4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

void *outlined init with copy of HMInfo?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t static Logger.subsystem.getter()
{
  v1 = Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 1);

  swift_endAccess();
  return v2;
}

uint64_t static Logger.subsystem.setter(uint64_t a1, uint64_t a2)
{
  v5 = Logger.subsystem.unsafeMutableAddressor();

  swift_beginAccess();
  v2 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;

  swift_endAccess();
}

uint64_t (*static Logger.subsystem.modify())()
{
  Logger.subsystem.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.subsystem.modify;
}

uint64_t static Logger.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.shared.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of Headphone_Manager.dispatchQueue()
{
  v9 = 0;
  v2 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = &v1 - v2;
  v3 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v7 = &v1 - v3;
  v4 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v6 = &v1 - v4;
  type metadata accessor for OS_dispatch_queue();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t Headphone_Manager.dispatchQueue.getter()
{
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneManager_dispatchQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t Headphone_Manager._topLevelUIHandler.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void (*Headphone_Manager._topLevelUIHandler.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneManager__topLevelUIHandler;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Headphone_Manager._topLevelUIHandler.modify;
}

void Headphone_Manager._topLevelUIHandler.modify(uint64_t **a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = v7[4] + v7[5];
    v5 = v7[3];
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(v7 + 3);
  }

  else
  {
    v2 = v7[5];
    v3 = v7[4];
    v6 = v7[3];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v7);
}

uint64_t Headphone_Manager.topLevelUIHandler.getter()
{
  v43 = 0;
  v33 = 0;
  v34 = type metadata accessor for Logger();
  v35 = *(v34 - 8);
  v36 = v35;
  v1 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v42 = Headphone_Manager._topLevelUIHandler.getter();
  v32 = v42 == 0;
  v31 = v32;
  outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v42);
  if (v31)
  {
    v3 = v37;
    v4 = Logger.shared.unsafeMutableAddressor();
    (*(v36 + 16))(v3, v4, v34);
    v29 = Logger.logObject.getter();
    v26 = v29;
    v28 = static os_log_type_t.error.getter();
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v29, v28))
    {
      v5 = v33;
      v17 = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = 0;
      v18 = createStorage<A>(capacity:type:)(0);
      v16 = v18;
      v19 = createStorage<A>(capacity:type:)(v15);
      v41 = v17;
      v40 = v18;
      v39 = v19;
      v20 = 0;
      v21 = &v41;
      serialize(_:at:)(0, &v41);
      serialize(_:at:)(v20, v21);
      v38 = v30;
      v22 = &v8;
      MEMORY[0x1EEE9AC00](&v8);
      v23 = &v8 - 6;
      *(&v8 - 4) = v6;
      *(&v8 - 3) = &v40;
      *(&v8 - 2) = &v39;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v25 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v26, v27, "HeadphoneManager: deviceDiscoveryHandler unset", v13, 2u);
        v11 = 0;
        destroyStorage<A>(_:count:)(v16, 0, v14);
        destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v13, MEMORY[0x1E69E7508]);

        v12 = v25;
      }
    }

    else
    {

      v12 = v33;
    }

    v9 = v12;

    (*(v36 + 8))(v37, v34);
    v10 = v9;
  }

  else
  {
    v10 = v33;
  }

  return Headphone_Manager._topLevelUIHandler.getter();
}

uint64_t *outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t key path getter for Headphone_Manager.topLevelUIHandler : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xD8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.topLevelUIHandler : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of HeadphoneMangerTopLevelEntryUIHandling?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xE0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t *(*Headphone_Manager.topLevelUIHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.topLevelUIHandler.getter();
  return Headphone_Manager.topLevelUIHandler.modify;
}

uint64_t *Headphone_Manager.topLevelUIHandler.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v5 = *a1;
    swift_unknownObjectRetain();
    Headphone_Manager.topLevelUIHandler.setter();
    return outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(a1);
  }

  else
  {
    v3 = *a1;
    return Headphone_Manager.topLevelUIHandler.setter();
  }
}

uint64_t Headphone_Manager.cbDiscovery.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_cbDiscovery);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.cbDiscovery.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_cbDiscovery);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.controller.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_controller);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.controller.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_controller);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.connection.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_connection);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.connection.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_connection);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t Headphone_Manager.deviceManager.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_deviceManager);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for Headphone_Manager.hmsClient : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x150))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.hmsClient : Headphone_Manager(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x158))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t Headphone_Manager.hmsClient.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___hmsClient);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*Headphone_Manager.hmsClient.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.hmsClient.getter();
  return Headphone_Manager.hmsClient.modify;
}

uint64_t Headphone_Manager.hmsClient.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return Headphone_Manager.hmsClient.setter(*a1);
  }

  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  Headphone_Manager.hmsClient.setter(v4);
  return MEMORY[0x1E69E5920](*a1);
}

uint64_t Headphone_Manager.audioAccessoryToken.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.audioAccessoryToken.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneManager_audioAccessoryToken);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for Headphone_Manager.cbUserController : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.cbUserController : Headphone_Manager(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x188))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t Headphone_Manager.cbUserController.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager____lazy_storage___cbUserController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*Headphone_Manager.cbUserController.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Headphone_Manager.cbUserController.getter();
  return Headphone_Manager.cbUserController.modify;
}

uint64_t Headphone_Manager.cbUserController.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return Headphone_Manager.cbUserController.setter(*a1);
  }

  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  Headphone_Manager.cbUserController.setter(v4);
  return MEMORY[0x1E69E5920](*a1);
}

uint64_t Headphone_Manager.connectedRecords.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.connectedRecords.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.connectedRecords : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x198))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.connectedRecords : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of [String : HMDeviceRecord](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.connectedRecords.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.connectedRecords.modify;
}

void Headphone_Manager.connectedRecords.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t variable initialization expression of Headphone_Manager._connectedRecords()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14HMDeviceRecordCtMd, &_sSS_So14HMDeviceRecordCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HMDeviceRecord();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$connectedRecords : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$connectedRecords : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x1B8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$connectedRecords.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$connectedRecords.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*Headphone_Manager.$connectedRecords.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMd, &_s7Combine9PublishedV9PublisherVySDySSSo14HMDeviceRecordCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  Headphone_Manager.$connectedRecords.getter();
  return Headphone_Manager.$connectedRecords.modify;
}

void Headphone_Manager.$connectedRecords.modify(uint64_t **a1, char a2)
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
    Headphone_Manager.$connectedRecords.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    Headphone_Manager.$connectedRecords.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t Headphone_Manager._connectedRecords.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedRecords;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._connectedRecords.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMd, &_s7Combine9PublishedVySDySSSo14HMDeviceRecordCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedRecords;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t Headphone_Manager.deviceConnectionListener.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}