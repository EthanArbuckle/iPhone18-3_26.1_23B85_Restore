unint64_t sub_24A796540()
{
  result = qword_27EF5E990;
  if (!qword_27EF5E990)
  {
    sub_24A679170(255, &qword_27EF5DDE8, 0x277D49668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E990);
  }

  return result;
}

void *FMIPAccessoryDiscoveryController.deinit()
{
  result = *(v0 + 96);
  if (result)
  {
    [result stop];
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    sub_24A6AFFE8(*(v0 + 16));
    sub_24A6AFFE8(v3);
    sub_24A6AFFE8(v5);
    sub_24A6AFFE8(v7);

    v9 = *(v0 + 112);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *FMIPAccessoryDiscoveryController.__deallocating_deinit()
{
  result = *(v0 + 96);
  if (result)
  {
    [result stop];
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    sub_24A6AFFE8(*(v0 + 16));
    sub_24A6AFFE8(v3);
    sub_24A6AFFE8(v5);
    sub_24A6AFFE8(v7);

    v9 = *(v0 + 112);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A796700(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(v3 + 104) & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 16) = sub_24A79C124;
    *(v12 + 24) = v4;
    v38 = sub_24A6806A0;
    v39 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_24A6805E4;
    v37 = &unk_285DC88D0;
    v14 = _Block_copy(&aBlock);

    dispatch_sync(v11, v14);
    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_24A82D504();
      if ((a1 & 1) == 0)
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v24 = sub_24A82CDC4();
        sub_24A6797D0(v24, qword_281518F88);
        v25 = sub_24A82CD94();
        if (os_log_type_enabled(v25, v13))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          aBlock = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_24A68761C(0xD000000000000027, 0x800000024A848020, &aBlock);
          _os_log_impl(&dword_24A675000, v25, v13, "FMIPAccessoryDiscoveryController: %s", v26, 0xCu);
          sub_24A6876E8(v27);
          MEMORY[0x24C21E1D0](v27, -1, -1);
          MEMORY[0x24C21E1D0](v26, -1, -1);
        }

        v28 = *(v4 + 96);
        if (v28)
        {
          v29 = swift_allocObject();
          swift_weakInit();
          v30 = swift_allocObject();
          v30[2] = v29;
          v30[3] = a2;
          v30[4] = a3;
          v38 = sub_24A79C12C;
          v39 = v30;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_24A7386AC;
          v37 = &unk_285DC8948;
          v31 = _Block_copy(&aBlock);
          sub_24A6A7314(a2);
          v32 = v28;

          [v32 startAccessoryDiscoveryWithCompletion_];
          _Block_release(v31);

          return;
        }

        goto LABEL_25;
      }

      if (qword_281515DC8 == -1)
      {
LABEL_12:
        v15 = sub_24A82CDC4();
        sub_24A6797D0(v15, qword_281518F88);
        v16 = sub_24A82CD94();
        if (os_log_type_enabled(v16, v13))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          aBlock = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_24A68761C(0xD000000000000036, 0x800000024A848050, &aBlock);
          _os_log_impl(&dword_24A675000, v16, v13, "FMIPAccessoryDiscoveryController: %s", v17, 0xCu);
          sub_24A6876E8(v18);
          MEMORY[0x24C21E1D0](v18, -1, -1);
          MEMORY[0x24C21E1D0](v17, -1, -1);
        }

        v19 = *(v4 + 96);
        if (v19)
        {
          v20 = swift_allocObject();
          swift_weakInit();
          v21 = swift_allocObject();
          v21[2] = v20;
          v21[3] = a2;
          v21[4] = a3;
          v38 = sub_24A79C5FC;
          v39 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_24A7386AC;
          v37 = &unk_285DC8998;
          v22 = _Block_copy(&aBlock);
          v23 = v19;
          sub_24A6A7314(a2);

          [v23 startLocalFindableAccessoryDiscoveryWithCompletion_];
          _Block_release(v22);

          return;
        }

        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  oslog = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, oslog, v6, "FMIPAccessoryDiscoveryController: Tried to start new session while the old one is still running, aborting.", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }
}

uint64_t sub_24A796D20(uint64_t *a1)
{
  result = swift_beginAccess();
  if (*(a1[14] + 16))
  {
    swift_beginAccess();
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[5];
      sub_24A6A7314(a1[4]);

      v3(v5);
      sub_24A6AFFE8(v3);
    }

    v6 = a1[14];
    a1[14] = MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_24A796DD4(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000043, 0x800000024A8484F0);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000037, 0x800000024A8484B0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A7971DC(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000034, 0x800000024A848600);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000028, 0x800000024A8485D0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A7975E4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 104);
  v9 = sub_24A82D504();
  if (v8 == 1)
  {
    if (a1)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        aBlock = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_24A68761C(0xD000000000000035, 0x800000024A848100, &aBlock);
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      v14 = *(v4 + 96);
      if (v14)
      {
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = a2;
        v16[4] = a3;
        v36 = sub_24A79C614;
        v37 = v16;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A7386AC;
        v35 = &unk_285DC8A38;
        v17 = _Block_copy(&aBlock);
        v18 = v14;
        sub_24A6A7314(a2);

        [v18 stopLocalFindableAccessoryDiscoveryWithCompletion_];
        _Block_release(v17);

        return;
      }

      __break(1u);
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_281518F88);
      v23 = sub_24A82CD94();
      if (os_log_type_enabled(v23, v9))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_24A68761C(0xD000000000000026, 0x800000024A8480D0, &aBlock);
        _os_log_impl(&dword_24A675000, v23, v9, "FMIPAccessoryDiscoveryController: %s", v24, 0xCu);
        sub_24A6876E8(v25);
        MEMORY[0x24C21E1D0](v25, -1, -1);
        MEMORY[0x24C21E1D0](v24, -1, -1);
      }

      v26 = *(v4 + 96);
      if (v26)
      {
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a2;
        v28[4] = a3;
        v36 = sub_24A79C608;
        v37 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A7386AC;
        v35 = &unk_285DC89E8;
        v29 = _Block_copy(&aBlock);
        sub_24A6A7314(a2);
        v30 = v26;

        [v30 stopAccessoryDiscoveryWithCompletion_];
        _Block_release(v29);

        return;
      }
    }

    __break(1u);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    log = sub_24A82CD94();
    if (os_log_type_enabled(log, v9))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A848090, &aBlock);
      _os_log_impl(&dword_24A675000, log, v9, "FMIPAccessoryDiscoveryController: %s", v20, 0xCu);
      sub_24A6876E8(v21);
      MEMORY[0x24C21E1D0](v21, -1, -1);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A797B58(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000042, 0x800000024A848580);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000038, 0x800000024A848540, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A797F5C(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A798360(uint64_t a1, uint64_t a2, void (*a3)(void *a1), void *a4)
{
  v5 = v4;
  if (*(v4 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82D4E4();
    v12 = sub_24A82CD94();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_24A68761C(0xD000000000000040, 0x800000024A848140, &v23);
      _os_log_impl(&dword_24A675000, v12, v11, "%s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }
  }

  v15 = *(v5 + 96);
  if (v15)
  {
    v27 = a3;
    v28 = a4;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_24A699BA0;
    v26 = &unk_285DC8A60;
    v16 = _Block_copy(&v23);

    v17 = v15;

    [v17 setSessionInvalidatedCallback_];
    _Block_release(v16);

    v18 = *(v5 + 96);
    if (v18)
    {
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = a2;
      v27 = sub_24A79C620;
      v28 = v20;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24A7386AC;
      v26 = &unk_285DC8AB0;
      v21 = _Block_copy(&v23);
      v22 = v18;

      [v22 startProximityAccessoryDiscoveryWithCompletion_];
      _Block_release(v21);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24A79864C(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000043, 0x800000024A8484F0);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      LOBYTE(v25) = *(v6 + 88);
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
      v25 = v27;
      LOBYTE(v26) = v28;
      BYTE1(v26) = 1;
      a3(&v25);

      sub_24A79D060(v25, v26, SBYTE1(v26));
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000037, 0x800000024A8484B0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      v25 = 0;
      LOWORD(v26) = 0;
      a3(&v25);
    }
  }
}

void sub_24A798A38(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 104) == 1)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = a1;
      v7[4] = a2;
      aBlock[4] = sub_24A79C62C;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A7386AC;
      aBlock[3] = &unk_285DC8B00;
      v8 = _Block_copy(aBlock);
      v9 = v3;

      [v9 stopProximityAccessoryDiscoveryWithCompletion_];
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = sub_24A82D504();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    log = sub_24A82CD94();
    if (os_log_type_enabled(log, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A848090, aBlock);
      _os_log_impl(&dword_24A675000, log, v10, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A798CA8(void *a1, uint64_t a2, void (*a3)(uint64_t **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v27, &v25);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      LOBYTE(v25) = *(v6 + 88);
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v25, &v27);
      v25 = v27;
      LOBYTE(v26) = v28;
      BYTE1(v26) = 1;
      a3(&v25);

      sub_24A79D060(v25, v26, SBYTE1(v26));
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      v25 = 0;
      LOWORD(v26) = 0;
      a3(&v25);
    }
  }
}

void sub_24A799090(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPDiscoveredAccessory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (*(v3 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    v12 = sub_24A82D4E4();
    v13 = sub_24A82CD94();
    if (os_log_type_enabled(v13, v12))
    {
      v25 = " is in progress.";
      v26 = a2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24A68761C(0xD000000000000037, v25 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_24A675000, v13, v12, "%s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      v16 = v14;
      a2 = v26;
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }
  }

  v17 = *(v4 + 96);
  if (v17)
  {
    v18 = *a1;
    v19 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    sub_24A79C638(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = (v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a2;
    v22[1] = a3;
    aBlock[4] = sub_24A79C69C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC8B50;
    v23 = _Block_copy(aBlock);
    v24 = v17;

    [v24 initiatePairingWith:v18 completion:v23];
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_24A7993B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for FMIPDiscoveredAccessory();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      sub_24A79D0DC(a3, v13, type metadata accessor for FMIPDiscoveredAccessory);
      v18 = a1;
      v19 = a1;
      v20 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v34 = a5;
        v24 = v23;
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315138;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A848410);
        v35 = a4;
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v36 = a1;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v26 = sub_24A68761C(v39, v40, &v37);

        *(v24 + 4) = v26;
        a4 = v35;
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v24, 0xCu);
        sub_24A6876E8(v25);
        MEMORY[0x24C21E1D0](v25, -1, -1);
        MEMORY[0x24C21E1D0](v24, -1, -1);
      }

      sub_24A79D144(v13, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v39) = *(v17 + 88);
      v27 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v39, &v37);
      v39 = v37;
      LOBYTE(v40) = v38;
      BYTE1(v40) = 1;
      a4(&v39);

      sub_24A79D060(v39, v40, SBYTE1(v40));
    }

    else
    {
      sub_24A79D0DC(a3, v15, type metadata accessor for FMIPDiscoveredAccessory);
      v28 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v29 = sub_24A82CDC4();
      sub_24A6797D0(v29, qword_281518F88);
      v30 = sub_24A82CD94();
      if (os_log_type_enabled(v30, v28))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37 = v32;
        *v31 = 136315138;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A848410);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
        v33 = sub_24A68761C(v39, v40, &v37);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_24A675000, v30, v28, "FMIPAccessoryDiscoveryController: %s", v31, 0xCu);
        sub_24A6876E8(v32);
        MEMORY[0x24C21E1D0](v32, -1, -1);
        MEMORY[0x24C21E1D0](v31, -1, -1);
      }

      sub_24A79D144(v15, type metadata accessor for FMIPDiscoveredAccessory);
      v39 = 0;
      LOWORD(v40) = 0;
      a4(&v39);
    }
  }
}

void sub_24A799900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a4;
  v39 = a5;
  v12 = type metadata accessor for FMIPDiscoveredAccessory();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (*(v7 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82D4E4();
    v16 = sub_24A82CD94();
    if (os_log_type_enabled(v16, v15))
    {
      v34 = " is in progress.";
      v36 = a7;
      v17 = swift_slowAlloc();
      v35 = a6;
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24A68761C(0xD000000000000037, v34 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_24A675000, v16, v15, "%s", v17, 0xCu);
      sub_24A6876E8(v18);
      v19 = v18;
      a6 = v35;
      MEMORY[0x24C21E1D0](v19, -1, -1);
      v20 = v17;
      a7 = v36;
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }
  }

  v21 = *MEMORY[0x277D49778];
  v22 = objc_allocWithZone(MEMORY[0x277D49600]);
  v23 = sub_24A82CF94();
  v24 = sub_24A82CF94();
  v25 = [v22 initWithName:v23 roleId:v21 roleEmoji:v24];

  v26 = *(v8 + 96);
  if (v26)
  {
    v27 = *a1;
    v28 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v29 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    sub_24A79C638(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    v31 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = a6;
    v31[1] = a7;
    aBlock[4] = sub_24A79C6B4;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A79A890;
    aBlock[3] = &unk_285DC8BA0;
    v32 = _Block_copy(aBlock);
    v33 = v26;

    [v33 finalizePairingWith:v27 configuration:v25 completion:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A799CA8(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v87 = a6;
  v88 = a5;
  v83 = sub_24A82CA34();
  v80 = *(v83 - 1);
  v9 = *(v80 + 64);
  v10 = MEMORY[0x28223BE20](v83);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v76 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v76 - v17;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v19 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FMIPItem();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v81 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24A6BBA94(&qword_27EF5E9A8, &qword_24A839AD0);
  v25 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86 = (&v76 - v26);
  v27 = type metadata accessor for FMIPDiscoveredAccessory();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v76 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v76 - v35;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v84 = result;
  if (result)
  {
    if (a2)
    {
      sub_24A79D0DC(a4, v36, type metadata accessor for FMIPDiscoveredAccessory);
      v38 = a2;
      v39 = a2;
      v40 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v41 = sub_24A82CDC4();
      sub_24A6797D0(v41, qword_281518F88);
      v42 = sub_24A82CD94();
      if (os_log_type_enabled(v42, v40))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v94 = v44;
        *v43 = 136315138;
        v90 = 0;
        v91 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v89 = a2;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v45 = sub_24A68761C(v90, v91, &v94);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_24A675000, v42, v40, "FMIPAccessoryDiscoveryController: %s", v43, 0xCu);
        sub_24A6876E8(v44);
        MEMORY[0x24C21E1D0](v44, -1, -1);
        MEMORY[0x24C21E1D0](v43, -1, -1);
      }

      sub_24A79D144(v36, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v94) = *(v84 + 88);
      v46 = a2;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a2, &v94, &v90);
      v47 = v91;
      v48 = v86;
      *v86 = v90;
      *(v48 + 8) = v47;
      swift_storeEnumTagMultiPayload();
      v88(v48);

      return sub_24A67F378(v48, &qword_27EF5E9A8, &qword_24A839AD0);
    }

    if (!a1)
    {
      sub_24A79D0DC(a4, v34, type metadata accessor for FMIPDiscoveredAccessory);
      v68 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v69 = sub_24A82CDC4();
      sub_24A6797D0(v69, qword_281518F88);
      v70 = sub_24A82CD94();
      if (os_log_type_enabled(v70, v68))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v94 = v72;
        *v71 = 136315138;
        v90 = 0;
        v91 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A8483F0);
        v73 = sub_24A68761C(v90, v91, &v94);

        *(v71 + 4) = v73;
        _os_log_impl(&dword_24A675000, v70, v68, "FMIPAccessoryDiscoveryController: %s", v71, 0xCu);
        sub_24A6876E8(v72);
        MEMORY[0x24C21E1D0](v72, -1, -1);
        MEMORY[0x24C21E1D0](v71, -1, -1);
      }

      sub_24A79D144(v34, type metadata accessor for FMIPDiscoveredAccessory);
      v48 = v86;
      *v86 = 0;
      *(v48 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v88(v48);

      return sub_24A67F378(v48, &qword_27EF5E9A8, &qword_24A839AD0);
    }

    sub_24A79D0DC(a4, v31, type metadata accessor for FMIPDiscoveredAccessory);
    v49 = a1;
    v50 = sub_24A82D504();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v51 = sub_24A82CDC4();
    sub_24A6797D0(v51, qword_281518F88);
    v52 = sub_24A82CD94();
    if (os_log_type_enabled(v52, v50))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v94 = v54;
      *v53 = 136315138;
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_24A82D854();
      MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
      sub_24A82D914();
      MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
      v55 = sub_24A68761C(v90, v91, &v94);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_24A675000, v52, v50, "FMIPAccessoryDiscoveryController: %s", v53, 0xCu);
      sub_24A6876E8(v54);
      MEMORY[0x24C21E1D0](v54, -1, -1);
      MEMORY[0x24C21E1D0](v53, -1, -1);
    }

    sub_24A79D144(v31, type metadata accessor for FMIPDiscoveredAccessory);
    v57 = v82;
    v56 = v83;
    v58 = v78;
    v92 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
    v93 = &protocol witness table for SPBeacon;
    v90 = v49;
    swift_storeEnumTagMultiPayload();
    v59 = v80;
    (*(v80 + 56))(v58, 1, 1, v56);
    v60 = type metadata accessor for FMIPItemUpdateContext(0);
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    v63 = swift_allocObject();
    sub_24A79D0DC(v21, v63 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v83 = v49;
    v64 = v77;
    sub_24A82CA24();
    v65 = *(v59 + 32);
    v65(v63 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v64, v56);
    v66 = v79;
    sub_24A79D06C(v58, v79);
    v67 = *(v59 + 48);
    if (v67(v66, 1, v56) == 1)
    {
      sub_24A82CA24();
      sub_24A67F378(v58, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A79D144(v21, type metadata accessor for FMIPItemUpdateType);
      if (v67(v66, 1, v56) != 1)
      {
        sub_24A67F378(v66, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      sub_24A67F378(v58, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A79D144(v21, type metadata accessor for FMIPItemUpdateType);
      v65(v57, v66, v56);
    }

    v65(v63 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v57, v56);
    v74 = v81;
    FMIPItem.init(with:from:)(&v90, v63, v81);
    v75 = v86;
    sub_24A79D0DC(v74, v86, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    v88(v75);

    sub_24A67F378(v75, &qword_27EF5E9A8, &qword_24A839AD0);
    return sub_24A79D144(v74, type metadata accessor for FMIPItem);
  }

  return result;
}

void sub_24A79A890(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_24A79A91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMIPDiscoveredAccessory();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v3 + 96);
  if (v10)
  {
    v11 = *a1;
    v12 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_24A79C638(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    v15 = (v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = a2;
    v15[1] = a3;
    aBlock[4] = sub_24A79C978;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC8BF0;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    [v17 invalidatePairingWith:v11 completion:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_24A79AB1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for FMIPDiscoveredAccessory();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      sub_24A79D0DC(a3, v13, type metadata accessor for FMIPDiscoveredAccessory);
      v18 = a1;
      v19 = a1;
      v20 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v34 = a5;
        v24 = v23;
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315138;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A848390);
        v35 = a4;
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v36 = a1;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v26 = sub_24A68761C(v39, v40, &v37);

        *(v24 + 4) = v26;
        a4 = v35;
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v24, 0xCu);
        sub_24A6876E8(v25);
        MEMORY[0x24C21E1D0](v25, -1, -1);
        MEMORY[0x24C21E1D0](v24, -1, -1);
      }

      sub_24A79D144(v13, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v39) = *(v17 + 88);
      v27 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v39, &v37);
      v39 = v37;
      LOBYTE(v40) = v38;
      BYTE1(v40) = 1;
      a4(&v39);

      sub_24A79D060(v39, v40, SBYTE1(v40));
    }

    else
    {
      sub_24A79D0DC(a3, v15, type metadata accessor for FMIPDiscoveredAccessory);
      v28 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v29 = sub_24A82CDC4();
      sub_24A6797D0(v29, qword_281518F88);
      v30 = sub_24A82CD94();
      if (os_log_type_enabled(v30, v28))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37 = v32;
        *v31 = 136315138;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A848390);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
        v33 = sub_24A68761C(v39, v40, &v37);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_24A675000, v30, v28, "FMIPAccessoryDiscoveryController: %s", v31, 0xCu);
        sub_24A6876E8(v32);
        MEMORY[0x24C21E1D0](v32, -1, -1);
        MEMORY[0x24C21E1D0](v31, -1, -1);
      }

      sub_24A79D144(v15, type metadata accessor for FMIPDiscoveredAccessory);
      v39 = 0;
      LOWORD(v40) = 0;
      a4(&v39);
    }
  }
}

