uint64_t PairingCoordinator._interruptExecutorsPairing()()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = v0[10], (*(v0[9] + 80))(v0[8]), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = v0[10];
    (*(v0[9] + 40))(v0[8]);
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = (*(v7 + 80))(v6, v7);
    v0[11] = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v0[7] = v8;
    v9 = *(MEMORY[0x277D08A60] + 4);
    v10 = swift_task_alloc();
    v0[12] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
    v12 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
    *v10 = v0;
    v10[1] = PairingCoordinator._interruptExecutorsPairing();

    return MEMORY[0x28215ED50](&async function pointer to closure #1 in PairingCoordinator._interruptExecutorsPairing(), 0, v11, v12);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v13 = 8;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x24C236EB0);
  }

  v5 = *(v2 + 88);

  v6 = *(v4 + 8);

  return v6();
}

uint64_t PairingCoordinator._cleanUp()(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v6;
  v3[36] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v6, v5);
}

uint64_t PairingCoordinator._cleanUp()()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = v0[34], (*(v0[33] + 80))(v0[32]), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = v0[34];
    v6 = v0[32];
    v7 = v0[33];
    v8 = *(v7 + 40);
    v0[37] = v8;
    v0[38] = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8(v6);
    v9 = v0[10];
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
    v11 = (*(v10 + 64))(v9, v10);
    v13 = v12;
    v0[39] = v11;
    v0[40] = v12;
    v0[41] = swift_getObjectType();
    v14 = *(v13 + 56);
    v13 += 56;
    v0[42] = v14;
    v0[43] = v13 & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v15 = *(v13 - 48);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v17, v16);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  (*(v0 + 336))(*(v0 + 328), *(v0 + 320));
  swift_unknownObjectRelease();
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);

  return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v3, v4);
}

{
  v29 = v0;
  if (*(v0 + 120))
  {
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 352) = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    outlined init with copy of PairingEligibilityInfo(v0 + 16, v0 + 136);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v28 = v5;
      *v4 = 136315138;
      outlined init with copy of PairingEligibilityInfo(v0 + 136, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v28);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_24AF48000, v2, v3, "CleanUp: unpairing %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    v16 = *(v0 + 304);
    v17 = *(v0 + 272);
    (*(v0 + 296))(*(v0 + 256), *(v0 + 264));
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v18);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    *(v0 + 360) = v20;
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 88);
    v27 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 368) = v26;
    *v26 = v0;
    v26[1] = PairingCoordinator._cleanUp();

    return v27(v0 + 16, ObjectType, v22);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 96, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AF48000, v11, v12, "CleanUp error: no peripheral to unpair", v13, 2u);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[36];
    v6 = PairingCoordinator._cleanUp();
  }

  else
  {
    v7 = v2[45];
    swift_unknownObjectRelease();
    v4 = v2[35];
    v5 = v2[36];
    v6 = PairingCoordinator._cleanUp();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  v1 = v0[1];

  return v1();
}

{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  MEMORY[0x24C236EC0](v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x24C236EC0](v7);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24AF48000, v4, v5, "CleanUp error: %{public}@", v8, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);

    MEMORY[0x24C236EB0](v7);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[47]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v11 = v0[1];

  return v11();
}

uint64_t PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(a3 + 72))(a2, a3);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v9;
  (*(v7 + 32))(&v11[v10], &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(a4 + 72))(a3, a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  outlined init with copy of PairingEligibilityInfo(v14, v15);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = v10;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  outlined init with take of Accessory(v15, &v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8]);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = type metadata accessor for UUID();
  v4[57] = v5;
  v6 = *(v5 - 8);
  v4[58] = v6;
  v7 = *(v6 + 64) + 15;
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)()
{
  v1 = v0[53];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (Strong)
  {
    v3 = v0[55];
    v4 = v0[56];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[61] = v5;
    v0[62] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[63] = v8;
    v0[64] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v8, v7);
  }

  else
  {
    v9 = v0[59];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = (*(v0 + 488))(*(v0 + 440), *(v0 + 448));
  *(v0 + 520) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v3, 0);
}

{
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 400) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 400;

  *(v0 + 57) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  if (*(v0 + 57))
  {
    v1 = *(v0 + 480);
    swift_unknownObjectRelease();
    v2 = *(v0 + 472);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 448);
    *(v0 + 528) = *(v5 + 40);
    *(v0 + 536) = (v5 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v0 + 504);
    v7 = *(v0 + 512);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v6, v7);
  }
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 480);
  (*(v0 + 528))(*(v0 + 440), *(v0 + 448));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[68] = v3;
  v0[69] = v4;
  v0[70] = swift_getObjectType();
  v6 = *(v5 + 16);
  v5 += 16;
  v0[71] = v6;
  v0[72] = v5 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = *(v5 - 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v9, v8);
}

{
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  (*(v0 + 568))(*(v0 + 560), *(v0 + 552));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  outlined init with copy of DetectedAccessory(v0 + 112, v0 + 192);
  v1 = *(v0 + 216);
  if (!v1)
  {
    v16 = *(v0 + 448);
    *(v0 + 408) = 3;
    v37 = (*(v16 + 152) + **(v16 + 152));
    v17 = *(*(v16 + 152) + 4);
    v18 = swift_task_alloc();
    *(v0 + 616) = v18;
    *v18 = v0;
    v18[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v19 = *(v0 + 480);
    v20 = *(v0 + 440);
    v21 = *(v0 + 448);
    v22 = v0 + 408;
LABEL_13:

    return v37(v22, v20, v21);
  }

  if (v1 == 1)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v2 = swift_allocError();
    *v3 = 11;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 112);
    *(v0 + 688) = v2;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      MEMORY[0x24C236EC0](v2);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_24AF48000, v5, v6, "Failure in handle Pairing Started: %{public}@", v7, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v8, -1, -1);
      MEMORY[0x24C237030](v7, -1, -1);
    }

    MEMORY[0x24C236EC0](v2);
    v10 = swift_task_alloc();
    *(v0 + 696) = v10;
    *v10 = v0;
    v10[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v11 = *(v0 + 480);
    v12 = *(v0 + 440);
    v13 = *(v0 + 448);
    v14 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v14, v12, v13);
  }

  v24 = *(v0 + 464);
  v23 = *(v0 + 472);
  v25 = *(v0 + 456);
  v26 = *(v0 + 432);
  outlined init with take of Accessory((v0 + 192), v0 + 312);
  v27 = *(v0 + 336);
  v28 = *(v0 + 344);
  __swift_project_boxed_opaque_existential_1((v0 + 312), v27);
  (*(v28 + 8))(v27, v28);
  v29 = static UUID.== infix(_:_:)();
  (*(v24 + 8))(v23, v25);
  if (v29)
  {
    v30 = *(v0 + 448);
    *(v0 + 416) = 3;
    v37 = (*(v30 + 152) + **(v30 + 152));
    v31 = *(*(v30 + 152) + 4);
    v32 = swift_task_alloc();
    *(v0 + 584) = v32;
    *v32 = v0;
    v32[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v33 = *(v0 + 480);
    v20 = *(v0 + 440);
    v21 = *(v0 + 448);
    v22 = v0 + 416;
    goto LABEL_13;
  }

  v34 = *(v0 + 480);
  outlined destroy of DetectedAccessory(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 312));
  v35 = *(v0 + 472);

  v36 = *(v0 + 8);

  return v36();
}

{
  v2 = *(*v1 + 584);
  v3 = *v1;
  v3[74] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[75] = v4;
    *v4 = v3;
    v4[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v5 = v3[60];
    v6 = v3[56];
    v7 = v3[55];

    return PairingCoordinator._proceedWithConnection()(v7, v6);
  }
}

{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[60];
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  v2 = v0[59];

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v8 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 504);
    v6 = *(v2 + 512);
    v4 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 480);
  (*(v0 + 528))(*(v0 + 440), *(v0 + 448));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v0[79] = v3;
  if (v3)
  {
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v24 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[80] = v9;
    *v9 = v0;
    v9[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);

    return (v24)(v0 + 2, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v11 = swift_allocError();
    *v12 = 13;
    swift_willThrow();
    outlined destroy of DetectedAccessory((v0 + 14));
    v0[86] = v11;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      MEMORY[0x24C236EC0](v11);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_24AF48000, v14, v15, "Failure in handle Pairing Started: %{public}@", v16, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v17, -1, -1);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    MEMORY[0x24C236EC0](v11);
    v19 = swift_task_alloc();
    v0[87] = v19;
    *v19 = v0;
    v19[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v20 = v0[60];
    v21 = v0[55];
    v22 = v0[56];
    v23 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v11, v23, v21, v22);
  }
}

{
  v1 = *(*v0 + 640);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  outlined init with copy of PairingContext?(v0 + 16, v0 + 64, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  if (*(v0 + 104))
  {
    v1 = *(v0 + 64);
    *(v0 + 664) = v1;
    v2 = swift_task_alloc();
    *(v0 + 672) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v3 = *(v0 + 480);
    v4 = *(v0 + 440);
    v5 = *(v0 + 448);

    return PairingCoordinator._handleAccessoryScannerFailure(_:)(v1, v4, v5);
  }

  else
  {
    outlined init with take of Accessory((v0 + 64), v0 + 272);
    v7 = swift_task_alloc();
    *(v0 + 648) = v7;
    *v7 = v0;
    v7[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v8 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);

    return PairingCoordinator._handleAccessoryDetection(_:)(v0 + 272, v9, v10);
  }
}

{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[79];
  v2 = v0[60];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v3 = v0[59];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[60];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v4 = v0[59];

  v5 = v0[1];

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v6 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 688));
    v4 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[86];
  v2 = v0[60];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v3 = v0[59];

  v4 = v0[1];

  return v4();
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  v1 = v0[74];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[60];
  v10 = v0[55];
  v11 = v0[56];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v10, v11);
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  v1 = v0[76];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[60];
  v10 = v0[55];
  v11 = v0[56];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v10, v11);
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  v1 = v0[78];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[60];
  v10 = v0[55];
  v11 = v0[56];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v10, v11);
}

{
  v1 = v0[79];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v2 = v0[82];
  v0[86] = v2;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v2);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in handle Pairing Started: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  MEMORY[0x24C236EC0](v2);
  v9 = swift_task_alloc();
  v0[87] = v9;
  *v9 = v0;
  v9[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v10 = v0[60];
  v11 = v0[55];
  v12 = v0[56];
  v13 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v13, v11, v12);
}

{
  v1 = v0[79];
  MEMORY[0x24C236EB0](v0[83]);
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v2 = v0[85];
  v0[86] = v2;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v2);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in handle Pairing Started: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  MEMORY[0x24C236EC0](v2);
  v9 = swift_task_alloc();
  v0[87] = v9;
  *v9 = v0;
  v9[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v10 = v0[60];
  v11 = v0[55];
  v12 = v0[56];
  v13 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v13, v11, v12);
}

{
  v1 = v0[86];
  v3 = v0[59];
  v2 = v0[60];
  MEMORY[0x24C236EB0](v1);
  MEMORY[0x24C236EB0](v1);
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[88];

  return v4();
}

uint64_t PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  v5 = type metadata accessor for UUID();
  v3[72] = v5;
  v6 = *(v5 - 8);
  v3[73] = v6;
  v7 = *(v6 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = *(a2 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[76] = v9;
  v3[77] = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v9, v8);
}

uint64_t PairingCoordinator._proceedWithConnection()()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1)
  {
    v4 = swift_task_alloc();
    v0[78] = v4;
    *v4 = v0;
    v4[1] = PairingCoordinator._proceedWithConnection();
    v5 = v0[71];
    v6 = v0[70];
    v7 = v0[69];

    return PairingCoordinator._nextPairingFlowStep()(v7, v6);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v9 = 8;
    swift_willThrow();
    v10 = v0[74];

    v11 = v0[1];

    return v11();
  }
}

{
  if (*(v0 + 904) <= 1u)
  {
    if (*(v0 + 904))
    {
      v1 = swift_task_alloc();
      *(v0 + 632) = v1;
      *v1 = v0;
      v1[1] = PairingCoordinator._proceedWithConnection();
      v2 = *(v0 + 568);
      v3 = *(v0 + 560);
      v4 = *(v0 + 552);
      v5 = MEMORY[0x277D84F90];

      return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v5, v4, v3);
    }

    goto LABEL_7;
  }

  if (*(v0 + 904) == 2)
  {
LABEL_7:
    v7 = *(v0 + 592);

    v8 = *(v0 + 8);

    return v8();
  }

  v9 = *(v0 + 568);
  v10 = *(v0 + 552);
  v11 = *(v0 + 560);
  v12 = *(v11 + 40);
  *(v0 + 640) = v12;
  *(v0 + 648) = (v11 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v12(v10);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
  v15 = (*(v14 + 64))(v13, v14);
  v17 = v16;
  *(v0 + 656) = v15;
  *(v0 + 664) = v16;
  *(v0 + 672) = swift_getObjectType();
  v18 = *(v17 + 16);
  v17 += 16;
  *(v0 + 680) = v18;
  *(v0 + 688) = v17 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v19 = *(v17 - 8);
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v21, v20);
}

{
  v1 = *v0;
  v2 = *(*v0 + 632);
  v6 = *v0;

  v3 = *(v1 + 592);

  v4 = *(v6 + 8);

  return v4();
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 656);
  (*(v0 + 680))(*(v0 + 672), *(v0 + 664));
  swift_unknownObjectRelease();
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v4, v3);
}

{
  if (*(v0 + 120) >= 2uLL)
  {
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v16(v19, v18);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v20);
    v22 = (*(v21 + 64))(v20, v21);
    v24 = v23;
    *(v0 + 696) = v22;
    *(v0 + 704) = v23;
    *(v0 + 712) = swift_getObjectType();
    v25 = *(v24 + 56);
    v24 += 56;
    *(v0 + 720) = v25;
    *(v0 + 728) = v24 & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v26 = *(v24 - 48);
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v28, v27);
  }

  else
  {
    outlined destroy of DetectedAccessory(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v2 = 12;
    swift_willThrow();
    *(v0 + 880) = v1;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v1);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      MEMORY[0x24C236EC0](v1);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&dword_24AF48000, v4, v5, "Failure in _pairAccessory %{public}@", v6, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v7, -1, -1);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    MEMORY[0x24C236EC0](v1);
    v9 = swift_task_alloc();
    *(v0 + 888) = v9;
    *v9 = v0;
    v9[1] = PairingCoordinator._proceedWithConnection();
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v13, v12, v11);
  }
}

