uint64_t HeadphoneDevice.listeningMode.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.listeningMode : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.listeningMode : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x3C8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.listeningMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.listeningMode.modify;
}

void HeadphoneDevice.listeningMode.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$listeningMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$listeningMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$listeningMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$listeningMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$listeningMode.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMd, &_s7Combine9PublishedV9PublisherVySo15CBListeningModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$listeningMode.getter();
  return HeadphoneDevice.$listeningMode.modify;
}

void HeadphoneDevice.$listeningMode.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$listeningMode.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$listeningMode.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._listeningMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__listeningMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._listeningMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo15CBListeningModeVGMd, &_s7Combine9PublishedVySo15CBListeningModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__listeningMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.clickHoldModeLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerUIGestureMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.clickHoldModeLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.clickHoldModeLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.clickHoldModeLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.clickHoldModeLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x3F8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.clickHoldModeLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.clickHoldModeLeft.modify;
}

void HeadphoneDevice.clickHoldModeLeft.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$clickHoldModeLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x408))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$clickHoldModeLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x410))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$clickHoldModeLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$clickHoldModeLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$clickHoldModeLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$clickHoldModeLeft.getter();
  return HeadphoneDevice.$clickHoldModeLeft.modify;
}

void HeadphoneDevice.$clickHoldModeLeft.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$clickHoldModeLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$clickHoldModeLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._clickHoldModeLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._clickHoldModeLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.clickHoldModeRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerUIGestureMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.clickHoldModeRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.clickHoldModeRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.clickHoldModeRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x420))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.clickHoldModeRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x428))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.clickHoldModeRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.clickHoldModeRight.modify;
}

void HeadphoneDevice.clickHoldModeRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$clickHoldModeRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x438))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$clickHoldModeRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x440))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$clickHoldModeRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$clickHoldModeRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$clickHoldModeRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMd, &_s7Combine9PublishedV9PublisherVySo19CBPeerUIGestureModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$clickHoldModeRight.getter();
  return HeadphoneDevice.$clickHoldModeRight.modify;
}

void HeadphoneDevice.$clickHoldModeRight.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$clickHoldModeRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$clickHoldModeRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._clickHoldModeRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._clickHoldModeRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMd, &_s7Combine9PublishedVySo19CBPeerUIGestureModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.listeningModeConfigs.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.listeningModeConfigs.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return HeadphoneDevice.listeningModeConfigs.didset();
}

uint64_t key path getter for HeadphoneDevice.listeningModeConfigs : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x450))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.listeningModeConfigs : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x458))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.listeningModeConfigs.didset()
{
  v13 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v14 = *v13;
  swift_endAccess();
  type metadata accessor for CBListeningModeConfigs();
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  v11 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x470))(v11);
  v9 = (v12 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v10 = *v9;
  swift_endAccess();
  v8 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x4D0))(v8);
  v6 = (v12 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v7 = *v6;
  swift_endAccess();
  v5 = (OptionSet<>.contains(_:)() & 1) != 0;
  (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x500))(v5);
  v3 = (v12 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  v2 = (OptionSet<>.contains(_:)() & 1) != 0;
  return (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x4A0))(v2);
}

uint64_t (*HeadphoneDevice.listeningModeConfigs.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return HeadphoneDevice.listeningModeConfigs.modify;
}

uint64_t HeadphoneDevice.listeningModeConfigs.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  v2 = *(a1 + 24);
  swift_endAccess();
  return HeadphoneDevice.listeningModeConfigs.didset();
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldAuto@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldAuto.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldAuto.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldAuto : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x468))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldAuto : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x470))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldAuto.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldAuto.modify;
}

void HeadphoneDevice.pressHoldAuto.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$pressHoldAuto : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x480))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldAuto : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x488))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldAuto.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldAuto.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$pressHoldAuto.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$pressHoldAuto.getter();
  return HeadphoneDevice.$pressHoldAuto.modify;
}

void HeadphoneDevice.$pressHoldAuto.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$pressHoldAuto.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$pressHoldAuto.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._pressHoldAuto.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldAuto.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldTransparency@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldTransparency.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldTransparency.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldTransparency : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x498))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldTransparency : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x4A0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldTransparency.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldTransparency.modify;
}

void HeadphoneDevice.pressHoldTransparency.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$pressHoldTransparency : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x4B0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldTransparency : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x4B8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldTransparency.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldTransparency.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$pressHoldTransparency.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$pressHoldTransparency.getter();
  return HeadphoneDevice.$pressHoldTransparency.modify;
}

void HeadphoneDevice.$pressHoldTransparency.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$pressHoldTransparency.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$pressHoldTransparency.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._pressHoldTransparency.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldTransparency.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldOff@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldOff.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldOff.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldOff : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4C8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldOff : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x4D0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldOff.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldOff.modify;
}

void HeadphoneDevice.pressHoldOff.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$pressHoldOff : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x4E0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldOff : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x4E8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldOff.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldOff.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$pressHoldOff.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$pressHoldOff.getter();
  return HeadphoneDevice.$pressHoldOff.modify;
}

void HeadphoneDevice.$pressHoldOff.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$pressHoldOff.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$pressHoldOff.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._pressHoldOff.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldOff.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.pressHoldNoiseCancel@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.pressHoldNoiseCancel.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.pressHoldNoiseCancel.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.pressHoldNoiseCancel : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x4F8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.pressHoldNoiseCancel : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x500))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.pressHoldNoiseCancel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.pressHoldNoiseCancel.modify;
}

void HeadphoneDevice.pressHoldNoiseCancel.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$pressHoldNoiseCancel : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x510))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$pressHoldNoiseCancel : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x518))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$pressHoldNoiseCancel.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$pressHoldNoiseCancel.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$pressHoldNoiseCancel.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$pressHoldNoiseCancel.getter();
  return HeadphoneDevice.$pressHoldNoiseCancel.modify;
}

void HeadphoneDevice.$pressHoldNoiseCancel.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$pressHoldNoiseCancel.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$pressHoldNoiseCancel.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._pressHoldNoiseCancel.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._pressHoldNoiseCancel.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.doubleTapActionLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBDoubleTapAction();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.doubleTapActionLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.doubleTapActionLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.doubleTapActionLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x528))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.doubleTapActionLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x530))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.doubleTapActionLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.doubleTapActionLeft.modify;
}

void HeadphoneDevice.doubleTapActionLeft.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$doubleTapActionLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x540))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$doubleTapActionLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x548))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$doubleTapActionLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$doubleTapActionLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$doubleTapActionLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$doubleTapActionLeft.getter();
  return HeadphoneDevice.$doubleTapActionLeft.modify;
}

void HeadphoneDevice.$doubleTapActionLeft.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$doubleTapActionLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$doubleTapActionLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._doubleTapActionLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._doubleTapActionLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.doubleTapActionRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBDoubleTapAction();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.doubleTapActionRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.doubleTapActionRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.doubleTapActionRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x558))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.doubleTapActionRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x560))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.doubleTapActionRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.doubleTapActionRight.modify;
}

void HeadphoneDevice.doubleTapActionRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$doubleTapActionRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x570))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$doubleTapActionRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x578))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$doubleTapActionRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$doubleTapActionRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$doubleTapActionRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMd, &_s7Combine9PublishedV9PublisherVySo17CBDoubleTapActionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$doubleTapActionRight.getter();
  return HeadphoneDevice.$doubleTapActionRight.modify;
}

void HeadphoneDevice.$doubleTapActionRight.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$doubleTapActionRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$doubleTapActionRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._doubleTapActionRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._doubleTapActionRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17CBDoubleTapActionVGMd, &_s7Combine9PublishedVySo17CBDoubleTapActionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.crownRotationDirection@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCrownRotationDirection();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.crownRotationDirection.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.crownRotationDirection.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.crownRotationDirection : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x588))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.crownRotationDirection : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x590))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.crownRotationDirection.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.crownRotationDirection.modify;
}

void HeadphoneDevice.crownRotationDirection.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$crownRotationDirection : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5A0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$crownRotationDirection : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x5A8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$crownRotationDirection.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$crownRotationDirection.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$crownRotationDirection.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMd, &_s7Combine9PublishedV9PublisherVySo28CBPeerCrownRotationDirectionV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$crownRotationDirection.getter();
  return HeadphoneDevice.$crownRotationDirection.modify;
}

void HeadphoneDevice.$crownRotationDirection.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$crownRotationDirection.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$crownRotationDirection.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._crownRotationDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._crownRotationDirection.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMd, &_s7Combine9PublishedVySo28CBPeerCrownRotationDirectionVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.inEarDetection@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.inEarDetection.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.inEarDetection.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.inEarDetection : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5B8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.inEarDetection : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x5C0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.inEarDetection.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.inEarDetection.modify;
}

void HeadphoneDevice.inEarDetection.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$inEarDetection : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x5D0))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$inEarDetection : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x5D8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$inEarDetection.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$inEarDetection.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$inEarDetection.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$inEarDetection.getter();
  return HeadphoneDevice.$inEarDetection.modify;
}

void HeadphoneDevice.$inEarDetection.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$inEarDetection.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$inEarDetection.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._inEarDetection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__inEarDetection;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._inEarDetection.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__inEarDetection;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryCharging@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.batteryCharging.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.batteryCharging.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryCharging : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x5E8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryCharging : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x5F0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryCharging.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryCharging.modify;
}