uint64_t sub_24A79B064@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);

  sub_24A79F3BC(sub_24A79CA48, v3, a1);
}

uint64_t sub_24A79B0EC(id *a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_24A79B1F8()
{
  v1 = v0;
  v2 = sub_24A82D4E4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = sub_24A82CD94();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A68761C(0xD000000000000018, 0x800000024A848370, &v15);
    _os_log_impl(&dword_24A675000, v4, v2, "FMIPAccessoryDiscoveryController: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v7 = *(v1 + 96);
  if (v7)
  {
    v8 = [v7 state];
    v9 = sub_24A79BE48();

    v10 = *(v1 + 96);
    *(v1 + 96) = v9;

    if (*(v1 + 104) == 1)
    {
      v11 = sub_24A82D504();
      v12 = sub_24A82CD94();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_24A68761C(0xD000000000000053, 0x800000024A848310, &v15);
        _os_log_impl(&dword_24A675000, v12, v11, "FMIPAccessoryDiscoveryController: %s", v13, 0xCu);
        sub_24A6876E8(v14);
        MEMORY[0x24C21E1D0](v14, -1, -1);
        MEMORY[0x24C21E1D0](v13, -1, -1);
      }

      *(v1 + 104) = 0;

      sub_24A796700(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A79B488(void *a1, uint64_t a2)
{

  v4 = sub_24A82D504();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    sub_24A82D854();

    v40 = 0xD000000000000016;
    v41 = 0x800000024A848680;
    sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
    sub_24A796540();
    v9 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v9);

    v10 = sub_24A68761C(0xD000000000000016, 0x800000024A848680, &v38);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_24A675000, v6, v4, "FMIPAccessoryDiscoveryController: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v11 = sub_24A7951EC(a2);
  v12 = sub_24A71449C(v11);

  swift_beginAccess();
  v13 = a1[14];
  if (*(v13 + 16) <= *(v12 + 16) >> 3)
  {
    v38 = v12;

    sub_24A7EAB80(v13);

    v15 = v38;
  }

  else
  {
    v14 = a1[14];

    v15 = sub_24A7EAF90(v13, v12);
  }

  v16 = a1[14];
  if (*(v12 + 16) <= *(v16 + 16) >> 3)
  {
    v38 = a1[14];

    sub_24A7EAB80(v12);
    v18 = v38;
  }

  else
  {
    v17 = a1[14];

    v18 = sub_24A7EAF90(v12, v16);
  }

  v19 = a1[14];
  a1[14] = v12;

  v20 = sub_24A82D504();
  v21 = sub_24A82CD94();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37[0] = v23;
    *v22 = 136315138;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_24A82D854();

    v38 = 0xD00000000000001CLL;
    v39 = 0x800000024A848660;
    type metadata accessor for FMIPDiscoveredAccessory();
    sub_24A6956F8(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory);
    v24 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v24);

    v25 = sub_24A68761C(v38, v39, v37);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_24A675000, v21, v20, "FMIPAccessoryDiscoveryController: %s", v22, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v26 = sub_24A82D504();
  v27 = sub_24A82CD94();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37[0] = v29;
    *v28 = 136315138;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_24A82D854();

    v38 = 0xD000000000000012;
    v39 = 0x800000024A848640;
    type metadata accessor for FMIPDiscoveredAccessory();
    sub_24A6956F8(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory);
    v30 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v30);

    v31 = sub_24A68761C(v38, v39, v37);

    *(v28 + 4) = v31;
    _os_log_impl(&dword_24A675000, v27, v26, "FMIPAccessoryDiscoveryController: %s", v28, 0xCu);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  if (*(v15 + 16))
  {
    swift_beginAccess();
    v32 = a1[2];
    if (v32)
    {
      v33 = a1[3];

      v32(v15);
      sub_24A6AFFE8(v32);
    }
  }

  if (*(v18 + 16))
  {
    swift_beginAccess();
    v34 = a1[4];
    if (v34)
    {
      v35 = a1[5];

      v34(v18);
      sub_24A6AFFE8(v34);
    }
  }
}

uint64_t sub_24A79BAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_24A79CF9C(*a1, v4);
  v5 = sub_24A82D504();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v8 = 136315138;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD000000000000039, 0x800000024A848290);
    if (v4 == 4 && v3 == 7)
    {
      v23 = 7;
      v24 = 4;
      sub_24A7CF220();
      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_24A82C6F4();
      v13 = v12;
    }

    else
    {
      v23 = v3;
      v24 = v4;
      sub_24A7CF220();
      type metadata accessor for FMLocalize();
      v14 = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
      v11 = sub_24A82C6F4();
      v13 = v16;
    }

    MEMORY[0x24C21C9E0](v11, v13);

    v17 = sub_24A68761C(v25, v26, &v22);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_24A675000, v7, v5, "FMIPAccessoryDiscoveryController: %s", v8, 0xCu);
    sub_24A6876E8(v21);
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  sub_24A79CFB0(v3, v4);

  result = swift_beginAccess();
  v19 = *(v2 + 64);
  if (v19)
  {
    v20 = *(v2 + 72);
    v23 = v3;
    v24 = v4;

    v19(&v23);
    return sub_24A6AFFE8(v19);
  }

  return result;
}

id sub_24A79BE48(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D495D8]) initWithPreviousState_];
  v2 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1A4;
  v16 = v2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A79C2D0;
  v14 = &unk_285DC8E70;
  v3 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveredCallback_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1AC;
  v16 = v4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DC8E98;
  v5 = _Block_copy(&v11);

  [v1 setSessionInvalidatedCallback_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1B4;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A720114;
  v14 = &unk_285DC8EC0;
  v7 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryErrorCallback_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1BC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DC8EE8;
  v9 = _Block_copy(&v11);

  [v1 setPairingAccessoryDetectionCallback_];
  _Block_release(v9);
  return v1;
}

uint64_t sub_24A79C138(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 80);
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A79D1C4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DC8F60;
    v7 = _Block_copy(aBlock);

    dispatch_sync(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24A79C2D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
  sub_24A796540();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A79C360()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A79B1F8();
  }

  return result;
}

void sub_24A79C3B8(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    LOBYTE(v6) = *(Strong + 88);
    v3 = a1;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v6, &v8);
    v4 = v8;
    v5 = v9;
    v6 = v8;
    v7 = v9;
    sub_24A79BAD8(&v6);

    sub_24A79CFB0(v4, v5);
  }
}

uint64_t sub_24A79C45C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = v1[2];
    v3 = v1[4];
    v4 = v1[5];
    v6 = v1[6];
    v5 = v1[7];
    v7 = v1[8];
    v8 = v1[9];
    sub_24A6A7314(v2);
    sub_24A6A7314(v3);
    sub_24A6A7314(v6);
    sub_24A6A7314(v7);

    if (v6)
    {

      sub_24A6AFFE8(v2);
      sub_24A6AFFE8(v3);
      sub_24A6AFFE8(v6);
      v9 = sub_24A6AFFE8(v7);
      v6(v9);
      v10 = v6;
    }

    else
    {
      sub_24A6AFFE8(v2);
      sub_24A6AFFE8(v3);
      sub_24A6AFFE8(0);
      v10 = v7;
    }

    return sub_24A6AFFE8(v10);
  }

  return result;
}

uint64_t sub_24A79C638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDiscoveredAccessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A79C6B4(void *a1, void *a2)
{
  v5 = *(type metadata accessor for FMIPDiscoveredAccessory() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24A799CA8(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A79C768()
{
  v1 = type metadata accessor for FMIPDiscoveredAccessory();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;

  if (*(v0 + v3 + 24))
  {

    v7 = *(v6 + 40);
  }

  v8 = (v6 + *(v1 + 24));
  v9 = type metadata accessor for FMIPHawkeyeProductInformation();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v10 = *(v8 + 3);

    v11 = *(v8 + 5);

    v12 = *(v8 + 7);

    v13 = v9[12];
    v14 = sub_24A82C8B4();
    v15 = *(*(v14 - 8) + 8);
    v15(&v8[v13], v14);
    v15(&v8[v9[13]], v14);
    v15(&v8[v9[14]], v14);
    v15(&v8[v9[15]], v14);
    v15(&v8[v9[16]], v14);
    v15(&v8[v9[17]], v14);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_24A79C990(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FMIPDiscoveredAccessory() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

unint64_t sub_24A79CA6C()
{
  result = qword_27EF5E998;
  if (!qword_27EF5E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E998);
  }

  return result;
}

unint64_t sub_24A79CB0C()
{
  result = qword_27EF5E9A0;
  if (!qword_27EF5E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9A0);
  }

  return result;
}

uint64_t sub_24A79CECC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A79CF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_24A79CF9C(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_24A79CFB0(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

uint64_t sub_24A79CFD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A79CFFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_24A79D034(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_24A79D060(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_24A79CFB0(a1, a2);
  }
}

uint64_t sub_24A79D06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A79D0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A79D144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FMIPLockRequest()
{
  result = qword_27EF5E9B8;
  if (!qword_27EF5E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A79D2EC()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78E88);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v5 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D837D0];
  *&v36 = v4;
  *(&v36 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  sub_24A6A50DC(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v35, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v6);

  os_unfair_lock_lock((v10 + 24));
  sub_24A6A3D28((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v11 = MEMORY[0x277D839B0];
  v37 = MEMORY[0x277D839B0];
  LOBYTE(v36) = 0;
  v12 = *(v1 + v6);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  sub_24A6A50DC(&v36, v35);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v35, 0x646E756F73, 0xE500000000000000, v14);
  v15 = *(v1 + v6);

  os_unfair_lock_lock((v15 + 24));
  sub_24A6FF740((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));

  v16 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled);
  v37 = v11;
  LOBYTE(v36) = v16;
  v17 = *(v1 + v6);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);

  os_unfair_lock_unlock((v17 + 24));

  sub_24A6A50DC(&v36, v35);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v35, 0x7478655472657375, 0xE800000000000000, v19);
  v20 = *(v1 + v6);

  os_unfair_lock_lock((v20 + 24));
  sub_24A6FF740((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  v21 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
    v37 = v5;
    *&v36 = v22;
    *(&v36 + 1) = v21;
    v23 = *(v1 + v6);

    os_unfair_lock_lock((v23 + 24));
    v24 = *(v23 + 16);

    os_unfair_lock_unlock((v23 + 24));

    sub_24A6A50DC(&v36, v35);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_24A6A4F8C(v35, 1954047348, 0xE400000000000000, v25);
    v27 = *(v1 + v6);
    MEMORY[0x28223BE20](v26);

    os_unfair_lock_lock((v27 + 24));
    sub_24A6FF740((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
  }

  result = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  if (result)
  {
    v29 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
    v37 = v5;
    *&v36 = v29;
    *(&v36 + 1) = result;
    v30 = *(v1 + v6);

    os_unfair_lock_lock((v30 + 24));
    v31 = *(v30 + 16);

    os_unfair_lock_unlock((v30 + 24));

    sub_24A6A50DC(&v36, v35);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v33 = sub_24A6A4F8C(v35, 0x65646F6373736170, 0xE800000000000000, v32);
    v34 = *(v1 + v6);
    MEMORY[0x28223BE20](v33);

    os_unfair_lock_lock((v34 + 24));
    sub_24A6FF740((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));
  }

  return result;
}

uint64_t sub_24A79D7A8()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78E88);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A79D874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A79ECC0();
  *a2 = result;
  return result;
}

void sub_24A79D8A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006C657665;
  v4 = 0x4C79726574746162;
  v5 = 0x6E6F697469736F70;
  v6 = 0xEC00000065707954;
  if (v2 != 6)
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xE900000000000070;
  }

  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (v2 != 4)
  {
    v7 = 0x64757469676E6F6CLL;
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x800000024A843B30;
  v10 = 0xD000000000000012;
  if (v2 != 2)
  {
    v10 = 0x656475746974616CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x5379726574746162;
    v3 = 0xED00007375746174;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A79D9D8()
{
  v1 = *v0;
  v2 = 0x4C79726574746162;
  v3 = 0x6E6F697469736F70;
  if (v1 != 6)
  {
    v3 = 0x6D617473656D6974;
  }

  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0x656475746974616CLL;
  }

  if (*v0)
  {
    v2 = 0x5379726574746162;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A79DB08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A79ECC0();
  *a1 = result;
  return result;
}

uint64_t sub_24A79DB3C(uint64_t a1)
{
  v2 = sub_24A79E18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A79DB78(uint64_t a1)
{
  v2 = sub_24A79E18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPHistoricalLocation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v4 = sub_24A82CA34();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E9C8, &unk_24A839B20);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79E18C();
  sub_24A82DD64();
  if (!v2)
  {
    v57 = v7;
    v13 = v62;
    LOBYTE(v60[0]) = 6;
    v14 = sub_24A82DA44();
    v56 = v15;
    LOBYTE(v60[0]) = 0;
    sub_24A82DA64();
    v17 = v16;
    LOBYTE(v60[0]) = 1;
    v54 = sub_24A82DA44();
    v55 = v18;
    LOBYTE(v60[0]) = 3;
    sub_24A82DA64();
    v20 = v19;
    LOBYTE(v60[0]) = 5;
    sub_24A82DA64();
    v22 = v21;
    LOBYTE(v60[0]) = 2;
    sub_24A82DA64();
    v24 = v23;
    LOBYTE(v60[0]) = 7;
    v26 = sub_24A82DA94();
    v53 = v11;
    v27 = [objc_opt_self() fm:v26 dateFromEpoch:?];
    sub_24A82C9F4();

    v28 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v29 = sub_24A82C994();
    v30 = [v28 initWithCoordinate:v29 altitude:v20 horizontalAccuracy:v22 verticalAccuracy:-1.0 course:v24 speed:-1.0 timestamp:{-1.0, -1.0}];

    v31._countAndFlagsBits = v14;
    v31._object = v56;
    FMIPLocationType.init(rawValue:)(v31);
    if (LOBYTE(v60[0]) == 20)
    {
      v32 = 0;
    }

    else
    {
      v32 = LOBYTE(v60[0]);
    }

    v33 = sub_24A82D9C4();

    LODWORD(v55) = v32;
    LOBYTE(v60[0]) = v32;
    if (v33 >= 4)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }

    v56 = v30;
    v60[1] = v30;
    v60[2] = v17;
    LODWORD(v54) = v34;
    v61 = v34;
    v52 = FMIPHistoricalLocation.debugDescription.getter();
    v36 = v35;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v37 = sub_24A82CDC4();
    sub_24A6797D0(v37, qword_281518F88);

    v38 = sub_24A82CD94();
    v39 = sub_24A82D4C4();

    v40 = v39;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v51 = a1;
      v42 = v41;
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136315138;
      v44 = sub_24A68761C(v52, v36, v60);
      v52 = v4;
      v45 = v38;
      v46 = v44;

      v47 = v42;
      a1 = v51;
      *(v47 + 1) = v46;
      v48 = v47;
      _os_log_impl(&dword_24A675000, v45, v40, "FMIPHistoricalLocation: initialized %s", v47, 0xCu);
      sub_24A6876E8(v43);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v48, -1, -1);

      (*(v58 + 8))(v57, v52);
    }

    else
    {

      (*(v58 + 8))(v57, v4);
    }

    (*(v13 + 8))(v53, v8);
    v49 = v59;
    *v59 = v55;
    *(v49 + 1) = v56;
    *(v49 + 2) = v17;
    v49[24] = v54;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A79E18C()
{
  result = qword_27EF5E9D0;
  if (!qword_27EF5E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9D0);
  }

  return result;
}

uint64_t FMIPHistoricalLocation.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A839B10);
  MEMORY[0x24C21C9E0](0x203A74616C203ALL, 0xE700000000000000);
  [v2 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();
  MEMORY[0x24C21C9E0](980316012, 0xE400000000000000);
  [v2 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x6172756363416820, 0xEB000000003A7963);
  [v2 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x5379726574746162, 0xEE003A7375746174);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x7972657474616220, 0xEF203A6C6576654CLL);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8486C0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  return 0;
}

void FMIPHistoricalLocation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5E9D8, &qword_24A839B48);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v14[3] = v1[24];
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79E18C();
  sub_24A82DD84();
  v12 = [v9 timestamp];
  if (v12)
  {
    v13 = v12;
    v23 = v8;
    FMIPLocationType.rawValue.getter();
    v22 = 6;
    sub_24A82DB04();
    if (!v2)
    {

      [v9 coordinate];
      v21 = 3;
      sub_24A82DB24();
      [v9 coordinate];
      v20 = 5;
      sub_24A82DB24();
      [v9 horizontalAccuracy];
      v19 = 2;
      sub_24A82DB24();
      [v13 fm_epoch];
      v18 = 7;
      sub_24A82DB54();
      v17 = 0;
      sub_24A82DB24();
      v16 = 1;
      sub_24A82DB04();
    }

    (*(v15 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s8FMIPCore22FMIPHistoricalLocationV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = a2[24];
  sub_24A6AEB68();
  if ((sub_24A82D5E4() & 1) == 0)
  {
    return 0;
  }

  v10 = FMIPLocationType.rawValue.getter();
  v12 = v11;
  if (v10 == FMIPLocationType.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_24A82DC04();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4 != v8)
  {
    return 0;
  }

  return sub_24A6A3BD4(v5, v9);
}

__n128 sub_24A79E9C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24A79E9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A79EA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPHistoricalLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPHistoricalLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A79EBBC()
{
  result = qword_27EF5E9E0;
  if (!qword_27EF5E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9E0);
  }

  return result;
}

unint64_t sub_24A79EC14()
{
  result = qword_27EF5E9E8;
  if (!qword_27EF5E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9E8);
  }

  return result;
}

