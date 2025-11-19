uint64_t Headphone_Manager.deviceConnectionListener.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for Headphone_Manager.deviceConnectionListener : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.deviceConnectionListener : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of CBDeviceReporting?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1D0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.deviceConnectionListener.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___HPMHeadphoneManager_deviceConnectionListener;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return Headphone_Manager.deviceConnectionListener.modify;
}

void Headphone_Manager.deviceConnectionListener.modify(uint64_t **a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = v7[4] + v7[5];
    v5 = v7[3];
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    outlined destroy of CBDeviceReporting?(v7 + 3);
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

uint64_t Headphone_Manager.connectedHeadphones.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.connectedHeadphones.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.connectedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.connectedHeadphones : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.connectedHeadphones.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.connectedHeadphones.modify;
}

void Headphone_Manager.connectedHeadphones.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of Headphone_Manager._connectedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$connectedHeadphones : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$connectedHeadphones : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x200))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$connectedHeadphones.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$connectedHeadphones.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*Headphone_Manager.$connectedHeadphones.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  Headphone_Manager.$connectedHeadphones.getter();
  return Headphone_Manager.$connectedHeadphones.modify;
}

void Headphone_Manager.$connectedHeadphones.modify(uint64_t **a1, char a2)
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
    Headphone_Manager.$connectedHeadphones.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    Headphone_Manager.$connectedHeadphones.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t Headphone_Manager._connectedHeadphones.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._connectedHeadphones.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__connectedHeadphones;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t Headphone_Manager.pairedHeadphones.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t Headphone_Manager.pairedHeadphones.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for Headphone_Manager.pairedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x210))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.pairedHeadphones : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x218))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*Headphone_Manager.pairedHeadphones.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return Headphone_Manager.pairedHeadphones.modify;
}

void Headphone_Manager.pairedHeadphones.modify(uint64_t *a1, char a2)
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

uint64_t variable initialization expression of Headphone_Manager._pairedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for Headphone_Manager.$pairedHeadphones : Headphone_Manager@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for Headphone_Manager.$pairedHeadphones : Headphone_Manager(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x230))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t Headphone_Manager.$pairedHeadphones.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Headphone_Manager.$pairedHeadphones.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*Headphone_Manager.$pairedHeadphones.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMd, &_s7Combine9PublishedV9PublisherVySDySS16HeadphoneManager0D6DeviceCG_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  Headphone_Manager.$pairedHeadphones.getter();
  return Headphone_Manager.$pairedHeadphones.modify;
}

void Headphone_Manager.$pairedHeadphones.modify(uint64_t **a1, char a2)
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
    Headphone_Manager.$pairedHeadphones.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    Headphone_Manager.$pairedHeadphones.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t Headphone_Manager._pairedHeadphones.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t Headphone_Manager._pairedHeadphones.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMd, &_s7Combine9PublishedVySDySS16HeadphoneManager0C6DeviceCGGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneManager__pairedHeadphones;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t variable initialization expression of Headphone_Manager.pendingConnectedHeadphones()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for HeadphoneDevice();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t Headphone_Manager.pendingConnectedHeadphones.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t Headphone_Manager.pendingConnectedHeadphones.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___HPMHeadphoneManager_pendingConnectedHeadphones);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t key path getter for Headphone_Manager.pendingConnectedHeadphones : Headphone_Manager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for Headphone_Manager.pendingConnectedHeadphones : Headphone_Manager(uint64_t *a1, void *a2)
{
  outlined init with copy of [String : HeadphoneDevice](a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x248))(v5);
  return MEMORY[0x1E69E5920](v4);
}

void closure #1 in Headphone_Manager.init()(unsigned int a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v52 = 0;
  v42 = 0;
  v51 = 0;
  v30 = 0;
  v39 = type metadata accessor for Logger();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v2 = *(v34 + 64);
  v3 = MEMORY[0x1EEE9AC00](v31);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  v52 = v3;
  v37 = v6 + 16;
  v51 = v6 + 16;
  v7 = Logger.shared.unsafeMutableAddressor();
  (*(v38 + 16))(v5, v7, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.default.getter();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v8 = v30;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = 0;
    v22 = createStorage<A>(capacity:type:)(0);
    v20 = v22;
    v23 = createStorage<A>(capacity:type:)(v19);
    v49 = v21;
    v48 = v22;
    v47 = v23;
    v24 = 0;
    v25 = &v49;
    serialize(_:at:)(0, &v49);
    serialize(_:at:)(v24, v25);
    v46 = v45;
    v26 = &v13;
    MEMORY[0x1EEE9AC00](&v13);
    v27 = &v13 - 6;
    *(&v13 - 4) = v9;
    *(&v13 - 3) = &v48;
    *(&v13 - 2) = &v47;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v29 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v40, v41, "HeadphoneManager:Connection: audioaccessoryd started", v17, 2u);
      v15 = 0;
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v23, v15, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v17, MEMORY[0x1E69E7508]);

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  (*(v35 + 8))(v36, v33);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v14 = Strong;
    v11 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v12 = swift_endAccess();
    (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x258))(v12);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

id Headphone_Manager.__deallocating_deinit()
{
  v11 = 0;
  v2 = &v0[OBJC_IVAR___HPMHeadphoneManager_deviceManager];
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  [v3 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v3);
  v4 = &v0[OBJC_IVAR___HPMHeadphoneManager_cbDiscovery];
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  swift_endAccess();
  [v5 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v5);
  v6 = &v0[OBJC_IVAR___HPMHeadphoneManager_controller];
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  [v7 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v7);
  v8 = &v0[OBJC_IVAR___HPMHeadphoneManager_connection];
  swift_beginAccess();
  v9 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  [v9 0x1FAC3AE78];
  MEMORY[0x1E69E5920](v9);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for Headphone_Manager();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall Headphone_Manager.resetDeviceManager()()
{
  v5 = MEMORY[0x1E69E7D40];
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x150))();
  [v3 0x1FAC3AE78];
  v1 = MEMORY[0x1E69E5920](v3);
  v4 = (*((*v6 & *v5) + 0x138))(v1);
  [v4 0x1FAC3AE78];
  v2 = MEMORY[0x1E69E5920](v4);
  (*((*v6 & *v5) + 0x260))(v2);
  Headphone_Manager.configHearingModeClient()();
}

Swift::Void __swiftcall Headphone_Manager.configDeviceManager()()
{
  v100 = 0;
  v145 = 0;
  v89 = 0;
  v97 = type metadata accessor for Logger();
  v91 = v97;
  v92 = *(v97 - 8);
  v96 = v92;
  v93 = v92;
  v94 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v0 = &v33 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v0;
  v145 = v1;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v96 + 16))(v0, v2, v97);
  v102 = Logger.logObject.getter();
  v98 = v102;
  v101 = static os_log_type_t.default.getter();
  v99 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v103 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v102, v101))
  {
    v3 = v89;
    v80 = static UnsafeMutablePointer.allocate(capacity:)();
    v76 = v80;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v78 = 0;
    v81 = createStorage<A>(capacity:type:)(0);
    v79 = v81;
    v82 = createStorage<A>(capacity:type:)(v78);
    v107 = v80;
    v106 = v81;
    v105 = v82;
    v83 = 0;
    v84 = &v107;
    serialize(_:at:)(0, &v107);
    serialize(_:at:)(v83, v84);
    v104 = v103;
    v85 = &v33;
    MEMORY[0x1EEE9AC00](&v33);
    v86 = &v33 - 6;
    *(&v33 - 4) = v4;
    *(&v33 - 3) = &v106;
    *(&v33 - 2) = &v105;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v88 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v98, v99, "HeadphoneManager:Connection: Starting Device Manager", v76, 2u);
      v74 = 0;
      destroyStorage<A>(_:count:)(v79, 0, v77);
      destroyStorage<A>(_:count:)(v82, v74, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v76, MEMORY[0x1E69E7508]);

      v75 = v88;
    }
  }

  else
  {

    v75 = v89;
  }

  (*(v93 + 8))(v95, v91);
  v67 = 0;
  type metadata accessor for AADeviceManager();
  v5 = AADeviceManager.__allocating_init()();
  v6 = Headphone_Manager.deviceManager.setter(v5);
  v7 = *v90;
  v71 = MEMORY[0x1E69E7D40];
  v8 = (*((v7 & *MEMORY[0x1E69E7D40]) + 0x138))(v6);
  v9 = v90;
  v66 = v8;
  v10 = v90;
  v11 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v143 = partial apply for closure #1 in Headphone_Manager.configDeviceManager();
  v144 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v139 = 1107296256;
  v140 = 0;
  v141 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ();
  v142 = &block_descriptor_20;
  v65 = _Block_copy(&aBlock);

  [v66 setDeviceFoundHandler_];
  _Block_release(v65);

  v68 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  v70 = &v137;
  swift_beginAccess();
  v69 = *v68;
  v13 = v69;
  v14 = swift_endAccess();
  v72 = (*((*v9 & *v71) + 0x138))(v14);
  v73 = [v72 deviceFoundHandler];
  if (v73)
  {
    v64 = v73;
    v61 = v73;
    v15 = swift_allocObject();
    *(v15 + 16) = v61;
    v62 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
    v63 = v15;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v16 = *v69;
  v58 = MEMORY[0x1E69E7D40];
  (*((v16 & *MEMORY[0x1E69E7D40]) + 0x100))(v62, v63);
  v17 = v90;

  v18 = (*((*v17 & *v58) + 0x138))();
  v19 = v90;
  v54 = v18;
  v20 = v90;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v135 = partial apply for closure #2 in Headphone_Manager.configDeviceManager();
  v136 = v21;
  v130 = MEMORY[0x1E69E9820];
  v131 = 1107296256;
  v132 = 0;
  v133 = thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ();
  v134 = &block_descriptor_26;
  v53 = _Block_copy(&v130);

  [v54 setDeviceLostHandler_];
  _Block_release(v53);

  v55 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  v57 = &v129;
  swift_beginAccess();
  v56 = *v55;
  v22 = v56;
  v23 = swift_endAccess();
  v59 = (*((*v19 & *v58) + 0x138))(v23);
  v60 = [v59 deviceLostHandler];
  if (v60)
  {
    v52 = v60;
    v49 = v60;
    v24 = swift_allocObject();
    *(v24 + 16) = v49;
    v50 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ();
    v51 = v24;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v25 = *v56;
  v44 = MEMORY[0x1E69E7D40];
  (*((v25 & *MEMORY[0x1E69E7D40]) + 0x118))(v50, v51);
  v26 = v90;

  v27 = (*((*v26 & *v44) + 0x138))();
  v28 = v90;
  v36 = v27;
  v39 = &unk_1F54DF478;
  v37 = 24;
  v38 = 7;
  v34 = swift_allocObject();
  v33 = v34 + 16;
  v29 = v28;
  swift_unknownObjectWeakInit();

  v127 = partial apply for closure #3 in Headphone_Manager.configDeviceManager();
  v128 = v34;
  v122 = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v123 = 1107296256;
  v46 = 0;
  v124 = 0;
  v125 = thunk for @escaping @callee_guaranteed () -> ();
  v126 = &block_descriptor_30;
  v35 = _Block_copy(&v122);

  [v36 setInterruptionHandler_];
  _Block_release(v35);

  v30 = (*((*v28 & *v44) + 0x138))();
  v31 = v90;
  v43 = v30;
  v41 = swift_allocObject();
  v40 = v41 + 16;
  v32 = v31;
  swift_unknownObjectWeakInit();

  v120 = partial apply for closure #4 in Headphone_Manager.configDeviceManager();
  v121 = v41;
  v115 = MEMORY[0x1E69E9820];
  v116 = v45;
  v117 = v46;
  v118 = thunk for @escaping @callee_guaranteed () -> ();
  v119 = &block_descriptor_34;
  v42 = _Block_copy(&v115);

  [v43 setInvalidationHandler_];
  _Block_release(v42);

  v48 = (*((*v31 & *v44) + 0x138))();
  v113 = closure #5 in Headphone_Manager.configDeviceManager();
  v114 = 0;
  v108 = MEMORY[0x1E69E9820];
  v109 = v45;
  v110 = v46;
  v111 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v112 = &block_descriptor_37;
  v47 = _Block_copy(&v108);
  [v48 activateWithCompletion_];
  _Block_release(v47);
}

uint64_t closure #1 in Headphone_Manager.configDeviceManager()(void *a1, void *a2)
{
  v384 = a2;
  v381 = a1;
  v382 = 0;
  v455 = 0;
  v454 = 0;
  v383 = 0;
  v448 = 0;
  v443 = 0;
  v442 = 0;
  v440 = 0;
  v439 = 0;
  v434 = 0;
  v433 = 0;
  v423 = 0;
  v411 = 0;
  v385 = type metadata accessor for Logger();
  v386 = *(v385 - 8);
  v387 = v386;
  v391 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v385 - 8);
  v393 = (v391 + 15) & 0xFFFFFFFFFFFFFFF0;
  v388 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v389 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v390 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v392 = &v133 - v393;
  MEMORY[0x1EEE9AC00](&v133 - v393);
  v394 = &v133 - v393;
  v455 = a1;
  v454 = v3;
  v395 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(a1);
  if (v395)
  {
    v380 = v395;
    v18 = v392;
    v341 = v395;
    v448 = v395;
    v19 = Logger.shared.unsafeMutableAddressor();
    v339 = *(v387 + 16);
    v340 = (v387 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v339(v18, v19, v385);
    v20 = v341;
    v349 = 7;
    v350 = swift_allocObject();
    *(v350 + 16) = v341;
    v361 = Logger.logObject.getter();
    v342 = v361;
    v360 = static os_log_type_t.default.getter();
    v343 = v360;
    v344 = 17;
    v354 = swift_allocObject();
    v345 = v354;
    v346 = 32;
    *(v354 + 16) = 32;
    v21 = swift_allocObject();
    v22 = v346;
    v355 = v21;
    v347 = v21;
    *(v21 + 16) = 8;
    v348 = v22;
    v23 = swift_allocObject();
    v24 = v350;
    v351 = v23;
    *(v23 + 16) = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.configDeviceManager();
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v351;
    v358 = v25;
    v352 = v25;
    *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v25 + 24) = v26;
    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v353 = v359;
    v356 = _allocateUninitializedArray<A>(_:)();
    v357 = v27;

    v28 = v354;
    v29 = v357;
    *v357 = closure #1 in OSLogArguments.append(_:)partial apply;
    v29[1] = v28;

    v30 = v355;
    v31 = v357;
    v357[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v31[3] = v30;

    v32 = v357;
    v33 = v358;
    v357[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[5] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v361, v360))
    {
      v35 = v383;
      v332 = static UnsafeMutablePointer.allocate(capacity:)();
      v329 = v332;
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v333 = createStorage<A>(capacity:type:)(0);
      v331 = v333;
      v335 = 1;
      v334 = createStorage<A>(capacity:type:)(1);
      v400 = v332;
      v399 = v333;
      v398 = v334;
      v336 = &v400;
      serialize(_:at:)(2, &v400);
      serialize(_:at:)(v335, v336);
      v396 = closure #1 in OSLogArguments.append(_:)partial apply;
      v397 = v345;
      closure #1 in osLogInternal(_:log:type:)(&v396, v336, &v399, &v398);
      v337 = v35;
      v338 = v35;
      if (v35)
      {
        v327 = 0;

        __break(1u);
      }

      else
      {
        v396 = closure #1 in OSLogArguments.append(_:)partial apply;
        v397 = v347;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v400, &v399, &v398);
        v325 = 0;
        v326 = 0;
        v396 = closure #1 in OSLogArguments.append(_:)partial apply;
        v397 = v352;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v400, &v399, &v398);
        v323 = 0;
        v324 = 0;
        _os_log_impl(&dword_1D93D0000, v342, v343, "HeadphoneManager:Connection: AAF Device Found: %s", v329, 0xCu);
        destroyStorage<A>(_:count:)(v331, 0, v330);
        destroyStorage<A>(_:count:)(v334, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v329, MEMORY[0x1E69E7508]);

        v328 = v323;
      }
    }

    else
    {
      v36 = v383;

      v328 = v36;
    }

    v319 = v328;

    v320 = *(v387 + 8);
    v321 = (v387 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v320(v392, v385);
    v322 = [v341 btAddressData];
    if (v322)
    {
      v318 = v322;
      v313 = v322;
      v314 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v315 = v37;

      v316 = v314;
      v317 = v315;
    }

    else
    {
      v316 = 0;
      v317 = 0xF000000000000000;
    }

    v311 = v317;
    v312 = v316;
    if (v317 >> 60 == 15)
    {
      v38 = v390;
      v39 = Logger.shared.unsafeMutableAddressor();
      v339(v38, v39, v385);
      v307 = Logger.logObject.getter();
      v304 = v307;
      v306 = static os_log_type_t.error.getter();
      v305 = v306;
      v308 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v307, v306))
      {
        v128 = v319;
        v157 = static UnsafeMutablePointer.allocate(capacity:)();
        v153 = v157;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v155 = 0;
        v158 = createStorage<A>(capacity:type:)(0);
        v156 = v158;
        v159 = createStorage<A>(capacity:type:)(v155);
        v447 = v157;
        v446 = v158;
        v445 = v159;
        v160 = 0;
        v161 = &v447;
        serialize(_:at:)(0, &v447);
        serialize(_:at:)(v160, v161);
        v444 = v308;
        v162 = &v133;
        MEMORY[0x1EEE9AC00](&v133);
        v163 = &v133 - 6;
        *(&v133 - 4) = v129;
        *(&v133 - 3) = &v446;
        *(&v133 - 2) = &v445;
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v165 = v128;
        if (v128)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v304, v305, "HeadphoneManager:Connection: Invalid BT Address", v153, 2u);
          v151 = 0;
          destroyStorage<A>(_:count:)(v156, 0, v154);
          destroyStorage<A>(_:count:)(v159, v151, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v153, MEMORY[0x1E69E7508]);

          v152 = v165;
        }
      }

      else
      {

        v152 = v319;
      }

      v150 = v152;

      v320(v390, v385);
      return v150;
    }

    else
    {
      v309 = v312;
      v310 = v311;
      v302 = v311;
      v303 = v312;
      v442 = v312;
      v443 = v311;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v40 = v384;
        v291 = 1;
        v297 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        v296 = _allocateUninitializedArray<A>(_:)();
        v294 = v41;
        v42 = MEMORY[0x1DA7304B0](0, v303, v302);
        v43 = v291;
        v44 = v303;
        v45 = v302;
        v46 = v294;
        v292 = MEMORY[0x1E69E7508];
        v294[3] = MEMORY[0x1E69E7508];
        v293 = MEMORY[0x1E69E7558];
        v46[4] = MEMORY[0x1E69E7558];
        *v46 = v42;
        v47 = MEMORY[0x1DA7304B0](v43, v44, v45);
        v48 = v303;
        v49 = v302;
        v50 = v293;
        v51 = v294;
        v294[8] = v292;
        v51[9] = v50;
        *(v51 + 40) = v47;
        v52 = MEMORY[0x1DA7304B0](2, v48, v49);
        v53 = v303;
        v54 = v302;
        v55 = v293;
        v56 = v294;
        v294[13] = v292;
        v56[14] = v55;
        *(v56 + 80) = v52;
        v57 = MEMORY[0x1DA7304B0](3, v53, v54);
        v58 = v303;
        v59 = v302;
        v60 = v293;
        v61 = v294;
        v294[18] = v292;
        v61[19] = v60;
        *(v61 + 120) = v57;
        v62 = MEMORY[0x1DA7304B0](4, v58, v59);
        v63 = v303;
        v64 = v302;
        v65 = v293;
        v66 = v294;
        v294[23] = v292;
        v66[24] = v65;
        *(v66 + 160) = v62;
        v67 = MEMORY[0x1DA7304B0](5, v63, v64);
        v68 = v293;
        v69 = v294;
        v294[28] = v292;
        v69[29] = v68;
        *(v69 + 200) = v67;
        _finalizeUninitializedArray<A>(_:)();
        v300 = String.init(format:_:)();
        v301 = v70;
        v298 = v300;
        v299 = v70;

        v433 = v300;
        v434 = v301;
        if ((*((*v40 & *MEMORY[0x1E69E7D40]) + 0x270))(v341))
        {
          v71 = v384;

          v288 = (*((*v71 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v72);
          v287 = v288;
          v426[0] = v298;
          v426[1] = v299;
          type metadata accessor for HeadphoneDevice();
          v289 = v426;
          MEMORY[0x1DA7308E0](&v427);
          outlined destroy of String(v289);
          v290 = v427;
          if (v427)
          {
            v286 = v290;
            v76 = v290;
            v285 = v290;
            v411 = v290;

            v77 = *v76;
            v281 = MEMORY[0x1E69E7D40];
            (*((v77 & *MEMORY[0x1E69E7D40]) + 0xB78))(v381, v341);
            v78 = v384;

            v410 = 0;
            v79 = *((*v78 & *v281) + 0x220);
            v269 = &v409;
            v270 = v79();
            v408[0] = v298;
            v408[1] = v299;
            v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            v267 = &v407;
            v271 = v408;
            v80 = Dictionary.subscript.modify();
            v81 = v384;
            v268 = v80;
            v266 = v82;
            v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
            v274 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
            ==? infix<A>(_:_:)(v266, &v410, v273, v274);
            v282 = 0;
            v268(v267);
            v270(v269, v282);
            outlined destroy of String(v271);

            v83 = v285;
            v406 = v285;
            v84 = *((*v81 & *v281) + 0x1F0);
            v277 = &v405;
            v278 = v84();
            v404[0] = v298;
            v404[1] = v299;
            v275 = &v403;
            v279 = v404;
            v85 = Dictionary.subscript.modify();
            v86 = v285;
            v276 = v85;
            v280 = &v406;
            ==? infix<A>(_:_:)(v87, &v406, v273, v274);
            v276(v275, v282);
            v278(v277, v282);
            outlined destroy of String(v279);
            outlined destroy of HeadphoneDevice?(v280);
            v402 = 1;
            v88 = *((*v86 & *v281) + 0x3A0);
            v283 = &v401;
            v284 = v88();
            ==? infix<A>(_:_:)(v89, &v402, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
            v284(v283, v282);
          }

          else
          {

            v424 = closure #1 in closure #1 in Headphone_Manager.configDeviceManager()(v384, v298, v299, v381, v341);
            v73 = v381;
            v74 = v341;
            v75 = v384;
            if (v424)
            {
              v425 = v424;
            }

            else
            {
              v90 = v384;
              v265 = [v381 headphoneDeviceWithCbDevice:v341 withDelegate:v384];
              swift_unknownObjectRelease();
              v425 = v265;
              if (v424)
              {
                outlined destroy of HeadphoneDevice?(&v424);
              }
            }

            v91 = v384;

            v253 = v425;
            v244 = v425;
            v423 = v425;

            v92 = v253;
            v422 = v253;
            v93 = *v91;
            v264 = MEMORY[0x1E69E7D40];
            v94 = *((v93 & *MEMORY[0x1E69E7D40]) + 0x1F0);
            v248 = &v421;
            v249 = v94();
            v420[0] = v298;
            v420[1] = v299;
            v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            v246 = &v419;
            v250 = v420;
            v95 = Dictionary.subscript.modify();
            v96 = v384;
            v247 = v95;
            v245 = v97;
            v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
            v255 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
            v251 = &v422;
            ==? infix<A>(_:_:)(v245, &v422, v254, v255);
            v261 = 0;
            v247(v246);
            v249(v248, v261);
            outlined destroy of String(v250);
            outlined destroy of HeadphoneDevice?(v251);

            v418 = 0;
            v98 = *((*v96 & *v264) + 0x220);
            v258 = &v417;
            v259 = v98();
            v416[0] = v298;
            v416[1] = v299;
            v256 = &v415;
            v260 = v416;
            v99 = Dictionary.subscript.modify();
            v100 = v253;
            v257 = v99;
            ==? infix<A>(_:_:)(v101, &v418, v254, v255);
            v257(v256, v261);
            v259(v258, v261);
            outlined destroy of String(v260);
            v414 = 1;
            v102 = *((*v100 & *v264) + 0x3A0);
            v262 = &v413;
            v103 = v102();
            v104 = v384;
            v263 = v103;
            ==? infix<A>(_:_:)(v105, &v414, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
            v106 = v263(v262, v261);
            v412 = (*((*v104 & *v264) + 0xD8))(v106);
            if (v412)
            {
              v243 = v412;
              swift_unknownObjectRetain();
              outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v412);
              swift_getObjectType();
              [v243 addTopLevelEntryWithHpDevice_];
              swift_unknownObjectRelease();
            }

            else
            {
              outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v412);
            }
          }

          v242 = v319;
        }

        else
        {
          v107 = v389;
          v108 = Logger.shared.unsafeMutableAddressor();
          v339(v107, v108, v385);
          v109 = v341;
          v231 = 7;
          v232 = swift_allocObject();
          *(v232 + 16) = v341;
          v241 = Logger.logObject.getter();
          v225 = v241;
          v240 = static os_log_type_t.error.getter();
          v226 = v240;
          v227 = 17;
          v235 = swift_allocObject();
          v228 = v235;
          *(v235 + 16) = 64;
          v236 = swift_allocObject();
          v229 = v236;
          *(v236 + 16) = 8;
          v230 = 32;
          v110 = swift_allocObject();
          v111 = v232;
          v233 = v110;
          *(v110 + 16) = partial apply for implicit closure #5 in closure #1 in Headphone_Manager.configDeviceManager();
          *(v110 + 24) = v111;
          v112 = swift_allocObject();
          v113 = v233;
          v239 = v112;
          v234 = v112;
          *(v112 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
          *(v112 + 24) = v113;
          v237 = _allocateUninitializedArray<A>(_:)();
          v238 = v114;

          v115 = v235;
          v116 = v238;
          *v238 = closure #1 in OSLogArguments.append(_:)partial apply;
          v116[1] = v115;

          v117 = v236;
          v118 = v238;
          v238[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v118[3] = v117;

          v119 = v238;
          v120 = v239;
          v238[4] = closure #1 in OSLogArguments.append(_:)partial apply;
          v119[5] = v120;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v241, v240))
          {
            v121 = v319;
            v218 = static UnsafeMutablePointer.allocate(capacity:)();
            v215 = v218;
            v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v221 = 1;
            v219 = createStorage<A>(capacity:type:)(1);
            v217 = v219;
            v220 = createStorage<A>(capacity:type:)(0);
            v432 = v218;
            v431 = v219;
            v430 = v220;
            v222 = &v432;
            serialize(_:at:)(2, &v432);
            serialize(_:at:)(v221, v222);
            v428 = closure #1 in OSLogArguments.append(_:)partial apply;
            v429 = v228;
            closure #1 in osLogInternal(_:log:type:)(&v428, v222, &v431, &v430);
            v223 = v121;
            v224 = v121;
            if (v121)
            {
              v213 = 0;

              __break(1u);
            }

            else
            {
              v428 = closure #1 in OSLogArguments.append(_:)partial apply;
              v429 = v229;
              closure #1 in osLogInternal(_:log:type:)(&v428, &v432, &v431, &v430);
              v211 = 0;
              v212 = 0;
              v428 = closure #1 in OSLogArguments.append(_:)partial apply;
              v429 = v234;
              closure #1 in osLogInternal(_:log:type:)(&v428, &v432, &v431, &v430);
              v209 = 0;
              v210 = 0;
              _os_log_impl(&dword_1D93D0000, v225, v226, "HeadphoneManager:Connection: Not Supported Apple Headphone %@", v215, 0xCu);
              destroyStorage<A>(_:count:)(v217, 1, v216);
              destroyStorage<A>(_:count:)(v220, 0, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v215, MEMORY[0x1E69E7508]);

              v214 = v209;
            }
          }

          else
          {
            v122 = v319;

            v214 = v122;
          }

          v208 = v214;

          v320(v389, v385);
          v242 = v208;
        }

        v206 = v242;

        v207 = v206;
      }

      else
      {
        v123 = v388;
        v124 = Logger.shared.unsafeMutableAddressor();
        v339(v123, v124, v385);
        v204 = Logger.logObject.getter();
        v201 = v204;
        v203 = static os_log_type_t.error.getter();
        v202 = v203;
        v205 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v204, v203))
        {
          v125 = v319;
          v192 = static UnsafeMutablePointer.allocate(capacity:)();
          v188 = v192;
          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v190 = 0;
          v193 = createStorage<A>(capacity:type:)(0);
          v191 = v193;
          v194 = createStorage<A>(capacity:type:)(v190);
          v438 = v192;
          v437 = v193;
          v436 = v194;
          v195 = 0;
          v196 = &v438;
          serialize(_:at:)(0, &v438);
          serialize(_:at:)(v195, v196);
          v435 = v205;
          v197 = &v133;
          MEMORY[0x1EEE9AC00](&v133);
          v198 = &v133 - 6;
          *(&v133 - 4) = v126;
          *(&v133 - 3) = &v437;
          *(&v133 - 2) = &v436;
          v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v200 = v125;
          if (v125)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D93D0000, v201, v202, "HeadphoneManager:Connection: Invalid BT Address Length", v188, 2u);
            v186 = 0;
            destroyStorage<A>(_:count:)(v191, 0, v189);
            destroyStorage<A>(_:count:)(v194, v186, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v188, MEMORY[0x1E69E7508]);

            v187 = v200;
          }
        }

        else
        {

          v187 = v319;
        }

        v185 = v187;

        v320(v388, v385);
        v207 = v185;
      }

      v184 = v207;
      v441 = (*((*v384 & *MEMORY[0x1E69E7D40]) + 0x1C8))();
      if (v441)
      {
        v180 = v441;
        v179 = v441;
        swift_unknownObjectRetain();
        outlined destroy of CBDeviceReporting?(&v441);
        swift_getObjectType();
        v181 = [v180 deviceFoundHandler];
        if (v181)
        {
          v178 = v181;
          v175 = v181;
          v127 = swift_allocObject();
          *(v127 + 16) = v175;
          v176 = thunk for @escaping @callee_unowned @convention(block) (@unowned CBDevice) -> ()partial apply;
          v177 = v127;
        }

        else
        {
          v176 = 0;
          v177 = 0;
        }

        v174 = v177;
        v173 = v176;
        swift_unknownObjectRelease();
        v182 = v173;
        v183 = v174;
      }

      else
      {
        outlined destroy of CBDeviceReporting?(&v441);
        v182 = 0;
        v183 = 0;
      }

      v171 = v183;
      v172 = v182;
      if (v182)
      {
        v169 = v172;
        v170 = v171;
        v168 = v171;
        v167 = v172;
        v439 = v172;
        v440 = v171;

        v167(v341);
      }

      outlined consume of Data._Representation(v303, v302);

      return v184;
    }
  }

  else
  {
    v4 = v394;
    v5 = Logger.shared.unsafeMutableAddressor();
    (*(v387 + 16))(v4, v5, v385);
    v6 = v381;
    v368 = 7;
    v369 = swift_allocObject();
    *(v369 + 16) = v381;
    v379 = Logger.logObject.getter();
    v362 = v379;
    v378 = static os_log_type_t.error.getter();
    v363 = v378;
    v364 = 17;
    v372 = swift_allocObject();
    v365 = v372;
    *(v372 + 16) = 64;
    v373 = swift_allocObject();
    v366 = v373;
    *(v373 + 16) = 8;
    v367 = 32;
    v7 = swift_allocObject();
    v8 = v369;
    v370 = v7;
    *(v7 + 16) = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.configDeviceManager();
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v370;
    v376 = v9;
    v371 = v9;
    *(v9 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
    *(v9 + 24) = v10;
    v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v374 = _allocateUninitializedArray<A>(_:)();
    v375 = v11;

    v12 = v372;
    v13 = v375;
    *v375 = closure #1 in OSLogArguments.append(_:)partial apply;
    v13[1] = v12;

    v14 = v373;
    v15 = v375;
    v375[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v15[3] = v14;

    v16 = v375;
    v17 = v376;
    v375[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v16[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v379, v378))
    {
      v130 = v383;
      v143 = static UnsafeMutablePointer.allocate(capacity:)();
      v140 = v143;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v146 = 1;
      v144 = createStorage<A>(capacity:type:)(1);
      v142 = v144;
      v145 = createStorage<A>(capacity:type:)(0);
      v453 = v143;
      v452 = v144;
      v451 = v145;
      v147 = &v453;
      serialize(_:at:)(2, &v453);
      serialize(_:at:)(v146, v147);
      v449 = closure #1 in OSLogArguments.append(_:)partial apply;
      v450 = v365;
      closure #1 in osLogInternal(_:log:type:)(&v449, v147, &v452, &v451);
      v148 = v130;
      v149 = v130;
      if (v130)
      {
        v138 = 0;

        __break(1u);
      }

      else
      {
        v449 = closure #1 in OSLogArguments.append(_:)partial apply;
        v450 = v366;
        closure #1 in osLogInternal(_:log:type:)(&v449, &v453, &v452, &v451);
        v136 = 0;
        v137 = 0;
        v449 = closure #1 in OSLogArguments.append(_:)partial apply;
        v450 = v371;
        closure #1 in osLogInternal(_:log:type:)(&v449, &v453, &v452, &v451);
        v134 = 0;
        v135 = 0;
        _os_log_impl(&dword_1D93D0000, v362, v363, "HeadphoneManager:Connection: AAF Device: %@ is missing cbDevice early exit found handler", v140, 0xCu);
        destroyStorage<A>(_:count:)(v142, 1, v141);
        destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v140, MEMORY[0x1E69E7508]);

        v139 = v134;
      }
    }

    else
    {
      v131 = v383;

      v139 = v131;
    }

    v133 = v139;

    (*(v387 + 8))(v394, v385);
    return v133;
  }
}