void HeadphoneDevice.batteryCharging.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryCharging : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x600))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryCharging : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x608))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryCharging.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryCharging.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryCharging.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryCharging.getter();
  return HeadphoneDevice.$batteryCharging.modify;
}

void HeadphoneDevice.$batteryCharging.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryCharging.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryCharging.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryCharging.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryCharging;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryCharging.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryCharging;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.smartRoutingMode@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBSmartRoutingMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.smartRoutingMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.smartRoutingMode.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.smartRoutingMode : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x618))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.smartRoutingMode : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x620))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.smartRoutingMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.smartRoutingMode.modify;
}

void HeadphoneDevice.smartRoutingMode.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$smartRoutingMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x630))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$smartRoutingMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x638))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$smartRoutingMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$smartRoutingMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$smartRoutingMode.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMd, &_s7Combine9PublishedV9PublisherVySo18CBSmartRoutingModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$smartRoutingMode.getter();
  return HeadphoneDevice.$smartRoutingMode.modify;
}

void HeadphoneDevice.$smartRoutingMode.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$smartRoutingMode.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$smartRoutingMode.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._smartRoutingMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._smartRoutingMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18CBSmartRoutingModeVGMd, &_s7Combine9PublishedVySo18CBSmartRoutingModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.microphoneMode@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBMicrophoneMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.microphoneMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.microphoneMode.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.microphoneMode : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x648))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.microphoneMode : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x650))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.microphoneMode.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.microphoneMode.modify;
}

void HeadphoneDevice.microphoneMode.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$microphoneMode : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x660))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$microphoneMode : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x668))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$microphoneMode.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$microphoneMode.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$microphoneMode.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBMicrophoneModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$microphoneMode.getter();
  return HeadphoneDevice.$microphoneMode.modify;
}

void HeadphoneDevice.$microphoneMode.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$microphoneMode.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$microphoneMode.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._microphoneMode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__microphoneMode;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._microphoneMode.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBMicrophoneModeVGMd, &_s7Combine9PublishedVySo16CBMicrophoneModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__microphoneMode;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.volumeControlToggle@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.volumeControlToggle.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.volumeControlToggle.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.volumeControlToggle : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x678))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.volumeControlToggle : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x680))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.volumeControlToggle.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.volumeControlToggle.modify;
}

void HeadphoneDevice.volumeControlToggle.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$volumeControlToggle : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x690))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$volumeControlToggle : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x698))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$volumeControlToggle.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$volumeControlToggle.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$volumeControlToggle.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$volumeControlToggle.getter();
  return HeadphoneDevice.$volumeControlToggle.modify;
}

void HeadphoneDevice.$volumeControlToggle.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$volumeControlToggle.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$volumeControlToggle.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._volumeControlToggle.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._volumeControlToggle.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.volumeControlView.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_volumeControlView);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.volumeControlView.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_volumeControlView);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.volumeControlView : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6A8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.volumeControlView : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6B0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.spatialProfileExists@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.spatialProfileExists.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.spatialProfileExists.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.spatialProfileExists : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6C0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.spatialProfileExists : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6C8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.spatialProfileExists.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.spatialProfileExists.modify;
}

void HeadphoneDevice.spatialProfileExists.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$spatialProfileExists : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

uint64_t key path setter for HeadphoneDevice.$spatialProfileExists : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x6E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$spatialProfileExists.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$spatialProfileExists.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$spatialProfileExists.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$spatialProfileExists.getter();
  return HeadphoneDevice.$spatialProfileExists.modify;
}

void HeadphoneDevice.$spatialProfileExists.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$spatialProfileExists.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$spatialProfileExists.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._spatialProfileExists.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._spatialProfileExists.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isCaseSoundSupported@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.isCaseSoundSupported.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isCaseSoundSupported.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isCaseSoundSupported : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x6F0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isCaseSoundSupported : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x6F8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isCaseSoundSupported.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isCaseSoundSupported.modify;
}

void HeadphoneDevice.isCaseSoundSupported.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$isCaseSoundSupported : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

uint64_t key path setter for HeadphoneDevice.$isCaseSoundSupported : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x710))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isCaseSoundSupported.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isCaseSoundSupported.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$isCaseSoundSupported.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$isCaseSoundSupported.getter();
  return HeadphoneDevice.$isCaseSoundSupported.modify;
}

void HeadphoneDevice.$isCaseSoundSupported.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$isCaseSoundSupported.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$isCaseSoundSupported.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._isCaseSoundSupported.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isCaseSoundSupported.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.caseSound@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.caseSound.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.caseSound.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.caseSound : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x720))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.caseSound : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x728))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.caseSound.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.caseSound.modify;
}

void HeadphoneDevice.caseSound.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$caseSound : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

uint64_t key path setter for HeadphoneDevice.$caseSound : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x740))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$caseSound.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$caseSound.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$caseSound.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$caseSound.getter();
  return HeadphoneDevice.$caseSound.modify;
}

void HeadphoneDevice.$caseSound.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$caseSound.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$caseSound.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._caseSound.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__caseSound;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._caseSound.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__caseSound;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.airPodsServiceClient.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.airPodsServiceClient.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.airPodsServiceClient : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x750))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.airPodsServiceClient : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of BTAirPodsControlServiceClient?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x758))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HeadphoneDevice.isResettingCaseSoundOnError.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isResettingCaseSoundOnError.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isResettingCaseSoundOnError : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x768))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isResettingCaseSoundOnError : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x770))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isSettingCaseSoundValue@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.isSettingCaseSoundValue.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isSettingCaseSoundValue.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isSettingCaseSoundValue : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x780))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isSettingCaseSoundValue : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x788))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isSettingCaseSoundValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isSettingCaseSoundValue.modify;
}

void HeadphoneDevice.isSettingCaseSoundValue.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$isSettingCaseSoundValue : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x798))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isSettingCaseSoundValue : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x7A0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isSettingCaseSoundValue.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isSettingCaseSoundValue.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$isSettingCaseSoundValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$isSettingCaseSoundValue.getter();
  return HeadphoneDevice.$isSettingCaseSoundValue.modify;
}

void HeadphoneDevice.$isSettingCaseSoundValue.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$isSettingCaseSoundValue.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$isSettingCaseSoundValue.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._isSettingCaseSoundValue.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isSettingCaseSoundValue.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.endCallGesture@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCallConfig();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.endCallGesture.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.endCallGesture.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.endCallGesture : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.endCallGesture : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x7B8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.endCallGesture.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.endCallGesture.modify;
}

void HeadphoneDevice.endCallGesture.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$endCallGesture : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x7C8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$endCallGesture : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x7D0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$endCallGesture.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$endCallGesture.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$endCallGesture.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$endCallGesture.getter();
  return HeadphoneDevice.$endCallGesture.modify;
}

void HeadphoneDevice.$endCallGesture.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$endCallGesture.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$endCallGesture.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._endCallGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__endCallGesture;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._endCallGesture.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__endCallGesture;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.muteControlGesture@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBPeerCallConfig();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.muteControlGesture.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.muteControlGesture.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.muteControlGesture : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.muteControlGesture : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x7E8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.muteControlGesture.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.muteControlGesture.modify;
}

void HeadphoneDevice.muteControlGesture.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$muteControlGesture : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x7F8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$muteControlGesture : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x800))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$muteControlGesture.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$muteControlGesture.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$muteControlGesture.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMd, &_s7Combine9PublishedV9PublisherVySo16CBPeerCallConfigV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$muteControlGesture.getter();
  return HeadphoneDevice.$muteControlGesture.modify;
}

void HeadphoneDevice.$muteControlGesture.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$muteControlGesture.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$muteControlGesture.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._muteControlGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._muteControlGesture.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo16CBPeerCallConfigVGMd, &_s7Combine9PublishedVySo16CBPeerCallConfigVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.serialNumbers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t HeadphoneDevice.serialNumbers.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.serialNumbers.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.serialNumbers : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x810))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.serialNumbers : HeadphoneDevice(uint64_t *a1, void *a2)
{
  outlined init with copy of [Int : String](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x818))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.serialNumbers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.serialNumbers.modify;
}

void HeadphoneDevice.serialNumbers.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of HeadphoneDevice._serialNumbers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
  _allocateUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for HeadphoneDevice.$serialNumbers : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x828))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$serialNumbers : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x830))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$serialNumbers.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$serialNumbers.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$serialNumbers.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSSG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSSG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$serialNumbers.getter();
  return HeadphoneDevice.$serialNumbers.modify;
}

void HeadphoneDevice.$serialNumbers.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$serialNumbers.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$serialNumbers.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._serialNumbers.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._serialNumbers.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.selectiveSpeechListening@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.selectiveSpeechListening.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.selectiveSpeechListening.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.selectiveSpeechListening : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x840))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.selectiveSpeechListening : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x848))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.selectiveSpeechListening.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.selectiveSpeechListening.modify;
}

void HeadphoneDevice.selectiveSpeechListening.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$selectiveSpeechListening : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x858))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$selectiveSpeechListening : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x860))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$selectiveSpeechListening.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$selectiveSpeechListening.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$selectiveSpeechListening.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$selectiveSpeechListening.getter();
  return HeadphoneDevice.$selectiveSpeechListening.modify;
}

void HeadphoneDevice.$selectiveSpeechListening.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$selectiveSpeechListening.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$selectiveSpeechListening.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._selectiveSpeechListening.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._selectiveSpeechListening.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.conversationDetect@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.conversationDetect.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.conversationDetect.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.conversationDetect : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x870))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.conversationDetect : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x878))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.conversationDetect.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.conversationDetect.modify;
}