unint64_t sub_24A79EC6C()
{
  result = qword_27EF5E9F0;
  if (!qword_27EF5E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9F0);
  }

  return result;
}

uint64_t sub_24A79ECC0()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A79ED3C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_24A82D744();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C21D180](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_24A79EE90(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, a4, a5);
    sub_24A6AB7EC(a6, a4, a5);
    sub_24A82D414();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v28 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v23)
    {
      while (1)
      {
        v34 = v23;
        v24 = a1(&v34);
        if (v7)
        {
          break;
        }

        if (v24)
        {
          goto LABEL_23;
        }

        v14 = v21;
        v15 = v22;
        v8 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_24A82D784())
        {
          sub_24A679170(0, a4, a5);
          swift_dynamicCast();
          v23 = v34;
          v21 = v14;
          v22 = v15;
          if (v34)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_24A6BAFBC();
  }

  else
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A79F0DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_24A7A9180(v13, v11, type metadata accessor for FMIPDevice);
      v15 = a1(v11);
      if (v3)
      {
        return sub_24A7A91E8(v11, type metadata accessor for FMIPDevice);
      }

      if (v15)
      {
        break;
      }

      sub_24A7A91E8(v11, type metadata accessor for FMIPDevice);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_24A6A23F8(v11, v19, type metadata accessor for FMIPDevice);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

void *sub_24A79F2A8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A82D744())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C21D180](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_24A79F48C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a1;
  v30 = a4;
  v31 = a5;
  v27 = a7;
  v26 = a3(0);
  v32 = *(v26 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v26);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      sub_24A7A9180(*(a2 + 48) + *(v32 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v14, v30);
      sub_24A6A23F8(v14, v12, v31);
      v22 = v29(v12);
      if (v7)
      {
        sub_24A7A91E8(v12, v28);
      }

      if (v22)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_24A7A91E8(v12, v28);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v25 = v27;
    sub_24A6A23F8(v12, v27, v31);
    v24 = v25;
    v23 = 0;
    return (*(v32 + 56))(v24, v23, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v23 = 1;
        v24 = v27;
        return (*(v32 + 56))(v24, v23, 1, v26);
      }

      v17 = *(a2 + 56 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A79F6D4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v16 = v14;

      v15 = a1(&v16);
      if (v3)
      {

        return v14;
      }

      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return 0;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FMIPItem.partType.getter@<X0>(char *a1@<X8>)
{
  result = type metadata accessor for FMIPItem();
  v4 = v1 + *(result + 64);
  if (*(v4 + 8))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v6 = (v1 + *(result + 56));
    result = *v6;
    if (*v6 == 1702060355 && v6[1] == 0xE400000000000000)
    {
      v5 = 1;
    }

    else
    {
      result = sub_24A82DC04();
      v5 = result & 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t FMIPItem.primaryItemPart.getter()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = v1;
  v3 = v0 + *(v1 + 64);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v3 + 32) <= 1u && *(v3 + 32))
    {
      v7 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v5 = (v0 + *(v1 + 56));
    v6 = *v5 == 1702060355 && v5[1] == 0xE400000000000000;
    if (v6 || (sub_24A82DC04() & 1) != 0)
    {
      v7 = 1;
      goto LABEL_25;
    }
  }

  v8 = sub_24A82DC04();

  if ((v8 & 1) == 0)
  {
    if (v4)
    {
      if (*(v3 + 32) > 1u || *(v3 + 32))
      {
LABEL_24:
        v7 = sub_24A82DC04();
        goto LABEL_25;
      }
    }

    else
    {
      v9 = (v0 + *(v2 + 56));
      v10 = *v9 == 1702060355 && v9[1] == 0xE400000000000000;
      if (v10 || (sub_24A82DC04() & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    v7 = 1;
LABEL_25:

    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t FMIPItem.isOwner.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem() + 60));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItem.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPItem();
  v7 = v6[24];
  FMIPProductType.productInformation.getter(v69);
  v8 = v69[3];
  if (v69[3])
  {
    v9 = v69[4];
    sub_24A67DF6C(v69, v69[3]);
    v10 = (*(v9 + 32))(v8, v9);
    v65 = v11;
    v66 = v10;
    sub_24A6876E8(v69);
  }

  else
  {
    sub_24A67F378(v69, &qword_27EF5DF48, &qword_24A839DA0);
    v65 = 0;
    v66 = 0;
  }

  FMIPProductType.productInformation.getter(v69);
  v12 = v69[3];
  if (v69[3])
  {
    v13 = v69[4];
    sub_24A67DF6C(v69, v69[3]);
    v67 = (*(v13 + 24))(v12, v13);
    sub_24A6876E8(v69);
  }

  else
  {
    sub_24A67F378(v69, &qword_27EF5DF48, &qword_24A839DA0);
    v67 = 0;
  }

  FMIPProductType.productInformation.getter(v69);
  v14 = v69[3];
  if (v69[3])
  {
    v15 = v69[4];
    sub_24A67DF6C(v69, v69[3]);
    v64 = (*(v15 + 16))(v14, v15);
    sub_24A6876E8(v69);
  }

  else
  {
    sub_24A67F378(v69, &qword_27EF5DF48, &qword_24A839DA0);
    v64 = 0;
  }

  sub_24A7A9180(v0 + v7, v5, type metadata accessor for FMIPProductType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_24A7A91E8(v5, type metadata accessor for FMIPProductType);
  v69[0] = 0;
  v69[1] = 0xE000000000000000;
  sub_24A82D854();
  v70 = v69[0];
  v71 = v69[1];
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6D65744950494D46, 0xE800000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463D0);
  MEMORY[0x24C21C9E0](v0[44], v0[45]);
  v63 = "% locationType: ";
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A8486E0);
  v16 = v0[46];
  v17 = v1[47];

  v18 = sub_24A68D464(10);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x24C21C960](v18, v20, v22, v24);
  v27 = v26;

  MEMORY[0x24C21C9E0](v25, v27);

  MEMORY[0x24C21C9E0](0x6D616E202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](*(v1 + v6[14]), *(v1 + v6[14] + 8));
  MEMORY[0x24C21C9E0](0x636F6C202020200ALL, 0xEF203A6E6F697461);
  v28 = v1[49];
  if (v28)
  {
    v29 = v1[50];
    v30 = v1[48];
    LOWORD(v69[0]) = v30 & 0x101;
    BYTE2(v69[0]) = BYTE2(v30) & 1;
    BYTE3(v69[0]) = BYTE3(v30);
    v69[1] = v28;
    v69[2] = v29;
    v31 = FMIPLocation.debugDescription.getter();
    v33 = v32;
  }

  else
  {
    v33 = 0xE400000000000000;
    v31 = 1701736270;
  }

  MEMORY[0x24C21C9E0](v31, v33);

  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A848700);
  v34 = v1[40];
  if (v34)
  {
    v35 = v1[41];
    v36 = v1[39];
    LOWORD(v69[0]) = v36 & 0x101;
    BYTE2(v69[0]) = BYTE2(v36) & 1;
    BYTE3(v69[0]) = BYTE3(v36);
    v69[1] = v34;
    v69[2] = v35;
    v37 = FMIPLocation.debugDescription.getter();
    v39 = v38;
  }

  else
  {
    v39 = 0xE400000000000000;
    v37 = 1701736270;
  }

  v40 = v12 == 0;
  MEMORY[0x24C21C9E0](v37, v39);

  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A848720);
  v41 = v1[43];
  v69[0] = v1[42];
  v69[1] = v41;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v42 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v42);

  MEMORY[0x24C21C9E0](0x6C6F72202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](*(v1 + v6[17] + 24), *(v1 + v6[17] + 32));
  MEMORY[0x24C21C9E0](0x5A7369202020200ALL, 0xED0000203A737565);
  if (EnumCaseMultiPayload == 1)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v43, v44);

  MEMORY[0x24C21C9E0](0x646F6D202020200ALL, 0xEC000000203A6C65);
  v69[0] = v66;
  v69[1] = v65;
  v45 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v45);

  MEMORY[0x24C21C9E0](0xD000000000000017, 0x800000024A848740);
  v69[0] = v64;
  LOBYTE(v69[1]) = v14 == 0;
  sub_24A6BBA94(&qword_27EF5D7F8, &unk_24A8343C0);
  v46 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v46);

  MEMORY[0x24C21C9E0](0xD000000000000018, v63 | 0x8000000000000000);
  v69[0] = v67;
  LOBYTE(v69[1]) = v40;
  v47 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v47);

  MEMORY[0x24C21C9E0](0x726170202020200ALL, 0xEF203A6F666E4974);
  v48 = v1 + v6[16];
  v49 = *(v48 + 1);
  v50 = *(v48 + 2);
  v51 = *(v48 + 3);
  v52 = v48[32];
  v69[0] = *v48;
  v69[1] = v49;
  v69[2] = v50;
  v69[3] = v51;
  LOBYTE(v69[4]) = v52;
  sub_24A76ED78(v69[0], v49);
  sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
  v53 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v53);

  MEMORY[0x24C21C9E0](0x646461202020200ALL, 0xEF27203A73736572);
  memcpy(v69, v1 + 1, sizeof(v69));
  if (sub_24A6921A8(v69) == 1 || (memcpy(v68, v69, sizeof(v68)), v54 = FMIPAddress.displayAddress.getter(), !v55))
  {

    v56 = 0xE300000000000000;
    v54 = 7104878;
  }

  else
  {
    v56 = v55;
  }

  MEMORY[0x24C21C9E0](v54, v56);

  MEMORY[0x24C21C9E0](0x7265747461622027, 0xEB00000000203A79);
  v68[0] = *(v1 + 296);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A848760);
  if ((*(v1 + v6[19]) & 0x40) != 0)
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if ((*(v1 + v6[19]) & 0x40) != 0)
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v57, v58);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848780);
  MEMORY[0x24C21C9E0](*(v1 + v6[18]), *(v1 + v6[18] + 8));
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8487A0);
  MEMORY[0x24C21C9E0](*(v1 + v6[20]), *(v1 + v6[20] + 8));
  MEMORY[0x24C21C9E0](0xD00000000000001CLL, 0x800000024A8487C0);
  v59 = *(v1 + v6[26]);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](15882, 0xE200000000000000);
  return v70;
}

uint64_t FMIPItem.init(item:updateType:address:location:crowdSourcedLocation:connected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v89) = a6;
  v94 = a2;
  v92 = a7;
  v11 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v77 - v13;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v90 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPItem();
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4[1];
  v23 = *a5;
  v93 = *(a5 + 1);
  v88 = *(a1 + *(v19 + 76));
  if (v22)
  {
    v24 = *a4;
    v25 = a4[2];
  }

  else
  {
    v24 = *(a1 + 384);
    v22 = *(a1 + 392);
    v25 = *(a1 + 400);
    v26 = v22;
  }

  v27 = *(a1 + v17[25]);
  if (v27 == 1)
  {

    v24 = 0;
    v22 = 0;
    v25 = 0;
  }

  memcpy(v97, a3, 0x120uLL);
  if (sub_24A6921A8(v97) == 1)
  {
    memcpy(v95, (a1 + 8), sizeof(v95));
    sub_24A67E964(v95, v96, &unk_27EF5E0D0, &qword_24A8319E0);
    v28 = v95;
  }

  else
  {
    v28 = a3;
  }

  memcpy(v96, v28, sizeof(v96));
  memcpy(v21 + 8, v96, 0x120uLL);
  v21[296] = *(a1 + 296);
  *(v21 + 38) = *(a1 + 304);
  v29 = v93;
  if (!v93)
  {
    v23 = *(a1 + 312);
    v93 = *(a1 + 320);
    v30 = v93;
    v29 = v93;
  }

  *(v21 + 39) = v23;
  *(v21 + 20) = v29;
  v31 = *(a1 + 344);
  *(v21 + 42) = *(a1 + 336);
  *(v21 + 43) = v31;
  *&v93 = v31;
  v32 = *(a1 + 360);
  *(v21 + 44) = *(a1 + 352);
  *(v21 + 45) = v32;
  v87 = v32;
  v33 = *(a1 + 376);
  *(v21 + 46) = *(a1 + 368);
  *(v21 + 47) = v33;
  v86 = v33;
  v21[v17[21]] = *(a1 + v17[21]);
  v21[v17[22]] = *(a1 + v17[22]);
  v21[v17[25]] = v27;
  if (!v22)
  {
    v24 = *(a1 + 384);
    v22 = *(a1 + 392);
    v25 = *(a1 + 400);
    v34 = v22;
  }

  if ((v89 == 2) | v89 & 1)
  {
    v35 = v88;
  }

  else
  {
    v35 = v88 & 0xFFFFFFFFFFFFFFBFLL;
  }

  *(v21 + 48) = v24;
  *(v21 + 49) = v22;
  *(v21 + 50) = v25;
  sub_24A67E964(a1 + v17[13], &v21[v17[13]], &unk_27EF5E100, &unk_24A839DB0);
  v36 = v17[14];
  v38 = *(a1 + v36);
  v89 = *(a1 + v36 + 8);
  v37 = v89;
  v39 = &v21[v36];
  *v39 = v38;
  *(v39 + 1) = v37;
  v40 = v17[15];
  v42 = *(a1 + v40);
  v82 = *(a1 + v40 + 8);
  v41 = v82;
  v43 = &v21[v40];
  *v43 = v42;
  *(v43 + 1) = v41;
  v44 = v17[16];
  v45 = a1 + v44;
  v46 = *(a1 + v44 + 8);
  v88 = *(a1 + v44);
  v48 = *(a1 + v44 + 24);
  v84 = *(a1 + v44 + 16);
  v47 = v84;
  v85 = v46;
  v83 = v48;
  v49 = &v21[v44];
  *v49 = v88;
  *(v49 + 1) = v46;
  *(v49 + 2) = v47;
  *(v49 + 3) = v48;
  v81 = *(v45 + 32);
  v49[32] = v81;
  sub_24A7A9180(a1 + v17[24], &v21[v17[24]], type metadata accessor for FMIPProductType);
  v50 = v17[17];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 24);
  v54 = *(a1 + v50 + 32);
  v79 = *(a1 + v50 + 16);
  v53 = v79;
  v80 = v54;
  v55 = &v21[v50];
  *v55 = *v51;
  *(v55 + 2) = v53;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v56 = v17[18];
  v58 = *(a1 + v56);
  v78 = *(a1 + v56 + 8);
  v57 = v78;
  v59 = &v21[v56];
  *v59 = v58;
  *(v59 + 1) = v57;
  *&v21[v17[19]] = v35;
  v60 = v17[20];
  v62 = *(a1 + v60);
  v77 = *(a1 + v60 + 8);
  v61 = v77;
  v63 = &v21[v60];
  *v63 = v62;
  *(v63 + 1) = v61;
  *&v21[v17[23]] = *(a1 + v17[23]);
  v64 = *a1;
  v65 = v90;
  sub_24A7A9180(v94, v90, type metadata accessor for FMIPItemUpdateType);
  v66 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
  v67 = sub_24A82CA34();
  v68 = *(v67 - 8);
  v69 = v64 + v66;
  v70 = v91;
  (*(v68 + 16))(v91, v69, v67);
  (*(v68 + 56))(v70, 0, 1, v67);
  v71 = type metadata accessor for FMIPItemUpdateContext(0);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  v74 = swift_allocObject();

  sub_24A76ED78(v88, v85);

  v75 = sub_24A7B3A90(v65, v70, v74, v64);

  sub_24A7A91E8(v94, type metadata accessor for FMIPItemUpdateType);
  *v21 = v75;
  *&v21[v17[26]] = *(a1 + v17[26]);
  sub_24A6A23F8(v21, v92, type metadata accessor for FMIPItem);
  return sub_24A7A91E8(a1, type metadata accessor for FMIPItem);
}

uint64_t FMIPItem.init(item:safeLocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v73 - v8;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v10 = *(*(updated - 8) + 64);
  v11 = MEMORY[0x28223BE20](updated);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  memcpy(v91, (a1 + 8), 0x120uLL);
  memcpy((a3 + 8), (a1 + 8), 0x121uLL);
  v16 = *(a1 + 304);
  v85 = *(a1 + 320);
  v17 = v85;
  *(a3 + 304) = v16;
  *(a3 + 320) = v17;
  v18 = *(a1 + 336);
  v89 = *(a1 + 344);
  v19 = v89;
  *(a3 + 336) = v18;
  *(a3 + 344) = v19;
  v20 = *(a1 + 352);
  v88 = *(a1 + 360);
  v21 = v88;
  *(a3 + 352) = v20;
  *(a3 + 360) = v21;
  v22 = *(a1 + 368);
  v87 = *(a1 + 376);
  v23 = v87;
  *(a3 + 368) = v22;
  *(a3 + 376) = v23;
  v24 = type metadata accessor for FMIPItem();
  *(a3 + v24[21]) = *(a1 + v24[21]);
  *(a3 + v24[22]) = *(a1 + v24[22]);
  *(a3 + v24[25]) = *(a1 + v24[25]);
  v25 = *(a1 + 384);
  v84 = *(a1 + 392);
  v26 = v84;
  v27 = *(a1 + 400);
  *(a3 + 384) = v25;
  *(a3 + 392) = v26;
  *(a3 + 400) = v27;
  sub_24A67E964(a1 + v24[13], a3 + v24[13], &unk_27EF5E100, &unk_24A839DB0);
  v28 = v24[14];
  v30 = *(a1 + v28);
  v78 = *(a1 + v28 + 8);
  v29 = v78;
  v31 = (a3 + v28);
  *v31 = v30;
  v31[1] = v29;
  v32 = v24[15];
  v34 = *(a1 + v32);
  v77 = *(a1 + v32 + 8);
  v33 = v77;
  v35 = (a3 + v32);
  *v35 = v34;
  v35[1] = v33;
  v36 = v24[16];
  v37 = a1 + v36;
  v38 = *(a1 + v36);
  v82 = *(a1 + v36 + 8);
  v39 = v82;
  v83 = v38;
  v40 = *(a1 + v36 + 16);
  v80 = *(a1 + v36 + 24);
  v41 = v80;
  v81 = v40;
  v42 = a3 + v36;
  *v42 = v38;
  *(v42 + 8) = v39;
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  v79 = *(v37 + 32);
  *(v42 + 32) = v79;
  sub_24A7A9180(a1 + v24[24], a3 + v24[24], type metadata accessor for FMIPProductType);
  v43 = v24[17];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 24);
  v47 = *(a1 + v43 + 32);
  v75 = *(a1 + v43 + 16);
  v46 = v75;
  v76 = v47;
  v48 = a3 + v43;
  *v48 = *v44;
  *(v48 + 16) = v46;
  *(v48 + 24) = v45;
  *(v48 + 32) = v47;
  v49 = v24[18];
  v50 = *(a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a3 + v49);
  *v52 = v50;
  v52[1] = v51;
  *(a3 + v24[19]) = *(a1 + v24[19]);
  v53 = v24[20];
  v54 = *(a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a3 + v53);
  *v56 = v54;
  v56[1] = v55;
  *(a3 + v24[23]) = a2;
  v57 = *a1;
  v74 = v15;
  swift_storeEnumTagMultiPayload();
  sub_24A7A9180(v15, v13, type metadata accessor for FMIPItemUpdateType);
  v58 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
  v59 = sub_24A82CA34();
  v60 = *(v59 - 8);
  v61 = v57 + v58;
  v62 = v86;
  (*(v60 + 16))(v86, v61, v59);
  (*(v60 + 56))(v62, 0, 1, v59);
  v63 = type metadata accessor for FMIPItemUpdateContext(0);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v66 = swift_allocObject();

  sub_24A67E964(v91, &v90, &unk_27EF5E0D0, &qword_24A8319E0);
  v67 = v85;
  v68 = v84;

  v69 = v67;

  sub_24A76ED78(v83, v82);

  v70 = sub_24A7B3A90(v73, v62, v66, v57);

  sub_24A7A91E8(v74, type metadata accessor for FMIPItemUpdateType);
  *a3 = v70;
  v71 = *(a1 + v24[26]);
  result = sub_24A7A91E8(a1, type metadata accessor for FMIPItem);
  *(a3 + v24[26]) = v71;
  return result;
}