uint64_t implicit closure #2 in closure #1 in Headphone_Manager.configDeviceManager()(void *a1)
{
  v5 = [a1 name];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
  }

  return v7._countAndFlagsBits;
}

void *closure #1 in closure #1 in Headphone_Manager.configDeviceManager()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[5] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[2] = a4;
  v15[1] = a5;

  v12 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x210))();
  v14[0] = a2;
  v14[1] = a3;
  v6 = type metadata accessor for HeadphoneDevice();
  MEMORY[0x1DA7308E0](v15, v14, v12, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
  outlined destroy of String(v14);
  v13 = v15[0];

  MEMORY[0x1E69E5928](v13);
  if (v13)
  {
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xB78))(a4, a5);
    MEMORY[0x1E69E5920](v13);
  }

  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

uint64_t closure #2 in Headphone_Manager.configDeviceManager()(void *a1, void *a2)
{
  v370 = a2;
  v367 = a1;
  v368 = 0;
  v433 = 0;
  v432 = 0;
  v369 = 0;
  v426 = 0;
  v421 = 0;
  v420 = 0;
  v418 = 0;
  v417 = 0;
  v412 = 0;
  v411 = 0;
  v404 = 0;
  v371 = type metadata accessor for Logger();
  v372 = *(v371 - 8);
  v373 = v372;
  v378 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v371 - 8);
  v380 = (v378 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v375 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v376 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v377 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v379 = &v119 - v380;
  MEMORY[0x1EEE9AC00](&v119 - v380);
  v381 = &v119 - v380;
  v433 = a1;
  v432 = v3;
  v382 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(a1);
  if (v382)
  {
    v366 = v382;
    v18 = v379;
    v327 = v382;
    v426 = v382;
    v19 = Logger.shared.unsafeMutableAddressor();
    v325 = *(v373 + 16);
    v326 = (v373 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v325(v18, v19, v371);
    v20 = v327;
    v335 = 7;
    v336 = swift_allocObject();
    *(v336 + 16) = v327;
    v347 = Logger.logObject.getter();
    v328 = v347;
    v346 = static os_log_type_t.default.getter();
    v329 = v346;
    v330 = 17;
    v340 = swift_allocObject();
    v331 = v340;
    v332 = 32;
    *(v340 + 16) = 32;
    v21 = swift_allocObject();
    v22 = v332;
    v341 = v21;
    v333 = v21;
    *(v21 + 16) = 8;
    v334 = v22;
    v23 = swift_allocObject();
    v24 = v336;
    v337 = v23;
    *(v23 + 16) = partial apply for implicit closure #2 in closure #2 in Headphone_Manager.configDeviceManager();
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v337;
    v344 = v25;
    v338 = v25;
    *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v25 + 24) = v26;
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v339 = v345;
    v342 = _allocateUninitializedArray<A>(_:)();
    v343 = v27;

    v28 = v340;
    v29 = v343;
    *v343 = closure #1 in OSLogArguments.append(_:)partial apply;
    v29[1] = v28;

    v30 = v341;
    v31 = v343;
    v343[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v31[3] = v30;

    v32 = v343;
    v33 = v344;
    v343[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v32[5] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v347, v346))
    {
      v35 = v369;
      v318 = static UnsafeMutablePointer.allocate(capacity:)();
      v315 = v318;
      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v319 = createStorage<A>(capacity:type:)(0);
      v317 = v319;
      v321 = 1;
      v320 = createStorage<A>(capacity:type:)(1);
      v387 = v318;
      v386 = v319;
      v385 = v320;
      v322 = &v387;
      serialize(_:at:)(2, &v387);
      serialize(_:at:)(v321, v322);
      v383 = closure #1 in OSLogArguments.append(_:)partial apply;
      v384 = v331;
      closure #1 in osLogInternal(_:log:type:)(&v383, v322, &v386, &v385);
      v323 = v35;
      v324 = v35;
      if (v35)
      {
        v313 = 0;

        __break(1u);
      }

      else
      {
        v383 = closure #1 in OSLogArguments.append(_:)partial apply;
        v384 = v333;
        closure #1 in osLogInternal(_:log:type:)(&v383, &v387, &v386, &v385);
        v311 = 0;
        v312 = 0;
        v383 = closure #1 in OSLogArguments.append(_:)partial apply;
        v384 = v338;
        closure #1 in osLogInternal(_:log:type:)(&v383, &v387, &v386, &v385);
        v309 = 0;
        v310 = 0;
        _os_log_impl(&dword_1D93D0000, v328, v329, "HeadphoneManager:Connection: AAF Device Lost: %s", v315, 0xCu);
        destroyStorage<A>(_:count:)(v317, 0, v316);
        destroyStorage<A>(_:count:)(v320, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v315, MEMORY[0x1E69E7508]);

        v314 = v309;
      }
    }

    else
    {
      v36 = v369;

      v314 = v36;
    }

    v305 = v314;

    v306 = *(v373 + 8);
    v307 = (v373 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v306(v379, v371);
    v308 = [v327 btAddressData];
    if (v308)
    {
      v304 = v308;
      v299 = v308;
      v300 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v301 = v37;

      v302 = v300;
      v303 = v301;
    }

    else
    {
      v302 = 0;
      v303 = 0xF000000000000000;
    }

    v297 = v303;
    v298 = v302;
    if (v303 >> 60 == 15)
    {
      v38 = v377;
      v39 = Logger.shared.unsafeMutableAddressor();
      v325(v38, v39, v371);
      v293 = Logger.logObject.getter();
      v290 = v293;
      v292 = static os_log_type_t.error.getter();
      v291 = v292;
      v294 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v293, v292))
      {
        v114 = v305;
        v143 = static UnsafeMutablePointer.allocate(capacity:)();
        v139 = v143;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v141 = 0;
        v144 = createStorage<A>(capacity:type:)(0);
        v142 = v144;
        v145 = createStorage<A>(capacity:type:)(v141);
        v425 = v143;
        v424 = v144;
        v423 = v145;
        v146 = 0;
        v147 = &v425;
        serialize(_:at:)(0, &v425);
        serialize(_:at:)(v146, v147);
        v422 = v294;
        v148 = &v119;
        MEMORY[0x1EEE9AC00](&v119);
        v149 = &v119 - 6;
        *(&v119 - 4) = v115;
        *(&v119 - 3) = &v424;
        *(&v119 - 2) = &v423;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v151 = v114;
        if (v114)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v290, v291, "HeadphoneManager:Connection: Invalid BT Address", v139, 2u);
          v137 = 0;
          destroyStorage<A>(_:count:)(v142, 0, v140);
          destroyStorage<A>(_:count:)(v145, v137, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v139, MEMORY[0x1E69E7508]);

          v138 = v151;
        }
      }

      else
      {

        v138 = v305;
      }

      v136 = v138;

      v306(v377, v371);
      return v136;
    }

    else
    {
      v295 = v298;
      v296 = v297;
      v288 = v297;
      v289 = v298;
      v420 = v298;
      v421 = v297;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v40 = v370;
        v272 = 1;
        v278 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%02X-%02X-%02X-%02X-%02X-%02X", 0x1DuLL, 1);
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        v277 = _allocateUninitializedArray<A>(_:)();
        v275 = v41;
        v283 = 0;
        v42 = MEMORY[0x1DA7304B0]();
        v43 = v272;
        v44 = v289;
        v45 = v288;
        v46 = v275;
        v273 = MEMORY[0x1E69E7508];
        v275[3] = MEMORY[0x1E69E7508];
        v274 = MEMORY[0x1E69E7558];
        v46[4] = MEMORY[0x1E69E7558];
        *v46 = v42;
        v47 = MEMORY[0x1DA7304B0](v43, v44, v45);
        v48 = v289;
        v49 = v288;
        v50 = v274;
        v51 = v275;
        v275[8] = v273;
        v51[9] = v50;
        *(v51 + 40) = v47;
        v52 = MEMORY[0x1DA7304B0](2, v48, v49);
        v53 = v289;
        v54 = v288;
        v55 = v274;
        v56 = v275;
        v275[13] = v273;
        v56[14] = v55;
        *(v56 + 80) = v52;
        v57 = MEMORY[0x1DA7304B0](3, v53, v54);
        v58 = v289;
        v59 = v288;
        v60 = v274;
        v61 = v275;
        v275[18] = v273;
        v61[19] = v60;
        *(v61 + 120) = v57;
        v62 = MEMORY[0x1DA7304B0](4, v58, v59);
        v63 = v289;
        v64 = v288;
        v65 = v274;
        v66 = v275;
        v275[23] = v273;
        v66[24] = v65;
        *(v66 + 160) = v62;
        v67 = MEMORY[0x1DA7304B0](5, v63, v64);
        v68 = v274;
        v69 = v275;
        v275[28] = v273;
        v69[29] = v68;
        *(v69 + 200) = v67;
        _finalizeUninitializedArray<A>(_:)();
        v281 = String.init(format:_:)();
        v282 = v70;
        v279 = v281;
        v280 = v70;

        v411 = v281;
        v412 = v282;

        v285 = (*((*v40 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v71);
        v284 = v285;
        v409[0] = v281;
        v409[1] = v282;
        type metadata accessor for HeadphoneDevice();
        v286 = v409;
        MEMORY[0x1DA7308E0](&v410);
        outlined destroy of String(v286);
        v287 = v410;
        if (v410)
        {
          v271 = v287;
          v74 = v370;
          v265 = v287;
          v404 = v287;

          v76 = (*((*v74 & *MEMORY[0x1E69E7D40]) + 0xD8))(v75);
          v403 = v76;
          if (v76)
          {
            v264 = v403;
            swift_unknownObjectRetain();
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v403);
            swift_getObjectType();
            [v264 removeTopLevelEntryWithHpDevice_];
            swift_unknownObjectRelease();
          }

          else
          {
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v403);
          }

          v77 = v370;

          v402 = 0;
          v78 = *v77;
          v243 = MEMORY[0x1E69E7D40];
          v79 = *((v78 & *MEMORY[0x1E69E7D40]) + 0x1F0);
          v231 = &v401;
          v232 = v79();
          v400[0] = v279;
          v400[1] = v280;
          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
          v229 = &v399;
          v233 = v400;
          v80 = Dictionary.subscript.modify();
          v81 = v370;
          v230 = v80;
          v228 = v82;
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
          v236 = lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?();
          ==? infix<A>(_:_:)(v228, &v402, v235, v236);
          v244 = 0;
          v230(v229);
          v232(v231, v244);
          outlined destroy of String(v233);

          v83 = v265;
          v398 = v265;
          v84 = *((*v81 & *v243) + 0x220);
          v239 = &v397;
          v240 = v84();
          v396[0] = v279;
          v396[1] = v280;
          v237 = &v395;
          v241 = v396;
          v85 = Dictionary.subscript.modify();
          v86 = v265;
          v238 = v85;
          v242 = &v398;
          ==? infix<A>(_:_:)(v87, &v398, v235, v236);
          v238(v237, v244);
          v240(v239, v244);
          outlined destroy of String(v241);
          outlined destroy of HeadphoneDevice?(v242);
          v394 = v244;
          v88 = *((*v86 & *v243) + 0x3A0);
          v245 = &v393;
          v89 = v88();
          v90 = v375;
          v246 = v89;
          ==? infix<A>(_:_:)(v91, &v394, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
          v246(v245, v244);
          v92 = Logger.shared.unsafeMutableAddressor();
          v325(v90, v92, v371);
          v93 = v265;
          v253 = 7;
          v254 = swift_allocObject();
          *(v254 + 16) = v265;
          v263 = Logger.logObject.getter();
          v247 = v263;
          v262 = static os_log_type_t.default.getter();
          v248 = v262;
          v249 = 17;
          v257 = swift_allocObject();
          v250 = v257;
          *(v257 + 16) = 64;
          v258 = swift_allocObject();
          v251 = v258;
          *(v258 + 16) = 8;
          v252 = 32;
          v94 = swift_allocObject();
          v95 = v254;
          v255 = v94;
          *(v94 + 16) = partial apply for implicit closure #4 in closure #2 in Headphone_Manager.configDeviceManager();
          *(v94 + 24) = v95;
          v96 = swift_allocObject();
          v97 = v255;
          v261 = v96;
          v256 = v96;
          *(v96 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
          *(v96 + 24) = v97;
          v259 = _allocateUninitializedArray<A>(_:)();
          v260 = v98;

          v99 = v257;
          v100 = v260;
          *v260 = closure #1 in OSLogArguments.append(_:)partial apply;
          v100[1] = v99;

          v101 = v258;
          v102 = v260;
          v260[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v102[3] = v101;

          v103 = v260;
          v104 = v261;
          v260[4] = closure #1 in OSLogArguments.append(_:)partial apply;
          v103[5] = v104;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v263, v262))
          {
            v105 = v305;
            v221 = static UnsafeMutablePointer.allocate(capacity:)();
            v218 = v221;
            v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v224 = 1;
            v222 = createStorage<A>(capacity:type:)(1);
            v220 = v222;
            v223 = createStorage<A>(capacity:type:)(0);
            v392 = v221;
            v391 = v222;
            v390 = v223;
            v225 = &v392;
            serialize(_:at:)(2, &v392);
            serialize(_:at:)(v224, v225);
            v388 = closure #1 in OSLogArguments.append(_:)partial apply;
            v389 = v250;
            closure #1 in osLogInternal(_:log:type:)(&v388, v225, &v391, &v390);
            v226 = v105;
            v227 = v105;
            if (v105)
            {
              v216 = 0;

              __break(1u);
            }

            else
            {
              v388 = closure #1 in OSLogArguments.append(_:)partial apply;
              v389 = v251;
              closure #1 in osLogInternal(_:log:type:)(&v388, &v392, &v391, &v390);
              v214 = 0;
              v215 = 0;
              v388 = closure #1 in OSLogArguments.append(_:)partial apply;
              v389 = v256;
              closure #1 in osLogInternal(_:log:type:)(&v388, &v392, &v391, &v390);
              v212 = 0;
              v213 = 0;
              _os_log_impl(&dword_1D93D0000, v247, v248, "HeadphoneManager:Connection: Removed Device: %@ added to Paired", v218, 0xCu);
              destroyStorage<A>(_:count:)(v220, 1, v219);
              destroyStorage<A>(_:count:)(v223, 0, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v218, MEMORY[0x1E69E7508]);

              v217 = v212;
            }
          }

          else
          {
            v106 = v305;

            v217 = v106;
          }

          v210 = v217;

          v306(v375, v371);
          v211 = v210;
        }

        else
        {
          v72 = v376;

          v73 = Logger.shared.unsafeMutableAddressor();
          v325(v72, v73, v371);
          v269 = Logger.logObject.getter();
          v266 = v269;
          v268 = static os_log_type_t.error.getter();
          v267 = v268;
          v270 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v269, v268))
          {
            v107 = v305;
            v201 = static UnsafeMutablePointer.allocate(capacity:)();
            v197 = v201;
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v199 = 0;
            v202 = createStorage<A>(capacity:type:)(0);
            v200 = v202;
            v203 = createStorage<A>(capacity:type:)(v199);
            v408 = v201;
            v407 = v202;
            v406 = v203;
            v204 = 0;
            v205 = &v408;
            serialize(_:at:)(0, &v408);
            serialize(_:at:)(v204, v205);
            v405 = v270;
            v206 = &v119;
            MEMORY[0x1EEE9AC00](&v119);
            v207 = &v119 - 6;
            *(&v119 - 4) = v108;
            *(&v119 - 3) = &v407;
            *(&v119 - 2) = &v406;
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v209 = v107;
            if (v107)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_1D93D0000, v266, v267, "HeadphoneManager:Connection: Failed to remove the device", v197, 2u);
              v195 = 0;
              destroyStorage<A>(_:count:)(v200, 0, v198);
              destroyStorage<A>(_:count:)(v203, v195, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v197, MEMORY[0x1E69E7508]);

              v196 = v209;
            }
          }

          else
          {

            v196 = v305;
          }

          v194 = v196;

          v306(v376, v371);
          v211 = v194;
        }

        v192 = v211;

        v193 = v192;
      }

      else
      {
        v109 = v374;
        v110 = Logger.shared.unsafeMutableAddressor();
        v325(v109, v110, v371);
        v190 = Logger.logObject.getter();
        v187 = v190;
        v189 = static os_log_type_t.error.getter();
        v188 = v189;
        v191 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v190, v189))
        {
          v111 = v305;
          v178 = static UnsafeMutablePointer.allocate(capacity:)();
          v174 = v178;
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v176 = 0;
          v179 = createStorage<A>(capacity:type:)(0);
          v177 = v179;
          v180 = createStorage<A>(capacity:type:)(v176);
          v416 = v178;
          v415 = v179;
          v414 = v180;
          v181 = 0;
          v182 = &v416;
          serialize(_:at:)(0, &v416);
          serialize(_:at:)(v181, v182);
          v413 = v191;
          v183 = &v119;
          MEMORY[0x1EEE9AC00](&v119);
          v184 = &v119 - 6;
          *(&v119 - 4) = v112;
          *(&v119 - 3) = &v415;
          *(&v119 - 2) = &v414;
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v186 = v111;
          if (v111)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D93D0000, v187, v188, "HeadphoneManager:Connection: Invalid BT Address Length", v174, 2u);
            v172 = 0;
            destroyStorage<A>(_:count:)(v177, 0, v175);
            destroyStorage<A>(_:count:)(v180, v172, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v174, MEMORY[0x1E69E7508]);

            v173 = v186;
          }
        }

        else
        {

          v173 = v305;
        }

        v171 = v173;

        v306(v374, v371);
        v193 = v171;
      }

      v170 = v193;
      v419 = (*((*v370 & *MEMORY[0x1E69E7D40]) + 0x1C8))();
      if (v419)
      {
        v166 = v419;
        v165 = v419;
        swift_unknownObjectRetain();
        outlined destroy of CBDeviceReporting?(&v419);
        swift_getObjectType();
        v167 = [v166 deviceLostHandler];
        if (v167)
        {
          v164 = v167;
          v161 = v167;
          v113 = swift_allocObject();
          *(v113 + 16) = v161;
          v162 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CBDevice) -> ();
          v163 = v113;
        }

        else
        {
          v162 = 0;
          v163 = 0;
        }

        v160 = v163;
        v159 = v162;
        swift_unknownObjectRelease();
        v168 = v159;
        v169 = v160;
      }

      else
      {
        outlined destroy of CBDeviceReporting?(&v419);
        v168 = 0;
        v169 = 0;
      }

      v157 = v169;
      v158 = v168;
      if (v168)
      {
        v155 = v158;
        v156 = v157;
        v154 = v157;
        v153 = v158;
        v417 = v158;
        v418 = v157;

        v153(v327);
      }

      outlined consume of Data._Representation(v289, v288);

      return v170;
    }
  }

  else
  {
    v4 = v381;
    v5 = Logger.shared.unsafeMutableAddressor();
    (*(v373 + 16))(v4, v5, v371);
    v6 = v367;
    v354 = 7;
    v355 = swift_allocObject();
    *(v355 + 16) = v367;
    v365 = Logger.logObject.getter();
    v348 = v365;
    v364 = static os_log_type_t.error.getter();
    v349 = v364;
    v350 = 17;
    v358 = swift_allocObject();
    v351 = v358;
    *(v358 + 16) = 64;
    v359 = swift_allocObject();
    v352 = v359;
    *(v359 + 16) = 8;
    v353 = 32;
    v7 = swift_allocObject();
    v8 = v355;
    v356 = v7;
    *(v7 + 16) = partial apply for implicit closure #1 in closure #2 in Headphone_Manager.configDeviceManager();
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v356;
    v362 = v9;
    v357 = v9;
    *(v9 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
    *(v9 + 24) = v10;
    v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v360 = _allocateUninitializedArray<A>(_:)();
    v361 = v11;

    v12 = v358;
    v13 = v361;
    *v361 = closure #1 in OSLogArguments.append(_:)partial apply;
    v13[1] = v12;

    v14 = v359;
    v15 = v361;
    v361[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v15[3] = v14;

    v16 = v361;
    v17 = v362;
    v361[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v16[5] = v17;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v365, v364))
    {
      v116 = v369;
      v129 = static UnsafeMutablePointer.allocate(capacity:)();
      v126 = v129;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v132 = 1;
      v130 = createStorage<A>(capacity:type:)(1);
      v128 = v130;
      v131 = createStorage<A>(capacity:type:)(0);
      v431 = v129;
      v430 = v130;
      v429 = v131;
      v133 = &v431;
      serialize(_:at:)(2, &v431);
      serialize(_:at:)(v132, v133);
      v427 = closure #1 in OSLogArguments.append(_:)partial apply;
      v428 = v351;
      closure #1 in osLogInternal(_:log:type:)(&v427, v133, &v430, &v429);
      v134 = v116;
      v135 = v116;
      if (v116)
      {
        v124 = 0;

        __break(1u);
      }

      else
      {
        v427 = closure #1 in OSLogArguments.append(_:)partial apply;
        v428 = v352;
        closure #1 in osLogInternal(_:log:type:)(&v427, &v431, &v430, &v429);
        v122 = 0;
        v123 = 0;
        v427 = closure #1 in OSLogArguments.append(_:)partial apply;
        v428 = v357;
        closure #1 in osLogInternal(_:log:type:)(&v427, &v431, &v430, &v429);
        v120 = 0;
        v121 = 0;
        _os_log_impl(&dword_1D93D0000, v348, v349, "HeadphoneManager:Connection: AAF Device: %@ is missing cbDevice early exit lost handler", v126, 0xCu);
        destroyStorage<A>(_:count:)(v128, 1, v127);
        destroyStorage<A>(_:count:)(v131, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v126, MEMORY[0x1E69E7508]);

        v125 = v120;
      }
    }

    else
    {
      v117 = v369;

      v125 = v117;
    }

    v119 = v125;

    (*(v373 + 8))(v381, v371);
    return v119;
  }
}

