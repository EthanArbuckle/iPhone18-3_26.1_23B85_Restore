uint64_t sub_24A7401BC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void))
{
  v9 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = v9;
  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = a3;
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  v29 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v17 = sub_24A82D624();
    v19 = a6;
    v20 = sub_24A68761C(v17, v18, &v30);

    *(v15 + 4) = v20;
    a6 = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = qword_24A8372E0[v9];
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: performed item action with error?: %s status?: %ld", v15, 0x16u);
    sub_24A6876E8(v16);
    v21 = v16;
    v10 = v9;
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  if (a2 && !*(a2 + 16))
  {
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v22 = *(type metadata accessor for FMIPItem() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = v10;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24A8327A0;
    sub_24A69F134(a5 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v26 + v24, type metadata accessor for FMIPItem);
    sub_24A751A34(v26, "FMIPManager: removeItems %@", &unk_285DC67C8, sub_24A753164, &unk_285DC67E0);
    v10 = v25;
  }

  LOBYTE(v30) = v10;
  return a6(&v30, a2, v29);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v7 = qword_281515DC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518F88);

    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v30 = a2;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      v13 = FMIPPrewarmAction.debugDescription.getter();
      v15 = sub_24A68761C(v13, v14, &v31);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: perform item action %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      v16 = v11;
      a2 = v30;
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v18 = MEMORY[0x24C21D990](v17);
    type metadata accessor for FMIPPrewarmConnectAction();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;

      sub_24A72A134(v20, v6, a2, a3);
    }

    else
    {
      type metadata accessor for FMIPPrewarmDisconnectAction();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        swift_retain_n();
        v25 = sub_24A82CD94();
        v26 = sub_24A82D4E4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemGroupAction: cannot map action to request", v27, 2u);
          MEMORY[0x24C21E1D0](v27, -1, -1);
        }

        v32 = 0;
        sub_24A72A0CC();
        v28 = swift_allocError();
        *v29 = 6;
        sub_24A74087C(&v32, 0, v28, a2);

        goto LABEL_14;
      }

      v24 = v23;

      sub_24A72A4C4(v24, v6, a2, a3);
    }

LABEL_14:
    objc_autoreleasePoolPop(v18);

    return;
  }

  v33 = 0;
  sub_24A72A0CC();
  v21 = swift_allocError();
  *v22 = 11;
  a2(&v33, 0, v21);
}

uint64_t sub_24A74087C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item action with error?: %{public}s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t (*a2)(char *, void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  if (v6)
  {
    v8 = qword_281515DC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);

    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = FMIPItemGroupAction.description.getter();
      v16 = sub_24A68761C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPManager: perform item group action %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    sub_24A729F08(a1, v6, a2, a3);
  }

  else
  {
    v20 = 0;
    sub_24A72A0CC();
    v17 = swift_allocError();
    *v18 = 11;
    a2(&v20, 0, v17);
  }
}

uint64_t sub_24A740C90(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void))
{
  v7 = *a1;
  v8 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = a3;
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v15 = sub_24A82D624();
    v17 = sub_24A68761C(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = qword_24A8372E0[v7];
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: performed item group action with error?: %s status?: %ld", v13, 0x16u);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    v18 = v13;
    a4 = v20;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  LOBYTE(v21) = v8;
  return a4(&v21, a2, a3);
}

void FMIPManager.perform(action:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  sub_24A6C2474(a1, a2, a3);
}

{
  v4 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  sub_24A6C2C34(a1, a2, a3);
}

{
  v4 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  sub_24A6C1F58(a1, a2, a3);
}

Swift::Void __swiftcall FMIPManager.updateLastLocationStatus(enabled:)(Swift::Bool enabled)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    aBlock = 0;
    *v10 = 136315138;
    v32 = 0xE000000000000000;
    if (enabled)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (enabled)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x24C21C9E0](v12, v13);

    v14 = sub_24A68761C(aBlock, v32, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPManager: updateLastLocationStatus enabled?: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = sub_24A82CF94();
  v17 = sub_24A82CF94();
  v18 = [v15 integerForKey:v16 inDomain:v17];

  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    sub_24A82CA24();
    v20 = sub_24A82CF94();
    v21 = sub_24A82CF94();
    [v15 setInteger:v19 forKey:v20 inDomain:v21];

    v22 = sub_24A82C994();
    v23 = sub_24A82CF94();
    v24 = sub_24A82CF94();
    [v15 setDate:v22 forKey:v23 inDomain:v24];

    v25 = sub_24A82CF94();
    v26 = sub_24A82CF94();
    [v15 setBool:enabled forKey:v25 inDomain:v26];

    v27 = [objc_opt_self() sharedInstance];
    v35 = sub_24A7413E4;
    v36 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_24A7386AC;
    v34 = &unk_285DC5D00;
    v28 = _Block_copy(&aBlock);
    [v27 setLowBatteryLocateEnabled:enabled withCompletion:v28];
    _Block_release(v28);

    (*(v3 + 8))(v6, v2);
  }
}

void sub_24A7413E4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    v4 = a1;
    v5 = sub_24A82CD94();
    v6 = sub_24A82D504();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_24A82DC74();
      v11 = sub_24A68761C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: updateLastLocationStatus error setting low battery state in FMIP: %s", v7, 0xCu);
      sub_24A6876E8(v8);
      MEMORY[0x24C21E1D0](v8, -1, -1);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    else
    {
    }
  }
}

void FMIPManager.isCompanion(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_24A74F2E4;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A7386B4;
  v8[3] = &unk_285DC5D50;
  v7 = _Block_copy(v8);

  [v5 activeCompanionWithCompletion_];
  _Block_release(v7);
}

void FMIPManager.handle(url:completion:)(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPManager: handle URL", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_urlHandler);
  v13 = MEMORY[0x24C21D990]();
  sub_24A730AC4(a1, a2, a3, v12);

  objc_autoreleasePoolPop(v13);
}

uint64_t sub_24A7417C4(uint64_t a1, uint64_t a2)
{
  v85 = sub_24A82CDF4();
  v4 = *(v85 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24A82CE54();
  v7 = *(v83 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = (&v65 - v13);
  v14 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v65 - v19);
  v21 = type metadata accessor for FMIPDevice();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v80 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v65 - v26);
  v90 = a1;
  v70 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v28 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  result = swift_beginAccess();
  v67 = *(a2 + 16);
  if (!v67)
  {
    return result;
  }

  v30 = *(v28 + 80);
  v31 = v7;
  v32 = *(v30 + 16);
  v79 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v33 = *(v22 + 80);
  v34 = (v33 + 32) & ~v33;
  v66 = a2 + v34;
  v69 = v34;
  v71 = v30 + v34;
  v86 = *(v22 + 72);
  v87 = (v11 + 48);
  v88 = (v11 + 56);
  v78 = v33;
  v77 = (v33 + 24) & ~v33;
  v76 = v95;
  v75 = (v4 + 8);
  v74 = (v31 + 8);
  v73 = v30;

  v35 = 0;
  v92 = v27;
  v89 = v32;
  while (2)
  {
    v68 = v35 + 1;
    result = sub_24A69F134(v66 + v86 * v35, v27, type metadata accessor for FMIPDevice);
    v36 = 0;
    while (1)
    {
      if (v36 == v89)
      {
        v49 = 1;
        v36 = v89;
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }

        if (v36 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v50 = v71 + v36 * v86;
        v51 = *(v10 + 48);
        v52 = v72;
        *v72 = v36;
        sub_24A69F134(v50, v52 + v51, type metadata accessor for FMIPDevice);
        sub_24A67E8FC(v52, v18, &unk_27EF5E0C0, &unk_24A837180);
        v49 = 0;
        ++v36;
      }

      (*v88)(v18, v49, 1, v10);
      sub_24A67E8FC(v18, v20, &qword_27EF5DF70, &unk_24A837730);
      if ((*v87)(v20, 1, v10) == 1)
      {
        break;
      }

      v53 = *v20;
      v54 = (v20 + *(v10 + 48));
      v55 = *v92;
      v56 = v92[1];
      v58 = *v54;
      v57 = v54[1];

      sub_24A69F2C4(v54, type metadata accessor for FMIPDevice);
      if (v55 == v58 && v56 == v57)
      {

        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        v61 = *(v90 + v70);
        swift_beginAccess();
        v62 = *(v61 + 80);
        if (v53 < v62[2])
        {
          swift_beginAccess();

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + 80) = v62;
          if ((result & 1) == 0)
          {
            result = sub_24A766CD4(v62);
            v62 = result;
            *(v61 + 80) = result;
          }

          if (v53 >= v62[2])
          {
            goto LABEL_32;
          }

          sub_24A753990(v92, v62 + v69 + v53 * v86);
          *(v61 + 80) = v62;
          swift_endAccess();
          if (*(v61 + 24) == 1)
          {
            if (*(v61 + 328))
            {
              v63 = *(v61 + 328);

              sub_24A761CBC(v64);
            }
          }
        }

LABEL_6:
        v37 = v90;
        v91 = *(v90 + v79);
        v38 = v80;
        sub_24A69F134(v92, v80, type metadata accessor for FMIPDevice);
        v39 = v77;
        v40 = swift_allocObject();
        *(v40 + 16) = v37;
        sub_24A6A2390(v38, v40 + v39, type metadata accessor for FMIPDevice);
        v95[2] = sub_24A7538E4;
        v95[3] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v95[0] = sub_24A699BA0;
        v95[1] = &unk_285DC69E8;
        v41 = _Block_copy(aBlock);

        v42 = v20;
        v43 = v10;
        v44 = v18;
        v45 = v82;
        sub_24A82CE24();
        v93 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v46 = v84;
        v47 = v85;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v45, v46, v41);
        _Block_release(v41);
        (*v75)(v46, v47);
        v48 = v45;
        v18 = v44;
        v10 = v43;
        v20 = v42;
        (*v74)(v48, v83);
      }

      else
      {
        v60 = sub_24A82DC04();

        if (v60)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }
    }

    v27 = v92;
    sub_24A69F2C4(v92, type metadata accessor for FMIPDevice);
    v35 = v68;
    if (v68 != v67)
    {
      continue;
    }
  }
}

uint64_t sub_24A7420F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A742194(uint64_t a1, uint64_t a2)
{
  v89 = sub_24A82CDF4();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24A82CE54();
  v7 = *(v87 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v76 = (&v69 - v13);
  v14 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v69 - v19);
  v72 = type metadata accessor for FMIPDevice();
  v21 = *(v72 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v72);
  v84 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v24;
  MEMORY[0x28223BE20](v23);
  v90 = &v69 - v25;
  v95 = a1;
  v74 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v26 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  result = swift_beginAccess();
  v70 = *(a2 + 16);
  if (!v70)
  {
    return result;
  }

  v28 = *(v26 + 80);
  v29 = *(v28 + 16);
  v83 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v30 = *(v21 + 80);
  v31 = (v30 + 32) & ~v30;
  v69 = a2 + v31;
  v73 = v31;
  v75 = v28 + v31;
  v32 = *(v21 + 72);
  v93 = (v11 + 56);
  v91 = v32;
  v92 = (v11 + 48);
  v82 = v30;
  v81 = (v30 + 24) & ~v30;
  v80 = v99;
  v79 = (v4 + 8);
  v78 = (v7 + 8);
  v77 = v28;

  v33 = 0;
  v34 = v90;
  v94 = v29;
  while (2)
  {
    v71 = v33 + 1;
    result = sub_24A69F134(v69 + v91 * v33, v34, type metadata accessor for FMIPDevice);
    v96 = 0;
    while (1)
    {
      if (v96 == v94)
      {
        v49 = 1;
        v50 = v94;
      }

      else
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        if (v96 >= *(v77 + 16))
        {
          goto LABEL_36;
        }

        v50 = v96 + 1;
        v51 = v75 + v96 * v91;
        v52 = *(v10 + 48);
        v53 = v76;
        *v76 = v96;
        sub_24A69F134(v51, v53 + v52, type metadata accessor for FMIPDevice);
        sub_24A67E8FC(v53, v18, &unk_27EF5E0C0, &unk_24A837180);
        v49 = 0;
      }

      (*v93)(v18, v49, 1, v10);
      sub_24A67E8FC(v18, v20, &qword_27EF5DF70, &unk_24A837730);
      if ((*v92)(v20, 1, v10) == 1)
      {
        break;
      }

      v96 = v50;
      v54 = *v20;
      v55 = (v20 + *(v10 + 48));
      v56 = *v34;
      v57 = v34[1];
      v59 = *v55;
      v58 = v55[1];

      sub_24A69F2C4(v55, type metadata accessor for FMIPDevice);
      if (v56 == v59 && v57 == v58)
      {

        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        v62 = *(v95 + v74);
        swift_beginAccess();
        v63 = *(v62 + 80);
        if (v54 < v63[2])
        {
          swift_beginAccess();

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v62 + 80) = v63;
          if ((result & 1) == 0)
          {
            result = sub_24A766CD4(v63);
            v63 = result;
            *(v62 + 80) = result;
          }

          v64 = v63[2];
          if (v54 >= v64)
          {
            goto LABEL_37;
          }

          v65 = v64 - 1;
          v66 = v63 + v73 + v54 * v91;
          sub_24A69F2C4(v66, type metadata accessor for FMIPDevice);
          if (v91 > 0 || v66 >= v66 + v91 + (v65 - v54) * v91)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63[2] = v65;
          *(v62 + 80) = v63;
          swift_endAccess();
          if (*(v62 + 24))
          {
            if (*(v62 + 328))
            {
              v67 = *(v62 + 328);

              sub_24A761CBC(v68);
            }
          }
        }

LABEL_6:
        v35 = v95;
        v36 = *(v95 + v83);
        v37 = v34;
        v38 = v84;
        sub_24A69F134(v37, v84, type metadata accessor for FMIPDevice);
        v39 = v81;
        v40 = swift_allocObject();
        *(v40 + 16) = v35;
        sub_24A6A2390(v38, v40 + v39, type metadata accessor for FMIPDevice);
        v99[2] = sub_24A7531C0;
        v99[3] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v99[0] = sub_24A699BA0;
        v99[1] = &unk_285DC6948;
        v41 = _Block_copy(aBlock);

        v42 = v20;
        v43 = v10;
        v44 = v18;
        v45 = v86;
        sub_24A82CE24();
        v97 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v46 = v88;
        v47 = v89;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v45, v46, v41);
        _Block_release(v41);
        (*v79)(v46, v47);
        v48 = v45;
        v18 = v44;
        v10 = v43;
        v20 = v42;
        v34 = v90;
        (*v78)(v48, v87);
      }

      else
      {
        v61 = sub_24A82DC04();

        if (v61)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }
    }

    sub_24A69F2C4(v34, type metadata accessor for FMIPDevice);
    v33 = v71;
    if (v71 != v70)
    {
      continue;
    }
  }
}

uint64_t sub_24A742B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A742BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v96 = (&v85 - v7);
  v111 = sub_24A82CDF4();
  v8 = *(v111 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24A82CE54();
  v11 = *(v109 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v85 - v19);
  v91 = type metadata accessor for FMIPItem();
  v21 = *(v91 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v91);
  v105 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v85 - v26;
  v106 = v27;
  MEMORY[0x28223BE20](v25);
  v29 = &v85 - v28;
  v117 = a1;
  v94 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v30 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  v89 = *(a2 + 16);
  if (v89)
  {
    v31 = *(v30 + 280);
    v115 = *(v31 + 16);
    v103 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
    v32 = *(v21 + 80);
    v33 = (v32 + 32) & ~v32;
    v88 = a2 + v33;
    v92 = v33;
    v95 = v31 + v33;
    v34 = *(v21 + 72);
    v114 = (v5 + 56);
    v112 = v34;
    v113 = (v5 + 48);
    v102 = v32;
    v101 = (v32 + 24) & ~v32;
    v100 = &v121;
    v87 = v8;
    v99 = (v8 + 8);
    v86 = v11;
    v98 = (v11 + 8);
    v97 = v31;

    v35 = 0;
    *&v36 = 136315394;
    v93 = v36;
    v104 = v4;
    v116 = v18;
LABEL_4:
    v90 = v35 + 1;
    result = sub_24A69F134(v88 + v112 * v35, v29, type metadata accessor for FMIPItem);
    v38 = 0;
    while (1)
    {
      if (v38 == v115)
      {
        v48 = 1;
        v38 = v115;
        v49 = v116;
      }

      else
      {
        v49 = v116;
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        if (v38 >= *(v97 + 16))
        {
          goto LABEL_41;
        }

        v50 = v95 + v38 * v112;
        v51 = *(v4 + 48);
        v52 = v96;
        *v96 = v38;
        sub_24A69F134(v50, v52 + v51, type metadata accessor for FMIPItem);
        sub_24A67E8FC(v52, v49, &unk_27EF5E0F0, &unk_24A837170);
        v48 = 0;
        ++v38;
      }

      (*v114)(v49, v48, 1, v4);
      sub_24A67E8FC(v49, v20, &qword_27EF5DF68, &unk_24A837750);
      if ((*v113)(v20, 1, v4) == 1)
      {
        sub_24A69F2C4(v29, type metadata accessor for FMIPItem);
        v35 = v90;
        if (v90 != v89)
        {
          goto LABEL_4;
        }

        v8 = v87;
        v11 = v86;
        goto LABEL_39;
      }

      v53 = *v20;
      v54 = v20 + *(v4 + 48);
      v55 = *(v29 + 44);
      v56 = *(v29 + 45);
      v58 = *(v54 + 352);
      v57 = *(v54 + 360);

      sub_24A69F2C4(v54, type metadata accessor for FMIPItem);
      if (v55 == v58 && v56 == v57)
      {
        break;
      }

      v60 = sub_24A82DC04();

      if (v60)
      {
LABEL_20:
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v61 = sub_24A82CDC4();
        sub_24A6797D0(v61, qword_281518F88);
        v62 = v107;
        sub_24A69F134(v29, v107, type metadata accessor for FMIPItem);
        v63 = sub_24A82CD94();
        v64 = sub_24A82D504();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          aBlock = v66;
          *v65 = v93;
          v67 = FMIPItem.debugDescription.getter();
          v68 = v62;
          v70 = v69;
          sub_24A69F2C4(v68, type metadata accessor for FMIPItem);
          v71 = sub_24A68761C(v67, v70, &aBlock);

          *(v65 + 4) = v71;
          *(v65 + 12) = 2048;
          *(v65 + 14) = v53;
          _os_log_impl(&dword_24A675000, v63, v64, "FMIPManager: removeItems item removed %s at index %ld", v65, 0x16u);
          sub_24A6876E8(v66);
          MEMORY[0x24C21E1D0](v66, -1, -1);
          MEMORY[0x24C21E1D0](v65, -1, -1);

          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }
        }

        else
        {

          sub_24A69F2C4(v62, type metadata accessor for FMIPItem);
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_6;
          }
        }

        v72 = *(v117 + v94);
        swift_beginAccess();
        if (v53 < *(*(v72 + 80) + 16))
        {
          swift_beginAccess();
          v73 = *(v72 + 280);

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v72 + 280) = v73;
          if ((result & 1) == 0)
          {
            result = sub_24A766CE8(v73);
            v73 = result;
            *(v72 + 280) = result;
          }

          v74 = v112;
          v75 = v73[2];
          if (v53 >= v75)
          {
            goto LABEL_42;
          }

          v76 = v75 - 1;
          v77 = v73 + v92 + v53 * v112;
          sub_24A69F2C4(v77, type metadata accessor for FMIPItem);
          if (v74 > 0 || v77 >= v77 + v74 + (v76 - v53) * v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v73[2] = v76;
          *(v72 + 280) = v73;
          swift_endAccess();
          if (*(v72 + 24))
          {
            if (*(v72 + 312))
            {
              v78 = *(v72 + 312);

              sub_24A7620A4(v79);
            }
          }
        }

LABEL_6:
        v39 = v117;
        v40 = *(v117 + v103);
        v41 = v105;
        sub_24A69F134(v29, v105, type metadata accessor for FMIPItem);
        v42 = v101;
        v43 = swift_allocObject();
        *(v43 + 16) = v39;
        sub_24A6A2390(v41, v43 + v42, type metadata accessor for FMIPItem);
        v123 = sub_24A753174;
        v124 = v43;
        aBlock = MEMORY[0x277D85DD0];
        v120 = 1107296256;
        v121 = sub_24A699BA0;
        v122 = &unk_285DC6858;
        v44 = _Block_copy(&aBlock);

        v45 = v108;
        sub_24A82CE24();
        v118 = MEMORY[0x277D84F90];
        sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
        sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
        sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
        v46 = v110;
        v47 = v111;
        sub_24A82D6B4();
        MEMORY[0x24C21CE90](0, v45, v46, v44);
        _Block_release(v44);
        (*v99)(v46, v47);
        (*v98)(v45, v109);

        v4 = v104;
      }
    }

    goto LABEL_20;
  }