uint64_t FMIPItem.init(with:from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v445 = a2;
  v447 = a3;
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v463 = (&v443 - v6);
  v7 = sub_24A82CAA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v454 = &v443 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v443 - v13;
  v458 = type metadata accessor for FMIPItem();
  v15 = *(*(v458 - 8) + 64);
  MEMORY[0x28223BE20](v458);
  v17 = &v443 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  sub_24A67DF6C(a1, v18);
  v462 = (*(v19 + 96))(v18, v19);
  if (!v462)
  {
    result = sub_24A82D934();
    __break(1u);
    return result;
  }

  sub_24A68808C(v495);
  memcpy(v17 + 8, v495, 0x120uLL);
  v20 = a1[3];
  v21 = a1[4];
  sub_24A67DF6C(a1, v20);
  v22 = (*(v21 + 40))(v20, v21);
  _s8FMIPCore21FMIPItemBatteryStatusO8rawValueACSgSi_tcfC_0(v22, v492);
  v23 = v492[0];
  if (LOBYTE(v492[0]) == 7)
  {
    v23 = 0;
  }

  v17[296] = v23;
  *(v17 + 40) = 0;
  *(v17 + 41) = 0;
  *(v17 + 39) = 0;
  v24 = a1[3];
  v25 = a1[4];
  sub_24A67DF6C(a1, v24);
  (*(v25 + 24))(v24, v25);
  v26 = v7;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v27 = sub_24A82CA54();
    v28 = v29;
    (*(v8 + 8))(v14, v7);
  }

  v30 = v8;
  *(v17 + 42) = v27;
  *(v17 + 43) = v28;
  v31 = a1[3];
  v32 = a1[4];
  sub_24A67DF6C(a1, v31);
  v33 = v454;
  (*(v32 + 16))(v31, v32);
  v34 = sub_24A82CA54();
  v36 = v35;
  v37 = *(v30 + 8);
  v37(v33, v26);
  *(v17 + 44) = v34;
  *(v17 + 45) = v36;
  v38 = a1[3];
  v39 = a1[4];
  sub_24A67DF6C(a1, v38);
  (*(v39 + 48))(v38, v39);
  v40 = sub_24A82CA54();
  v42 = v41;
  v452 = v26;
  v450 = v37;
  v37(v33, v26);
  *(v17 + 46) = v40;
  *(v17 + 47) = v42;
  *(v17 + 49) = 0;
  *(v17 + 50) = 0;
  *(v17 + 48) = 0;
  v43 = a1[3];
  v44 = a1[4];
  sub_24A67DF6C(a1, v43);
  v45 = (*(v44 + 72))(v43, v44);
  v451 = v30 + 8;
  if (v45)
  {
    v46 = v463;
    FMIPItemLostModeMetadata.init(lostModeInfo:)(v45, v463);
    v47 = 0;
    v48 = v458;
  }

  else
  {
    v47 = 1;
    v48 = v458;
    v46 = v463;
  }

  v49 = type metadata accessor for FMIPItemLostModeMetadata();
  (*(*(v49 - 8) + 56))(v46, v47, 1, v49);
  sub_24A70B7FC(v46, &v17[v48[13]]);
  v50 = a1[3];
  v51 = a1[4];
  sub_24A67DF6C(a1, v50);
  v52 = (*(v51 + 88))(v50, v51);
  v53 = [v52 destination];

  v54 = sub_24A82CFC4();
  v56 = v55;

  v57 = &v17[v48[15]];
  *v57 = v54;
  v57[1] = v56;
  v58 = v462;
  v59 = [v58 roleEmoji];
  v60 = sub_24A82CFC4();
  v62 = v61;

  v63 = [v58 role];
  v64 = sub_24A82CFC4();
  v66 = v65;

  v67 = [v58 roleId];
  v446 = v58;

  v68 = &v17[v48[17]];
  *v68 = v67;
  *(v68 + 1) = v60;
  *(v68 + 2) = v62;
  *(v68 + 3) = v64;
  *(v68 + 4) = v66;
  v69 = a1[3];
  v70 = a1[4];
  sub_24A67DF6C(a1, v69);
  v72 = (*(v70 + 104))(v69, v70);
  if (!v71)
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v74 = [objc_opt_self() bundleForClass_];
    v442 = 0xE000000000000000;
    v72 = sub_24A82C6F4();
    v76 = v75;

    v71 = v76;
  }

  v77 = v452;
  v78 = v458;
  v79 = &v17[*(v458 + 72)];
  *v79 = v72;
  v79[1] = v71;
  v80 = a1[3];
  v81 = a1[4];
  sub_24A67DF6C(a1, v80);
  v82 = (*(v81 + 112))(v80, v81);
  v83 = &v17[v78[20]];
  *v83 = v82;
  v83[1] = v84;
  *&v17[v78[23]] = MEMORY[0x277D84F90];
  v85 = a1[3];
  v86 = a1[4];
  sub_24A67DF6C(a1, v85);
  v87 = (*(v86 + 128))(v85, v86);
  v463 = a1;
  v456 = v17;
  if (!v87 || (v88 = v87, v89 = [v87 layoutTemplate], v88, !v89))
  {
    v443 = 0;
LABEL_20:
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v125 = sub_24A82CDC4();
    sub_24A6797D0(v125, qword_281518F88);
    sub_24A698230(a1, v492);
    sub_24A698230(a1, v489);
    v126 = sub_24A82CD94();
    v127 = sub_24A82D504();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v462 = swift_slowAlloc();
      v486[0] = v462;
      *v128 = 136315394;
      v129 = v77;
      v130 = v493;
      v131 = v494;
      sub_24A67DF6C(v492, v493);
      v132 = v454;
      (*(v131 + 16))(v130, v131);
      sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
      v133 = sub_24A82DB84();
      v135 = v134;
      v136 = v132;
      v78 = v458;
      v450(v136, v129);
      sub_24A6876E8(v492);
      v137 = sub_24A68761C(v133, v135, v486);

      *(v128 + 4) = v137;
      *(v128 + 12) = 2048;
      v138 = v490;
      v139 = v491;
      sub_24A67DF6C(v489, v490);
      v140 = *(v139 + 64);
      v141 = v139;
      a1 = v463;
      v142 = v140(v138, v141);
      sub_24A6876E8(v489);
      *(v128 + 14) = v142;
      _os_log_impl(&dword_24A675000, v126, v127, "FMIPItem: No part info provided for beacon%s (part identifier: %ld)", v128, 0x16u);
      v143 = v462;
      sub_24A6876E8(v462);
      MEMORY[0x24C21E1D0](v143, -1, -1);
      MEMORY[0x24C21E1D0](v128, -1, -1);
    }

    else
    {
      sub_24A6876E8(v489);

      sub_24A6876E8(v492);
    }

    v144 = &v17[v78[16]];
    v144[32] = 0;
    *v144 = 0u;
    *(v144 + 1) = 0u;
    v145 = a1[3];
    v146 = a1[4];
    sub_24A67DF6C(a1, v145);
    v147 = (*(v146 + 8))(v145, v146);
    v148 = &v17[v78[14]];
    *v148 = v147;
    v148[1] = v149;
    goto LABEL_29;
  }

  sub_24A679170(0, &qword_27EF5EA00, 0x277D495F8);
  v90 = sub_24A82D244();

  MEMORY[0x28223BE20](v91);
  v442 = a1;
  v92 = sub_24A79F2A8(sub_24A7A8134, (&v443 - 4), v90);
  v443 = 0;

  if (!v92)
  {
    v17 = v456;
    goto LABEL_20;
  }

  v460 = v92;
  sub_24A7A3CB0(v460, v492);
  v93 = v492[0];
  v94 = v492[1];
  v95 = v492[2];
  v96 = v493;
  v97 = v494;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  LODWORD(i) = v97;
  v462 = v95;
  v98 = sub_24A82CDC4();
  sub_24A6797D0(v98, qword_281518F88);
  sub_24A698230(a1, v492);
  sub_24A698230(a1, v489);

  v99 = sub_24A82CD94();
  v100 = sub_24A82D504();

  v101 = v96;
  if (os_log_type_enabled(v99, v100))
  {
    v102 = swift_slowAlloc();
    v455 = swift_slowAlloc();
    v483[0] = v455;
    *v102 = 136315650;
    v103 = v77;
    v104 = v493;
    v457 = v93;
    v105 = v494;
    sub_24A67DF6C(v492, v493);
    v106 = *(v105 + 16);
    v107 = v454;
    v459 = v101;
    v106(v104, v105);
    sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v108 = sub_24A82DB84();
    v110 = v109;
    v450(v107, v103);
    sub_24A6876E8(v492);
    v111 = sub_24A68761C(v108, v110, v483);

    *(v102 + 4) = v111;
    *(v102 + 12) = 2048;
    v112 = v490;
    v113 = v491;
    sub_24A67DF6C(v489, v490);
    v114 = *(v113 + 64);
    v115 = v113;
    v93 = v457;
    v78 = v458;
    v116 = v114(v112, v115);
    sub_24A6876E8(v489);
    *(v102 + 14) = v116;
    *(v102 + 22) = 2080;
    v486[0] = v93;
    v486[1] = v94;
    v453 = v99;
    v117 = v462;
    v486[2] = v462;
    v487 = v459;
    LOBYTE(v103) = v100;
    v118 = i;
    LOBYTE(v488) = i;
    v119 = FMIPPartInfo.debugDescription.getter();
    v121 = sub_24A68761C(v119, v120, v483);
    v101 = v459;

    *(v102 + 24) = v121;
    v122 = v453;
    _os_log_impl(&dword_24A675000, v453, v103, "FMIPItem: Part info for %s (part identifier: %ld) is %s", v102, 0x20u);
    v123 = v455;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v123, -1, -1);
    v124 = v102;
    a1 = v463;
    MEMORY[0x24C21E1D0](v124, -1, -1);

    v17 = v456;
  }

  else
  {
    sub_24A6876E8(v489);

    sub_24A6876E8(v492);
    v17 = v456;
    v117 = v462;
    v118 = i;
  }

  v150 = &v17[v78[16]];
  *v150 = v93;
  *(v150 + 1) = v94;
  *(v150 + 2) = v117;
  *(v150 + 3) = v101;
  v150[32] = v118;
  v151 = &v17[v78[14]];
  *v151 = v93;
  v151[1] = v94;

LABEL_29:
  sub_24A698230(a1, v492);
  sub_24A6CFB24(v492, &v17[v78[24]]);
  v152 = a1[3];
  v153 = a1[4];
  sub_24A67DF6C(a1, v152);
  v154 = (*(v153 + 128))(v152, v153);
  if (v154)
  {
    v155 = v154;
    v156 = [v154 eligibleForPairing];

    v157 = v156 ^ 1;
  }

  else
  {
    v157 = 0;
  }

  v158 = v78[25];
  v444 = v157;
  v17[v158] = v157;
  v159 = a1[3];
  v160 = a1[4];
  sub_24A67DF6C(a1, v159);
  v17[v78[21]] = (*(v160 + 152))(v159, v160) & 1;
  v161 = a1[3];
  v162 = a1[4];
  sub_24A67DF6C(a1, v161);
  v17[v78[22]] = (*(v162 + 136))(v161, v162) == 76;
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_24A839D90;
  v164 = *MEMORY[0x277D49798];
  *(v163 + 32) = *MEMORY[0x277D49798];
  v462 = (v163 + 32);
  v165 = *MEMORY[0x277D497D0];
  *(v163 + 40) = 16;
  *(v163 + 48) = v165;
  v166 = *MEMORY[0x277D497B0];
  *(v163 + 56) = 4;
  *(v163 + 64) = v166;
  v167 = *MEMORY[0x277D497B8];
  *(v163 + 72) = 2;
  *(v163 + 80) = v167;
  i = *MEMORY[0x277D497E0];
  v168 = i;
  *(v163 + 88) = 8;
  *(v163 + 96) = v168;
  v169 = *MEMORY[0x277D49790];
  *(v163 + 104) = 128;
  *(v163 + 112) = v169;
  v170 = *MEMORY[0x277D497A0];
  *(v163 + 120) = 256;
  *(v163 + 128) = v170;
  v171 = *MEMORY[0x277D49800];
  *(v163 + 136) = 64;
  *(v163 + 144) = v171;
  v172 = *MEMORY[0x277D497D8];
  *(v163 + 152) = 512;
  *(v163 + 160) = v172;
  *(v163 + 168) = 0x4000;
  v173 = v164;
  v174 = v165;
  v175 = v166;
  v176 = v167;
  v459 = v173;
  v453 = v174;
  v455 = v175;
  v449 = v176;
  v177 = i;
  v178 = v169;
  v179 = v170;
  v180 = v171;
  v181 = v172;
  v182 = sub_24A78A1B8(v163);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v183 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v492[0] = v182;
  sub_24A784AB0(0x2000, v183, isUniquelyReferenced_nonNull_native);
  v185 = v492[0];
  v186 = *MEMORY[0x277D497E8];
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v492[0] = v185;
  sub_24A784AB0(32, v186, v187);
  v188 = v492[0];
  v189 = *MEMORY[0x277D497F0];
  v190 = swift_isUniquelyReferenced_nonNull_native();
  v492[0] = v188;
  sub_24A784AB0(1024, v189, v190);
  v191 = (v492[0] + 64);
  v192 = 1 << *(v492[0] + 32);
  v193 = -1;
  if (v192 < 64)
  {
    v193 = ~(-1 << v192);
  }

  v194 = v193 & *(v492[0] + 64);
  v195 = (v192 + 63) >> 6;
  v462 = v492[0];

  v196 = 0;
  v457 = MEMORY[0x277D84F90];
  for (i = v191; v194; *&v208[8 * v207 + 32] = v205)
  {
LABEL_39:
    while (1)
    {
      v198 = __clz(__rbit64(v194));
      v194 &= v194 - 1;
      v199 = (v196 << 9) | (8 * v198);
      v200 = *(v462[6] + v199);
      v460 = *(v462[7] + v199);
      v201 = v463[3];
      v170 = v463[4];
      sub_24A67DF6C(v463, v201);
      v175 = v170 + 10;
      v202 = v170[10];
      v203 = v200;
      if (*(v202(v201, v170) + 16))
      {
        sub_24A77EE90(v203);
        if (v204)
        {
          break;
        }
      }

      v191 = i;
      if (!v194)
      {
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v457 = sub_24A78018C(0, *(v457 + 2) + 1, 1, v457);
    }

    v205 = v460;
    v191 = i;
    v207 = *(v457 + 2);
    v206 = *(v457 + 3);
    if (v207 >= v206 >> 1)
    {
      v457 = sub_24A78018C((v206 > 1), v207 + 1, 1, v457);
    }

    v208 = v457;
    *(v457 + 2) = v207 + 1;
  }

  while (1)
  {
LABEL_35:
    v197 = v196 + 1;
    if (__OFADD__(v196, 1))
    {
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    if (v197 >= v195)
    {
      break;
    }

    v194 = *(v191 + v197);
    v196 = v196 + 1;
    if (v194)
    {
      v196 = v197;
      goto LABEL_39;
    }
  }

  v493 = &type metadata for KoreaFeatureFlag;
  v494 = sub_24A6AF8B0();
  v209 = sub_24A82C4D4();
  sub_24A6876E8(v492);
  if (v209)
  {
    v210 = 0;
  }

  else
  {
    v210 = sub_24A82C4B4();
  }

  v211 = v463;
  v212 = sub_24A82C514();
  v493 = v212;
  v494 = sub_24A678A1C(&unk_281514680, MEMORY[0x277D08A28]);
  v213 = sub_24A697E3C(v492);
  (*(*(v212 - 8) + 104))(v213, *MEMORY[0x277D089E8], v212);
  LOBYTE(v212) = sub_24A82C4D4();
  sub_24A6876E8(v492);
  if (v212 & 1) == 0 || (v210)
  {
    goto LABEL_64;
  }

  v214 = v211[3];
  v215 = v211[4];
  sub_24A67DF6C(v211, v214);
  if (!*((*(v215 + 80))(v214, v215) + 16))
  {

    goto LABEL_64;
  }

  sub_24A77EE90(*MEMORY[0x277D497A8]);
  v217 = v216;

  if ((v217 & 1) == 0)
  {
LABEL_64:
    v226 = v457;
    goto LABEL_65;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v218 = v457;
  }

  else
  {
    v218 = sub_24A78018C(0, *(v457 + 2) + 1, 1, v457);
  }

  v220 = *(v218 + 2);
  v219 = *(v218 + 3);
  v221 = v218;
  v222 = v219 >> 1;
  v223 = v220 + 1;
  if (v219 >> 1 <= v220)
  {
    v221 = sub_24A78018C((v219 > 1), v220 + 1, 1, v218);
    v219 = *(v221 + 3);
    v222 = v219 >> 1;
  }

  *(v221 + 2) = v223;
  *&v221[8 * v220 + 32] = 2048;
  v224 = v220 + 2;
  if (v222 < v224)
  {
    v225 = sub_24A78018C((v219 > 1), v224, 1, v221);
  }

  else
  {
    v225 = v221;
  }

  *(v225 + 2) = v224;
  *&v225[8 * v223 + 32] = 4096;
  v226 = v225;
LABEL_65:
  v227 = v226;
  v228 = *(v226 + 2);
  v457 = v227;
  v229 = 0;
  if (v228)
  {
    v230 = (v227 + 32);
    do
    {
      v232 = *v230++;
      v231 = v232;
      if ((v232 & ~v229) == 0)
      {
        v231 = 0;
      }

      v229 |= v231;
      --v228;
    }

    while (v228);
  }

  v233 = v211[3];
  v234 = v211[4];
  sub_24A67DF6C(v211, v233);
  v235 = (*(v234 + 168))(v233, v234);
  v236 = v229 & 0xFFFFFFFFFFFFFFEFLL;
  if (v235)
  {
    v236 = v229;
  }

  *(v456 + 38) = v236;
  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_24A835E80;
  *(v237 + 32) = v453;
  *(v237 + 40) = xmmword_24A835E90;
  *(v237 + 56) = v455;
  *(v237 + 64) = xmmword_24A835EA0;
  *(v237 + 80) = v459;
  *(v237 + 88) = xmmword_24A835EB0;
  *(v237 + 104) = v449;
  v238 = MEMORY[0x277D497C8];
  *(v237 + 112) = xmmword_24A835EC0;
  v239 = *v238;
  *(v237 + 128) = v239;
  *(v237 + 136) = xmmword_24A835ED0;
  v240 = v239;
  v241 = sub_24A78A0C0(v237);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD08, &unk_24A8384E0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v175 = (v241 + 64);
  v242 = 1 << *(v241 + 32);
  v243 = -1;
  if (v242 < 64)
  {
    v243 = ~(-1 << v242);
  }

  v244 = v243 & *(v241 + 64);
  v170 = ((v242 + 63) >> 6);
  i = v241;

  v245 = 0;
  v448 = MEMORY[0x277D84F90];
  v459 = (v241 + 64);
  while (v244)
  {
LABEL_81:
    v247 = __clz(__rbit64(v244)) | (v245 << 6);
    v248 = *(*(i + 6) + 8 * v247);
    v244 &= v244 - 1;
    v249 = *(i + 7) + 16 * v247;
    v251 = *v249;
    v250 = *(v249 + 8);
    v460 = v251;
    v455 = v250;
    v252 = v211[3];
    v253 = v211[4];
    sub_24A67DF6C(v211, v252);
    v196 = (v253 + 80);
    v254 = *(v253 + 80);
    v255 = v248;
    v256 = v254(v252, v253);
    if (*(v256 + 16) && (v257 = sub_24A77EE90(v255), (v258 & 1) != 0))
    {
      v259 = *(*(v256 + 56) + 8 * v257);

      v260 = [v259 state];

      v175 = v459;
      v211 = v463;
      if (v260 == v460)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v448 = sub_24A780178(0, *(v448 + 2) + 1, 1, v448);
        }

        v261 = v455;
        v263 = *(v448 + 2);
        v262 = *(v448 + 3);
        if (v263 >= v262 >> 1)
        {
          v448 = sub_24A780178((v262 > 1), v263 + 1, 1, v448);
        }

        v264 = v448;
        *(v448 + 2) = v263 + 1;
        *&v264[8 * v263 + 32] = v261;
      }
    }

    else
    {

      v211 = v463;
      v175 = v459;
    }
  }

  while (1)
  {
    v246 = v245 + 1;
    if (__OFADD__(v245, 1))
    {
      goto LABEL_210;
    }

    if (v246 >= v170)
    {
      break;
    }

    v244 = *(v175 + v246);
    ++v245;
    if (v244)
    {
      v245 = v246;
      goto LABEL_81;
    }
  }

  v492[0] = &unk_285DBD728;
  sub_24A77E918(v448);
  v170 = v492[0];
  v265 = v211[3];
  v266 = v211[4];
  sub_24A67DF6C(v211, v265);
  v267 = (*(v266 + 80))(v265, v266);
  if (*(v267 + 16) && (v268 = sub_24A77EE90(v453), (v269 & 1) != 0))
  {
    v270 = *(*(v267 + 56) + 8 * v268);

    v271 = [v270 state];
  }

  else
  {

    v271 = -1;
  }

  if (qword_27EF5CBA0 != -1)
  {
    swift_once();
  }

  v175 = sub_24A82CDC4();
  v272 = sub_24A6797D0(v175, qword_27EF78C58);
  sub_24A698230(v463, v492);
  v273 = sub_24A82CD94();
  v274 = sub_24A82D504();
  if (!os_log_type_enabled(v273, v274))
  {

    sub_24A6876E8(v492);
    if (v271 <= 1)
    {
      goto LABEL_131;
    }

    goto LABEL_102;
  }

  v275 = swift_slowAlloc();
  v276 = swift_slowAlloc();
  v489[0] = v276;
  *v275 = 136446723;
  v460 = v272;
  i = v175;
  LODWORD(v459) = v274;
  v455 = v276;
  if (v271 > 1)
  {
    switch(v271)
    {
      case 2:
        v277 = 0xE500000000000000;
        v278 = 0x656C64692ELL;
        break;
      case 3:
        v277 = 0xE600000000000000;
        v278 = 0x726F7272652ELL;
        break;
      case 4:
        v277 = 0xE700000000000000;
        v278 = 0x6465756575712ELL;
        break;
      default:
        goto LABEL_127;
    }
  }

  else if (v271 == -1)
  {
    v277 = 0xE800000000000000;
    v278 = 0x6E776F6E6B6E752ELL;
  }

  else if (v271)
  {
    if (v271 == 1)
    {
      v277 = 0xE800000000000000;
      v278 = 0x676E69646E65702ELL;
      goto LABEL_130;
    }

LABEL_127:
    v277 = 0xEF65756C61565F64;
    v278 = 0x656C646E61686E55;
  }

  else
  {
    v277 = 0xE800000000000000;
    v278 = 0x676E696E6E75722ELL;
  }