uint64_t implicit closure #2 in closure #2 in Headphone_Manager.configDeviceManager()(void *a1)
{
  v5 = [a1 name];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
  }

  return v7._countAndFlagsBits;
}

void closure #3 in Headphone_Manager.configDeviceManager()(uint64_t a1)
{
  v42 = a1;
  v52 = 0;
  v63 = 0;
  v41 = 0;
  v49 = type metadata accessor for Logger();
  v43 = v49;
  v44 = *(v49 - 8);
  v48 = v44;
  v45 = v44;
  v1 = *(v44 + 64);
  v2 = MEMORY[0x1EEE9AC00](v42);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v47 = v2 + 16;
  v63 = v2 + 16;
  v5 = Logger.shared.unsafeMutableAddressor();
  (*(v48 + 16))(v4, v5, v49);
  v54 = Logger.logObject.getter();
  v50 = v54;
  v53 = static os_log_type_t.error.getter();
  v51 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v55 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v54, v53))
  {
    v6 = v41;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = 0;
    v33 = createStorage<A>(capacity:type:)(0);
    v31 = v33;
    v34 = createStorage<A>(capacity:type:)(v30);
    v59 = v32;
    v58 = v33;
    v57 = v34;
    v35 = 0;
    v36 = &v59;
    serialize(_:at:)(0, &v59);
    serialize(_:at:)(v35, v36);
    v56 = v55;
    v37 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v38 = &v16[-6];
    v16[-4] = v7;
    v16[-3] = &v58;
    v16[-2] = &v57;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v40 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v50, v51, "HeadphoneManager: AAF interruptionHandler!", v28, 2u);
      v26 = 0;
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v34, v26, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v28, MEMORY[0x1E69E7508]);

      v27 = v40;
    }
  }

  else
  {

    v27 = v41;
  }

  v25 = v27;

  (*(v45 + 8))(v46, v43);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = v25;
    v10 = Strong;
    v20 = Strong;
    v11 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v12 = swift_endAccess();
    v19 = (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v12);
    v18 = v19;
    type metadata accessor for HeadphoneDevice();
    v21 = Dictionary.values.getter();

    v60 = v21;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMd, &_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMR);
    lazy protocol witness table accessor for type [String : HeadphoneDevice].Values and conformance [A : B].Values();
    Sequence.forEach(_:)();
    v23 = v9;
    if (v9)
    {

      __break(1u);
      return;
    }

    outlined destroy of [String : HeadphoneDevice].Values(&v60);

    v24 = v23;
  }

  else
  {
    v8 = v25;
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    v24 = v8;
  }

  swift_beginAccess();
  v61 = swift_unknownObjectWeakLoadStrong();
  if (v61)
  {
    v13 = v61;
    v17 = v61;
    v14 = v61;
    outlined destroy of Headphone_Manager?(&v61);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
    v16[0] = 0;
    v16[1] = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HeadphoneDevice();
    v15 = Dictionary.init(dictionaryLiteral:)();
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v15);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v61);
    swift_endAccess();
  }
}

uint64_t closure #1 in closure #3 in Headphone_Manager.configDeviceManager()(void **a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v19 = *a1;
  v18 = a2 + 16;
  v13 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0xA80))();
  v14 = (*(*v13 + 1936))(v13);
  if (!v14)
  {
  }

  v17 = v14;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = Strong;
  if (Strong)
  {
    v4 = v16;
    v10 = v16;
    MEMORY[0x1E69E5928](v16);
    outlined destroy of Headphone_Manager?(&v16);
    v5 = swift_endAccess();
    v11 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5);
    MEMORY[0x1E69E5920](v10);
    v12 = [v11 deviceLostHandler];
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v15[0] = v8;
    v15[1] = v9;
    if (v8)
    {
      v7 = v15[0];

      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
      v7(v14);
    }

    else
    {
      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
    }
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v16);
    swift_endAccess();
  }

  return MEMORY[0x1E69E5920](v14);
}

void closure #4 in Headphone_Manager.configDeviceManager()(uint64_t a1)
{
  v42 = a1;
  v52 = 0;
  v63 = 0;
  v41 = 0;
  v49 = type metadata accessor for Logger();
  v43 = v49;
  v44 = *(v49 - 8);
  v48 = v44;
  v45 = v44;
  v1 = *(v44 + 64);
  v2 = MEMORY[0x1EEE9AC00](v42);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v47 = v2 + 16;
  v63 = v2 + 16;
  v5 = Logger.shared.unsafeMutableAddressor();
  (*(v48 + 16))(v4, v5, v49);
  v54 = Logger.logObject.getter();
  v50 = v54;
  v53 = static os_log_type_t.error.getter();
  v51 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v55 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v54, v53))
  {
    v6 = v41;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = 0;
    v33 = createStorage<A>(capacity:type:)(0);
    v31 = v33;
    v34 = createStorage<A>(capacity:type:)(v30);
    v59 = v32;
    v58 = v33;
    v57 = v34;
    v35 = 0;
    v36 = &v59;
    serialize(_:at:)(0, &v59);
    serialize(_:at:)(v35, v36);
    v56 = v55;
    v37 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v38 = &v16[-6];
    v16[-4] = v7;
    v16[-3] = &v58;
    v16[-2] = &v57;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v40 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v50, v51, "HeadphoneManager: AAF invalidationHandler!", v28, 2u);
      v26 = 0;
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v34, v26, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v28, MEMORY[0x1E69E7508]);

      v27 = v40;
    }
  }

  else
  {

    v27 = v41;
  }

  v25 = v27;

  (*(v45 + 8))(v46, v43);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = v25;
    v10 = Strong;
    v20 = Strong;
    v11 = Strong;
    outlined destroy of Headphone_Manager?(&Strong);
    v12 = swift_endAccess();
    v19 = (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v12);
    v18 = v19;
    type metadata accessor for HeadphoneDevice();
    v21 = Dictionary.values.getter();

    v60 = v21;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMd, &_sSD6ValuesVySS16HeadphoneManager0B6DeviceC_GMR);
    lazy protocol witness table accessor for type [String : HeadphoneDevice].Values and conformance [A : B].Values();
    Sequence.forEach(_:)();
    v23 = v9;
    if (v9)
    {

      __break(1u);
      return;
    }

    outlined destroy of [String : HeadphoneDevice].Values(&v60);

    v24 = v23;
  }

  else
  {
    v8 = v25;
    outlined destroy of Headphone_Manager?(&Strong);
    swift_endAccess();
    v24 = v8;
  }

  swift_beginAccess();
  v61 = swift_unknownObjectWeakLoadStrong();
  if (v61)
  {
    v13 = v61;
    v17 = v61;
    v14 = v61;
    outlined destroy of Headphone_Manager?(&v61);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16HeadphoneManager0A6DeviceCtMd, &_sSS_16HeadphoneManager0A6DeviceCtMR);
    v16[0] = 0;
    v16[1] = _allocateUninitializedArray<A>(_:)();
    type metadata accessor for HeadphoneDevice();
    v15 = Dictionary.init(dictionaryLiteral:)();
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v15);
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v61);
    swift_endAccess();
  }
}

uint64_t closure #1 in closure #4 in Headphone_Manager.configDeviceManager()(void **a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v19 = *a1;
  v18 = a2 + 16;
  v13 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0xA80))();
  v14 = (*(*v13 + 1936))(v13);
  if (!v14)
  {
  }

  v17 = v14;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = Strong;
  if (Strong)
  {
    v4 = v16;
    v10 = v16;
    MEMORY[0x1E69E5928](v16);
    outlined destroy of Headphone_Manager?(&v16);
    v5 = swift_endAccess();
    v11 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5);
    MEMORY[0x1E69E5920](v10);
    v12 = [v11 deviceLostHandler];
    if (v12)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v12;
      v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v15[0] = v8;
    v15[1] = v9;
    if (v8)
    {
      v7 = v15[0];

      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
      v7(v14);
    }

    else
    {
      outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(v15);
      MEMORY[0x1E69E5920](v11);
    }
  }

  else
  {
    outlined destroy of Headphone_Manager?(&v16);
    swift_endAccess();
  }

  return MEMORY[0x1E69E5920](v14);
}

void closure #5 in Headphone_Manager.configDeviceManager()(void *a1)
{
  v56 = a1;
  v44 = partial apply for implicit closure #1 in closure #5 in Headphone_Manager.configDeviceManager();
  v45 = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  v46 = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  v47 = closure #1 in OSLogArguments.append(_:)partial apply;
  v48 = closure #1 in OSLogArguments.append(_:)partial apply;
  v49 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = 0;
  v62 = 0;
  v50 = 0;
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v19 - v54;
  v63 = MEMORY[0x1EEE9AC00](v56);
  v1 = v63;
  if (v56)
  {
    v43 = v56;
    v2 = v55;
    v28 = v56;
    v62 = v56;
    v3 = Logger.shared.unsafeMutableAddressor();
    (*(v52 + 16))(v2, v3, v51);
    v4 = v28;
    v32 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v29 = 17;
    v35 = swift_allocObject();
    *(v35 + 16) = 64;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v31 = 32;
    v5 = swift_allocObject();
    v6 = v30;
    v33 = v5;
    *(v5 + 16) = v44;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v33;
    v34 = v7;
    *(v7 + 16) = v45;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v34;
    v38 = v9;
    *(v9 + 16) = v46;
    *(v9 + 24) = v10;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v37 = _allocateUninitializedArray<A>(_:)();
    v39 = v11;

    v12 = v35;
    v13 = v39;
    *v39 = v47;
    v13[1] = v12;

    v14 = v36;
    v15 = v39;
    v39[2] = v48;
    v15[3] = v14;

    v16 = v38;
    v17 = v39;
    v39[4] = v49;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v41, v42))
    {
      v18 = v50;
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(1);
      v23 = createStorage<A>(capacity:type:)(0);
      v24 = &v61;
      v61 = v21;
      v25 = &v60;
      v60 = v22;
      v26 = &v59;
      v59 = v23;
      serialize(_:at:)(2, &v61);
      serialize(_:at:)(1, v24);
      v57 = v47;
      v58 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v57, v24, v25, v26);
      v27 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v57 = v48;
        v58 = v36;
        closure #1 in osLogInternal(_:log:type:)(&v57, &v61, &v60, &v59);
        v19 = 0;
        v57 = v49;
        v58 = v38;
        closure #1 in osLogInternal(_:log:type:)(&v57, &v61, &v60, &v59);
        _os_log_impl(&dword_1D93D0000, v41, v42, "HeadphoneManager: AAF Discovery Activation Failed: %@", v21, 0xCu);
        destroyStorage<A>(_:count:)(v22, 1, v20);
        destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v21, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v41);
    (*(v52 + 8))(v55, v51);
  }
}

uint64_t closure #1 in Headphone_Manager.configCBUserController()()
{
  v32 = 0;
  v23 = 0;
  v29 = type metadata accessor for Logger();
  v24 = v29;
  v25 = *(v29 - 8);
  v28 = v25;
  v26 = v25;
  v0 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v3 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v28 + 16))(v2, v3, v29);
  v34 = Logger.logObject.getter();
  v30 = v34;
  v33 = static os_log_type_t.default.getter();
  v31 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v35 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v34, v33))
  {
    v4 = v23;
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = 0;
    v15 = createStorage<A>(capacity:type:)(0);
    v13 = v15;
    v16 = createStorage<A>(capacity:type:)(v12);
    v39 = v14;
    v38 = v15;
    v37 = v16;
    v17 = 0;
    v18 = &v39;
    serialize(_:at:)(0, &v39);
    serialize(_:at:)(v17, v18);
    v36 = v35;
    v19 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v20 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v38;
    *(&v7 - 2) = &v37;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v22 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v30, v31, "FW Seeding: CBUserController interruptionHandler", v10, 2u);
      v8 = 0;
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v16, v8, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v10, MEMORY[0x1E69E7508]);

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  return (*(v26 + 8))(v27, v24);
}