LABEL_39:
  v80 = *(v117 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v123 = sub_24A75316C;
  v124 = v117;
  aBlock = MEMORY[0x277D85DD0];
  v120 = 1107296256;
  v121 = sub_24A699BA0;
  v122 = &unk_285DC6808;
  v81 = _Block_copy(&aBlock);

  v82 = v108;
  sub_24A82CE24();
  v118 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v83 = v110;
  v84 = v111;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v82, v83, v81);
  _Block_release(v81);
  (*(v8 + 8))(v83, v84);
  (*(v11 + 8))(v82, v109);
}

uint64_t sub_24A7438B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 128))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A743954(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(a1, v8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v8;

  return sub_24A69CA60();
}

uint64_t FMIPManager.debugDescription.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  return 60;
}

uint64_t FMIPManager.hash(into:)()
{
  sub_24A82CAA4();
  sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0]);
  return sub_24A82CF64();
}

uint64_t sub_24A743BB8()
{
  v1 = **v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  return 60;
}

uint64_t sub_24A743C88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_24A82CA74();
}

void sub_24A743CA4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    oslog = sub_24A82CD94();
    v4 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A675000, oslog, v4, "FMIPManager: error getting status of lowBatteryLocateEnabled", v5, 2u);
      MEMORY[0x24C21E1D0](v5, -1, -1);
    }
  }

  else if ((a1 & 1) == 0)
  {
    v6 = a3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 88))(a3, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A743E14(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = v3 | 1;
  v5 = v3;
  return sub_24A6ADCC4(&v5);
}

uint64_t sub_24A743E70(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
  sub_24A82D574();
  sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
  sub_24A82D574();
  sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
  sub_24A82D574();
  sub_24A69D570(v8, v8, v8);

  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_24A82D574();
    (*(v4 + 32))(a1, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  sub_24A82D574();
  sub_24A73B840(v7, 0);
}

uint64_t sub_24A744094(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A744130(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(a2 + 48);
    v10[2] = *(a2 + 32);
    v10[3] = v8;
    v10[4] = *(a2 + 64);
    v11 = *(a2 + 80);
    v9 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v9;
    (*(v6 + 56))(a1, v10, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7441EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(a2 + 48);
    v12[2] = *(a2 + 32);
    v12[3] = v10;
    v12[4] = *(a2 + 64);
    v13 = *(a2 + 80);
    v11 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v11;
    (*(v8 + 16))(a1, v12, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7442B8(uint64_t a1, uint64_t (**a2)(uint64_t a1))
{
  v327 = a2;
  v304 = sub_24A82CDF4();
  v303 = *(v304 - 8);
  v3 = *(v303 + 64);
  MEMORY[0x28223BE20](v304);
  v302 = &v290 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_24A82CE54();
  v301 = *(v308 - 8);
  v5 = *(v301 + 64);
  MEMORY[0x28223BE20](v308);
  v300 = &v290 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_24A82CA34();
  v329 = *(v326 - 8);
  v7 = *(v329 + 64);
  v8 = MEMORY[0x28223BE20](v326);
  v325 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v324 = &v290 - v10;
  v297 = type metadata accessor for FMIPItem();
  v11 = *(v297 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v297);
  v294 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v291 = &v290 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v293 = &v290 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v298 = &v290 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v299 = &v290 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v290 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v290 - v26;
  v296 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  v307 = a1;
  v306 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v28 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v29 = *(v28 + 192);
  swift_beginAccess();
  v30 = *(v28 + 280);
  v31 = *(v30 + 16);
  v332 = v11;
  v322 = v29;
  v331 = v31;
  if (v31)
  {
    v330 = (v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    swift_bridgeObjectRetain_n();

    v32 = 0;
    v33 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }

      v34 = *(v11 + 72);
      sub_24A69F134(v330 + v34 * v32, v27, type metadata accessor for FMIPItem);
      v36 = *(v27 + 44);
      v35 = *(v27 + 45);
      sub_24A69F134(v27, v25, type metadata accessor for FMIPItem);
      v37 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v37;
      v39 = sub_24A6A2D48(v36, v35);
      v41 = *(v37 + 16);
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_171;
      }

      v45 = v40;
      if (*(v37 + 24) < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v50 = v39;
      sub_24A786CD4();
      v39 = v50;
      v33 = aBlock;
      if ((v45 & 1) == 0)
      {
LABEL_12:
        v33[(v39 >> 6) + 8] |= 1 << v39;
        v47 = (v33[6] + 16 * v39);
        *v47 = v36;
        v47[1] = v35;
        sub_24A6A2390(v25, v33[7] + v39 * v34, type metadata accessor for FMIPItem);
        v48 = v33[2];
        v43 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v43)
        {
          goto LABEL_172;
        }

        v33[2] = v49;

        goto LABEL_4;
      }

LABEL_3:
      sub_24A751378(v25, v33[7] + v39 * v34);
LABEL_4:
      ++v32;
      sub_24A69F2C4(v27, type metadata accessor for FMIPItem);
      v11 = v332;
      if (v331 == v32)
      {

        v51 = v322;
        goto LABEL_18;
      }
    }

    sub_24A782768(v44, isUniquelyReferenced_nonNull_native);
    v39 = sub_24A6A2D48(v36, v35);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_175;
    }

LABEL_11:
    v33 = aBlock;
    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  swift_bridgeObjectRetain_n();
  v33 = MEMORY[0x277D84F98];
  v51 = v29;
LABEL_18:
  v52 = v327 + 8;
  v53 = 1 << *(v327 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v327[8];
  v295 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems;
  v56 = (v53 + 63) >> 6;
  v323 = (v329 + 8);

  v57 = 0;
  *&v58 = 136315651;
  v309 = v58;
  *&v58 = 136315394;
  v292 = v58;
  *&v58 = 136315138;
  v305 = v58;
  v310 = v51;
  v313 = v52;
  v312 = v56;
  v311 = v33;
  while (v55)
  {
LABEL_26:
    v60 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v61 = v60 | (v57 << 6);
    v62 = (v327[6] + 16 * v61);
    v63 = *v62;
    v64 = v62[1];
    v65 = v327[7] + 24 * v61;
    v321 = *v65;
    v320 = v65[1];
    v319 = v65[2];
    v318 = v65[3];
    v66 = *(v65 + 1);
    v67 = *(v65 + 2);
    v68 = v322;
    v69 = *(v322 + 2);

    v70 = v66;
    v329 = v63;
    if (v69 && (v71 = sub_24A6A2D48(v63, v64), (v72 & 1) != 0))
    {
      v73 = (*(v68 + 7) + 24 * v71);
      v316 = *v73;
      v314 = v73[1];
      v315 = v73[2];
      v74 = v73[3];
      v75 = *(v73 + 2);
      v76 = qword_281515DC8;
      v77 = *(v73 + 1);
      if (v76 != -1)
      {
        swift_once();
      }

      v78 = sub_24A82CDC4();
      v79 = sub_24A6797D0(v78, qword_281518F88);

      v80 = v70;
      v81 = v77;
      v317 = v79;
      v82 = v64;
      v83 = sub_24A82CD94();
      v84 = sub_24A82D504();

      v85 = os_log_type_enabled(v83, v84);
      v330 = v81;
      v331 = v80;
      v328 = v82;
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v340 = v87;
        *v86 = v309;
        *(v86 + 4) = sub_24A68761C(v329, v82, &v340);
        *(v86 + 12) = 2081;
        LOBYTE(aBlock) = v321;
        BYTE1(aBlock) = v320;
        BYTE2(aBlock) = v319;
        BYTE3(aBlock) = v318;
        v335 = v331;
        v336 = *&v67;
        v88 = FMIPLocation.debugDescription.getter();
        v90 = sub_24A68761C(v88, v89, &v340);

        *(v86 + 14) = v90;
        *(v86 + 22) = 2081;
        v81 = v330;
        LOBYTE(aBlock) = v316;
        BYTE1(aBlock) = v314;
        BYTE2(aBlock) = v315;
        BYTE3(aBlock) = v74;
        v335 = v330;
        v336 = *&v75;
        v91 = FMIPLocation.debugDescription.getter();
        v93 = sub_24A68761C(v91, v92, &v340);

        *(v86 + 24) = v93;
        _os_log_impl(&dword_24A675000, v83, v84, "FMIPManager: didReceive location for identifier: %s new %{private}s, old: %{private}s", v86, 0x20u);
        swift_arrayDestroy();
        v94 = v87;
        v80 = v331;
        MEMORY[0x24C21E1D0](v94, -1, -1);
        MEMORY[0x24C21E1D0](v86, -1, -1);
      }

      v95 = v311;
      v96 = [v80 timestamp];
      v97 = v324;
      sub_24A82C9F4();

      v98 = [v81 timestamp];
      v99 = v325;
      sub_24A82C9F4();

      LOBYTE(v98) = sub_24A82C9A4();
      v100 = *v323;
      v101 = v99;
      v102 = v326;
      (*v323)(v101, v326);
      v100(v97, v102);
      if (v98)
      {
        LOBYTE(aBlock) = v74;
        if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v103 == 0xE800000000000000)
        {

          v104 = v331;
LABEL_42:
          v109 = [v104 timestamp];
          v110 = v324;
          sub_24A82C9F4();

          sub_24A82C9D4();
          v112 = v111;
          v113 = v326;
          v100(v110, v326);
          v114 = [v330 timestamp];
          v115 = v325;
          sub_24A82C9F4();

          sub_24A82C9D4();
          v117 = v116;
          v100(v115, v113);
          v118 = v328;

          v119 = sub_24A82CD94();
          v120 = sub_24A82D504();

          v121 = os_log_type_enabled(v119, v120);
          if (v112 - v117 > 15.0)
          {
            if (v121)
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              aBlock = v139;
              *v138 = v292;
              v140 = v329;
              *(v138 + 4) = sub_24A68761C(v329, v118, &aBlock);
              *(v138 + 12) = 2048;
              *(v138 + 14) = 0x402E000000000000;
              _os_log_impl(&dword_24A675000, v119, v120, "FMIPManager: Overriding realtime location for %s because %f miliseconds threshold is expired", v138, 0x16u);
              sub_24A6876E8(v139);
              MEMORY[0x24C21E1D0](v139, -1, -1);
              MEMORY[0x24C21E1D0](v138, -1, -1);
            }

            else
            {

              v140 = v329;
            }

            v172 = v331;
            v173 = v310;
            v174 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v173;
            if (v320)
            {
              v175 = 256;
            }

            else
            {
              v175 = 0;
            }

            v176 = v175 | v321;
            if (v319)
            {
              v177 = 0x10000;
            }

            else
            {
              v177 = 0;
            }

            sub_24A784C04(v176 | v177 | (v318 << 24), v172, v140, v118, v174, v67);

            v310 = aBlock;
          }

          else
          {
            if (v121)
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              aBlock = v123;
              *v122 = v305;
              v124 = sub_24A68761C(v329, v118, &aBlock);

              *(v122 + 4) = v124;
              _os_log_impl(&dword_24A675000, v119, v120, "FMIPManager: Keeping realtime location for %s ", v122, 0xCu);
              sub_24A6876E8(v123);
              MEMORY[0x24C21E1D0](v123, -1, -1);
              MEMORY[0x24C21E1D0](v122, -1, -1);
            }

            else
            {
            }
          }

          goto LABEL_47;
        }

        v108 = sub_24A82DC04();

        v104 = v331;
        if (v108)
        {
          goto LABEL_42;
        }

        v164 = v331;
        v165 = v328;

        v166 = sub_24A82CD94();
        v167 = sub_24A82D504();

        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          aBlock = v169;
          *v168 = v305;
          v170 = v329;
          *(v168 + 4) = sub_24A68761C(v329, v165, &aBlock);
          _os_log_impl(&dword_24A675000, v166, v167, "FMIPManager: Overriding location because it's newer: %s ", v168, 0xCu);
          sub_24A6876E8(v169);
          MEMORY[0x24C21E1D0](v169, -1, -1);
          v171 = v168;
          v164 = v331;
          MEMORY[0x24C21E1D0](v171, -1, -1);
        }

        else
        {

          v170 = v329;
        }

        v207 = v164;
        v208 = v310;
        v209 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v208;
        if (v320)
        {
          v210 = 256;
        }

        else
        {
          v210 = 0;
        }

        v211 = v210 | v321;
        if (v319)
        {
          v212 = 0x10000;
        }

        else
        {
          v212 = 0;
        }

        sub_24A784C04(v211 | v212 | (v318 << 24), v207, v170, v165, v209, v67);

        goto LABEL_127;
      }

      v105 = v328;
      if (!v95[2] || (v106 = sub_24A6A2D48(v329, v328), (v107 & 1) == 0))
      {

        goto LABEL_39;
      }

      v141 = v298;
      sub_24A69F134(v95[7] + *(v332 + 72) * v106, v298, type metadata accessor for FMIPItem);
      v142 = v141;
      v143 = v299;
      sub_24A6A2390(v142, v299, type metadata accessor for FMIPItem);
      if ((*(v307 + v295) & 1) == 0)
      {
        v178 = v310;
        if (!*(v310 + 2))
        {
          goto LABEL_94;
        }

        v179 = sub_24A6A2D48(v329, v105);
        if ((v180 & 1) == 0)
        {
          goto LABEL_94;
        }

        v181 = (*(v178 + 7) + 24 * v179);
        v182 = *v181;
        v183 = v181[1];
        v184 = v181[2];
        v185 = v181[3];
        v186 = *(v181 + 1);
        v187 = *(v181 + 2);
        v188 = v186;
        if (!v186)
        {
LABEL_94:
          v194 = v331;
          if (v331)
          {
            v155 = 0;
            v163 = v294;
LABEL_96:
            v195 = v194;
LABEL_97:

LABEL_98:
            sub_24A69F134(v299, v163, type metadata accessor for FMIPItem);
            v196 = sub_24A82CD94();
            v197 = sub_24A82D504();
            if (os_log_type_enabled(v196, v197))
            {
              v198 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              aBlock = v199;
              *v198 = v305;
              v200 = (v163 + *(v297 + 56));
              v201 = *v200;
              v202 = v200[1];

              sub_24A69F2C4(v163, type metadata accessor for FMIPItem);
              v203 = sub_24A68761C(v201, v202, &aBlock);

              *(v198 + 4) = v203;
              v204 = v197;
              v205 = v196;
              v206 = "FMIPManager: using BA Location for %s with because BA provides live locations.";
              goto LABEL_117;
            }

            goto LABEL_118;
          }

          goto LABEL_128;
        }

        v155 = v188;
        v189 = v331;
        if (!v331)
        {
          v163 = v294;
          v194 = 0;
          goto LABEL_96;
        }

        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v157 = v189;
        v155 = v155;
        if (sub_24A82D5E4() & 1) == 0 || v187 != v67 || ((v321 ^ v182) & 1) != 0 || ((v320 ^ v183) & 1) != 0 || ((v319 ^ v184))
        {

          v163 = v294;
          goto LABEL_97;
        }

        LOBYTE(aBlock) = v185;
        LOBYTE(v340) = v318;
        v190 = FMIPLocationType.rawValue.getter();
        v192 = v191;
        if (v190 != FMIPLocationType.rawValue.getter() || v192 != v193)
        {
          v266 = sub_24A82DC04();

          v163 = v294;
          if ((v266 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_161;
        }

        goto LABEL_93;
      }

      if (((*(v143 + *(v297 + 76)) & 0x40) == 0) | v296 & 1)
      {
        v144 = v310;
        if (!*(v310 + 2))
        {
          goto LABEL_111;
        }

        v145 = sub_24A6A2D48(v329, v105);
        if ((v146 & 1) == 0)
        {
          goto LABEL_111;
        }

        v147 = (*(v144 + 7) + 24 * v145);
        v148 = *v147;
        v149 = v147[1];
        v150 = v147[2];
        v151 = v147[3];
        v152 = *(v147 + 1);
        v153 = *(v147 + 2);
        v154 = v152;
        if (!v152)
        {
LABEL_111:
          v216 = v331;
          if (v331)
          {
            v155 = 0;
            v163 = v293;
LABEL_113:
            v217 = v216;
LABEL_114:

LABEL_115:
            sub_24A69F134(v299, v163, type metadata accessor for FMIPItem);
            v196 = sub_24A82CD94();
            v218 = sub_24A82D504();
            if (os_log_type_enabled(v196, v218))
            {
              v198 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              aBlock = v199;
              *v198 = v305;
              v219 = (v163 + *(v297 + 56));
              v220 = *v219;
              v221 = v219[1];

              sub_24A69F2C4(v163, type metadata accessor for FMIPItem);
              v222 = sub_24A68761C(v220, v221, &aBlock);

              *(v198 + 4) = v222;
              v204 = v218;
              v205 = v196;
              v206 = "FMIPManager: overriding location for %s with new BA location because it's not connected";
LABEL_117:
              _os_log_impl(&dword_24A675000, v205, v204, v206, v198, 0xCu);
              sub_24A6876E8(v199);
              MEMORY[0x24C21E1D0](v199, -1, -1);
              MEMORY[0x24C21E1D0](v198, -1, -1);

LABEL_119:
              v223 = v328;
              v224 = v310;
              v225 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v224;
              if (v320)
              {
                v226 = 256;
              }

              else
              {
                v226 = 0;
              }

              v227 = v226 | v321;
              if (v319)
              {
                v228 = 0x10000;
              }

              else
              {
                v228 = 0;
              }

              v229 = v331;
              sub_24A784C04(v227 | v228 | (v318 << 24), v331, v329, v223, v225, v67);

              goto LABEL_126;
            }

LABEL_118:

            sub_24A69F2C4(v163, type metadata accessor for FMIPItem);
            goto LABEL_119;
          }

LABEL_128:

          v52 = v313;
          v56 = v312;
          goto LABEL_129;
        }

        v155 = v154;
        v156 = v331;
        if (!v331)
        {
          v163 = v293;
          v216 = 0;
          goto LABEL_113;
        }

        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v157 = v156;
        v155 = v155;
        if (sub_24A82D5E4() & 1) == 0 || v153 != v67 || ((v321 ^ v148) & 1) != 0 || ((v320 ^ v149) & 1) != 0 || ((v319 ^ v150))
        {

          v163 = v293;
          goto LABEL_114;
        }

        LOBYTE(aBlock) = v151;
        LOBYTE(v340) = v318;
        v158 = FMIPLocationType.rawValue.getter();
        v160 = v159;
        if (v158 != FMIPLocationType.rawValue.getter() || v160 != v161)
        {
          v162 = sub_24A82DC04();

          v163 = v293;
          if ((v162 & 1) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_161;
        }

LABEL_93:

LABEL_161:

        v52 = v313;
        v56 = v312;
LABEL_129:
        sub_24A69F2C4(v299, type metadata accessor for FMIPItem);
      }

      else
      {
        LOBYTE(aBlock) = v74;
        v213 = FMIPLocationType.rawValue.getter();
        v215 = v331;
        if (v213 == 0x656D69746C616572 && v214 == 0xE800000000000000)
        {

LABEL_131:
          sub_24A69F2C4(v299, type metadata accessor for FMIPItem);

LABEL_39:
          goto LABEL_40;
        }

        v230 = sub_24A82DC04();

        if (v230)
        {
          goto LABEL_131;
        }

        v231 = v310;
        if (!*(v310 + 2))
        {
          goto LABEL_142;
        }

        v232 = sub_24A6A2D48(v329, v328);
        if ((v233 & 1) == 0)
        {
          goto LABEL_142;
        }

        v234 = (*(v231 + 7) + 24 * v232);
        v235 = *v234;
        v236 = v234[1];
        v237 = v234[2];
        v238 = v234[3];
        v240 = *(v234 + 1);
        v239 = *(v234 + 2);
        v241 = v240;
        if (v240)
        {
          v242 = v241;
          v243 = 0x10000;
          if (!v237)
          {
            v243 = 0;
          }

          v244 = 256;
          if (!v236)
          {
            v244 = 0;
          }

          aBlock = (v244 | v235 | v243 | (v238 << 24));
          v335 = v241;
          v336 = v239;
          v245 = v330;
          if (!v330)
          {
            v249 = v291;
            v250 = v328;
            goto LABEL_144;
          }

          LOBYTE(v340) = v316;
          BYTE1(v340) = v314;
          BYTE2(v340) = v315;
          BYTE3(v340) = v74;
          v341 = v330;
          v342 = v75;
          v246 = v330;
          v247 = v242;
          v248 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&aBlock, &v340);

          v249 = v291;
          v250 = v328;
          if ((v248 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else
        {
LABEL_142:
          v249 = v291;
          v250 = v328;
          v245 = v330;
          if (v330)
          {
            v251 = v330;
            v242 = 0;
LABEL_144:

LABEL_145:
            sub_24A69F134(v299, v249, type metadata accessor for FMIPItem);
            v252 = sub_24A82CD94();
            v253 = sub_24A82D504();
            if (os_log_type_enabled(v252, v253))
            {
              v254 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              aBlock = v255;
              *v254 = v305;
              v256 = (v249 + *(v297 + 56));
              v257 = *v256;
              v258 = v256[1];

              sub_24A69F2C4(v249, type metadata accessor for FMIPItem);
              v259 = sub_24A68761C(v257, v258, &aBlock);

              *(v254 + 4) = v259;
              v250 = v328;
              _os_log_impl(&dword_24A675000, v252, v253, "FMIPManager: overriding location for %s with realtime location because it's connected", v254, 0xCu);
              sub_24A6876E8(v255);
              MEMORY[0x24C21E1D0](v255, -1, -1);
              MEMORY[0x24C21E1D0](v254, -1, -1);
            }

            else
            {

              sub_24A69F2C4(v249, type metadata accessor for FMIPItem);
            }

            v260 = v310;
            v261 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v260;
            if (v314)
            {
              v262 = 256;
            }

            else
            {
              v262 = 0;
            }

            v263 = v262 | v316;
            if (v315)
            {
              v264 = 0x10000;
            }

            else
            {
              v264 = 0;
            }

            v265 = v330;
            sub_24A784C04(v263 | v264 | (v74 << 24), v330, v329, v250, v261, v75);

LABEL_126:
            sub_24A69F2C4(v299, type metadata accessor for FMIPItem);
LABEL_127:
            v310 = aBlock;
            goto LABEL_40;
          }
        }

        sub_24A69F2C4(v299, type metadata accessor for FMIPItem);
LABEL_40:
        v52 = v313;
        v56 = v312;
      }
    }

    else
    {
      v125 = v70;
      v126 = v310;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v126;
      v128 = sub_24A6A2D48(v63, v64);
      v130 = *(v126 + 2);
      v131 = (v129 & 1) == 0;
      v43 = __OFADD__(v130, v131);
      v132 = v130 + v131;
      if (v43)
      {
        goto LABEL_173;
      }

      v133 = v129;
      if (*(v126 + 3) >= v132)
      {
        if ((v127 & 1) == 0)
        {
          v267 = v128;
          sub_24A78629C();
          v128 = v267;
          if (v133)
          {
LABEL_54:
            v135 = v128;

            v310 = aBlock;
            v136 = aBlock[7] + 24 * v135;
            v137 = *(v136 + 8);
            *v136 = v321;
            *(v136 + 1) = v320;
            *(v136 + 2) = v319;
            *(v136 + 3) = v318;
            *(v136 + 8) = v125;
            *(v136 + 16) = v67;

            goto LABEL_47;
          }

          goto LABEL_164;
        }
      }

      else
      {
        sub_24A781610(v132, v127);
        v128 = sub_24A6A2D48(v329, v64);
        if ((v133 & 1) != (v134 & 1))
        {
          goto LABEL_175;
        }
      }

      if (v133)
      {
        goto LABEL_54;
      }

LABEL_164:
      v268 = aBlock;
      aBlock[(v128 >> 6) + 8] |= 1 << v128;
      v269 = (*(v268 + 48) + 16 * v128);
      *v269 = v329;
      v269[1] = v64;
      v270 = *(v268 + 56) + 24 * v128;
      *v270 = v321;
      *(v270 + 1) = v320;
      *(v270 + 2) = v319;
      *(v270 + 3) = v318;
      *(v270 + 8) = v125;
      *(v270 + 16) = v67;

      v271 = *(v268 + 16);
      v43 = __OFADD__(v271, 1);
      v272 = v271 + 1;
      if (v43)
      {
        goto LABEL_174;
      }

      v310 = v268;
      *(v268 + 16) = v272;
LABEL_47:
      v52 = v313;
      v56 = v312;
    }
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v59 >= v56)
    {
      break;
    }

    v55 = v52[v59];
    ++v57;
    if (v55)
    {
      v57 = v59;
      goto LABEL_26;
    }
  }

  v273 = v327;

  v274 = v307;
  v275 = v306;
  v276 = *(v307 + v306);

  v277 = v310;
  LOBYTE(v273) = sub_24A7556C0(v310, v273);

  if ((v273 & 1) == 0)
  {
  }

  v278 = *(v274 + v275);
  swift_beginAccess();
  v310 = v277;
  v279 = *(v278 + 280);
  v330 = *(v274 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v338 = sub_24A6A04A0;
  v339 = v274;
  aBlock = MEMORY[0x277D85DD0];
  v335 = 1107296256;
  v327 = &v336;
  v336 = sub_24A699BA0;
  v337 = &unk_285DC6010;
  v280 = _Block_copy(&aBlock);

  v281 = v300;
  sub_24A82CE24();
  v333 = MEMORY[0x277D84F90];
  v329 = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  v328 = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  v331 = sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v282 = v302;
  v283 = v304;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v281, v282, v280);
  _Block_release(v280);
  v332 = *(v303 + 8);
  (v332)(v282, v283);
  v284 = *(v301 + 8);
  v284(v281, v308);

  v285 = *(v274 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v286 = swift_allocObject();
  *(v286 + 16) = v274;
  *(v286 + 24) = v279;
  v338 = sub_24A75131C;
  v339 = v286;
  aBlock = MEMORY[0x277D85DD0];
  v335 = 1107296256;
  v336 = sub_24A699BA0;
  v337 = &unk_285DC6060;
  v287 = _Block_copy(&aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v281, v282, v287);
  _Block_release(v287);
  v284(v281, v308);
  (v332)(v282, v283);

  v338 = sub_24A6A09FC;
  v339 = v274;
  aBlock = MEMORY[0x277D85DD0];
  v335 = 1107296256;
  v336 = sub_24A699BA0;
  v337 = &unk_285DC6088;
  v288 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v333 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v281, v282, v288);
  _Block_release(v288);
  (v332)(v282, v283);
  v284(v281, v308);
}

uint64_t sub_24A74643C(uint64_t a1, uint64_t a2)
{
  v69 = sub_24A82CDF4();
  v68 = *(v69 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24A82CE54();
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v75 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  *&v15 = 136315394;
  v70 = v15;
  v74 = v12;
  v71 = a1;
  v72 = a2;
  while (v11)
  {
    v16 = v14;
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v16 << 6);
    v18 = *(*(a1 + 48) + v17);
    v19 = *(*(a1 + 56) + 8 * v17);
    v20 = qword_281515DC8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_24A82CDC4();
    sub_24A6797D0(v21, qword_281518F88);

    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = v70;
      LOBYTE(v76) = v18;
      v26 = sub_24A82D024();
      v28 = sub_24A68761C(v26, v27, aBlock);
      v73 = v18;
      v29 = v28;

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      sub_24A82CAA4();
      sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0]);
      v30 = sub_24A82CF04();
      v32 = sub_24A68761C(v30, v31, aBlock);

      *(v24 + 14) = v32;
      v18 = v73;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPManager: didReceive updating state: %s: %s", v24, 0x16u);
      swift_arrayDestroy();
      v33 = v25;
      a2 = v72;
      MEMORY[0x24C21E1D0](v33, -1, -1);
      v34 = v24;
      a1 = v71;
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    v11 &= v11 - 1;
    v35 = *(a2 + v75);
    if (v18)
    {
      if (v18 == 1)
      {
        v36 = v35[28];
        v37 = *(a2 + v75);

        v38 = sub_24A7B6DF0(v19, v36);

        if (v38)
        {
          goto LABEL_4;
        }

        swift_beginAccess();
        v39 = v35[10];

        v41 = sub_24A76A8F4(v40, v19);

        v42 = v35[10];
        v35[10] = v41;

        v43 = v35[28];
        v35[28] = v19;
      }

      else
      {
        v51 = v35[27];
        v52 = *(a2 + v75);

        v53 = sub_24A7B6DF0(v19, v51);

        if (v53)
        {
LABEL_4:

          goto LABEL_5;
        }

        swift_beginAccess();
        v54 = v35[10];

        v56 = sub_24A76A0B0(v55, v19);

        v57 = v35[10];
        v35[10] = v56;

        v58 = v35[27];
        v35[27] = v19;
      }
    }

    else
    {
      v44 = v35[25];
      v45 = *(a2 + v75);

      v46 = sub_24A7B6DF0(v19, v44);

      if (v46)
      {
        goto LABEL_4;
      }

      swift_beginAccess();
      v47 = v35[10];

      v49 = sub_24A769874(v48, v19);

      v50 = v35[10];
      v35[10] = v49;
    }

LABEL_5:
    v14 = v16;
    v12 = v74;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v59 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
      aBlock[4] = sub_24A6A09FC;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A699BA0;
      aBlock[3] = &unk_285DC6380;
      v60 = _Block_copy(aBlock);

      v61 = v64;
      sub_24A82CE24();
      v76 = MEMORY[0x277D84F90];
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v62 = v67;
      v63 = v69;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v61, v62, v60);
      _Block_release(v60);
      (*(v68 + 8))(v62, v63);
      (*(v65 + 8))(v61, v66);
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A746B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CDF4();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A82CE54();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  LOBYTE(a2) = a3(a2);

  if (a2)
  {
    v20 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = a4;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = a5;
    v21 = _Block_copy(aBlock);

    sub_24A82CE24();
    v25 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v17, v13, v21);
    _Block_release(v21);
    (*(v24 + 8))(v13, v10);
    (*(v14 + 8))(v17, v23);
  }

  return result;
}

uint64_t sub_24A746E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A82CDF4();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = *(v32 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v19 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  LOBYTE(a5) = sub_24A755F74(a2, a3, a4, a5);

  if (a5)
  {
    v21 = *(a1 + v18);
    swift_beginAccess();
    v22 = *(v21 + 80);

    v23 = sub_24A6A30A8(v22, 1);

    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v31[1] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
      v40 = sub_24A6A09FC;
      v41 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24A699BA0;
      v39 = &unk_285DC6218;
      v25 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v42 = v24;
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v24 = MEMORY[0x277D84F90];
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v17, v13, v25);
      _Block_release(v25);
      (*(v34 + 8))(v13, v10);
      (*(v32 + 8))(v17, v33);
    }

    v26 = *(a1 + v18);
    swift_beginAccess();
    v27 = *(v26 + 280);

    v28 = sub_24A75633C(v27, 2, 1);

    if (v28)
    {
      v29 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
      v40 = sub_24A6A04A0;
      v41 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24A699BA0;
      v39 = &unk_285DC61F0;
      v30 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v35 = v24;
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v17, v13, v30);
      _Block_release(v30);
      (*(v34 + 8))(v13, v10);
      (*(v32 + 8))(v17, v33);
    }
  }

  return result;
}