void HeadphoneDevice.conversationDetect.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$conversationDetect : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x888))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$conversationDetect : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x890))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$conversationDetect.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$conversationDetect.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$conversationDetect.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$conversationDetect.getter();
  return HeadphoneDevice.$conversationDetect.modify;
}

void HeadphoneDevice.$conversationDetect.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$conversationDetect.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$conversationDetect.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._conversationDetect.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__conversationDetect;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._conversationDetect.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__conversationDetect;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.adaptiveVolume@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.adaptiveVolume.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.adaptiveVolume.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.adaptiveVolume : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8A0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.adaptiveVolume : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x8A8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.adaptiveVolume.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.adaptiveVolume.modify;
}

void HeadphoneDevice.adaptiveVolume.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$adaptiveVolume : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x8B8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$adaptiveVolume : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x8C0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$adaptiveVolume.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$adaptiveVolume.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$adaptiveVolume.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$adaptiveVolume.getter();
  return HeadphoneDevice.$adaptiveVolume.modify;
}

void HeadphoneDevice.$adaptiveVolume.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$adaptiveVolume.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$adaptiveVolume.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._adaptiveVolume.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._adaptiveVolume.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelMain@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelMain.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelMain.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelMain : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8D0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelMain : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x8D8))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelMain.modify;
}

void HeadphoneDevice.batteryLevelMain.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryLevelMain : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x8E8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelMain : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x8F0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryLevelMain.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryLevelMain.getter();
  return HeadphoneDevice.$batteryLevelMain.modify;
}

void HeadphoneDevice.$batteryLevelMain.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryLevelMain.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryLevelMain.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryLevelMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateMain@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateMain.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateMain.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateMain : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x900))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateMain : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x908))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateMain.modify;
}

void HeadphoneDevice.batteryStateMain.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryStateMain : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x918))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateMain : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x920))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryStateMain.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryStateMain.getter();
  return HeadphoneDevice.$batteryStateMain.modify;
}

void HeadphoneDevice.$batteryStateMain.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryStateMain.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryStateMain.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryStateMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelLeft : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x930))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelLeft : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x938))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelLeft.modify;
}

void HeadphoneDevice.batteryLevelLeft.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryLevelLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x948))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x950))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryLevelLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryLevelLeft.getter();
  return HeadphoneDevice.$batteryLevelLeft.modify;
}

void HeadphoneDevice.$batteryLevelLeft.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryLevelLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryLevelLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryLevelLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateLeft@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateLeft.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateLeft : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x960))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateLeft : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x968))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateLeft.modify;
}

void HeadphoneDevice.batteryStateLeft.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryStateLeft : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x978))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateLeft : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x980))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryStateLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryStateLeft.getter();
  return HeadphoneDevice.$batteryStateLeft.modify;
}

void HeadphoneDevice.$batteryStateLeft.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryStateLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryStateLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryStateLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelRight@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelRight : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x990))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelRight : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x998))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelRight.modify;
}

void HeadphoneDevice.batteryLevelRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryLevelRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x9A8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x9B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryLevelRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryLevelRight.getter();
  return HeadphoneDevice.$batteryLevelRight.modify;
}

void HeadphoneDevice.$batteryLevelRight.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryLevelRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryLevelRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryLevelRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateRight@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateRight.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateRight : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9C0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateRight : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x9C8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateRight.modify;
}

void HeadphoneDevice.batteryStateRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryStateRight : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x9D8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateRight : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x9E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryStateRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryStateRight.getter();
  return HeadphoneDevice.$batteryStateRight.modify;
}

void HeadphoneDevice.$batteryStateRight.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryStateRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryStateRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryStateRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryLevelCase@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6448], a1);
}

float HeadphoneDevice.batteryLevelCase.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryLevelCase.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryLevelCase : HeadphoneDevice@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9F0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryLevelCase : HeadphoneDevice(float *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x9F8))(v2, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.batteryLevelCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryLevelCase.modify;
}

void HeadphoneDevice.batteryLevelCase.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryLevelCase : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA08))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryLevelCase : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA10))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryLevelCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryLevelCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryLevelCase.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySf_GMd, &_s7Combine9PublishedV9PublisherVySf_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryLevelCase.getter();
  return HeadphoneDevice.$batteryLevelCase.modify;
}

void HeadphoneDevice.$batteryLevelCase.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryLevelCase.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryLevelCase.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryLevelCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryLevelCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.batteryStateCase@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBBatteryState();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.batteryStateCase.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.batteryStateCase.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.batteryStateCase : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA20))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.batteryStateCase : HeadphoneDevice(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xA28))(v4);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.batteryStateCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.batteryStateCase.modify;
}

void HeadphoneDevice.batteryStateCase.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$batteryStateCase : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA38))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$batteryStateCase : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA40))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$batteryStateCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$batteryStateCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$batteryStateCase.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMd, &_s7Combine9PublishedV9PublisherVySo14CBBatteryStateV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$batteryStateCase.getter();
  return HeadphoneDevice.$batteryStateCase.modify;
}

void HeadphoneDevice.$batteryStateCase.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$batteryStateCase.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$batteryStateCase.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._batteryStateCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._batteryStateCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo14CBBatteryStateVGMd, &_s7Combine9PublishedVySo14CBBatteryStateVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.hearingRecord@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for HearingRecord();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.hearingRecord : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA50))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.hearingRecord : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA58))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.hearingRecord.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.hearingRecord.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*HeadphoneDevice.hearingRecord.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.hearingRecord.modify;
}

void HeadphoneDevice.hearingRecord.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$hearingRecord : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA68))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$hearingRecord : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xA70))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$hearingRecord.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$hearingRecord.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$hearingRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager13HearingRecordC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$hearingRecord.getter();
  return HeadphoneDevice.$hearingRecord.modify;
}

void HeadphoneDevice.$hearingRecord.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$hearingRecord.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$hearingRecord.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._hearingRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._hearingRecord.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.audioAccessoryDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = type metadata accessor for AADevice();
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for HeadphoneDevice.audioAccessoryDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA80))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.audioAccessoryDevice : HeadphoneDevice(uint64_t *a1, void *a2)
{
  v3 = *a1;

  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA88))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.audioAccessoryDevice.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.audioAccessoryDevice.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*HeadphoneDevice.audioAccessoryDevice.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.audioAccessoryDevice.modify;
}

void HeadphoneDevice.audioAccessoryDevice.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$audioAccessoryDevice : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA98))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$audioAccessoryDevice : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xAA0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$audioAccessoryDevice.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$audioAccessoryDevice.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$audioAccessoryDevice.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager8AADeviceC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$audioAccessoryDevice.getter();
  return HeadphoneDevice.$audioAccessoryDevice.modify;
}

void HeadphoneDevice.$audioAccessoryDevice.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$audioAccessoryDevice.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$audioAccessoryDevice.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._audioAccessoryDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._audioAccessoryDevice.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.spatialAllowed@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t key path getter for HeadphoneDevice.spatialAllowed : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xAB0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.spatialAllowed : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xAB8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.spatialAllowed.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.spatialAllowed.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HeadphoneDevice.spatialAllowed.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.spatialAllowed.modify;
}

void HeadphoneDevice.spatialAllowed.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$spatialAllowed : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xAC8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$spatialAllowed : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xAD0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$spatialAllowed.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$spatialAllowed.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$spatialAllowed.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$spatialAllowed.getter();
  return HeadphoneDevice.$spatialAllowed.modify;
}

void HeadphoneDevice.$spatialAllowed.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$spatialAllowed.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$spatialAllowed.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._spatialAllowed.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._spatialAllowed.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.firmwareUpgradeParticipation@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.firmwareUpgradeParticipation.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.firmwareUpgradeParticipation.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.firmwareUpgradeParticipation : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xAE0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.firmwareUpgradeParticipation : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xAE8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.firmwareUpgradeParticipation.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.firmwareUpgradeParticipation.modify;
}

void HeadphoneDevice.firmwareUpgradeParticipation.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$firmwareUpgradeParticipation : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xAF8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$firmwareUpgradeParticipation : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xB00))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$firmwareUpgradeParticipation.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$firmwareUpgradeParticipation.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$firmwareUpgradeParticipation.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$firmwareUpgradeParticipation.getter();
  return HeadphoneDevice.$firmwareUpgradeParticipation.modify;
}

void HeadphoneDevice.$firmwareUpgradeParticipation.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$firmwareUpgradeParticipation.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$firmwareUpgradeParticipation.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._firmwareUpgradeParticipation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._firmwareUpgradeParticipation.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.firmwareLoggingEnabled@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.firmwareLoggingEnabled.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.firmwareLoggingEnabled.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.firmwareLoggingEnabled : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB10))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.firmwareLoggingEnabled : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xB18))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.firmwareLoggingEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.firmwareLoggingEnabled.modify;
}

void HeadphoneDevice.firmwareLoggingEnabled.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for HeadphoneDevice.$firmwareLoggingEnabled : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xB28))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$firmwareLoggingEnabled : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0xB30))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$firmwareLoggingEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$firmwareLoggingEnabled.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$firmwareLoggingEnabled.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$firmwareLoggingEnabled.getter();
  return HeadphoneDevice.$firmwareLoggingEnabled.modify;
}