LABEL_130:
  v298 = sub_24A68761C(v278, v277, v489);

  *(v275 + 4) = v298;
  *(v275 + 12) = 2160;
  *(v275 + 14) = 1752392040;
  *(v275 + 22) = 2081;
  v299 = v493;
  v300 = v494;
  sub_24A67DF6C(v492, v493);
  v301 = v454;
  (*(v300 + 16))(v299, v300);
  sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
  v302 = v452;
  v303 = sub_24A82DB84();
  v305 = v304;
  v450(v301, v302);
  sub_24A6876E8(v492);
  v306 = sub_24A68761C(v303, v305, v489);

  *(v275 + 24) = v306;
  _os_log_impl(&dword_24A675000, v273, v459, "FMIPItem reported taskInfo PlaySound %{public}s for %{private,mask.hash}s.", v275, 0x20u);
  v307 = v455;
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v307, -1, -1);
  MEMORY[0x24C21E1D0](v275, -1, -1);

  v175 = i;
  if (v271 > 1)
  {
LABEL_102:
    if (v271 == 2)
    {
      goto LABEL_139;
    }

    if (v271 != 3)
    {
      if (v271 != 4)
      {
        goto LABEL_139;
      }

      v279 = swift_isUniquelyReferenced_nonNull_native();
      v280 = v463;
      if ((v279 & 1) == 0)
      {
        v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
      }

      v282 = v170[2];
      v281 = v170[3];
      if (v282 >= v281 >> 1)
      {
        v170 = sub_24A780178((v281 > 1), v282 + 1, 1, v170);
      }

      v170[2] = v282 + 1;
      v283 = &v170[v282];
      v284 = 2048;
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
    }

    v280 = v463;
    v286 = v170[2];
    v285 = v170[3];
    if (v286 >= v285 >> 1)
    {
      v170 = sub_24A780178((v285 > 1), v286 + 1, 1, v170);
    }

    v170[2] = v286 + 1;
    v170[v286 + 4] = 4096;
    v287 = v280[3];
    v288 = v280[4];
    sub_24A67DF6C(v280, v287);
    v289 = (*(v288 + 80))(v287, v288);
    if (!*(v289 + 16) || (v290 = sub_24A77EE90(v453), (v291 & 1) == 0))
    {

      goto LABEL_147;
    }

    v292 = *(*(v289 + 56) + 8 * v290);

    v196 = [v292 error];

    if (!v196)
    {
      goto LABEL_139;
    }

    swift_getErrorValue();
    v293 = sub_24A774394(v465);
    v295 = v294;
    v296 = *MEMORY[0x277D49780];
    if (v293 == sub_24A82CFC4() && v295 == v297)
    {

      goto LABEL_212;
    }

LABEL_211:
    v425 = sub_24A82DC04();

    if (v425)
    {
LABEL_212:
      swift_getErrorValue();
      if (sub_24A774234(v464) == 19)
      {
        sub_24A698230(v463, v492);
        v426 = sub_24A82CD94();
        v427 = sub_24A82D504();
        if (os_log_type_enabled(v426, v427))
        {
          v428 = swift_slowAlloc();
          v460 = swift_slowAlloc();
          v489[0] = v460;
          *v428 = 141558275;
          *(v428 + 4) = 1752392040;
          *(v428 + 12) = 2081;
          v429 = v493;
          v430 = v494;
          sub_24A67DF6C(v492, v493);
          v431 = *(v430 + 16);
          i = v175;
          v432 = v454;
          LODWORD(v459) = v427;
          v433 = v452;
          v431(v429, v430);
          sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
          v434 = sub_24A82DB84();
          v436 = v435;
          v437 = v432;
          v175 = i;
          v450(v437, v433);
          sub_24A6876E8(v492);
          v438 = sub_24A68761C(v434, v436, v489);

          *(v428 + 14) = v438;

          _os_log_impl(&dword_24A675000, v426, v459, "Link created on older OS version for %{private,mask.hash}s.", v428, 0x16u);
          v439 = v460;
          sub_24A6876E8(v460);
          MEMORY[0x24C21E1D0](v439, -1, -1);
          MEMORY[0x24C21E1D0](v428, -1, -1);
        }

        else
        {

          sub_24A6876E8(v492);
        }

        v441 = v170[2];
        v440 = v170[3];
        if (v441 >= v440 >> 1)
        {
          v170 = sub_24A780178((v440 > 1), v441 + 1, 1, v170);
        }

        v170[2] = v441 + 1;
        v170[v441 + 4] = 0x10000;
        goto LABEL_140;
      }
    }

LABEL_140:
    v280 = v463;
    goto LABEL_147;
  }

LABEL_131:
  if (v271 == -1)
  {
    goto LABEL_139;
  }

  if (v271)
  {
    if (v271 == 1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
      }

      v280 = v463;
      v309 = v170[2];
      v308 = v170[3];
      if (v309 >= v308 >> 1)
      {
        v170 = sub_24A780178((v308 > 1), v309 + 1, 1, v170);
      }

      v170[2] = v309 + 1;
      v283 = &v170[v309];
      v284 = 4;
      goto LABEL_146;
    }

LABEL_139:

    goto LABEL_140;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
  }

  v280 = v463;
  v311 = v170[2];
  v310 = v170[3];
  if (v311 >= v310 >> 1)
  {
    v170 = sub_24A780178((v310 > 1), v311 + 1, 1, v170);
  }

  v170[2] = v311 + 1;
  v283 = &v170[v311];
  v284 = 2;
LABEL_146:
  v283[4] = v284;
LABEL_147:
  v312 = v280[3];
  v313 = v280[4];
  sub_24A67DF6C(v280, v312);
  v314 = (*(v313 + 80))(v312, v313);
  if (*(v314 + 16) && (v315 = sub_24A77EE90(*MEMORY[0x277D49788]), (v316 & 1) != 0))
  {
    v317 = *(*(v314 + 56) + 8 * v315);

    v318 = [v317 state];

    if (v318)
    {
      if (v318 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
        }

        v320 = v170[2];
        v319 = v170[3];
        if (v320 >= v319 >> 1)
        {
          v170 = sub_24A780178((v319 > 1), v320 + 1, 1, v170);
        }

        v170[2] = v320 + 1;
        v321 = &v170[v320];
        v322 = 1024;
        goto LABEL_162;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
      }

      v324 = v170[2];
      v323 = v170[3];
      if (v324 >= v323 >> 1)
      {
        v170 = sub_24A780178((v323 > 1), v324 + 1, 1, v170);
      }

      v170[2] = v324 + 1;
      v321 = &v170[v324];
      v322 = 512;
LABEL_162:
      v321[4] = v322;
    }
  }

  else
  {
  }

  v325 = v280[3];
  v326 = v280[4];
  sub_24A67DF6C(v280, v325);
  v327 = (*(v326 + 176))(v325, v326);
  if (!(v444 & 1 | ((v327 & 1) == 0)))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
    }

    v329 = v170[2];
    v328 = v170[3];
    if (v329 >= v328 >> 1)
    {
      v170 = sub_24A780178((v328 > 1), v329 + 1, 1, v170);
    }

    v170[2] = v329 + 1;
    v170[v329 + 4] = 64;
  }

  v330 = v280[3];
  v331 = v280[4];
  sub_24A67DF6C(v280, v330);
  v332 = (*(v331 + 72))(v330, v331);
  if (v332)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_24A780178(0, v170[2] + 1, 1, v170);
    }

    v334 = v170[2];
    v333 = v170[3];
    v335 = v334 + 1;
    if (v334 >= v333 >> 1)
    {
      v170 = sub_24A780178((v333 > 1), v334 + 1, 1, v170);
    }

    v170[2] = v335;
    v170[v334 + 4] = 8;
LABEL_176:
    v336 = 0;
    v337 = 4;
    do
    {
      v338 = v170[v337];
      if ((v338 & ~v336) == 0)
      {
        v338 = 0;
      }

      v336 |= v338;
      ++v337;
      --v335;
    }

    while (v335);
  }

  else
  {
    v335 = v170[2];
    if (v335)
    {
      goto LABEL_176;
    }

    v336 = 0;
  }

  v339 = v458;
  v340 = v456;
  *&v456[*(v458 + 76)] = v336;
  *v340 = v445;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  sub_24A6797D0(v175, qword_281518F88);
  sub_24A698230(v280, v492);
  sub_24A698230(v280, v489);
  sub_24A698230(v280, v486);
  sub_24A698230(v280, v483);
  sub_24A698230(v280, v480);
  sub_24A698230(v280, v477);
  sub_24A698230(v280, v474);
  sub_24A698230(v280, v471);
  sub_24A698230(v280, v468);
  v341 = sub_24A82CD94();
  v342 = sub_24A82D504();
  if (os_log_type_enabled(v341, v342))
  {
    v343 = swift_slowAlloc();
    v344 = swift_slowAlloc();
    v467 = v344;
    *v343 = 136317186;
    v345 = v493;
    v346 = v494;
    sub_24A67DF6C(v492, v493);
    v347 = (*(v346 + 8))(v345, v346);
    v349 = v348;
    sub_24A6876E8(v492);
    v350 = sub_24A68761C(v347, v349, &v467);

    *(v343 + 4) = v350;
    *(v343 + 12) = 2080;
    v351 = v490;
    v352 = v491;
    sub_24A67DF6C(v489, v490);
    v353 = (*(v352 + 80))(v351, v352);
    if (*(v353 + 16) && (v354 = sub_24A77EE90(v453), (v355 & 1) != 0))
    {
      v356 = *(*(v353 + 56) + 8 * v354);
      v357 = v356;
    }

    else
    {
      v356 = 0;
    }

    v466 = v356;
    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v358 = sub_24A82D024();
    v360 = v359;
    sub_24A6876E8(v489);
    v361 = sub_24A68761C(v358, v360, &v467);

    *(v343 + 14) = v361;
    *(v343 + 22) = 2080;
    v362 = v487;
    v363 = v488;
    sub_24A67DF6C(v486, v487);
    v364 = (*(v363 + 8))(v362, v363);
    v366 = v365;
    sub_24A6876E8(v486);
    v367 = sub_24A68761C(v364, v366, &v467);

    *(v343 + 24) = v367;
    *(v343 + 32) = 2080;
    v368 = v484;
    v369 = v485;
    sub_24A67DF6C(v483, v484);
    v370 = (*(v369 + 80))(v368, v369);
    if (*(v370 + 16) && (v371 = sub_24A77EE90(*MEMORY[0x277D497F8]), (v372 & 1) != 0))
    {
      v373 = *(*(v370 + 56) + 8 * v371);
      v374 = v373;
    }

    else
    {
      v373 = 0;
    }

    v466 = v373;
    v375 = sub_24A82D024();
    v377 = v376;
    sub_24A6876E8(v483);
    v378 = sub_24A68761C(v375, v377, &v467);

    *(v343 + 34) = v378;
    *(v343 + 42) = 2080;
    v379 = v481;
    v380 = v482;
    sub_24A67DF6C(v480, v481);
    v381 = (*(v380 + 8))(v379, v380);
    v383 = v382;
    sub_24A6876E8(v480);
    v384 = sub_24A68761C(v381, v383, &v467);

    *(v343 + 44) = v384;
    *(v343 + 52) = 2080;
    v385 = v478;
    v386 = v479;
    sub_24A67DF6C(v477, v478);
    v387 = (*(v386 + 80))(v385, v386);
    if (*(v387 + 16) && (v388 = sub_24A77EE90(v449), (v389 & 1) != 0))
    {
      v390 = *(*(v387 + 56) + 8 * v388);
      v391 = v390;
    }

    else
    {
      v390 = 0;
    }

    v466 = v390;
    v392 = sub_24A82D024();
    v394 = v393;
    sub_24A6876E8(v477);
    v395 = sub_24A68761C(v392, v394, &v467);

    *(v343 + 54) = v395;
    *(v343 + 62) = 2080;
    v396 = v475;
    v397 = v476;
    sub_24A67DF6C(v474, v475);
    v398 = (*(v397 + 176))(v396, v397);
    if (v398)
    {
      v399 = 0;
    }

    else
    {
      v399 = 7630702;
    }

    if (v398)
    {
      v400 = 0xE000000000000000;
    }

    else
    {
      v400 = 0xE300000000000000;
    }

    sub_24A6876E8(v474);
    v401 = sub_24A68761C(v399, v400, &v467);

    *(v343 + 64) = v401;
    *(v343 + 72) = 2080;
    v402 = v472;
    v403 = v473;
    sub_24A67DF6C(v471, v472);
    v404 = (*(v403 + 8))(v402, v403);
    v406 = v405;
    sub_24A6876E8(v471);
    v407 = sub_24A68761C(v404, v406, &v467);

    *(v343 + 74) = v407;
    *(v343 + 82) = 2080;
    v408 = v469;
    v409 = v470;
    sub_24A67DF6C(v468, v469);
    v410 = v454;
    (*(v409 + 16))(v408, v409);
    v411 = sub_24A82CA54();
    v413 = v412;
    v450(v410, v452);
    sub_24A6876E8(v468);
    v414 = sub_24A68761C(v411, v413, &v467);

    *(v343 + 84) = v414;
    _os_log_impl(&dword_24A675000, v341, v342, "FMIPItem: %s taskInfo -> play sound %s\nFMIPItem: %s taskInfo -> stop sound %s\nFMIPItem: %s taskInfo -> notify when found active %s\n☎︎ FMIPItem: beacon is %s connected, '%s': %s", v343, 0x5Cu);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v344, -1, -1);
    MEMORY[0x24C21E1D0](v343, -1, -1);

    v280 = v463;
    v339 = v458;
  }

  else
  {

    sub_24A6876E8(v492);
    sub_24A6876E8(v489);
    sub_24A6876E8(v486);
    sub_24A6876E8(v483);
    sub_24A6876E8(v480);
    sub_24A6876E8(v477);
    sub_24A6876E8(v474);
    sub_24A6876E8(v471);
    sub_24A6876E8(v468);
  }

  v415 = v280[3];
  v416 = v280[4];
  sub_24A67DF6C(v280, v415);
  v417 = (*(v416 + 128))(v415, v416);
  v418 = v446;
  if (v417)
  {
    v419 = v417;
    [v417 rangeDistanceInMeters];
    v421 = v420;

    v422 = 20.0;
    if (v421 != 0.0)
    {
      v422 = v421;
    }
  }

  else
  {

    v422 = 20.0;
  }

  v423 = v456;
  *&v456[*(v339 + 104)] = v422;
  sub_24A6A23F8(v423, v447, type metadata accessor for FMIPItem);
  return sub_24A6876E8(v280);
}