uint64_t sub_24A74734C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A82CDF4();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v4);
  v124 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_24A82CE54();
  v123 = *(v125 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v15 = &v102 - v14;
  v128 = a2;
  v129 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v17 = *(v16 + 192);
  v18 = *(a2 + 16);
  if (v18)
  {
    v110 = v13;
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v16 + 184);
    v118 = 0x800000024A843B00;
    v117 = 0x800000024A843AE0;
    v116 = 0x800000024A843AB0;
    v115 = 0x800000024A843A70;
    v114 = 0x800000024A843A50;
    v113 = 0x800000024A843A30;
    v112 = 0x800000024A8439F0;

    v121 = v20;

    LODWORD(v119) = 0;
    v21 = 0;
    *&v22 = 136315138;
    v109 = v22;
    v111 = 0xD000000000000012;
    v120 = a1;
LABEL_3:
    v23 = v21;
    do
    {
      if (v23 >= v18)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_64;
      }

      sub_24A69F134(v19 + *(v10 + 72) * v23, v15, type metadata accessor for FMIPItem);
      if ((v15[*(v9 + 76)] & 0x40) == 0)
      {
        if (v17[2])
        {
          v27 = *(v15 + 44);
          v130 = *(v15 + 45);
          v131 = v27;
          v28 = v17;
          v29 = sub_24A6A2D48(v27, v130);
          if (v30)
          {
            v31 = v17[7] + 24 * v29;
            if (*(v31 + 8) && *(v31 + 3) != 20)
            {
              switch(*(v31 + 3))
              {
                case 6:
                  swift_bridgeObjectRelease_n();
                  goto LABEL_24;
                case 9:
                  v24 = &v139;
                  goto LABEL_5;
                case 0xA:
                  v24 = &v140;
                  goto LABEL_5;
                case 0xC:
                  v24 = &v141;
                  goto LABEL_5;
                case 0xF:
                  v24 = &v142;
                  goto LABEL_5;
                case 0x12:
                  v24 = &v143;
                  goto LABEL_5;
                case 0x13:
                  v24 = &v144;
LABEL_5:
                  v25 = *(v24 - 32);
                  break;
                default:
                  break;
              }

              v26 = sub_24A82DC04();

              v17 = v28;
              if (v26)
              {
LABEL_24:
                if (qword_281515DC8 != -1)
                {
                  swift_once();
                }

                v33 = sub_24A82CDC4();
                sub_24A6797D0(v33, qword_281518F88);
                v34 = v110;
                sub_24A69F134(v15, v110, type metadata accessor for FMIPItem);
                v35 = sub_24A82CD94();
                v36 = sub_24A82D504();
                v119 = v35;
                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  v106 = v37;
                  v108 = swift_slowAlloc();
                  aBlock = v108;
                  *v37 = v109;
                  v38 = (v34 + *(v9 + 56));
                  v107 = v36;
                  v39 = *v38;
                  v40 = v38[1];

                  sub_24A69F2C4(v34, type metadata accessor for FMIPItem);
                  v41 = sub_24A68761C(v39, v40, &aBlock);
                  v42 = v119;
                  v43 = v41;

                  v44 = v106;
                  *(v106 + 1) = v43;
                  v45 = v44;
                  _os_log_impl(&dword_24A675000, v42, v107, "FMIPManager: overriding location for %s with cached BA location because it's no longer connected", v44, 0xCu);
                  v46 = v108;
                  sub_24A6876E8(v108);
                  MEMORY[0x24C21E1D0](v46, -1, -1);
                  MEMORY[0x24C21E1D0](v45, -1, -1);
                }

                else
                {

                  sub_24A69F2C4(v34, type metadata accessor for FMIPItem);
                }

                v47 = v28;
                v48 = v121;
                v49 = v130;
                v50 = v131;
                if (!*(v121 + 16) || (v51 = v130, v52 = sub_24A6A2D48(v131, v130), v49 = v51, v47 = v28, (v53 & 1) == 0))
                {
                  v17 = v47;
                  v72 = sub_24A6A2D48(v50, v49);
                  if (v73)
                  {
                    v74 = v72;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    aBlock = v17;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_24A78629C();
                      v17 = aBlock;
                    }

                    v76 = *(v17[6] + 16 * v74 + 8);

                    sub_24A7C46D4(v74, v17);
                  }

                  sub_24A69F2C4(v15, type metadata accessor for FMIPItem);
                  a1 = v120;
                  goto LABEL_46;
                }

                v54 = *(v48 + 56);
                v55 = v49;
                v56 = (v54 + 24 * v52);
                LODWORD(v106) = *v56;
                v107 = v56[1];
                LODWORD(v108) = v56[2];
                LODWORD(v119) = v56[3];
                v57 = *(v56 + 2);
                v105 = *(v56 + 1);
                v104 = swift_isUniquelyReferenced_nonNull_native();
                aBlock = v28;
                v58 = v55;
                v60 = sub_24A6A2D48(v50, v55);
                v61 = *(v28 + 16);
                v62 = (v59 & 1) == 0;
                v63 = v61 + v62;
                if (!__OFADD__(v61, v62))
                {
                  if (*(v28 + 24) < v63)
                  {
                    v103 = v59;
                    sub_24A781610(v63, v104);
                    v64 = v131;
                    v65 = sub_24A6A2D48(v131, v55);
                    if ((v103 & 1) == (v66 & 1))
                    {
                      v60 = v65;
                      v17 = aBlock;
                      if ((v103 & 1) == 0)
                      {
                        goto LABEL_35;
                      }

LABEL_44:
                      v77 = v17[7] + 24 * v60;
                      v78 = *(v77 + 8);
                      *v77 = v106;
                      *(v77 + 1) = v107;
                      *(v77 + 2) = v108;
                      *(v77 + 3) = v119;
                      *(v77 + 8) = v105;
                      *(v77 + 16) = v57;

LABEL_45:
                      a1 = v120;
                      sub_24A69F2C4(v15, type metadata accessor for FMIPItem);
LABEL_46:
                      LODWORD(v119) = 1;
                      if (v21 != v18)
                      {
                        goto LABEL_3;
                      }

LABEL_52:
                      v79 = v17;
                      v80 = v129;
                      v81 = *(a1 + v129);

                      v131 = v79;
                      sub_24A7556C0(v79, v121);

                      a2 = v128;
                      goto LABEL_55;
                    }

                    goto LABEL_67;
                  }

                  v64 = v131;
                  if (v104)
                  {
                    v17 = aBlock;
                    if (v59)
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v103 = v59;
                    sub_24A78629C();
                    v17 = aBlock;
                    if (v103)
                    {
                      goto LABEL_44;
                    }
                  }

LABEL_35:
                  v17[(v60 >> 6) + 8] |= 1 << v60;
                  v67 = (v17[6] + 16 * v60);
                  *v67 = v64;
                  v67[1] = v58;
                  v68 = v17[7] + 24 * v60;
                  *v68 = v106;
                  *(v68 + 1) = v107;
                  *(v68 + 2) = v108;
                  *(v68 + 3) = v119;
                  *(v68 + 8) = v105;
                  *(v68 + 16) = v57;
                  v69 = v17[2];
                  v70 = __OFADD__(v69, 1);
                  v71 = v69 + 1;
                  if (!v70)
                  {
                    v17[2] = v71;

                    goto LABEL_45;
                  }

LABEL_66:
                  __break(1u);
LABEL_67:
                  result = sub_24A82DC44();
                  __break(1u);
                  return result;
                }

LABEL_65:
                __break(1u);
                goto LABEL_66;
              }
            }
          }
        }
      }

      sub_24A69F2C4(v15, type metadata accessor for FMIPItem);
      ++v23;
    }

    while (v21 != v18);
    if (v119)
    {
      a1 = v120;
      goto LABEL_52;
    }

    v131 = v17;

    a1 = v120;
    a2 = v128;
    v80 = v129;
  }

  else
  {
    v131 = *(v16 + 192);

    v80 = v129;
  }