{
  v1 = *(v0 + 728);
  v2 = *(v0 + 696);
  (*(v0 + 720))(*(v0 + 712), *(v0 + 704));
  swift_unknownObjectRelease();
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v4, v3);
}

{
  if (*(v0 + 240))
  {
    v22 = *(v0 + 560);
    outlined init with take of Accessory((v0 + 216), v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    *(v0 + 544) = 9;
    v1 = *(v22 + 152);
    v21 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    *(v0 + 736) = v3;
    *v3 = v0;
    v3[1] = PairingCoordinator._proceedWithConnection();
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);

    return v21(v0 + 544, v6, v5);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 216, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 880) = v8;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      MEMORY[0x24C236EC0](v8);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_24AF48000, v11, v12, "Failure in _pairAccessory %{public}@", v13, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v14, -1, -1);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    MEMORY[0x24C236EC0](v8);
    v16 = swift_task_alloc();
    *(v0 + 888) = v16;
    *v16 = v0;
    v16[1] = PairingCoordinator._proceedWithConnection();
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    v20 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v8, v20, v19, v18);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v8 = *v1;
  *(*v1 + 744) = v0;

  v4 = *(v2 + 616);
  v5 = *(v2 + 608);
  if (v0)
  {
    v6 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v6 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v35 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[94] = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), (v0 + 32));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[74];
    v5 = v0[73];
    v33 = v0[72];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = v0[35];
    v9 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v8);
    (*(v9 + 8))(v8, v9);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v5 + 8))(v4, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v34);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_24AF48000, v2, v3, "Start pairing for %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  v14 = v0[81];
  v15 = v0[80];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[69];
  v15(v18, v17);
  v19 = v0[40];
  v20 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v19);
  v21 = (*(v20 + 72))(v19, v20);
  v0[66] = v21;
  v0[67] = v22;
  v0[95] = v21;
  v15(v18, v17);
  v23 = v0[45];
  v24 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v23);
  v25 = (*(v24 + 64))(v23, v24);
  v27 = v26;
  v0[96] = v25;
  v0[97] = v26;
  v0[98] = swift_getObjectType();
  v28 = *(v27 + 136);
  v27 += 136;
  v0[99] = v28;
  v0[100] = v27 & 0xFFFFFFFFFFFFLL | 0xE287000000000000;
  v29 = *(v27 - 128);
  v31 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v31, v30);
}

{
  v1 = *(v0 + 800);
  v2 = *(v0 + 768);
  v3 = *(v0 + 744);
  (*(v0 + 792))(*(v0 + 784), *(v0 + 776));
  *(v0 + 808) = v3;
  if (v3)
  {
    v4 = *(v0 + 768);
    v5 = *(v0 + 760);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v6 = *(v0 + 616);
    v7 = *(v0 + 608);
    v8 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v9 = *(v0 + 760);
    *(v0 + 816) = *(v0 + 536);
    *(v0 + 824) = swift_getObjectType();
    v6 = *(v0 + 616);
    v7 = *(v0 + 608);
    v8 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = v0[96];
  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  v0[104] = v2;
  *v2 = v0;
  v2[1] = PairingCoordinator._proceedWithConnection();
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[95];

  return PairingExecutorFactory._pairingExecutors(for:)((v0 + 47), v3, v4);
}

{
  v1 = v0[106];
  v52 = v0[81];
  v51 = v0[80];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = (*(v3 + 56))(v0 + 62, v4, v3);
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v8);
  (*(v7 + 88))(v1, v8, v7);
  v5(v0 + 62, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v51(v4, v3);
  v9 = v0[55];
  v10 = v0[56];
  __swift_project_boxed_opaque_existential_1(v0 + 52, v9);
  v11 = (*(v10 + 80))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = (v0 + 69);
    v14 = v0[94];
    v15 = v0[71];
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[81];
      v19 = v0[80];
      v20 = v0[71];
      v21 = v0[70];
      v22 = v0[69];
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v19(v22, v21);
      v24 = v0[60];
      v25 = v0[61];
      __swift_project_boxed_opaque_existential_1(v0 + 57, v24);
      v26 = *(v25 + 80);
      v27 = v25;
      v13 = (v0 + 69);
      v28 = v26(v24, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
      v29 = *(v28 + 16);

      *(v23 + 4) = v29;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_24AF48000, v16, v17, "%ld pairing executors created.", v23, 0xCu);
      MEMORY[0x24C237030](v23, -1, -1);
    }

    else
    {
      v44 = v0[71];
      swift_unknownObjectRelease();
    }

    v45 = v0[75];
    v46 = v0[71];
    v47 = swift_allocObject();
    v0[107] = v47;
    v53 = *v13;
    swift_unknownObjectWeakInit();
    v48 = swift_task_alloc();
    v0[108] = v48;
    *(v48 + 16) = v53;
    *(v48 + 32) = v47;
    *(v48 + 40) = v0 + 17;
    v49 = *(MEMORY[0x277D858E8] + 4);
    v50 = swift_task_alloc();
    v0[109] = v50;
    *v50 = v0;
    v50[1] = PairingCoordinator._proceedWithConnection();

    return MEMORY[0x282200600]();
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v30 = swift_allocError();
    *v31 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v0[110] = v30;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v30);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      MEMORY[0x24C236EC0](v30);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_24AF48000, v33, v34, "Failure in _pairAccessory %{public}@", v35, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v36, -1, -1);
      MEMORY[0x24C237030](v35, -1, -1);
    }

    MEMORY[0x24C236EC0](v30);
    v38 = swift_task_alloc();
    v0[111] = v38;
    *v38 = v0;
    v38[1] = PairingCoordinator._proceedWithConnection();
    v39 = v0[71];
    v40 = v0[70];
    v41 = v0[69];
    v42 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v30, v42, v41, v40);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 864);
  v4 = *(*v0 + 856);
  v8 = *v0;

  v5 = *(v1 + 616);
  v6 = *(v1 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v6, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[74];

  v2 = v0[1];

  return v2();
}

{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v8 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = v2[77];
    v5 = v2[76];
    v6 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    MEMORY[0x24C236EB0](v2[110]);
    v4 = v2[77];
    v5 = v2[76];
    v6 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  MEMORY[0x24C236EB0](v0[110]);
  v1 = v0[74];

  v2 = v0[1];

  return v2();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[93];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[101];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[105];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
}

{
  v1 = v0[110];
  MEMORY[0x24C236EB0](v1);
  MEMORY[0x24C236EB0](v1);
  v2 = v0[112];
  v3 = v0[74];

  v4 = v0[1];

  return v4();
}

uint64_t PairingCoordinator._proceedWithConnection()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 592);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 904) = a1;
    v10 = *(v4 + 616);
    v11 = *(v4 + 608);

    return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v11, v10);
  }
}

uint64_t PairingCoordinator._proceedWithConnection()(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[104];
  v12 = *v2;
  (*v2)[105] = v1;

  if (v1)
  {
    v6 = v4[95];
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 47);
    swift_unknownObjectRelease();
    v7 = v4[77];
    v8 = v4[76];
    v9 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v10 = v4[95];
    v4[106] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 47);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 42);
    v7 = v4[77];
    v8 = v4[76];
    v9 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t PairingCoordinator._handleAccessoryDetection(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v6 = type metadata accessor for UUID();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = *(a3 + 8);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v11;
  v4[21] = v10;

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v11, v10);
}

uint64_t PairingCoordinator._handleAccessoryDetection(_:)()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[16];
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[15];
    v8 = *(v7 + 40);
    v0[22] = v8;
    v0[23] = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8(v5);
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    v11 = (*(v10 + 64))(v9, v10);
    v13 = v12;
    v0[24] = v11;
    v0[25] = v12;
    v0[26] = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMR);
    v14 = swift_allocObject();
    v0[27] = v14;
    *(v14 + 16) = xmmword_24AFB0430;
    outlined init with copy of PairingEligibilityInfo(v6, v14 + 32);
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v17, v16);
  }

  else
  {
    v18 = v0[19];
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

{
  rawValue = v0[26]._rawValue;
  v3 = v0[24]._rawValue;
  v2 = v0[25]._rawValue;
  PairingInfoStore.updateAccessories(_:)(v0[27]);
  v0[28]._rawValue = v4;
  if (v4)
  {
    v5 = v0[20]._rawValue;
    v6 = v0[21]._rawValue;
    v7 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  else
  {
    v8 = v0[27]._rawValue;
    v9 = v0[24]._rawValue;
    swift_unknownObjectRelease();

    v5 = v0[20]._rawValue;
    v6 = v0[21]._rawValue;
    v7 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2(v5, v3);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v0[29] = v8;
  if (v8)
  {
    v10 = v0[19];
    v11 = v0[13];
    v0[30] = v9;
    v12 = v9;
    v0[31] = swift_getObjectType();
    v13 = v11[3];
    v14 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v13);
    (*(v14 + 8))(v13, v14);
    v15 = *(v12 + 40);
    v12 += 40;
    v0[32] = v15;
    v0[33] = v12 & 0xFFFFFFFFFFFFLL | 0x9435000000000000;
    v16 = *(v12 - 32);
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v18, v17);
  }

  else
  {
    v27 = v0[15];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v0[12] = 4;
    v19 = *(v27 + 152);
    v26 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[34] = v21;
    *v21 = v0;
    v21[1] = PairingCoordinator._handleAccessoryDetection(_:);
    v22 = v0[15];
    v23 = v0[16];
    v24 = v0[14];

    return v26(v0 + 12, v24, v22);
  }
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  (*(v0 + 256))(v3, *(v0 + 248), *(v0 + 240));
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v6, v7);
}

{
  v9 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[12] = 4;
  v1 = *(v9 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];

  return v8(v0 + 12, v6, v4);
}

{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {
    v4 = v3[20];
    v5 = v3[21];

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v4, v5);
  }

  else
  {
    v6 = v3[19];

    v7 = v3[1];

    return v7();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  else
  {
    MEMORY[0x24C236EB0](v2[36]);
    v4 = v2[20];
    v5 = v2[21];
    v6 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  MEMORY[0x24C236EB0](v0[36]);
  v1 = v0[19];

  v2 = v0[1];

  return v2();
}

{
  v18 = v0;
  v1 = v0[27];
  v2 = v0[24];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[28];
  v0[36] = v3;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7F0, &v17);
    *(v7 + 12) = 2114;
    MEMORY[0x24C236EC0](v3);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24AF48000, v5, v6, "Failure in %s: %{public}@", v7, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  MEMORY[0x24C236EC0](v3);
  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[14];
  v15 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v3, v15, v14, v12);
}

{
  v16 = v0;
  v1 = v0[35];
  v0[36] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7F0, &v15);
    *(v5 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in %s: %{public}@", v5, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  v13 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v13, v12, v10);
}

{
  v1 = v0[39];
  v2 = v0[37];
  MEMORY[0x24C236EB0](v0[36]);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[39];
  v7 = v0[36];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v8, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C236EB0](v7);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[36]);

    MEMORY[0x24C236EB0](v6);
  }

  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t PairingCoordinator._handleAccessoryScannerFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v7;
  v4[7] = v6;

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryScannerFailure(_:), v7, v6);
}

uint64_t PairingCoordinator._handleAccessoryScannerFailure(_:)()
{
  v23 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[8] = __swift_project_value_buffer(v5, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000024AFAF810, &v22);
      *(v9 + 12) = 2114;
      MEMORY[0x24C236EC0](v8);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_24AF48000, v6, v7, "Failure in %s: %{public}@", v9, 0x16u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    v13 = v0[2];
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = PairingCoordinator._handleAccessoryScannerFailure(_:);
    v15 = v0[4];
    v16 = v0[5];
    v17 = v0[3];
    v18 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v13, v18, v17, v15);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v20 = 8;
    swift_willThrow();
    v21 = v0[1];

    return v21();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryScannerFailure(_:), v4, v5);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[10];
  v2 = v0[8];
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {

    MEMORY[0x24C236EB0](v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = type metadata accessor for UUID();
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)()
{
  v1 = v0[31];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v3 = v0[34];
    v4 = v0[35];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[41] = v5;
    v0[42] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[43] = v8;
    v0[44] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v8, v7);
  }

  else
  {
    v10 = v0[38];
    v9 = v0[39];

    v11 = v0[1];

    return v11();
  }
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = (*(v0 + 328))(*(v0 + 272), *(v0 + 280));
  *(v0 + 360) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v3, 0);
}

{
  v1 = *(v0 + 360);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 224) = 10;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 224;

  v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2);

  if (v4)
  {
    v5 = *(v0 + 360);

    v6 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v7 = *(v0 + 360);
    v8 = *(v1 + 120);
    *(v0 + 232) = 14;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 232;

    *(v0 + 560) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v8) & 1;

    v6 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[40];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AF48000, v2, v3, "Already handled accessory configuration.", v6, 2u);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  swift_unknownObjectRelease();

  v8 = v0[38];
  v7 = v0[39];

  v9 = v0[1];

  return v9();
}