uint64_t closure #2 in Headphone_Manager.configCBUserController()()
{
  v32 = 0;
  v23 = 0;
  v29 = type metadata accessor for Logger();
  v24 = v29;
  v25 = *(v29 - 8);
  v28 = v25;
  v26 = v25;
  v0 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v3 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v28 + 16))(v2, v3, v29);
  v34 = Logger.logObject.getter();
  v30 = v34;
  v33 = static os_log_type_t.default.getter();
  v31 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v35 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v34, v33))
  {
    v4 = v23;
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = 0;
    v15 = createStorage<A>(capacity:type:)(0);
    v13 = v15;
    v16 = createStorage<A>(capacity:type:)(v12);
    v39 = v14;
    v38 = v15;
    v37 = v16;
    v17 = 0;
    v18 = &v39;
    serialize(_:at:)(0, &v39);
    serialize(_:at:)(v17, v18);
    v36 = v35;
    v19 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v20 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v38;
    *(&v7 - 2) = &v37;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v22 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v30, v31, "FW Seeding: CBUserController invalidationHandler", v10, 2u);
      v8 = 0;
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v16, v8, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v10, MEMORY[0x1E69E7508]);

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  return (*(v26 + 8))(v27, v24);
}

uint64_t Headphone_Manager.isAppleHeadphone(cbDevice:)(void *a1)
{
  v4 = CBProductIDIsAppleHeadphone([a1 productID]);
  MEMORY[0x1E69E5928](a1);
  if (v4)
  {
    [a1 vendorID];
    type metadata accessor for CBVendorID();
    lazy protocol witness table accessor for type CBVendorID and conformance CBVendorID();
    v2 = == infix<A>(_:_:)();
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E69E5920](a1);
  return v2 & 1;
}

uint64_t Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(uint64_t *a1, uint64_t a2)
{
  v101 = a1;
  v112 = a2;
  v114 = partial apply for implicit closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v118 = _s2os18OSLogInterpolationV06appendC0_7privacyySo8NSObjectCyXA_AA0B7PrivacyVtFAGSgycfu_TA_3;
  v120 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_7;
  v122 = closure #1 in OSLogArguments.append(_:)partial apply;
  v125 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_3;
  v93 = partial apply for closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v94 = partial apply for implicit closure #2 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v95 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_7;
  v96 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v98 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_7;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v99 = 0;
  v109 = type metadata accessor for Logger();
  v107 = *(v109 - 8);
  v108 = v109 - 8;
  v103 = v107[8];
  v102 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v101);
  v104 = &v46 - v102;
  v105 = v102;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v105;
  v106 = &v46 - v105;
  v153 = v3;
  v152 = v5;
  v151 = v6;
  v7 = Logger.shared.unsafeMutableAddressor();
  v110 = v107[2];
  v111 = v107 + 2;
  v110(v4, v7, v109);
  MEMORY[0x1E69E5928](v112);
  v116 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = v112;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v113 = 17;
  v121 = swift_allocObject();
  *(v121 + 16) = 64;
  v123 = swift_allocObject();
  *(v123 + 16) = 8;
  v115 = 32;
  v8 = swift_allocObject();
  v9 = v117;
  v119 = v8;
  *(v8 + 16) = v114;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v119;
  v126 = v10;
  *(v10 + 16) = v118;
  *(v10 + 24) = v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v124 = _allocateUninitializedArray<A>(_:)();
  v127 = v12;

  v13 = v121;
  v14 = v127;
  *v127 = v120;
  v14[1] = v13;

  v15 = v123;
  v16 = v127;
  v127[2] = v122;
  v16[3] = v15;

  v17 = v126;
  v18 = v127;
  v127[4] = v125;
  v18[5] = v17;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v129, v130))
  {
    v19 = v99;
    v86 = static UnsafeMutablePointer.allocate(capacity:)();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v87 = createStorage<A>(capacity:type:)(1);
    v88 = createStorage<A>(capacity:type:)(0);
    v89 = &v135;
    v135 = v86;
    v90 = &v134;
    v134 = v87;
    v91 = &v133;
    v133 = v88;
    serialize(_:at:)(2, &v135);
    serialize(_:at:)(1, v89);
    v131 = v120;
    v132 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v131, v89, v90, v91);
    v92 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v131 = v122;
      v132 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v135, &v134, &v133);
      v83 = 0;
      v131 = v125;
      v132 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v131, &v135, &v134, &v133);
      v82 = 0;
      _os_log_impl(&dword_1D93D0000, v129, v130, "HeadphoneManager: Update Device Config: %@", v86, 0xCu);
      destroyStorage<A>(_:count:)(v87, 1, v85);
      destroyStorage<A>(_:count:)(v88, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v86, MEMORY[0x1E69E7508]);

      v84 = v82;
    }
  }

  else
  {
    v20 = v99;

    v84 = v20;
  }

  v21 = v101;
  v74 = v84;
  MEMORY[0x1E69E5920](v129);
  v75 = v107[1];
  v76 = v107 + 1;
  v75(v106, v109);
  v22 = *v21;
  v77 = MEMORY[0x1E69E7D40];
  (*((v22 & *MEMORY[0x1E69E7D40]) + 0x278))(1);
  v23 = v100;
  v78 = *(v101 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v79 = *(v101 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v80 = (*((*v23 & *v77) + 0x1E0))(v24);
  v81 = v149;
  v149[0] = v78;
  v149[1] = v79;
  v25 = type metadata accessor for HeadphoneDevice();
  MEMORY[0x1DA7308E0](&v150, v81, v80, MEMORY[0x1E69E6158], v25, MEMORY[0x1E69E6168]);
  outlined destroy of String(v81);
  v148 = v150;
  v73 = v150 == 0;
  v72 = v73;
  outlined destroy of HeadphoneDevice?(&v148);

  if (v72)
  {
    v27 = v104;
    v28 = Logger.shared.unsafeMutableAddressor();
    v110(v27, v28, v109);
    MEMORY[0x1E69E5928](v101);
    v62 = 7;
    v63 = swift_allocObject();
    *(v63 + 16) = v101;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v60 = 17;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v66 = swift_allocObject();
    *(v66 + 16) = 8;
    v61 = 32;
    v29 = swift_allocObject();
    v30 = v63;
    v64 = v29;
    *(v29 + 16) = v94;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v64;
    v68 = v31;
    *(v31 + 16) = v95;
    *(v31 + 24) = v32;
    v67 = _allocateUninitializedArray<A>(_:)();
    v69 = v33;

    v34 = v65;
    v35 = v69;
    *v69 = v96;
    v35[1] = v34;

    v36 = v66;
    v37 = v69;
    v69[2] = v97;
    v37[3] = v36;

    v38 = v68;
    v39 = v69;
    v69[4] = v98;
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v70, v71))
    {
      v40 = v74;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0);
      v55 = createStorage<A>(capacity:type:)(1);
      v56 = &v140;
      v140 = v53;
      v57 = &v139;
      v139 = v54;
      v58 = &v138;
      v138 = v55;
      serialize(_:at:)(2, &v140);
      serialize(_:at:)(1, v56);
      v136 = v96;
      v137 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v136, v56, v57, v58);
      v59 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v136 = v97;
        v137 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v136, &v140, &v139, &v138);
        v51 = 0;
        v136 = v98;
        v137 = v68;
        closure #1 in osLogInternal(_:log:type:)(&v136, &v140, &v139, &v138);
        _os_log_impl(&dword_1D93D0000, v70, v71, "HeadphoneManager: Update Device Config, Device Not Connected with UUID: %s", v53, 0xCu);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v53, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v70);
    return (v75)(v104, v109);
  }

  else
  {
    v42 = *v100;
    v47 = MEMORY[0x1E69E7D40];
    v50 = (*((v42 & *MEMORY[0x1E69E7D40]) + 0x108))(v26);
    v49 = (*((*v101 & *v47) + 0x228))();
    MEMORY[0x1E69E5928](v112);
    MEMORY[0x1E69E5928](v101);
    v43 = swift_allocObject();
    v44 = v101;
    v45 = v93;
    *(v43 + 16) = v112;
    *(v43 + 24) = v44;
    v146 = v45;
    v147 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v142 = 1107296256;
    v143 = 0;
    v144 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v145 = &block_descriptor_73;
    v48 = _Block_copy(&aBlock);

    [v50 modifyDevice:v49 settings:v112 completion:v48];
    _Block_release(v48);
    MEMORY[0x1E69E5920](v49);
    return MEMORY[0x1E69E5920](v50);
  }
}

uint64_t implicit closure #2 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(a1 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  return v2;
}

uint64_t closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(void *a1, uint64_t a2, void *a3)
{
  v105 = a1;
  v97 = a2;
  v96 = a3;
  v85 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v86 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v87 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:);
  v91 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v94 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v95 = 0;
  v111 = 0;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v39 - v101;
  v103 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v39 - v103;
  v119 = v5;
  v118 = v6;
  v117 = v7;
  v8 = v5;
  if (v105)
  {
    v84 = v105;
    v22 = v102;
    v57 = v105;
    v111 = v105;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v22, v23, v98);
    v24 = v57;
    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v25 = swift_allocObject();
    v26 = v61;
    v62 = v25;
    *(v25 + 16) = v85;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v62;
    v66 = v27;
    *(v27 + 16) = v86;
    *(v27 + 24) = v28;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v29;

    v30 = v63;
    v31 = v67;
    *v67 = v87;
    v31[1] = v30;

    v32 = v64;
    v33 = v67;
    v67[2] = v88;
    v33[3] = v32;

    v34 = v66;
    v35 = v67;
    v67[4] = v89;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v36 = v95;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0);
      v52 = createStorage<A>(capacity:type:)(1);
      v53 = &v110;
      v110 = v50;
      v54 = &v109;
      v109 = v51;
      v55 = &v108;
      v108 = v52;
      serialize(_:at:)(2, &v110);
      serialize(_:at:)(1, v53);
      v106 = v87;
      v107 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v106, v53, v54, v55);
      v56 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v106 = v88;
        v107 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        v48 = 0;
        v106 = v89;
        v107 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        _os_log_impl(&dword_1D93D0000, v69, v70, "HeadphoneManager: Update Device Config Failed, Error: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v99 + 8))(v102, v98);
  }

  else
  {
    v9 = v104;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v9, v10, v98);
    MEMORY[0x1E69E5928](v97);
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v97;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v11 = swift_allocObject();
    v12 = v74;
    v75 = v11;
    *(v11 + 16) = v90;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v75;
    v79 = v13;
    *(v13 + 16) = v91;
    *(v13 + 24) = v14;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v78 = _allocateUninitializedArray<A>(_:)();
    v80 = v15;

    v16 = v76;
    v17 = v80;
    *v80 = v92;
    v17[1] = v16;

    v18 = v77;
    v19 = v80;
    v80[2] = v93;
    v19[3] = v18;

    v20 = v79;
    v21 = v80;
    v80[4] = v94;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v37 = v95;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(1);
      v43 = createStorage<A>(capacity:type:)(0);
      v44 = &v116;
      v116 = v41;
      v45 = &v115;
      v115 = v42;
      v46 = &v114;
      v114 = v43;
      serialize(_:at:)(2, &v116);
      serialize(_:at:)(1, v44);
      v112 = v92;
      v113 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v112, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v112 = v93;
        v113 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        v39 = 0;
        v112 = v94;
        v113 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        _os_log_impl(&dword_1D93D0000, v82, v83, "HeadphoneManager: Successfully Updated Device Config: %@", v41, 0xCu);
        destroyStorage<A>(_:count:)(v42, 1, v40);
        destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v99 + 8))(v104, v98);
  }

  return (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x278))(0);
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(uint64_t *a1, uint64_t a2)
{
  v41 = a1;
  v47 = a2;
  v49 = partial apply for implicit closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v57 = closure #1 in OSLogArguments.append(_:)partial apply;
  v60 = closure #1 in OSLogArguments.append(_:)partial apply;
  v38 = partial apply for closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v39 = 0;
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v42 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v25 - v42;
  v43 = &v25 - v42;
  v80 = MEMORY[0x1EEE9AC00](v41);
  v79 = v3;
  v78 = v4;
  v5 = Logger.shared.unsafeMutableAddressor();
  (*(v44 + 16))(v2, v5, v46);
  MEMORY[0x1E69E5928](v47);
  v51 = 7;
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v48 = 17;
  v56 = swift_allocObject();
  *(v56 + 16) = 64;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = 32;
  v6 = swift_allocObject();
  v7 = v52;
  v54 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v54;
  v61 = v8;
  *(v8 + 16) = v53;
  *(v8 + 24) = v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v62 = v10;

  v11 = v56;
  v12 = v62;
  *v62 = v55;
  v12[1] = v11;

  v13 = v58;
  v14 = v62;
  v62[2] = v57;
  v14[3] = v13;

  v15 = v61;
  v16 = v62;
  v62[4] = v60;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v17 = v39;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(1);
    v33 = createStorage<A>(capacity:type:)(0);
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    v36 = &v68;
    v68 = v33;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, v34);
    v66 = v55;
    v67 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v66, v34, v35, v36);
    v37 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v66 = v57;
      v67 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      v29 = 0;
      v66 = v60;
      v67 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_1D93D0000, v64, v65, "HeadphoneManager: Update Offline Device Config: %@", v31, 0xCu);
      destroyStorage<A>(_:count:)(v32, 1, v30);
      destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v31, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  v18 = v41;
  MEMORY[0x1E69E5920](v64);
  (*(v44 + 8))(v43, v46);
  v19 = *v18;
  v25 = MEMORY[0x1E69E7D40];
  v20 = (*((v19 & *MEMORY[0x1E69E7D40]) + 0x278))(1);
  v28 = (*((*v40 & *v25) + 0x108))(v20);
  v27 = (*((*v41 & *v25) + 0x228))();
  MEMORY[0x1E69E5928](v47);
  MEMORY[0x1E69E5928](v41);
  v21 = swift_allocObject();
  v22 = v41;
  v23 = v38;
  *(v21 + 16) = v47;
  *(v21 + 24) = v22;
  v76 = v23;
  v77 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = 0;
  v74 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v75 = &block_descriptor_115;
  v26 = _Block_copy(&aBlock);

  [v28 modifyDevice:v27 settings:v47 completion:v26];
  _Block_release(v26);
  MEMORY[0x1E69E5920](v27);
  return MEMORY[0x1E69E5920](v28);
}

uint64_t closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(void *a1, uint64_t a2, void *a3)
{
  v105 = a1;
  v97 = a2;
  v96 = a3;
  v85 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v86 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v87 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:);
  v91 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v94 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v95 = 0;
  v111 = 0;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v39 - v101;
  v103 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v39 - v103;
  v119 = v5;
  v118 = v6;
  v117 = v7;
  v8 = v5;
  if (v105)
  {
    v84 = v105;
    v22 = v102;
    v57 = v105;
    v111 = v105;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v22, v23, v98);
    v24 = v57;
    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v25 = swift_allocObject();
    v26 = v61;
    v62 = v25;
    *(v25 + 16) = v85;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v62;
    v66 = v27;
    *(v27 + 16) = v86;
    *(v27 + 24) = v28;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v29;

    v30 = v63;
    v31 = v67;
    *v67 = v87;
    v31[1] = v30;

    v32 = v64;
    v33 = v67;
    v67[2] = v88;
    v33[3] = v32;

    v34 = v66;
    v35 = v67;
    v67[4] = v89;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v36 = v95;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0);
      v52 = createStorage<A>(capacity:type:)(1);
      v53 = &v110;
      v110 = v50;
      v54 = &v109;
      v109 = v51;
      v55 = &v108;
      v108 = v52;
      serialize(_:at:)(2, &v110);
      serialize(_:at:)(1, v53);
      v106 = v87;
      v107 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v106, v53, v54, v55);
      v56 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v106 = v88;
        v107 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        v48 = 0;
        v106 = v89;
        v107 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
        _os_log_impl(&dword_1D93D0000, v69, v70, "HeadphoneManager: Update Offline Device Config Failed, Error: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v99 + 8))(v102, v98);
  }

  else
  {
    v9 = v104;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v99 + 16))(v9, v10, v98);
    MEMORY[0x1E69E5928](v97);
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v97;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v11 = swift_allocObject();
    v12 = v74;
    v75 = v11;
    *(v11 + 16) = v90;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v75;
    v79 = v13;
    *(v13 + 16) = v91;
    *(v13 + 24) = v14;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v78 = _allocateUninitializedArray<A>(_:)();
    v80 = v15;

    v16 = v76;
    v17 = v80;
    *v80 = v92;
    v17[1] = v16;

    v18 = v77;
    v19 = v80;
    v80[2] = v93;
    v19[3] = v18;

    v20 = v79;
    v21 = v80;
    v80[4] = v94;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v82, v83))
    {
      v37 = v95;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(1);
      v43 = createStorage<A>(capacity:type:)(0);
      v44 = &v116;
      v116 = v41;
      v45 = &v115;
      v115 = v42;
      v46 = &v114;
      v114 = v43;
      serialize(_:at:)(2, &v116);
      serialize(_:at:)(1, v44);
      v112 = v92;
      v113 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v112, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v112 = v93;
        v113 = v77;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        v39 = 0;
        v112 = v94;
        v113 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
        _os_log_impl(&dword_1D93D0000, v82, v83, "HeadphoneManager: Successfully Updated Offline Device Config: %@", v41, 0xCu);
        destroyStorage<A>(_:count:)(v42, 1, v40);
        destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v99 + 8))(v104, v98);
  }

  return (*((*v96 & *MEMORY[0x1E69E7D40]) + 0x278))(0);
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.disconnect(hpDevice:)(void *a1)
{
  v22 = a1;
  v21 = v1;
  v9 = MEMORY[0x1E69E7D40];
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x120))();
  v7 = (*((*a1 & *v9) + 0x228))();
  [v6 setPeerDevice_];
  MEMORY[0x1E69E5920](v6);
  v2 = MEMORY[0x1E69E5920](v7);
  v8 = (*((*v10 & *v9) + 0x120))(v2);
  [v8 setServiceFlags_];
  v3 = MEMORY[0x1E69E5920](v8);
  v13 = (*((*v10 & *v9) + 0x120))(v3);
  MEMORY[0x1E69E5928](a1);
  (MEMORY[0x1E69E5928])();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v10;
  v19 = partial apply for closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v20 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = 0;
  v17 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v18 = &block_descriptor_121;
  v12 = _Block_copy(&aBlock);

  [v13 disconnectWithCompletion_];
  _Block_release(v12);
  return MEMORY[0x1E69E5920](v13);
}

void closure #1 in Headphone_Manager.disconnect(hpDevice:)(void *a1, uint64_t a2, void *a3)
{
  v108 = a1;
  v100 = a2;
  v99 = a3;
  v88 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v89 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v90 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v92 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.disconnect(hpDevice:);
  v94 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v95 = closure #1 in OSLogArguments.append(_:)partial apply;
  v96 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v98 = 0;
  v114 = 0;
  v101 = type metadata accessor for Logger();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v108);
  v105 = &v40 - v104;
  v106 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v40 - v106;
  v122 = v5;
  v121 = v6;
  v120 = v7;
  v8 = v5;
  if (v108)
  {
    v87 = v108;
    v22 = v105;
    v60 = v108;
    v114 = v108;
    v23 = Logger.shared.unsafeMutableAddressor();
    (*(v102 + 16))(v22, v23, v101);
    v24 = v60;
    v63 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v62 = 32;
    v25 = swift_allocObject();
    v26 = v64;
    v65 = v25;
    *(v25 + 16) = v88;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v65;
    v69 = v27;
    *(v27 + 16) = v89;
    *(v27 + 24) = v28;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v68 = _allocateUninitializedArray<A>(_:)();
    v70 = v29;

    v30 = v66;
    v31 = v70;
    *v70 = v90;
    v31[1] = v30;

    v32 = v67;
    v33 = v70;
    v70[2] = v91;
    v33[3] = v32;

    v34 = v69;
    v35 = v70;
    v70[4] = v92;
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v72, v73))
    {
      v36 = v98;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0);
      v55 = createStorage<A>(capacity:type:)(1);
      v56 = &v113;
      v113 = v53;
      v57 = &v112;
      v112 = v54;
      v58 = &v111;
      v111 = v55;
      serialize(_:at:)(2, &v113);
      serialize(_:at:)(1, v56);
      v109 = v90;
      v110 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v109, v56, v57, v58);
      v59 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v109 = v91;
        v110 = v67;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v51 = 0;
        v109 = v92;
        v110 = v69;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        _os_log_impl(&dword_1D93D0000, v72, v73, "HeadphoneManager: Disconnect Failed, Error: %s", v53, 0xCu);
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v53, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v72);
    (*(v102 + 8))(v105, v101);
  }

  else
  {
    v9 = v107;
    v10 = Logger.shared.unsafeMutableAddressor();
    (*(v102 + 16))(v9, v10, v101);
    MEMORY[0x1E69E5928](v100);
    v76 = 7;
    v77 = swift_allocObject();
    *(v77 + 16) = v100;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    v74 = 17;
    v79 = swift_allocObject();
    *(v79 + 16) = 32;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v75 = 32;
    v11 = swift_allocObject();
    v12 = v77;
    v78 = v11;
    *(v11 + 16) = v93;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v78;
    v82 = v13;
    *(v13 + 16) = v94;
    *(v13 + 24) = v14;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v81 = _allocateUninitializedArray<A>(_:)();
    v83 = v15;

    v16 = v79;
    v17 = v83;
    *v83 = v95;
    v17[1] = v16;

    v18 = v80;
    v19 = v83;
    v83[2] = v96;
    v19[3] = v18;

    v20 = v82;
    v21 = v83;
    v83[4] = v97;
    v21[5] = v20;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v85, v86))
    {
      v37 = v98;
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = createStorage<A>(capacity:type:)(0);
      v46 = createStorage<A>(capacity:type:)(1);
      v47 = &v119;
      v119 = v44;
      v48 = &v118;
      v118 = v45;
      v49 = &v117;
      v117 = v46;
      serialize(_:at:)(2, &v119);
      serialize(_:at:)(1, v47);
      v115 = v95;
      v116 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v115, v47, v48, v49);
      v50 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v115 = v96;
        v116 = v80;
        closure #1 in osLogInternal(_:log:type:)(&v115, &v119, &v118, &v117);
        v42 = 0;
        v115 = v97;
        v116 = v82;
        closure #1 in osLogInternal(_:log:type:)(&v115, &v119, &v118, &v117);
        _os_log_impl(&dword_1D93D0000, v85, v86, "HeadphoneManager: Disconnected from %s", v44, 0xCu);
        destroyStorage<A>(_:count:)(v45, 0, v43);
        destroyStorage<A>(_:count:)(v46, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v44, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v38 = v99;
    MEMORY[0x1E69E5920](v85);
    v39 = (*(v102 + 8))(v107, v101);
    v41 = (*((*v38 & *MEMORY[0x1E69E7D40]) + 0x120))(v39);
    [v41 invalidate];
    MEMORY[0x1E69E5920](v41);
  }
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.disconnect(hpDevice:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t Headphone_Manager.unpair(hpDevice:)(void *a1)
{
  v17 = a1;
  v16 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v8 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x108))();
  v7 = (*((*a1 & *v4) + 0x228))();
  MEMORY[0x1E69E5928](a1);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v14 = partial apply for closure #1 in Headphone_Manager.unpair(hpDevice:);
  v15 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v13 = &block_descriptor_127;
  v6 = _Block_copy(&aBlock);

  [v8 deleteDevice:v7 completion:v6];
  _Block_release(v6);
  MEMORY[0x1E69E5920](v7);
  return MEMORY[0x1E69E5920](v8);
}