LABEL_55:
  v82 = *(a1 + v80);

  v83 = sub_24A75633C(a2, 4, 0);

  if (v83)
  {
    v84 = *(a1 + v80);
    swift_beginAccess();
    v85 = *(v84 + 280);
    v86 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v137 = sub_24A6A04A0;
    v138 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v134 = 1107296256;
    v135 = sub_24A699BA0;
    v136 = &unk_285DC6150;
    v87 = _Block_copy(&aBlock);

    v88 = v122;
    sub_24A82CE24();
    v132 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v89 = v124;
    v90 = v127;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v88, v89, v87);
    _Block_release(v87);
    (*(v126 + 8))(v89, v90);
    (*(v123 + 8))(v88, v125);

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) == 1)
    {
      v91 = (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation);
      v92 = v91[1];
      if (v92)
      {
        v93 = v91[2];
        v94 = *v91;
        LOWORD(aBlock) = v94 & 0x101;
        BYTE2(aBlock) = BYTE2(v94) & 1;
        BYTE3(aBlock) = BYTE3(v94);
        v134 = v92;
        v135 = v93;
        v95 = v92;
        sub_24A74ACCC(&aBlock, v85, "FMIPManager: appending realtime location %{private}s", &unk_285DC6188, sub_24A7525C8, &unk_285DC61A0);
      }
    }

    v96 = *(a1 + v129);
    swift_beginAccess();
    v97 = v96[10];
    swift_beginAccess();
    v98 = v96[35];
    v99 = v96[36];

    sub_24A69D570(v97, v98, v99);

    a2 = v128;
  }

  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) = 1;
    sub_24A73C60C(a2, 0);
  }

  v100 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = a2;

  sub_24A69CA60();
}

uint64_t sub_24A748270(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v104 = type metadata accessor for FMIPUnknownItem();
  isUniquelyReferenced_nonNull_native = *(v104 - 8);
  v8 = *(isUniquelyReferenced_nonNull_native + 64);
  v9 = MEMORY[0x28223BE20](v104);
  v103 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v102 = &v82 - v11;
  MEMORY[0x28223BE20](v10);
  v107 = &v82 - v12;
  v13 = sub_24A82CE54();
  isa = v13[-1].isa;
  v15 = *(isa + 8);
  MEMORY[0x28223BE20](v13);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24A82CDF4();
  v83 = *(v85 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v19 = sub_24A82CDC4();
    v20 = sub_24A6797D0(v19, qword_281518F88);

    v101 = v20;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    v23 = os_log_type_enabled(v21, v22);
    v89 = a4;
    v88 = a3;
    v87 = v13;
    v86 = isa;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(a1 + 2);

      _os_log_impl(&dword_24A675000, v21, v22, "FMIPManager: unknownItems processing %ld", v24, 0xCu);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    else
    {
    }

    v105 = swift_allocObject();
    *(v105 + 16) = MEMORY[0x277D84F90];
    a4 = v107;
    v100 = *(a1 + 2);
    if (!v100)
    {
      break;
    }

    a3 = 0;
    v96 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter;
    v26 = *(isUniquelyReferenced_nonNull_native + 80);
    v99 = &a1[(v26 + 32) & ~v26];
    v98 = "initializedSubsystems";
    v95 = v26;
    v94 = (v26 + 16) & ~v26;
    v93 = (v8 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = *(isUniquelyReferenced_nonNull_native + 72);
    *&v25 = 136315394;
    v90 = v25;
    while (1)
    {
      v109 = a3;
      sub_24A69F134(&v99[v97 * a3], a4, type metadata accessor for FMIPUnknownItem);
      v35 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v36 = sub_24A82CF94();
      v108 = [v35 initWithDescription:v36 andTimeout:60.0];

      v37 = *(a4 + *(v104 + 32));
      v111 = *(v37 + 16);
      if (v111)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_25:
      v63 = v107;
      v64 = v102;
      sub_24A69F134(v107, v102, type metadata accessor for FMIPUnknownItem);
      swift_bridgeObjectRetain_n();
      v13 = sub_24A82CD94();
      v65 = sub_24A82D504();
      if (os_log_type_enabled(v13, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v66 = v90;
        sub_24A82CAA4();
        v28 = isUniquelyReferenced_nonNull_native;
        sub_24A679FDC(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
        v68 = sub_24A82DB84();
        v70 = v69;
        sub_24A69F2C4(v64, type metadata accessor for FMIPUnknownItem);
        v71 = sub_24A68761C(v68, v70, aBlock);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2048;
        v72 = *(v28 + 16);

        *(v66 + 14) = v72;

        _os_log_impl(&dword_24A675000, v13, v65, "FMIPManager: unknownItems shifting location for item %s, locations: %ld", v66, 0x16u);
        sub_24A6876E8(v67);
        MEMORY[0x24C21E1D0](v67, -1, -1);
        MEMORY[0x24C21E1D0](v66, -1, -1);

        v27 = v109;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_24A69F2C4(v64, type metadata accessor for FMIPUnknownItem);
        v27 = v109;
        v28 = isUniquelyReferenced_nonNull_native;
      }

      a3 = v27 + 1;
      v29 = *(v106 + v96);
      v30 = v103;
      sub_24A69F134(v63, v103, type metadata accessor for FMIPUnknownItem);
      v31 = v91;
      v32 = swift_allocObject();
      sub_24A6A2390(v30, v32 + v94, type metadata accessor for FMIPUnknownItem);
      *(v32 + v93) = v28;
      *(v32 + v92) = v105;
      v33 = v108;
      *(v32 + v31) = v108;

      v34 = v33;
      sub_24A6B0DD8(v28, sub_24A753A2C, v32);

      [v34 wait];

      sub_24A69F2C4(v63, type metadata accessor for FMIPUnknownItem);
      a4 = v63;
      if (a3 == v100)
      {
        goto LABEL_27;
      }
    }

    v8 = 0;
    a1 = (v37 + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    v110 = v37;
    while (v8 < *(v37 + 16))
    {
      a4 = a1[3];
      v42 = *(a1 + 1);
      v43 = *(a1 + 2);
      isa = a1[2];
      v44 = a1[1];
      v112 = *a1;
      v113 = v44;
      aBlock[0] = v8;
      v45 = v42;
      a3 = sub_24A82DB84();
      v47 = v46;
      v13 = v45;
      v48 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v48;
      v49 = sub_24A6A2D48(a3, v47);
      v51 = *(v48 + 16);
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_29;
      }

      v55 = v50;
      if (*(v48 + 24) < v54)
      {
        sub_24A781610(v54, isUniquelyReferenced_nonNull_native);
        v49 = sub_24A6A2D48(a3, v47);
        if ((v55 & 1) != (v56 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

LABEL_19:
        if (v55)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v62 = v49;
      sub_24A78629C();
      v49 = v62;
      if (v55)
      {
LABEL_11:
        v38 = v49;

        isUniquelyReferenced_nonNull_native = aBlock[0];
        v39 = *(aBlock[0] + 56) + 24 * v38;
        v40 = *(v39 + 8);
        v41 = v113;
        *v39 = v112;
        *(v39 + 1) = v41;
        *(v39 + 2) = isa;
        *(v39 + 3) = a4;
        *(v39 + 8) = v13;
        *(v39 + 16) = v43;

        goto LABEL_12;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_native = aBlock[0];
      *(aBlock[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v57 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v49);
      *v57 = a3;
      v57[1] = v47;
      v58 = *(isUniquelyReferenced_nonNull_native + 56) + 24 * v49;
      v59 = v113;
      *v58 = v112;
      *(v58 + 1) = v59;
      *(v58 + 2) = isa;
      *(v58 + 3) = a4;
      *(v58 + 8) = v13;
      *(v58 + 16) = v43;

      v60 = *(isUniquelyReferenced_nonNull_native + 16);
      v53 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v53)
      {
        goto LABEL_30;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v61;
LABEL_12:
      ++v8;
      a1 += 24;
      v37 = v110;
      if (v111 == v8)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_27:
  v73 = v106;
  v74 = *(v106 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v75 = v82;
  sub_24A82CDE4();
  v76 = swift_allocObject();
  v76[2] = v105;
  v76[3] = v73;
  v77 = v88;
  v78 = v89;
  v76[4] = v88;
  v76[5] = v78;
  aBlock[4] = sub_24A753AE0;
  aBlock[5] = v76;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6B00;
  v79 = _Block_copy(aBlock);

  sub_24A6A7314(v77);
  v80 = v84;
  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v80, v75, v79);
  _Block_release(v79);
  (*(v86 + 1))(v80, v87);
  (*(v83 + 8))(v75, v85);
}

uint64_t sub_24A748D68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v60 = a4;
  v61 = a5;
  v62 = a1;
  v7 = type metadata accessor for FMIPUnknownItem();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  if (qword_281515DC8 == -1)
  {
    goto LABEL_2;
  }

LABEL_24:
  swift_once();
LABEL_2:
  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v56 = a2;
  sub_24A69F134(a2, v17, type metadata accessor for FMIPUnknownItem);
  swift_bridgeObjectRetain_n();
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();
  v21 = os_log_type_enabled(v19, v20);
  v58 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v22 = 136315394;
    sub_24A82CAA4();
    sub_24A679FDC(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v23 = sub_24A82DB84();
    v25 = v24;
    sub_24A69F2C4(v17, type metadata accessor for FMIPUnknownItem);
    v26 = sub_24A68761C(v23, v25, &v65);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    v17 = *(a3 + 16);

    *(v22 + 14) = v17;

    _os_log_impl(&dword_24A675000, v19, v20, "FMIPManager: unknownItems shifting completed for item %s, locations: %ld", v22, 0x16u);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_24A69F2C4(v17, type metadata accessor for FMIPUnknownItem);
  }

  v27 = v62 + 64;
  v28 = 1 << *(v62 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  a3 = v29 & *(v62 + 64);
  v30 = (v28 + 63) >> 6;

  v31 = 0;
  for (i = MEMORY[0x277D84F90]; a3; *(v42 + 6) = v37)
  {
LABEL_12:
    v34 = (*(v62 + 56) + 24 * (__clz(__rbit64(a3)) | (v31 << 6)));
    v35 = *v34;
    v36 = v34[1];
    a2 = v34[2];
    v17 = v34[3];
    v37 = *(v34 + 2);
    v38 = *(v34 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v35;
    v63 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      i = sub_24A77FE20(0, *(i + 2) + 1, 1, i);
    }

    v41 = *(i + 2);
    v40 = *(i + 3);
    v8 = (v41 + 1);
    if (v41 >= v40 >> 1)
    {
      i = sub_24A77FE20((v40 > 1), v41 + 1, 1, i);
    }

    *(i + 2) = v8;
    v42 = &i[24 * v41];
    v42[32] = v64;
    a3 &= a3 - 1;
    v42[33] = v36;
    v42[34] = a2;
    v42[35] = v17;
    *(v42 + 5) = v63;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v33 >= v30)
    {
      break;
    }

    a3 = *(v27 + 8 * v33);
    ++v31;
    if (a3)
    {
      v31 = v33;
      goto LABEL_12;
    }
  }

  v43 = v55;
  sub_24A69F134(v56, v55, type metadata accessor for FMIPUnknownItem);
  v44 = v59;
  FMIPUnknownItem.init(unknownItem:locations:)(v43, i, v59);
  v45 = v57;
  sub_24A69F134(v44, v57, type metadata accessor for FMIPUnknownItem);
  v46 = v60;
  swift_beginAccess();
  v47 = *(v46 + 16);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *(v46 + 16) = v47;
  if ((v48 & 1) == 0)
  {
    v47 = sub_24A780670(0, v47[2] + 1, 1, v47);
    *(v46 + 16) = v47;
  }

  v49 = v61;
  v50 = v58;
  v52 = v47[2];
  v51 = v47[3];
  if (v52 >= v51 >> 1)
  {
    v47 = sub_24A780670(v51 > 1, v52 + 1, 1, v47);
  }

  v47[2] = v52 + 1;
  sub_24A6A2390(v45, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v50[9] * v52, type metadata accessor for FMIPUnknownItem);
  *(v46 + 16) = v47;
  swift_endAccess();
  [v49 signal];
  return sub_24A69F2C4(v44, type metadata accessor for FMIPUnknownItem);
}

uint64_t sub_24A749334(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v10 = *(a2 + 16);
    v11 = *(v8 + 136);

    v11(a1, v10, ObjectType, v8);

    result = swift_unknownObjectRelease();
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24A74942C(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = a2;
    (*(v6 + 176))(a1, &v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7494CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 152))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A749568(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_24A82C8B4();
    v14 = *(*(v13 - 8) + 56);
    v14(v8, 1, 1, v13);
    v14(v6, 1, 1, v13);
    v15 = type metadata accessor for FMIPAlert();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v18[1] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    v19 = (v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    *v19 = 0;
    v19[1] = 0;
    sub_24A67E8FC(v8, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A67E8FC(v6, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    *(v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = 4;
    (*(v11 + 72))(a1, v18, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7497B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = sub_24A82CE54();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CDF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v21;
  v19 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v11, v16, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v22);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_24A7499E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);

  LOBYTE(a2) = sub_24A756164(a2);

  if (a2)
  {
    v17 = *(*(a1 + v14) + 240);
    v59 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v17;
    v67 = sub_24A752DA8;
    v68 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v47[1] = &v65;
    v65 = sub_24A699BA0;
    v66 = &unk_285DC6650;
    v58 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v62 = MEMORY[0x277D84F90];
    v19 = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    v48 = v13;
    v20 = v9;
    v21 = v19;
    v49 = v14;
    v22 = v5;
    v23 = a1;
    v24 = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v25 = sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v53 = v24;
    v26 = v23;
    v52 = v25;
    v54 = v21;
    sub_24A82D6B4();
    v27 = v48;
    v28 = v58;
    MEMORY[0x24C21CE90](0, v48, v8, v58);
    _Block_release(v28);
    v29 = *(v22 + 8);
    v56 = v8;
    v57 = v4;
    v55 = v22 + 8;
    v51 = v29;
    v29(v8, v4);
    v30 = *(v10 + 8);
    v31 = v27;
    v58 = v20;
    v50 = v30;
    v30(v27, v20);

    v32 = v49;
    v33 = *(v26 + v49);
    swift_beginAccess();
    v34 = *(v33 + 80);

    LOBYTE(v21) = sub_24A6A30A8(v35, 1);

    v36 = v31;
    if (v21)
    {
      v67 = sub_24A6A09FC;
      v68 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_24A699BA0;
      v66 = &unk_285DC66A0;
      v37 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v61 = MEMORY[0x277D84F90];
      v39 = v56;
      v38 = v57;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v36, v39, v37);
      _Block_release(v37);
      v51(v39, v38);
      v50(v36, v58);
    }

    v40 = *(v26 + v32);
    swift_beginAccess();
    v41 = *(v40 + 280);

    v42 = sub_24A75633C(v41, 3, 1);

    v43 = v56;
    v45 = v57;
    v44 = v58;
    if (v42)
    {
      v67 = sub_24A6A04A0;
      v68 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_24A699BA0;
      v66 = &unk_285DC6678;
      v46 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v60 = MEMORY[0x277D84F90];
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v36, v43, v46);
      _Block_release(v46);
      v51(v43, v45);
      v50(v36, v44);
    }
  }

  return result;
}

uint64_t sub_24A74A020(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 168))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74A0BC(void *a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[36];
  swift_beginAccess();
  v12 = a1[10];
  v16[1] = a2;
  v17 = v12;
  v16[0] = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A753BF8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6E20;
  v13 = _Block_copy(aBlock);

  sub_24A82CE24();
  v21 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v13);
  _Block_release(v13);
  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);

  swift_beginAccess();
  v14 = a1[35];

  sub_24A69D570(v17, v14, v18);
}

uint64_t sub_24A74A3F4(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v3 + 152))(a1, v10, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 8);
    v8 = swift_getObjectType();
    v9 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v7 + 32))(a1, v10, v8, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74A594(uint64_t a1, double a2)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 256);
  v27 = *(a1 + 264);
  v31 = v27;
  v28 = *(a1 + 280);
  v26 = *(a1 + 288);
  v29 = v26;
  v9 = (*(a1 + 216) >> 5) & 1;
  v10 = *(type metadata accessor for FMIPDevice() + 128);
  v11 = v27;
  v12 = v26;
  v13 = v11;
  sub_24A7DC368(&v30, &v28, v9, a1 + v10, &v32);

  v14 = v33;
  if (v33)
  {
    v27 = v33;
    v15 = v32;
    v16 = [v33 timestamp];
    sub_24A82C9F4();

    sub_24A82C9D4();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    if ((FMIPDevice.hasLocation.getter() & 1) != 0 && (v20 = *(a1 + 256), v19 = *(a1 + 264), v21 = *(a1 + 272), v32 = v15 & 0xFF010101, v33 = v27, v19))
    {
      LOWORD(v30) = v20 & 0x101;
      BYTE2(v30) = BYTE2(v20) & 1;
      BYTE3(v30) = BYTE3(v20);
      *&v31 = v19;
      *(&v31 + 1) = v21;
      v22 = v19;
      v23 = v14;
      v24 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&v32, &v30);

      if ((v24 & 1) != 0 && a2 - v18 < 180.0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_24A74A7F0(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24A82CE54();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = *a2;
  v14 = a2[1];
  v50 = a2[2];
  v15 = a2[3];
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = v16;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v48 = a1;
    v46 = v24;
    v55 = v24;
    *v23 = 136380675;
    LOBYTE(aBlock) = v54;
    BYTE1(aBlock) = v14;
    v47 = v14;
    v25 = v50;
    BYTE2(aBlock) = v50;
    BYTE3(aBlock) = v15;
    v57 = v49;
    v58 = v17;
    v45 = v21;
    v26 = FMIPLocation.debugDescription.getter();
    v28 = v15;
    v29 = v13;
    v30 = v9;
    v31 = v6;
    v32 = v3;
    v33 = sub_24A68761C(v26, v27, &v55);
    v34 = v25;
    LOBYTE(v14) = v47;

    *(v23 + 4) = v33;
    v3 = v32;
    v6 = v31;
    v9 = v30;
    v13 = v29;
    v15 = v28;
    _os_log_impl(&dword_24A675000, v20, v45, "FMIPManager: didReceive locationControler %{private}s", v23, 0xCu);
    v35 = v46;
    sub_24A6876E8(v46);
    v36 = v35;
    a1 = v48;
    MEMORY[0x24C21E1D0](v36, -1, -1);
    v37 = v23;
    v19 = v49;
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  else
  {

    v34 = v50;
  }

  v38 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = v3;
  *(v39 + 32) = v54;
  *(v39 + 33) = v14;
  *(v39 + 34) = v34;
  *(v39 + 35) = v15;
  *(v39 + 40) = v19;
  *(v39 + 48) = v17;
  v60 = sub_24A6AEC74;
  v61 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_24A699BA0;
  v59 = &unk_285DC66F0;
  v40 = _Block_copy(&aBlock);
  v41 = v19;
  v42 = a1;

  sub_24A82CE24();
  v55 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v40);
  _Block_release(v40);
  (*(v53 + 8))(v9, v6);
  (*(v51 + 8))(v13, v52);
}

uint64_t sub_24A74ACCC(unsigned __int8 *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = sub_24A82CE54();
  v47 = *(v51 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_24A82CDF4();
  v56 = *(v49 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v49);
  v54 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);
  v19 = v16;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v22 = 136380675;
    v44 = a3;
    v23 = v48;
    LOBYTE(aBlock) = v48;
    BYTE1(aBlock) = v13;
    BYTE2(aBlock) = v14;
    v43 = v13;
    v46 = v14;
    v24 = v15;
    BYTE3(aBlock) = v15;
    v60 = v19;
    v61 = v17;
    v25 = FMIPLocation.debugDescription.getter();
    v27 = v19;
    v28 = sub_24A68761C(v25, v26, &v58);

    *(v22 + 4) = v28;
    v29 = v21;
    v30 = v43;
    _os_log_impl(&dword_24A675000, v20, v29, v44, v22, 0xCu);
    v31 = v45;
    sub_24A6876E8(v45);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    v32 = v22;
    v33 = v46;
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  else
  {

    v30 = v13;
    v33 = v14;
    v24 = v15;
    v23 = v48;
    v27 = v19;
  }

  v34 = v57;
  v35 = *(v57 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v36 = v54;
  sub_24A82CDE4();
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v34;
  *(v37 + 24) = v38;
  *(v37 + 32) = v23;
  *(v37 + 33) = v30;
  *(v37 + 34) = v33;
  *(v37 + 35) = v24;
  *(v37 + 40) = v27;
  *(v37 + 48) = v17;
  v63 = v53;
  v64 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_24A699BA0;
  v62 = v55;
  v39 = _Block_copy(&aBlock);
  v40 = v27;

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v10, v36, v39);
  _Block_release(v39);
  (*(v47 + 8))(v10, v51);
  (*(v56 + 8))(v36, v49);
}

void sub_24A74B0DC(uint64_t a1, void *a2, int a3, void *a4, double a5)
{
  v80 = a4;
  v83 = a3;
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FMIPItem();
  v15 = *(v81 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v81);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v68 - v24;
  LOBYTE(a1) = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  if (qword_27EF5CBD8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (a1 & 1 | ((byte_27EF5DEF3 & 1) == 0))
    {
      return;
    }

    v77 = v15;
    v76 = v11;
    v69 = v12;
    v70 = v8;
    v71 = v7;
    v72 = v23;
    v75 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v27 = *(v23 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
    a1 = *(v27 + 184);
    v11 = a2[2];
    v73 = *(v27 + 192);

    v74 = a1;

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      a1 = *(v77 + 72);
      v82 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v7 = a2 + v82;
      v28 = v81;
      do
      {
        sub_24A69F134(v7, v25, type metadata accessor for FMIPItem);
        if ((v25[*(v28 + 76)] & 0x40) != 0)
        {
          sub_24A6A2390(v25, v22, type metadata accessor for FMIPItem);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A6FCB30(0, *(v12 + 16) + 1, 1);
            v28 = v81;
            v12 = aBlock;
          }

          v8 = *(v12 + 16);
          v30 = *(v12 + 24);
          if (v8 >= v30 >> 1)
          {
            sub_24A6FCB30(v30 > 1, v8 + 1, 1);
            v28 = v81;
            v12 = aBlock;
          }

          *(v12 + 16) = v8 + 1;
          sub_24A6A2390(v22, v12 + v82 + v8 * a1, type metadata accessor for FMIPItem);
        }

        else
        {
          sub_24A69F2C4(v25, type metadata accessor for FMIPItem);
        }

        v7 += a1;
        --v11;
      }

      while (v11);
    }

    v15 = *(v12 + 16);
    if (!v15)
    {

      v25 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    v91 = MEMORY[0x277D84F90];
    sub_24A6FCBFC(0, v15, 0);
    a2 = v80;
    if (*(v12 + 16))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v72 = v23;
    swift_once();
    v23 = v72;
  }

  a1 = 0;
  v7 = 0;
  v25 = v91;
  v22 = (v12 + ((*(v77 + 80) + 32) & ~*(v77 + 80)));
  v82 = *(v77 + 72);
  v8 = v15 - 1;
  while (1)
  {
    sub_24A69F134(v22, v19, type metadata accessor for FMIPItem);
    sub_24A74BC28(v19, v83 & 0xFF010101, a2, &aBlock, a5);
    sub_24A69F2C4(v19, type metadata accessor for FMIPItem);
    v90 = v86;
    v88 = aBlock;
    v89 = v85;
    v91 = v25;
    v11 = *(v25 + 2);
    v31 = *(v25 + 3);
    v15 = v11 + 1;
    if (v11 >= v31 >> 1)
    {
      sub_24A6FCBFC((v31 > 1), v11 + 1, 1);
      a2 = v80;
      v25 = v91;
    }

    *(v25 + 2) = v15;
    v32 = &v25[40 * v11];
    v33 = v88;
    v34 = v89;
    *(v32 + 8) = v90;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    if (v8 == a1)
    {
      break;
    }

    v22 += v82;
    if (++a1 >= *(v12 + 16))
    {
      goto LABEL_45;
    }
  }

LABEL_23:
  v35 = v76;
  if (*(v25 + 2))
  {
    sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
    v36 = sub_24A82D974();
  }

  else
  {
    v36 = MEMORY[0x277D84F98];
  }

  *&aBlock = v36;

  sub_24A74DFC0(v37, 1, &aBlock);

  v38 = aBlock;
  v39 = v73;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v39;
  sub_24A752E10(v38, sub_24A74EB0C, 0, v40, &aBlock);

  v41 = aBlock;
  sub_24A7B5CFC(aBlock, v39);
  v43 = v42;

  v44 = v75;
  if (v43)
  {

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v45 = sub_24A82CDC4();
    sub_24A6797D0(v45, qword_281518F88);
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_41;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "FMIPManager: ignoring location update since no changes were detected.";
LABEL_40:
    _os_log_impl(&dword_24A675000, v46, v47, v49, v48, 2u);
    MEMORY[0x24C21E1D0](v48, -1, -1);
LABEL_41:

    return;
  }

  v50 = v72;
  v51 = *(v72 + v75);

  v52 = sub_24A7556C0(v41, v74);

  if ((v52 & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v62 = sub_24A82CDC4();
    sub_24A6797D0(v62, qword_281518F88);
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_41;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "FMIPManager: ignoring location update since data manager said so.";
    goto LABEL_40;
  }

  v53 = *(v50 + v44);
  swift_beginAccess();
  v54 = *(v53 + 280);
  v55 = qword_281515DC8;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = sub_24A82CDC4();
  sub_24A6797D0(v56, qword_281518F88);

  v57 = sub_24A82CD94();
  v58 = sub_24A82D504();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = sub_24A82D224();

    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&dword_24A675000, v57, v58, "FMIPManager: items changed after realtime location %@", v59, 0xCu);
    sub_24A67F378(v60, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v60, -1, -1);
    MEMORY[0x24C21E1D0](v59, -1, -1);
  }

  else
  {
  }

  v63 = MEMORY[0x277D84F90];

  v64 = *(v72 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v86 = sub_24A6A04A0;
  v87 = v72;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_24A699BA0;
  *(&v85 + 1) = &unk_285DC61C8;
  v65 = _Block_copy(&aBlock);

  v66 = v78;
  sub_24A82CE24();
  v91 = v63;
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v67 = v71;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v66, v35, v65);
  _Block_release(v65);
  (*(v70 + 8))(v35, v67);
  (*(v79 + 8))(v66, v69);
}

void sub_24A74BC28(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v54 = a4;
  v9 = type metadata accessor for FMIPProductType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for FMIPItem() + 96);
  FMIPProductType.productInformation.getter(&v55);
  v14 = v58;
  if (v58)
  {
    v15 = v59;
    sub_24A67DF6C(&v55, v58);
    v16 = (*(v15 + 56))(v14, v15);
    sub_24A6876E8(&v55);
  }

  else
  {
    sub_24A67F378(&v55, &qword_27EF5DF48, &qword_24A839DA0);
    v16 = 10.0;
  }

  v17 = 20.0;
  if (v16 <= 20.0)
  {
    v17 = v16;
  }

  v18 = fmax(v17, 4.0);
  sub_24A69F134(a1 + v13, v12, type metadata accessor for FMIPProductType);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_24A67F378(v12, &qword_27EF5D360, &unk_24A836200);
    v19 = 3;
  }

  else
  {
    sub_24A69F2C4(v12, type metadata accessor for FMIPProductType);
    v19 = 1;
  }

  v51 = a2 & 0x100;
  v52 = a2 & 0x10000;
  v20 = [objc_allocWithZone(MEMORY[0x277CBFC60]) initWithBeaconType:v19 transmitPower:v18];
  v21 = objc_opt_self();
  sub_24A6BBA94(&qword_27EF5DF50, &qword_24A837168);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A836D30;
  *(v22 + 32) = a3;
  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  v23 = a3;
  v24 = sub_24A82D224();

  v53 = v20;
  v25 = [v21 applyFilterToLocationObservations:v24 options:v20];

  if (v25)
  {

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A82CDC4();
    sub_24A6797D0(v26, qword_281518F88);
    v27 = v23;
    v28 = v25;
    v29 = sub_24A82CD94();
    v30 = sub_24A82D504();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412802;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v28;
      *v32 = v27;
      v32[1] = v25;
      *(v31 + 22) = 2048;
      *(v31 + 24) = v16;
      v33 = v27;
      v34 = v28;
      _os_log_impl(&dword_24A675000, v29, v30, "FMIPManager: Calculated TX adjusted location for %@: %@, txPower: %f.", v31, 0x20u);
      sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v32, -1, -1);
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    v35 = *(a1 + 360);
    v36 = v54;
    *v54 = *(a1 + 352);
    v36[1] = v35;
    LOBYTE(v55) = a2 & 1;
    BYTE1(v55) = BYTE1(v51);
    BYTE2(v55) = BYTE2(v52);
    BYTE3(v55) = HIBYTE(a2);
    v56 = v27;
    v57 = a5;
    v37 = v27;

    v38 = (v36 + 2);
    v39 = v28;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A82CDC4();
    sub_24A6797D0(v40, qword_281518F88);
    v41 = v23;
    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_24A675000, v42, v43, "FMIPManager: Failed to adjust location for %@ - using default one.", v44, 0xCu);
      sub_24A67F378(v45, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v45, -1, -1);
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    v47 = *(a1 + 360);
    v48 = v54;
    *v54 = *(a1 + 352);
    v48[1] = v47;
    LOBYTE(v55) = a2 & 1;
    BYTE1(v55) = BYTE1(v51);
    BYTE2(v55) = BYTE2(v52);
    BYTE3(v55) = HIBYTE(a2);
    v56 = v41;
    v57 = a5;
    v49 = v41;

    v38 = (v48 + 2);
    v39 = v49;
  }

  FMIPLocation.init(location:shiftedLocation:)(&v55, v39, v38);
}

uint64_t sub_24A74C1DC(_BYTE *a1, uint64_t a2, int a3, void *a4, double a5)
{
  LODWORD(v124) = a3;
  v125 = a2;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24A82CE54();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v122 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v21);
  v26 = &v101[-v25];
  if (qword_27EF5CBD8 != -1)
  {
LABEL_54:
    v110 = v23;
    v100 = v24;
    result = swift_once();
    v24 = v100;
    v23 = v110;
  }

  if (byte_27EF5DEF3 != 1)
  {
    return result;
  }

  v27 = *(v125 + 16);
  if (!v27)
  {
    return result;
  }

  v109 = v24;
  v110 = v23;
  v121 = a4;
  v113 = v14;
  v114 = v12;
  v106 = v13;
  v120 = *(*&a1[OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController] + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  v112 = a1;
  v111 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v14 = *(*&a1[OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager] + 192);
  a4 = (v125 + ((*(v18 + 80) + 32) & ~*(v18 + 80)));
  v118 = (v124 >> 8) & 1;
  v119 = v124 & 1;
  v117 = WORD1(v124) & 1;

  v13 = 0;
  a1 = 0;
  v28 = MEMORY[0x277D84F98];
  *&v29 = 136315394;
  v108 = v29;
LABEL_5:
  v123 = v28;
  v12 = a1;
  do
  {
    if (v12 >= v27)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    a1 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      goto LABEL_53;
    }

    sub_24A69F134(a4 + *(v18 + 72) * v12, v26, type metadata accessor for FMIPDevice);
    if ((v26[217] & 4) != 0)
    {
      v115 = v14;
      v116 = v9;
      if (v120)
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v30 = sub_24A82CDC4();
        sub_24A6797D0(v30, qword_281518F88);
        v31 = v110;
        sub_24A69F134(v26, v110, type metadata accessor for FMIPDevice);
        v32 = v121;
        v33 = sub_24A82CD94();
        v34 = sub_24A82D504();

        v105 = v34;
        if (os_log_type_enabled(v33, v34))
        {
          v102 = BYTE3(v124);
          v35 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v126 = v104;
          *v35 = v108;
          v103 = v33;
          v107 = v8;
          v36 = *(v31 + 64);
          v37 = *(v31 + 72);

          sub_24A69F2C4(v31, type metadata accessor for FMIPDevice);
          v38 = sub_24A68761C(v36, v37, &v126);
          v8 = v107;

          *(v35 + 4) = v38;
          *(v35 + 12) = 2080;
          LOBYTE(aBlock) = v119;
          BYTE1(aBlock) = v118;
          BYTE2(aBlock) = v117;
          BYTE3(aBlock) = v102;
          v128 = v32;
          v129 = *&a5;
          v39 = FMIPLocation.debugDescription.getter();
          v41 = sub_24A68761C(v39, v40, &v126);

          *(v35 + 14) = v41;
          v42 = v103;
          _os_log_impl(&dword_24A675000, v103, v105, "FMIPManager: trimming realtime location for %s because of coarse location %s", v35, 0x16u);
          v43 = v104;
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v43, -1, -1);
          MEMORY[0x24C21E1D0](v35, -1, -1);
        }

        else
        {

          sub_24A69F2C4(v31, type metadata accessor for FMIPDevice);
        }

        v28 = v123;
        if (*(v26 + 3))
        {
          v63 = *(v26 + 2);
          v64 = *(v26 + 3);
        }

        else
        {
          v63 = *v26;
          v64 = *(v26 + 1);
        }

        v79 = sub_24A6A2D48(v63, v64);
        v81 = v80;

        if (v81)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v28;
          v14 = v115;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A78629C();
            v28 = aBlock;
          }

          v83 = *(v28[6] + 16 * v79 + 8);

          sub_24A7C46D4(v79, v28);
          sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
        }

        else
        {
          sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
          v14 = v115;
        }

        v9 = v116;