unint64_t _s8FMIPCore21FMIPItemBatteryStatusO8rawValueACSgSi_tcfC_0@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t FMIPPartInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPPartInfo.symbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void sub_24A7A3CB0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 partName];
  v5 = sub_24A82CFC4();
  v7 = v6;

  v8 = [a1 partSymbol];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24A82CFC4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 partType];
  v14 = sub_24A82CFC4();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  FMIPPartType.init(rawValue:)(v17);

  v18 = v19;
  if (v19 == 5)
  {
    v18 = 4;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v18;
}

FMIPCore::FMIPPartType_optional __swiftcall FMIPPartType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPPartInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);

  sub_24A82D854();

  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x3A6C6F626D795320, 0xE900000000000020);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x21656E6F6E21;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x203A6570795420, 0xE700000000000000);
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (v5 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (v5 == 2)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = v10;
  }

  v11 = 0xEA0000000000656ELL;
  v12 = 0x6F6C61646E617473;
  if (v5)
  {
    v12 = 1702060387;
    v11 = 0xE400000000000000;
  }

  if (v5 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v5 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  MEMORY[0x24C21C9E0](v13, v14);

  return 0x203A656D614ELL;
}

uint64_t FMIPPartType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F6C61646E617473;
  v3 = 0x6475427466656CLL;
  v4 = 0x6475427468676972;
  if (v1 != 3)
  {
    v4 = 0x636972656E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702060387;
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

uint64_t sub_24A7A4054()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24A7A409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7A8F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7A40C4(uint64_t a1)
{
  v2 = sub_24A7A81B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7A4100(uint64_t a1)
{
  v2 = sub_24A7A81B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPPartInfo.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5EA08, &qword_24A839DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[1] = v1[3];
  v15[2] = v10;
  v16 = *(v1 + 32);
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A81B8();
  sub_24A82DD84();
  v20 = 0;
  v12 = v15[3];
  sub_24A82DB04();
  if (!v12)
  {
    v14 = v16;
    v19 = 1;
    sub_24A82DAD4();
    v18 = v14;
    v17 = 2;
    sub_24A7A820C();
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FMIPPartInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EA20, &qword_24A839DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A81B8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v25 = 0;
  v11 = sub_24A82DA44();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_24A82DA04();
  v20 = v14;
  v22 = 2;
  sub_24A7A8260();
  sub_24A82DA84();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;

  sub_24A6876E8(a1);
}

uint64_t sub_24A7A461C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7A46FC()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7A47C8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7A48B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0x6F6C61646E617473;
  v5 = 0xE700000000000000;
  v6 = 0x6475427466656CLL;
  v7 = 0xE800000000000000;
  v8 = 0x6475427468676972;
  if (v2 != 3)
  {
    v8 = 0x636972656E6567;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1702060387;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FMIPItem.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x120uLL);
  memcpy(a1, (v1 + 8), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

id FMIPItem.crowdSourcedLocation.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 312);
  v2 = *(v1 + 320);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPItem.groupIdentifier.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return v1;
}

uint64_t FMIPItem.identifier.getter()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return v1;
}

uint64_t FMIPItem.productIdentifier.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

id FMIPItem.location.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 384);
  v2 = *(v1 + 392);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPItem.name.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPItem.owner.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPItem.partInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPItem() + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_24A76ED78(v4, v5);
}

uint64_t FMIPItem.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPItem() + 68);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t FMIPItem.serialNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPItem.state.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPItem();
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t FMIPItem.systemVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPItem.safeLocations.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItem() + 92));
}