void closure #1 in Headphone_Manager.unpair(hpDevice:)(void *a1, uint64_t a2)
{
  v101 = a1;
  v93 = a2;
  v82 = partial apply for implicit closure #1 in closure #1 in Headphone_Manager.unpair(hpDevice:);
  v83 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v84 = closure #1 in OSLogArguments.append(_:)partial apply;
  v85 = closure #1 in OSLogArguments.append(_:)partial apply;
  v86 = closure #1 in OSLogArguments.append(_:)partial apply;
  v87 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.unpair(hpDevice:);
  v88 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v90 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v114 = 0;
  v113 = 0;
  v92 = 0;
  v107 = 0;
  v94 = type metadata accessor for Logger();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v101);
  v98 = &v36 - v97;
  v99 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v36 - v99;
  v114 = v4;
  v113 = v5;
  v6 = v4;
  if (v101)
  {
    v81 = v101;
    v20 = v98;
    v54 = v101;
    v107 = v101;
    v21 = Logger.shared.unsafeMutableAddressor();
    (*(v95 + 16))(v20, v21, v94);
    v22 = v54;
    v57 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    v55 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v56 = 32;
    v23 = swift_allocObject();
    v24 = v58;
    v59 = v23;
    *(v23 + 16) = v82;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v59;
    v63 = v25;
    *(v25 + 16) = v83;
    *(v25 + 24) = v26;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v62 = _allocateUninitializedArray<A>(_:)();
    v64 = v27;

    v28 = v60;
    v29 = v64;
    *v64 = v84;
    v29[1] = v28;

    v30 = v61;
    v31 = v64;
    v64[2] = v85;
    v31[3] = v30;

    v32 = v63;
    v33 = v64;
    v64[4] = v86;
    v33[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v66, v67))
    {
      v34 = v92;
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = createStorage<A>(capacity:type:)(0);
      v49 = createStorage<A>(capacity:type:)(1);
      v50 = &v106;
      v106 = v47;
      v51 = &v105;
      v105 = v48;
      v52 = &v104;
      v104 = v49;
      serialize(_:at:)(2, &v106);
      serialize(_:at:)(1, v50);
      v102 = v84;
      v103 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v102, v50, v51, v52);
      v53 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v102 = v85;
        v103 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
        v45 = 0;
        v102 = v86;
        v103 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
        _os_log_impl(&dword_1D93D0000, v66, v67, "HeadphoneManager: Forget this device Failed, Error: %s", v47, 0xCu);
        destroyStorage<A>(_:count:)(v48, 0, v46);
        destroyStorage<A>(_:count:)(v49, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v47, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v66);
    (*(v95 + 8))(v98, v94);
  }

  else
  {
    v7 = v100;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v95 + 16))(v7, v8, v94);
    MEMORY[0x1E69E5928](v93);
    v70 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v93;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v68 = 17;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v69 = 32;
    v9 = swift_allocObject();
    v10 = v71;
    v72 = v9;
    *(v9 + 16) = v87;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v72;
    v76 = v11;
    *(v11 + 16) = v88;
    *(v11 + 24) = v12;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v75 = _allocateUninitializedArray<A>(_:)();
    v77 = v13;

    v14 = v73;
    v15 = v77;
    *v77 = v89;
    v15[1] = v14;

    v16 = v74;
    v17 = v77;
    v77[2] = v90;
    v17[3] = v16;

    v18 = v76;
    v19 = v77;
    v77[4] = v91;
    v19[5] = v18;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v79, v80))
    {
      v35 = v92;
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = createStorage<A>(capacity:type:)(0);
      v40 = createStorage<A>(capacity:type:)(1);
      v41 = &v112;
      v112 = v38;
      v42 = &v111;
      v111 = v39;
      v43 = &v110;
      v110 = v40;
      serialize(_:at:)(2, &v112);
      serialize(_:at:)(1, v41);
      v108 = v89;
      v109 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v108, v41, v42, v43);
      v44 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v108 = v90;
        v109 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v112, &v111, &v110);
        v36 = 0;
        v108 = v91;
        v109 = v76;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_1D93D0000, v79, v80, "HeadphoneManager: Forget %s", v38, 0xCu);
        destroyStorage<A>(_:count:)(v39, 0, v37);
        destroyStorage<A>(_:count:)(v40, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v38, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
    (*(v95 + 8))(v100, v94);
  }
}

uint64_t implicit closure #1 in closure #1 in Headphone_Manager.unpair(hpDevice:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

void *Headphone_Manager.headphoneDevice(forAddress:)(uint64_t a1, uint64_t a2)
{
  v226 = a1;
  v225 = a2;
  v204 = implicit closure #3 in Headphone_Manager.headphoneDevice(forAddress:);
  v205 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v206 = partial apply for implicit closure #4 in Headphone_Manager.headphoneDevice(forAddress:);
  v207 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:)partial apply;
  v208 = closure #1 in OSLogArguments.append(_:)partial apply;
  v209 = closure #1 in OSLogArguments.append(_:)partial apply;
  v210 = closure #1 in OSLogArguments.append(_:)partial apply;
  v211 = closure #1 in OSLogArguments.append(_:)partial apply;
  v212 = closure #1 in OSLogArguments.append(_:)partial apply;
  v213 = closure #1 in OSLogArguments.append(_:)partial apply;
  v214 = implicit closure #2 in Headphone_Manager.headphoneDevice(forAddress:);
  v215 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v216 = closure #1 in OSLogArguments.append(_:)partial apply;
  v217 = closure #1 in OSLogArguments.append(_:)partial apply;
  v218 = closure #1 in OSLogArguments.append(_:)partial apply;
  v219 = implicit closure #1 in Headphone_Manager.headphoneDevice(forAddress:);
  v220 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v221 = closure #1 in OSLogArguments.append(_:)partial apply;
  v222 = closure #1 in OSLogArguments.append(_:)partial apply;
  v223 = closure #1 in OSLogArguments.append(_:)partial apply;
  v288 = 0;
  v289 = 0;
  v287 = 0;
  v281 = 0;
  v282 = 0;
  v224 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v257 = 0;
  v258 = 0;
  v251 = 0;
  v249 = 0;
  v244 = 0;
  v227 = type metadata accessor for Logger();
  v228 = *(v227 - 8);
  v229 = v227 - 8;
  v230 = (*(v228 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v226);
  v231 = v81 - v230;
  v232 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v233 = v81 - v232;
  v234 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v235 = v81 - v234;
  v288 = v7;
  v289 = v8;
  v287 = v2;
  v285 = v7;
  v286 = v8;
  v236 = 1;
  v238 = 1;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v241 = &v284;
  v284 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", v236, v238 & 1);
  v240 = &v283;
  v283 = v10;
  v237 = lazy protocol witness table accessor for type String and conformance String();
  v245 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v12 = v239;
  v242 = v11;
  v243 = v13;
  outlined destroy of String(v240);
  outlined destroy of String(v241);
  v281 = v242;
  v282 = v243;

  v246 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v14);
  v247 = v279;
  v279[0] = v242;
  v279[1] = v243;
  v15 = type metadata accessor for HeadphoneDevice();
  MEMORY[0x1DA7308E0](&v280, v247, v246, v245, v15, MEMORY[0x1E69E6168]);
  outlined destroy of String(v247);
  v248 = v280;
  if (v280)
  {
    v203 = v248;
    v201 = v248;
    v249 = v248;

    return v201;
  }

  v16 = v239;

  v199 = (*((*v16 & *MEMORY[0x1E69E7D40]) + 0x138))(v17);
  v277 = v226;
  v278 = v225;
  v191 = 1;
  v192 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v195 = &v276;
  v276 = v18;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", v191, v192 & 1);
  v194 = &v275;
  v275 = v19;
  v193 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v196 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v197 = v20;
  outlined destroy of String(v194);
  outlined destroy of String(v195);
  v198 = MEMORY[0x1DA730940](v196, v197);

  v200 = [v199 fetchAudioAccessoryDeviceForBTAddress_];
  MEMORY[0x1E69E5920](v198);
  MEMORY[0x1E69E5920](v199);
  if (v200)
  {
    v190 = v200;
    v188 = v200;
    v269 = v200;
    v21 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(v200);
    v189 = v21;
    if (v21)
    {
      v187 = v189;
      v22 = v239;
      v185 = v189;
      v268 = v189;
      MEMORY[0x1E69E5928](v239);
      v180 = [v188 headphoneDeviceWithCbDevice:v185 withDelegate:v22];
      swift_unknownObjectRelease();
      v267 = v180;

      MEMORY[0x1E69E5928](v180);
      v182 = &v266;
      v266 = v180;
      v181 = v265;
      v265[0] = v242;
      v265[1] = v243;
      v23 = *((*v22 & *MEMORY[0x1E69E7D40]) + 0x1F0);
      v183 = &v264;
      v184 = v23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
      Dictionary.subscript.setter();
      v184();
      v24 = [v185 identifier];
      v186 = v24;
      if (v24)
      {
        v179 = v186;
        v174 = v186;
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v25;
        MEMORY[0x1E69E5920](v174);
        v177 = v175;
        v178 = v176;
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      v172 = v178;
      v173 = v177;
      if (v178)
      {
        v170 = v173;
        v171 = v172;
        v166 = v172;
        v165 = v173;
        v257 = v173;
        v258 = v172;
        v164 = *Headphone_Manager.shared.unsafeMutableAddressor();
        v26 = v164;
        v27 = MEMORY[0x1E69E5928](v164);
        v168 = (*((*v26 & *MEMORY[0x1E69E7D40]) + 0x150))(v27);
        MEMORY[0x1E69E5920](v164);

        v167 = MEMORY[0x1DA730940](v165, v166);

        v169 = [v168 fetchHearingModeDeviceRecordForIdentifier_];
        MEMORY[0x1E69E5920](v167);
        MEMORY[0x1E69E5920](v168);
        if (v169)
        {
          v163 = v169;
          v160 = v169;
          v251 = v169;
          v28 = *v180;
          v162 = MEMORY[0x1E69E7D40];
          v161 = (*((v28 & *MEMORY[0x1E69E7D40]) + 0xA50))();
          (*((*v161 & *v162) + 0x768))(v160);
          v29 = v239;
          v30 = MEMORY[0x1E69E5920](v161);
          v250 = (*((*v29 & *v162) + 0xD8))(v30);
          if (v250)
          {
            v158 = &v250;
            v159 = v250;
            swift_unknownObjectRetain();
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(v158);
            swift_getObjectType();
            [v159 addTopLevelEntryWithHpDevice_];
            swift_unknownObjectRelease();
          }

          else
          {
            outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v250);
          }

          v157 = v180;
          MEMORY[0x1E69E5920](v160);

          MEMORY[0x1E69E5920](v185);
          MEMORY[0x1E69E5920](v188);

          return v157;
        }

        else
        {
          v31 = v235;
          v32 = Logger.shared.unsafeMutableAddressor();
          (*(v228 + 16))(v31, v32, v227);
          MEMORY[0x1E69E5928](v180);
          v143 = 7;
          v144 = swift_allocObject();
          *(v144 + 16) = v180;
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.error.getter();
          v140 = 17;
          v146 = swift_allocObject();
          *(v146 + 16) = 32;
          v147 = swift_allocObject();
          v141 = 8;
          *(v147 + 16) = 8;
          v142 = 32;
          v33 = swift_allocObject();
          v139 = v33;
          *(v33 + 16) = v204;
          *(v33 + 24) = 0;
          v34 = swift_allocObject();
          v35 = v139;
          v148 = v34;
          *(v34 + 16) = v205;
          *(v34 + 24) = v35;
          v149 = swift_allocObject();
          *(v149 + 16) = 64;
          v150 = swift_allocObject();
          *(v150 + 16) = v141;
          v36 = swift_allocObject();
          v37 = v144;
          v145 = v36;
          *(v36 + 16) = v206;
          *(v36 + 24) = v37;
          v38 = swift_allocObject();
          v39 = v145;
          v152 = v38;
          *(v38 + 16) = v207;
          *(v38 + 24) = v39;
          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v151 = _allocateUninitializedArray<A>(_:)();
          v153 = v40;

          v41 = v146;
          v42 = v153;
          *v153 = v208;
          v42[1] = v41;

          v43 = v147;
          v44 = v153;
          v153[2] = v209;
          v44[3] = v43;

          v45 = v148;
          v46 = v153;
          v153[4] = v210;
          v46[5] = v45;

          v47 = v149;
          v48 = v153;
          v153[6] = v211;
          v48[7] = v47;

          v49 = v150;
          v50 = v153;
          v153[8] = v212;
          v50[9] = v49;

          v51 = v152;
          v52 = v153;
          v153[10] = v213;
          v52[11] = v51;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v155, v156))
          {
            v53 = v224;
            v131 = static UnsafeMutablePointer.allocate(capacity:)();
            v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v130 = 1;
            v132 = createStorage<A>(capacity:type:)(1);
            v133 = createStorage<A>(capacity:type:)(v130);
            v135 = &v256;
            v256 = v131;
            v136 = &v255;
            v255 = v132;
            v137 = &v254;
            v254 = v133;
            v134 = 2;
            serialize(_:at:)(2, &v256);
            serialize(_:at:)(v134, v135);
            v252 = v208;
            v253 = v146;
            closure #1 in osLogInternal(_:log:type:)(&v252, v135, v136, v137);
            v138 = v53;
            if (v53)
            {

              __break(1u);
            }

            else
            {
              v252 = v209;
              v253 = v147;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v128 = 0;
              v252 = v210;
              v253 = v148;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v127 = 0;
              v252 = v211;
              v253 = v149;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v126 = 0;
              v252 = v212;
              v253 = v150;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              v125 = 0;
              v252 = v213;
              v253 = v152;
              closure #1 in osLogInternal(_:log:type:)(&v252, &v256, &v255, &v254);
              _os_log_impl(&dword_1D93D0000, v155, v156, "HeadphoneManager: %s: sync fetch returned nil returning device %@", v131, 0x16u);
              v124 = 1;
              destroyStorage<A>(_:count:)(v132, 1, v129);
              destroyStorage<A>(_:count:)(v133, v124, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v131, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v155);
          (*(v228 + 8))(v235, v227);
          v123 = v180;

          MEMORY[0x1E69E5920](v185);
          MEMORY[0x1E69E5920](v188);

          return v123;
        }
      }

      else
      {
        v54 = v233;
        v55 = Logger.shared.unsafeMutableAddressor();
        (*(v228 + 16))(v54, v55, v227);
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        v111 = 17;
        v113 = 7;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v112 = 32;
        v56 = swift_allocObject();
        v114 = v56;
        *(v56 + 16) = v214;
        *(v56 + 24) = 0;
        v57 = swift_allocObject();
        v58 = v114;
        v118 = v57;
        *(v57 + 16) = v215;
        *(v57 + 24) = v58;
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v117 = _allocateUninitializedArray<A>(_:)();
        v119 = v59;

        v60 = v115;
        v61 = v119;
        *v119 = v216;
        v61[1] = v60;

        v62 = v116;
        v63 = v119;
        v119[2] = v217;
        v63[3] = v62;

        v64 = v118;
        v65 = v119;
        v119[4] = v218;
        v65[5] = v64;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v121, v122))
        {
          v66 = v224;
          v104 = static UnsafeMutablePointer.allocate(capacity:)();
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v105 = createStorage<A>(capacity:type:)(0);
          v106 = createStorage<A>(capacity:type:)(1);
          v107 = &v263;
          v263 = v104;
          v108 = &v262;
          v262 = v105;
          v109 = &v261;
          v261 = v106;
          serialize(_:at:)(2, &v263);
          serialize(_:at:)(1, v107);
          v259 = v216;
          v260 = v115;
          closure #1 in osLogInternal(_:log:type:)(&v259, v107, v108, v109);
          v110 = v66;
          if (v66)
          {

            __break(1u);
          }

          else
          {
            v259 = v217;
            v260 = v116;
            closure #1 in osLogInternal(_:log:type:)(&v259, &v263, &v262, &v261);
            v102 = 0;
            v259 = v218;
            v260 = v118;
            closure #1 in osLogInternal(_:log:type:)(&v259, &v263, &v262, &v261);
            _os_log_impl(&dword_1D93D0000, v121, v122, "HeadphoneManager: %s: uuidString lookup for HR Fetch failed!", v104, 0xCu);
            destroyStorage<A>(_:count:)(v105, 0, v103);
            destroyStorage<A>(_:count:)(v106, 1, MEMORY[0x1E69E7CA0] + 8);
            MEMORY[0x1DA730D30](v104, MEMORY[0x1E69E7508]);
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v121);
        (*(v228 + 8))(v233, v227);
        MEMORY[0x1E69E5920](v180);
        MEMORY[0x1E69E5920](v185);
        MEMORY[0x1E69E5920](v188);

        return 0;
      }
    }

    MEMORY[0x1E69E5920](v188);
  }

  v67 = v231;
  v68 = Logger.shared.unsafeMutableAddressor();
  (*(v228 + 16))(v67, v68, v227);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  v90 = 17;
  v92 = 7;
  v94 = swift_allocObject();
  *(v94 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v91 = 32;
  v69 = swift_allocObject();
  v93 = v69;
  *(v69 + 16) = v219;
  *(v69 + 24) = 0;
  v70 = swift_allocObject();
  v71 = v93;
  v97 = v70;
  *(v70 + 16) = v220;
  *(v70 + 24) = v71;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v96 = _allocateUninitializedArray<A>(_:)();
  v98 = v72;

  v73 = v94;
  v74 = v98;
  *v98 = v221;
  v74[1] = v73;

  v75 = v95;
  v76 = v98;
  v98[2] = v222;
  v76[3] = v75;

  v77 = v97;
  v78 = v98;
  v98[4] = v223;
  v78[5] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v100, v101))
  {
    v79 = v224;
    v83 = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0);
    v85 = createStorage<A>(capacity:type:)(1);
    v86 = &v274;
    v274 = v83;
    v87 = &v273;
    v273 = v84;
    v88 = &v272;
    v272 = v85;
    serialize(_:at:)(2, &v274);
    serialize(_:at:)(1, v86);
    v270 = v221;
    v271 = v94;
    closure #1 in osLogInternal(_:log:type:)(&v270, v86, v87, v88);
    v89 = v79;
    if (v79)
    {

      __break(1u);
    }

    else
    {
      v270 = v222;
      v271 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v270, &v274, &v273, &v272);
      v81[1] = 0;
      v270 = v223;
      v271 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v270, &v274, &v273, &v272);
      _os_log_impl(&dword_1D93D0000, v100, v101, "HeadphoneManager: %s: AAF Device: is missing cbDevice early exit found handler", v83, 0xCu);
      destroyStorage<A>(_:count:)(v84, 0, v82);
      destroyStorage<A>(_:count:)(v85, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v83, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v100);
  (*(v228 + 8))(v231, v227);

  return 0;
}

uint64_t static Headphone_Manager.pairedHeadphones()()
{
  v56 = implicit closure #1 in static Headphone_Manager.pairedHeadphones();
  v59 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v66 = closure #1 in OSLogArguments.append(_:)partial apply;
  v48 = closure #1 in static Headphone_Manager.pairedHeadphones();
  v81 = 0;
  v80 = 0;
  v49 = 0;
  v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  v50 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v0 = v19 - v50;
  v51 = v19 - v50;
  v81 = v1;
  v2 = Logger.shared.unsafeMutableAddressor();
  (*(v52 + 16))(v0, v2, v54);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  v55 = 17;
  v58 = 7;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v57 = 32;
  v3 = swift_allocObject();
  v60 = v3;
  *(v3 + 16) = v56;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v60;
  v67 = v4;
  *(v4 + 16) = v59;
  *(v4 + 24) = v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v6;

  v7 = v62;
  v8 = v68;
  *v68 = v61;
  v8[1] = v7;

  v9 = v64;
  v10 = v68;
  v68[2] = v63;
  v10[3] = v9;

  v11 = v67;
  v12 = v68;
  v68[4] = v66;
  v12[5] = v11;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v13 = v49;
    v41 = static UnsafeMutablePointer.allocate(capacity:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = createStorage<A>(capacity:type:)(0);
    v43 = createStorage<A>(capacity:type:)(1);
    v44 = &v76;
    v76 = v41;
    v45 = &v75;
    v75 = v42;
    v46 = &v74;
    v74 = v43;
    serialize(_:at:)(2, &v76);
    serialize(_:at:)(1, v44);
    v72 = v61;
    v73 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v72, v44, v45, v46);
    v47 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v38 = 0;
      v72 = v66;
      v73 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v37 = 0;
      _os_log_impl(&dword_1D93D0000, v70, v71, "HeadphoneManager: %s start", v41, 0xCu);
      destroyStorage<A>(_:count:)(v42, 0, v40);
      destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);

      v39 = v37;
    }
  }

  else
  {
    v14 = v49;

    v39 = v14;
  }

  v33 = v39;
  MEMORY[0x1E69E5920](v70);
  (*(v52 + 8))(v51, v54);
  v34 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v15 = v34;
  v16 = MEMORY[0x1E69E5928](v34);
  v35 = (*((*v15 & *MEMORY[0x1E69E7D40]) + 0x138))(v16);
  MEMORY[0x1E69E5920](v34);
  v36 = [v35 fetchPairedAudioAccessoryDevices];
  MEMORY[0x1E69E5920](v35);
  if (v36)
  {
    v32 = v36;
    v29 = v36;
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](v29);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v28 = v31;
  v80 = v31;

  if (v28)
  {
    v27 = v28;
    v17 = v33;
    v22 = v28;
    v23 = Dictionary.values.getter();

    v77 = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVys11AnyHashableVyp_GMd, &_sSD6ValuesVys11AnyHashableVyp_GMR);
    v25 = type metadata accessor for HeadphoneDevice();
    lazy protocol witness table accessor for type [AnyHashable : Any].Values and conformance [A : B].Values();
    result = Sequence.compactMap<A>(_:)();
    v26 = result;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v20 = v26;
    outlined destroy of [AnyHashable : Any].Values(&v77);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v78 = v21;
  if (v21)
  {
    v79 = v78;
  }

  else
  {
    v19[1] = 0;
    type metadata accessor for HeadphoneDevice();
    v79 = _allocateUninitializedArray<A>(_:)();
    if (v78)
    {
      outlined destroy of [HeadphoneDevice]?(&v78);
    }
  }

  v19[0] = v79;

  return v19[0];
}