LABEL_44:
        v13 = 1;
        if (a1 != v27)
        {
          goto LABEL_5;
        }

        goto LABEL_48;
      }

      v107 = v8;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v44 = sub_24A82CDC4();
      sub_24A6797D0(v44, qword_281518F88);
      v45 = v109;
      sub_24A69F134(v26, v109, type metadata accessor for FMIPDevice);
      v46 = v121;
      v47 = sub_24A82CD94();
      v48 = sub_24A82D504();
      v104 = v46;

      v49 = os_log_type_enabled(v47, v48);
      v105 = BYTE3(v124);
      if (v49)
      {
        v50 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v126 = v103;
        *v50 = v108;
        v102 = v48;
        v51 = *(v45 + 64);
        v52 = *(v45 + 72);

        sub_24A69F2C4(v45, type metadata accessor for FMIPDevice);
        v53 = sub_24A68761C(v51, v52, &v126);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        LOBYTE(aBlock) = v119;
        BYTE1(aBlock) = v118;
        BYTE2(aBlock) = v117;
        BYTE3(aBlock) = v105;
        v54 = v104;
        v128 = v104;
        v129 = *&a5;
        v55 = FMIPLocation.debugDescription.getter();
        v57 = sub_24A68761C(v55, v56, &v126);

        *(v50 + 14) = v57;
        _os_log_impl(&dword_24A675000, v47, v102, "FMIPManager: using realtime location for %s. Location: %s", v50, 0x16u);
        v58 = v103;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v58, -1, -1);
        MEMORY[0x24C21E1D0](v50, -1, -1);

        v59 = v54;
        v60 = *(v26 + 3);
        if (v60)
        {
LABEL_20:
          v61 = *(v26 + 2);
          v62 = v60;
          goto LABEL_26;
        }
      }

      else
      {

        sub_24A69F2C4(v45, type metadata accessor for FMIPDevice);
        v59 = v104;
        v60 = *(v26 + 3);
        if (v60)
        {
          goto LABEL_20;
        }
      }

      v61 = *v26;
      v62 = *(v26 + 1);

LABEL_26:
      v103 = v59;

      v65 = v123;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v65;
      v104 = v61;
      v67 = sub_24A6A2D48(v61, v62);
      v69 = v65[2];
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        __break(1u);
        goto LABEL_56;
      }

      v73 = v68;
      if (v65[3] >= v72)
      {
        if ((v66 & 1) == 0)
        {
          v84 = v67;
          sub_24A78629C();
          v67 = v84;
          v9 = v116;
          if (v73)
          {
            goto LABEL_32;
          }

LABEL_41:
          v28 = aBlock;
          aBlock[(v67 >> 6) + 8] |= 1 << v67;
          v85 = (v28[6] + 16 * v67);
          *v85 = v104;
          v85[1] = v62;
          v86 = v28[7] + 24 * v67;
          v87 = v118;
          *v86 = v119;
          *(v86 + 1) = v87;
          *(v86 + 2) = v117;
          *(v86 + 3) = v105;
          *(v86 + 8) = v103;
          *(v86 + 16) = a5;
          sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
          v88 = v28[2];
          v71 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (!v71)
          {
            v28[2] = v89;
            goto LABEL_43;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_24A781610(v72, v66);
        v67 = sub_24A6A2D48(v104, v62);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_57;
        }
      }

      v9 = v116;
      if (v73)
      {
LABEL_32:
        v75 = v67;

        v76 = aBlock[7] + 24 * v75;
        v28 = aBlock;
        v77 = *(v76 + 8);
        v78 = v118;
        *v76 = v119;
        *(v76 + 1) = v78;
        *(v76 + 2) = v117;
        *(v76 + 3) = v105;
        *(v76 + 8) = v103;
        *(v76 + 16) = a5;

        sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
LABEL_43:
        v8 = v107;
        v14 = v115;
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
    ++v12;
  }

  while (a1 != v27);
  if ((v13 & 1) == 0)
  {
  }

  v28 = v123;
LABEL_48:

  v90 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v14;
  sub_24A752E10(v28, sub_24A74EB0C, 0, v90, &aBlock);
  swift_bridgeObjectRelease_n();
  v91 = aBlock;
  v92 = v112;
  v93 = *(*&v112[v111] + 184);

  v94 = sub_24A7556C0(v91, v93);

  v95 = v113;
  v96 = v114;
  if (v94)
  {
    v124 = *&v92[OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue];
    v97 = swift_allocObject();
    *(v97 + 16) = v125;
    *(v97 + 24) = v92;
    v131 = sub_24A75315C;
    v132 = v97;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_24A699BA0;
    v130 = &unk_285DC6790;
    v98 = _Block_copy(&aBlock);

    v99 = v122;
    sub_24A82CE24();
    v126 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v99, v96, v98);
    _Block_release(v98);
    (*(v9 + 8))(v96, v8);
    (v95[1])(v99, v106);
  }

  return result;
}