unint64_t sub_24A7A4F18(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      result = 0x5379726574746162;
      break;
    case 2:
      result = 0x696C696261706163;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x65644970756F7267;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x655079627261656ELL;
      break;
    case 11:
      result = 0x72656E776FLL;
      break;
    case 12:
      result = 0x6F666E4974726170;
      break;
    case 13:
      result = 1701605234;
      break;
    case 14:
      result = 0x754E6C6169726573;
      break;
    case 15:
      result = 0x736572616873;
      break;
    case 16:
      result = 0x65566D6574737973;
      break;
    case 17:
      result = 0x61636F4C65666173;
      break;
    case 18:
      result = 0x6E656E6F706D6F63;
      break;
    case 19:
      result = 0x54746375646F7270;
      break;
    case 20:
      v3 = 9;
      goto LABEL_17;
    case 21:
    case 24:
      v3 = 5;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 22:
      result = 0x49656C7070417369;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A7A51F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A7A4F18(*a1);
  v5 = v4;
  if (v3 == sub_24A7A4F18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7A527C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A7A4F18(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7A52E0()
{
  sub_24A7A4F18(*v0);
  sub_24A82D094();
}

uint64_t sub_24A7A5334()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A7A4F18(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7A5394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7A9084();
  *a2 = result;
  return result;
}

unint64_t sub_24A7A53C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A7A4F18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7A53F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7A9084();
  *a1 = result;
  return result;
}

uint64_t sub_24A7A542C(uint64_t a1)
{
  v2 = sub_24A7A82B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7A5468(uint64_t a1)
{
  v2 = sub_24A7A82B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v133 = sub_24A82CA34();
  v128 = *(v133 - 8);
  v3 = *(v128 + 64);
  v4 = MEMORY[0x28223BE20](v133);
  v131 = &v121[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v127 = &v121[-v6];
  v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v132 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v130 = &v121[-v11];
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v129 = &v121[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = type metadata accessor for FMIPProductType();
  v14 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v135 = &v121[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v121[-v18];
  v20 = sub_24A6BBA94(&qword_27EF5EA30, &qword_24A839DF8);
  v21 = *(v20 - 8);
  v136 = v20;
  v137 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v121[-v23];
  v25 = type metadata accessor for FMIPItem();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v121[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A82B4();
  v30 = v141;
  sub_24A82DD64();
  if (v30)
  {
    return sub_24A6876E8(a1);
  }

  v123 = v25;
  v124 = a1;
  v141 = v28;
  v138[295] = 0;
  sub_24A684C3C();
  v32 = v136;
  sub_24A82DA84();
  memcpy(v138, v139, 0x120uLL);
  nullsub_1(v138);
  memcpy(v140, v138, 0x120uLL);
  v33 = v141;
  memcpy(v141 + 1, v140, 0x120uLL);
  v138[0] = 1;
  sub_24A7A834C();
  sub_24A82DA84();
  *(v33 + 296) = v139[0];
  v138[0] = 2;
  sub_24A70B3A4();
  sub_24A82DA84();
  *(v33 + 304) = *&v139[0];
  v138[0] = 3;
  sub_24A687EF0();
  sub_24A82DA84();
  v34 = *(&v139[0] + 1);
  v35 = *&v139[1];
  v36 = 256;
  if (!BYTE1(v139[0]))
  {
    v36 = 0;
  }

  v37 = v36 | LOBYTE(v139[0]);
  v38 = 0x10000;
  if (!BYTE2(v139[0]))
  {
    v38 = 0;
  }

  *(v33 + 312) = v37 | v38 | (BYTE3(v139[0]) << 24);
  *(v33 + 320) = v34;
  *(v33 + 328) = v35;
  LOBYTE(v139[0]) = 4;
  *(v33 + 336) = sub_24A82DA44();
  *(v33 + 344) = v39;
  LOBYTE(v139[0]) = 5;
  *(v33 + 352) = sub_24A82DA44();
  *(v33 + 360) = v40;
  LOBYTE(v139[0]) = 6;
  *(v33 + 368) = sub_24A82DA44();
  *(v33 + 376) = v62;
  v138[0] = 7;
  sub_24A82DA84();
  v63 = *(&v139[0] + 1);
  v64 = *&v139[1];
  v65 = 256;
  if (!BYTE1(v139[0]))
  {
    v65 = 0;
  }

  v66 = v65 | LOBYTE(v139[0]);
  v67 = 0x10000;
  if (!BYTE2(v139[0]))
  {
    v67 = 0;
  }

  *(v33 + 384) = v66 | v67 | (BYTE3(v139[0]) << 24);
  *(v33 + 392) = v63;
  *(v33 + 400) = v64;
  v68 = type metadata accessor for FMIPItemLostModeMetadata();
  LOBYTE(v139[0]) = 8;
  sub_24A678A1C(&qword_27EF5DC40, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A82DA84();
  (*(*(v68 - 8) + 56))(v19, 0, 1, v68);
  v69 = v123;
  sub_24A70B7FC(v19, v33 + v123[13]);
  LOBYTE(v139[0]) = 9;
  v70 = sub_24A82DA44();
  v122 = 1;
  v71 = (v33 + v69[14]);
  *v71 = v70;
  v71[1] = v72;
  LOBYTE(v139[0]) = 11;
  v73 = sub_24A82DA44();
  v74 = (v33 + v69[15]);
  *v74 = v73;
  v74[1] = v75;
  sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
  v138[0] = 12;
  sub_24A7A83A0();
  sub_24A82DA84();
  v76 = v139[2];
  v77 = v33 + v69[16];
  v78 = v139[1];
  *v77 = v139[0];
  *(v77 + 16) = v78;
  *(v77 + 32) = v76;
  v138[0] = 13;
  sub_24A7A8478();
  sub_24A82DA84();
  v79 = *&v139[2];
  v80 = v33 + v69[17];
  v81 = v139[1];
  *v80 = v139[0];
  *(v80 + 16) = v81;
  *(v80 + 32) = v79;
  LOBYTE(v139[0]) = 14;
  v82 = sub_24A82DA44();
  v83 = v123;
  v84 = v141;
  v85 = (v141 + v123[18]);
  *v85 = v82;
  v85[1] = v86;
  *(v84 + v83[19]) = 0;
  LOBYTE(v139[0]) = 16;
  v87 = sub_24A82DA44();
  v88 = (v141 + v123[20]);
  *v88 = v87;
  v88[1] = v89;
  LOBYTE(v139[0]) = 19;
  sub_24A678A1C(&qword_27EF5E550, type metadata accessor for FMIPProductType);
  v90 = v32;
  v91 = v24;
  sub_24A82DA84();
  sub_24A6A23F8(v135, v141 + v123[24], type metadata accessor for FMIPProductType);
  LOBYTE(v139[0]) = 20;
  *(v141 + v123[25]) = sub_24A82DA54() & 1;
  LOBYTE(v139[0]) = 21;
  *(v141 + v123[21]) = sub_24A82DA54() & 1;
  LOBYTE(v139[0]) = 22;
  *(v141 + v123[22]) = sub_24A82DA54() & 1;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  v138[0] = 17;
  sub_24A7A84CC();
  sub_24A82DA84();
  v134 = 0;
  *(v141 + v123[23]) = *&v139[0];
  v92 = v129;
  swift_storeEnumTagMultiPayload();
  v93 = v128;
  v94 = v130;
  v95 = v133;
  (*(v128 + 56))(v130, 1, 1, v133);
  v96 = type metadata accessor for FMIPItemUpdateContext(0);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  v99 = swift_allocObject();
  sub_24A7A9180(v92, v99 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
  v100 = v127;
  sub_24A82CA24();
  v101 = *(v93 + 32);
  v135 = v99;
  v102 = v99 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v103 = v101;
  v101(v102, v100, v95);
  v104 = v94;
  v105 = v132;
  sub_24A67E964(v104, v132, &qword_27EF5E0E0, &qword_24A836D90);
  v106 = *(v93 + 48);
  if (v106(v105, 1, v95) == 1)
  {
    sub_24A82CA24();
    sub_24A67F378(v130, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A7A91E8(v129, type metadata accessor for FMIPItemUpdateType);
    if (v106(v132, 1, v133) != 1)
    {
      sub_24A67F378(v132, &qword_27EF5E0E0, &qword_24A836D90);
    }
  }

  else
  {
    sub_24A67F378(v130, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A7A91E8(v129, type metadata accessor for FMIPItemUpdateType);
    v103(v131, v132, v133);
  }

  v107 = v135;
  v103((v135 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v131, v133);
  *v141 = v107;
  LOBYTE(v139[0]) = 24;
  v108 = v134;
  sub_24A82DA64();
  if (!v108)
  {
    *(v141 + v123[26]) = v109;
    v111 = FMIPItem.debugDescription.getter();
    v113 = v112;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v114 = sub_24A82CDC4();
    sub_24A6797D0(v114, qword_281518F88);

    v115 = sub_24A82CD94();
    v116 = sub_24A82D4C4();

    LODWORD(v135) = v116;
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v139[0] = v118;
      *v117 = 136315138;
      v119 = sub_24A68761C(v111, v113, v139);

      *(v117 + 4) = v119;
      _os_log_impl(&dword_24A675000, v115, v135, "FMIPItem: Initialized: %s", v117, 0xCu);
      sub_24A6876E8(v118);
      MEMORY[0x24C21E1D0](v118, -1, -1);
      MEMORY[0x24C21E1D0](v117, -1, -1);
    }

    else
    {
    }

    (*(v137 + 8))(v91, v90);
    v120 = v141;
    sub_24A7A9180(v141, v125, type metadata accessor for FMIPItem);
    sub_24A6876E8(v124);
    v60 = type metadata accessor for FMIPItem;
    v61 = v120;
    return sub_24A7A91E8(v61, v60);
  }

  (*(v137 + 8))(v91, v90);
  sub_24A6876E8(v124);
  v110 = *v141;

  LODWORD(v135) = 1;
  LODWORD(v137) = 1;
  LODWORD(v136) = 1;
  memcpy(v140, v141 + 1, 0x120uLL);
  sub_24A67F378(v140, &unk_27EF5E0D0, &qword_24A8319E0);
  v41 = v141;

  v42 = *(v41 + 344);

  v43 = *(v41 + 360);

  v52 = v141;
  v53 = v141[47];

  v54 = v123;
  sub_24A67F378(v52 + v123[13], &unk_27EF5E100, &unk_24A839DB0);
  if (v122)
  {
    v44 = *(v141 + v54[14] + 8);
  }

  v55 = *(v141 + v54[15] + 8);

  v45 = v141;
  v46 = v141 + v54[16];
  v47 = *(v46 + 2);
  v48 = *(v46 + 3);
  v49 = v46[32];
  sub_24A7A8308(*v46, *(v46 + 1));
  v56 = v45 + v54[17];
  v57 = *(v56 + 16);
  v58 = *(v56 + 32);

  v50 = *(v45 + v54[18] + 8);

  if (v135)
  {
    v59 = *(v45 + v54[20] + 8);

    if (v137)
    {
LABEL_11:
      v51 = *(v45 + v54[23]);

      if (v136)
      {
        goto LABEL_18;
      }

      return result;
    }
  }

  else if (v137)
  {
    goto LABEL_11;
  }

  if (v136)
  {
LABEL_18:
    v60 = type metadata accessor for FMIPProductType;
    v61 = v45 + v54[24];
    return sub_24A7A91E8(v61, v60);
  }

  return result;
}

uint64_t FMIPItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EA60, &qword_24A839E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A82B4();
  sub_24A82DD84();
  memcpy(v54, (v3 + 8), 0x120uLL);
  memcpy(v53, (v3 + 8), sizeof(v53));
  v56 = 0;
  sub_24A67E964(v54, v52, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  memcpy(v52, v53, sizeof(v52));
  sub_24A67F378(v52, &unk_27EF5E0D0, &qword_24A8319E0);
  if (!v2)
  {
    v11 = *(v3 + 296);
    v49[0] = 1;
    sub_24A82DB34();
    v12 = *(v3 + 304);
    v49[0] = 2;
    sub_24A82DB34();
    *v49 = *(v3 + 312);
    *&v49[8] = *(v3 + 320);
    v55 = 3;
    v13 = *&v49[8];
    sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
    sub_24A7A8550();
    sub_24A82DB44();

    *v49 = *(v3 + 336);
    v55 = 4;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
    v14 = *(v3 + 352);
    v15 = *(v3 + 360);
    v49[0] = 5;
    sub_24A82DB04();
    v16 = *(v3 + 368);
    v17 = *(v3 + 376);
    v49[0] = 6;
    sub_24A82DB04();
    v48 = type metadata accessor for FMIPItem();
    v18 = *(v3 + v48[21]);
    v49[0] = 21;
    sub_24A82DB14();
    v19 = *(v3 + v48[22]);
    v49[0] = 22;
    sub_24A82DB14();
    v20 = *(v3 + v48[25]);
    v49[0] = 20;
    sub_24A82DB14();
    *v49 = *(v3 + 384);
    *&v49[8] = *(v3 + 392);
    v55 = 7;
    v22 = *&v49[8];
    sub_24A82DB44();

    v23 = v48[13];
    v49[0] = 8;
    sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A714F34();
    sub_24A82DB44();
    v24 = (v3 + v48[14]);
    v25 = *v24;
    v26 = v24[1];
    v49[0] = 9;
    sub_24A82DB04();
    v27 = (v3 + v48[15]);
    v28 = *v27;
    v29 = v27[1];
    v49[0] = 11;
    sub_24A82DB04();
    v30 = v3 + v48[16];
    v31 = *(v30 + 8);
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 32);
    *v49 = *v30;
    *&v49[8] = v31;
    *&v49[16] = v32;
    v50 = v33;
    LOBYTE(v51) = v34;
    v55 = 12;
    sub_24A76ED78(*v49, v31);
    sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A85D4();
    sub_24A82DB44();
    sub_24A7A8308(*v49, *&v49[8]);
    v35 = v48[24];
    v49[0] = 19;
    type metadata accessor for FMIPProductType();
    sub_24A678A1C(&qword_27EF5E588, type metadata accessor for FMIPProductType);
    sub_24A82DB44();
    v36 = v3 + v48[17];
    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v39 = *(v36 + 32);
    *v49 = *v36;
    *&v49[16] = v38;
    v50 = v37;
    v51 = v39;
    v55 = 13;
    sub_24A7A86AC();

    sub_24A82DB44();

    v40 = (v3 + v48[18]);
    v41 = *v40;
    v42 = v40[1];
    v49[0] = 14;
    sub_24A82DB04();
    v43 = (v3 + v48[20]);
    v44 = *v43;
    v45 = v43[1];
    v49[0] = 16;
    sub_24A82DB04();
    *v49 = *(v3 + v48[23]);
    v55 = 17;
    sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A7A8700();
    sub_24A82DB44();
    v46 = *(v3 + v48[26]);
    v49[0] = 24;
    sub_24A82DB24();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPItem.hash(into:)()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  return sub_24A82D094();
}

uint64_t FMIPItem.hashValue.getter()
{
  sub_24A82DCC4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7A7034()
{
  sub_24A82DCC4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7A7078()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  return sub_24A82D094();
}

uint64_t sub_24A7A7080()
{
  sub_24A82DCC4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t SPBeaconTaskState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x656C64692ELL;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6465756575712ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t sub_24A7A71A0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      return 0x656C64692ELL;
    }

    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0x6465756575712ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (v1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t sub_24A7A7284(void (*a1)(uint64_t))
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
  v8 = sub_24A82DB84();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t _s8FMIPCore12FMIPPartInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = v2 == v6 && v3 == v5;
      if (v9 || (sub_24A82DC04() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return sub_24A7D5E68(v4, v7);
}

BOOL _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v90[-v11];
  v13 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v90[-v15];
  memcpy(v103, (a1 + 8), sizeof(v103));
  memcpy(v104, (a2 + 8), sizeof(v104));
  memcpy(v102, (a1 + 8), 0x120uLL);
  memcpy(&v102[36], (a2 + 8), 0x120uLL);
  memcpy(v105, (a1 + 8), 0x120uLL);
  if (sub_24A6921A8(v105) == 1)
  {
    memcpy(v100, &v102[36], 0x120uLL);
    if (sub_24A6921A8(v100) == 1)
    {
      v94 = v5;
      v95 = v16;
      memcpy(v101, v102, sizeof(v101));
      sub_24A67E964(v103, v99, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v104, v99, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v101, &unk_27EF5E0D0, &qword_24A8319E0);
      goto LABEL_10;
    }

    sub_24A67E964(v103, v101, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v104, v101, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_7:
    memcpy(v100, v102, sizeof(v100));
    v17 = &qword_27EF5D280;
    v18 = &unk_24A831EC0;
    v19 = v100;
LABEL_8:
    sub_24A67F378(v19, v17, v18);
    return 0;
  }

  memcpy(v101, v102, sizeof(v101));
  memcpy(v99, v102, sizeof(v99));
  memcpy(v100, &v102[36], 0x120uLL);
  if (sub_24A6921A8(v100) == 1)
  {
    memcpy(v98, v102, sizeof(v98));
    sub_24A67E964(v103, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v104, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v101, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CD854(v98);
    goto LABEL_7;
  }

  v94 = v5;
  v95 = v16;
  memcpy(v98, &v102[36], sizeof(v98));
  v20 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v99, v98);
  memcpy(v96, v98, sizeof(v96));
  sub_24A67E964(v103, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v104, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v101, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CD854(v96);
  memcpy(v97, v99, sizeof(v97));
  sub_24A6CD854(v97);
  memcpy(v98, v102, sizeof(v98));
  sub_24A67F378(v98, &unk_27EF5E0D0, &qword_24A8319E0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (*(a1 + 296) != *(a2 + 296) || *(a1 + 304) != *(a2 + 304))
  {
    return 0;
  }

  v21 = *(a1 + 320);
  v22 = *(a2 + 320);
  if (v21)
  {
    v23 = *(a2 + 312);
    v24 = *(a2 + 328);
    v25 = *(a1 + 328);
    v102[0] = *(a1 + 312);
    v102[1] = v21;
    v102[2] = v25;
    if (!v22)
    {
LABEL_38:
      v31 = v21;
      v30 = 0;
      goto LABEL_39;
    }

    LOWORD(v100[0]) = v23 & 0x101;
    BYTE2(v100[0]) = BYTE2(v23) & 1;
    BYTE3(v100[0]) = BYTE3(v23);
    v100[1] = v22;
    v100[2] = v24;
    v26 = v21;
    v27 = v22;
    v28 = v26;
    v29 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v102, v100);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
LABEL_17:
    v30 = v22;
    v31 = 0;
LABEL_39:

    return 0;
  }

  v32 = *(a1 + 344);
  v33 = *(a2 + 344);
  if (v32)
  {
    if (!v33 || (*(a1 + 336) != *(a2 + 336) || v32 != v33) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if ((*(a1 + 352) != *(a2 + 352) || *(a1 + 360) != *(a2 + 360)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 368) != *(a2 + 368) || *(a1 + 376) != *(a2 + 376)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v34 = type metadata accessor for FMIPItem();
  if (*(a1 + v34[21]) != *(a2 + v34[21]) || *(a1 + v34[22]) != *(a2 + v34[22]) || *(a1 + v34[25]) != *(a2 + v34[25]))
  {
    return 0;
  }

  v21 = *(a1 + 392);
  v22 = *(a2 + 392);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  v35 = *(a2 + 384);
  v36 = *(a2 + 400);
  v37 = *(a1 + 400);
  v102[0] = *(a1 + 384);
  v102[1] = v21;
  v102[2] = v37;
  if (!v22)
  {
    goto LABEL_38;
  }

  LOWORD(v100[0]) = v35 & 0x101;
  BYTE2(v100[0]) = BYTE2(v35) & 1;
  BYTE3(v100[0]) = BYTE3(v35);
  v100[1] = v22;
  v100[2] = v36;
  v38 = v34;
  v39 = v21;
  v40 = v22;
  v41 = v39;
  v42 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v102, v100);

  v34 = v38;
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v93 = v34;
  v44 = v34[13];
  v45 = *(v13 + 48);
  v46 = v95;
  sub_24A67E964(a1 + v44, v95, &unk_27EF5E100, &unk_24A839DB0);
  v47 = a2 + v44;
  v48 = v45;
  sub_24A67E964(v47, v46 + v45, &unk_27EF5E100, &unk_24A839DB0);
  v49 = *(v94 + 48);
  if (v49(v46, 1, v4) == 1)
  {
    if (v49(v46 + v48, 1, v4) == 1)
    {
LABEL_44:
      sub_24A67F378(v46, &unk_27EF5E100, &unk_24A839DB0);
      goto LABEL_45;
    }

    goto LABEL_57;
  }

  sub_24A67E964(v46, v12, &unk_27EF5E100, &unk_24A839DB0);
  if (v49(v46 + v48, 1, v4) == 1)
  {
    sub_24A7A91E8(v12, type metadata accessor for FMIPItemLostModeMetadata);
LABEL_57:
    v17 = &qword_27EF5DDC0;
    v18 = &unk_24A83A9D0;
LABEL_69:
    v19 = v46;
    goto LABEL_8;
  }

  sub_24A6A23F8(v46 + v48, v8, type metadata accessor for FMIPItemLostModeMetadata);
  if ((*v12 != *v8 || v12[1] != v8[1]) && (sub_24A82DC04() & 1) == 0 || (v12[2] != v8[2] || v12[3] != v8[3]) && (sub_24A82DC04() & 1) == 0 || (v68 = *(v4 + 24), (sub_24A82C9E4() & 1) == 0))
  {
    sub_24A7A91E8(v8, type metadata accessor for FMIPItemLostModeMetadata);
    sub_24A7A91E8(v12, type metadata accessor for FMIPItemLostModeMetadata);
    v17 = &unk_27EF5E100;
    v18 = &unk_24A839DB0;
    goto LABEL_69;
  }

  v69 = *(v4 + 28);
  v70 = *(v12 + v69);
  v71 = *(v12 + v69 + 8);
  v72 = (v8 + v69);
  if (v70 == *v72 && v71 == v72[1])
  {
    sub_24A7A91E8(v8, type metadata accessor for FMIPItemLostModeMetadata);
    sub_24A7A91E8(v12, type metadata accessor for FMIPItemLostModeMetadata);
    goto LABEL_44;
  }

  v73 = sub_24A82DC04();
  sub_24A7A91E8(v8, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A7A91E8(v12, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A67F378(v46, &unk_27EF5E100, &unk_24A839DB0);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v50 = v93[14];
  v51 = *(a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  if ((v51 != *v53 || v52 != v53[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v54 = v93[15];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v58 = v93[16];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = *(a1 + v58 + 24);
  v92 = *(a1 + v58 + 16);
  v94 = v61;
  LODWORD(v95) = *(a1 + v58 + 32);
  v62 = a2 + v58;
  v63 = *v62;
  v64 = *(v62 + 8);
  v65 = *(v62 + 16);
  v66 = *(v62 + 24);
  v91 = *(v62 + 32);
  if (v60)
  {
    v102[0] = v59;
    v102[1] = v60;
    v102[2] = v92;
    v102[3] = v94;
    LOBYTE(v102[4]) = v95;
    if (v64)
    {
      v100[0] = v63;
      v100[1] = v64;
      v100[2] = v65;
      v100[3] = v66;
      LOBYTE(v100[4]) = v91;
      sub_24A76ED78(v59, v60);
      sub_24A76ED78(v63, v64);
      sub_24A76ED78(v59, v60);
      v67 = _s8FMIPCore12FMIPPartInfoV2eeoiySbAC_ACtFZ_0(v102, v100);

      sub_24A7A8308(v59, v60);
      if (v67)
      {
        goto LABEL_77;
      }

      return 0;
    }

    sub_24A76ED78(v59, v60);
    sub_24A76ED78(v63, 0);
    sub_24A76ED78(v59, v60);

LABEL_73:
    sub_24A7A8308(v59, v60);
    sub_24A7A8308(v63, v64);
    return 0;
  }

  sub_24A76ED78(v59, 0);
  if (v64)
  {
    sub_24A76ED78(v63, v64);
    goto LABEL_73;
  }

  sub_24A76ED78(v63, 0);
  sub_24A7A8308(v59, 0);
LABEL_77:
  if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(a1 + v93[24], a2 + v93[24]))
  {
    return 0;
  }

  v74 = v93[17];
  v75 = (a1 + v74);
  v76 = *(a1 + v74);
  v77 = (a2 + v74);
  if (v76 != *v77)
  {
    return 0;
  }

  v78 = v75[1];
  v79 = v75[2];
  v80 = v77[1];
  v81 = v77[2];
  if ((v75[3] != v77[3] || v75[4] != v77[4]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((v78 != v80 || v79 != v81) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v82 = v93[18];
  v83 = *(a1 + v82);
  v84 = *(a1 + v82 + 8);
  v85 = (a2 + v82);
  if ((v83 != *v85 || v84 != v85[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v93[19]) != *(a2 + v93[19]))
  {
    return 0;
  }

  v86 = v93[20];
  v87 = *(a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  if ((v87 != *v89 || v88 != v89[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((sub_24A6A428C(*(a1 + v93[23]), *(a2 + v93[23])) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v93[26]) == *(a2 + v93[26]);
}

BOOL sub_24A7A8134(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 partIdentifier];
  v4 = v2[3];
  v5 = v2[4];
  sub_24A67DF6C(v2, v4);
  return (*(v5 + 64))(v4, v5) == v3;
}

unint64_t sub_24A7A81B8()
{
  result = qword_27EF5EA10;
  if (!qword_27EF5EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA10);
  }

  return result;
}

unint64_t sub_24A7A820C()
{
  result = qword_27EF5EA18;
  if (!qword_27EF5EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA18);
  }

  return result;
}

unint64_t sub_24A7A8260()
{
  result = qword_27EF5EA28;
  if (!qword_27EF5EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA28);
  }

  return result;
}

unint64_t sub_24A7A82B4()
{
  result = qword_27EF5EA38;
  if (!qword_27EF5EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA38);
  }

  return result;
}

uint64_t sub_24A7A8308(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24A7A834C()
{
  result = qword_27EF5EA40;
  if (!qword_27EF5EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA40);
  }

  return result;
}

unint64_t sub_24A7A83A0()
{
  result = qword_27EF5EA48;
  if (!qword_27EF5EA48)
  {
    sub_24A6CCDC0(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA48);
  }

  return result;
}

unint64_t sub_24A7A8424()
{
  result = qword_27EF5EA50;
  if (!qword_27EF5EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA50);
  }

  return result;
}

unint64_t sub_24A7A8478()
{
  result = qword_27EF5EA58;
  if (!qword_27EF5EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA58);
  }

  return result;
}

unint64_t sub_24A7A84CC()
{
  result = qword_27EF5DFF8;
  if (!qword_27EF5DFF8)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A689824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFF8);
  }

  return result;
}

unint64_t sub_24A7A8550()
{
  result = qword_2815144B8;
  if (!qword_2815144B8)
  {
    sub_24A6CCDC0(&qword_27EF5EA68, &qword_24A839E10);
    sub_24A6CCE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144B8);
  }

  return result;
}

unint64_t sub_24A7A85D4()
{
  result = qword_27EF5EA70;
  if (!qword_27EF5EA70)
  {
    sub_24A6CCDC0(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A8658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA70);
  }

  return result;
}

unint64_t sub_24A7A8658()
{
  result = qword_27EF5EA78;
  if (!qword_27EF5EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA78);
  }

  return result;
}

unint64_t sub_24A7A86AC()
{
  result = qword_27EF5EA80;
  if (!qword_27EF5EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA80);
  }

  return result;
}

unint64_t sub_24A7A8700()
{
  result = qword_27EF5E060;
  if (!qword_27EF5E060)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A76EA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E060);
  }

  return result;
}

unint64_t sub_24A7A8788()
{
  result = qword_27EF5EA88;
  if (!qword_27EF5EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA88);
  }

  return result;
}

unint64_t sub_24A7A87E0()
{
  result = qword_27EF5EA90;
  if (!qword_27EF5EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA90);
  }

  return result;
}

unint64_t sub_24A7A8834()
{
  result = qword_27EF5EA98;
  if (!qword_27EF5EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA98);
  }

  return result;
}

unint64_t sub_24A7A888C()
{
  result = qword_27EF5EAA0;
  if (!qword_27EF5EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAA0);
  }

  return result;
}

unint64_t sub_24A7A88E4()
{
  result = qword_27EF5EAA8;
  if (!qword_27EF5EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAA8);
  }

  return result;
}

unint64_t sub_24A7A893C()
{
  result = qword_27EF5EAB0;
  if (!qword_27EF5EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAB0);
  }

  return result;
}

unint64_t sub_24A7A8990()
{
  result = qword_27EF5EAB8;
  if (!qword_27EF5EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAB8);
  }

  return result;
}

unint64_t sub_24A7A89E8()
{
  result = qword_27EF5EAC0;
  if (!qword_27EF5EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAC0);
  }

  return result;
}

unint64_t sub_24A7A8A40()
{
  result = qword_27EF5EAC8;
  if (!qword_27EF5EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAC8);
  }

  return result;
}

unint64_t sub_24A7A8A94()
{
  result = qword_27EF5EAD0;
  if (!qword_27EF5EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAD0);
  }

  return result;
}

__n128 sub_24A7A8B18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A7A8B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A7A8B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A7A8D64()
{
  result = qword_27EF5EB00;
  if (!qword_27EF5EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB00);
  }

  return result;
}

unint64_t sub_24A7A8DBC()
{
  result = qword_27EF5EB08;
  if (!qword_27EF5EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB08);
  }

  return result;
}

unint64_t sub_24A7A8E14()
{
  result = qword_27EF5EB10;
  if (!qword_27EF5EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB10);
  }

  return result;
}

unint64_t sub_24A7A8E6C()
{
  result = qword_27EF5EB18;
  if (!qword_27EF5EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB18);
  }

  return result;
}

unint64_t sub_24A7A8EC4()
{
  result = qword_27EF5EB20;
  if (!qword_27EF5EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB20);
  }

  return result;
}

unint64_t sub_24A7A8F1C()
{
  result = qword_27EF5EB28;
  if (!qword_27EF5EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB28);
  }

  return result;
}

uint64_t sub_24A7A8F70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24A7A9084()
{
  v0 = sub_24A82DC24();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A7A90D8()
{
  result = qword_27EF5EB30;
  if (!qword_27EF5EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB30);
  }

  return result;
}

unint64_t sub_24A7A912C()
{
  result = qword_27EF5EB38;
  if (!qword_27EF5EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB38);
  }

  return result;
}