uint64_t closure #1 in static Headphone_Manager.pairedHeadphones()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v237 = a2;
  v264 = a1;
  v239 = implicit closure #2 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v240 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v241 = partial apply for implicit closure #3 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v242 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v243 = closure #1 in OSLogArguments.append(_:)partial apply;
  v244 = closure #1 in OSLogArguments.append(_:)partial apply;
  v245 = closure #1 in OSLogArguments.append(_:)partial apply;
  v246 = closure #1 in OSLogArguments.append(_:)partial apply;
  v247 = closure #1 in OSLogArguments.append(_:)partial apply;
  v248 = closure #1 in OSLogArguments.append(_:)partial apply;
  v249 = implicit closure #6 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v250 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v251 = closure #1 in OSLogArguments.append(_:)partial apply;
  v252 = closure #1 in OSLogArguments.append(_:)partial apply;
  v253 = closure #1 in OSLogArguments.append(_:)partial apply;
  v254 = implicit closure #5 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v255 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v256 = closure #1 in OSLogArguments.append(_:)partial apply;
  v257 = closure #1 in OSLogArguments.append(_:)partial apply;
  v258 = closure #1 in OSLogArguments.append(_:)partial apply;
  v259 = implicit closure #1 in closure #1 in static Headphone_Manager.pairedHeadphones();
  v260 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v261 = closure #1 in OSLogArguments.append(_:)partial apply;
  v262 = closure #1 in OSLogArguments.append(_:)partial apply;
  v263 = closure #1 in OSLogArguments.append(_:)partial apply;
  v314 = 0;
  v311 = 0;
  v305 = 0;
  v298 = 0;
  v299 = 0;
  v292 = 0;
  v276 = 0;
  v265 = type metadata accessor for Logger();
  v266 = *(v265 - 8);
  v267 = v265 - 8;
  v268 = (v266[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v264);
  v269 = &v86 - v268;
  v270 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v271 = &v86 - v270;
  v272 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v273 = &v86 - v272;
  v274 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v275 = &v86 - v274;
  v314 = v8;
  v277 = v313;
  outlined init with copy of Any(v8, v313);
  type metadata accessor for AudioAccessoryDevice();
  swift_dynamicCast();
  v278 = v312;
  v311 = v312;
  v279 = AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(v312);
  if (v279)
  {
    v236 = v279;
    v21 = v273;
    v204 = v279;
    v305 = v279;
    v22 = Logger.shared.unsafeMutableAddressor();
    v202 = v266[2];
    v203 = v266 + 2;
    v202(v21, v22, v265);
    MEMORY[0x1E69E5928](v204);
    v210 = 7;
    v211 = swift_allocObject();
    *(v211 + 16) = v204;
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.default.getter();
    v207 = 17;
    v213 = swift_allocObject();
    v206 = 32;
    *(v213 + 16) = 32;
    v214 = swift_allocObject();
    v208 = 8;
    *(v214 + 16) = 8;
    v209 = 32;
    v23 = swift_allocObject();
    v205 = v23;
    *(v23 + 16) = v239;
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    v25 = v205;
    v215 = v24;
    *(v24 + 16) = v240;
    *(v24 + 24) = v25;
    v216 = swift_allocObject();
    *(v216 + 16) = v206;
    v217 = swift_allocObject();
    *(v217 + 16) = v208;
    v26 = swift_allocObject();
    v27 = v211;
    v212 = v26;
    *(v26 + 16) = v241;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v212;
    v219 = v28;
    *(v28 + 16) = v242;
    *(v28 + 24) = v29;
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v218 = _allocateUninitializedArray<A>(_:)();
    v220 = v30;

    v31 = v213;
    v32 = v220;
    *v220 = v243;
    v32[1] = v31;

    v33 = v214;
    v34 = v220;
    v220[2] = v244;
    v34[3] = v33;

    v35 = v215;
    v36 = v220;
    v220[4] = v245;
    v36[5] = v35;

    v37 = v216;
    v38 = v220;
    v220[6] = v246;
    v38[7] = v37;

    v39 = v217;
    v40 = v220;
    v220[8] = v247;
    v40[9] = v39;

    v41 = v219;
    v42 = v220;
    v220[10] = v248;
    v42[11] = v41;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v222, v223))
    {
      v194 = static UnsafeMutablePointer.allocate(capacity:)();
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v195 = createStorage<A>(capacity:type:)(0);
      v196 = createStorage<A>(capacity:type:)(2);
      v198 = &v284;
      v284 = v194;
      v199 = &v283;
      v283 = v195;
      v200 = &v282;
      v282 = v196;
      v197 = 2;
      serialize(_:at:)(2, &v284);
      serialize(_:at:)(v197, v198);
      v43 = v238;
      v280 = v243;
      v281 = v213;
      closure #1 in osLogInternal(_:log:type:)(&v280, v198, v199, v200);
      v201 = v43;
      if (v43)
      {

        __break(1u);
      }

      else
      {
        v280 = v244;
        v281 = v214;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v191 = 0;
        v280 = v245;
        v281 = v215;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v190 = 0;
        v280 = v246;
        v281 = v216;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v189 = 0;
        v280 = v247;
        v281 = v217;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v188 = 0;
        v280 = v248;
        v281 = v219;
        closure #1 in osLogInternal(_:log:type:)(&v280, &v284, &v283, &v282);
        v187 = 0;
        _os_log_impl(&dword_1D93D0000, v222, v223, "HeadphoneManager: %s %s", v194, 0x16u);
        destroyStorage<A>(_:count:)(v195, 0, v193);
        destroyStorage<A>(_:count:)(v196, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v194, MEMORY[0x1E69E7508]);

        v192 = v187;
      }
    }

    else
    {

      v192 = v238;
    }

    v183 = v192;
    MEMORY[0x1E69E5920](v222);
    v184 = v266[1];
    v185 = v266 + 1;
    v184(v273, v265);
    v186 = [v204 btAddressData];
    if (v186)
    {
      v182 = v186;
      v177 = v186;
      v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v44;
      MEMORY[0x1E69E5920](v177);
      v180 = v178;
      v181 = v179;
    }

    else
    {
      v180 = 0;
      v181 = 0xF000000000000000;
    }

    v175 = v181;
    v176 = v180;
    if ((v181 & 0xF000000000000000) != 0xF000000000000000)
    {
      v173 = v176;
      v174 = v175;
      v171 = v175;
      v172 = v176;
      v298 = v176;
      v299 = v175;
      if (MEMORY[0x1DA730470]() == 6)
      {
        v169 = *Headphone_Manager.shared.unsafeMutableAddressor();
        v45 = v169;
        MEMORY[0x1E69E5928](v169);
        v170 = (*((*v45 & *MEMORY[0x1E69E7D40]) + 0x270))(v204);
        MEMORY[0x1E69E5920](v169);
        if (v170)
        {
          v159 = *Headphone_Manager.shared.unsafeMutableAddressor();
          MEMORY[0x1E69E5928](v159);
          v46 = [v278 headphoneDeviceWithCbDevice:v204 withDelegate:v159];
          v160 = v46;
          swift_unknownObjectRelease();
          v292 = v46;
          v47 = *v46;
          v161 = MEMORY[0x1E69E7D40];
          (*((v47 & *MEMORY[0x1E69E7D40]) + 0x398))(0);
          v167 = *Headphone_Manager.shared.unsafeMutableAddressor();
          v48 = v167;
          MEMORY[0x1E69E5928](v167);
          v162 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
          v163 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

          v164 = (*((*v48 & *v161) + 0x210))(v49);
          v166 = v290;
          v290[0] = v162;
          v290[1] = v163;
          v165 = type metadata accessor for HeadphoneDevice();
          MEMORY[0x1DA7308E0](&v291, v166, v164, MEMORY[0x1E69E6158]);
          outlined destroy of String(v166);
          v168 = v291;
          MEMORY[0x1E69E5920](v167);
          v289 = v168;
          v158 = v168 == 0;
          v157 = v158;
          outlined destroy of HeadphoneDevice?(&v289);

          if (v157)
          {
            v156 = *Headphone_Manager.shared.unsafeMutableAddressor();
            v50 = v156;
            MEMORY[0x1E69E5928](v156);
            v150 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
            v151 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

            MEMORY[0x1E69E5928](v160);
            v153 = &v287;
            v287 = v160;
            v152 = v286;
            v286[0] = v150;
            v286[1] = v151;
            v51 = *((*v50 & *MEMORY[0x1E69E7D40]) + 0x220);
            v154 = &v285;
            v155 = v51();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
            Dictionary.subscript.setter();
            v155();
            MEMORY[0x1E69E5920](v156);
          }

          v147 = *Headphone_Manager.shared.unsafeMutableAddressor();
          v52 = v147;
          MEMORY[0x1E69E5928](v147);
          v144 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
          v145 = *(v160 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

          v148 = (*((*v52 & *MEMORY[0x1E69E7D40]) + 0x210))(v53);
          v146 = v288;
          v288[0] = v144;
          v288[1] = v145;
          MEMORY[0x1DA7308E0]();
          outlined destroy of String(v146);
          MEMORY[0x1E69E5920](v147);

          MEMORY[0x1E69E5920](v160);
          outlined consume of Data._Representation(v172, v171);
          MEMORY[0x1E69E5920](v204);
          MEMORY[0x1E69E5920](v278);
          result = v183;
          v149 = v183;
        }

        else
        {
          v55 = v271;
          v56 = Logger.shared.unsafeMutableAddressor();
          v202(v55, v56, v265);
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();
          v133 = 17;
          v135 = 7;
          v137 = swift_allocObject();
          *(v137 + 16) = 32;
          v138 = swift_allocObject();
          *(v138 + 16) = 8;
          v134 = 32;
          v57 = swift_allocObject();
          v136 = v57;
          *(v57 + 16) = v249;
          *(v57 + 24) = 0;
          v58 = swift_allocObject();
          v59 = v136;
          v140 = v58;
          *(v58 + 16) = v250;
          *(v58 + 24) = v59;
          v139 = _allocateUninitializedArray<A>(_:)();
          v141 = v60;

          v61 = v137;
          v62 = v141;
          *v141 = v251;
          v62[1] = v61;

          v63 = v138;
          v64 = v141;
          v141[2] = v252;
          v64[3] = v63;

          v65 = v140;
          v66 = v141;
          v141[4] = v253;
          v66[5] = v65;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v142, v143))
          {
            v126 = static UnsafeMutablePointer.allocate(capacity:)();
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v127 = createStorage<A>(capacity:type:)(0);
            v128 = createStorage<A>(capacity:type:)(1);
            v129 = &v297;
            v297 = v126;
            v130 = &v296;
            v296 = v127;
            v131 = &v295;
            v295 = v128;
            serialize(_:at:)(2, &v297);
            serialize(_:at:)(1, v129);
            v67 = v183;
            v293 = v251;
            v294 = v137;
            closure #1 in osLogInternal(_:log:type:)(&v293, v129, v130, v131);
            v132 = v67;
            if (v67)
            {

              __break(1u);
            }

            else
            {
              v293 = v252;
              v294 = v138;
              closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
              v123 = 0;
              v293 = v253;
              v294 = v140;
              closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
              v122 = 0;
              _os_log_impl(&dword_1D93D0000, v142, v143, "HeadphoneManager: %s Not Apple Headphone", v126, 0xCu);
              destroyStorage<A>(_:count:)(v127, 0, v125);
              destroyStorage<A>(_:count:)(v128, 1, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v126, MEMORY[0x1E69E7508]);

              v124 = v122;
            }
          }

          else
          {

            v124 = v183;
          }

          v121 = v124;
          MEMORY[0x1E69E5920](v142);
          v184(v271, v265);
          v68 = v172;
          v69 = v171;
          *v237 = 0;
          outlined consume of Data._Representation(v68, v69);
          MEMORY[0x1E69E5920](v204);
          MEMORY[0x1E69E5920](v278);
          result = v121;
          v149 = v121;
        }

        return result;
      }

      outlined consume of Data._Representation(v172, v171);
    }

    v70 = v269;
    v71 = Logger.shared.unsafeMutableAddressor();
    v202(v70, v71, v265);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    v110 = 17;
    v112 = 7;
    v114 = swift_allocObject();
    *(v114 + 16) = 32;
    v115 = swift_allocObject();
    *(v115 + 16) = 8;
    v111 = 32;
    v72 = swift_allocObject();
    v113 = v72;
    *(v72 + 16) = v254;
    *(v72 + 24) = 0;
    v73 = swift_allocObject();
    v74 = v113;
    v117 = v73;
    *(v73 + 16) = v255;
    *(v73 + 24) = v74;
    v116 = _allocateUninitializedArray<A>(_:)();
    v118 = v75;

    v76 = v114;
    v77 = v118;
    *v118 = v256;
    v77[1] = v76;

    v78 = v115;
    v79 = v118;
    v118[2] = v257;
    v79[3] = v78;

    v80 = v117;
    v81 = v118;
    v118[4] = v258;
    v81[5] = v80;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v119, v120))
    {
      v103 = static UnsafeMutablePointer.allocate(capacity:)();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v104 = createStorage<A>(capacity:type:)(0);
      v105 = createStorage<A>(capacity:type:)(1);
      v106 = &v304;
      v304 = v103;
      v107 = &v303;
      v303 = v104;
      v108 = &v302;
      v302 = v105;
      serialize(_:at:)(2, &v304);
      serialize(_:at:)(1, v106);
      v82 = v183;
      v300 = v256;
      v301 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v300, v106, v107, v108);
      v109 = v82;
      if (v82)
      {

        __break(1u);
      }

      else
      {
        v300 = v257;
        v301 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v300, &v304, &v303, &v302);
        v100 = 0;
        v300 = v258;
        v301 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v300, &v304, &v303, &v302);
        v99 = 0;
        _os_log_impl(&dword_1D93D0000, v119, v120, "HeadphoneManager: %s Invalid BT Address", v103, 0xCu);
        destroyStorage<A>(_:count:)(v104, 0, v102);
        destroyStorage<A>(_:count:)(v105, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v103, MEMORY[0x1E69E7508]);

        v101 = v99;
      }
    }

    else
    {

      v101 = v183;
    }

    v98 = v101;
    MEMORY[0x1E69E5920](v119);
    v184(v269, v265);
    v83 = v204;
    *v237 = 0;
    MEMORY[0x1E69E5920](v83);
    MEMORY[0x1E69E5920](v278);
    result = v98;
    v149 = v98;
  }

  else
  {
    v9 = v275;
    v10 = Logger.shared.unsafeMutableAddressor();
    (v266[2])(v9, v10, v265);
    v234 = Logger.logObject.getter();
    v235 = static os_log_type_t.error.getter();
    v224 = 17;
    v226 = 7;
    v228 = swift_allocObject();
    *(v228 + 16) = 32;
    v229 = swift_allocObject();
    *(v229 + 16) = 8;
    v225 = 32;
    v11 = swift_allocObject();
    v227 = v11;
    *(v11 + 16) = v259;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v227;
    v231 = v12;
    *(v12 + 16) = v260;
    *(v12 + 24) = v13;
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v230 = _allocateUninitializedArray<A>(_:)();
    v232 = v14;

    v15 = v228;
    v16 = v232;
    *v232 = v261;
    v16[1] = v15;

    v17 = v229;
    v18 = v232;
    v232[2] = v262;
    v18[3] = v17;

    v19 = v231;
    v20 = v232;
    v232[4] = v263;
    v20[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v234, v235))
    {
      v91 = static UnsafeMutablePointer.allocate(capacity:)();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v92 = createStorage<A>(capacity:type:)(0);
      v93 = createStorage<A>(capacity:type:)(1);
      v94 = &v310;
      v310 = v91;
      v95 = &v309;
      v309 = v92;
      v96 = &v308;
      v308 = v93;
      serialize(_:at:)(2, &v310);
      serialize(_:at:)(1, v94);
      v84 = v238;
      v306 = v261;
      v307 = v228;
      closure #1 in osLogInternal(_:log:type:)(&v306, v94, v95, v96);
      v97 = v84;
      if (v84)
      {

        __break(1u);
      }

      else
      {
        v306 = v262;
        v307 = v229;
        closure #1 in osLogInternal(_:log:type:)(&v306, &v310, &v309, &v308);
        v88 = 0;
        v306 = v263;
        v307 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v306, &v310, &v309, &v308);
        v87 = 0;
        _os_log_impl(&dword_1D93D0000, v234, v235, "HeadphoneManager: %s is missing cbDevice early exit found handler", v91, 0xCu);
        destroyStorage<A>(_:count:)(v92, 0, v90);
        destroyStorage<A>(_:count:)(v93, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v91, MEMORY[0x1E69E7508]);

        v89 = v87;
      }
    }

    else
    {

      v89 = v238;
    }

    v86 = v89;
    MEMORY[0x1E69E5920](v234);
    (v266[1])(v275, v265);
    v85 = v278;
    *v237 = 0;
    MEMORY[0x1E69E5920](v85);
    return v86;
  }

  return result;
}

uint64_t implicit closure #3 in closure #1 in static Headphone_Manager.pairedHeadphones()(void *a1)
{
  v5 = [a1 name];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<Null>", 6uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t Headphone_Manager.getDeviceFromUUID(UUID:)(uint64_t a1, uint64_t a2)
{
  v10[1] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[0] = 0;
  v2 = Headphone_Manager.shared.unsafeMutableAddressor();
  v3 = *v2;
  v7 = *v2;
  v4 = MEMORY[0x1E69E5928](*v2);
  v8 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v4);
  MEMORY[0x1E69E5920](v7);
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
  lazy protocol witness table accessor for type [String : HeadphoneDevice] and conformance [A : B]();
  Sequence.forEach(_:)();

  outlined destroy of [String : HeadphoneDevice](&v9);
  v6 = v10[0];
  MEMORY[0x1E69E5928](v10[0]);
  outlined destroy of HeadphoneDevice?(v10);
  return v6;
}

uint64_t closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v69 = a1;
  v68 = a2;
  v58 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v59 = partial apply for implicit closure #2 in closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:);
  v60 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v82 = 0;
  v64 = 0;
  v70 = type metadata accessor for Logger();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = v30 - v73;
  v89 = MEMORY[0x1EEE9AC00](v69);
  v90 = v7;
  v88 = a3;
  v86 = v8;
  v87 = v9;
  v85 = v10;
  v75 = (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v76 = [v75 identifier];
  if (v76)
  {
    v57 = v76;
    v54 = v76;
    v55._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55._object = v11;
    MEMORY[0x1E69E5920](v54);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v53 = v56;
  MEMORY[0x1E69E5920](v75);
  v83 = v53;
  if (v53._object)
  {
    v84 = v83;
  }

  else
  {
    v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid", 7uLL, 1);
    if (v83._object)
    {
      outlined destroy of String?(&v83);
    }
  }

  v12 = v74;
  v39 = v84;
  v82 = v84;
  v13 = Logger.shared.unsafeMutableAddressor();
  (*(v71 + 16))(v12, v13, v70);

  v41 = 32;
  v42 = 7;
  v14 = swift_allocObject();
  object = v39._object;
  v43 = v14;
  *(v14 + 16) = v39._countAndFlagsBits;
  *(v14 + 24) = object;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v43;
  v44 = v16;
  *(v16 + 16) = v59;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v44;
  v48 = v18;
  *(v18 + 16) = v60;
  *(v18 + 24) = v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v49 = v20;

  v21 = v45;
  v22 = v49;
  *v49 = v61;
  v22[1] = v21;

  v23 = v46;
  v24 = v49;
  v49[2] = v62;
  v24[3] = v23;

  v25 = v48;
  v26 = v49;
  v49[4] = v63;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v27 = v64;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = &v81;
    v81 = v32;
    v36 = &v80;
    v80 = v33;
    v37 = &v79;
    v79 = v34;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v35);
    v77 = v61;
    v78 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v77, v35, v36, v37);
    v38 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v77 = v62;
      v78 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v30[1] = 0;
      v77 = v63;
      v78 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_1D93D0000, v51, v52, "HeadphoneManager: Fetched HeadphoneDevice with UUID: %s", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v32, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v51);
  (*(v71 + 8))(v74, v70);
  if (MEMORY[0x1DA7309E0](v39._countAndFlagsBits, v39._object, v65, v66))
  {
    MEMORY[0x1E69E5928](v58);
    v28 = *v67;
    *v67 = v58;
    MEMORY[0x1E69E5920](v28);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Headphone_Manager@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Headphone_Manager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall Headphone_Manager.updateTitleBar()()
{
  v3 = v0;
  v2 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (v2)
  {
    v1 = v2;
    swift_unknownObjectRetain();
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v2);
    swift_getObjectType();
    [v1 updateTitleBar];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v2);
  }
}