{
  if (*(v0 + 560))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 320);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled accessory configuration.", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v8 = *(v0 + 304);
    v7 = *(v0 + 312);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 280);
    *(v0 + 368) = *(v11 + 40);
    *(v0 + 376) = (v11 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v12 = *(v0 + 344);
    v13 = *(v0 + 352);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v12, v13);
  }
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  (*(v0 + 368))(*(v0 + 272), *(v0 + 280));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[48] = v3;
  v0[49] = v4;
  v0[50] = swift_getObjectType();
  v6 = *(v5 + 16);
  v5 += 16;
  v0[51] = v6;
  v0[52] = v5 & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = *(v5 - 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v9, v8);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  (*(v0 + 408))(*(v0 + 400), *(v0 + 392));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v44 = v0;
  if (*(v0 + 120) <= 1uLL)
  {
    outlined destroy of DetectedAccessory(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v2 = 12;
    swift_willThrow();
LABEL_8:
    *(v0 + 528) = v1;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v19 = *(v0 + 288);
    v20 = *(v0 + 256);
    v21 = type metadata accessor for Logger();
    *(v0 + 536) = __swift_project_value_buffer(v21, static Logger.pairingCoordinator);
    (*(v18 + 16))(v17, v20, v19);
    MEMORY[0x24C236EC0](v1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v1);
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 288);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43[0] = v42;
      *v28 = 136315907;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, v43);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v26 + 8))(v25, v27);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v43);

      *(v28 + 24) = v32;
      *(v28 + 32) = 2114;
      MEMORY[0x24C236EC0](v1);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 34) = v33;
      *v40 = v33;
      _os_log_impl(&dword_24AF48000, v22, v23, "Failure in %s for %{private,mask.hash}s: %{public}@", v28, 0x2Au);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v42, -1, -1);
      MEMORY[0x24C237030](v28, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    MEMORY[0x24C236EC0](v1);
    v34 = swift_task_alloc();
    *(v0 + 544) = v34;
    *v34 = v0;
    v34[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
    v35 = *(v0 + 320);
    v36 = *(v0 + 272);
    v37 = *(v0 + 280);
    v38 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v38, v36, v37);
  }

  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = *(v0 + 256);
  outlined init with take of Accessory((v0 + 96), v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  (*(v8 + 8))(v7, v8);
  v9 = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v3, v4);
  if ((v9 & 1) == 0)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v16 = 14;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_8;
  }

  *(v0 + 240) = 10;
  v39 = (*(v0 + 280) + 152);
  v41 = (*v39 + **v39);
  v10 = (*v39)[1];
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v12 = *(v0 + 320);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);

  return v41(v0 + 240, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 352);
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  (*(v0 + 368))(*(v0 + 272), *(v0 + 280));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = (*(v3 + 64))(v2, v3);
  v6 = v5;
  v0[55] = v4;
  v0[56] = v5;
  v0[57] = swift_getObjectType();
  v7 = v1[3];
  v0[58] = v7;
  v0[59] = v1[4];
  v0[60] = __swift_project_boxed_opaque_existential_1(v1, v7);
  v8 = *(v6 + 168);
  v6 += 168;
  v0[61] = v8;
  v0[62] = v6 & 0xFFFFFFFFFFFFLL | 0x2A15000000000000;
  v9 = *(v6 - 160);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v11, v10);
}

{
  v1 = *(v0 + 496);
  v2 = *(v0 + 440);
  v3 = *(v0 + 432);
  (*(v0 + 488))(*(v0 + 480), *(v0 + 464), *(v0 + 472), *(v0 + 456), *(v0 + 448));
  *(v0 + 504) = v3;
  if (v3)
  {
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[55];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v2 = swift_task_alloc();
  v0[64] = v2;
  *v2 = v0;
  v2[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v3 = v0[40];
  v5 = v0[34];
  v4 = v0[35];

  return PairingCoordinator._finishPairingIfPossible()(v5, v4);
}

{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[40];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[38];
  v2 = v0[39];

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v6 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 528));
    v4 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[66];
  v2 = v0[40];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v4 = v0[38];
  v3 = v0[39];

  v5 = v0[1];

  return v5();
}

{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[54];
  v0[66] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x24C236EC0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315907;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v27);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2114;
    MEMORY[0x24C236EC0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v25 = v18;
    _os_log_impl(&dword_24AF48000, v7, v8, "Failure in %s for %{private,mask.hash}s: %{public}@", v13, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v26, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  MEMORY[0x24C236EC0](v1);
  v19 = swift_task_alloc();
  v0[68] = v19;
  *v19 = v0;
  v19[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v20 = v0[40];
  v21 = v0[34];
  v22 = v0[35];
  v23 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v23, v21, v22);
}

{
  v29 = v0;
  v1 = v0[55];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[63];
  v0[66] = v2;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[32];
  v7 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v7, static Logger.pairingCoordinator);
  (*(v4 + 16))(v3, v6, v5);
  MEMORY[0x24C236EC0](v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v2);
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[36];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315907;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v28);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v28);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2114;
    MEMORY[0x24C236EC0](v2);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v19;
    *v26 = v19;
    _os_log_impl(&dword_24AF48000, v8, v9, "Failure in %s for %{private,mask.hash}s: %{public}@", v14, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v27, -1, -1);
    MEMORY[0x24C237030](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  MEMORY[0x24C236EC0](v2);
  v20 = swift_task_alloc();
  v0[68] = v20;
  *v20 = v0;
  v20[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v21 = v0[40];
  v22 = v0[34];
  v23 = v0[35];
  v24 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v24, v22, v23);
}

{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[65];
  v0[66] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x24C236EC0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315907;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v27);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2114;
    MEMORY[0x24C236EC0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v25 = v18;
    _os_log_impl(&dword_24AF48000, v7, v8, "Failure in %s for %{private,mask.hash}s: %{public}@", v13, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v26, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  MEMORY[0x24C236EC0](v1);
  v19 = swift_task_alloc();
  v0[68] = v19;
  *v19 = v0;
  v19[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v20 = v0[40];
  v21 = v0[34];
  v22 = v0[35];
  v23 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v23, v21, v22);
}

{
  v1 = v0[69];
  v2 = v0[67];
  MEMORY[0x24C236EB0](v0[66]);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[40];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v9, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    v12 = v0[40];
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);

    MEMORY[0x24C236EB0](v6);
  }

  v14 = v0[38];
  v13 = v0[39];

  v15 = v0[1];

  return v15();
}

uint64_t PairingCoordinator._finishPairingIfPossible()(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[37] = v6;
  v3[38] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v6, v5);
}

uint64_t PairingCoordinator._finishPairingIfPossible()()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[36];
    (*(v0[35] + 40))(v0[34]);
    v5 = v0[22];
    v6 = v0[23];
    __swift_project_boxed_opaque_existential_1(v0 + 19, v5);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    v0[39] = v7;
    v0[40] = v8;
    v0[41] = swift_getObjectType();
    v10 = *(v9 + 128);
    v9 += 128;
    v0[42] = v10;
    v0[43] = v9 & 0xFFFFFFFFFFFFLL | 0x4BD000000000000;
    v11 = *(v9 - 120);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v13, v12);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  (*(v0 + 336))(*(v0 + 328), *(v0 + 320));
  swift_unknownObjectRelease();
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v3, v4);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._finishPairingIfPossible();
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];

  return PairingCoordinator._isPairingNotFailed()(v4, v2);
}

{
  v1 = v0[36];
  v2 = (*(v0[35] + 16))(v0[34]);
  v0[46] = v2;

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v2, 0);
}

{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  swift_beginAccess();
  v3 = *(v2 + 120);
  *(v0 + 256) = 11;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 256;

  v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3);

  if (v5)
  {
    v6 = *(v0 + 368);
    v7 = *(v2 + 120);
    *(v0 + 264) = 14;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 264;

    v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v7);

    v10 = v9 ^ 1;
  }

  else
  {
    v11 = *(v0 + 368);

    v10 = 0;
  }

  *(v0 + 409) = v10 & 1;
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v12, v13);
}

{
  v44 = v0;
  v1 = *(v0 + 408);
  outlined init with copy of PairingContext?(v0 + 112, v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  if (v1)
  {
    if (*(v0 + 409) != 1)
    {
      if (*(v0 + 48))
      {
        if (one-time initialization token for pairingCoordinator != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.pairingCoordinator);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v43 = v27;
          *v26 = 136315138;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v43);
          _os_log_impl(&dword_24AF48000, v24, v25, "%s: wait for BA pairing part to finish.", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x24C237030](v27, -1, -1);
          MEMORY[0x24C237030](v26, -1, -1);
        }

        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
        v11 = v0 + 24;
      }

      else
      {
        if (one-time initialization token for pairingCoordinator != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.pairingCoordinator);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v43 = v41;
          *v40 = 136315138;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v43);
          _os_log_impl(&dword_24AF48000, v38, v39, "%s: wait for user's input.", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          MEMORY[0x24C237030](v41, -1, -1);
          MEMORY[0x24C237030](v40, -1, -1);
        }

        v11 = v0 + 112;
      }

      goto LABEL_35;
    }

    v2 = *(v0 + 280);
    v3 = *(v0 + 288);
    v4 = *(v0 + 272);
    v5 = *(v0 + 40);
    *(v0 + 192) = *(v0 + 24);
    *(v0 + 208) = v5;
    *(v0 + 224) = *(v0 + 56);
    LOBYTE(v3) = PairingCoordinator.isUserActionable.getter(v4, v2);
    outlined init with copy of PairingContext?(v0 + 192, v0 + 72, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
    if ((v3 & 1) != 0 && !*(v0 + 96))
    {
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v43 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v43);
        _os_log_impl(&dword_24AF48000, v7, v8, "%s: wait for user's input.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x24C237030](v10, -1, -1);
        MEMORY[0x24C237030](v9, -1, -1);
      }

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v11 = v0 + 112;
LABEL_35:
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v42 = *(v0 + 8);

      return v42();
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 72, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pairingCoordinator);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v43);
      _os_log_impl(&dword_24AF48000, v29, v30, "%s: proceed with pairing finish.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x24C237030](v32, -1, -1);
      MEMORY[0x24C237030](v31, -1, -1);
    }

    v33 = swift_task_alloc();
    *(v0 + 392) = v33;
    *v33 = v0;
    v33[1] = PairingCoordinator._finishPairingIfPossible();
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    v36 = *(v0 + 272);

    return PairingCoordinator._finalizePairing(with:)(v0 + 192, v36, v34);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pairingCoordinator);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v43);
      _os_log_impl(&dword_24AF48000, v13, v14, "%s: proceed with pairing failure.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x24C237030](v16, -1, -1);
      MEMORY[0x24C237030](v15, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = PairingCoordinator._finishPairingIfPossible();
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    v20 = *(v0 + 272);
    v21 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v21, v20, v18);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 360);
  v2 = *(v0 + 8);

  return v2();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 384);
  v2 = *(v0 + 8);

  return v2();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 400);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingCoordinator._finishPairingIfPossible()(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 304);
  v8 = *(v3 + 296);
  if (v1)
  {
    v9 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v9 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t implicit closure #1 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 144) = 1;
  *(v4 + 88) = *(a4 + 168);
  *(v4 + 96) = (a4 + 168) & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
  v5 = *(a4 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v7, v6);
}

uint64_t implicit closure #1 in PairingCoordinator._startAccessoryPairing()()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  *(v0 + 104) = (*(v0 + 88))(v0 + 144, *(v0 + 72), *(v0 + 80));
  *(v0 + 112) = v3;
  *(v0 + 145) = v4;

  return MEMORY[0x2822009F8](implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = *(v0 + 145);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_allocObject();
  v13 = *(v0 + 72);
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v3, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 120) = v5;
  *(v5 + 16) = v13;
  *(v5 + 32) = v4;
  outlined init with take of Accessory((v0 + 16), v5 + 40);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v15 = *(v0 + 80);
  v11 = MEMORY[0x277D84F78] + 8;

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v6, v7, v8, v1 & 1, &async function pointer to partial apply for closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v5, v9, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v6 = type metadata accessor for UUID();
  v5[44] = v6;
  v7 = *(v6 - 8);
  v5[45] = v7;
  v8 = *(v7 + 64) + 15;
  v5[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

uint64_t closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()()
{
  v1 = v0[40];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[47] = Strong;
  if (Strong)
  {
    v3 = v0[42];
    v4 = v0[43];
    v5 = *(v4 + 40);
    v4 += 40;
    v0[48] = v5;
    v0[49] = v4 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v4 - 32);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[50] = v8;
    v0[51] = v7;

    return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v8, v7);
  }

  else
  {
    v9 = v0[46];

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  (*(v0 + 384))(*(v0 + 336), *(v0 + 344));

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = v0[41];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[52] = v4;
  ObjectType = swift_getObjectType();
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 16))(v8, v9);
  v10 = *(v6 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[53] = AssociatedTypeWitness;
  v0[5] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[54] = AssociatedConformanceWitness;
  v0[6] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v0[55] = boxed_opaque_existential_1;
  v17 = (v10 + *v10);
  v14 = v10[1];
  v15 = swift_task_alloc();
  v0[56] = v15;
  *v15 = v0;
  v15[1] = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();

  return v17(boxed_opaque_existential_1, v0 + 12, ObjectType, v6);
}

{
  v2 = *v1;
  v3 = (*v1)[56];
  v4 = *v1;
  v2[57] = v0;

  v5 = v2[52];
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 12);
  swift_unknownObjectRelease();
  if (v0)
  {
    v6 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v6 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v24 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), (v0 + 17));
  outlined init with copy of PairingEligibilityInfo(v1, (v0 + 22));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[45];
    v5 = v0[46];
    v22 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 141558787;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    outlined init with copy of PairingEligibilityInfo((v0 + 17), (v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v23);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    v13 = v0[25];
    v14 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v13);
    (*(v14 + 8))(v13, v14);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v5, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

    *(v7 + 34) = v18;
    _os_log_impl(&dword_24AF48000, v3, v4, "Got peripheral object %{private,mask.hash}s for %{private,mask.hash}s.", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  }

  v19 = v0[50];
  v20 = v0[51];

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v19, v20);
}

{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  (*(v0 + 384))(*(v0 + 336), *(v0 + 344));

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[58] = v3;
  v0[59] = v4;
  v0[60] = swift_getObjectType();
  v6 = *(v5 + 144);
  v5 += 144;
  v0[61] = v6;
  v0[62] = v5 & 0xFFFFFFFFFFFFLL | 0xDEAA000000000000;
  v7 = *(v5 - 136);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v9, v8);
}

{
  v1 = *(v0 + 496);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  (*(v0 + 488))(*(v0 + 440), *(v0 + 424), *(v0 + 432), *(v0 + 480), *(v0 + 472));
  *(v0 + 504) = v3;
  if (v3)
  {
    v4 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v4 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[58];
  v2 = v0[47];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[46];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[47];
  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[57];
  v3 = v0[46];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[58];
  v2 = v0[47];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[63];
  v4 = v0[46];

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v15;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(v15 + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._withOptionalTimeout<A>(timeout:_:), v12, v11);
}

uint64_t PairingCoordinator._withOptionalTimeout<A>(timeout:_:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    if (*(v0 + 104))
    {
      v19 = (*(v0 + 40) + **(v0 + 40));
      v4 = *(*(v0 + 40) + 4);
      v5 = swift_task_alloc();
      *(v0 + 96) = v5;
      *v5 = v0;
      v5[1] = PairingCoordinator._withOptionalTimeout<A>(timeout:_:);
      v6 = *(v0 + 48);
      v7 = *(v0 + 16);

      return v19(v7);
    }

    else
    {
      v11 = *(MEMORY[0x277D08920] + 4);
      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v12[1] = PairingCoordinator._withOptionalTimeout<A>(timeout:_:);
      v13 = *(v0 + 64);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      v16 = *(v0 + 24);
      v17 = *(v0 + 32);
      v18 = *(v0 + 16);

      return MEMORY[0x28215EB08](v18, v16, v17, v14, v15, v13);
    }
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v9 = 8;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _ss5Error_pIegHzo_ytsAA_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return v6();
}

uint64_t implicit closure #2 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a3, ObjectType, a2);
}