void HeadphoneDevice.$firmwareLoggingEnabled.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$firmwareLoggingEnabled.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$firmwareLoggingEnabled.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._firmwareLoggingEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._firmwareLoggingEnabled.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.deviceDelegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t HeadphoneDevice.deviceDelegate.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*HeadphoneDevice.deviceDelegate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneDevice_deviceDelegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return HeadphoneDevice.deviceDelegate.modify;
}

void HeadphoneDevice.deviceDelegate.modify(uint64_t **a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = v7[4] + v7[5];
    v5 = v7[3];
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of HeadphoneDeviceDelegate?(v7 + 3);
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

uint64_t HeadphoneDevice.init(cbDevice:)(uint64_t a1)
{
  v444 = MEMORY[0x1EEE9AC00](a1);
  v405 = "init(cbDevice:)";
  v406 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v544 = 0;
  v543 = 0;
  v542 = 0;
  v537 = 0;
  v536 = 0;
  v474 = 0;
  v475 = 0;
  v447 = 0;
  v448 = 0;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMd, &_s7Combine9PublishedVy16HeadphoneManager8AADeviceCGMR);
  v427 = *(v432 - 8);
  v428 = v432 - 8;
  v407 = (*(v427 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v432);
  v431 = v87 - v407;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMd, &_s7Combine9PublishedVy16HeadphoneManager13HearingRecordCGMR);
  v421 = *(v426 - 8);
  v422 = v426 - 8;
  v408 = (*(v421 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v426);
  v425 = v87 - v408;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSSGGMd, &_s7Combine9PublishedVySDySiSSGGMR);
  v415 = *(v420 - 8);
  v416 = v420 - 8;
  v409 = (*(v415 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v420);
  v419 = v87 - v409;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v411 = *(v436 - 8);
  v412 = v436 - 8;
  v410 = (*(v411 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v444);
  v3 = v87 - v410;
  v435 = v87 - v410;
  v543 = v2;
  v544 = v1;
  v441 = 0;
  *&v1[OBJC_IVAR___HPMHeadphoneDevice_aaDevice] = 0;
  v414 = v544;
  v413 = OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  v439 = 0;
  property wrapper backing initializer of HeadphoneDevice.isConnected(0, v3);
  v438 = *(v411 + 32);
  v437 = v411 + 32;
  v438(&v414[v413], v435, v436);
  *&v544[OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient] = v441;
  v418 = v544;
  v417 = OBJC_IVAR___HPMHeadphoneDevice__serialNumbers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
  _allocateUninitializedArray<A>(_:)();
  v4 = Dictionary.init(dictionaryLiteral:)();
  property wrapper backing initializer of HeadphoneDevice.serialNumbers(v4, v419);
  (*(v415 + 32))(&v418[v417], v419, v420);
  v424 = v544;
  v423 = OBJC_IVAR___HPMHeadphoneDevice__hearingRecord;
  type metadata accessor for HearingRecord();
  v5 = HearingRecord.__allocating_init()();
  property wrapper backing initializer of HeadphoneDevice.hearingRecord(v5, v425);
  (*(v421 + 32))(&v424[v423], v425, v426);
  v430 = v544;
  v429 = OBJC_IVAR___HPMHeadphoneDevice__audioAccessoryDevice;
  type metadata accessor for AADevice();
  v6 = AADevice.__allocating_init()();
  property wrapper backing initializer of HeadphoneDevice.audioAccessoryDevice(v6, v431);
  (*(v427 + 32))(&v430[v429], v431, v432);
  v434 = v544;
  v433 = OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed;
  property wrapper backing initializer of HeadphoneDevice.spatialAllowed(v439 & 1, v435);
  v438(&v434[v433], v435, v436);
  swift_unknownObjectWeakInit();
  v7 = v444;
  v8 = v439;
  *&v544[OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask] = v439;
  *&v544[OBJC_IVAR___HPMHeadphoneDevice_deviceColor] = v8;
  v440 = v544;
  MEMORY[0x1E69E5928](v7);
  *(v440 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice) = v444;
  type metadata accessor for CBProductInfo();
  v442 = @nonobjc CBProductInfo.__allocating_init(productID:)([v444 productID]);
  v542 = v442;
  v443 = v544;
  MEMORY[0x1E69E5928](v442);
  v9 = v444;
  *(v443 + OBJC_IVAR___HPMHeadphoneDevice_productInfo) = v442;
  v445 = v544;
  v446 = [v9 name];
  if (v446)
  {
    v404 = v446;
    v401 = v446;
    v402._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v402._object = v10;
    MEMORY[0x1E69E5920](v401);
    v403 = v402;
  }

  else
  {
    v403._countAndFlagsBits = 0;
    v403._object = 0;
  }

  v540 = v403;
  if (v403._object)
  {
    v541 = v540;
  }

  else
  {
    v541 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
    if (v540._object)
    {
      outlined destroy of String?(&v540);
    }
  }

  v398 = v541;
  v397 = &v445[OBJC_IVAR___HPMHeadphoneDevice__name];
  v399 = &v539;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.name(v398._countAndFlagsBits, v398._object, v397);
  swift_endAccess();
  v400 = [v444 btAddressData];
  if (v400)
  {
    v396 = v400;
    v391 = v400;
    v392 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v393 = v11;
    MEMORY[0x1E69E5920](v391);
    v394 = v392;
    v395 = v393;
  }

  else
  {
    v394 = 0;
    v395 = 0xF000000000000000;
  }

  v389 = v395;
  v390 = v394;
  if ((v395 & 0xF000000000000000) == 0xF000000000000000)
  {
    type metadata accessor for Log();
    v384 = static Log.shared.getter();
    v385 = 1;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BT Address", 0x24uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();

    v386 = v544;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, v385 & 1);
    *(v386 + OBJC_IVAR___HPMHeadphoneDevice_btAddress) = v12;
  }

  else
  {
    v387 = v390;
    v388 = v389;
    v382 = v389;
    v381 = v390;
    v447 = v390;
    v448 = v389;
    v378 = v544;
    v377 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
    v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    v376 = _allocateUninitializedArray<A>(_:)();
    v374 = v13;
    v14 = MEMORY[0x1DA7304B0](0, v381, v382);
    v15 = v374;
    v16 = v381;
    v17 = v382;
    v372 = MEMORY[0x1E69E7508];
    v374[3] = MEMORY[0x1E69E7508];
    v373 = MEMORY[0x1E69E7558];
    v15[4] = MEMORY[0x1E69E7558];
    *v15 = v14;
    v18 = MEMORY[0x1DA7304B0](1, v16, v17);
    v19 = v373;
    v20 = v374;
    v21 = v381;
    v22 = v382;
    v374[8] = v372;
    v20[9] = v19;
    *(v20 + 40) = v18;
    v23 = MEMORY[0x1DA7304B0](2, v21, v22);
    v24 = v373;
    v25 = v374;
    v26 = v381;
    v27 = v382;
    v374[13] = v372;
    v25[14] = v24;
    *(v25 + 80) = v23;
    v28 = MEMORY[0x1DA7304B0](3, v26, v27);
    v29 = v373;
    v30 = v374;
    v31 = v381;
    v32 = v382;
    v374[18] = v372;
    v30[19] = v29;
    *(v30 + 120) = v28;
    v33 = MEMORY[0x1DA7304B0](4, v31, v32);
    v34 = v373;
    v35 = v374;
    v36 = v381;
    v37 = v382;
    v374[23] = v372;
    v35[24] = v34;
    *(v35 + 160) = v33;
    v38 = MEMORY[0x1DA7304B0](5, v36, v37);
    v39 = v373;
    v40 = v374;
    v374[28] = v372;
    v40[29] = v39;
    *(v40 + 200) = v38;
    _finalizeUninitializedArray<A>(_:)();
    v379 = String.init(format:_:)();
    v380 = v41;

    v42 = v380;
    v43 = v381;
    v44 = v382;
    v45 = (v378 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
    *v45 = v379;
    v45[1] = v42;
    outlined consume of Data._Representation(v43, v44);
  }

  v348 = v544;
  v350 = [v444 listeningMode];
  v349 = &v348[OBJC_IVAR___HPMHeadphoneDevice__listeningMode];
  v351 = &v538;
  v361 = 33;
  v362 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.listeningMode(v350, v349);
  swift_endAccess();
  v46 = v444;
  v544[OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig] = 0;
  v353 = 0x1FAACC000uLL;
  v352 = [v46 0x1FAACC79CLL];
  v537 = v352;
  v359 = 0x1FB471000uLL;
  v354 = [v444 0x1FB471778];
  v536 = v354;
  v355 = v544;
  v357 = [v444 (v353 + 1948)];
  v356 = &v355[OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeLeft];
  v358 = &v535;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.clickHoldModeLeft(v357, v356);
  swift_endAccess();
  v360 = v544;
  v364 = [v444 (v359 + 1912)];
  v363 = &v360[OBJC_IVAR___HPMHeadphoneDevice__clickHoldModeRight];
  v365 = &v534;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.clickHoldModeRight(v364, v363);
  swift_endAccess();
  v366 = v544;
  v367 = 0x1FB75B000uLL;
  v47 = [v444 0x1FB75B993];
  v48 = v367;
  v49 = v47;
  v50 = v444;
  *(v366 + OBJC_IVAR___HPMHeadphoneDevice_listeningModeConfigs) = v49;
  v368 = v544;
  v533[1] = [v50 (v48 + 2451)];
  v370 = v533;
  v533[0] = 1;
  v369 = type metadata accessor for CBListeningModeConfigs();
  v371 = lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  v347 = (OptionSet<>.contains(_:)() & 1) != 0;
  v344 = v347;
  v343 = &v368[OBJC_IVAR___HPMHeadphoneDevice__pressHoldOff];
  v345 = &v532;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldOff(v344, v343);
  swift_endAccess();
  v346 = v544;
  v531[7] = [v444 listeningModeConfigs];
  v531[6] = 4;
  v342 = (OptionSet<>.contains(_:)() & 1) != 0;
  v339 = v342;
  v338 = &v346[OBJC_IVAR___HPMHeadphoneDevice__pressHoldTransparency];
  v340 = v531;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldTransparency(v339, v338);
  swift_endAccess();
  v341 = v544;
  v530[7] = [v444 listeningModeConfigs];
  v530[6] = 8;
  v337 = (OptionSet<>.contains(_:)() & 1) != 0;
  v334 = v337;
  v333 = &v341[OBJC_IVAR___HPMHeadphoneDevice__pressHoldAuto];
  v335 = v530;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldAuto(v334, v333);
  swift_endAccess();
  v336 = v544;
  v529[7] = [v444 listeningModeConfigs];
  v529[6] = 2;
  v332 = (OptionSet<>.contains(_:)() & 1) != 0;
  v316 = v332;
  v315 = &v336[OBJC_IVAR___HPMHeadphoneDevice__pressHoldNoiseCancel];
  v317 = v529;
  v323 = 33;
  v324 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.pressHoldNoiseCancel(v316, v315);
  swift_endAccess();
  v318 = v544;
  v320 = [v444 doubleTapActionLeft];
  v319 = &v318[OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionLeft];
  v321 = &v528;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.doubleTapActionLeft(v320, v319);
  swift_endAccess();
  v322 = v544;
  v326 = [v444 doubleTapActionRight];
  v325 = &v322[OBJC_IVAR___HPMHeadphoneDevice__doubleTapActionRight];
  v327 = &v527;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.doubleTapActionRight(v326, v325);
  swift_endAccess();
  v328 = v544;
  v51 = [v444 crownRotationDirection];
  v331 = &v526;
  v526 = v51;
  v329 = &v525;
  v525 = 0;
  v330 = type metadata accessor for CBPeerCrownRotationDirection();
  lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection();
  if (== infix<A>(_:_:)())
  {
    v314 = 1;
  }

  else
  {
    v314 = [v444 crownRotationDirection];
  }

  v286 = v314;
  v285 = &v328[OBJC_IVAR___HPMHeadphoneDevice__crownRotationDirection];
  v287 = &v524;
  v303 = 33;
  v304 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.crownRotationDirection(v286, v285);
  swift_endAccess();
  v291 = v544;
  v52 = [v444 placementMode];
  v290 = &v523;
  v523 = v52;
  v288 = &v522;
  v522 = 1;
  v309 = 0;
  v289 = type metadata accessor for CBDevicePlacementMode();
  lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode();
  v312 = MEMORY[0x1E69E7248];
  v293 = == infix<A>(_:_:)();
  v292 = &v291[OBJC_IVAR___HPMHeadphoneDevice__inEarDetection];
  v294 = &v521;
  swift_beginAccess();
  v296 = 1;
  property wrapper backing initializer of HeadphoneDevice.inEarDetection(v293 & 1, v292);
  swift_endAccess();
  v295 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryCharging];
  v297 = &v520;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.batteryCharging(v296 & 1, v295);
  swift_endAccess();
  v298 = v544;
  v300 = [v444 endCallConfig];
  v299 = &v298[OBJC_IVAR___HPMHeadphoneDevice__endCallGesture];
  v301 = &v519;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.endCallGesture(v300, v299);
  swift_endAccess();
  v302 = v544;
  v306 = [v444 muteControlConfig];
  v305 = &v302[OBJC_IVAR___HPMHeadphoneDevice__muteControlGesture];
  v307 = &v518;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.muteControlGesture(v306, v305);
  swift_endAccess();
  v308 = v544;
  v53 = [v444 smartRoutingMode];
  v313 = &v517;
  v517 = v53;
  v310 = &v516;
  v516 = 0;
  v311 = type metadata accessor for CBSmartRoutingMode();
  lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode();
  if (== infix<A>(_:_:)())
  {
    v284 = 2;
  }

  else
  {
    v284 = [v444 smartRoutingMode];
  }

  v266 = v284;
  v265 = &v308[OBJC_IVAR___HPMHeadphoneDevice__smartRoutingMode];
  v267 = &v515;
  v275 = 33;
  v279 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.smartRoutingMode(v266, v265);
  swift_endAccess();
  v268 = v544;
  v270 = [v444 microphoneMode];
  v269 = &v268[OBJC_IVAR___HPMHeadphoneDevice__microphoneMode];
  v271 = &v514;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.microphoneMode(v270, v269);
  swift_endAccess();
  v272 = v544;
  v54 = CBProductIDIsAirPods_0([v444 productID]);
  v272[OBJC_IVAR___HPMHeadphoneDevice_isAirpods] = v54;
  v544[OBJC_IVAR___HPMHeadphoneDevice_isResettingCaseSoundOnError] = 0;
  v273 = &v544[OBJC_IVAR___HPMHeadphoneDevice__isSettingCaseSoundValue];
  v274 = &v513;
  swift_beginAccess();
  v277 = 0;
  property wrapper backing initializer of HeadphoneDevice.isSettingCaseSoundValue(0, v273);
  swift_endAccess();
  v276 = &v544[OBJC_IVAR___HPMHeadphoneDevice__isCaseSoundSupported];
  v278 = &v512;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.isCaseSoundSupported(v277 & 1, v276);
  swift_endAccess();
  v280 = v544;
  v281 = &v544[OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient];
  v282 = &v510;
  swift_beginAccess();
  v283 = *v281;
  MEMORY[0x1E69E5928](v283);
  swift_endAccess();
  v509 = v283;
  if (v283)
  {
    v511 = v509;
  }

  else
  {
    v511 = 0;
  }

  v243 = v511;
  v242 = (v280 + OBJC_IVAR___HPMHeadphoneDevice_airPodsServiceClient);
  v244 = &v508;
  v254 = 33;
  v255 = 0;
  swift_beginAccess();
  v55 = *v242;
  *v242 = v243;
  MEMORY[0x1E69E5920](v55);
  swift_endAccess();
  v245 = &v544[OBJC_IVAR___HPMHeadphoneDevice__caseSound];
  v246 = &v507;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.caseSound(1, v245);
  swift_endAccess();
  v544[OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport] = 0;
  v247 = &v544[OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable];
  v248 = &v506;
  swift_beginAccess();
  v257 = 0;
  property wrapper backing initializer of HeadphoneDevice.findMyNetworkEnable(0, v247);
  swift_endAccess();
  v249 = &v544[OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue];
  v250 = &v505;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.isSettingFindMyNetworkValue(v257 & 1, v249);
  swift_endAccess();
  v544[OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError] = 0;
  v544[OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated] = 0;
  v253 = v544;
  v259 = 0;
  type metadata accessor for SPOwnerInterface();
  v251 = SPOwnerInterface.__allocating_init()();
  v252 = [v251 ownerSession];
  MEMORY[0x1E69E5920](v251);
  *(v253 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession) = v252;
  v256 = &v544[OBJC_IVAR___HPMHeadphoneDevice__spatialProfileExists];
  v258 = &v504;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.spatialProfileExists(v257 & 1, v256);
  swift_endAccess();
  v260 = v544;
  v263 = &v503;
  v503 = v352;
  v261 = &v502;
  v502 = 6;
  v262 = type metadata accessor for CBPeerUIGestureMode();
  v264 = lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
  if (== infix<A>(_:_:)())
  {
    v241 = 1;
  }

  else
  {
    v501[29] = v352;
    v501[28] = 7;
    v241 = == infix<A>(_:_:)();
  }

  if (v241)
  {
    v240 = 1;
  }

  else
  {
    v501[27] = v354;
    v501[26] = 6;
    v240 = == infix<A>(_:_:)();
  }

  if (v240)
  {
    v239 = 1;
  }

  else
  {
    v501[25] = v354;
    v501[24] = 7;
    v239 = == infix<A>(_:_:)();
  }

  v204 = v239;
  v203 = &v260[OBJC_IVAR___HPMHeadphoneDevice__volumeControlToggle];
  v205 = v501;
  v232 = 33;
  v233 = 0;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.volumeControlToggle(v204 & 1, v203);
  swift_endAccess();
  v56 = v444;
  v544[OBJC_IVAR___HPMHeadphoneDevice_volumeControlView] = 0;
  v209 = v544;
  v57 = [v56 selectiveSpeechListeningConfig];
  v208 = &v500;
  v500 = v57;
  v206 = &v499;
  v220 = 1;
  v499 = 1;
  v221 = 0;
  v207 = type metadata accessor for CBPeerSelectiveSpeechListeningConfig();
  lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig();
  v224 = MEMORY[0x1E69E7520];
  v211 = == infix<A>(_:_:)();
  v210 = &v209[OBJC_IVAR___HPMHeadphoneDevice__selectiveSpeechListening];
  v212 = &v498;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.selectiveSpeechListening(v211 & 1, v210);
  swift_endAccess();
  v216 = v544;
  v58 = [v444 conversationDetectConfig];
  v215 = &v497;
  v497 = v58;
  v213 = &v496;
  v496 = v220;
  v214 = type metadata accessor for CBPeerConversationDetectConfig();
  lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig();
  v218 = == infix<A>(_:_:)();
  v217 = &v216[OBJC_IVAR___HPMHeadphoneDevice__conversationDetect];
  v219 = &v495;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.conversationDetect(v218 & 1, v217);
  swift_endAccess();
  v226 = v544;
  v59 = [v444 adaptiveVolumeConfig];
  v225 = &v494;
  v494 = v59;
  v222 = &v493;
  v493 = v220;
  v223 = type metadata accessor for CBPeerAdaptiveVolumeConfig();
  lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig();
  v228 = == infix<A>(_:_:)();
  v227 = &v226[OBJC_IVAR___HPMHeadphoneDevice__adaptiveVolume];
  v229 = &v492;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.adaptiveVolume(v228 & 1, v227);
  swift_endAccess();
  v230 = &v544[OBJC_IVAR___HPMHeadphoneDevice__firmwareUpgradeParticipation];
  v231 = &v491;
  swift_beginAccess();
  v235 = 0;
  property wrapper backing initializer of HeadphoneDevice.firmwareUpgradeParticipation(0, v230);
  swift_endAccess();
  v234 = &v544[OBJC_IVAR___HPMHeadphoneDevice__firmwareLoggingEnabled];
  v236 = &v490;
  swift_beginAccess();
  property wrapper backing initializer of HeadphoneDevice.firmwareLoggingEnabled(v235 & 1, v234);
  swift_endAccess();
  v237 = &v487;
  v488 = &type metadata for AudioAccessoryFeatures;
  v489 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v487 = 0;
  v238 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v237);
  if (v238)
  {
    v183 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft];
    v184 = v456;
    v198 = 33;
    v199 = 0;
    swift_beginAccess();
    v190 = 0.01;
    property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft(v183, 0.01);
    swift_endAccess();
    v185 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight];
    v186 = &v455;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelRight(v185, v190);
    swift_endAccess();
    v187 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase];
    v188 = &v454;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelCase(v187, v190);
    swift_endAccess();
    v189 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain];
    v191 = &v453;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelMain(v189, v190);
    swift_endAccess();
    v192 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft];
    v193 = &v452;
    swift_beginAccess();
    v201 = 0;
    property wrapper backing initializer of HeadphoneDevice.batteryStateLeft(0, v192);
    swift_endAccess();
    v194 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight];
    v195 = &v451;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateRight(v201, v194);
    swift_endAccess();
    v196 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase];
    v197 = &v450;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateCase(v201, v196);
    swift_endAccess();
    v200 = &v544[OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain];
    v202 = &v449;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateMain(v201, v200);
  }

  else
  {
    v149 = v544;
    [v444 batteryLevelLeft];
    v151 = v60;
    v150 = &v149[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelLeft];
    v152 = &v486;
    v178 = 33;
    v179 = 0;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelLeft(v150, v151);
    swift_endAccess();
    v153 = v544;
    [v444 batteryLevelRight];
    v155 = v61;
    v154 = &v153[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelRight];
    v156 = &v485;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelRight(v154, v155);
    swift_endAccess();
    v157 = v544;
    [v444 batteryLevelCase];
    v159 = v62;
    v158 = &v157[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelCase];
    v160 = &v484;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelCase(v158, v159);
    swift_endAccess();
    v161 = v544;
    [v444 batteryLevelMain];
    v163 = v63;
    v162 = &v161[OBJC_IVAR___HPMHeadphoneDevice__batteryLevelMain];
    v164 = &v483;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryLevelMain(v162, v163);
    swift_endAccess();
    v165 = v544;
    v167 = [v444 batteryStateLeft];
    v166 = &v165[OBJC_IVAR___HPMHeadphoneDevice__batteryStateLeft];
    v168 = &v482;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateLeft(v167, v166);
    swift_endAccess();
    v169 = v544;
    v171 = [v444 batteryStateRight];
    v170 = &v169[OBJC_IVAR___HPMHeadphoneDevice__batteryStateRight];
    v172 = &v481;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateRight(v171, v170);
    swift_endAccess();
    v173 = v544;
    v175 = [v444 batteryStateCase];
    v174 = &v173[OBJC_IVAR___HPMHeadphoneDevice__batteryStateCase];
    v176 = &v480;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateCase(v175, v174);
    swift_endAccess();
    v177 = v544;
    v181 = [v444 batteryStateMain];
    v180 = &v177[OBJC_IVAR___HPMHeadphoneDevice__batteryStateMain];
    v182 = &v479;
    swift_beginAccess();
    property wrapper backing initializer of HeadphoneDevice.batteryStateMain(v181, v180);
  }

  swift_endAccess();
  v142 = v544;
  v478[1] = [v444 deviceFlags];
  v141 = v478;
  v478[0] = 0x10000000;
  v146 = 0;
  v140 = type metadata accessor for CBDeviceFlags();
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  v144 = OptionSet<>.contains(_:)();
  v143 = &v142[OBJC_IVAR___HPMHeadphoneDevice__spatialAllowed];
  v145 = &v477;
  swift_beginAccess();
  (*(v411 + 8))(v143, v436);
  property wrapper backing initializer of HeadphoneDevice.spatialAllowed(v144 & 1, v143);
  swift_endAccess();
  v147 = v544;
  v64 = type metadata accessor for HeadphoneDevice();
  v476.receiver = v147;
  v476.super_class = v64;
  v544 = objc_msgSendSuper2(&v476, sel_init);
  v148 = [v444 btAddressData];
  if (v148)
  {
    v139 = v148;
    v134 = v148;
    v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v136 = v65;
    MEMORY[0x1E69E5920](v134);
    v137 = v135;
    v138 = v136;
  }

  else
  {
    v137 = 0;
    v138 = 0xF000000000000000;
  }

  v132 = v138;
  v133 = v137;
  if ((v138 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v442);
  }

  else
  {
    v130 = v133;
    v131 = v132;
    v126 = v132;
    v127 = v133;
    v474 = v133;
    v475 = v132;
    v473[1] = [v442 flags];
    v129 = v473;
    v473[0] = 0x40000;
    v128 = type metadata accessor for CBProductFlags();
    lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
    v66 = OptionSet<>.contains(_:)();
    if (v66)
    {
      v66 = (*((*v544 & *MEMORY[0x1E69E7D40]) + 0xBA0))(v127, v126);
    }

    (*((*v544 & *MEMORY[0x1E69E7D40]) + 0xBD8))(v66);
    if (CBPeerCallManagementCapability.rawValue.getter([v444 endCallCapability]))
    {
      v67 = (*((*v544 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
      v122 = v462;
      v462[0] = v67;
      v120 = &v461;
      v461 = 0;
      v121 = type metadata accessor for CBPeerCallConfig();
      v123 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v125 = == infix<A>(_:_:)();
      v124 = v544;
      MEMORY[0x1E69E5928](v544);
      if (v125)
      {
        v119 = 1;
      }

      else
      {
        v460 = (*((*v124 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v459 = 1;
        v119 = == infix<A>(_:_:)();
      }

      v118 = v119;
      MEMORY[0x1E69E5920](v124);
      if (v118)
      {
        type metadata accessor for Log();
        v116 = static Log.shared.getter();
        v68 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v112 = &v457;
        v457 = v68;
        v458 = v69;
        v110 = 1;
        v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: read endCallConfig as ", 0x28uLL, 1);
        v109 = v70._object;
        MEMORY[0x1DA7310D0](v70._countAndFlagsBits);

        v456[31] = (*((*v544 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v71);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to singleTap ", 0x1AuLL, v110 & 1);
        v111 = v72._object;
        MEMORY[0x1DA7310D0](v72._countAndFlagsBits);

        v114 = v457;
        v113 = v458;

        outlined destroy of DefaultStringInterpolation(v112);
        MEMORY[0x1DA7309B0](v114, v113);
        v115 = v73;
        v117 = 2;
        dispatch thunk of Log.error(_:function:file:line:)();

        HeadphoneDevice.endCallGesture.setter();
      }
    }

    else if (CBPeerCallManagementCapability.rawValue.getter([v444 muteControlCapability]))
    {
      v74 = (*((*v544 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
      v105 = &v472;
      v472 = v74;
      v103 = &v471;
      v471 = 0;
      v104 = type metadata accessor for CBPeerCallConfig();
      v106 = lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig();
      v108 = == infix<A>(_:_:)();
      v107 = v544;
      MEMORY[0x1E69E5928](v544);
      MEMORY[0x1E69E5928](v107);
      if (v108)
      {
        v102 = 1;
      }

      else
      {
        v470 = (*((*v107 & *MEMORY[0x1E69E7D40]) + 0x7B0))();
        v469 = 1;
        v102 = == infix<A>(_:_:)();
      }

      v101 = v102;
      MEMORY[0x1E69E5920](v107);
      v75 = MEMORY[0x1E69E5928](v107);
      if (v101)
      {
        v100 = 1;
      }

      else
      {
        v468 = (*((*v107 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v75);
        v467 = 0;
        v100 = == infix<A>(_:_:)();
      }

      v99 = v100;
      v76 = MEMORY[0x1E69E5920](v107);
      if (v99)
      {
        v98 = 1;
      }

      else
      {
        v466 = (*((*v107 & *MEMORY[0x1E69E7D40]) + 0x7E0))(v76);
        v465 = 1;
        v98 = == infix<A>(_:_:)();
      }

      v97 = v98;
      MEMORY[0x1E69E5920](v107);
      if (v97)
      {
        type metadata accessor for Log();
        v95 = static Log.shared.getter();
        v77 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        v91 = &v463;
        v463 = v77;
        v464 = v78;
        v89 = 1;
        v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: read endCallConfig as ", 0x28uLL, 1);
        v87[2] = v79._object;
        MEMORY[0x1DA7310D0](v79._countAndFlagsBits);

        v81 = *v544;
        v88 = MEMORY[0x1E69E7D40];
        v462[2] = (*((v81 & *MEMORY[0x1E69E7D40]) + 0x7B0))(v80);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to doubleTap. Read muteControlConfig as ", 0x35uLL, v89 & 1);
        v87[3] = v82._object;
        MEMORY[0x1DA7310D0](v82._countAndFlagsBits);

        v462[1] = (*((*v544 & *v88) + 0x7E0))(v83);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", defaulting to singleTap ", 0x1AuLL, v89 & 1);
        v90 = v84._object;
        MEMORY[0x1DA7310D0](v84._countAndFlagsBits);

        v93 = v463;
        v92 = v464;

        outlined destroy of DefaultStringInterpolation(v91);
        MEMORY[0x1DA7309B0](v93, v92);
        v94 = v85;
        v96 = 2;
        dispatch thunk of Log.error(_:function:file:line:)();

        HeadphoneDevice.muteControlGesture.setter();
        HeadphoneDevice.endCallGesture.setter();
      }
    }

    v87[1] = v544;
    HeadphoneDevice.getFirmwareUpgradeParticipation()();
    HeadphoneDevice.firmwareUpgradeParticipation.setter();
    HeadphoneDevice.getFirmwareLoggingEnabled()();
    outlined consume of Data._Representation(v127, v126);
    MEMORY[0x1E69E5920](v442);
  }

  v87[0] = v544;
  MEMORY[0x1E69E5928](v544);
  MEMORY[0x1E69E5920](v444);
  MEMORY[0x1E69E5920](v544);
  return v87[0];
}

id @nonobjc CBProductInfo.__allocating_init(productID:)(unsigned int a1)
{
  v1 = [swift_getObjCClassFromMetadata() productInfoWithProductID_];

  return v1;
}

uint64_t HeadphoneDevice.init(cbDevice:delegate:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  v6 = (*(ObjectType + 2904))(a1);
  MEMORY[0x1E69E5928](v6);
  swift_getObjectType();
  v2 = *((*v7 & *MEMORY[0x1E69E7D40]) + 0x30);
  v3 = *((*v7 & *MEMORY[0x1E69E7D40]) + 0x34);
  swift_deallocPartialClassInstance();
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v6;
}

uint64_t *HeadphoneDevice.init(_aaDevice:cbDevice:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v249 = a3;
  v318 = a2;
  v255 = a1;
  ObjectType = swift_getObjectType();
  v308 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v238 = 0;
  v332 = 0;
  v331 = 0;
  v326 = 0;
  v239 = type metadata accessor for Logger();
  v240 = *(v239 - 8);
  v241 = v240;
  v243 = *(v240 + 64);
  v4 = MEMORY[0x1EEE9AC00](v255);
  v245 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  v242 = &v112 - v245;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v244 = &v112 - v245;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v246 = &v112 - v245;
  v345 = v6;
  v344 = v7;
  v343 = v8;
  v346 = v3;
  v9 = swift_getObjectType();
  v10 = v318;
  v11 = (*(v9 + 2904))(v318);
  v300 = v11;
  v247 = v346;
  v12 = v11;
  v346 = v11;
  swift_getObjectType();
  v13 = *v247;
  v301 = MEMORY[0x1E69E7D40];
  v14 = v13 & *MEMORY[0x1E69E7D40];
  v15 = *(v14 + 0x30);
  v16 = *(v14 + 0x34);
  v17 = *(v14 + 52);
  swift_deallocPartialClassInstance();
  swift_unknownObjectRetain();
  v248 = v11 + OBJC_IVAR___HPMHeadphoneDevice_deviceDelegate;
  v251 = 33;
  v250 = &v342;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v18 = v255;
  v252 = (v11 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  v253 = &v341;
  swift_beginAccess();
  v19 = *v252;
  *v252 = v255;

  v20 = swift_endAccess();
  v254 = (*((*v11 & *v301) + 0xA80))(v20);
  (*(*v254 + 1960))(v255);

  v21 = HeadphoneDevice.updateBatteryInfo(aaDevice:cbDevice:)(v255, v318);
  v260 = (*((*v300 & *v301) + 0xA50))(v21);
  v256 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v22 = v256;
  v23 = v256;
  v24 = (*((*v22 & *v301) + 0x150))(v23);
  v25 = v260;
  v257 = v24;

  v259 = [v257 validAudiograms];
  v303 = type metadata accessor for HKAudiogramSample();
  v258 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v25 & *v301) + 0x5B8))(v258);
  v26 = v300;

  v265 = (*((*v26 & *v301) + 0xA50))();
  v261 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v27 = v261;
  v28 = v261;
  v29 = (*((*v27 & *v301) + 0x150))(v28);
  v30 = v265;
  v262 = v29;

  v264 = [v262 invalidAudiograms];
  v263 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v30 & *v301) + 0x5E8))(v263);
  type metadata accessor for Log();
  v317 = static Log.shared.getter();
  v339 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v340 = v31;
  v314 = 34;
  v309 = 1;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager initWithCBDevice:", 0x22uLL, 1);
  object = v32._object;
  v311 = &v339;
  MEMORY[0x1DA7310D0](v32._countAndFlagsBits);

  v338[2] = v346;
  lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v291 = " ";
  v290 = v309;
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", v290, v290);
  v267 = v33._object;
  MEMORY[0x1DA7310D0](v33._countAndFlagsBits);

  v278 = "%p";
  v315 = 2;
  v279 = 2;
  v271 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%p", 2uLL, v309);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v270 = _allocateUninitializedArray<A>(_:)();
  v269 = v34;
  v35 = v300;
  v269[3] = ObjectType;
  v36 = lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
  v37 = v269;
  v38 = v300;
  v269[4] = v36;
  *v37 = v38;
  _finalizeUninitializedArray<A>(_:)();
  v272 = String.init(format:_:)();
  v273 = v39;

  v338[0] = v272;
  v338[1] = v273;
  v286 = MEMORY[0x1E69E6158];
  v287 = MEMORY[0x1E69E61C8];
  v288 = MEMORY[0x1E69E61C0];
  v274 = v338;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v274);
  v294 = 10;
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" aaDevice:", 0xAuLL, v309);
  v275 = v40._object;
  MEMORY[0x1DA7310D0](v40._countAndFlagsBits);
  v41 = v300;

  v276 = (*((*v41 & *v301) + 0xA80))(v42);

  v337[2] = v276;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" cb:", 4uLL, v309);
  v277 = v43._object;
  MEMORY[0x1DA7310D0](v43._countAndFlagsBits);

  v283 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v278, v279, v309);
  v282 = _allocateUninitializedArray<A>(_:)();
  v280 = v44;
  v45 = v318;
  v293 = type metadata accessor for CBDevice();
  v280[3] = v293;
  v46 = lazy protocol witness table accessor for type CBDevice and conformance NSObject();
  v47 = v280;
  v48 = v318;
  v280[4] = v46;
  *v47 = v48;
  _finalizeUninitializedArray<A>(_:)();
  v284 = String.init(format:_:)();
  v285 = v49;

  v337[0] = v284;
  v337[1] = v285;
  v289 = v337;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v289);
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v291, v290, v309);
  v292 = v50._object;
  MEMORY[0x1DA7310D0](v50._countAndFlagsBits);

  v336[3] = v318;
  lazy protocol witness table accessor for type CBDevice and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", validAG:", v294, v309);
  v295 = v51._object;
  MEMORY[0x1DA7310D0](v51._countAndFlagsBits);
  v52 = v300;

  v296 = (*((*v52 & *v301) + 0xA50))(v53);
  v297 = (*((*v296 & *v301) + 0x5B0))();

  v298 = MEMORY[0x1DA730B40](v297, v303);

  v336[2] = v298;
  v306 = MEMORY[0x1E69E6530];
  v307 = MEMORY[0x1E69E6590];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" invalidAG:", 0xBuLL, v309);
  v299 = v54._object;
  MEMORY[0x1DA7310D0](v54._countAndFlagsBits);
  v55 = v300;

  v57 = (*((*v55 & *v301) + 0xA50))(v56);
  v302 = v57;

  v304 = (*((*v57 & *v301) + 0x5E0))();
  v305 = MEMORY[0x1DA730B40](v304, v303);

  v336[1] = v305;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v308, v309);
  v310 = v58._object;
  MEMORY[0x1DA7310D0](v58._countAndFlagsBits);

  v313 = v339;
  v312 = v340;

  outlined destroy of DefaultStringInterpolation(v311);
  MEMORY[0x1DA7309B0](v313, v312);
  v316 = v59;
  v111 = 360;
  dispatch thunk of Log.notice(_:function:file:line:)();

  v319 = [v318 identifier];
  if (v319)
  {
    v237 = v319;
    v232 = v319;
    v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v234 = v60;

    v235 = v233;
    v236 = v234;
  }

  else
  {
    v235 = 0;
    v236 = 0;
  }

  v230 = v236;
  v231 = v235;
  if (v236)
  {
    v228 = v231;
    v229 = v230;
    v218 = v230;
    v217 = v231;
    v331 = v231;
    v332 = v230;
    v216 = *Headphone_Manager.shared.unsafeMutableAddressor();
    v63 = v216;
    v64 = v216;
    v221 = (*((*v63 & *MEMORY[0x1E69E7D40]) + 0x150))(v64);

    v219 = MEMORY[0x1DA730940](v217, v218);

    v222 = [v221 getHearingModeDeviceRecordForIdentifier_];
    v220 = v222;

    if (v222)
    {
      v215 = v220;
      v181 = v220;
      v326 = v220;
      v180 = *Headphone_Manager.shared.unsafeMutableAddressor();
      v67 = v180;
      v68 = v180;
      v175 = v346;
      v174 = v346;
      v69 = v346;
      v176 = *&v175[OBJC_IVAR___HPMHeadphoneDevice_btAddress];
      v177 = *&v175[OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8];

      v70 = v181;
      v325[6] = v181;
      v325[4] = v176;
      v325[5] = v177;
      v71 = *((*v67 & *MEMORY[0x1E69E7D40]) + 0x1A8);
      v178 = v325;
      v179 = v71();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
      Dictionary.subscript.setter();
      v72 = v242;
      v179(v178, 0);

      v73 = Logger.shared.unsafeMutableAddressor();
      (*(v241 + 16))(v72, v73, v239);
      v184 = 32;
      v194 = 32;
      v195 = 7;
      v74 = swift_allocObject();
      v75 = v181;
      v187 = v74;
      *(v74 + 16) = implicit closure #1 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:);
      *(v74 + 24) = 0;
      v76 = v75;
      v196 = swift_allocObject();
      *(v196 + 16) = v181;
      v209 = Logger.logObject.getter();
      v182 = v209;
      v208 = static os_log_type_t.default.getter();
      v183 = v208;
      v190 = 17;
      v199 = swift_allocObject();
      v185 = v199;
      *(v199 + 16) = v184;
      v200 = swift_allocObject();
      v186 = v200;
      v192 = 8;
      *(v200 + 16) = 8;
      v77 = swift_allocObject();
      v78 = v187;
      v188 = v77;
      *(v77 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v188;
      v201 = v79;
      v189 = v79;
      *(v79 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_2;
      *(v79 + 24) = v80;
      v202 = swift_allocObject();
      v191 = v202;
      *(v202 + 16) = 64;
      v203 = swift_allocObject();
      v193 = v203;
      *(v203 + 16) = v192;
      v81 = swift_allocObject();
      v82 = v196;
      v197 = v81;
      *(v81 + 16) = partial apply for implicit closure #2 in HeadphoneDevice.init(_aaDevice:cbDevice:delegate:);
      *(v81 + 24) = v82;
      v83 = swift_allocObject();
      v84 = v197;
      v206 = v83;
      v198 = v83;
      *(v83 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_0;
      *(v83 + 24) = v84;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v204 = _allocateUninitializedArray<A>(_:)();
      v205 = v85;

      v86 = v199;
      v87 = v205;
      *v205 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v87[1] = v86;

      v88 = v200;
      v89 = v205;
      v205[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v89[3] = v88;

      v90 = v201;
      v91 = v205;
      v205[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v91[5] = v90;

      v92 = v202;
      v93 = v205;
      v205[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[7] = v92;

      v94 = v203;
      v95 = v205;
      v205[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v95[9] = v94;

      v96 = v205;
      v97 = v206;
      v205[10] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
      v96[11] = v97;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v209, v208))
      {
        v99 = v238;
        v167 = static UnsafeMutablePointer.allocate(capacity:)();
        v163 = v167;
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v165 = 1;
        v168 = createStorage<A>(capacity:type:)(1);
        v166 = v168;
        v169 = createStorage<A>(capacity:type:)(v165);
        v324 = v167;
        v323 = v168;
        v322 = v169;
        v170 = 2;
        v171 = &v324;
        serialize(_:at:)(2, &v324);
        serialize(_:at:)(v170, v171);
        v320 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
        v321 = v185;
        closure #1 in osLogInternal(_:log:type:)(&v320, v171, &v323, &v322);
        v172 = v99;
        v173 = v99;
        if (v99)
        {
          v161 = 0;

          __break(1u);
        }

        else
        {
          v320 = closure #1 in OSLogArguments.append(_:)partial apply;
          v321 = v186;
          closure #1 in osLogInternal(_:log:type:)(&v320, &v324, &v323, &v322);
          v159 = 0;
          v160 = 0;
          v320 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
          v321 = v189;
          closure #1 in osLogInternal(_:log:type:)(&v320, &v324, &v323, &v322);
          v157 = 0;
          v158 = 0;
          v320 = closure #1 in OSLogArguments.append(_:)partial apply;
          v321 = v191;
          closure #1 in osLogInternal(_:log:type:)(&v320, &v324, &v323, &v322);
          v155 = 0;
          v156 = 0;
          v320 = closure #1 in OSLogArguments.append(_:)partial apply;
          v321 = v193;
          closure #1 in osLogInternal(_:log:type:)(&v320, &v324, &v323, &v322);
          v153 = 0;
          v154 = 0;
          v320 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
          v321 = v198;
          closure #1 in osLogInternal(_:log:type:)(&v320, &v324, &v323, &v322);
          v151 = 0;
          v152 = 0;
          _os_log_impl(&dword_1D93D0000, v182, v183, "HeadphoneManager: HeadphoneDevice.init syncFetch Record %s %@", v163, 0x16u);
          v150 = 1;
          destroyStorage<A>(_:count:)(v166, 1, v164);
          destroyStorage<A>(_:count:)(v169, v150, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v163, MEMORY[0x1E69E7508]);

          v162 = v151;
        }
      }

      else
      {
        v100 = v238;

        v162 = v100;
      }

      v101 = v174;
      v148 = v162;

      v102 = (*(v241 + 8))(v242, v239);
      v103 = *v101;
      v146 = MEMORY[0x1E69E7D40];
      v104 = (*((v103 & *MEMORY[0x1E69E7D40]) + 0xA50))(v102);
      v147 = v104;

      (*((*v104 & *v146) + 0x768))(v181);

      v149 = v148;
    }

    else
    {
      v65 = v244;
      v66 = Logger.shared.unsafeMutableAddressor();
      (*(v241 + 16))(v65, v66, v239);
      v213 = Logger.logObject.getter();
      v210 = v213;
      v212 = static os_log_type_t.error.getter();
      v211 = v212;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v214 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v213, v212))
      {
        v105 = v238;
        v137 = static UnsafeMutablePointer.allocate(capacity:)();
        v133 = v137;
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v135 = 0;
        v138 = createStorage<A>(capacity:type:)(0);
        v136 = v138;
        v139 = createStorage<A>(capacity:type:)(v135);
        v330 = v137;
        v329 = v138;
        v328 = v139;
        v140 = 0;
        v141 = &v330;
        serialize(_:at:)(0, &v330);
        serialize(_:at:)(v140, v141);
        v327 = v214;
        v142 = &v112;
        MEMORY[0x1EEE9AC00](&v112);
        v143 = &v112 - 6;
        *(&v112 - 4) = v106;
        *(&v112 - 3) = &v329;
        v111 = &v328;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v145 = v105;
        if (v105)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v210, v211, "HeadphoneManager: HeadphoneDevice.init: sync fetch returned nil", v133, 2u);
          v131 = 0;
          destroyStorage<A>(_:count:)(v136, 0, v134);
          destroyStorage<A>(_:count:)(v139, v131, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v133, MEMORY[0x1E69E7508]);

          v132 = v145;
        }
      }

      else
      {

        v132 = v238;
      }

      v130 = v132;

      (*(v241 + 8))(v244, v239);

      v149 = v130;
    }
  }

  else
  {
    v61 = v246;
    v62 = Logger.shared.unsafeMutableAddressor();
    (*(v241 + 16))(v61, v62, v239);
    v226 = Logger.logObject.getter();
    v223 = v226;
    v225 = static os_log_type_t.error.getter();
    v224 = v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v227 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v226, v225))
    {
      v107 = v238;
      v121 = static UnsafeMutablePointer.allocate(capacity:)();
      v117 = v121;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v119 = 0;
      v122 = createStorage<A>(capacity:type:)(0);
      v120 = v122;
      v123 = createStorage<A>(capacity:type:)(v119);
      v336[0] = v121;
      v335 = v122;
      v334 = v123;
      v124 = 0;
      v125 = v336;
      serialize(_:at:)(0, v336);
      serialize(_:at:)(v124, v125);
      v333 = v227;
      v126 = &v112;
      MEMORY[0x1EEE9AC00](&v112);
      v127 = &v112 - 6;
      *(&v112 - 4) = v108;
      *(&v112 - 3) = &v335;
      v111 = &v334;
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v129 = v107;
      if (v107)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v223, v224, "HeadphoneManager: HeadphoneDevice.init: uuidString lookup for HR Fetch failed!", v117, 2u);
        v115 = 0;
        destroyStorage<A>(_:count:)(v120, 0, v118);
        destroyStorage<A>(_:count:)(v123, v115, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v117, MEMORY[0x1E69E7508]);

        v116 = v129;
      }
    }

    else
    {

      v116 = v238;
    }

    v114 = v116;

    (*(v241 + 8))(v246, v239);
    v149 = v114;
  }

  v113 = v346;
  v109 = v346;
  swift_unknownObjectRelease();

  return v113;
}