uint64_t *Headphone_Manager.addTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (!v5)
  {
    return outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  }

  v3 = v5;
  swift_unknownObjectRetain();
  outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  swift_getObjectType();
  [v3 addTopLevelEntryWithHpDevice_];
  return swift_unknownObjectRelease();
}

uint64_t *Headphone_Manager.updateTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (!v5)
  {
    return outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  }

  v3 = v5;
  swift_unknownObjectRetain();
  outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  swift_getObjectType();
  [v3 updateTopLevelEntryWithHpDevice_];
  return swift_unknownObjectRelease();
}

uint64_t *Headphone_Manager.removeTopLevelEntry(hpDevice:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xD8))();
  if (!v5)
  {
    return outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  }

  v3 = v5;
  swift_unknownObjectRetain();
  outlined destroy of HeadphoneMangerTopLevelEntryUIHandling?(&v5);
  swift_getObjectType();
  [v3 removeTopLevelEntryWithHpDevice_];
  return swift_unknownObjectRelease();
}

uint64_t Headphone_Manager.modernHPSFFEnabled.getter()
{
  v2[5] = 0;
  v2[3] = &type metadata for AudioAccessoryFeatures;
  v2[4] = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  LOBYTE(v2[0]) = 2;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v1 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBVendorID@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBVendorID.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CBVendorID.init(rawValue:)(__int16 a1)
{
  LOWORD(v2) = a1;
  BYTE2(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBVendorID@<X0>(_WORD *a1@<X8>)
{
  result = CBVendorID.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t *outlined destroy of CBDeviceReporting?(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()partial apply(uint64_t a1)
{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

{
  return thunk for @escaping @callee_unowned @convention(block) (@unowned AudioAccessoryDevice) -> ()(a1, *(v1 + 16));
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for CBVendorID()
{
  v4 = lazy cache variable for type metadata for CBVendorID;
  if (!lazy cache variable for type metadata for CBVendorID)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBVendorID);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBVendorID and conformance CBVendorID()
{
  v2 = lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID;
  if (!lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID)
  {
    type metadata accessor for CBVendorID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBVendorID and conformance CBVendorID);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *outlined destroy of [HeadphoneDevice]?(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *outlined init with copy of CBDeviceReporting?(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of HeadphoneMangerTopLevelEntryUIHandling?(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t partial apply for implicit closure #2 in closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #2 in closure #1 in Headphone_Manager.getDeviceFromUUID(UUID:)();
  return result;
}

unint64_t type metadata accessor for AudioAccessoryDevice()
{
  v2 = lazy cache variable for type metadata for AudioAccessoryDevice;
  if (!lazy cache variable for type metadata for AudioAccessoryDevice)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AudioAccessoryDevice);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of (@escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice) -> ())?(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16HeadphoneManager0A6DeviceCSgMd, &_s16HeadphoneManager0A6DeviceCSgMR);
    lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsMTK(int a1)
{
  switch(a1)
  {
    case 8209:
      v2 = 1;
      break;
    case 8214:
      v2 = 1;
      break;
    case 8215:
      v2 = 1;
      break;
    case 8230:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8229 || a1 == 8218;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW1(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8195:
      v2 = 1;
      break;
    case 8197:
      v2 = 1;
      break;
    case 8198:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8201 || a1 == 8208;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW2(int a1)
{
  switch(a1)
  {
    case 8202:
      v2 = 1;
      break;
    case 8203:
      v2 = 1;
      break;
    case 8204:
      v2 = 1;
      break;
    case 8205:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8210:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8223 || a1 == 8239;
      break;
  }

  return v2;
}

BOOL CBProductIDIsW3_0(int a1)
{
  switch(a1)
  {
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8232 || a1 == 8231;
      break;
  }

  return v2;
}

uint64_t one-time initialization function for defaultHeadphone()
{
  type metadata accessor for HeadphoneDevice();
  type metadata accessor for CBDevice();
  v2 = CBDevice.__allocating_init()();
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](*v0);
  result = HeadphoneDevice.__allocating_init(cbDevice:delegate:)(v2);
  static HeadphoneDevice.defaultHeadphone = result;
  return result;
}

uint64_t *HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeadphone != -1)
  {
    swift_once();
  }

  return &static HeadphoneDevice.defaultHeadphone;
}

uint64_t static HeadphoneDevice.defaultHeadphone.getter()
{
  v1 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t static HeadphoneDevice.defaultHeadphone.setter(uint64_t a1)
{
  v3 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*static HeadphoneDevice.defaultHeadphone.modify())()
{
  HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  return static HeadphoneDevice.defaultHeadphone.modify;
}

uint64_t static HeadphoneDevice.allFeatureContents(productID:)(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pSgMd, &_s16HeadphoneManager0A18FeatureContentType_pSgMR);
  v7 = _allocateUninitializedArray<A>(_:)();
  v8 = v1;
  v9 = type metadata accessor for B698FeatureContent();
  v10 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v12 = *v10;
  MEMORY[0x1E69E5928](*v10);
  swift_endAccess();
  v13 = B698FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v12);
  if (v13)
  {
    v8[3] = v9;
    v8[4] = &protocol witness table for B698FeatureContent;
    *v8 = v13;
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
  }

  closure #1 in static HeadphoneDevice.allFeatureContents(productID:)(a1, v8 + 5);
  v3 = type metadata accessor for B768FeatureContent();
  v4 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  swift_endAccess();
  v6 = B768FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v5);
  if (v6)
  {
    v8[13] = v3;
    v8[14] = &protocol witness table for B768FeatureContent;
    v8[10] = v6;
  }

  else
  {
    v8[10] = 0;
    v8[11] = 0;
    v8[12] = 0;
    v8[13] = 0;
    v8[14] = 0;
  }

  closure #2 in static HeadphoneDevice.allFeatureContents(productID:)(a1, v8 + 15);
  result = v7;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t closure #1 in static HeadphoneDevice.allFeatureContents(productID:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for B788FeatureContent();
  v5 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v7 = *v5;
  MEMORY[0x1E69E5928](*v5);
  swift_endAccess();
  result = B788FeatureContent.__allocating_init(id:headphoneDevice:)(a1, v7);
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for B788FeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t closure #2 in static HeadphoneDevice.allFeatureContents(productID:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for B494BFeatureContent();
  v5 = HeadphoneDevice.defaultHeadphone.unsafeMutableAddressor();
  swift_beginAccess();
  v7 = *v5;
  MEMORY[0x1E69E5928](*v5);
  swift_endAccess();
  result = B494BFeatureContent.__allocating_init(id:headphoneDevice:)(a1, v7);
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for B494BFeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t HeadphoneDevice.allFeatureContents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pSgMd, &_s16HeadphoneManager0A18FeatureContentType_pSgMR);
  v7 = _allocateUninitializedArray<A>(_:)();
  v8 = v1;
  v9 = type metadata accessor for B698FeatureContent();
  v10 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v12 = [v10 productID];
  MEMORY[0x1E69E5920](v10);
  (MEMORY[0x1E69E5928])();
  v13 = B698FeatureContent.__allocating_init(id:headphoneDevice:)(v12, v11);
  if (v13)
  {
    v8[3] = v9;
    v8[4] = &protocol witness table for B698FeatureContent;
    *v8 = v13;
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
  }

  closure #1 in HeadphoneDevice.allFeatureContents.getter(v11, v8 + 5);
  v3 = type metadata accessor for B768FeatureContent();
  v4 = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v5 = [v4 productID];
  MEMORY[0x1E69E5920](v4);
  (MEMORY[0x1E69E5928])();
  v6 = B768FeatureContent.__allocating_init(id:headphoneDevice:)(v5, v11);
  if (v6)
  {
    v8[13] = v3;
    v8[14] = &protocol witness table for B768FeatureContent;
    v8[10] = v6;
  }

  else
  {
    v8[10] = 0;
    v8[11] = 0;
    v8[12] = 0;
    v8[13] = 0;
    v8[14] = 0;
  }

  closure #2 in HeadphoneDevice.allFeatureContents.getter(v11, v8 + 15);
  result = v7;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t closure #1 in HeadphoneDevice.allFeatureContents.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for B788FeatureContent();
  v6 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v8 = [v6 productID];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](a1);
  result = B788FeatureContent.__allocating_init(id:headphoneDevice:)(v8, a1);
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for B788FeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t closure #2 in HeadphoneDevice.allFeatureContents.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for B494BFeatureContent();
  v6 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v8 = [v6 productID];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](a1);
  result = B494BFeatureContent.__allocating_init(id:headphoneDevice:)(v8, a1);
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for B494BFeatureContent;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t *HeadphoneDevice._featureContent.getter@<X0>(void *a1@<X8>)
{
  v16 = v1;
  MEMORY[0x1E69E5928](v1);
  key = HeadphoneSettingsUIFeatureContentLookupKey.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v1, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v6, &v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pMd, &_s16HeadphoneManager0A18FeatureContentType_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    outlined init with take of HeadphoneFeatureContentType(&v10, __dst);
    outlined init with copy of HeadphoneFeatureContentType(__dst, a1);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    result = outlined destroy of HeadphoneFeatureContentType?(&v10);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  return result;
}

uint64_t *outlined destroy of HeadphoneFeatureContentType?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t outlined init with copy of HeadphoneFeatureContentType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *HeadphoneDevice._featureContent.setter(uint64_t *a1)
{
  v17 = a1;
  v22 = 0;
  v23 = a1;
  v2 = v1;
  v18 = HeadphoneSettingsUIFeatureContentLookupKey.unsafeMutableAddressor();
  outlined init with copy of HeadphoneFeatureContentType?(v17, v20);
  if (v21)
  {
    v10 = v21;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v8 = *(v10 - 8);
    v9 = v8;
    v3 = *(v8 + 64);
    v12 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v11 = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))();
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v7 = v15;
  v6[1] = &v19;
  swift_beginAccess();
  objc_setAssociatedObject(v16, v18, v7, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return outlined destroy of HeadphoneFeatureContentType?(v17);
}

void *outlined init with copy of HeadphoneFeatureContentType?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t HeadphoneDevice.featureContent.getter@<X0>(void *a1@<X8>)
{
  v59 = a1;
  ObjectType = swift_getObjectType();
  v82 = 0;
  v80 = 0;
  v61 = 0;
  v62 = type metadata accessor for Logger();
  v63 = *(v62 - 8);
  v64 = v63;
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  HeadphoneDevice._featureContent.getter(v81);
  v57 = v81[3] == 0;
  v56 = v57;
  outlined destroy of HeadphoneFeatureContentType?(v81);
  if (!v56)
  {
    HeadphoneDevice._featureContent.getter(v59);
    return v61;
  }

  v4 = v61;
  v51 = 0;
  v46 = type metadata accessor for DefaultFeatureContent();
  v5 = v58;
  v47 = DefaultFeatureContent.__allocating_init(id:headphoneDevice:)(0, v58);
  v80 = v47;
  v48 = (*((*v58 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v49 = [v48 productID];

  v76 = static HeadphoneDevice.allFeatureContents(productID:)(v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager0A18FeatureContentType_pSgGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pSgGMR);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager0A18FeatureContentType_pMd, &_s16HeadphoneManager0A18FeatureContentType_pMR);
  v50 = v53;
  lazy protocol witness table accessor for type [HeadphoneFeatureContentType?] and conformance [A]();
  v6 = Sequence.compactMap<A>(_:)();
  v54 = v4;
  v55 = v6;
  if (!v4)
  {
    v45 = v55;
    outlined destroy of [HeadphoneFeatureContentType?](&v76);
    v75 = v45;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager0A18FeatureContentType_pGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pGMR);
    lazy protocol witness table accessor for type [HeadphoneFeatureContentType] and conformance [A]();
    Collection.first.getter();

    if (v74)
    {
      outlined init with take of HeadphoneFeatureContentType(v73, __dst);
    }

    else
    {

      if (v47)
      {
        v43 = v47;
        v78 = v46;
        v79 = &protocol witness table for DefaultFeatureContent;
        __dst[0] = v47;
      }

      else
      {
        memset(__dst, 0, sizeof(__dst));
        v78 = 0;
        v79 = 0;
      }

      if (v74)
      {
        outlined destroy of HeadphoneFeatureContentType?(v73);
      }
    }

    outlined init with copy of HeadphoneFeatureContentType?(__dst, v72);
    if (v72[3])
    {
      if (swift_dynamicCast())
      {
        v42 = v66;
      }

      else
      {
        v42 = 0;
      }

      v41 = v42;
    }

    else
    {
      outlined destroy of HeadphoneFeatureContentType?(v72);
      v41 = 0;
    }

    v40 = v41;

    if (v40)
    {
      v8 = v65;
      v9 = Logger.shared.unsafeMutableAddressor();
      (*(v64 + 16))(v8, v9, v62);
      v38 = Logger.logObject.getter();
      v35 = v38;
      v37 = static os_log_type_t.error.getter();
      v36 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v39 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v38, v37))
      {
        v10 = v54;
        v26 = static UnsafeMutablePointer.allocate(capacity:)();
        v22 = v26;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v24 = 0;
        v27 = createStorage<A>(capacity:type:)(0);
        v25 = v27;
        v28 = createStorage<A>(capacity:type:)(v24);
        v70 = v26;
        v69 = v27;
        v68 = v28;
        v29 = 0;
        v30 = &v70;
        serialize(_:at:)(0, &v70);
        serialize(_:at:)(v29, v30);
        v67 = v39;
        v31 = &v13;
        MEMORY[0x1EEE9AC00](&v13);
        v32 = &v13 - 6;
        *(&v13 - 4) = v11;
        *(&v13 - 3) = &v69;
        *(&v13 - 2) = &v68;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v34 = v10;
        if (v10)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1D93D0000, v35, v36, "Could not find a feature content", v22, 2u);
          v20 = 0;
          destroyStorage<A>(_:count:)(v25, 0, v23);
          destroyStorage<A>(_:count:)(v28, v20, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v22, MEMORY[0x1E69E7508]);

          v21 = v34;
        }
      }

      else
      {

        v21 = v54;
      }

      v18 = v21;

      (*(v64 + 8))(v65, v62);
      v19 = v18;
    }

    else
    {
      v19 = v54;
    }

    v16 = v19;
    v15 = __dst;
    v14 = v71;
    outlined init with copy of HeadphoneFeatureContentType?(__dst, v71);
    HeadphoneDevice._featureContent.setter(v14);
    outlined init with copy of HeadphoneFeatureContentType?(v15, v59);
    outlined destroy of HeadphoneFeatureContentType?(v15);

    return v16;
  }

  result = 0;
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [HeadphoneFeatureContentType?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager0A18FeatureContentType_pSgGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HeadphoneFeatureContentType?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [HeadphoneFeatureContentType?](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t lazy protocol witness table accessor for type [HeadphoneFeatureContentType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager0A18FeatureContentType_pGMd, &_sSay16HeadphoneManager0A18FeatureContentType_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HeadphoneFeatureContentType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id AADefaultBattery.init(level:productID:state:type:)(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v11 = a4;
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v12 = v4;
  v7.receiver = v4;
  v7.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v7, sel_initWithLevel_productID_state_type_);
  MEMORY[0x1E69E5928](v6);
  v12 = v6;
  MEMORY[0x1E69E5920](v6);
  return v6;
}

id AADefaultBattery.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id AADefaultBattery.init(coder:)(uint64_t a1)
{
  v7 = a1;
  v8 = v1;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_);
  if (v5)
  {
    MEMORY[0x1E69E5928](v5);
    v8 = v5;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v8);
    return v5;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id AADefaultBattery.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *AAOverrideBattery.init(level:state:type:isLow:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  ObjectType = swift_getObjectType();
  v16 = a4;
  v15 = a1;
  v14 = a2;
  v13 = a3 & 1;
  v17 = v4;
  *&v4[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__lvl] = a4;
  *&v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__state] = a1;
  *&v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__type] = a2;
  v17[OBJC_IVAR____TtC16HeadphoneManagerP33_339ABF723FCFCB74D55181D25E1261BF17AAOverrideBattery__isLow] = a3;
  v12.receiver = v17;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  MEMORY[0x1E69E5920](v11);
  return v11;
}

id AAOverrideBattery.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void AAOverrideBattery.init(coder:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id AAOverrideBattery.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AADBatteryInfoVM.debugDescription.getter()
{
  v27 = 0;
  v25 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("address: ", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v24[0] = (*(*v16 + 392))(v2);
  v24[1] = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v24);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", main: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v4);

  v23 = (*(*v16 + 296))(v5);
  type metadata accessor for AABattery();
  lazy protocol witness table accessor for type AABattery and conformance NSObject();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v23);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", combined: ", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v6);

  v22 = (*(*v16 + 344))(v7);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v22);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", case: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v21 = (*(*v16 + 152))(v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v21);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", left: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v20 = (*(*v16 + 200))(v11);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v20);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", right: ", 9uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v19 = (*(*v16 + 248))(v13);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1E69E5920](v19);
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v18 = v25;
  v17 = v26;

  outlined destroy of DefaultStringInterpolation(&v25);
  return MEMORY[0x1DA7309B0](v18, v17);
}

unint64_t lazy protocol witness table accessor for type AABattery and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type AABattery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type AABattery and conformance NSObject)
  {
    type metadata accessor for AABattery();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABattery and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABattery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type AABattery and conformance NSObject)
  {
    type metadata accessor for AABattery();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABattery and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryCase@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryCase : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 152))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryCase : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  AADBatteryInfoVM.batteryCase.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryCase.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryCase.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryCase.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryCase.modify;
}

void AADBatteryInfoVM.batteryCase.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for AADBatteryInfoVM.$batteryCase : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 176))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryCase : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryCase.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryCase.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryCase.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADBatteryInfoVM.$batteryCase.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADBatteryInfoVM.$batteryCase.getter();
  return AADBatteryInfoVM.$batteryCase.modify;
}

void AADBatteryInfoVM.$batteryCase.modify(uint64_t **a1, char a2)
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
    AADBatteryInfoVM.$batteryCase.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADBatteryInfoVM.$batteryCase.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADBatteryInfoVM._batteryCase.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryCase.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryLeft@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryLeft : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 200))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryLeft : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  AADBatteryInfoVM.batteryLeft.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryLeft.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryLeft.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryLeft.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryLeft.modify;
}

void AADBatteryInfoVM.batteryLeft.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for AADBatteryInfoVM.$batteryLeft : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 224))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryLeft : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryLeft.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryLeft.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryLeft.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADBatteryInfoVM.$batteryLeft.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADBatteryInfoVM.$batteryLeft.getter();
  return AADBatteryInfoVM.$batteryLeft.modify;
}

void AADBatteryInfoVM.$batteryLeft.modify(uint64_t **a1, char a2)
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
    AADBatteryInfoVM.$batteryLeft.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADBatteryInfoVM.$batteryLeft.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADBatteryInfoVM._batteryLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryLeft.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryRight : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 248))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryRight : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  AADBatteryInfoVM.batteryRight.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryRight.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryRight.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryRight.modify;
}

void AADBatteryInfoVM.batteryRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for AADBatteryInfoVM.$batteryRight : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 272))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryRight : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryRight.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADBatteryInfoVM.$batteryRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADBatteryInfoVM.$batteryRight.getter();
  return AADBatteryInfoVM.$batteryRight.modify;
}

void AADBatteryInfoVM.$batteryRight.modify(uint64_t **a1, char a2)
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
    AADBatteryInfoVM.$batteryRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADBatteryInfoVM.$batteryRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADBatteryInfoVM._batteryRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryMain@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryMain : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 296))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryMain : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  AADBatteryInfoVM.batteryMain.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryMain.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryMain.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryMain.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryMain.modify;
}

void AADBatteryInfoVM.batteryMain.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for AADBatteryInfoVM.$batteryMain : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 320))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryMain : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryMain.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryMain.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryMain.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADBatteryInfoVM.$batteryMain.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADBatteryInfoVM.$batteryMain.getter();
  return AADBatteryInfoVM.$batteryMain.modify;
}

void AADBatteryInfoVM.$batteryMain.modify(uint64_t **a1, char a2)
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
    AADBatteryInfoVM.$batteryMain.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADBatteryInfoVM.$batteryMain.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADBatteryInfoVM._batteryMain.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryMain.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADBatteryInfoVM.batteryCombinedLeftRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x1E69E5928](a1);
  v6[0] = a1;
  v2 = type metadata accessor for AABattery();
  Published.init(wrappedValue:)(v6, v2, a2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for AADBatteryInfoVM.batteryCombinedLeftRight : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 344))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.batteryCombinedLeftRight : AADBatteryInfoVM(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  AADBatteryInfoVM.batteryCombinedLeftRight.setter(v3);
}

uint64_t AADBatteryInfoVM.batteryCombinedLeftRight.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADBatteryInfoVM.batteryCombinedLeftRight.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x1E69E5928](a1);
  static Published.subscript.setter();
  return MEMORY[0x1E69E5920](a1);
}

void (*AADBatteryInfoVM.batteryCombinedLeftRight.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADBatteryInfoVM.batteryCombinedLeftRight.modify;
}

void AADBatteryInfoVM.batteryCombinedLeftRight.modify(uint64_t *a1, char a2)
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

uint64_t key path getter for AADBatteryInfoVM.$batteryCombinedLeftRight : AADBatteryInfoVM@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 368))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADBatteryInfoVM.$batteryCombinedLeftRight : AADBatteryInfoVM(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v8);
}

uint64_t AADBatteryInfoVM.$batteryCombinedLeftRight.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM.$batteryCombinedLeftRight.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADBatteryInfoVM.$batteryCombinedLeftRight.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMd, &_s7Combine9PublishedV9PublisherVySo9AABatteryC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADBatteryInfoVM.$batteryCombinedLeftRight.getter();
  return AADBatteryInfoVM.$batteryCombinedLeftRight.modify;
}

void AADBatteryInfoVM.$batteryCombinedLeftRight.modify(uint64_t **a1, char a2)
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
    AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADBatteryInfoVM.$batteryCombinedLeftRight.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADBatteryInfoVM._batteryCombinedLeftRight.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADBatteryInfoVM._batteryCombinedLeftRight.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADBatteryInfoVM.bluetoothAddress : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 392))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADBatteryInfoVM.bluetoothAddress : AADBatteryInfoVM(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  AADBatteryInfoVM.bluetoothAddress.setter(v4, v6);
}