uint64_t closure #1 in PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._preFetchMetadata()()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = v0[24];
    v4 = v0[25];
    v5 = *(v4 + 40);
    v4 += 40;
    v0[27] = v5;
    v0[28] = v4 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v4 - 32);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[29] = v8;
    v0[30] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v8, v7);
  }

  else
  {
    v9 = v0[20];
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v0[31] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PairingCoordinator._preFetchMetadata();
  v8 = v0[22];
  v9 = v0[23];

  return AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)((v0 + 2), v8, v9, ObjectType, v5);
}

{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v2, v3);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 288) = swift_getObjectType();
  v6 = *(v0 + 40);
  *(v0 + 296) = v6;
  *(v0 + 312) = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v7 = *(v5 + 152);
  v5 += 152;
  *(v0 + 320) = v7;
  *(v0 + 328) = v5 & 0xFFFFFFFFFFFFLL | 0x907A000000000000;
  v8 = *(v5 - 144);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v10, v9);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);
  v3 = *(v0 + 264);
  (*(v0 + 320))(*(v0 + 312), *(v0 + 296), *(v0 + 304), *(v0 + 288), *(v0 + 280));
  *(v0 + 336) = v3;
  if (v3)
  {
    v4 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v4 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[34];
  v2 = v0[26];
  v3 = v0[20];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[31];
  v2 = v0[26];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = v0[33];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[34];
  v2 = v0[26];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[42];
  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

uint64_t closure #2 in PairingCoordinator._preFetchMetadata()()
{
  v1 = v0[20];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = *(v4 + 40);
    v4 += 40;
    v0[25] = v5;
    v0[26] = v4 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v4 - 32);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v8;
    v0[28] = v7;

    return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 200))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v0[29] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = closure #2 in PairingCoordinator._preFetchMetadata();
  v8 = v0[21];

  return AccessoryMetadataProvider._retrieveProductInfo(for:)((v0 + 2), v8, ObjectType, v5);
}

{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v3 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[29];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v2, v3);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 200))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 272) = swift_getObjectType();
  v6 = *(v0 + 40);
  *(v0 + 280) = v6;
  *(v0 + 296) = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v7 = *(v5 + 160);
  v5 += 160;
  *(v0 + 304) = v7;
  *(v0 + 312) = v5 & 0xFFFFFFFFFFFFLL | 0x9259000000000000;
  v8 = *(v5 - 152);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v10, v9);
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  (*(v0 + 304))(*(v0 + 296), *(v0 + 280), *(v0 + 288), *(v0 + 272), *(v0 + 264));
  *(v0 + 320) = v3;
  if (v3)
  {
    v4 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v4 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[24];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[29];
  v2 = v0[24];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[32];
  v2 = v0[24];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[40];
  v4 = v0[1];

  return v4();
}

uint64_t PairingCoordinator._nextPairingFlowStep()(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v6;
  v3[19] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v6, v5);
}

uint64_t PairingCoordinator._nextPairingFlowStep()()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[16];
    v7 = *(v6 + 16);
    v0[20] = v7;
    v0[21] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v8 = v7(v5);
    v0[22] = v8;

    return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v8, 0);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v9 = 8;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 40) = 8;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 40;

  *(v0 + 232) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;
  *(v0 + 184) = 0;

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v4, v5);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 192) = v3;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v3, 0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v0 + 64) = 3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 64;

  *(v0 + 233) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3) & 1;
  *(v0 + 200) = v2;

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v5, v6);
}

{
  if (*(v0 + 233))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 136);
    v1 = PairingCoordinator.isUserActionable.getter(*(v0 + 120), *(v0 + 128)) ^ 1;
  }

  *(v0 + 234) = v1 & 1;
  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  v5 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 208) = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v5, 0);
}

{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v0 + 88) = 9;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 88;

  *(v0 + 235) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3) & 1;

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v5, v6);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 216) = v3;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v3, 0);
}

{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v6 = *v4++;
    v5 = v6;
    --v3;
    if (v6 >= 0x11)
    {
      outlined copy of PairingCoordinatorState(v5);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v0[28] = v5;
  v7 = v0[27];

  v8 = v0[18];
  v9 = v0[19];

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v8, v9);
}

{
  v39 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v37 = *(v0 + 224);
    v5 = *(v0 + 235);
    v6 = *(v0 + 234);
    v7 = v1;
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 67240962;
    *(v9 + 4) = v8;
    v1 = v7;
    *(v9 + 8) = 1026;
    *(v9 + 10) = v6;
    *(v9 + 14) = 1026;
    *(v9 + 16) = v5;
    *(v9 + 20) = 2082;
    *(v0 + 112) = v37;
    MEMORY[0x24C236EC0](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v38);

    *(v9 + 22) = v13;
    _os_log_impl(&dword_24AF48000, v3, v4, "prePairingFinished = %{BOOL,public}d, proceedWithPairing = %{BOOL,public}d, pairingAlreadyStarted = %{BOOL,public}d, pairingError = %{public}s.", v9, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
  }

  if (*(v0 + 235) == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AF48000, v14, v15, "Pairing has already started", v16, 2u);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    MEMORY[0x24C236EB0](v1);

    v17 = 0;
    goto LABEL_27;
  }

  v18 = *(v0 + 224);
  if (*(v0 + 234) != 1)
  {
    if (v18)
    {
      MEMORY[0x24C236EC0](v1);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      MEMORY[0x24C236EB0](v1);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        MEMORY[0x24C236EC0](v1);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_24AF48000, v24, v25, "Wait for user to proceed with pairing to display error: %{public}@", v26, 0xCu);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C237030](v27, -1, -1);
        MEMORY[0x24C237030](v26, -1, -1);
        MEMORY[0x24C236EB0](v1);
      }

      else
      {

        MEMORY[0x24C236EB0](v1);
      }

LABEL_26:
      v17 = 2;
      goto LABEL_27;
    }

LABEL_21:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v17 = 2;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24AF48000, v32, v33, "Waiting for pre-pairing operation finish and user action.", v34, 2u);
      MEMORY[0x24C237030](v34, -1, -1);
      MEMORY[0x24C236EB0](v1);

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v18)
  {
    MEMORY[0x24C236EC0](v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    MEMORY[0x24C236EB0](v1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      MEMORY[0x24C236EC0](v1);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_24AF48000, v19, v20, "Display error: %{public}@", v21, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v22, -1, -1);
      MEMORY[0x24C237030](v21, -1, -1);
      MEMORY[0x24C236EB0](v1);
    }

    else
    {

      MEMORY[0x24C236EB0](v1);
    }

    v17 = 1;
    goto LABEL_27;
  }

  if (*(v0 + 232) != 1)
  {
    goto LABEL_21;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24AF48000, v29, v30, "Proceed with pairing", v31, 2u);
    MEMORY[0x24C237030](v31, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  v17 = 3;
LABEL_27:
  v35 = *(v0 + 8);

  return v35(v17);
}

uint64_t closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[22] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._proceedWithConnection()()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v3 = v0[25];
    v4 = v0[26];
    v5 = *(v4 + 40);
    v4 += 40;
    v0[30] = v5;
    v0[31] = v4 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6 = *(v4 - 32);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), v8, v7);
  }

  else
  {
    v10 = v0[27];
    v9 = v0[28];

    v11 = v0[1];

    return v11();
  }
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v27 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v32 = **(v0 + 176);
    v5 = (v27 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v31 = *(v7 + 56);
    v29 = v6;
    v30 = (v7 + 48);
    v28 = (v7 + 8);
    do
    {
      v34 = v4;
      v9 = *(v0 + 224);
      v10 = *(v0 + 232);
      v11 = *(v0 + 216);
      v12 = *(v0 + 192);
      v33 = *(v0 + 200);
      v35 = *v5;
      v31(v9, 1, 1, v6);
      outlined init with copy of PairingEligibilityInfo(v12, v0 + 56);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      *(v13 + 32) = v33;
      *(v13 + 48) = v10;
      *(v13 + 56) = v35;
      outlined init with take of Accessory((v0 + 56), v13 + 72);
      outlined init with copy of PairingContext?(v9, v11, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v9) = (*v30)(v11, 1, v6);
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();

      v15 = *(v0 + 216);
      if (v9 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 216), &_sScPSgMd, &_sScPSgMR);
        if (*v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v15, v6);
        if (*v14)
        {
LABEL_8:
          v18 = *(v13 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v19;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_9:
      v20 = swift_allocObject();
      *(v20 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
      *(v20 + 24) = v13;
      v21 = v17 | v16;
      if (v17 | v16)
      {
        v21 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v16;
        *(v0 + 120) = v17;
      }

      v8 = *(v0 + 224);
      *(v0 + 152) = 1;
      *(v0 + 160) = v21;
      *(v0 + 168) = v32;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sScPSgMd, &_sScPSgMR);
      ++v5;
      v4 = v34 - 1;
      v6 = v29;
    }

    while (v34 != 1);
  }

  v22 = *(v0 + 232);

  swift_unknownObjectRelease();
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for TaskPriority();
  v15 = *(v0 + 48);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 24) = v3;
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v15;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v8);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v1, &_sScPSgMd, &_sScPSgMR);
  ObjectType = swift_getObjectType();
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);

  return PairingExecutor._pair(peripheral:)(v12, ObjectType, v11);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMR);
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v3 = *(v1 + 24);
  v0[19] = v3;
  if (Strong)
  {
    v4 = v0[9];
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v0[20] = v5;
    if (v5)
    {
      v0[21] = swift_getObjectType();
      v7 = *(v3 + 24);
      v6 = v3 + 24;
      v0[22] = v7;
      v0[23] = v6 & 0xFFFFFFFFFFFFLL | 0xFE000000000000;
      v8 = *(*(v6 - 16) + 8);
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[24] = v10;
      v0[25] = v9;

      return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v10, v9);
    }

    swift_unknownObjectRelease();
  }

  v11 = v0[17];
  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v0 + 176))(*(v0 + 168), v2);
  *(v0 + 208) = *(v2 + 128);
  *(v0 + 216) = (v2 + 128) & 0xFFFFFFFFFFFFLL | 0xF9FA000000000000;
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v4, v5);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  (*(v0 + 208))(*(v0 + 168), *(v0 + 152));
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);

  return PairingCoordinator._listenToUpdates(of:stream:)(v6, v7, v8, v9);
}

{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v11 = *v1;
  *(*v1 + 232) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v9 = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[20];
  v8 = v0[18];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in executor updates listener %{public}@", v9, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v0[20];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
  }

  v13 = v0[17];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t PairingCoordinator._listenToUpdates(of:stream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(type metadata accessor for PairingExecutorState(0) - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtSgMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtSgMR) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F13ExecutorStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F13ExecutorStateOt_GMR);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v5[17] = *(v13 + 64);
  v5[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = *(a4 + 8);
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v16;
  v5[22] = v15;

  return MEMORY[0x2822009F8](PairingCoordinator._listenToUpdates(of:stream:), v16, v15);
}

uint64_t PairingCoordinator._listenToUpdates(of:stream:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  v4 = v0[18];
  v5 = v0[19];
  if (v2)
  {
    v6 = v0[14];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v10 = 9;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    type metadata accessor for TimeTracker();
    v0[23] = TimeTracker.__allocating_init()();
    v13 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    UUID.init()();
    v0[24] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v0[25] = __swift_project_value_buffer(v14, static Logger.pairingCoordinator);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24AF48000, v15, v16, "PairingCoordinator: start listening to executor events.", v17, 2u);
      MEMORY[0x24C237030](v17, -1, -1);
    }

    v18 = v0[14];
    v19 = v0[3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMR);
    AsyncStream.makeAsyncIterator()();
    v20 = v0[20];
    v21 = v0[6];
    v22 = *(MEMORY[0x277D85798] + 4);
    v23 = swift_task_alloc();
    v0[26] = v23;
    *v23 = v0;
    v23[1] = PairingCoordinator._listenToUpdates(of:stream:);
    v24 = v0[14];
    v25 = v0[11];
    v26 = v0[12];

    return MEMORY[0x2822003E8](v25, v21, v20, v26);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](PairingCoordinator._listenToUpdates(of:stream:), v4, v3);
}

{
  v1 = *(v0 + 88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 200);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v4, v5, "PairingCoordinator: finish listening to executor events.", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 112);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v40 = *(v0 + 184);
    v41 = *(v0 + 192);
    v17 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v38 = *(v0 + 64);
    v36 = v17;
    v37 = *(v0 + 56);
    v22 = *(v0 + 48);
    v23 = *(v0 + 16);
    v24 = *v1;
    v39 = *(v0 + 32);

    outlined init with take of UserSessionState(v1 + *(v2 + 48), v20, type metadata accessor for PairingExecutorState);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of UserSessionState(v20, v21, type metadata accessor for PairingExecutorState);
    (*(v18 + 16))(v17, v23, v19);
    v26 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v27 = (v38 + *(v18 + 80) + v26) & ~*(v18 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v39;
    *(v28 + 32) = v25;
    *(v28 + 40) = v40;
    outlined init with take of UserSessionState(v21, v28 + v26, type metadata accessor for PairingExecutorState);
    (*(v18 + 32))(v28 + v27, v36, v19);

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    outlined destroy of UserSessionState(v20, type metadata accessor for PairingExecutorState);

    v29 = *(v0 + 160);
    v30 = *(v0 + 48);
    v31 = *(MEMORY[0x277D85798] + 4);
    v32 = swift_task_alloc();
    *(v0 + 208) = v32;
    *v32 = v0;
    v32[1] = PairingCoordinator._listenToUpdates(of:stream:);
    v33 = *(v0 + 112);
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);

    return MEMORY[0x2822003E8](v34, v30, v29, v35);
  }
}