uint64_t sub_24A74CF68(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);

  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    type metadata accessor for FMIPDevice();
    v8 = sub_24A82D224();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPManager: devices changed after realtime location %@", v6, 0xCu);
    sub_24A67F378(v7, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v7, -1, -1);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  v9 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v11 + 32))(a2, v14, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74D184()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v72 - v4;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPManager: resetDataDependantControllers", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode);
  }

  if (qword_27EF5CBB8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EF5DEE8;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_24A82CFC4();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = sub_24A67A190(v13, v15, v10);

  v17 = v16 & ~v9;
  v18 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v19 = *(v18 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v20 = *(v18 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v21 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  *&v77[0] = *(v18 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v22 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v23 = sub_24A82CAE4();
  v24 = *(v23 - 8);
  v25 = v18 + v22;
  v26 = v73;
  (*(v24 + 16))(v73, v25, v23);
  (*(v24 + 56))(v26, 0, 1, v23);
  v27 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v28 = type metadata accessor for FMIPDataManager();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = sub_24A67CF18(v19, v20, v77, v26, v17 & 1, v9, v27);
  v32 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) = v31;

  v34 = *(v18 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  v33 = *(v18 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);

  v34(v77, v35);

  v36 = (v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController);
  swift_beginAccess();
  sub_24A6876E8(v36);
  sub_24A696E80(v77, v36);
  swift_endAccess();
  v37 = &unk_281514000;
  if (*(v18 + v21))
  {
    sub_24A698230(v36, v77);
    v40 = type metadata accessor for FMAPSConnectionHandler();
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v41 = qword_27EF78F30;
    v42 = *algn_27EF78F38;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v44 = sub_24A6987EC(0xD00000000000001ELL, 0x800000024A846B70, v41, 0, 0, v40, ObjectType, v42);
    v45 = type metadata accessor for FMIPRefreshingController();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_24A6991A4(v77, v44);
    v49 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = v48;

    v37 = &unk_281514000;
    v50 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
    sub_24A698230(v36, v77);
    sub_24A67E964(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, v76, &qword_27EF5D608, &qword_24A837E90);
    type metadata accessor for FMIPDeviceActionsController();
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    swift_allocObject();
    v39 = sub_24A6983D8(v50, v77, v76, v74);
  }

  else
  {
    v38 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
    *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = 0;

    v39 = 0;
  }

  v51 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController) = v39;

  v52 = *(v1 + v37[184]);
  sub_24A696E98(v77);
  v53 = type metadata accessor for FMIPBeaconRefreshingController(0);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = v52;
  v57 = sub_24A6972BC(v56, v77);
  v58 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
  v59 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) = v57;

  type metadata accessor for FMIPSafeLocationRefreshingController();
  v60 = swift_allocObject();
  v61 = sub_24A697EF4(v56, v60);
  v62 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController;
  v63 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) = v61;

  type metadata accessor for FMIPItemActionsController();
  swift_allocObject();

  v64 = sub_24A699828(v56, v31);
  v65 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController) = v64;

  *(v31 + 40) = &off_285DC5E58;
  swift_unknownObjectWeakAssign();
  sub_24A69A398();
  swift_beginAccess();
  v66 = v36[3];
  v67 = v36[4];
  sub_24A69A6C4(v36, v66);
  v68 = *(v67 + 16);
  v69 = swift_unknownObjectRetain();
  v68(v69, &off_285DC5E38, v66, v67);
  swift_endAccess();

  v70 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v70)
  {
    *(v70 + 40) = &off_285DC5D78;
    swift_unknownObjectWeakAssign();
  }

  *(*(v1 + v58) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = &off_285DC5DB8;
  swift_unknownObjectWeakAssign();
  *(*(v1 + v62) + 24) = &off_285DC5E28;
  return swift_unknownObjectWeakAssign();
}

void sub_24A74D8A0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v27 = sub_24A6A09FC;
  v28 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v18[3] = &v25;
  v25 = sub_24A699BA0;
  v26 = &unk_285DC6560;
  v11 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  v18[1] = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  v18[0] = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v5, v11);
  _Block_release(v11);
  v12 = *(v21 + 8);
  v21 += 8;
  v12(v5, v2);
  v13 = v19;
  v14 = *(v20 + 8);
  v20 += 8;
  v14(v10, v19);

  v27 = sub_24A6A04A0;
  v28 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_24A699BA0;
  v26 = &unk_285DC6588;
  v15 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v5, v15);
  _Block_release(v15);
  v12(v5, v2);
  v14(v10, v13);

  v16 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v17 = *(a1 + v16);
  *(a1 + v16) = 0;
  v22 = v17;
  sub_24A6ADCC4(&v22);
  FMIPManager.initialize()();
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) & 1) != 0 || *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) == 1)
  {
    v22 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    FMIPManager.startRefreshing(subsystems:)(&v22);
  }
}

size_t sub_24A74DDDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A6BBA94(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24A74DED8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A6BBA94(&qword_27EF5DF50, &qword_24A837168);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_24A74DF88(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_24A74DFC0(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_24A82DC44();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v3 + v5 + 16);
    v38[0] = *(v3 + v5);
    v38[1] = v6;
    v39 = *(v3 + v5 + 32);
    v7 = v38[0];
    v34 = v6;
    v8 = BYTE1(v6);
    v9 = BYTE2(v6);
    v10 = BYTE3(v6);
    v11 = v39;
    v12 = *(&v6 + 1);
    sub_24A67E964(v38, v37, &qword_27EF5EF70, &unk_24A835290);
    if (!*(&v7 + 1))
    {
      goto LABEL_18;
    }

    v32 = v8;
    v33 = v12;
    v38[0] = v7;
    v13 = *a3;
    v15 = sub_24A6A2D48(v7, *(&v7 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_24A78629C();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v23[6] + 16 * v15) = v7;
    v24 = v23[7] + 24 * v15;
    *v24 = v34 & 1;
    *(v24 + 1) = v32 & 1;
    *(v24 + 2) = v9 & 1;
    *(v24 + 3) = v10;
    *(v24 + 8) = v33;
    *(v24 + 16) = v11;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_21;
    }

    ++v4;
    v23[2] = v27;
    v5 += 40;
    a2 = 1;
    v3 = a1;
    if (v31 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_24A781610(v18, a2 & 1);
  v20 = *a3;
  v21 = sub_24A6A2D48(v7, *(&v7 + 1));
  if ((v19 & 1) != (v22 & 1))
  {
    goto LABEL_22;
  }

  v15 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](39, 0xE100000000000000);
  sub_24A82D934();
  __break(1u);
}

uint64_t sub_24A74E32C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPBeaconShare(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_24A69F134(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for FMIPBeaconShare);
      v25 = v24;
      v26 = v32;
      sub_24A6A2390(v25, v32, type metadata accessor for FMIPBeaconShare);
      sub_24A6A2390(v26, a2, type metadata accessor for FMIPBeaconShare);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24A74E590(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A74E600(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24A82CAA4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_24A74E8DC(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_24A82D704();
  sub_24A679170(0, a5, a6);
  sub_24A6AB7EC(a7, a5, a6);
  result = sub_24A82D414();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_24A82D784())
      {
        goto LABEL_30;
      }

      sub_24A679170(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

id sub_24A74EB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *(a1 + 19);
  v9 = a1[3];
  v7 = a1[4];
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = v4;
  *(a2 + 18) = v5;
  *(a2 + 19) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  *a2 = v3;
  *(a2 + 8) = v2;

  return v9;
}

uint64_t sub_24A74EB80(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPManager: beaconSharingController didUpdateSharingLimits", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  v9 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13[0] = v3;
    v13[1] = v4;
    (*(v11 + 192))(v2, v13, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74ECD8(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: beaconSharingController didUpdateShares", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_24A74DDDC(v11, 0, &qword_27EF5DF88, &unk_24A8371B0, type metadata accessor for FMIPBeaconShare);
      v13 = *(type metadata accessor for FMIPBeaconShare(0) - 8);
      v14 = sub_24A74E32C(&v16, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, a1);

      result = sub_24A6BAFBC();
      if (v14 != v11)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    ObjectType = swift_getObjectType();
    (*(v10 + 184))(v2, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74EF8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A6CADE0;

  return sub_24A73A174();
}

uint64_t sub_24A74F050()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A6CADE0;

  return sub_24A73AF10();
}

uint64_t sub_24A74F11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A73DBE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24A74F1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v3 = *(v2 + 120);
  v5 = *(v2 + 152);
  v11 = *(v2 + 136);
  v4 = v11;
  v12 = v5;
  v13 = *(v2 + 168);
  v6 = v13;
  v7 = *(v2 + 104);
  v10[0] = *(v2 + 88);
  v10[1] = v7;
  v10[2] = v3;
  *a1 = v10[0];
  *(a1 + 16) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  return sub_24A67E964(v10, v9, &qword_27EF5DEF8, &unk_24A836D40);
}

uint64_t sub_24A74F290(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_24A74F2E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 != 0);
}

unint64_t sub_24A74F318()
{
  result = qword_27EF5DF10;
  if (!qword_27EF5DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF10);
  }

  return result;
}

unint64_t sub_24A74F370()
{
  result = qword_27EF5DF18;
  if (!qword_27EF5DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF18);
  }

  return result;
}

unint64_t sub_24A74F3C8()
{
  result = qword_27EF5DF20;
  if (!qword_27EF5DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF20);
  }

  return result;
}

unint64_t sub_24A74F420()
{
  result = qword_27EF5DF28;
  if (!qword_27EF5DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF28);
  }

  return result;
}

uint64_t sub_24A74F474@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_24A74F510()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: garbageCollectorDidPurgeAccountRelatedFiles", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  sub_24A74D184();
  v16 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  aBlock[4] = sub_24A752D90;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6538;
  v17 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v11, v17);
  _Block_release(v17);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_24A74F7E0()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager: willTriggerLastLocationPrompt", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v8[4] = sub_24A753B80;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A7FD664;
  v8[3] = &unk_285DC6D08;
  v7 = _Block_copy(v8);

  [v6 lowBatteryLocateEnabledWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_24A74F980(void *a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = a1;
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v10;
    v18 = v17;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v18 = 136315138;
    aBlock[6] = a1;
    v19 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v20 = sub_24A82D024();
    v41 = v16;
    v22 = a1;
    v23 = v8;
    v24 = v2;
    v25 = v9;
    v26 = v5;
    v27 = v4;
    v28 = sub_24A68761C(v20, v21, aBlock);

    *(v18 + 4) = v28;
    v4 = v27;
    v5 = v26;
    v9 = v25;
    v2 = v24;
    v8 = v23;
    a1 = v22;
    _os_log_impl(&dword_24A675000, v15, v41, "FMIPManager: initializationDidFail %s", v18, 0xCu);
    v29 = v42;
    sub_24A6876E8(v42);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    v30 = v18;
    v10 = v43;
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  v31 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 24))(v2, a1, ObjectType, v33);
    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v35 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    v36 = v44;
    sub_24A82CDE4();
    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    *(v37 + 24) = a1;
    aBlock[4] = sub_24A753C60;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6F60;
    v38 = _Block_copy(aBlock);
    v39 = a1;

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v8, v36, v38);
    _Block_release(v38);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v36, v9);
  }

  return result;
}

uint64_t sub_24A74FDAC()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: didInitialize", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  aBlock[4] = sub_24A753C00;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6F10;
  v17 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v11, v17);
  _Block_release(v17);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);

  v18 = v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v20 + 8))(v1, v22[1], ObjectType, v20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v8;
    v18 = v2;
    v19 = v10;
    v20 = v5;
    v21 = v9;
    v22 = a1;
    v23 = v4;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didReceiveDevices", v17, 2u);
    v25 = v24;
    v4 = v23;
    a1 = v22;
    v9 = v21;
    v5 = v20;
    v10 = v19;
    v2 = v18;
    v8 = v33;
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  if (*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) + 16))
  {
    v26 = *(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) + 16);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v27 = sub_24A6A1BA4(a1, v26);

  v28 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v27;
  aBlock[4] = sub_24A753B88;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6D58;
  v30 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v13, v30);
  _Block_release(v30);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_24A750480(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v30 = sub_24A82CE54();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v35 = a1[2];
  v36 = v14;
  v37 = a1[4];
  v38 = *(a1 + 10);
  v15 = a1[1];
  v33 = *a1;
  v34 = v15;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = v3;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPManager: didReceiveUserInfos", v19, 2u);
    v3 = v28;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  v21 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  v22 = v29;
  sub_24A82CDE4();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = a2;
  v24 = v36;
  *(v23 + 64) = v35;
  *(v23 + 80) = v24;
  *(v23 + 96) = v37;
  *(v23 + 112) = v38;
  v25 = v34;
  *(v23 + 32) = v33;
  *(v23 + 48) = v25;
  aBlock[4] = sub_24A753B50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6BF0;
  v26 = _Block_copy(aBlock);

  sub_24A6EF948(&v33, v31);
  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v9, v22, v26);
  _Block_release(v26);
  (*(v6 + 8))(v9, v30);
  (*(v11 + 8))(v22, v10);
}

uint64_t sub_24A7507F8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didUpdateRangingParameters", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = v3;
    (*(v10 + 160))(v2, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = v7[2];
  v42 = a1;
  v15(v13, a1, v6);
  v15(v11, a2, v6);
  swift_bridgeObjectRetain_n();
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a2;
    v19 = v18;
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v19 = 136315650;
    v20 = sub_24A82C944();
    v41 = a3;
    v22 = v21;
    v23 = v7[1];
    v23(v13, v6);
    v24 = sub_24A68761C(v20, v22, v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_24A82C944();
    v27 = v26;
    v23(v11, v6);
    v28 = sub_24A68761C(v25, v27, v44);
    a3 = v41;

    *(v19 + 14) = v28;
    *(v19 + 22) = 2048;
    v29 = *(a3 + 16);

    *(v19 + 24) = v29;

    _os_log_impl(&dword_24A675000, v16, v17, "FMIPManager: didRefresh startDate: %s, endDate: %s, tapContext: %ld", v19, 0x20u);
    v30 = v39;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v31 = v19;
    a2 = v40;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v32 = v7[1];
    v32(v11, v6);
    v32(v13, v6);
  }

  v33 = v43;
  v34 = v43 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v36 = v42;
  if (result)
  {
    v37 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    (*(v37 + 80))(v33, v36, a2, a3, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750CF8(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_24A82CF14();
    v11 = sub_24A68761C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didReceive beacon locations %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter);

  sub_24A6B0DD8(a1, sub_24A7512D4, v2);
}

uint64_t sub_24A750EB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v9;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_24A82CAA4();
    type metadata accessor for FMIPDeviceConnectedState(0);
    v32 = v5;
    v20 = v4;
    sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0]);
    v21 = sub_24A82CF04();
    v23 = sub_24A68761C(v21, v22, aBlock);

    *(v17 + 4) = v23;
    v4 = v20;
    v5 = v32;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: didReceive deviceConnectedStates: %s", v17, 0xCu);
    sub_24A6876E8(v19);
    v24 = v19;
    v9 = v30;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    v25 = v17;
    v2 = v31;
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = a1;
  aBlock[4] = sub_24A751288;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC5F70;
  v28 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v12, v28);
  _Block_release(v28);
  (*(v5 + 8))(v8, v4);
  (*(v33 + 8))(v12, v9);
}

void sub_24A75131C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) == 1 && (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) & 1) == 0)
  {
    v3 = *(v1 + 24);
    *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) = 1;
    sub_24A73D388(v3, 0);
  }
}

uint64_t sub_24A751378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7513DC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24A82CE54();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v16;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v16 = 136315138;
    sub_24A82CAA4();
    v31 = v14;
    sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0]);
    v17 = sub_24A82CF04();
    v19 = sub_24A68761C(v17, v18, aBlock);
    v29 = v15;
    v20 = v19;

    v21 = v30;
    *(v30 + 1) = v20;
    v22 = v31;
    _os_log_impl(&dword_24A675000, v31, v29, "FMIPManager: didReceive beaconTypes: %s", v21, 0xCu);
    v23 = v32;
    sub_24A6876E8(v32);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  else
  {
  }

  v24 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a1;
  aBlock[4] = sub_24A752D34;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC62E0;
  v26 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v7, v12, v26);
  _Block_release(v26);
  (*(v4 + 8))(v7, v33);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_24A7517CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_24A752CE8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6268;
  v16 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v13, v16);
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_24A751A34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v6 = v5;
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CDF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_281518F88);

  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = v9;
    v24 = v13;
    v25 = v23;
    *v22 = 138412290;
    type metadata accessor for FMIPItem();
    v26 = sub_24A82D224();
    *(v22 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_24A675000, v19, v20, v35, v22, 0xCu);
    sub_24A67F378(v25, &qword_27EF5D010, &qword_24A830E30);
    v27 = v25;
    v13 = v24;
    v9 = v33;
    MEMORY[0x24C21E1D0](v27, -1, -1);
    v28 = v22;
    v8 = v34;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v29 = *(v6 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  *(v30 + 24) = a1;
  aBlock[4] = v37;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v38;
  v31 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v12, v17, v31);
  _Block_release(v31);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_24A751D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = a2;
    v21 = a3;
    v22 = v20;
    *v19 = 138412290;
    type metadata accessor for FMIPUnknownItem();
    v23 = sub_24A82D224();
    *(v19 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPManager: didReceive unknownItems %@", v19, 0xCu);
    sub_24A67F378(v22, &qword_27EF5D010, &qword_24A830E30);
    v24 = v22;
    a3 = v21;
    a2 = v30;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  v25 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_unknownItemQueue);
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = v4;
  v26[4] = a2;
  v26[5] = a3;
  aBlock[4] = sub_24A753A20;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6A60;
  v27 = _Block_copy(aBlock);

  sub_24A6A7314(a2);
  sub_24A82CE24();
  v34 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v27);
  _Block_release(v27);
  (*(v33 + 8))(v11, v8);
  (*(v31 + 8))(v15, v32);
}

uint64_t sub_24A7521A8(char *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v17 = 136315138;
    LOBYTE(v35) = v13;
    v18 = sub_24A82D024();
    v32 = v5;
    v20 = v12;
    v21 = v8;
    v22 = v4;
    v23 = v2;
    v24 = sub_24A68761C(v18, v19, aBlock);
    v5 = v32;

    *(v17 + 4) = v24;
    v2 = v23;
    v4 = v22;
    v8 = v21;
    v12 = v20;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didReceive separation monitoring state: %s", v17, 0xCu);
    v25 = v31;
    sub_24A6876E8(v31);
    MEMORY[0x24C21E1D0](v25, -1, -1);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v13;
  aBlock[4] = sub_24A7525B4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC60D8;
  v28 = _Block_copy(aBlock);

  sub_24A82CE24();
  v35 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v8, v28);
  _Block_release(v28);
  (*(v5 + 8))(v8, v4);
  (*(v33 + 8))(v12, v34);
}

void sub_24A7525E0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    LOBYTE(v29) = v11;
    v17 = sub_24A82D024();
    v25 = v7;
    v19 = v2;
    v20 = sub_24A68761C(v17, v18, aBlock);
    v7 = v25;

    *(v15 + 4) = v20;
    v2 = v19;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: didReceive clientConfiguration: %{public}s", v15, 0xCu);
    sub_24A6876E8(v16);
    MEMORY[0x24C21E1D0](v16, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  if (v11)
  {
    v21 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = sub_24A753BE8;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6DA8;
    v22 = _Block_copy(aBlock);

    v23 = v27;
    sub_24A82CE24();
    v29 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v23, v7, v22);
    _Block_release(v22);
    (*(v26 + 8))(v7, v4);
    (*(v28 + 8))(v23, v8);
  }
}