uint64_t AADBatteryInfoVM.bluetoothAddress.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t AADBatteryInfoVM.bluetoothAddress.setter(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADBatteryInfoVM.underlyingBatteryInfo : AADBatteryInfoVM@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 416))(v2);
}

uint64_t key path setter for AADBatteryInfoVM.underlyingBatteryInfo : AADBatteryInfoVM(void *a1, uint64_t *a2)
{
  outlined init with copy of AADeviceBatteryInfo?(a1, &v6);
  v4 = v6;
  v5 = *a2;

  AADBatteryInfoVM.underlyingBatteryInfo.setter(v4);
}

uint64_t AADBatteryInfoVM.underlyingBatteryInfo.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t AADBatteryInfoVM.underlyingBatteryInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t AADBatteryInfoVM.__allocating_init(with:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return AADBatteryInfoVM.init(with:)(a1);
}

uint64_t AADBatteryInfoVM.init(with:)(uint64_t a1)
{
  v32 = a1;
  v36 = 0;
  v35 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v15 = *(v24 - 8);
  v16 = v24 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v13 - v14;
  v36 = MEMORY[0x1EEE9AC00](v32);
  v35 = v1;
  v17 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v28 = 0;
  v20 = type metadata accessor for AADefaultBattery();
  v2 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryCase(v2, v23);
  v26 = *(v15 + 32);
  v25 = v15 + 32;
  v26(v33 + v17, v23, v24);
  v18 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft;
  v3 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryLeft(v3, v23);
  v26(v33 + v18, v23, v24);
  v19 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight;
  v4 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryRight(v4, v23);
  v26(v33 + v19, v23, v24);
  v21 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain;
  v5 = AADefaultBattery.__allocating_init()();
  property wrapper backing initializer of AADBatteryInfoVM.batteryMain(v5, v23);
  v26(v33 + v21, v23, v24);
  v22 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight;
  v6 = AADefaultBattery.__allocating_init()();
  v7 = v33;
  property wrapper backing initializer of AADBatteryInfoVM.batteryCombinedLeftRight(v6, v23);
  v26(v7 + v22, v23, v24);
  v27 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v28, 1);
  v9 = v28;
  v10 = v32;
  *(v7 + v27) = v8;
  p_superclass = &OBJC_METACLASS____TtC16HeadphoneManager8AADevice.superclass;
  *(v7 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo) = v9;
  *(v7 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating) = 0;
  MEMORY[0x1E69E5928](v10);
  v30 = (p_superclass[511] + v7);
  v31 = &v34;
  swift_beginAccess();
  v11 = *v30;
  *v30 = v32;
  MEMORY[0x1E69E5920](v11);
  swift_endAccess();
  MEMORY[0x1E69E5920](v32);
  return v33;
}

uint64_t AADBatteryInfoVM.updateBatteryInfo(_:)(void *a1)
{
  v111 = a1;
  v148 = 0;
  v147 = 0;
  v110 = 0;
  v112 = type metadata accessor for Logger();
  v113 = *(v112 - 8);
  v114 = v113;
  v115 = *(v113 + 64);
  v2 = MEMORY[0x1EEE9AC00](v111);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v36 - v117;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v118 = &v36 - v117;
  v148 = v3;
  v147 = v1;
  v122 = [v3 bluetoothAddress];
  v146[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146[1] = v4;
  v119 = &v145;
  v120 = AADBatteryInfoVM.bluetoothAddress.modify();
  v121 = v146;
  ==? infix<A>(_:_:)(v5, v146, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);
  (v120)(v119, 0);
  outlined destroy of String(v121);

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple-internal-install", 0x16uLL, 1);
  object = v6._object;
  v123 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
  v125 = MGGetBoolAnswer();

  if (v125 && ((*(*v109 + 480))() & 1) != 0)
  {
    v7 = v118;
    v8 = Logger.shared.unsafeMutableAddressor();
    (*(v114 + 16))(v7, v8, v112);
    v107 = Logger.logObject.getter();
    v104 = v107;
    v106 = static os_log_type_t.default.getter();
    v105 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v108 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v107, v106))
    {
      v9 = v110;
      v95 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = v95;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = 0;
      v96 = createStorage<A>(capacity:type:)(0);
      v94 = v96;
      v97 = createStorage<A>(capacity:type:)(v93);
      v129[0] = v95;
      v128 = v96;
      v127 = v97;
      v98 = 0;
      v99 = v129;
      serialize(_:at:)(0, v129);
      serialize(_:at:)(v98, v99);
      v126 = v108;
      v100 = &v36;
      MEMORY[0x1EEE9AC00](&v36);
      v101 = &v36 - 6;
      *(&v36 - 4) = v10;
      *(&v36 - 3) = &v128;
      *(&v36 - 2) = &v127;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v103 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v104, v105, "AADBatteryInfoVM :: debug override for battery!", v91, 2u);
        v89 = 0;
        destroyStorage<A>(_:count:)(v94, 0, v92);
        destroyStorage<A>(_:count:)(v97, v89, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v91, MEMORY[0x1E69E7508]);

        v90 = v103;
      }
    }

    else
    {

      v90 = v110;
    }

    v87 = v90;

    (*(v114 + 8))(v118, v112);
    return v87;
  }

  else
  {
    v11 = v116;
    v12 = Logger.shared.unsafeMutableAddressor();
    (*(v114 + 16))(v11, v12, v112);
    v13 = v111;
    v75 = 7;
    v76 = swift_allocObject();
    *(v76 + 16) = v111;
    v86 = Logger.logObject.getter();
    v68 = v86;
    v85 = static os_log_type_t.debug.getter();
    v69 = v85;
    v70 = 17;
    v79 = swift_allocObject();
    v71 = v79;
    v72 = 32;
    *(v79 + 16) = 32;
    v14 = swift_allocObject();
    v15 = v72;
    v80 = v14;
    v73 = v14;
    *(v14 + 16) = 8;
    v74 = v15;
    v16 = swift_allocObject();
    v17 = v76;
    v77 = v16;
    *(v16 + 16) = partial apply for implicit closure #1 in AADBatteryInfoVM.updateBatteryInfo(_:);
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v77;
    v83 = v18;
    v78 = v18;
    *(v18 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_8;
    *(v18 + 24) = v19;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v81 = _allocateUninitializedArray<A>(_:)();
    v82 = v20;

    v21 = v79;
    v22 = v82;
    *v82 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
    v22[1] = v21;

    v23 = v80;
    v24 = v82;
    v82[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v24[3] = v23;

    v25 = v82;
    v26 = v83;
    v82[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
    v25[5] = v26;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v86, v85))
    {
      v27 = v110;
      v61 = static UnsafeMutablePointer.allocate(capacity:)();
      v58 = v61;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = createStorage<A>(capacity:type:)(0);
      v60 = v62;
      v64 = 1;
      v63 = createStorage<A>(capacity:type:)(1);
      v134 = v61;
      v133 = v62;
      v132 = v63;
      v65 = &v134;
      serialize(_:at:)(2, &v134);
      serialize(_:at:)(v64, v65);
      v130 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
      v131 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v130, v65, &v133, &v132);
      v66 = v27;
      v67 = v27;
      if (v27)
      {
        v56 = 0;

        __break(1u);
      }

      else
      {
        v130 = closure #1 in OSLogArguments.append(_:)partial apply;
        v131 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v130, &v134, &v133, &v132);
        v54 = 0;
        v55 = 0;
        v130 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_8;
        v131 = v78;
        closure #1 in osLogInternal(_:log:type:)(&v130, &v134, &v133, &v132);
        v52 = 0;
        v53 = 0;
        _os_log_impl(&dword_1D93D0000, v68, v69, "AADBatteryInfoVM :: Updating battery info: %s", v58, 0xCu);
        destroyStorage<A>(_:count:)(v60, 0, v59);
        destroyStorage<A>(_:count:)(v63, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v58, MEMORY[0x1E69E7508]);

        v57 = v52;
      }
    }

    else
    {
      v28 = v110;

      v57 = v28;
    }

    v51 = v57;

    (*(v114 + 8))(v116, v112);
    v29 = v111;
    AADBatteryInfoVM.underlyingBatteryInfo.setter(v111);
    v144 = [v111 visibleBatteryCase];
    v38 = v143;
    v39 = AADBatteryInfoVM.batteryCase.modify(v143);
    v37 = v30;
    v46 = type metadata accessor for AABattery();
    v47 = lazy protocol witness table accessor for type AABattery and conformance NSObject();
    ==? infix<A>(_:_:)(v37, &v144, v46, v47);
    v48 = 0;
    (v39)(v38);

    v142 = [v111 visibleBatteryLeft];
    v40 = v141;
    v41 = AADBatteryInfoVM.batteryLeft.modify(v141);
    ==? infix<A>(_:_:)(v31, &v142, v46, v47);
    v41(v40, v48);

    v140 = [v111 visibleBatteryRight];
    v42 = v139;
    v43 = AADBatteryInfoVM.batteryRight.modify(v139);
    ==? infix<A>(_:_:)(v32, &v140, v46, v47);
    v43(v42, v48);

    v138 = [v111 visibleBatteryCombinedLeftRight];
    v44 = v137;
    v45 = AADBatteryInfoVM.batteryCombinedLeftRight.modify(v137);
    ==? infix<A>(_:_:)(v33, &v138, v46, v47);
    v45(v44, v48);

    v136 = [v111 visibleBatteryMain];
    v49 = v135;
    v50 = AADBatteryInfoVM.batteryMain.modify(v135);
    ==? infix<A>(_:_:)(v34, &v136, v46, v47);
    v50(v49, v48);

    return v51;
  }
}

uint64_t implicit closure #1 in AADBatteryInfoVM.updateBatteryInfo(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t one-time initialization function for overrideArray()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9AABatteryC_A3BtMd, &_sSo9AABatteryC_A3BtMR);
  v4 = _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  type metadata accessor for AAOverrideBattery();
  *v3 = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 1, 0.1);
  v3[1] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[2] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[3] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.1);
  v3[4] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 1, 0.2);
  v3[5] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[6] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[7] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.2);
  v3[8] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.3);
  v3[9] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[10] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[11] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.3);
  v3[12] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.4);
  v3[13] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[14] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[15] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.4);
  v3[16] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.5);
  v3[17] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[18] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[19] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.5);
  v3[20] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.6);
  v3[21] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[22] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[23] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.6);
  v3[24] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.7);
  v3[25] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[26] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[27] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.7);
  v3[28] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.8);
  v3[29] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[30] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[31] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.8);
  v3[32] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 0.9);
  v3[33] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[34] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[35] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.9);
  v3[36] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 5, 0, 1.0);
  v3[37] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[38] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[39] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 1.0);
  v3[40] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 1, 0.1);
  v3[41] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[42] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[43] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.1);
  v3[44] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 1, 0.2);
  v3[45] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[46] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[47] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.2);
  v3[48] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.3);
  v3[49] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[50] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[51] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.3);
  v3[52] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.4);
  v3[53] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[54] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[55] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.4);
  v3[56] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.5);
  v3[57] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[58] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[59] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.5);
  v3[60] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.6);
  v3[61] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[62] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[63] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.6);
  v3[64] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.7);
  v3[65] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[66] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[67] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.7);
  v3[68] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.8);
  v3[69] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[70] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[71] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.8);
  v3[72] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 0.9);
  v3[73] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[74] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[75] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.9);
  v3[76] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 5, 0, 1.0);
  v3[77] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[78] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[79] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 1.0);
  v3[80] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 1, 0.1);
  v3[81] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[82] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[83] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.1);
  v3[84] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 1, 0.2);
  v3[85] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[86] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[87] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.2);
  v3[88] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.3);
  v3[89] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[90] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[91] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.3);
  v3[92] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.4);
  v3[93] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[94] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[95] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.4);
  v3[96] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.5);
  v3[97] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[98] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[99] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.5);
  v3[100] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.6);
  v3[101] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[102] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[103] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.6);
  v3[104] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.7);
  v3[105] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[106] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[107] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.7);
  v3[108] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.8);
  v3[109] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[110] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[111] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.8);
  v3[112] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 0.9);
  v3[113] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[114] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[115] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.9);
  v3[116] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 5, 0, 1.0);
  v3[117] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[118] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[119] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 1.0);
  v3[120] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[121] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 1, 0.1);
  v3[122] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 1, 0.1);
  v3[123] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.1);
  v3[124] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[125] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 1, 0.2);
  v3[126] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 1, 0.2);
  v3[127] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 1, 0.2);
  v3[128] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[129] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.3);
  v3[130] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.3);
  v3[131] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.3);
  v3[132] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[133] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.4);
  v3[134] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.4);
  v3[135] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.4);
  v3[136] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[137] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.5);
  v3[138] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.5);
  v3[139] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.5);
  v3[140] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[141] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.6);
  v3[142] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.6);
  v3[143] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.6);
  v3[144] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[145] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.7);
  v3[146] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.7);
  v3[147] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.7);
  v3[148] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[149] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.8);
  v3[150] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.8);
  v3[151] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.8);
  v3[152] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[153] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 0.9);
  v3[154] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 0.9);
  v3[155] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 0.9);
  v3[156] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[157] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 2, 0, 1.0);
  v3[158] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 3, 0, 1.0);
  v3[159] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 1, 0, 1.0);
  v3[160] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[161] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 1, 0.1);
  v3[162] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 1, 0.1);
  v3[163] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.1);
  v3[164] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[165] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 1, 0.2);
  v3[166] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 1, 0.2);
  v3[167] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 1, 0.2);
  v3[168] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[169] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.3);
  v3[170] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.3);
  v3[171] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.3);
  v3[172] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[173] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.4);
  v3[174] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.4);
  v3[175] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.4);
  v3[176] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[177] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.5);
  v3[178] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.5);
  v3[179] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.5);
  v3[180] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[181] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.6);
  v3[182] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.6);
  v3[183] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.6);
  v3[184] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[185] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.7);
  v3[186] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.7);
  v3[187] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.7);
  v3[188] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[189] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.8);
  v3[190] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.8);
  v3[191] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.8);
  v3[192] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[193] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 0.9);
  v3[194] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 0.9);
  v3[195] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 0.9);
  v3[196] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[197] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 2, 0, 1.0);
  v3[198] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 3, 0, 1.0);
  v3[199] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(4, 1, 0, 1.0);
  v3[200] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[201] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 1, 0.1);
  v3[202] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 1, 0.1);
  v3[203] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.1);
  v3[204] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[205] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 1, 0.2);
  v3[206] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 1, 0.2);
  v3[207] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 1, 0.2);
  v3[208] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[209] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.3);
  v3[210] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.3);
  v3[211] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.3);
  v3[212] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[213] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.4);
  v3[214] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.4);
  v3[215] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.4);
  v3[216] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[217] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.5);
  v3[218] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.5);
  v3[219] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.5);
  v3[220] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[221] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.6);
  v3[222] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.6);
  v3[223] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.6);
  v3[224] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[225] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.7);
  v3[226] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.7);
  v3[227] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.7);
  v3[228] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[229] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.8);
  v3[230] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.8);
  v3[231] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.8);
  v3[232] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[233] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 0.9);
  v3[234] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 0.9);
  v3[235] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 0.9);
  v3[236] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(2, 0, 0, 0.5);
  v3[237] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 2, 0, 1.0);
  v3[238] = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 3, 0, 1.0);
  v1 = AAOverrideBattery.__allocating_init(level:state:type:isLow:)(3, 1, 0, 1.0);
  result = v4;
  v3[239] = v1;
  _finalizeUninitializedArray<A>(_:)();
  static AADBatteryInfoVM.overrideArray = v4;
  return result;
}

uint64_t *AADBatteryInfoVM.overrideArray.unsafeMutableAddressor()
{
  if (one-time initialization token for overrideArray != -1)
  {
    swift_once();
  }

  return &static AADBatteryInfoVM.overrideArray;
}

uint64_t static AADBatteryInfoVM.overrideArray.getter()
{
  v1 = AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static AADBatteryInfoVM.overrideArray.setter(uint64_t a1)
{
  v3 = AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static AADBatteryInfoVM.overrideArray.modify())()
{
  AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  return static AADBatteryInfoVM.overrideArray.modify;
}

uint64_t AADBatteryInfoVM._debugOverrideAnimating.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t AADBatteryInfoVM._debugOverrideAnimating.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__debugOverrideAnimating);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

Swift::Bool __swiftcall AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v61 = MEMORY[0x1E69E85E0];
  v62 = &async function pointer to partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while unwrapping an Optional value";
  v65 = "HeadphoneManager/AADBatteryInfoVM.swift";
  v66 = *v0;
  v81 = 0;
  v78 = 0uLL;
  v75 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v67 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v68 = &v20 - v67;
  v81 = v0;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple-internal-install", 0x16uLL, 1);
  object = v2._object;
  v69 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  v71 = MGGetBoolAnswer();
  MEMORY[0x1E69E5920](v69);

  if (v71)
  {
    v51 = 1;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneProxFeatureService", 0x25uLL, 1);
    v46 = v3._object;
    v45 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
    CFPreferencesAppSynchronize(v45);
    MEMORY[0x1E69E5920](v45);

    v50 = "com.apple.headphoneManager";
    v49 = 26;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.headphoneManager", 0x1AuLL, v51 & 1);
    v48 = v4._object;
    v47 = MEMORY[0x1DA730940](v4._countAndFlagsBits);
    CFPreferencesAppSynchronize(v47);
    MEMORY[0x1E69E5920](v47);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modernBatteryDisplayData", 0x18uLL, v51 & 1);
    v58 = v5._object;
    v57 = MEMORY[0x1DA730940](v5._countAndFlagsBits);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v50, v49, v51 & 1);
    v56 = v6._object;
    v55 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mobile", 6uLL, v51 & 1);
    v54 = v7._object;
    v53 = MEMORY[0x1DA730940](v7._countAndFlagsBits);
    v52 = *MEMORY[0x1E695E898];
    MEMORY[0x1E69E5928](v52);
    v59 = CFPreferencesCopyValue(v57, v55, v53, v52);
    MEMORY[0x1E69E5920](v52);
    MEMORY[0x1E69E5920](v53);

    MEMORY[0x1E69E5920](v55);

    MEMORY[0x1E69E5920](v57);

    if (v59)
    {
      v44 = v59;
      v73 = v59;
      if (swift_dynamicCast())
      {
        v43 = v72;
      }

      else
      {
        v43 = 0uLL;
      }

      v42 = v43;
    }

    else
    {
      v42 = 0uLL;
    }

    v79 = v42;
    if (*(&v42 + 1))
    {
      v80 = v79;
    }

    else
    {
      v33 = 1;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("modernBatteryDisplayData", 0x18uLL, 1);
      v40 = v8._object;
      v39 = MEMORY[0x1DA730940](v8._countAndFlagsBits);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneProxFeatureService", 0x25uLL, v33 & 1);
      v38 = v9._object;
      v37 = MEMORY[0x1DA730940](v9._countAndFlagsBits);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mobile", 6uLL, v33 & 1);
      v36 = v10._object;
      v35 = MEMORY[0x1DA730940](v10._countAndFlagsBits);
      v34 = *MEMORY[0x1E695E898];
      MEMORY[0x1E69E5928](v34);
      v41 = CFPreferencesCopyValue(v39, v37, v35, v34);
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v35);

      MEMORY[0x1E69E5920](v37);

      MEMORY[0x1E69E5920](v39);

      if (v41)
      {
        v32 = v41;
        v74 = v41;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v80 = 0uLL;
        }
      }

      else
      {
        v80 = 0uLL;
      }

      if (*(&v79 + 1))
      {
        outlined destroy of String?(&v79);
      }
    }

    v31 = v80;

    if (*(&v31 + 1))
    {
      v30 = v31;
      v27 = *(&v31 + 1);
      v28 = v31;
      v78 = v31;

      lazy protocol witness table accessor for type Int and conformance Int();
      FixedWidthInteger.init(_:)();
      v29 = v76;
      if (v77)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v26 = v29;
      }

      v25 = v26;
      v75 = v26;
      if (AADBatteryInfoVM._debugOverrideAnimating.getter())
      {
        v21 = AADBatteryInfoVM._debugOverrideAnimating.getter();

        outlined destroy of String?(&v80);
        v22 = v21;
      }

      else
      {
        if (v25 == 1000)
        {
          v23 = 0;
          v11 = type metadata accessor for TaskPriority();
          (*(*(v11 - 8) + 56))(v68, 1);

          type metadata accessor for MainActor();
          v24 = static MainActor.shared.getter();
          v12 = swift_allocObject();
          v13 = v61;
          v14 = v60;
          v15 = v66;
          v16 = v23;
          v17 = v68;
          v18 = v62;
          v12[2] = v24;
          v12[3] = v13;
          v12[4] = v14;
          v12[5] = v15;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v16, v16, v17, v18, v12, MEMORY[0x1E69E7CA8] + 8);
        }

        else
        {
          show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()();
        }

        outlined destroy of String?(&v80);
        v22 = 1;
      }
    }

    else
    {
      outlined destroy of String?(&v80);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v4 = AADBatteryInfoVM.overrideArray.unsafeMutableAddressor();
  swift_beginAccess();
  v5 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9AABatteryC_A3BtMd, &_sSo9AABatteryC_A3BtMR);
  Array.subscript.getter();
  swift_endAccess();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  [v7 type];
  (MEMORY[0x1E69E5920])();
  type metadata accessor for AABatteryType();
  lazy protocol witness table accessor for type AABatteryType and conformance AABatteryType();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  if (v6)
  {
    type metadata accessor for AADefaultBattery();
    v2 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryCombinedLeftRight.setter(v2);
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryLeft.setter(v8);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryRight.setter(v9);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
  }

  else
  {
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    (MEMORY[0x1E69E5928])();
    AADBatteryInfoVM.batteryCombinedLeftRight.setter(v7);
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
    type metadata accessor for AADefaultBattery();
    v0 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryLeft.setter(v0);
    v1 = AADefaultBattery.__allocating_init()();
    AADBatteryInfoVM.batteryRight.setter(v1);
  }

  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  (MEMORY[0x1E69E5928])();
  AADBatteryInfoVM.batteryCase.setter(v10);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5920])();
  return (MEMORY[0x1E69E5920])();
}