uint64_t closure #1 in PairingCoordinator._listenToUpdates(of:stream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = *(*(type metadata accessor for PairingExecutorState.RecordCreation(0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for AnalyticsEvent(0);
  v6[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for PairingExecutorState(0);
  v6[26] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v6[39] = v13;
  v14 = *(v13 - 8);
  v6[40] = v14;
  v15 = *(v14 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._listenToUpdates(of:stream:)()
{
  v1 = v0[15];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    v3 = v0[16];
    type metadata accessor for TimeTracker();
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, MEMORY[0x277D088F0]);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[45] = v5;
    v0[46] = v4;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v4);
  }

  else
  {
    v7 = v0[42];
    v6 = v0[43];
    v8 = v0[41];
    v9 = v0[37];
    v10 = v0[38];
    v12 = v0[35];
    v11 = v0[36];
    v14 = v0[33];
    v13 = v0[34];
    v15 = v0[32];
    v18 = v0[31];
    v19 = v0[30];
    v20 = v0[29];
    v21 = v0[28];
    v22 = v0[27];
    v23 = v0[25];
    v24 = v0[23];
    v25 = v0[22];
    v26 = v0[21];

    v16 = v0[1];

    return v16();
  }
}

{
  v1 = v0[16];
  v0[47] = dispatch thunk of TimeTracker.lastCheckpointName.getter();
  v0[48] = v2;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[17];
  v0[49] = PairingExecutorState.description.getter();
  v0[50] = v2;
  v3 = v0[45];
  v4 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v3, v4);
}

{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[16];
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v125 = v0;
  if (v0[48])
  {
    v1 = v0[45];
    v2 = v0[46];
    v3 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_3:

    return MEMORY[0x2822009F8](v3, v1, v2);
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v4 = v0[37];
  v5 = v0[17];
  v6 = type metadata accessor for Logger();
  v0[53] = v6;
  __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  outlined init with copy of UserSessionState(v5, v4, type metadata accessor for PairingExecutorState);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[37];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v124 = v12;
    *v11 = 136446210;
    v13 = PairingExecutorState.description.getter();
    v15 = v14;
    outlined destroy of UserSessionState(v10, type metadata accessor for PairingExecutorState);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v124);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24AF48000, v7, v8, "Executor state = %{public}s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x24C237030](v12, -1, -1);
    MEMORY[0x24C237030](v11, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v10, type metadata accessor for PairingExecutorState);
  }

  v17 = v0[26];
  outlined init with copy of UserSessionState(v0[17], v0[36], type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v66 = v0[44];
        v67 = v0[31];
        v68 = v0[19];
        v69 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v67, type metadata accessor for PairingExecutorState);
        v70 = *(v69 + 32);
        v69 += 32;
        LOBYTE(v67) = *v67;
        v0[91] = v70;
        v0[92] = v69 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v71 = *(v69 - 24);
        v72 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v73;
        if (v67)
        {
          v74 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        else
        {
          v74 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        v3 = v74;
        v1 = v72;
        goto LABEL_3;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v42 = v0[44];
        v43 = v0[28];
        v44 = v0[19];
        v45 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v43, type metadata accessor for PairingExecutorState);
        v0[140] = *v43;
        v46 = *(v45 + 32);
        v45 += 32;
        v0[141] = v46;
        v0[142] = v45 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v47 = *(v45 - 24);
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v48;
        v0[143] = v22;
        v0[144] = v48;
        v24 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v60 = v0[19];
      v61 = v0[20];
      v62 = *(v61 + 40);
      v61 += 40;
      v63 = v0[44];
      v0[69] = v62;
      v0[70] = v61 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
      v64 = *(v61 - 32);
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v2 = v65;
      v0[71] = v22;
      v0[72] = v65;
      v24 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v19 = v0[44];
        v20 = v0[19];
        v21 = *(v0[20] + 8);
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v23;
        v0[95] = v22;
        v0[96] = v23;
        v24 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_35:
        v3 = v24;
        v1 = v22;
        goto LABEL_3;
      }

      goto LABEL_46;
    }

    v75 = v0[44];
    v76 = v0[19];
    v77 = *(v0[20] + 8);
    v31 = dispatch thunk of Actor.unownedExecutor.getter();
    v33 = v78;
    v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_50:
    v3 = v34;
    v1 = v31;
    v2 = v33;
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v35 = v0[33];
      outlined init with copy of UserSessionState(v0[36], v35, type metadata accessor for PairingExecutorState);
      if (*v35 == 1)
      {
        v90 = v0[19];
        v91 = v0[20];
        v92 = *(v91 + 32);
        v91 += 32;
        v93 = v0[44];
        v0[85] = v92;
        v0[86] = v91 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v94 = *(v91 - 24);
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v95;
        v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      if (!*v35)
      {
        v36 = v0[19];
        v37 = v0[20];
        v38 = *(v37 + 32);
        v37 += 32;
        v39 = v0[44];
        v0[82] = v38;
        v0[83] = v37 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v40 = *(v37 - 24);
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v41;
        v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v53 = v0[39];
    v54 = v0[40];
    v55 = v0[32];
    v57 = v0[21];
    v56 = v0[22];
    outlined init with copy of UserSessionState(v0[36], v55, type metadata accessor for PairingExecutorState);
    outlined init with take of UserSessionState(v55, v56, type metadata accessor for PairingExecutorState.RecordCreation);
    outlined init with copy of UserSessionState(v56, v57, type metadata accessor for PairingExecutorState.RecordCreation);
    v58 = (*(v54 + 48))(v57, 1, v53);
    v59 = v0[44];
    if (v58 != 1)
    {
      v79 = v0[20];
      v80 = v0[19];
      (*(v0[40] + 32))(v0[42], v0[21], v0[39]);
      v81 = *(v79 + 32);
      v79 += 32;
      v0[88] = v81;
      v0[89] = v79 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
      v82 = *(v79 - 24);
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v83;
      v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_50;
    }

    outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
    swift_unknownObjectRelease();
    outlined destroy of UserSessionState(v0[21], type metadata accessor for PairingExecutorState.RecordCreation);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = v0[35];
        outlined init with copy of UserSessionState(v0[36], v25, type metadata accessor for PairingExecutorState);
        if (*v25 == 1)
        {
          v84 = v0[19];
          v85 = v0[20];
          v86 = *(v85 + 32);
          v85 += 32;
          v87 = v0[44];
          v0[57] = v86;
          v0[58] = v85 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v88 = *(v85 - 24);
          v31 = dispatch thunk of Actor.unownedExecutor.getter();
          v33 = v89;
          v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }

        if (!*v25)
        {
          v26 = v0[19];
          v27 = v0[20];
          v28 = *(v27 + 32);
          v27 += 32;
          v29 = v0[44];
          v0[54] = v28;
          v0[55] = v27 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v30 = *(v27 - 24);
          v31 = dispatch thunk of Actor.unownedExecutor.getter();
          v33 = v32;
          v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }
      }

LABEL_46:
      v96 = v0[44];
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    v49 = v0[34];
    outlined init with copy of UserSessionState(v0[36], v49, type metadata accessor for PairingExecutorState);
    v50 = *v49;
    v0[60] = *v49;
    v51 = v49[1];
    v0[61] = v51;
    v0[62] = v49[2];
    v0[63] = v49[3];
    if (v51 >= 8)
    {
      if (v51 != 8)
      {
        v108 = v0[19];
        v109 = v0[20];
        v110 = *(v109 + 40);
        v109 += 40;
        v111 = v0[44];
        v0[64] = v110;
        v0[65] = v109 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
        v112 = *(v109 - 32);
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v113;
        v34 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v52 = v0[44];
    swift_unknownObjectRelease();
    outlined consume of PairingExecutorState.InitiatePairing?(v50, v51);
  }

LABEL_47:
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v98 = v0[42];
  v97 = v0[43];
  v99 = v0[41];
  v100 = v0[37];
  v101 = v0[38];
  v103 = v0[35];
  v102 = v0[36];
  v105 = v0[33];
  v104 = v0[34];
  v106 = v0[32];
  v115 = v0[31];
  v116 = v0[30];
  v117 = v0[29];
  v118 = v0[28];
  v119 = v0[27];
  v120 = v0[25];
  v121 = v0[23];
  v122 = v0[22];
  v123 = v0[21];

  v107 = v0[1];

  return v107();
}

{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[16];
  v0[51] = dispatch thunk of TimeTracker.duration(since:)();
  v0[52] = v4;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v162 = v0;
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v8 = v0[17];
  v7 = v0[18];
  v159 = type metadata accessor for Logger();
  __swift_project_value_buffer(v159, static Logger.pairingTime);
  (*(v4 + 16))(v3, v7, v5);
  outlined init with copy of UserSessionState(v8, v6, type metadata accessor for PairingExecutorState);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[52];
  if (v11)
  {
    v13 = v0[48];
    v149 = v0[47];
    v157 = v10;
    v14 = v0[43];
    v16 = v0[39];
    v15 = v0[40];
    v151 = v0[38];
    v153 = v0[51];
    v17 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v161 = v155;
    *v17 = 136446978;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v161);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v13, &v161);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    v23 = PairingExecutorState.description.getter();
    v25 = v24;
    outlined destroy of UserSessionState(v151, type metadata accessor for PairingExecutorState);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v161);

    *(v17 + 24) = v26;
    *(v17 + 32) = 2082;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v12, &v161);

    *(v17 + 34) = v27;
    _os_log_impl(&dword_24AF48000, v9, v157, "Executor %{public}s: duration for %{public}s->%{public}s: %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v155, -1, -1);
    MEMORY[0x24C237030](v17, -1, -1);
  }

  else
  {
    v28 = v0[48];
    v29 = v0[43];
    v30 = v0[39];
    v31 = v0[40];
    v32 = v0[38];

    outlined destroy of UserSessionState(v32, type metadata accessor for PairingExecutorState);
    (*(v31 + 8))(v29, v30);
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v33 = v0[37];
  v34 = v0[17];
  v0[53] = v159;
  __swift_project_value_buffer(v159, static Logger.pairingCoordinator);
  outlined init with copy of UserSessionState(v34, v33, type metadata accessor for PairingExecutorState);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[37];
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v161 = v40;
    *v39 = 136446210;
    v41 = PairingExecutorState.description.getter();
    v43 = v42;
    outlined destroy of UserSessionState(v38, type metadata accessor for PairingExecutorState);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v161);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_24AF48000, v35, v36, "Executor state = %{public}s.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x24C237030](v40, -1, -1);
    MEMORY[0x24C237030](v39, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v38, type metadata accessor for PairingExecutorState);
  }

  v45 = v0[26];
  outlined init with copy of UserSessionState(v0[17], v0[36], type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v97 = v0[44];
        v98 = v0[31];
        v99 = v0[19];
        v100 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v98, type metadata accessor for PairingExecutorState);
        v101 = *(v100 + 32);
        v100 += 32;
        LOBYTE(v98) = *v98;
        v0[91] = v101;
        v0[92] = v100 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v102 = *(v100 - 24);
        v103 = dispatch thunk of Actor.unownedExecutor.getter();
        v52 = v104;
        if (v98)
        {
          v105 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        else
        {
          v105 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        v95 = v105;
        v96 = v103;
        goto LABEL_51;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v71 = v0[44];
        v72 = v0[28];
        v73 = v0[19];
        v74 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v72, type metadata accessor for PairingExecutorState);
        v0[140] = *v72;
        v75 = *(v74 + 32);
        v74 += 32;
        v0[141] = v75;
        v0[142] = v74 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v76 = *(v74 - 24);
        v50 = dispatch thunk of Actor.unownedExecutor.getter();
        v52 = v77;
        v0[143] = v50;
        v0[144] = v77;
        v53 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v89 = v0[19];
      v90 = v0[20];
      v91 = *(v90 + 40);
      v90 += 40;
      v92 = v0[44];
      v0[69] = v91;
      v0[70] = v90 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
      v93 = *(v90 - 32);
      v50 = dispatch thunk of Actor.unownedExecutor.getter();
      v52 = v94;
      v0[71] = v50;
      v0[72] = v94;
      v53 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v47 = v0[44];
        v48 = v0[19];
        v49 = *(v0[20] + 8);
        v50 = dispatch thunk of Actor.unownedExecutor.getter();
        v52 = v51;
        v0[95] = v50;
        v0[96] = v51;
        v53 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_35:
        v95 = v53;
        v96 = v50;
LABEL_51:

        return MEMORY[0x2822009F8](v95, v96, v52);
      }

      goto LABEL_46;
    }

    v106 = v0[44];
    v107 = v0[19];
    v108 = *(v0[20] + 8);
    v60 = dispatch thunk of Actor.unownedExecutor.getter();
    v62 = v109;
    v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_50:
    v95 = v63;
    v96 = v60;
    v52 = v62;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v64 = v0[33];
      outlined init with copy of UserSessionState(v0[36], v64, type metadata accessor for PairingExecutorState);
      if (*v64 == 1)
      {
        v121 = v0[19];
        v122 = v0[20];
        v123 = *(v122 + 32);
        v122 += 32;
        v124 = v0[44];
        v0[85] = v123;
        v0[86] = v122 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v125 = *(v122 - 24);
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        v62 = v126;
        v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      if (!*v64)
      {
        v65 = v0[19];
        v66 = v0[20];
        v67 = *(v66 + 32);
        v66 += 32;
        v68 = v0[44];
        v0[82] = v67;
        v0[83] = v66 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v69 = *(v66 - 24);
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        v62 = v70;
        v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v82 = v0[39];
    v83 = v0[40];
    v84 = v0[32];
    v86 = v0[21];
    v85 = v0[22];
    outlined init with copy of UserSessionState(v0[36], v84, type metadata accessor for PairingExecutorState);
    outlined init with take of UserSessionState(v84, v85, type metadata accessor for PairingExecutorState.RecordCreation);
    outlined init with copy of UserSessionState(v85, v86, type metadata accessor for PairingExecutorState.RecordCreation);
    v87 = (*(v83 + 48))(v86, 1, v82);
    v88 = v0[44];
    if (v87 != 1)
    {
      v110 = v0[20];
      v111 = v0[19];
      (*(v0[40] + 32))(v0[42], v0[21], v0[39]);
      v112 = *(v110 + 32);
      v110 += 32;
      v0[88] = v112;
      v0[89] = v110 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
      v113 = *(v110 - 24);
      v60 = dispatch thunk of Actor.unownedExecutor.getter();
      v62 = v114;
      v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_50;
    }

    outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
    swift_unknownObjectRelease();
    outlined destroy of UserSessionState(v0[21], type metadata accessor for PairingExecutorState.RecordCreation);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v54 = v0[35];
        outlined init with copy of UserSessionState(v0[36], v54, type metadata accessor for PairingExecutorState);
        if (*v54 == 1)
        {
          v115 = v0[19];
          v116 = v0[20];
          v117 = *(v116 + 32);
          v116 += 32;
          v118 = v0[44];
          v0[57] = v117;
          v0[58] = v116 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v119 = *(v116 - 24);
          v60 = dispatch thunk of Actor.unownedExecutor.getter();
          v62 = v120;
          v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }

        if (!*v54)
        {
          v55 = v0[19];
          v56 = v0[20];
          v57 = *(v56 + 32);
          v56 += 32;
          v58 = v0[44];
          v0[54] = v57;
          v0[55] = v56 & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v59 = *(v56 - 24);
          v60 = dispatch thunk of Actor.unownedExecutor.getter();
          v62 = v61;
          v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }
      }

LABEL_46:
      v127 = v0[44];
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    v78 = v0[34];
    outlined init with copy of UserSessionState(v0[36], v78, type metadata accessor for PairingExecutorState);
    v79 = *v78;
    v0[60] = *v78;
    v80 = v78[1];
    v0[61] = v80;
    v0[62] = v78[2];
    v0[63] = v78[3];
    if (v80 >= 8)
    {
      if (v80 != 8)
      {
        v140 = v0[19];
        v141 = v0[20];
        v142 = *(v141 + 40);
        v141 += 40;
        v143 = v0[44];
        v0[64] = v142;
        v0[65] = v141 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
        v144 = *(v141 - 32);
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        v62 = v145;
        v63 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v81 = v0[44];
    swift_unknownObjectRelease();
    outlined consume of PairingExecutorState.InitiatePairing?(v79, v80);
  }

LABEL_47:
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v129 = v0[42];
  v128 = v0[43];
  v130 = v0[41];
  v131 = v0[37];
  v132 = v0[38];
  v134 = v0[35];
  v133 = v0[36];
  v136 = v0[33];
  v135 = v0[34];
  v137 = v0[32];
  v146 = v0[31];
  v147 = v0[30];
  v148 = v0[29];
  v150 = v0[28];
  v152 = v0[27];
  v154 = v0[25];
  v156 = v0[23];
  v158 = v0[22];
  v160 = v0[21];

  v138 = v0[1];

  return v138();
}

{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  *(v0 + 448) = (*(v0 + 432))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[56];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();

  swift_unknownObjectRelease();
  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 464);
  v2 = *(v0 + 352);
  *(v0 + 472) = (*(v0 + 456))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[59];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 352);
  (*(v0 + 512))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[66] = v3;
  v0[67] = v4;
  v0[68] = swift_getObjectType();
  v6 = *(v5 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v8, v7);
}