uint64_t sub_24A7529CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v10;
    v18 = v2;
    v19 = v5;
    v20 = a1;
    v21 = v9;
    v22 = v4;
    v23 = v17;
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: dataManager updated items group", v17, 2u);
    v24 = v23;
    v4 = v22;
    v9 = v21;
    a1 = v20;
    v5 = v19;
    v2 = v18;
    v10 = v30;
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v2;
  aBlock[4] = sub_24A753BF0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6DF8;
  v27 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v13, v27);
  _Block_release(v27);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_24A752DB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A752E10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v49 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v50 = v10;
  v51 = v6;
  while (1)
  {
    v14 = v9;
    v15 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(a1 + 56) + 24 * v17;
    LOBYTE(v18) = *v21;
    v22 = *(v21 + 1);
    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = *(v21 + 8);
    v26 = *(v21 + 16);
    *&v60 = v20;
    *(&v60 + 1) = v19;
    LOBYTE(v61) = v18;
    BYTE1(v61) = v22;
    BYTE2(v61) = v23;
    BYTE3(v61) = v24;
    *(&v61 + 1) = v25;
    v62 = v26;

    v27 = v25;
    a2(&v65, &v60);
    v63[0] = v60;
    v63[1] = v61;
    v64 = v62;
    sub_24A67F378(v63, &qword_27EF5DF40, &qword_24A837160);
    v28 = v66;
    if (!v66)
    {
LABEL_22:
      sub_24A6BAFBC();
    }

    v29 = v65;
    v30 = v67;
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v58 = v71;
    v31 = v72;
    v32 = *a5;
    v34 = sub_24A6A2D48(v65, v66);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_24A78629C();
      }
    }

    else
    {
      sub_24A781610(v37, a4 & 1);
      v39 = *a5;
      v40 = sub_24A6A2D48(v29, v28);
      if ((v38 & 1) != (v41 & 1))
      {
        goto LABEL_26;
      }

      v34 = v40;
    }

    v54 = (v14 - 1) & v14;
    v42 = *a5;
    if (v38)
    {

      v12 = v42[7] + 24 * v34;
      v13 = *(v12 + 8);
      *v12 = v30;
      *(v12 + 1) = v55;
      *(v12 + 2) = v56;
      *(v12 + 3) = v57;
      *(v12 + 8) = v58;
      *(v12 + 16) = v31;
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v28;
      v44 = v42[7] + 24 * v34;
      *v44 = v30;
      *(v44 + 1) = v55;
      *(v44 + 2) = v56;
      *(v44 + 3) = v57;
      *(v44 + 8) = v58;
      *(v44 + 16) = v31;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v11 = v15;
    v10 = v50;
    v6 = v51;
    v9 = v54;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A7531F4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v89 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 112);

  v13 = *(v0 + v3 + 128);

  v14 = *(v0 + v3 + 144);

  v15 = *(v0 + v3 + 160);

  v16 = *(v0 + v3 + 176);

  v17 = *(v0 + v3 + 224);

  v18 = *(v0 + v3 + 232);

  v19 = *(v0 + v3 + 248);

  if (*(v0 + v3 + 472))
  {
    v20 = *(v5 + 39);

    v21 = *(v5 + 40);

    v22 = *(v5 + 42);

    v23 = *(v5 + 44);

    v24 = *(v5 + 46);

    v25 = *(v5 + 48);

    v26 = *(v5 + 50);

    v27 = *(v5 + 52);

    v28 = *(v5 + 54);

    v29 = *(v5 + 56);

    v30 = *(v5 + 58);

    v31 = *(v5 + 59);

    v32 = *(v5 + 61);

    v33 = *(v5 + 63);

    v34 = *(v5 + 65);

    v35 = *(v5 + 67);

    v36 = *(v5 + 69);

    v37 = *(v5 + 71);

    v38 = *(v5 + 73);
  }

  v39 = &v5[v1[28]];
  v40 = type metadata accessor for FMIPPlaySoundMetadata();
  if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
  {
    v41 = v40[5];
    v42 = sub_24A82CA34();
    (*(*(v42 - 8) + 8))(&v39[v41], v42);
    v43 = *&v39[v40[6] + 8];

    v44 = *&v39[v40[7] + 8];

    v45 = *&v39[v40[8] + 8];

    v46 = *&v39[v40[9] + 8];
  }

  v47 = &v5[v1[29]];
  v48 = type metadata accessor for FMIPDeviceLostModeMetadata();
  if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    v49 = *(v47 + 2);

    v50 = *(v47 + 4);

    v51 = *(v47 + 6);

    v52 = *(v48 + 48);
    v53 = sub_24A82CA34();
    (*(*(v53 - 8) + 8))(&v47[v52], v53);
  }

  v54 = &v5[v1[30]];
  v55 = type metadata accessor for FMIPLockMetadata();
  if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
  {
    v56 = *(v55 + 20);
    v57 = sub_24A82CA34();
    (*(*(v57 - 8) + 8))(&v54[v56], v57);
  }

  v58 = &v5[v1[31]];
  v59 = type metadata accessor for FMIPEraseMetadata();
  if (!(*(*(v59 - 1) + 48))(v58, 1, v59))
  {
    v60 = v59[5];
    v61 = sub_24A82CA34();
    (*(*(v61 - 8) + 8))(&v58[v60], v61);
    v62 = *&v58[v59[6] + 8];

    v63 = *&v58[v59[7] + 8];
  }

  v64 = &v5[v1[32]];
  v65 = type metadata accessor for FMIPItemGroup();
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v66 = *(v64 + 2);

    v67 = *(v64 + 4);

    v68 = *(v64 + 5);

    v69 = *(v64 + 6);

    v70 = *(v64 + 7);

    v71 = *(v64 + 9);

    v72 = &v64[*(v65 + 48)];
    v73 = type metadata accessor for FMIPItemLostModeMetadata();
    if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
    {
      v74 = *(v72 + 1);

      v75 = *(v72 + 3);

      v76 = *(v73 + 24);
      v77 = sub_24A82CA34();
      (*(*(v77 - 8) + 8))(&v72[v76], v77);
      v78 = *&v72[*(v73 + 28) + 8];
    }

    v79 = *&v64[*(v65 + 52)];
  }

  v80 = *&v5[v1[37] + 8];

  v81 = v1[39];
  v82 = sub_24A82CA34();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (!v84(&v5[v81], 1, v82))
  {
    (*(v83 + 8))(&v5[v81], v82);
  }

  v85 = v1[40];
  if (!v84(&v5[v85], 1, v82))
  {
    (*(v83 + 8))(&v5[v85], v82);
  }

  v86 = v1[41];
  if (!v84(&v5[v86], 1, v82))
  {
    (*(v83 + 8))(&v5[v86], v82);
  }

  v87 = v1[42];
  if (!v84(&v5[v87], 1, v82))
  {
    (*(v83 + 8))(&v5[v87], v82);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v89, v2 | 7);
}

uint64_t sub_24A753910(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_24A753990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A753A2C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A748D68(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_24A753AEC(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[3];

  if (v1[4])
  {
    v3 = v1[5];
  }

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_24A753C08(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

void sub_24A753C60()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_24A73B840(MEMORY[0x277D84F90], v1);
}

unint64_t sub_24A753CAC()
{
  result = qword_27EF5DF90;
  if (!qword_27EF5DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF90);
  }

  return result;
}

unint64_t FMDemoManager.DemoContext.assetFilename.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

unint64_t FMDemoManager.DemoContext.userDefaultsKey.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t FMDemoManager.DemoContext.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7540E8()
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

uint64_t sub_24A754154()
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

void sub_24A7541B0()
{
  type metadata accessor for FMDemoManager();
  v4 = 0;
  v0 = 0;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v1 = objc_opt_self();
    v2 = sub_24A82CF94();
    v3 = sub_24A82CF94();
    v0 = [v1 BOOLForKey:v2 inDomain:v3];
  }

  byte_27EF5DF98 = v0;
}

id static FMDemoManager.hasDemoModeUserDefault(for:)(_BYTE *a1)
{
  *a1;
  *a1;
  v1 = objc_opt_self();
  v2 = sub_24A82CF94();

  v3 = sub_24A82CF94();
  v4 = [v1 BOOLForKey:v2 inDomain:v3];

  return v4;
}

unint64_t sub_24A754394()
{
  result = qword_281515A90;
  if (!qword_281515A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515A90);
  }

  return result;
}

unint64_t sub_24A754404()
{
  result = qword_27EF5DFA0;
  if (!qword_27EF5DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFA0);
  }

  return result;
}

unint64_t sub_24A754494()
{
  result = qword_27EF5DFA8;
  if (!qword_27EF5DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFA8);
  }

  return result;
}

uint64_t sub_24A754538(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMIPItemGroup();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_24A68FE04(a3 + v16 + v17 * v14, v13, type metadata accessor for FMIPItemGroup);
      v18 = a1(v13);
      if (v3)
      {
        sub_24A69004C(v13, type metadata accessor for FMIPItemGroup);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_24A68D628(v13, v25, type metadata accessor for FMIPItemGroup);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A6FCB74(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24A6FCB74(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_24A68D628(v25, v15 + v16 + v21 * v17, type metadata accessor for FMIPItemGroup);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_24A69004C(v13, type metadata accessor for FMIPItemGroup);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_24A7547C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v13 = *(type metadata accessor for FMIPItemGroup() - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      result = sub_24A68FE04(v14, v8 + v15, type metadata accessor for FMIPItemGroup);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_24A67E8FC(v8, a1, &unk_27EF5E120, &qword_24A837768);
        return (*(v18 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_24A7549B4()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_24A78A97C(MEMORY[0x277D84F90]);
  v2 = sub_24A78AB64(v0);
  v3 = sub_24A78AB88(v0);
  result = sub_24A78AB88(v0);
  *&xmmword_27EF5DFB0 = v0;
  *(&xmmword_27EF5DFB0 + 1) = v1;
  qword_27EF5DFC0 = v2;
  unk_27EF5DFC8 = v3;
  qword_27EF5DFD0 = result;
  return result;
}

uint64_t sub_24A754A20(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5E058, &unk_24A837720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A76E6B4();
  sub_24A82DD84();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  sub_24A76E990(&qword_27EF5E060, sub_24A76EA08);
  sub_24A82DB44();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_24A6BBA94(&qword_27EF5E008, &unk_24A837700);
    sub_24A76EA5C();
    sub_24A82DB44();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_24A6BBA94(&qword_27EF5E030, &qword_24A837710);
    sub_24A76EB18();
    sub_24A82DB44();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_24A6BBA94(&qword_27EF5E048, &qword_24A837718);
    sub_24A76EC28();
    sub_24A82DB44();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24A754CF0()
{
  v1 = *v0;
  v2 = 0x61636F4C65666173;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A754D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A76E0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A754DC4(uint64_t a1)
{
  v2 = sub_24A76E6B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A754E00(uint64_t a1)
{
  v2 = sub_24A76E6B4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A754E3C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A76E290(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_24A754E84(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_24A754A20(a1);
}

uint64_t sub_24A754EC0()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v55 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v55);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDataManager<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A6BAF88(v1 + 32);
  v20 = *(v1 + 56);

  v21 = *(v1 + 80);

  v22 = *(v1 + 104);
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  v25 = *(v1 + 128);
  v26 = *(v1 + 136);
  v27 = *(v1 + 144);
  v54 = *(v1 + 168);
  v53 = *(v1 + 152);
  sub_24A76F7D8(*(v1 + 88), *(v1 + 96));
  v28 = *(v1 + 176);

  v29 = *(v1 + 184);

  v30 = *(v1 + 192);

  v31 = *(v1 + 200);

  v32 = *(v1 + 208);

  v33 = *(v1 + 216);

  v34 = *(v1 + 224);

  v35 = *(v1 + 232);

  v36 = *(v1 + 240);

  v37 = *(v1 + 248);

  v38 = *(v1 + 256);

  v39 = *(v1 + 264);

  v40 = *(v1 + 272);

  v41 = *(v1 + 280);

  v42 = *(v1 + 288);

  v43 = *(v1 + 296);

  v44 = *(v1 + 304);

  v45 = *(v1 + 312);

  v46 = *(v1 + 320);

  v47 = *(v1 + 328);

  v48 = *(v1 + 336);

  v49 = *(v1 + 344);

  v50 = *(v1 + 352);

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale, &qword_27EF5E930, &unk_24A8343F0);
  v51 = *(v1 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache);

  return v1;
}

uint64_t sub_24A7551A8()
{
  sub_24A754EC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL sub_24A755208(uint64_t a1)
{
  v3 = *(v1 + 176);

  v4 = sub_24A7D9750(a1, v3);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 176);
    *(v1 + 176) = a1;

    if (*(v1 + 24) == 1)
    {
      if (*(v1 + 336))
      {

        sub_24A761CE4(a1, &unk_285DC75F8, sub_24A76F570, &unk_285DC7610);
      }
    }
  }

  return (v4 & 1) == 0;
}

uint64_t sub_24A7552C8(uint64_t *a1)
{
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 1);
  v65 = *(a1 + 2);
  v66 = v3;
  v67 = v4;
  v68 = a1[10];
  v64[0] = *a1;
  v64[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v73 = v68;
  v71 = v3;
  v72 = v4;
  v69 = v5;
  v70 = v65;
  v75 = *(v1 + 168);
  v8 = *(v1 + 152);
  v9 = *(v1 + 120);
  v74[3] = *(v1 + 136);
  v74[4] = v8;
  v10 = *(v1 + 104);
  v74[0] = *(v1 + 88);
  v74[1] = v10;
  v74[2] = v9;
  v11 = v74[0];
  v12 = *(v1 + 120);
  v13 = *(v1 + 152);
  v61 = *(v1 + 136);
  v62 = v13;
  v63 = *(v1 + 168);
  v59 = *(v1 + 104);
  v60 = v12;
  if (v7)
  {
    *&v47 = v6;
    *(&v47 + 1) = v7;
    v14 = *(a1 + 4);
    v50 = *(a1 + 3);
    v51 = v14;
    v52 = a1[10];
    v15 = *(a1 + 2);
    v48 = *(a1 + 1);
    v49 = v15;
    v43 = v15;
    v44 = v50;
    v45 = v14;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    if (*(&v74[0] + 1))
    {
      v16 = *(v1 + 120);
      v17 = *(v1 + 152);
      v38 = *(v1 + 136);
      v39 = v17;
      v40 = *(v1 + 168);
      v36 = *(v1 + 104);
      v37 = v16;
      v35 = v74[0];
      sub_24A6EF948(v64, v33);
      sub_24A67E964(v74, v33, &qword_27EF5DEF8, &unk_24A836D40);
      sub_24A67E964(&v47, v33, &qword_27EF5DEF8, &unk_24A836D40);
      v18 = _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(&v41, &v35);
      v31[2] = v37;
      v31[3] = v38;
      v31[4] = v39;
      v32 = v40;
      v31[0] = v35;
      v31[1] = v36;
      sub_24A6EF9B4(v31);
      v33[2] = v43;
      v33[3] = v44;
      v33[4] = v45;
      v34 = v46;
      v33[0] = v41;
      v33[1] = v42;
      sub_24A6EF9B4(v33);
      *&v35 = v6;
      *(&v35 + 1) = v7;
      v19 = *(a1 + 4);
      v38 = *(a1 + 3);
      v39 = v19;
      v40 = a1[10];
      v20 = *(a1 + 2);
      v36 = *(a1 + 1);
      v37 = v20;
      sub_24A67F378(&v35, &qword_27EF5DEF8, &unk_24A836D40);
      if (v18)
      {
        return 0;
      }

      goto LABEL_9;
    }

    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v35 = v47;
    v36 = v48;
    sub_24A6EF948(v64, v33);
    sub_24A67E964(v74, v33, &qword_27EF5DEF8, &unk_24A836D40);
    sub_24A67E964(&v47, v33, &qword_27EF5DEF8, &unk_24A836D40);
    sub_24A6EF9B4(&v35);
  }

  else
  {
    if (!*(&v74[0] + 1))
    {
      v47 = v6;
      v29 = *(a1 + 4);
      v50 = *(a1 + 3);
      v51 = v29;
      v52 = a1[10];
      v30 = *(a1 + 2);
      v48 = *(a1 + 1);
      v49 = v30;
      sub_24A6EF948(v64, &v41);
      sub_24A67E964(v74, &v41, &qword_27EF5DEF8, &unk_24A836D40);
      sub_24A67F378(&v47, &qword_27EF5DEF8, &unk_24A836D40);
      return 0;
    }

    sub_24A6EF948(v64, &v47);
    sub_24A67E964(v74, &v47, &qword_27EF5DEF8, &unk_24A836D40);
  }

  *&v47 = v6;
  *(&v47 + 1) = v7;
  v22 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v22;
  v23 = a1[10];
  v24 = *(a1 + 2);
  v48 = *(a1 + 1);
  v49 = v24;
  v52 = v23;
  v53 = v11;
  v54 = v59;
  v58 = v63;
  v57 = v62;
  v56 = v61;
  v55 = v60;
  sub_24A67F378(&v47, &qword_27EF5E230, &qword_24A837828);
LABEL_9:
  v25 = *(v1 + 136);
  v49 = *(v1 + 120);
  v50 = v25;
  v51 = *(v1 + 152);
  v26 = *(v1 + 104);
  v47 = *(v1 + 88);
  v48 = v26;
  v27 = v69;
  *(v1 + 120) = v70;
  v28 = v72;
  *(v1 + 136) = v71;
  *(v1 + 104) = v27;
  v52 = *(v1 + 168);
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 168) = v73;
  *(v1 + 152) = v28;
  sub_24A6EF948(v64, &v41);
  sub_24A67F378(&v47, &qword_27EF5DEF8, &unk_24A836D40);
  if (*(v1 + 24) == 1)
  {
    if (*(v1 + 344))
    {

      sub_24A7620CC(v64);
    }
  }

  return 1;
}

uint64_t sub_24A7556C0(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 192);

  sub_24A7B5CFC(a1, v6);
  v8 = v7;

  if (v8)
  {
    v9 = *(v3 + 184);

    sub_24A7B5CFC(a2, v9);
    v11 = v10;

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(v3 + 192);
  *(v3 + 192) = a1;

  v14 = *(v3 + 184);
  *(v3 + 184) = a2;

  v15 = *(v3 + 288);
  swift_beginAccess();
  v16 = *(v3 + 280);

  v17 = sub_24A76CC38(v15, v16);

  v18 = *(v3 + 288);
  *(v3 + 288) = v17;

  swift_beginAccess();
  v19 = *(v3 + 80);

  v21 = sub_24A758EF8(v20);

  v22 = *(v3 + 80);
  *(v3 + 80) = v21;

  v23 = *(v3 + 80);

  v25 = sub_24A7690FC(v24, a1);

  v26 = *(v3 + 80);
  *(v3 + 80) = v25;

  v27 = *(v3 + 80);

  v29 = sub_24A7580CC(v28);

  v30 = *(v3 + 80);
  *(v3 + 80) = v29;

  v31 = *(v3 + 80);
  v32 = *(v3 + 200);

  v33 = sub_24A769874(v31, v32);

  v34 = *(v3 + 80);
  *(v3 + 80) = v33;

  v35 = *(v3 + 80);
  v36 = *(v3 + 216);

  v37 = sub_24A76A0B0(v35, v36);

  v38 = *(v3 + 80);
  *(v3 + 80) = v37;

  v39 = *(v3 + 80);
  v40 = *(v3 + 224);

  v41 = sub_24A76A8F4(v39, v40);

  v42 = *(v3 + 80);
  *(v3 + 80) = v41;

  v43 = *(v3 + 80);
  v44 = *(v3 + 232);

  v45 = sub_24A76B138(v43, v44);

  v46 = *(v3 + 80);
  *(v3 + 80) = v45;

  v47 = *(v3 + 80);
  v48 = *(v3 + 208);

  v49 = sub_24A76B96C(v47, v48);

  v50 = *(v3 + 80);
  *(v3 + 80) = v49;

  v51 = *(v3 + 80);
  v52 = *(v3 + 304);

  v53 = sub_24A76C298(v51, v52);

  v54 = *(v3 + 80);
  *(v3 + 80) = v53;

  v55 = *(v3 + 16);
  if ((v55 & 1) != 0 && *(v3 + 24) == 1 && *(v3 + 328))
  {
    v56 = *(v3 + 80);
    v57 = *(v3 + 328);

    sub_24A761CE4(v58, &unk_285DC7558, sub_24A76F410, &unk_285DC7570);
  }

  v59 = *(v3 + 280);

  v61 = sub_24A76CED0(v60, a1, a2);

  v62 = *(v3 + 280);
  *(v3 + 280) = v61;

  v63 = *(v3 + 280);

  v65 = sub_24A75B108(v64);

  v66 = *(v3 + 280);
  *(v3 + 280) = v65;

  if ((v55 & 2) != 0 && *(v3 + 24) == 1)
  {
    if (*(v3 + 312))
    {
      v67 = *(v3 + 280);
      v68 = *(v3 + 312);

      sub_24A761CE4(v69, &unk_285DC74B8, sub_24A76F33C, &unk_285DC74D0);
    }
  }

  sub_24A75CD68(a1, a2);
  return 1;
}

BOOL sub_24A755B4C(uint64_t a1)
{
  v3 = *(v1 + 304);

  v4 = sub_24A7B7274(a1, v3);

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    v5 = *(v1 + 80);

    v7 = sub_24A76C298(v6, a1);

    v8 = *(v1 + 80);
    *(v1 + 80) = v7;

    v9 = *(v1 + 304);
    *(v1 + 304) = a1;
  }

  return (v4 & 1) == 0;
}

BOOL sub_24A755C0C(uint64_t a1)
{
  v3 = *(v1 + 232);

  v4 = sub_24A7B7250(a1, v3);

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    v5 = *(v1 + 80);

    v7 = sub_24A76B138(v6, a1);

    v8 = *(v1 + 80);
    *(v1 + 80) = v7;

    v9 = *(v1 + 232);
    *(v1 + 232) = a1;
  }

  return (v4 & 1) == 0;
}

BOOL sub_24A755CCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 208);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v4;
  sub_24A76DCB0(a1, sub_24A766CFC, 0, isUniquelyReferenced_nonNull_native, v23);

  v6 = v23[0];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    type metadata accessor for FMIPDeviceConnectedState(0);
    sub_24A67F008(&qword_281514670, MEMORY[0x277CC95F0]);
    v12 = sub_24A82CF04();
    v14 = sub_24A68761C(v12, v13, v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPManager: updating merged deviceConnectedStates: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = *(v2 + 208);

  v16 = sub_24A7B64A8(v6, v15);

  if (v16)
  {
  }

  else
  {
    swift_beginAccess();
    v17 = *(v2 + 80);

    v19 = sub_24A76B96C(v18, v6);

    v20 = *(v2 + 80);
    *(v2 + 80) = v19;

    v21 = *(v2 + 208);
    *(v2 + 208) = v6;
  }

  return (v16 & 1) == 0;
}

uint64_t sub_24A755F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 256);

  v10 = sub_24A7B7970(a1, v9);

  if (v10)
  {
    v11 = *(v4 + 264);

    v12 = sub_24A7B6DF0(a2, v11);

    if (v12)
    {
      v13 = *(v4 + 272);

      v14 = sub_24A7B6DF0(a3, v13);

      if (v14)
      {
        v15 = *(v4 + 248);

        v16 = sub_24A7B7DD4(a4, v15);

        if (v16)
        {
          return 0;
        }
      }
    }
  }

  v18 = *(v4 + 256);
  *(v4 + 256) = a1;

  v19 = *(v4 + 264);
  *(v4 + 264) = a2;

  v20 = *(v4 + 248);
  *(v4 + 248) = a4;

  v21 = *(v4 + 272);
  *(v4 + 272) = a3;

  if (*(v4 + 24) == 1)
  {
    if (*(v4 + 352))
    {
      v22 = *(v4 + 248);
      v23 = *(v4 + 256);
      v24 = *(v4 + 264);
      v25 = *(v4 + 272);
      v26[0] = *(v4 + 240);
      v26[1] = v22;
      v26[2] = v23;
      v26[3] = v24;
      v26[4] = v25;

      sub_24A76187C(v26);
    }
  }

  return 1;
}

BOOL sub_24A756164(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDataManager: update safe locations", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = *(v2 + 240);

  v9 = sub_24A6A428C(a1, v8);

  if ((v9 & 1) == 0)
  {
    v10 = sub_24A75C5DC(a1);
    v11 = *(v2 + 240);
    *(v2 + 240) = v10;

    if (*(v2 + 24) == 1)
    {
      if (*(v2 + 352))
      {
        v12 = *(v2 + 240);
        v13 = *(v2 + 248);
        v14 = *(v2 + 256);
        v15 = *(v2 + 264);
        v16 = *(v2 + 272);
        v18[0] = v12;
        v18[1] = v13;
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v16;

        sub_24A76187C(v18);
      }
    }
  }

  return (v9 & 1) == 0;
}

uint64_t sub_24A75633C(unint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v68 = a2;
  v7 = type metadata accessor for FMIPItemGroup();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v64[-v13];
  v15 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v64[-v20];
  if (qword_281515DC8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v22 = sub_24A82CDC4();
  sub_24A6797D0(v22, qword_281518F88);
  v23 = sub_24A82CD94();
  v24 = sub_24A82D504();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v67 = v4;
    v26 = v25;
    v66 = swift_slowAlloc();
    v72 = v66;
    *v26 = 136315138;
    LOBYTE(v69) = v68;
    v27 = sub_24A82D024();
    v68 = v5;
    v29 = sub_24A68761C(v27, v28, &v72);
    v65 = v24;
    v30 = a1;
    v31 = v29;
    LODWORD(v5) = v68;

    *(v26 + 4) = v31;
    a1 = v30;
    _os_log_impl(&dword_24A675000, v23, v65, "FMIPDataManager: Updating items from source: %s", v26, 0xCu);
    v32 = v66;
    sub_24A6876E8(v66);
    MEMORY[0x24C21E1D0](v32, -1, -1);
    v33 = v26;
    v4 = v67;
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  swift_beginAccess();
  v34 = *(v4 + 280);

  v35 = sub_24A7D8ED0(a1, v34);

  v36 = v35 ^ 1 | v5;
  if (v36)
  {
    v68 = v36;
    v37 = *(v4 + 280);
    *(v4 + 280) = a1;

    v38 = *(v4 + 280);
    v39 = *(v4 + 184);
    v40 = *(v4 + 192);

    v41 = v4;
    v42 = sub_24A76CED0(v38, v40, v39);

    v43 = *(v41 + 280);
    *(v41 + 280) = v42;

    v44 = *(v41 + 280);

    v46 = sub_24A75A96C(v45);

    v47 = *(v41 + 280);
    *(v41 + 280) = v46;

    v48 = *(v41 + 280);

    v50 = sub_24A75B108(v49);

    v51 = *(v41 + 280);
    *(v41 + 280) = v50;

    v4 = v41;
    v5 = *(v41 + 288);
    v70 = 0;
    v71 = 0;
    v69 = v5;
    swift_bridgeObjectRetain_n();
    while (1)
    {
      sub_24A7547C4(v19);
      sub_24A67E8FC(v19, v21, &qword_27EF5E118, &qword_24A837760);
      v52 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v52 - 8) + 48))(v21, 1, v52) == 1)
      {
        break;
      }

      a1 = *v21;
      sub_24A68D628(v21 + *(v52 + 48), v12, type metadata accessor for FMIPItemGroup);
      v53 = *(v4 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v12, v53, v14);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v5 = sub_24A766CC0(v5);
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      if (a1 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_24A76F3A8(v14, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, type metadata accessor for FMIPItemGroup);
    }

    v54 = *(v4 + 288);
    *(v4 + 288) = v5;

    swift_beginAccess();
    v55 = *(v4 + 80);

    v57 = sub_24A758EF8(v56);

    v58 = *(v4 + 80);
    *(v4 + 80) = v57;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v59 = *(v4 + 80);

      sub_24A69C358(v4, v59);

      swift_unknownObjectRelease();
    }

    LOBYTE(v36) = v68;
    if (*(v4 + 24) == 1 && *(v4 + 312))
    {
      v60 = *(v4 + 280);
      v61 = *(v4 + 312);

      sub_24A761CE4(v62, &unk_285DC74B8, sub_24A76F33C, &unk_285DC74D0);
    }
  }

  return v36 & 1;
}