uint64_t sub_24A7A9180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7A91E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FMIPHawkeyeProductInformation.init(beacon:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v59 = *(v4 - 1);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_24A67DF6C(a1, v8);
  v10 = (*(v9 + 128))(v8, v9);
  if (v10)
  {
    v11 = v10;
    v58 = a2;
    v12 = a1[3];
    v13 = a1[4];
    sub_24A67DF6C(a1, v12);
    v14 = (*(v13 + 136))(v12, v13);
    v15 = a1[3];
    v16 = a1[4];
    sub_24A67DF6C(a1, v15);
    v17 = (*(v16 + 144))(v15, v16);
    v18 = a1[3];
    v19 = a1[4];
    sub_24A67DF6C(a1, v18);
    v20 = (*(v19 + 32))(v18, v19);
    v21 = *MEMORY[0x277D49818];
    v22 = sub_24A82CFC4();
    v24 = v23;
    if (v22 == sub_24A82CFC4() && v24 == v25)
    {
      v57 = 1;
    }

    else
    {
      v57 = sub_24A82DC04();
    }

    *v7 = v14;
    *(v7 + 1) = v17;
    v29 = [v11 modelName];
    v30 = sub_24A82CFC4();
    v32 = v31;

    *(v7 + 2) = v30;
    *(v7 + 3) = v32;
    v33 = [v11 manufacturerName];
    v34 = sub_24A82CFC4();
    v36 = v35;

    *(v7 + 4) = v34;
    *(v7 + 5) = v36;
    v37 = [v11 appBundleIdentifier];
    if (v37)
    {
      v38 = v37;
      v39 = sub_24A82CFC4();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    *(v7 + 6) = v39;
    *(v7 + 7) = v41;
    [v11 txPower];
    *(v7 + 8) = v42;
    v43 = [v11 defaultHeroIcon];
    v44 = &v7[v4[12]];
    sub_24A82C884();

    v45 = [v11 defaultHeroIcon2x];
    v46 = &v7[v4[13]];
    sub_24A82C884();

    v47 = [v11 defaultHeroIcon3x];
    v48 = &v7[v4[14]];
    sub_24A82C884();

    v49 = [v11 defaultListIcon];
    v50 = &v7[v4[15]];
    sub_24A82C884();

    v51 = [v11 defaultListIcon2x];
    v52 = &v7[v4[16]];
    sub_24A82C884();

    v53 = [v11 defaultListIcon3x];
    v54 = &v7[v4[17]];
    sub_24A82C884();

    LOWORD(v53) = [v11 capabilities];
    v7[72] = (v53 & 0x1000) != 0;
    v7[73] = v57 & 1;
    v55 = v58;
    sub_24A7AB624(v7, v58);
    (*(v59 + 56))(v55, 0, 1, v4);
    return sub_24A6876E8(a1);
  }

  else
  {
    sub_24A6876E8(a1);
    v27 = *(v59 + 56);

    return v27(a2, 1, 1, v4);
  }
}

uint64_t FMIPHawkeyeProductInformation.init(beacon:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v53 = *(v4 - 1);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 productInformation];
  if (v8)
  {
    v9 = v8;
    v52 = a2;
    SPUnknownBeacon.vendorId.getter();
    v11 = v10;
    SPUnknownBeacon.productId.getter();
    v13 = v12;
    v14 = [a1 type];
    v15 = *MEMORY[0x277D49818];
    v16 = sub_24A82CFC4();
    v18 = v17;
    if (v16 == sub_24A82CFC4() && v18 == v19)
    {
      v51 = 1;
    }

    else
    {
      v51 = sub_24A82DC04();
    }

    *v7 = v11;
    *(v7 + 1) = v13;
    v23 = [v9 modelName];
    v24 = sub_24A82CFC4();
    v26 = v25;

    *(v7 + 2) = v24;
    *(v7 + 3) = v26;
    v27 = [v9 manufacturerName];
    v28 = sub_24A82CFC4();
    v30 = v29;

    *(v7 + 4) = v28;
    *(v7 + 5) = v30;
    v31 = [v9 appBundleIdentifier];
    if (v31)
    {
      v32 = v31;
      v33 = sub_24A82CFC4();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xE000000000000000;
    }

    *(v7 + 6) = v33;
    *(v7 + 7) = v35;
    [v9 txPower];
    *(v7 + 8) = v36;
    v37 = [v9 defaultHeroIcon];
    v38 = &v7[v4[12]];
    sub_24A82C884();

    v39 = [v9 defaultHeroIcon2x];
    v40 = &v7[v4[13]];
    sub_24A82C884();

    v41 = [v9 defaultHeroIcon3x];
    v42 = &v7[v4[14]];
    sub_24A82C884();

    v43 = [v9 defaultListIcon];
    v44 = &v7[v4[15]];
    sub_24A82C884();

    v45 = [v9 defaultListIcon2x];
    v46 = &v7[v4[16]];
    sub_24A82C884();

    v47 = [v9 defaultListIcon3x];
    v48 = &v7[v4[17]];
    sub_24A82C884();

    LOWORD(v47) = [v9 capabilities];
    v7[72] = (v47 & 0x1000) != 0;
    v7[73] = v51 & 1;
    v49 = v52;
    sub_24A7AB624(v7, v52);
    return (*(v53 + 56))(v49, 0, 1, v4);
  }

  else
  {

    v21 = *(v53 + 56);

    return v21(a2, 1, 1, v4);
  }
}

void FMIPHawkeyeProductInformation.init(productInformation:vendorIdentifier:productIdentifier:requiresAdditionalConnectionTime:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  v8 = [a1 modelName];
  v9 = sub_24A82CFC4();
  v11 = v10;

  *(a5 + 16) = v9;
  *(a5 + 24) = v11;
  v12 = [a1 manufacturerName];
  v13 = sub_24A82CFC4();
  v15 = v14;

  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  v16 = [a1 appBundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24A82CFC4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(a5 + 48) = v18;
  *(a5 + 56) = v20;
  [a1 txPower];
  *(a5 + 64) = v21;
  v22 = [a1 defaultHeroIcon];
  v23 = type metadata accessor for FMIPHawkeyeProductInformation();
  v24 = a5 + v23[12];
  sub_24A82C884();

  v25 = [a1 defaultHeroIcon2x];
  v26 = a5 + v23[13];
  sub_24A82C884();

  v27 = [a1 defaultHeroIcon3x];
  v28 = a5 + v23[14];
  sub_24A82C884();

  v29 = [a1 defaultListIcon];
  v30 = a5 + v23[15];
  sub_24A82C884();

  v31 = [a1 defaultListIcon2x];
  v32 = a5 + v23[16];
  sub_24A82C884();

  v33 = [a1 defaultListIcon3x];
  v34 = a5 + v23[17];
  sub_24A82C884();

  LOWORD(v23) = [a1 capabilities];
  *(a5 + 72) = (v23 & 0x1000) != 0;
  *(a5 + 73) = a4 & 1;
}

uint64_t FMIPHawkeyeProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.identifier.getter()
{
  v3 = *v0;
  v5 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  v4 = v0[1];
  v1 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v1);

  return v5;
}

void SPUnknownBeacon.vendorId.getter()
{
  v1 = sub_24A82C4A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [v0 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 productData];

    v6 = sub_24A82C904();
    v8 = v7;

    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
LABEL_13:
        sub_24A82C924();
        sub_24A82C494();
        sub_24A7AB688();
        sub_24A82D924();
        sub_24A67E0F0(v6, v8);
        return;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
LABEL_11:
        if (v13 < -1)
        {
          __break(1u);
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_13;
    }

    LODWORD(v13) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      __break(1u);
      return;
    }

    v13 = v13;
    goto LABEL_11;
  }
}

void SPUnknownBeacon.productId.getter()
{
  v1 = sub_24A82C4A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [v0 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 productData];

    v6 = sub_24A82C904();
    v8 = v7;

    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
LABEL_12:
        sub_24A82C924();
        sub_24A82C494();
        sub_24A7AB688();
        sub_24A82D924();
        sub_24A67E0F0(v6, v8);
        return;
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      v10 = v12 - v13;
      if (!__OFSUB__(v12, v13))
      {
        v11 = v10 / 2;
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      if (!v9)
      {
        v10 = BYTE6(v8);
        v11 = BYTE6(v8) >> 1;
        goto LABEL_10;
      }

      v14 = HIDWORD(v6) - v6;
      if (!__OFSUB__(HIDWORD(v6), v6))
      {
        v10 = v14;
        v11 = (v14 + (v14 >> 31)) >> 1;
LABEL_10:
        if (v10 < v11)
        {
          __break(1u);
        }

        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_24A7AA210(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x50616E6E65746E61;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0x48746C7561666564;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x4C746C7561666564;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_24A7AA3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7ABDE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7AA3EC(uint64_t a1)
{
  v2 = sub_24A7AB8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AA428(uint64_t a1)
{
  v2 = sub_24A7AB8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPHawkeyeProductInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EB48, &qword_24A83AA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AB8B4();
  sub_24A82DD84();
  v11 = *v3;
  v30[31] = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v12 = v3[1];
    v30[30] = 1;
    sub_24A82DB34();
    v13 = v3[2];
    v14 = v3[3];
    v30[29] = 2;
    sub_24A82DB04();
    v15 = v3[4];
    v16 = v3[5];
    v30[28] = 3;
    sub_24A82DB04();
    v17 = v3[6];
    v18 = v3[7];
    v30[27] = 4;
    sub_24A82DAD4();
    v19 = v3[8];
    v30[26] = 5;
    sub_24A82DB24();
    v20 = *(v3 + 72);
    v30[25] = 6;
    sub_24A82DB14();
    v21 = *(v3 + 73);
    v30[24] = 7;
    sub_24A82DB14();
    v22 = type metadata accessor for FMIPHawkeyeProductInformation();
    v23 = v22[12];
    v30[15] = 8;
    sub_24A82C8B4();
    sub_24A7ABA60(&qword_27EF5EB58, MEMORY[0x277CC9260]);
    sub_24A82DB44();
    v24 = v22[13];
    v30[14] = 9;
    sub_24A82DB44();
    v25 = v22[14];
    v30[13] = 10;
    sub_24A82DB44();
    v26 = v22[15];
    v30[12] = 11;
    sub_24A82DB44();
    v27 = v22[16];
    v30[11] = 12;
    sub_24A82DB44();
    v28 = v22[17];
    v30[10] = 13;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPHawkeyeProductInformation.hash(into:)()
{
  v1 = v0;
  MEMORY[0x24C21D5E0](*v0);
  MEMORY[0x24C21D5E0](*(v0 + 8));
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_24A82D094();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_24A82D094();
  if (*(v0 + 56))
  {
    v6 = *(v0 + 48);
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v7 = *(v0 + 64);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x24C21D610](*&v7);
  v8 = *(v0 + 72);
  sub_24A82DCE4();
  v9 = *(v0 + 73);
  sub_24A82DCE4();
  v10 = type metadata accessor for FMIPHawkeyeProductInformation();
  v11 = v10[12];
  sub_24A82C8B4();
  sub_24A7ABA60(&qword_27EF5CCD0, MEMORY[0x277CC9260]);
  sub_24A82CF64();
  v12 = v1 + v10[13];
  sub_24A82CF64();
  v13 = v1 + v10[14];
  sub_24A82CF64();
  v14 = v1 + v10[15];
  sub_24A82CF64();
  v15 = v1 + v10[16];
  sub_24A82CF64();
  v16 = v1 + v10[17];
  return sub_24A82CF64();
}

uint64_t FMIPHawkeyeProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_24A82C8B4();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v61 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v72 = sub_24A6BBA94(&qword_27EF5EB60, &qword_24A83AA08);
  v70 = *(v72 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v21 = &v61 - v20;
  v22 = type metadata accessor for FMIPHawkeyeProductInformation();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v26 = a1[4];
  v74 = a1;
  sub_24A67DF6C(a1, v27);
  sub_24A7AB8B4();
  v73 = v21;
  v28 = v75;
  sub_24A82DD64();
  if (v28)
  {
    v75 = v28;
    return sub_24A6876E8(v74);
  }

  v29 = v18;
  v63 = v13;
  v64 = v22;
  v31 = v70;
  v30 = v71;
  v89 = 0;
  v32 = v72;
  *v25 = sub_24A82DA74();
  v88 = 1;
  *(v25 + 1) = sub_24A82DA74();
  v87 = 2;
  *(v25 + 2) = sub_24A82DA44();
  *(v25 + 3) = v34;
  v86 = 3;
  *(v25 + 4) = sub_24A82DA44();
  *(v25 + 5) = v35;
  v85 = 4;
  v62 = 0;
  *(v25 + 6) = sub_24A82DA04();
  *(v25 + 7) = v36;
  v84 = 5;
  sub_24A82DA64();
  *(v25 + 8) = v37;
  v83 = 6;
  v25[72] = sub_24A82DA54() & 1;
  v82 = 7;
  v50 = sub_24A82DA54();
  v75 = 0;
  v25[73] = v50 & 1;
  v81 = 8;
  sub_24A7ABA60(&qword_27EF5EB68, MEMORY[0x277CC9260]);
  v51 = v75;
  sub_24A82DA84();
  v75 = v51;
  if (v51)
  {
    (*(v31 + 8))(v73, v32);
    v38 = 0;
    v39 = 0;
    LODWORD(v73) = 0;
    v40 = 0;
  }

  else
  {
    v52 = *(v68 + 32);
    v52(&v25[v64[12]], v29, v69);
    v80 = 9;
    v53 = v75;
    sub_24A82DA84();
    v75 = v53;
    if (v53)
    {
      (*(v31 + 8))(v73, v72);
      v39 = 0;
      LODWORD(v73) = 0;
      v40 = 0;
      v38 = 1;
    }

    else
    {
      v52(&v25[v64[13]], v16, v69);
      v79 = 10;
      v54 = v75;
      sub_24A82DA84();
      v75 = v54;
      if (v54)
      {
        (*(v31 + 8))(v73, v72);
        LODWORD(v73) = 0;
        v40 = 0;
        v38 = 1;
        v39 = 1;
      }

      else
      {
        v52(&v25[v64[14]], v63, v69);
        v78 = 11;
        v55 = v75;
        sub_24A82DA84();
        v75 = v55;
        if (v55)
        {
          (*(v31 + 8))(v73, v72);
          v40 = 0;
          v38 = 1;
          v39 = 1;
          LODWORD(v73) = 1;
        }

        else
        {
          v52(&v25[v64[15]], v67, v69);
          v77 = 12;
          v56 = v75;
          sub_24A82DA84();
          v75 = v56;
          if (!v56)
          {
            v52(&v25[v64[16]], v30, v69);
            v76 = 13;
            v57 = v75;
            sub_24A82DA84();
            v75 = v57;
            if (!v57)
            {
              (*(v31 + 8))(v73, v72);
              v52(&v25[v64[17]], v66, v69);
              sub_24A7AB908(v25, v65);
              sub_24A6876E8(v74);
              return sub_24A715F34(v25);
            }

            (*(v31 + 8))(v73, v72);
            sub_24A6876E8(v74);
            v58 = *(v25 + 3);

            v59 = *(v25 + 5);

            v60 = *(v25 + 7);

            v48 = 1;
            LODWORD(v74) = 1;
            LODWORD(v73) = 1;
            LOBYTE(v39) = 1;
            v44 = v68;
            v43 = v69;
            goto LABEL_13;
          }

          (*(v31 + 8))(v73, v72);
          v38 = 1;
          v39 = 1;
          LODWORD(v73) = 1;
          v40 = 1;
        }
      }
    }
  }

  v41 = v62;
  sub_24A6876E8(v74);
  v42 = *(v25 + 3);

  v44 = v68;
  v43 = v69;
  if (!v41)
  {
    v49 = *(v25 + 5);
  }

  v45 = *(v25 + 7);

  if (v38)
  {
    LODWORD(v74) = v40;
    v48 = 0;
LABEL_13:
    v47 = v64;
    v46 = *(v44 + 8);
    result = v46(&v25[v64[12]], v43);
    if (v39)
    {
      result = v46(&v25[v47[13]], v43);
      if (v73)
      {
        LOBYTE(v40) = v74;
        goto LABEL_16;
      }

      v40 = v74;
LABEL_25:
      if (v40)
      {
        v46 = *(v44 + 8);
        result = v46(&v25[v47[15]], v43);
        if (v48)
        {
          return v46(&v25[v47[16]], v43);
        }

        return result;
      }

      goto LABEL_28;
    }

    v40 = v74;
LABEL_20:
    v47 = v64;
    if (v73)
    {
      v46 = *(v44 + 8);
      result = v46(&v25[v64[14]], v43);
      if ((v40 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_22:
      result = v46(&v25[v47[15]], v43);
      if (v48)
      {
        return v46(&v25[v47[16]], v43);
      }

      return result;
    }

    goto LABEL_25;
  }

  if (!v39)
  {
    v48 = 0;
    goto LABEL_20;
  }

  v46 = *(v44 + 8);
  v47 = v64;
  result = v46(&v25[v64[13]], v43);
  v48 = 0;
  if ((v73 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  result = v46(&v25[v47[14]], v43);
  if (v40)
  {
    goto LABEL_22;
  }

LABEL_28:
  if (v48)
  {
    v46 = *(v44 + 8);
    return v46(&v25[v47[16]], v43);
  }

  return result;
}

uint64_t sub_24A7AB3E8()
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A7AB42C()
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.AssetScale.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.AssetType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.assetURL(for:scale:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = type metadata accessor for FMIPHawkeyeProductInformation();
  v8 = sub_24A82C8B4();
  v9 = *(*(v8 - 8) + 16);
  v10 = 60;
  if (v5)
  {
    v10 = 48;
  }

  v11 = v3 + *(v7 + 4 * v6 + v10);

  return v9(a3, v11, v8);
}

uint64_t sub_24A7AB624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7AB688()
{
  result = qword_27EF5EB40;
  if (!qword_27EF5EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB40);
  }

  return result;
}

uint64_t _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  v3 = a2;
  v4 = a1;
  if (!v2)
  {
    v5 = *(a1 + 16);
    v6 = sub_24A82DC04();
    a2 = v3;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v8 = *(a1 + 32);
    v9 = sub_24A82DC04();
    a2 = v3;
    v10 = v9;
    a1 = v4;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v11 != v12)
    {
      v13 = *(a1 + 48);
      v14 = sub_24A82DC04();
      a2 = v3;
      v15 = v14;
      a1 = v4;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  if (*(a1 + 73) != *(a2 + 73))
  {
    return 0;
  }

  v16 = type metadata accessor for FMIPHawkeyeProductInformation();
  v17 = v16[12];
  if ((sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  v18 = v16[13];
  if ((sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  v19 = v16[14];
  if ((sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  v20 = v16[15];
  if ((sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  v21 = v16[16];
  if ((sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  v22 = v16[17];

  return sub_24A82C874();
}

unint64_t sub_24A7AB8B4()
{
  result = qword_27EF5EB50;
  if (!qword_27EF5EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB50);
  }

  return result;
}

uint64_t sub_24A7AB908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7AB96C(void *a1)
{
  a1[2] = sub_24A7ABA60(&qword_27EF5D3C0, type metadata accessor for FMIPHawkeyeProductInformation);
  a1[3] = sub_24A7ABA60(&qword_27EF5D388, type metadata accessor for FMIPHawkeyeProductInformation);
  result = sub_24A7ABA60(&qword_27EF5EB70, type metadata accessor for FMIPHawkeyeProductInformation);
  a1[4] = result;
  return result;
}

uint64_t sub_24A7ABA60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A7ABAAC()
{
  result = qword_27EF5EB80;
  if (!qword_27EF5EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB80);
  }

  return result;
}

unint64_t sub_24A7ABB04()
{
  result = qword_27EF5EB88;
  if (!qword_27EF5EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPHawkeyeProductInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPHawkeyeProductInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A7ABCE4()
{
  result = qword_27EF5EB90;
  if (!qword_27EF5EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB90);
  }

  return result;
}

unint64_t sub_24A7ABD3C()
{
  result = qword_27EF5EB98;
  if (!qword_27EF5EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB98);
  }

  return result;
}

unint64_t sub_24A7ABD94()
{
  result = qword_27EF5EBA0;
  if (!qword_27EF5EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBA0);
  }

  return result;
}

uint64_t sub_24A7ABDE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000024A844E10 == a2;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A843C40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843550 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A844E30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50616E6E65746E61 && a2 == 0xEC0000007265776FLL || (sub_24A82DC04() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024A848830 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024A848850 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (sub_24A82DC04() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A848880 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488A0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (sub_24A82DC04() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488C0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488E0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}