{
  v1 = v0[66];
  PairingInfoStore.appendAccessoryDetails(executorIdentifier:serialNumber:systemVersion:)(v0[18], v0[60], v0[61], v0[62], v0[63], v0[68], v0[67]);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[44];
  swift_unknownObjectRelease();
  outlined consume of PairingExecutorState.InitiatePairing?(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[37];
  v10 = v0[38];
  v12 = v0[35];
  v11 = v0[36];
  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[25];
  v24 = v0[23];
  v25 = v0[22];
  v26 = v0[21];

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 560);
  v2 = *(v0 + 352);
  (*(v0 + 552))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[73] = v3;
  v0[74] = v4;
  v0[75] = swift_getObjectType();
  v6 = *(v5 + 104);
  v5 += 104;
  v0[76] = v6;
  v0[77] = v5 & 0xFFFFFFFFFFFFLL | 0xF2D9000000000000;
  v7 = *(v5 - 96);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v9, v8);
}

{
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  *(v0 + 624) = (*(v0 + 608))(*(v0 + 600), *(v0 + 592));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[78];
  v2 = v0[23];
  if (v1)
  {
    v3 = v0[18];
    *(swift_task_alloc() + 16) = v3;
    specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v1, v2);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v4 = type metadata accessor for AccessoryDetails(0);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  }

  v5 = v0[20];
  v0[79] = *(v5 + 32);
  v0[80] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
  v6 = v0[72];
  v7 = v0[71];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v7, v6);
}

{
  v1 = *(v0 + 640);
  v2 = *(v0 + 352);
  *(v0 + 648) = (*(v0 + 632))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[81];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[18];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMd, &_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMR) + 48);
  outlined init with copy of PairingContext?(v6, v4, &_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
  (*(v3 + 16))(v4 + v8, v7, v2);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();

  outlined destroy of UserSessionState(v4, type metadata accessor for AnalyticsEvent);
  v9 = v0[72];
  v10 = v0[71];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v10, v9);
}

{
  v1 = v0[44];
  PairingCoordinator.startAccessoryPairing()(v0[19], v0[20]);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[44];
  v2 = v0[23];
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[25];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];

  v13 = v0[1];

  return v13();
}

{
  v1 = *(v0 + 664);
  v2 = *(v0 + 352);
  *(v0 + 672) = (*(v0 + 656))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[84];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 352);
  *(v0 + 696) = (*(v0 + 680))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[87];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 352);
  *(v0 + 720) = (*(v0 + 704))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[90];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[25];
  v28 = v0[24];
  v30 = v0[44];
  v6 = v0[18];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMd, &_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMR) + 48);
  v8 = *(v4 + 16);
  v8(v5, v2, v3);
  v8(v5 + v7, v6, v3);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v5, type metadata accessor for AnalyticsEvent);
  (*(v4 + 8))(v2, v3);
  outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[41];
  v12 = v0[37];
  v13 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[32];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[25];
  v27 = v0[23];
  v29 = v0[22];
  v31 = v0[21];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[44];
  PairingCoordinator.startAccessoryPairing()(v0[19], v0[20]);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[44];
  swift_unknownObjectRelease();
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];

  v12 = v0[1];

  return v12();
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 352);
  *(v0 + 744) = (*(v0 + 728))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[93];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 352);
  *(v0 + 752) = (*(v0 + 728))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[94];
  v2 = v0[44];
  v3 = v0[25];
  (*(v0[40] + 16))(v3, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[44];
  PairingCoordinator.startAccessoryPairing()(v0[19], v0[20]);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  *v2 = xmmword_24AFB0D40;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  swift_storeEnumTagMultiPayload();
  v0[97] = PairingExecutorState.description.getter();
  v0[98] = v4;
  v0[99] = PairingExecutorState.description.getter();
  v0[100] = v5;
  v6 = v0[45];
  v7 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v6, v7);
}

{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.duration(from:to:)();
  v8 = v7;

  v0[101] = v6;
  v0[102] = v8;
  v9 = v0[45];
  v10 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v9, v10);
}

{
  v1 = v0[16];
  v0[103] = dispatch thunk of TimeTracker.topConsumers(with:)();
  v0[104] = v2;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v39 = v0;
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v1 = v0[104];
  v2 = v0[102];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[18];
  __swift_project_value_buffer(v0[53], static Logger.pairingTime);
  v7 = *(v4 + 16);
  v0[105] = v7;
  v0[106] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[104];
  if (v10)
  {
    v36 = v0[102];
    v34 = v0[103];
    v35 = v0[101];
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v38);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2082;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v11, &v38);

    *(v15 + 24) = v20;
    *(v15 + 32) = 2082;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v38);

    *(v15 + 34) = v21;
    _os_log_impl(&dword_24AF48000, v8, v9, "Executor %{private,mask.hash}s statistics:\n    Top time-consuming operations:\n%{public}s),\n    Overall pairing time: %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v37, -1, -1);
    MEMORY[0x24C237030](v15, -1, -1);
  }

  else
  {
    v22 = v0[102];
    v24 = v0[40];
    v23 = v0[41];
    v25 = v0[39];
    v26 = v0[104];

    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[29];
  v28 = v0[30];
  v0[107] = PairingExecutorState.description.getter();
  v0[108] = v29;
  v0[109] = PairingExecutorState.description.getter();
  v0[110] = v30;
  v31 = v0[45];
  v32 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v31, v32);
}

{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v8 = v7;

  v0[111] = v6;
  v0[112] = v8;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  *v2 = 0u;
  v2[1] = 0u;
  swift_storeEnumTagMultiPayload();
  v0[113] = PairingExecutorState.description.getter();
  v0[114] = v4;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = xmmword_24AFB0D50;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v0[115] = PairingExecutorState.description.getter();
  v0[116] = v5;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v6 = v0[45];
  v7 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v6, v7);
}

{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v8 = v7;

  v0[117] = v6;
  v0[118] = v8;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  *v2 = 0;
  swift_storeEnumTagMultiPayload();
  v0[119] = PairingExecutorState.description.getter();
  v0[120] = v4;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  v0[121] = PairingExecutorState.description.getter();
  v0[122] = v5;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v6 = v0[45];
  v7 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v6, v7);
}

{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v8 = v7;

  v0[123] = v6;
  v0[124] = v8;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  *v2 = 4;
  swift_storeEnumTagMultiPayload();
  v0[125] = PairingExecutorState.description.getter();
  v0[126] = v4;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = 5;
  swift_storeEnumTagMultiPayload();
  v0[127] = PairingExecutorState.description.getter();
  v0[128] = v5;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v6 = v0[45];
  v7 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v6, v7);
}

{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[125];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v8 = v7;

  v0[129] = v6;
  v0[130] = v8;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = *(v0[40] + 56);
  v5(v3, 1, 1, v1);
  swift_storeEnumTagMultiPayload();
  v0[131] = PairingExecutorState.description.getter();
  v0[132] = v6;
  outlined destroy of UserSessionState(v3, type metadata accessor for PairingExecutorState);
  UUID.init()();
  v5(v2, 0, 1, v1);
  swift_storeEnumTagMultiPayload();
  v0[133] = PairingExecutorState.description.getter();
  v0[134] = v7;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  v8 = v0[45];
  v9 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v8, v9);
}

{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[16];
  v6 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v8 = v7;

  v0[135] = v6;
  v0[136] = v8;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[20];
  v0[137] = *(v1 + 32);
  v0[138] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v0[95], v0[96]);
}

{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 352);
  *(v0 + 1112) = (*(v0 + 1096))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = *(v0 + 1112);
  v27 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v29 = *(v0 + 352);
  v5 = *(v0 + 312);
  v31 = *(v0 + 232);
  v33 = *(v0 + 240);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 144);
  v26 = *(v0 + 888);
  v25 = *(v0 + 936);
  v24 = *(v0 + 984);
  v23 = *(v0 + 1032);
  v9 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_13FindMyPairing0F13LatencyReportV07pairinggH0tMd, &_s10Foundation4UUIDV10identifier_13FindMyPairing0F13LatencyReportV07pairinggH0tMR) + 48);
  v4(v6, v8, v5);
  *v9 = v26;
  *(v9 + 16) = v25;
  *(v9 + 32) = v24;
  *(v9 + 48) = v23;
  *(v9 + 64) = v2;
  *(v9 + 72) = v27;
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v6, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v31, type metadata accessor for PairingExecutorState);
  outlined destroy of UserSessionState(v33, type metadata accessor for PairingExecutorState);
  outlined destroy of UserSessionState(*(v0 + 288), type metadata accessor for PairingExecutorState);
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);
  v22 = *(v0 + 248);
  *&v23 = *(v0 + 240);
  *&v24 = *(v0 + 232);
  *&v25 = *(v0 + 224);
  *&v26 = *(v0 + 216);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v32 = *(v0 + 176);
  v34 = *(v0 + 168);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 352);
  *(v0 + 1160) = (*(v0 + 1128))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[145];
  v2 = v0[140];
  v3 = v0[39];
  v4 = v0[40];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[18];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
  *v5 = v2;
  (*(v4 + 16))(&v5[v8], v7, v3);
  (*(v4 + 56))(&v5[v8], 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x24C236EC0](v2);
  AsyncStreamProvider.yield(value:transaction:)();

  outlined destroy of UserSessionState(v5, type metadata accessor for AnalyticsEvent);
  v9 = v0[144];
  v10 = v0[143];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v10, v9);
}

{
  v1 = v0[44];
  PairingCoordinator.handleExecutorFailure(_:)(v0[140], v0[19], v0[20]);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[140];
  v2 = v0[44];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[25];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t PairingCoordinator.startAccessoryPairing()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t PairingCoordinator.handleExecutorFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))(a2, a3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = a1;

  MEMORY[0x24C236EC0](a1);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[25] = v5;
    v0[26] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v8;
    v0[28] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = (*(v0 + 200))(*(v0 + 176), *(v0 + 184));
  *(v0 + 232) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v3, 0);
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 144) = 11;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 144;

  *(v0 + 336) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  if (*(v0 + 336))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 192);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled initiate pairing finish!", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 184);
    *(v0 + 240) = *(v9 + 40);
    *(v0 + 248) = (v9 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v10, v11);
  }
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[32] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[19] = v3;
  v4 = *(MEMORY[0x277D08A58] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v7 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  *v5 = v0;
  v5[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, v6, v7);
}

{
  v0[35] = *(v0[34] + 16);

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v1, v2);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[22];

    return PairingCoordinator._isPairingNotFailed()(v9, v7);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[35];
      v15 = v0[24];
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v14;
      _os_log_impl(&dword_24AF48000, v12, v13, "Waiting for all executors to finish initiate pairing. %{public}ld already finished.", v16, 0xCu);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    else
    {
      v17 = v0[24];
    }

    swift_unknownObjectRelease();

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[40] = v4;
    *v4 = v3;
    v4[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v5 = v3[23];
    v6 = v3[24];
    v7 = v3[22];

    return PairingCoordinator._finishPairingIfPossible()(v7, v5);
  }
}