void sub_24A75691C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v133 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v120 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v120 - v10;
  v12 = type metadata accessor for FMReverseGeocodingRequest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v132 = (v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v129 = v120 - v17;
  v18 = type metadata accessor for FMIPItem();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = (v120 - v23);
  v25 = *(a1 + 16);
  v121 = v25;
  v122 = a1;
  if (!v25)
  {
    v138 = MEMORY[0x277D84F98];
    v139 = MEMORY[0x277D84F98];
    v134 = MEMORY[0x277D84F98];
LABEL_51:
    v107 = v131;
    v108 = *(v131 + 192);
    *(v131 + 192) = v139;

    v109 = *(v107 + 184);
    *(v107 + 184) = v138;

    if (*(v107 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache))
    {
      sub_24A75D810(v134);
    }

    if (qword_281515DC8 != -1)
    {
LABEL_63:
      swift_once();
    }

    v110 = sub_24A82CDC4();
    sub_24A6797D0(v110, qword_281518F88);
    v111 = v139;

    v112 = v138;

    v113 = v134;

    v114 = sub_24A82CD94();
    v115 = sub_24A82D504();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 134218752;
      *(v116 + 4) = v121;

      *(v116 + 12) = 2048;
      v117 = v111[2];

      *(v116 + 14) = v117;

      *(v116 + 22) = 2048;
      v118 = v112[2];

      *(v116 + 24) = v118;

      *(v116 + 32) = 2048;
      v119 = *(v113 + 16);

      *(v116 + 34) = v119;

      _os_log_impl(&dword_24A675000, v114, v115, "FMIPDataManager: updated ephemerals items: %ld, locations: %ld, original: %ld,  addresses: %ld", v116, 0x2Au);
      MEMORY[0x24C21E1D0](v116, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    return;
  }

  v135 = v22;
  v136 = v7;
  v125 = v12;
  v126 = v11;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v128 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale;
  v27 = a1 + v26;
  v120[5] = 0x800000024A843AE0;
  v120[6] = 0x800000024A843B00;
  v120[3] = 0x800000024A843A70;
  v120[4] = 0x800000024A843AB0;
  v120[1] = 0x800000024A843A30;
  v120[2] = 0x800000024A843A50;
  v120[0] = 0x800000024A8439F0;
  v123 = v13;
  v124 = (v13 + 56);
  v127 = (v13 + 48);
  v137 = *(v21 + 72);
  v28 = v25;
  v138 = MEMORY[0x277D84F98];
  v139 = MEMORY[0x277D84F98];
  v134 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_24A68FE04(v27, v24, type metadata accessor for FMIPItem);
    v29 = v24[49];
    v141 = v28;
    if (!v29)
    {
      break;
    }

    v30 = v24[48];
    v31 = v24[50];
    v33 = v24[44];
    v32 = v24[45];
    v140 = v29;
    v34 = v139;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v34;
    v37 = sub_24A6A2D48(v33, v32);
    v38 = v34[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v41 = v36;
    if (v34[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A78629C();
      }
    }

    else
    {
      sub_24A781610(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_24A6A2D48(v33, v32);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_64;
      }

      v37 = v42;
    }

    v44 = v140;
    v45 = v146;
    v46 = (v30 & 0x100) >> 8;
    v139 = v146;
    if (v41)
    {
      v47 = v146[7] + 24 * v37;
      v48 = *(v47 + 8);
      *v47 = v30 & 1;
      *(v47 + 1) = v46;
      *(v47 + 2) = (v30 & 0x10000) >> 16;
      *(v47 + 3) = BYTE3(v30);
      *(v47 + 8) = v44;
      *(v47 + 16) = v31;
    }

    else
    {
      v146[(v37 >> 6) + 8] |= 1 << v37;
      v49 = (v45[6] + 16 * v37);
      *v49 = v33;
      v49[1] = v32;
      v50 = v45[7] + 24 * v37;
      *v50 = v30 & 1;
      *(v50 + 1) = v46;
      *(v50 + 2) = (v30 & 0x10000) >> 16;
      *(v50 + 3) = BYTE3(v30);
      *(v50 + 8) = v44;
      *(v50 + 16) = v31;
      v51 = v45[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_59;
      }

      v45[2] = v53;
    }

    memcpy(v144, v24 + 1, sizeof(v144));
    memcpy(v145, v24 + 1, sizeof(v145));
    if (sub_24A6921A8(v145) == 1)
    {
      sub_24A69004C(v24, type metadata accessor for FMIPItem);
    }

    else
    {
      v54 = v135;
      sub_24A68FE04(v24, v135, type metadata accessor for FMIPItem);
      v55 = v136;
      sub_24A67E964(v131 + v128, v136, &qword_27EF5E930, &unk_24A8343F0);
      v56 = *(v54 + 392);
      if (v56)
      {
        v57 = *(v54 + 387);
        v58 = *(v54 + 352);
        v59 = *(v54 + 360);
        v130 = v58;
        sub_24A67E964(v55, v133, &qword_27EF5E930, &unk_24A8343F0);
        v60 = 1;
        switch(v57)
        {
          case 6:
            break;
          default:
            v60 = sub_24A82DC04();
            break;
        }

        sub_24A67E964(v144, v143, &unk_27EF5E0D0, &qword_24A8319E0);
        v63 = v56;

        sub_24A67F378(v136, &qword_27EF5E930, &unk_24A8343F0);
        sub_24A69004C(v135, type metadata accessor for FMIPItem);
        v62 = v126;
        *v126 = v130;
        *(v62 + 8) = v59;
        v61 = v125;
        *(v62 + *(v125 + 32)) = 0;
        *(v62 + *(v61 + 28)) = v60 & 1;
        *(v62 + 16) = v63;
        sub_24A67E8FC(v133, v62 + *(v61 + 24), &qword_27EF5E930, &unk_24A8343F0);
        (*v124)(v62, 0, 1, v61);
        v44 = v140;
      }

      else
      {
        memcpy(v143, v144, sizeof(v143));
        sub_24A76ECE4(v143, v142);
        sub_24A67F378(v55, &qword_27EF5E930, &unk_24A8343F0);
        sub_24A69004C(v54, type metadata accessor for FMIPItem);
        v61 = v125;
        v62 = v126;
        (*v124)(v126, 1, 1, v125);
      }

      if ((*v127)(v62, 1, v61) != 1)
      {
        v64 = v129;
        sub_24A68D628(v62, v129, type metadata accessor for FMReverseGeocodingRequest);
        v65 = v132;
        sub_24A68FE04(v64, v132, type metadata accessor for FMReverseGeocodingRequest);
        v66 = v134;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v142[0] = v66;
        v68 = sub_24A77EE94(v65);
        v70 = *(v66 + 16);
        v71 = (v69 & 1) == 0;
        v52 = __OFADD__(v70, v71);
        v72 = v70 + v71;
        if (v52)
        {
          goto LABEL_61;
        }

        v73 = v69;
        if (*(v66 + 24) >= v72)
        {
          v75 = v123;
          if (v67)
          {
            if ((v69 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v106 = v68;
            sub_24A7867F8();
            v75 = v123;
            v68 = v106;
            if ((v73 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_24A781C58(v72, v67);
          v68 = sub_24A77EE94(v132);
          if ((v73 & 1) != (v74 & 1))
          {
            goto LABEL_65;
          }

          v75 = v123;
          if ((v73 & 1) == 0)
          {
LABEL_29:
            v76 = v142[0];
            *(v142[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
            v77 = v68;
            v78 = v132;
            sub_24A68FE04(v132, v76[6] + *(v75 + 72) * v68, type metadata accessor for FMReverseGeocodingRequest);
            memcpy((v76[7] + 288 * v77), v145, 0x120uLL);

            sub_24A69004C(v78, type metadata accessor for FMReverseGeocodingRequest);
            sub_24A69004C(v129, type metadata accessor for FMReverseGeocodingRequest);
            v79 = v76[2];
            v52 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v52)
            {
              goto LABEL_62;
            }

            v134 = v76;
            v76[2] = v80;
            goto LABEL_34;
          }
        }

        v134 = v142[0];
        v81 = (*(v142[0] + 56) + 288 * v68);
        memcpy(v143, v81, sizeof(v143));
        memcpy(v81, v145, 0x120uLL);
        sub_24A6CD854(v143);

        sub_24A69004C(v132, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v129, type metadata accessor for FMReverseGeocodingRequest);
LABEL_34:
        v28 = v141;
        break;
      }

      sub_24A69004C(v24, type metadata accessor for FMIPItem);

      sub_24A67F378(v144, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v62, &qword_27EF5E0E8, &unk_24A837740);
    }

LABEL_4:
    v28 = v141;
LABEL_5:
    v27 += v137;
    if (!--v28)
    {
      goto LABEL_51;
    }
  }

  v82 = v24[40];
  if (!v82)
  {
    sub_24A69004C(v24, type metadata accessor for FMIPItem);
    goto LABEL_5;
  }

  v83 = v24[39];
  v84 = v24[41];
  v86 = v24[44];
  v85 = v24[45];
  v87 = v82;
  v88 = v138;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v145[0] = v88;
  v90 = sub_24A6A2D48(v86, v85);
  v92 = v88[2];
  v93 = (v91 & 1) == 0;
  v52 = __OFADD__(v92, v93);
  v94 = v92 + v93;
  if (v52)
  {
    goto LABEL_58;
  }

  v95 = v91;
  if (v88[3] >= v94)
  {
    if ((v89 & 1) == 0)
    {
      v105 = v90;
      sub_24A78629C();
      v90 = v105;
    }

    goto LABEL_43;
  }

  sub_24A781610(v94, v89);
  v90 = sub_24A6A2D48(v86, v85);
  if ((v95 & 1) == (v96 & 1))
  {
LABEL_43:
    v97 = BYTE1(v83) & 1;
    v98 = BYTE2(v83) & 1;
    v138 = v145[0];
    if (v95)
    {
      v99 = *(v145[0] + 56) + 24 * v90;
      v100 = *(v99 + 8);
      *v99 = v83 & 1;
      *(v99 + 1) = v97;
      *(v99 + 2) = v98;
      *(v99 + 3) = BYTE3(v83);
      *(v99 + 8) = v87;
      *(v99 + 16) = v84;
    }

    else
    {
      *(v145[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
      v101 = (v138[6] + 16 * v90);
      *v101 = v86;
      v101[1] = v85;
      v102 = v138[7] + 24 * v90;
      *v102 = v83 & 1;
      *(v102 + 1) = v97;
      *(v102 + 2) = v98;
      *(v102 + 3) = BYTE3(v83);
      *(v102 + 8) = v87;
      *(v102 + 16) = v84;

      v103 = v138[2];
      v52 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v52)
      {
        goto LABEL_60;
      }

      v138[2] = v104;
    }

    sub_24A69004C(v24, type metadata accessor for FMIPItem);
    goto LABEL_4;
  }

LABEL_64:
  sub_24A82DC44();
  __break(1u);
LABEL_65:
  sub_24A82DC44();
  __break(1u);
}