{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[41];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v7 = *(v4 + 256);

  *(v4 + 272) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(char a1)
{
  v4 = *(*v2 + 288);
  v5 = *v2;
  v5[37] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
  }

  else if (a1)
  {
    v5[20] = 11;
    v16 = (v5[23] + 152);
    v17 = (*v16 + **v16);
    v6 = (*v16)[1];
    v7 = swift_task_alloc();
    v5[38] = v7;
    *v7 = v5;
    v7[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v8 = v5[23];
    v9 = v5[24];
    v10 = v5[22];

    return (v17)(v5 + 20, v10, v8);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[40] = v11;
    *v11 = v5;
    v11[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v12 = v5[23];
    v13 = v5[24];
    v14 = v5[22];

    return PairingCoordinator._finishPairingIfPossible()(v14, v12);
  }
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(void *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v3 = *(*(v2 + 8) + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v5, v4);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()()
{
  v1 = v0[2];
  v2 = PairingExecutor.initiatePairingFinished.getter(v0[4], v0[3]);
  v3 = v0[1];
  v4 = v2;

  return v3(v4);
}

uint64_t PairingCoordinator._isPairingNotFailed()(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v5 = type metadata accessor for PairingExecutorState(0);
  v3[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = *(a2 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v9;
  v3[17] = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v9, v8);
}

uint64_t PairingCoordinator._isPairingNotFailed()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = *(v0 + 96);
    (*(*(v0 + 88) + 40))(*(v0 + 80));
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = (*(v6 + 80))(v5, v6);
    *(v0 + 144) = v7;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v8 = *(v7 + 16);
    *(v0 + 152) = v8;
    if (v8)
    {
      *(v0 + 160) = 0;
      *(v0 + 224) = 1;
      v9 = *(v0 + 144);
      *(v0 + 168) = *(v9 + 32);
      v10 = *(v9 + 40);
      *(v0 + 176) = swift_getObjectType();
      v11 = *(v10 + 8);
      *(v0 + 184) = v11;
      *(v0 + 192) = *(v11 + 32);
      *(v0 + 200) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x9A0B000000000000;
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v16 = PairingCoordinator._isPairingNotFailed();
      v17 = v13;
      v18 = v15;
    }

    else
    {
      *(v0 + 225) = 1;
      v24 = *(v0 + 144);
      v25 = *(v0 + 88);
      v26 = *(v0 + 96);
      v27 = *(v0 + 80);

      v17 = (*(v25 + 16))(v27, v25);
      *(v0 + 208) = v17;
      v16 = PairingCoordinator._isPairingNotFailed();
      v18 = 0;
    }

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v21 = 8;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22(0);
  }
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  (*(v0 + 192))(*(v0 + 176), *(v0 + 184));
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v4, v5);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  swift_unknownObjectRelease();
  outlined init with take of UserSessionState(v3, v2, type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        v6 = *(v0 + 224);
        goto LABEL_16;
      }

      outlined destroy of UserSessionState(*(v0 + 112), type metadata accessor for PairingExecutorState);
    }

    v6 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v6 = *(v0 + 224);
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload != 1)
    {
LABEL_12:
      v6 = *(v0 + 224);
      goto LABEL_16;
    }

    outlined destroy of UserSessionState(*(v0 + 112), type metadata accessor for PairingExecutorState);
    v6 = *(v0 + 224);
  }

LABEL_16:
  v7 = *(v0 + 160) + 1;
  if (v7 == *(v0 + 152))
  {
    *(v0 + 225) = v6;
    v8 = *(v0 + 144);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);

    v12 = (*(v9 + 16))(v11, v9);
    *(v0 + 208) = v12;
    v13 = PairingCoordinator._isPairingNotFailed();
    v14 = 0;
  }

  else
  {
    *(v0 + 160) = v7;
    *(v0 + 224) = v6;
    v15 = *(v0 + 144) + 16 * v7;
    *(v0 + 168) = *(v15 + 32);
    v16 = *(v15 + 40);
    *(v0 + 176) = swift_getObjectType();
    v17 = *(v16 + 8);
    *(v0 + 184) = v17;
    *(v0 + 192) = *(v17 + 32);
    *(v0 + 200) = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x9A0B000000000000;
    v18 = *(v17 + 8);
    swift_unknownObjectRetain();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    v13 = PairingCoordinator._isPairingNotFailed();
    v12 = v19;
    v14 = v21;
  }

  return MEMORY[0x2822009F8](v13, v12, v14);
}

{
  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    *(v0 + 216) = v5;
    --v3;
    if (v5 >= 0x11)
    {
      v6 = *(v0 + 208);
      MEMORY[0x24C236EC0]();

      v7 = *(v0 + 128);
      v8 = *(v0 + 136);

      return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v7, v8);
    }
  }

  v9 = *(v0 + 208);

  v10 = *(v0 + 225);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);

  v13 = *(v0 + 8);

  return v13(v10);
}

{
  outlined consume of PairingCoordinatorState(v0[27]);
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];

  return v3(0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[25] = v5;
    v0[26] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v8;
    v0[28] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = (*(v0 + 200))(*(v0 + 176), *(v0 + 184));
  *(v0 + 232) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v3, 0);
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 144) = 12;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 144;

  *(v0 + 336) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  if (*(v0 + 336))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 192);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled finalize pairing finish!", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 184);
    *(v0 + 240) = *(v9 + 40);
    *(v0 + 248) = (v9 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v10 = *(v0 + 216);
    v11 = *(v0 + 224);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v10, v11);
  }
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[32] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[19] = v3;
  v4 = *(MEMORY[0x277D08A58] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v7 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  *v5 = v0;
  v5[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, v6, v7);
}

{
  v0[35] = *(v0[34] + 16);

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v1, v2);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[22];

    return PairingCoordinator._isPairingNotFailed()(v9, v7);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[35];
      v15 = v0[24];
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v14;
      _os_log_impl(&dword_24AF48000, v12, v13, "Waiting for all executors to finish finalize pairing. %{public}ld already finished.", v16, 0xCu);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    else
    {
      v17 = v0[24];
    }

    swift_unknownObjectRelease();

    v18 = v0[1];

    return v18();
  }
}

{
  if (*(v0 + 337) == 1)
  {
    *(v0 + 160) = 12;
    v9 = (*(v0 + 184) + 152);
    v10 = (*v9 + **v9);
    v1 = (*v9)[1];
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v5 = *(v0 + 176);

    return v10(v0 + 160, v5, v3);
  }

  else
  {
    v7 = *(v0 + 192);
    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *(v2 + 16) = *(v0 + 176);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();

  return MEMORY[0x282200600]();
}

{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[37];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[39];
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v7 = *(v4 + 256);

  *(v4 + 272) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  else
  {
    *(v4 + 337) = a1 & 1;
    v7 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(void *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v3 = *(*(v2 + 8) + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v5, v4);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  v1 = v0[2];
  v2 = PairingExecutor.finalizePairingFinished.getter(v0[4], v0[3]);
  v3 = v0[1];
  v4 = v2;

  return v3(v4);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(v6 + 40);
  v6 += 40;
  v5[20] = v8;
  v5[21] = v6 & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v9 = *(v6 - 32);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v11, v10);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  (*(v0 + 160))(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = **(v0 + 112);
    v5 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    v27 = v6;
    do
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      v29 = *v5;
      v26(v11, 1, 1, v6);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v29;
      outlined init with copy of PairingContext?(v11, v10, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v10) = (*v25)(v10, 1, v6);
      swift_unknownObjectRetain_n();
      v14 = *(v0 + 144);
      if (v10 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 144), &_sScPSgMd, &_sScPSgMR);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v14, v6);
        if (*v13)
        {
LABEL_9:
          v17 = *(v12 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
      *(v19 + 24) = v12;

      if (v16 | v15)
      {
        v8 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      *(v0 + 88) = 1;
      *(v0 + 96) = v8;
      *(v0 + 104) = v28;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sScPSgMd, &_sScPSgMR);
      ++v5;
      --v4;
      v6 = v27;
    }

    while (v4);
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 152);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingExecutor._pairingAck()(ObjectType, a5);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  v1 = v0[27];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v3 = v0[28];
    v4 = v0[29];
    v5 = *(v4 + 16);
    v4 += 16;
    v0[31] = v5;
    v0[32] = v4 & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v6 = *(v4 - 8);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[33] = v8;
    v0[34] = v7;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = (*(v0 + 248))(*(v0 + 224), *(v0 + 232));
  *(v0 + 280) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v3, 0);
}

{
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 184) = 13;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 184;

  *(v0 + 432) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  if (*(v0 + 432))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 240);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled pairing finish!", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 232);
    *(v0 + 288) = *(v9 + 40);
    *(v0 + 296) = (v9 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v10 = *(v0 + 264);
    v11 = *(v0 + 272);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v10, v11);
  }
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[38] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[24] = v3;
  v4 = *(MEMORY[0x277D08A58] + 4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v0[40] = v6;
  v7 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v0[41] = v7;
  *v5 = v0;
  v5[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, v6, v7);
}

{
  v0[43] = *(v0[42] + 16);

  v1 = v0[33];
  v2 = v0[34];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v1, v2);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[44] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[28];

    return PairingCoordinator._isPairingNotFailed()(v9, v7);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[43];
      v15 = v0[30];
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v14;
      _os_log_impl(&dword_24AF48000, v12, v13, "Waiting for all executors to finish pairing. %{public}ld already finished.", v16, 0xCu);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    else
    {
      v17 = v0[30];
    }

    swift_unknownObjectRelease();

    v18 = v0[1];

    return v18();
  }
}

{
  if (*(v0 + 433) == 1)
  {
    *(v0 + 200) = 13;
    v9 = (*(v0 + 232) + 152);
    v10 = (*v9 + **v9);
    v1 = (*v9)[1];
    v2 = swift_task_alloc();
    *(v0 + 368) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);

    return v10(v0 + 200, v5, v3);
  }

  else
  {
    v7 = *(v0 + 240);
    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v8 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 264);
    v6 = *(v2 + 272);
    v4 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[48] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[26] = v3;
  v4 = *(MEMORY[0x277D08A68] + 4);
  v5 = swift_task_alloc();
  v0[49] = v5;
  v6 = type metadata accessor for UUID();
  v0[50] = v6;
  *v5 = v0;
  v5[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  v7 = v0[40];
  v8 = v0[41];

  return MEMORY[0x28215ED58](&async function pointer to closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, v7, v6, v8);
}

{
  v19 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[50];
    v5 = v0[51];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7D0, &v18);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x24C236860](v5, v6);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AF48000, v3, v4, "%s with beaconIds: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[52] = v12;
  *v12 = v0;
  v12[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  v13 = v0[51];
  v14 = v0[29];
  v15 = v0[30];
  v16 = v0[28];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v13, v16, v14);
}

{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[51];
  v2 = v0[30];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[30];
  swift_unknownObjectRelease();
  v2 = v0[45];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[30];
  swift_unknownObjectRelease();
  v2 = v0[47];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[51];
  v2 = v0[30];

  swift_unknownObjectRelease();
  v3 = v0[53];
  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v7 = *(v4 + 304);

  *(v4 + 336) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v5 = *v2;
  *(*v2 + 408) = a1;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v6 = *(v3 + 384);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  else
  {
    *(v4 + 433) = a1 & 1;
    v7 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()(void *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v3 = *(*(v2 + 8) + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v5, v4);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  v1 = v0[2];
  v2 = PairingExecutor.pairingFinished.getter(v0[4], v0[3]);
  v3 = v0[1];
  v4 = v2;

  return v3(v4);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  v2[5] = swift_getObjectType();
  v5 = *(v3 + 104);
  v3 += 104;
  v2[6] = v5;
  v2[7] = v3 & 0xFFFFFFFFFFFFLL | 0xBE7D000000000000;
  v6 = *(*(v3 - 96) + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v8, v7);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  (*(v0 + 48))(*(v0 + 40), *(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFailure(_:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFailure(_:)()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
    v5 = v0[7];
    v6 = v0[8];
    v7 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v3, v7, v5, v6);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
  }

  else
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[9];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v8, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    v11 = v0[9];
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *(a3 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v6, v5);
}

uint64_t PairingCoordinator._finalizePairing(with:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v3, v1);
  LOBYTE(v2) = static WorkItemQueue.called(on:)();

  if (v2)
  {
    v4 = v0[10];
    (*(v0[9] + 40))(v0[8]);
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = (*(v6 + 40))(v5, v6);
    v0[14] = v7;
    if (v7)
    {
      v0[15] = v8;
      v9 = v8;
      v0[16] = swift_getObjectType();
      v10 = *(v9 + 56);
      v9 += 56;
      v0[17] = v10;
      v0[18] = v9 & 0xFFFFFFFFFFFFLL | 0x6389000000000000;
      v11 = *(v9 - 48);
      v13 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v13, v12);
    }

    else
    {
      v16 = v0[10];
      v17 = v0[11];
      v18 = v0[7];
      v23 = *(v0 + 4);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v19 = swift_task_alloc();
      v0[19] = v19;
      *(v19 + 16) = v23;
      *(v19 + 32) = v16;
      *(v19 + 40) = v18;
      v20 = *(MEMORY[0x277D858E8] + 4);
      v21 = swift_task_alloc();
      v0[20] = v21;
      *v21 = v0;
      v21[1] = PairingCoordinator._finalizePairing(with:);

      return MEMORY[0x282200600]();
    }
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  (*(v0 + 136))(1, *(v0 + 128), *(v0 + 120));
  swift_unknownObjectRelease();
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v3, v4);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v8 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = PairingCoordinator._finalizePairing(with:);

  return MEMORY[0x282200600]();
}

{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](PairingCoordinator.forceStopPairing(), v5, v4);
}

uint64_t closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = *(a6 + 8);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._finalizePairing(with:), v11, v10);
}

uint64_t closure #1 in PairingCoordinator._finalizePairing(with:)()
{
  v1 = *(v0 + 160);
  (*(*(v0 + 184) + 40))(*(v0 + 176));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v32 = **(v0 + 152);
    v6 = (v4 + 32);
    v7 = type metadata accessor for TaskPriority();
    v8 = *(v7 - 8);
    v30 = *(v8 + 56);
    v29 = (v8 + 48);
    v28 = (v8 + 8);
    v31 = v7;
    do
    {
      v12 = *(v0 + 192);
      v11 = *(v0 + 200);
      v13 = *(v0 + 168);
      v33 = *v6;
      v30(v11, 1, 1, v7);
      outlined init with copy of PairingContext?(v13, v0 + 56, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 56);
      *(v14 + 32) = v33;
      *(v14 + 48) = v16;
      *(v14 + 64) = *(v0 + 72);
      *(v14 + 80) = *(v0 + 88);
      outlined init with copy of PairingContext?(v11, v12, &_sScPSgMd, &_sScPSgMR);
      v17 = (*v29)(v12, 1, v7);
      swift_unknownObjectRetain_n();
      v18 = *(v0 + 192);
      if (v17 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 192), &_sScPSgMd, &_sScPSgMR);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v18, v7);
        if (*v15)
        {
LABEL_9:
          v21 = *(v14 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = dispatch thunk of Actor.unownedExecutor.getter();
          v20 = v22;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_10:
      v23 = swift_allocObject();
      *(v23 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:);
      *(v23 + 24) = v14;

      if (v20 | v19)
      {
        v9 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v19;
        *(v0 + 120) = v20;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 200);
      *(v0 + 128) = 1;
      *(v0 + 136) = v9;
      *(v0 + 144) = v32;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sScPSgMd, &_sScPSgMR);
      ++v6;
      --v5;
      v7 = v31;
    }

    while (v5);
  }

  v24 = *(v0 + 192);
  v25 = *(v0 + 200);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a5;
  v9 = type metadata accessor for CancellationError();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:);

  return PairingExecutor._completePairing(with:)(a6, ObjectType, a5);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:), 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

{
  v30 = v0;
  *(v0 + 32) = *(v0 + 88);
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  MEMORY[0x24C236EC0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](*(v0 + 88));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AF48000, v4, v5, "Pairing finish cancelled.", v6, 2u);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 32);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v0 + 32));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 40);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
    swift_unknownObjectRetain();
    MEMORY[0x24C236EC0](v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v11);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 88);
    if (v16)
    {
      v28 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v18 = 136315394;
      *(v0 + 16) = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C8Executor_pMd, &_s13FindMyPairing0C8Executor_pMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v29);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2114;
      MEMORY[0x24C236EC0](v17);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_24AF48000, v14, v15, "Failure in pairing complete for %s error %{public}@", v18, 0x16u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x24C237030](v20, -1, -1);
      MEMORY[0x24C237030](v18, -1, -1);
      MEMORY[0x24C236EB0](v17);

      goto LABEL_13;
    }

    v10 = v17;
  }

  MEMORY[0x24C236EB0](v10);
LABEL_13:
  v25 = *(v0 + 72);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v25 = a4;
  v26 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v14, a1, v10);
  v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v25;
  *(v22 + 4) = a3;
  *(v22 + 5) = v23;
  *(v22 + 6) = v20;
  (*(v11 + 32))(&v22[v21], v14, v10);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v18, v26, v22);

  return outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v18, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    *(v0 + 40) = 4;
    v5 = *(v4 + 8);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
LABEL_5:

    return MEMORY[0x2822009F8](v9, v6, v8);
  }

  *(v0 + 112) = 0;
  v10 = *(v0 + 64);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v11;
  if (v11)
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    *(v0 + 136) = 0;
    v14 = *(v13 + 8);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v15;
    v9 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    goto LABEL_5;
  }

  v16 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(v0 + 96);
  PairingCoordinator.cancelTimeout(for:)((v0 + 40), *(v0 + 80), *(v0 + 88));
  *(v0 + 104) = 0;
  v2 = *(v0 + 96);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

{
  *(v0 + 112) = *(v0 + 104);
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    *(v0 + 136) = 0;
    v5 = *(v4 + 8);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v7, v6);
  }

  else
  {
    v8 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  PairingCoordinator.cancelTimeout(for:)((v0 + 136), *(v0 + 80), *(v0 + 88));
  *(v0 + 128) = v2;
  v3 = *(v0 + 120);
  swift_unknownObjectRelease();
  if (v2)
  {
    v4 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v4 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[13];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v9 = v0[1];

  return v9();
}

{
  v1 = v0[16];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v9 = v0[1];

  return v9();
}

uint64_t closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  v2[5] = swift_getObjectType();
  v5 = *(*(v3 + 8) + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v7, v6);
}

uint64_t closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  v1 = v0[3];
  v0[6] = PairingExecutor._pairingError()(v0[5], v0[4]);

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator._interruptExecutorsPairing()(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = closure #1 in PairingCoordinator._interruptExecutorsPairing();

  return PairingExecutor._interruptPairing()(ObjectType, v2);
}

uint64_t closure #1 in PairingCoordinator._interruptExecutorsPairing()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in PairingCoordinator.startTimeout(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 89) = a5;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startTimeout(for:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.startTimeout(for:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(v0 + 89);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.startTimeout(for:);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);

    return PairingCoordinator.pairingTimeOut(for:)((v0 + 88), v4, v5);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v4 + 80) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startTimeout(for:), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

{
  v24 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 89);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v6 = 136446466;
    v9 = 0xEE00676E69726961;
    v10 = 0x506C6C617265766FLL;
    v11 = 0xEC00000064616552;
    v12 = 0x617461646174656DLL;
    v13 = 0x800000024AFAF570;
    v14 = 0x53676E6972696170;
    if (v5 == 3)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xEC00000074726174;
    }

    if (v5 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (v5)
    {
      v10 = 0xD000000000000013;
      v9 = 0x800000024AFAF540;
    }

    if (v5 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v5 <= 1)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    v17 = *(v0 + 80);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v6 + 4) = v18;
    *(v6 + 12) = 2114;
    MEMORY[0x24C236EC0](v17);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v19;
    *v7 = v19;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing timeout for %{public}s: %{public}@", v6, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C236EB0](v17);
  }

  else
  {
    v20 = *(v0 + 80);

    MEMORY[0x24C236EB0](v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t PairingCoordinator.pairingTimeOut(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  v7 = type metadata accessor for CancellationError();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v4 + 96) = v10;
  v11 = *(v10 - 8);
  *(v4 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 33) = *a1;
  v13 = *(a3 + 8);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 120) = v15;
  *(v4 + 128) = v14;

  return MEMORY[0x2822009F8](PairingCoordinator.pairingTimeOut(for:), v15, v14);
}

uint64_t PairingCoordinator.pairingTimeOut(for:)()
{
  v42 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  type metadata accessor for WorkItemQueue();
  (*(v2 + 72))(v3, v2);
  LOBYTE(v1) = static WorkItemQueue.called(on:)();

  if (v1 & 1) != 0 || (v4 = *(v0 + 64), (*(*(v0 + 56) + 80))(*(v0 + 48)), LOBYTE(v4) = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();

    v8 = *(v0 + 8);
LABEL_4:

    return v8();
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  LOBYTE(v41[0]) = *(v0 + 33);
  v13 = (*(v10 + 168))(v41, v12);
  v15 = v14;
  v17 = v16;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  *(v0 + 136) = __swift_project_value_buffer(v18, static Logger.pairingCoordinator);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 33);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41[0] = v23;
    *v22 = 136446466;
    v24 = 0xEE00676E69726961;
    v25 = 0x506C6C617265766FLL;
    v26 = 0xEC00000064616552;
    v27 = 0x617461646174656DLL;
    v28 = 0x800000024AFAF570;
    v29 = 0x53676E6972696170;
    if (v21 == 3)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v28 = 0xEC00000074726174;
    }

    if (v21 != 2)
    {
      v27 = v29;
      v26 = v28;
    }

    if (v21)
    {
      v25 = 0xD000000000000013;
      v24 = 0x800000024AFAF540;
    }

    if (v21 <= 1)
    {
      v30 = v25;
    }

    else
    {
      v30 = v27;
    }

    if (v21 <= 1)
    {
      v31 = v24;
    }

    else
    {
      v31 = v26;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v41);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2082;
    *(v0 + 16) = v13;
    *(v0 + 24) = v15;
    *(v0 + 32) = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8DurationVSgMd, &_ss8DurationVSgMR);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v41);

    *(v22 + 14) = v35;
    _os_log_impl(&dword_24AF48000, v19, v20, "Pairing timeout for %{public}s start with duration: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v23, -1, -1);
    MEMORY[0x24C237030](v22, -1, -1);
  }

  v36 = *(v0 + 112);
  if (v17)
  {
    v37 = *(v0 + 88);

    v8 = *(v0 + 8);
    goto LABEL_4;
  }

  v38 = *(v0 + 112);
  static Clock<>.continuous.getter();
  v39 = swift_task_alloc();
  *(v0 + 144) = v39;
  *v39 = v0;
  v39[1] = PairingCoordinator.pairingTimeOut(for:);
  v40 = *(v0 + 112);

  return specialized Clock.sleep(for:tolerance:)(v13, v15, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  v5 = v2[16];
  v6 = v2[15];
  if (v0)
  {
    v7 = PairingCoordinator.pairingTimeOut(for:);
  }

  else
  {
    v7 = PairingCoordinator.pairingTimeOut(for:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v45 = v0;
  v1 = *(v0 + 152);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);
    LOBYTE(v44[0]) = *(v0 + 33);
    PairingCoordinator.timeoutHandling(for:)(v44, v23, v21);
    goto LABEL_39;
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 40) = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 136);
  if (v4)
  {
    MEMORY[0x24C236EB0](v1);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 33);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v44[0] = v10;
      *v9 = 136446210;
      v11 = 0xEE00676E69726961;
      v12 = 0x617461646174656DLL;
      v13 = 0xEC00000064616552;
      v14 = 0x800000024AFAF570;
      v15 = 0x53676E6972696170;
      if (v8 == 3)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xEC00000074726174;
      }

      if (v8 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0xD000000000000013;
      if (v8)
      {
        v11 = 0x800000024AFAF540;
      }

      else
      {
        v16 = 0x506C6C617265766FLL;
      }

      if (v8 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      if (v8 <= 1)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v44);

      *(v9 + 4) = v19;
      _os_log_impl(&dword_24AF48000, v6, v7, "Timeout task for %{public}s was cancelled.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x24C237030](v10, -1, -1);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v20 = *(v0 + 40);
    goto LABEL_38;
  }

  MEMORY[0x24C236EB0](*(v0 + 40));
  MEMORY[0x24C236EC0](v1);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (!os_log_type_enabled(v24, v25))
  {

    v20 = v1;
LABEL_38:
    MEMORY[0x24C236EB0](v20);
    goto LABEL_39;
  }

  v26 = *(v0 + 33);
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v44[0] = v29;
  *v27 = 136446466;
  v30 = 0xEE00676E69726961;
  v31 = 0x617461646174656DLL;
  v32 = 0xEC00000064616552;
  v33 = 0x800000024AFAF570;
  v34 = 0x53676E6972696170;
  if (v26 == 3)
  {
    v34 = 0xD000000000000010;
  }

  else
  {
    v33 = 0xEC00000074726174;
  }

  if (v26 != 2)
  {
    v31 = v34;
    v32 = v33;
  }

  v35 = 0xD000000000000013;
  if (v26)
  {
    v30 = 0x800000024AFAF540;
  }

  else
  {
    v35 = 0x506C6C617265766FLL;
  }

  if (v26 <= 1)
  {
    v36 = v35;
  }

  else
  {
    v36 = v31;
  }

  if (v26 <= 1)
  {
    v37 = v30;
  }

  else
  {
    v37 = v32;
  }

  v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v44);

  *(v27 + 4) = v38;
  *(v27 + 12) = 2114;
  MEMORY[0x24C236EC0](v1);
  v39 = _swift_stdlib_bridgeErrorToNSError();
  *(v27 + 14) = v39;
  *v28 = v39;
  _os_log_impl(&dword_24AF48000, v24, v25, "Timeout for %{public}s failed with error: %{public}@.", v27, 0x16u);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x24C237030](v28, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  MEMORY[0x24C237030](v29, -1, -1);
  MEMORY[0x24C237030](v27, -1, -1);
  MEMORY[0x24C236EB0](v1);

LABEL_39:
  v40 = *(v0 + 112);
  v41 = *(v0 + 88);

  v42 = *(v0 + 8);

  return v42();
}

{
  v42 = v0;
  v1 = *(v0 + 152);
  *(v0 + 40) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 136);
  if (v4)
  {
    MEMORY[0x24C236EB0](v1);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 33);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136446210;
      v11 = 0xEE00676E69726961;
      v12 = 0x617461646174656DLL;
      v13 = 0xEC00000064616552;
      v14 = 0x800000024AFAF570;
      v15 = 0x53676E6972696170;
      if (v8 == 3)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xEC00000074726174;
      }

      if (v8 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0xD000000000000013;
      if (v8)
      {
        v11 = 0x800000024AFAF540;
      }

      else
      {
        v16 = 0x506C6C617265766FLL;
      }

      if (v8 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      if (v8 <= 1)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v41);

      *(v9 + 4) = v19;
      _os_log_impl(&dword_24AF48000, v6, v7, "Timeout task for %{public}s was cancelled.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x24C237030](v10, -1, -1);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v20 = *(v0 + 40);
    goto LABEL_36;
  }

  MEMORY[0x24C236EB0](*(v0 + 40));
  MEMORY[0x24C236EC0](v1);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (!os_log_type_enabled(v21, v22))
  {

    v20 = v1;
LABEL_36:
    MEMORY[0x24C236EB0](v20);
    goto LABEL_37;
  }

  v23 = *(v0 + 33);
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v41 = v26;
  *v24 = 136446466;
  v27 = 0xEE00676E69726961;
  v28 = 0x617461646174656DLL;
  v29 = 0xEC00000064616552;
  v30 = 0x800000024AFAF570;
  v31 = 0x53676E6972696170;
  if (v23 == 3)
  {
    v31 = 0xD000000000000010;
  }

  else
  {
    v30 = 0xEC00000074726174;
  }

  if (v23 != 2)
  {
    v28 = v31;
    v29 = v30;
  }

  v32 = 0xD000000000000013;
  if (v23)
  {
    v27 = 0x800000024AFAF540;
  }

  else
  {
    v32 = 0x506C6C617265766FLL;
  }

  if (v23 <= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = v28;
  }

  if (v23 <= 1)
  {
    v34 = v27;
  }

  else
  {
    v34 = v29;
  }

  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v41);

  *(v24 + 4) = v35;
  *(v24 + 12) = 2114;
  MEMORY[0x24C236EC0](v1);
  v36 = _swift_stdlib_bridgeErrorToNSError();
  *(v24 + 14) = v36;
  *v25 = v36;
  _os_log_impl(&dword_24AF48000, v21, v22, "Timeout for %{public}s failed with error: %{public}@.", v24, 0x16u);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x24C237030](v25, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  MEMORY[0x24C237030](v26, -1, -1);
  MEMORY[0x24C237030](v24, -1, -1);
  MEMORY[0x24C236EB0](v1);

LABEL_37:
  v37 = *(v0 + 112);
  v38 = *(v0 + 88);

  v39 = *(v0 + 8);

  return v39();
}