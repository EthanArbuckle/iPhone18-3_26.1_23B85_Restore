uint64_t sub_24EBBBBF4(uint64_t a1, char a2)
{
  sub_24F2F5F5C(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v5 = qword_27F39BE38;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v8 = (v2 + qword_27F39BE28);
  swift_beginAccess();
  *v8 = v7;
  v8[1] = v6;

  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = qword_27F39BE30;
  swift_beginAccess();
  *(v2 + v11) = v10;
}

uint64_t sub_24EBBBD04(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = sub_24EBBD698(*a1, v2, *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {
    v5 = sub_24F0C5C5C(v2);
    v6 = *(v1 + qword_27F22AB70);
    *(v1 + qword_27F22AB70) = v5;

    v7 = sub_24EDD4C24(v6, v5);

    if ((v7 & 1) == 0)
    {

      sub_24EBBDC98(v8);
    }
  }

  return result;
}

uint64_t sub_24EBBBDF8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_251;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD56D0;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBC10C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_497;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD512C;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBC420(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_393;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD5000;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBC734(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_341;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4F64;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBCA48(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_172;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4D28;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBCD5C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_445;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD509C;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBD070(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_289;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4EBC;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBD384(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_107;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4C4C;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBD698(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD4BAC;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_222;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4DB0;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBD9AC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    sub_24F2F77B0(result, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54A4;
    *(v9 + 24) = v8;
    v17[4] = sub_24E9727C0;
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24E971290;
    v17[3] = &block_descriptor_55;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_24EBD4B54;
      *(v14 + 24) = v15;

      sub_24E824448(v16);
    }
  }

  return result;
}

uint64_t sub_24EBBDC98(uint64_t result)
{
  if (*(result + 16) && *(v1 + qword_27F22AB78) != 1)
  {
    if (*(v1 + qword_27F22AB80))
    {
      *(v1 + qword_27F22AB78) = 1;
      v2 = result;

      sub_24EBDFF44(v3);

      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = sub_24E74EC40();
      swift_retain_n();

      v6 = sub_24F92BEF8();
      v7[3] = v5;
      v7[4] = MEMORY[0x277D225C0];
      v7[0] = v6;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_24EBBDDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_27F39CC10;
  v13 = *(a5 + qword_27F39CC10);

  v14 = sub_24EBBE1D8(a6, v13);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v21, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EBD54C8;
  *(v18 + 24) = v17;
  v24 = sub_24E9727C0;
  v25 = v18;
  *&v21 = MEMORY[0x277D85DD0];
  *(&v21 + 1) = 1107296256;
  v22 = sub_24E971290;
  v23 = &block_descriptor_539;
  v19 = _Block_copy(&v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_27F22AB78) = 0;
  }

  return result;
}

uint64_t sub_24EBBDFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_27F39CC10;
  v13 = *(a5 + qword_27F39CC10);

  v14 = sub_24EBBE578(a6, v13);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v21, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EBD4BAC;
  *(v18 + 24) = v17;
  v24 = sub_24E9727C0;
  v25 = v18;
  *&v21 = MEMORY[0x277D85DD0];
  *(&v21 + 1) = 1107296256;
  v22 = sub_24E971290;
  v23 = &block_descriptor_212;
  v19 = _Block_copy(&v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_27F22AB78) = 0;
  }

  return result;
}

uint64_t sub_24EBBE1D8(uint64_t result, unint64_t a2)
{
  v3 = result;
  v37 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    v4 = result;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_44;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x253052270](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        v8 = sub_24EBD4730(v3, v7);

        if (v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v36);
          sub_24ED7EDA8(&v35, v36);
          swift_unknownObjectRelease();
          sub_24E772780(&v35);
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = a2 + 32;
      v33 = v3 + 32;
      v30 = v4;
      v31 = v3;
      v29 = a2 + 32;
      do
      {
        v11 = *(*(v10 + 8 * v9) + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);
        if (*(v11 + 16))
        {
          v34 = *(v3 + 16);
          if (v34)
          {
            v12 = v11 + 56;
            v32 = *(v10 + 8 * v9);

            v13 = 0;
            while (1)
            {
              if (*(v11 + 16))
              {
                v14 = *(v33 + v13);
                sub_24F92D068();
                v15 = v14 ? 7304045 : 1701736302;
                v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
                sub_24F92B218();

                v17 = sub_24F92D0B8();
                v18 = -1 << *(v11 + 32);
                v19 = v17 & ~v18;
                if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
                {
                  break;
                }
              }

LABEL_18:
              if (++v13 == v34)
              {

                goto LABEL_13;
              }
            }

            v20 = ~v18;
            while (1)
            {
              v21 = *(*(v11 + 48) + v19) ? 7304045 : 1701736302;
              v22 = *(*(v11 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
              if (v21 == v15 && v22 == v16)
              {
                break;
              }

              v24 = sub_24F92CE08();

              if (v24)
              {
                goto LABEL_12;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

LABEL_12:

            sub_24E65864C(v32 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v36);
            sub_24ED7EDA8(&v35, v36);

            sub_24E772780(&v35);
LABEL_13:
            v4 = v30;
            v3 = v31;
            v10 = v29;
          }
        }

        ++v9;
      }

      while (v9 != v4);
    }

LABEL_44:
    v25 = v37;
    v26 = *(v37 + 16);
    if (v26)
    {
      v27 = sub_24EAE6938(*(v37 + 16), 0);
      v28 = sub_24EAE88FC(&v35, (v27 + 4), v26, v25);
      sub_24E6586B4();
      if (v28 == v26)
      {
        return v27;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBBE578(uint64_t result, unint64_t a2)
{
  v3 = result;
  v19 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    v4 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x253052270](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        v8 = sub_24EBD48E0(v3, v7);

        if (v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v17);
          sub_24ED7EDA8(&v18, v17);
          swift_unknownObjectRelease();
          sub_24E772780(&v18);
        }
      }
    }

    else
    {
      v9 = (a2 + 32);
      do
      {
        v10 = *v9;
        v11 = *(*v9 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        v12 = sub_24EBD48E0(v3, v11);

        if (v12)
        {
        }

        else
        {
          sub_24E65864C(v10 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v17);
          sub_24ED7EDA8(&v18, v17);

          sub_24E772780(&v18);
        }

        ++v9;
        --v4;
      }

      while (v4);
    }

LABEL_16:
    v13 = v19;
    v14 = *(v19 + 16);
    if (v14)
    {
      v15 = sub_24EAE6938(*(v19 + 16), 0);
      v16 = sub_24EAE88FC(&v18, (v15 + 4), v14, v13);
      sub_24E6586B4();
      if (v16 == v14)
      {
        return v15;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBBE7D8()
{
}

uint64_t GenericDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBE8A8();

  return v0;
}

uint64_t sub_24EBBE8A8()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AEE8);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AEF0);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AEE8);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBEB60()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ACB8);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ACA8);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ACB8);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBEE18()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AE88);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE90);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AE88);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBF0D0()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AE38);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE40);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AE38);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBF388()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ADF8);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE00);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ADF8);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBF640()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ADA8);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ADB0);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ADA8);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBF8F8()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AD58);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AD60);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AD58);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBFBB0()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AD18);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AD08);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AD18);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBBFE68()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AC70);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AC60);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AC70);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EBC0120()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AC10);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ABF8);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AC10);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t GenericDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBBE8A8();

  return swift_deallocClassInstance();
}

void sub_24EBC0494(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB98);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEE8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v96 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v99 = &v96 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB88);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AEE8);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AEE8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AEF0);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AEF0);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AEE8);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AEE8);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40);
    sub_24E602068(&qword_27F22AEF8, &qword_27F222A40);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AEE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48);
    sub_24E602068(&qword_27F22AF08, &qword_27F222A48);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AEF0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40);
    sub_24E602068(&qword_27F22AEF8, &qword_27F222A40);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AEE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD54C8;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_550;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC1940(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD08);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD10);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD18);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD20);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AD18);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AD18);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AD08);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AD08);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AD18);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AD18);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28);
    sub_24E602068(&qword_27F22AD30, &qword_27F22AD28);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AD18);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD40);
    sub_24E602068(&qword_27F22AD48, &qword_27F22AD40);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AD08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28);
    sub_24E602068(&qword_27F22AD30, &qword_27F22AD28);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AD18);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD54C8;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_236;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC2DEC(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE90);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE98);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE88);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AE88);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AE88);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AE90);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE90);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AE88);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AE88);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8);
    sub_24E602068(&qword_27F22AEB0, &qword_27F22AEA8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AE88);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0);
    sub_24E602068(&qword_27F22AEC8, &qword_27F22AEC0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE90);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8);
    sub_24E602068(&qword_27F22AEB0, &qword_27F22AEA8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AE88);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_482;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC4298(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v97 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v103 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE00);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v97 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE08);
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v105 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v21 = &v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADF8);
  MEMORY[0x28223BE20](v22 - 8);
  v109 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v100 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE10);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v98 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v97 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v101 = v37;
  v38 = v119;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ADF8);
  v99 = *(v32 + 48);
  v39 = v99(v30, 1, v31);
  v114 = v31;
  v120 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ADF8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v118;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v112;
  v43 = v113;
  if ((*(v112 + 48))(v19, 1, v113) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v119;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v119;
    if (v119)
    {
      sub_24F92AD78();
      v40 = v118;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v107;
  sub_24E60169C(v2 + v45, v107, &qword_27F22AE00);
  v47 = v115;
  v48 = (*(v40 + 48))(v46, 1, v115);
  v49 = v105;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE00);
  }

  else
  {
    (*(v40 + 32))(v105, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v118;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v114;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v105 = v52;
  v53 = &v52[v2];
  v54 = v100;
  sub_24E60169C(v53, v100, &qword_27F22ADF8);
  v55 = v99(v54, 1, v51);
  v56 = v103;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ADF8);
    v57 = v117;
    v58 = v116;
    v59 = v120;
  }

  else
  {
    v59 = v120;
    v60 = v98;
    (*(v120 + 32))(v98, v54, v51);
    v58 = v116;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v117;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v107 = v61;
  v62 = v2 + v61;
  v63 = v104;
  sub_24E60169C(v62, v104, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v102;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0);
    sub_24E602068(&qword_27F22AE18, &qword_27F2226B0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    v59 = v120;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v120 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v101;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ADF8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    v71 = v106;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v106;
  }

  v72 = 1;
  (*(v112 + 56))(v71, v69, 1, v113);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C0);
    sub_24E602068(&qword_27F22AE28, &qword_27F2226C0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    v73 = v108;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v109;
  }

  else
  {
    v74 = v109;
    v73 = v108;
  }

  v75 = 1;
  (*(v118 + 56))(v73, v72, 1, v115);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE00);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0);
    sub_24E602068(&qword_27F22AE18, &qword_27F2226B0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v110;
  v77 = 1;
  v68(v74, v75, 1, v114);
  v78 = v105;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ADF8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v119;
  v80 = v111;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v116 + 56))(v80, v82, 1, v117);
  v84 = v107;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  v85 = swift_endAccess();
  v86 = *(v2 + v64);
  if (v86)
  {
    v87 = qword_27F39CC08;
    swift_beginAccess();
    v88 = *(v2 + v87);
    v89 = qword_27F39C798;
    swift_beginAccess();
    v90 = *(v86 + v89);
    *(v86 + v89) = v88;

    v91 = v88;
  }

  if (v79 && ((*(*v2 + 1128))(v85) & 1) != 0)
  {
    v92 = *(v2 + *(*v2 + 688));
    v93 = swift_allocObject();
    *(v93 + 16) = v2;
    *(v93 + 24) = 0;
    *(v93 + 32) = 65920;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_24EBD4BAC;
    *(v94 + 24) = v93;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_378;
    v95 = _Block_copy(aBlock);

    dispatch_sync(v92, v95);
    _Block_release(v95);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC5778(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB0);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADA8);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ADA8);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ADA8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ADB0);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ADB0);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22ADA8);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ADA8);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8);
    sub_24E602068(&qword_27F22ADD0, &qword_27F22ADC8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ADA8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0);
    sub_24E602068(&qword_27F22ADE8, &qword_27F22ADE0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ADB0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8);
    sub_24E602068(&qword_27F22ADD0, &qword_27F22ADC8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ADA8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_326;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC6C24(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACA8);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB0);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB8);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ACB8);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ACB8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ACA8);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ACA8);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22ACB8);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ACB8);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8);
    sub_24E602068(&qword_27F22ACD0, &qword_27F22ACC8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ACB8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0);
    sub_24E602068(&qword_27F22ACE8, &qword_27F22ACE0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ACA8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8);
    sub_24E602068(&qword_27F22ACD0, &qword_27F22ACC8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ACB8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_157;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC80D0(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE40);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE38);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AE38);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AE38);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AE40);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE40);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AE38);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AE38);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58);
    sub_24E602068(&qword_27F22AE60, &qword_27F22AE58);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AE38);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70);
    sub_24E602068(&qword_27F22AE78, &qword_27F22AE70);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE40);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58);
    sub_24E602068(&qword_27F22AE60, &qword_27F22AE58);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AE38);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_430;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC957C(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD60);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD58);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AD58);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AD58);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AD60);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AD60);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AD58);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AD58);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78);
    sub_24E602068(&qword_27F22AD80, &qword_27F22AD78);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AD58);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90);
    sub_24E602068(&qword_27F22AD98, &qword_27F22AD90);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AD60);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78);
    sub_24E602068(&qword_27F22AD80, &qword_27F22AD78);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AD58);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_274;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBCAA28(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC60);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC68);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC70);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC78);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AC70);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AC70);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AC60);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AC60);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AC70);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AC70);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80);
    sub_24E602068(&qword_27F22AC88, &qword_27F22AC80);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AC70);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98);
    sub_24E602068(&qword_27F22ACA0, &qword_27F22AC98);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AC60);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80);
    sub_24E602068(&qword_27F22AC88, &qword_27F22AC80);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AC70);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_92;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBCBED4(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF8);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC00);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC10);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC18);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AC10);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AC10);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ABF8);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ABF8);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AC10);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AC10);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20);
    sub_24E602068(&qword_27F22AC28, &qword_27F22AC20);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AC10);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40);
    sub_24E602068(&qword_27F22AC48, &qword_27F22AC40);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ABF8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20);
    sub_24E602068(&qword_27F22AC28, &qword_27F22AC20);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AC10);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD466C;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E972460;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_57;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EBCD380(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_565;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56EC;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBCDB54(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_511;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56E8;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBCE328(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_407;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56E0;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBCEAFC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_355;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56DC;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBCF2D0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_186;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56CC;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBCFAA4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_459;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56E4;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBD0278(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_303;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56D4;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBD0A4C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v14 = *&v13[v12];
      sub_24E60169C(v65, v63, &unk_27F237670);
      sub_24E60169C(v65, v63, &unk_27F237670);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[v12] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
        *&v13[v12] = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E617130((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = v10;
      *&v13[v12] = v14;
      swift_endAccess();

      return sub_24E601704(v65, &unk_27F237670);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v18 = *a1;
    v19 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v20 = *(v1 + *(*v1 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v18;
    *(v21 + 32) = 65792;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24EBD54C8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_121;
    v23 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v19)
    {
      v25 = v19;
      swift_beginAccess();
      v26 = v1[3];
      v61 = v1;
      if (v26)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v27);
        v1 = v61;
        swift_endAccess();

        v28 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v29);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v62;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v56 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v58 = v25;
        v14 = *(v25 + 16);
        v12 = v14 + 8;
        v32 = 1 << *(v14 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v14[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v55 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v31;

        v36 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_24E60169C(*(v14[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v39 = v62;
            v41 = *(v59 + 2);
            v40 = *(v59 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v53 = v41 + 1;
              v52 = v41;
              v45 = sub_24E616878(v40 > 1, v41 + 1, 1, v59);
              v42 = v53;
              v41 = v52;
              v59 = v45;
            }

            v44 = v59;
            v43 = v60;
            *(v59 + 2) = v42;
            v54(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v13 = &unk_27F22EC30;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v12[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_24ED6555C(v59);

        if (v46)
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v48 = sub_24EA69948(v47);
          *(v61 + v56) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          *(v48 + 16) = sub_24EBD56C8;
          *(v48 + 24) = v49;

          sub_24E824448(v50);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EBD1220(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v64 = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (!v12)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v13 = *(v12 + v6);
    sub_24E60169C(&v64, v62, &unk_27F237670);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v6) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
      *(v12 + v6) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v13[v16 + 4] = v10;
    *(v12 + v6) = v13;
    swift_endAccess();
  }

  v59 = v9;
  v61 = v7;
  v17 = *a1;
  v18 = a1[3];
  *(v1 + qword_27F39CC10) = *a1;

  v19 = *(v1 + *(*v1 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v17;
  *(v20 + 32) = 65792;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24EBD54A4;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_69;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  if (v18)
  {
    v24 = v18;
    swift_beginAccess();
    v25 = v1[3];
    v60 = v1;
    if (v25)
    {
      swift_beginAccess();

      sub_24EA0A8D8(v26);
      v1 = v60;
      swift_endAccess();

      v27 = v61;
      if (v1[3])
      {
        swift_beginAccess();

        sub_24EA0A904(v28);
        v1 = v60;
        swift_endAccess();
      }
    }

    else
    {

      v27 = v61;
    }

    v29 = *(v1 + *(*v1 + 736));
    if (v29)
    {
      v55 = *(*v1 + 736);
      v30 = *(v29 + 32);
      v57 = v24;
      v13 = *(v24 + 16);
      v12 = v13 + 8;
      v31 = 1 << *(v13 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & v13[8];
      v34 = (v31 + 63) >> 6;
      v10 = (v27 + 48);
      v54 = (v27 + 32);
      swift_bridgeObjectRetain_n();
      v56 = v30;

      v35 = 0;
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        v36 = v35;
        if (!v33)
        {
          break;
        }

LABEL_23:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_24E601704(v5, &unk_27F22EC30);
        }

        else
        {
          v53 = *v54;
          v53(v59, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_24E616878(0, *(v58 + 2) + 1, 1, v58);
          }

          v38 = v61;
          v40 = *(v58 + 2);
          v39 = *(v58 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v52 = v40 + 1;
            v51 = v40;
            v44 = sub_24E616878(v39 > 1, v40 + 1, 1, v58);
            v41 = v52;
            v40 = v51;
            v58 = v44;
          }

          v43 = v58;
          v42 = v59;
          *(v58 + 2) = v41;
          v53(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
        }
      }

      while (1)
      {
        v35 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v35 >= v34)
        {
          break;
        }

        v33 = v12[v35];
        ++v36;
        if (v33)
        {
          goto LABEL_23;
        }
      }

      v45 = sub_24ED6555C(v58);

      if (v45)
      {
        type metadata accessor for PageRefreshGate();
        swift_allocObject();

        v47 = sub_24EA69948(v46);
        *(v60 + v55) = v47;

        v48 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v49 = *(v47 + 16);
        *(v47 + 16) = sub_24EBD56C0;
        *(v47 + 24) = v48;

        sub_24E824448(v49);
      }
    }
  }

  return result;
}

uint64_t sub_24EBD19C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v64 = v10;
  if (v10)
  {
    result = swift_beginAccess();
    v12 = v1[3];
    if (!v12)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v13 = *(v12 + v6);
    sub_24E60169C(&v64, v62, &unk_27F237670);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v6) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
      *(v12 + v6) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v13[v16 + 4] = v10;
    *(v12 + v6) = v13;
    swift_endAccess();
  }

  v59 = v9;
  v61 = v7;
  v17 = *a1;
  v18 = a1[3];
  *(v1 + qword_27F39CC10) = *a1;

  v19 = *(v1 + *(*v1 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v17;
  *(v20 + 32) = 65792;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24EBD4BAC;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_144;
  v22 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  if (v18)
  {
    v24 = v18;
    swift_beginAccess();
    v25 = v1[3];
    v60 = v1;
    if (v25)
    {
      swift_beginAccess();

      sub_24EA0A8D8(v26);
      v1 = v60;
      swift_endAccess();

      v27 = v61;
      if (v1[3])
      {
        swift_beginAccess();

        sub_24EA0A904(v28);
        v1 = v60;
        swift_endAccess();
      }
    }

    else
    {

      v27 = v61;
    }

    v29 = *(v1 + *(*v1 + 736));
    if (v29)
    {
      v55 = *(*v1 + 736);
      v30 = *(v29 + 32);
      v57 = v24;
      v13 = *(v24 + 16);
      v12 = v13 + 8;
      v31 = 1 << *(v13 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & v13[8];
      v34 = (v31 + 63) >> 6;
      v10 = (v27 + 48);
      v54 = (v27 + 32);
      swift_bridgeObjectRetain_n();
      v56 = v30;

      v35 = 0;
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        v36 = v35;
        if (!v33)
        {
          break;
        }

LABEL_23:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_24E601704(v5, &unk_27F22EC30);
        }

        else
        {
          v53 = *v54;
          v53(v59, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_24E616878(0, *(v58 + 2) + 1, 1, v58);
          }

          v38 = v61;
          v40 = *(v58 + 2);
          v39 = *(v58 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v52 = v40 + 1;
            v51 = v40;
            v44 = sub_24E616878(v39 > 1, v40 + 1, 1, v58);
            v41 = v52;
            v40 = v51;
            v58 = v44;
          }

          v43 = v58;
          v42 = v59;
          *(v58 + 2) = v41;
          v53(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
        }
      }

      while (1)
      {
        v35 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v35 >= v34)
        {
          break;
        }

        v33 = v12[v35];
        ++v36;
        if (v33)
        {
          goto LABEL_23;
        }
      }

      v45 = sub_24ED6555C(v58);

      if (v45)
      {
        type metadata accessor for PageRefreshGate();
        swift_allocObject();

        v47 = sub_24EA69948(v46);
        *(v60 + v55) = v47;

        v48 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v49 = *(v47 + 16);
        *(v47 + 16) = sub_24EBD4CA8;
        *(v47 + 24) = v48;

        sub_24E824448(v49);
      }
    }
  }

  return result;
}

uint64_t sub_24EBD2160(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_578;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD22F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_264;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2488(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_524;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD261C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_420;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD27B0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_368;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2944(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_199;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2AD8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_472;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2C6C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_316;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2E00(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_134;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD2F94(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54A4;
  *(v8 + 24) = v7;
  v11[4] = sub_24E9727C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E971290;
  v11[3] = &block_descriptor_82_1;
  v9 = _Block_copy(v11);

  sub_24EBD4BA0(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EBD3128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBD5384();
  sub_24F922E28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v7 = v6[9];
  v8 = MEMORY[0x277D84F90];
  sub_24F0692A4(MEMORY[0x277D84F90], &v17);
  *(a1 + v7) = v17;
  v9 = v6[10];
  *(a1 + v9) = sub_24E60A838(v8);
  v10 = v6[11];
  *(a1 + v10) = sub_24E60A960(v8);
  *(a1 + v6[12]) = MEMORY[0x277D84FA0];
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v11 = sub_24F91F668();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x253050C20](v11, v13);

  v15 = *(&v17 + 1);
  v16 = (a1 + v6[13]);
  *v16 = v17;
  v16[1] = v15;
  return result;
}

uint64_t sub_24EBD3C38(uint64_t a1, uint64_t a2)
{
  sub_24E9B7D88(a1, v6);
  v3 = *(*a2 + 704);
  swift_beginAccess();
  sub_24EBD46D4(v6, a2 + v3);
  swift_endAccess();
  sub_24E9B7D88(a2 + v3, v5);
  sub_24F92AD88();
  sub_24E94E128(v5);
  return sub_24E94E128(v6);
}

uint64_t sub_24EBD3D68(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9287F8();
  v4 = __swift_project_value_buffer(v3, qword_27F2230B8);
  return a2(v4);
}

uint64_t (*sub_24EBD3DD8(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD51F4;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3E50(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4DB8;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3EC8(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD50EC;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3F40(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4FC0;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3FB8(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4F08;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4030(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4CB0;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD40A8(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD505C;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4120(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4E7C;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4198(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4BC4;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4210(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD469C;
  *(v2 + 24) = a1;

  return sub_24EBD46CC;
}

unint64_t sub_24EBD4288()
{
  result = qword_27F2394E0;
  if (!qword_27F2394E0)
  {
    sub_24F92BE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394E0);
  }

  return result;
}

uint64_t type metadata accessor for GenericDiffablePagePresenter()
{
  result = qword_27F22ABD8;
  if (!qword_27F22ABD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBD432C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39BE28);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24EBD4388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39BE30;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EBD43E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39BE38;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBD4440(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39BE38;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EBD4730(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v17 + v3);
      sub_24F92D068();
      v6 = v5 ? 7304045 : 1701736302;
      v7 = v5 ? 0xE300000000000000 : 0xE400000000000000;
      sub_24F92B218();

      v8 = sub_24F92D0B8();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(a2 + 48) + v10) ? 7304045 : 1701736302;
    v13 = *(*(a2 + 48) + v10) ? 0xE300000000000000 : 0xE400000000000000;
    if (v12 == v6 && v13 == v7)
    {
      break;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      return 0;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_24EBD48E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v27 = v6 + 56;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
      sub_24F92D068();
      v16 = v15 ? 7304045 : 1701736302;
      v17 = v15 ? 0xE300000000000000 : 0xE400000000000000;
      sub_24F92B218();

      v26 = v9;
      result = sub_24F92D0B8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      if ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v25 = v4;
        v20 = ~v18;
        while (1)
        {
          if (*(*(v6 + 48) + v19))
          {
            v21 = 7304045;
          }

          else
          {
            v21 = 1701736302;
          }

          if (*(*(v6 + 48) + v19))
          {
            v22 = 0xE300000000000000;
          }

          else
          {
            v22 = 0xE400000000000000;
          }

          if (v21 == v16 && v22 == v17)
          {

            return 0;
          }

          v24 = sub_24F92CE08();

          if (v24)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            v4 = v25;
            v9 = v26;
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBD4B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBD1220(v3);
}

uint64_t sub_24EBD4BA0(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_24EBD4C14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EBD4C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBD0A4C(v3);
}

uint64_t sub_24EBD4CE0()
{

  return swift_deallocObject();
}

uint64_t sub_24EBD4D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCF2D0(v3);
}

uint64_t sub_24EBD4DF8(__int128 *a1)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  v6 = *(a1 + 24);
  return (*(*v1 + 1200))(&v4);
}

uint64_t sub_24EBD4EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBD0278(v3);
}

uint64_t sub_24EBD4F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCEAFC(v3);
}

uint64_t sub_24EBD5008(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCE328(v3);
}

uint64_t sub_24EBD50A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCFAA4(v3);
}

uint64_t sub_24EBD5134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCDB54(v3);
}

uint64_t objectdestroy_201Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EBD5224(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1208))(&v4);
}

uint64_t sub_24EBD5280(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24EBCD380(v3);
}

uint64_t objectdestroyTm_28()
{

  sub_24E96513C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EBD5328(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1176))(&v4);
}

unint64_t sub_24EBD5384()
{
  result = qword_27F22AF18;
  if (!qword_27F22AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF18);
  }

  return result;
}

GameStoreKit::TopShelf::Style_optional __swiftcall TopShelf.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TopShelf.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6573756F726163;
  }

  else
  {
    return 0x7465736E69;
  }
}

uint64_t sub_24EBD57D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v3 = 0xEF736C6961746544;
  }

  if (*a1)
  {
    v4 = 0x6C6573756F726163;
  }

  else
  {
    v4 = 0x7465736E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEF736E6F69746341;
  if (*a2 != 1)
  {
    v6 = 0xEF736C6961746544;
  }

  if (*a2)
  {
    v7 = 0x6C6573756F726163;
  }

  else
  {
    v7 = 0x7465736E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

uint64_t sub_24EBD58C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD5980()
{
  sub_24F92B218();
}

uint64_t sub_24EBD5A24()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EBD5AE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v4 = 0xEF736C6961746544;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6C6573756F726163;
  }

  else
  {
    v6 = 0x7465736E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t TopShelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  TopShelf.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TopShelf.init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a2;
  v44 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v7 = sub_24F92AC28();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v50 = a1;
  sub_24F928398();
  sub_24EBD6204();
  sub_24F928248();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v51 = v20;
  v52 = v12;
  v20(v18, v12);
  v21 = v57;
  if (v57 == 3)
  {
    v22 = sub_24F92AC38();
    sub_24EBD6600(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v23 = 0x656C797473;
    v23[1] = 0xE500000000000000;
    v23[2] = v44;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v51(v50, v52);
    type metadata accessor for TopShelf();
    swift_deallocPartialClassInstance();
    (*(v53 + 8))(v55, v54);
    return v3;
  }

  *(v3 + 16) = v57;
  type metadata accessor for TopShelfPromotionItem();
  v25 = v3;
  v43 = v3;
  v26 = v50;
  sub_24F928398();
  (*(v53 + 16))(v11, v55, v54);
  sub_24EBD6600(&qword_27F22AF28, type metadata accessor for TopShelfPromotionItem);
  sub_24F929548();
  v25[3] = v56;
  sub_24F928398();
  v27 = v45;
  sub_24F9282B8();
  v29 = v51;
  v28 = v52;
  v51(v15, v52);
  v31 = v48;
  v30 = v49;
  v32 = (*(v48 + 48))(v27, 1, v49);
  v24 = v43;
  if (v32 == 1)
  {
    sub_24E8F2EE8(v27);
    v29(v26, v28);
    v33 = MEMORY[0x277D84F90];
    v35 = v54;
    v34 = v55;
    v36 = v53;
LABEL_10:
    v24[4] = v33;
    (*(v36 + 8))(v34, v35);
    return v24;
  }

  v44 = v19;
  (*(v31 + 32))(v46, v27, v30);
  v37 = v47;
  if (v21)
  {
    v38 = type metadata accessor for TopShelfCarouselItem();
  }

  else
  {
    v38 = type metadata accessor for TopShelfInsetItem();
  }

  v35 = v54;
  v34 = v55;
  v36 = v53;
  v55 = &v43;
  MEMORY[0x28223BE20](v38);
  *(&v43 - 2) = v39;
  *(&v43 - 1) = v34;
  type metadata accessor for TopShelfItem();
  v40 = v46;
  v41 = sub_24F92ABB8();
  if (!v37)
  {
    v33 = v41;
    v51(v26, v52);
    (*(v48 + 8))(v40, v49);
    goto LABEL_10;
  }

  type metadata accessor for TopShelf();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_24EBD6204()
{
  result = qword_27F22AF20;
  if (!qword_27F22AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF20);
  }

  return result;
}

uint64_t sub_24EBD627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for TopShelfItem();
  sub_24EBD6600(&qword_27F22AF38, type metadata accessor for TopShelfItem);
  return sub_24F929548();
}

uint64_t TopShelf.deinit()
{

  return v0;
}

uint64_t TopShelf.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24EBD64F4()
{
  result = qword_27F22AF30;
  if (!qword_27F22AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF30);
  }

  return result;
}

uint64_t sub_24EBD6548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelf();
  v7 = swift_allocObject();
  result = TopShelf.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBD6600(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EBD6648(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5;
  v7 = type metadata accessor for MSOPageIntent();
  v8 = v6;
  *&v31 = sub_24F91F398();
  *(&v31 + 1) = v9;
  v10 = &off_279691000;
  v11 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_24F92C328();
  v12 = (v2 + *(v7 + 24));
  v13 = v12[1];
  if (v13)
  {
    *&v31 = *v12;
    *(&v31 + 1) = v13;

    v14 = a1;
    v15 = sub_24F92CDE8();
    sub_24EB715C4(&v31);
  }

  else
  {
    v16 = a1;
    v15 = 0;
  }

  v17 = [v4 valueWithObject:v15 inContext:a1];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_21;
  }

  sub_24F92C328();
  v18 = *(v2 + *(v7 + 28));
  if (!v18)
  {
    v31 = 0u;
    v32 = 0u;
    goto LABEL_16;
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    v29 = v4;
    v30 = v8;
    v20 = sub_24EAE678C(v19, 0);
    v21 = sub_24EAE7C84(&v31, v20 + 4, v19, v18);
    swift_bridgeObjectRetain_n();
    sub_24E6586B4();
    if (v21 == v19)
    {
      v4 = v29;
      v8 = v30;
      v10 = &off_279691000;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_19;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_13:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(&v32 + 1) = v22;
  *&v31 = v20;

  if (v22)
  {
    v23 = __swift_project_boxed_opaque_existential_1(&v31, v22);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x28223BE20](v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v18 = sub_24F92CDE8();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  v28 = [v4 v10[249]];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_24F92C328();

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_24EBD6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EBD6ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MSOPageIntent()
{
  result = qword_27F22AF40;
  if (!qword_27F22AF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBD6BBC()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24EBD6C68();
    if (v1 <= 0x3F)
    {
      sub_24EBD6CB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EBD6C68()
{
  if (!qword_27F22AF50)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22AF50);
    }
  }
}

void sub_24EBD6CB8()
{
  if (!qword_27F22AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F21E480);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22AF58);
    }
  }
}

uint64_t sub_24EBD6DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StatePath<A>.init(_:)(uint64_t a1)
{
  v2 = sub_24F91FA78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_24EBD6F8C();
  v6 = sub_24F92B418();
  v7 = sub_24E8E89B4(v6);

  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
  sub_24EBD6FE4();
  sub_24F92AD58();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_24EBD6F8C()
{
  result = qword_27F22AF70;
  if (!qword_27F22AF70)
  {
    sub_24F91FA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF70);
  }

  return result;
}

unint64_t sub_24EBD6FE4()
{
  result = qword_27F22AF78;
  if (!qword_27F22AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2214E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF78);
  }

  return result;
}

GameStoreKit::FamilyCircleAction::EventType_optional __swiftcall FamilyCircleAction.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FamilyCircleAction.EventType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C696D6146646461;
  }

  else
  {
    return 0x6574616974696E69;
  }
}

uint64_t sub_24EBD70F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C696D6146646461;
  }

  else
  {
    v3 = 0x6574616974696E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF7265626D654D79;
  }

  if (*a2)
  {
    v5 = 0x6C696D6146646461;
  }

  else
  {
    v5 = 0x6574616974696E69;
  }

  if (*a2)
  {
    v6 = 0xEF7265626D654D79;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EBD71A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD7238()
{
  sub_24F92B218();
}

uint64_t sub_24EBD72B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD7340@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24EBD73A0(uint64_t *a1@<X8>)
{
  v2 = 0x6574616974696E69;
  if (*v1)
  {
    v2 = 0x6C696D6146646461;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF7265626D654D79;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FamilyCircleAction.clientName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);

  return v1;
}

char *FamilyCircleAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v46 = *v3;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v51 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v47 = v11;
  v25 = v21;
  v26 = *(v11 + 8);
  v26(v25, v10);
  if (v24)
  {
    v27 = &v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName];
    *v27 = v22;
    v27[1] = v24;
    v28 = v51;
    sub_24F928398();
    sub_24EBD7A7C();
    sub_24F928248();
    v26(v19, v10);
    v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType] = v55 & 1;
    sub_24F928398();
    sub_24F9281F8();
    v46 = v26;
    v26(v16, v10);
    v29 = sub_24F928E68();
    v30 = *(v29 - 8);
    v31 = v28;
    if ((*(v30 + 48))(v9, 1, v29) == 1)
    {
      sub_24E601704(v9, qword_27F221C40);
      v32 = 0;
    }

    else
    {
      v32 = sub_24F928E48();
      (*(v30 + 8))(v9, v29);
    }

    *&v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters] = v32;
    v37 = v48;
    (*(v47 + 16))(v48, v31, v10);
    v39 = v52;
    v38 = v53;
    v40 = v49;
    v41 = v54;
    (*(v52 + 16))(v49, v54, v53);
    v42 = v50;
    v43 = Action.init(deserializing:using:)(v37, v40);
    if (!v42)
    {
      v3 = v43;
    }

    (*(v39 + 8))(v41, v38);
    v46(v31, v10);
  }

  else
  {
    v33 = v26;
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 0x614E746E65696C63;
    v36 = v46;
    v35[1] = 0xEA0000000000656DLL;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v33(v51, v10);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_24EBD7A7C()
{
  result = qword_27F22AF80;
  if (!qword_27F22AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF80);
  }

  return result;
}

uint64_t FamilyCircleAction.__allocating_init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);
  *v16 = a1;
  v16[1] = a2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType) = v15;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters) = a4;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v14 + v17, a5, v18);
  v20 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  v22 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v33, &v30);
  if (*(&v31 + 1))
  {
    v24 = v31;
    *v23 = v30;
    *(v23 + 16) = v24;
    *(v23 + 32) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v29[1] = v25;
    v29[2] = v27;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  (*(v19 + 8))(a5, v18);
  sub_24E601704(v33, &qword_27F235830);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

uint64_t FamilyCircleAction.init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v11 = sub_24F91F6B8();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a3;
  v21 = (v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);
  *v21 = a1;
  v21[1] = a2;
  v22 = a5;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType) = v19;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters) = v33;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  (*(v18 + 16))(v20, a5, v17);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v42, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v31 + 8))(v13, v32);
    v34 = v25;
    v35 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  (*(v18 + 8))(v22, v17);
  sub_24E601704(v42, &qword_27F235830);
  v28 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v28 + 32) = v41;
  v29 = v40;
  *v28 = v39;
  *(v28 + 16) = v29;
  sub_24E65E0D4(v16, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

uint64_t sub_24EBD813C()
{
}

uint64_t FamilyCircleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t FamilyCircleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

unint64_t sub_24EBD83C0()
{
  result = qword_27F22AF88;
  if (!qword_27F22AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF88);
  }

  return result;
}

uint64_t type metadata accessor for FamilyCircleAction()
{
  result = qword_27F22AF90;
  if (!qword_27F22AF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsContextCard.__allocating_init(message:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t SearchResultsContextCard.init(message:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t SearchResultsContextCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContextCard.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchResultsContextCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v25[0] = *v4;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F928388();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v28 = a1;
  sub_24F928398();
  v17 = *(v8 + 16);
  v27 = a2;
  v17(v10, a2, v7);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v18 = LinkableText.init(deserializing:using:)(v16, v10);
  if (v3)
  {
    (*(v8 + 8))(v27, v7);
    (*(v11 + 8))(v28, v26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v18;
    v25[1] = type metadata accessor for Action();
    v19 = v28;
    sub_24F928398();
    v20 = v27;
    v21 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v27);
    (*(v8 + 8))(v20, v7);
    v22 = *(v11 + 8);
    v23 = v26;
    v22(v19, v26);
    v22(v13, v23);
    v4[3] = v21;
  }

  return v4;
}

double SearchResultsContextCard.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SearchResultsContextCard.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SearchResultsContextCard.deinit()
{

  return v0;
}

uint64_t SearchResultsContextCard.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EBD89E0@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24EBD8B4C(&qword_27F216DE8, 255, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_24EBD8A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContextCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBD8B4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EBD8DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v6 = v4;
  v44 = a1;
  v36 = *v4;
  v42 = sub_24F929AB8();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - v8;
  v9 = sub_24F929158();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v13 = v48;
  v14 = qword_27F39B498;
  swift_beginAccess();
  v35 = *(v10 + 16);
  v35(v12, &v4[v14], v9);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v45 = v13;
  v16 = PendingPageRender.init(bag:metricsPipeline:)(v15, v12);
  swift_beginAccess();
  *(v6 + 3) = v16;

  if (v16)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = &v16[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v18 = a3;
    *(v18 + 1) = v17;
  }

  v19 = *(v6 + 3);
  if (v19)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v22 = *v21;
    *v21 = v43;
    v21[1] = v20;

    sub_24E824448(v22);
  }

  swift_beginAccess();
  if (byte_27F22D288 == 1)
  {
  }

  v23 = v44;
  if (!v44)
  {
    sub_24F92D1E8();
    sub_24F9286A8();
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v24 = v37;
    sub_24F92A448();
    v25 = v39;
    sub_24F92A408();
    (*(v38 + 8))(v24, v25);
    v35(v12, &v6[v14], v9);
    sub_24F92A0F8();
    swift_allocObject();
    v23 = sub_24F92A0E8();
  }

  swift_beginAccess();
  *(v6 + 4) = v23;

  v26 = &v6[qword_27F39B480];
  swift_beginAccess();
  v27 = v26[1];
  if (!v27 || !*(v6 + 4))
  {
  }

  v28 = *v26;
  v29 = qword_27F210658;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v42;
  __swift_project_value_buffer(v42, qword_27F22E3B8);
  v46 = v28;
  v47 = v27;
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v31, qword_27F22E400);
  v32 = v40;
  sub_24F929A48();

  sub_24F92A098();

  return (*(v41 + 8))(v32, v30);
}

uint64_t sub_24EBD94B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v94 = &v84 - v4;
  v102 = sub_24F929AB8();
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v84 - v7;
  v9 = sub_24F928818();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v87 = v3;
    v88 = v2;
    v93 = a1;
    v100 = *(Strong + qword_27F39B4A0);
    swift_beginAccess();
    sub_24E60169C(v14 + 40, v107, &qword_27F224F98);
    v15 = v108;
    if (v108)
    {
      v98 = v109;
      v16 = __swift_project_boxed_opaque_existential_1(v107, v108);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x28223BE20](v16);
      v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      swift_unknownObjectRetain();
      sub_24E601704(v107, &qword_27F224F98);
      sub_24F92AD48();
      (*(v17 + 8))(v20, v15);
      v21 = sub_24F9286C8();
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_24E601704(v107, &qword_27F224F98);
      v21 = 0;
    }

    v25 = v99;
    v96 = v21;
    v26 = (v14 + qword_27F39B480);
    swift_beginAccess();
    v28 = *v26;
    v27 = v26[1];
    v29 = (v14 + qword_27F39B490);
    swift_beginAccess();
    v30 = v29[1];
    v85 = *v29;
    v31 = qword_27F210278;
    v32 = v100;
    swift_unknownObjectRetain();
    v98 = v27;

    v97 = v30;

    if (v31 != -1)
    {
      swift_once();
    }

    v33 = off_27F229AB8;
    swift_beginAccess();
    v90 = *(v33 + 88);
    v34 = *(*v14 + 192);
    swift_beginAccess();
    sub_24E60169C(v14 + v34, v107, &qword_27F224FA0);
    v35 = *(*v14 + 200);
    swift_beginAccess();
    sub_24E60169C(v14 + v35, v106, qword_27F224FA8);
    swift_beginAccess();
    v36 = v33[18];
    v37 = (v14 + *(*v14 + 216));
    swift_beginAccess();
    v38 = *v37;
    v89 = v37[1];
    v39 = (v14 + *(*v14 + 208));
    swift_beginAccess();
    v40 = *v39;
    v86 = v39[1];
    v95 = v40;
    swift_unknownObjectRetain();
    v99 = v36;

    v91 = v38;
    swift_unknownObjectRetain();
    sub_24F929AA8();
    v41 = qword_27F210660;
    swift_unknownObjectRetain();
    v42 = v32;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
    __swift_project_value_buffer(v43, qword_27F22E3D0);
    v105[0] = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
    v44 = v101;
    sub_24F929A48();
    v45 = *(v25 + 8);
    v46 = v102;
    v45(v8, v102);
    v92 = v42;
    swift_unknownObjectRelease();
    v47 = *(v25 + 32);
    v48 = v44;
    v49 = v45;
    v47(v8, v48, v46);
    if (v98)
    {
      *&v105[0] = v28;
      *(&v105[0] + 1) = v98;
      if (qword_27F210670 != -1)
      {
        swift_once();
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v50, qword_27F22E400);
      v51 = v101;
      sub_24F929A48();
      v52 = v102;
      v49(v8, v102);
      v47(v8, v51, v52);
    }

    v53 = v101;
    if (v97)
    {
      *&v105[0] = v85;
      *(&v105[0] + 1) = v97;
      if (qword_27F210678 != -1)
      {
        swift_once();
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v54, qword_27F22E418);
      sub_24F929A48();
      v55 = v102;
      v49(v8, v102);
      v47(v8, v53, v55);
    }

    v56 = v47;
    *&v100 = v49;
    LOBYTE(v105[0]) = 0;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
    __swift_project_value_buffer(v57, qword_27F22E430);
    v58 = v101;
    sub_24F929A48();
    v59 = v102;
    v60 = v100;
    (v100)(v8, v102);
    v56(v8, v58, v59);
    if (v96)
    {
      *&v105[0] = v96;
      v61 = v57;
      v62 = v94;
      sub_24F929A78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      sub_24F929A48();
      v63 = v62;
      v57 = v61;
      (*(v87 + 8))(v63, v88);
      v64 = v102;
      v60(v8, v102);
      v56(v8, v58, v64);
    }

    v65 = v91;
    if (v90 != 2)
    {
      LOBYTE(v105[0]) = v90 & 1;
      if (qword_27F210688 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v57, qword_27F22E448);
      v66 = v101;
      sub_24F929A48();
      v67 = v102;
      v60(v8, v102);
      v56(v8, v66, v67);
    }

    sub_24E60169C(v107, &v103, &qword_27F224FA0);
    if (v104)
    {
      sub_24E612C80(&v103, v105);
      v68 = v101;
      if (qword_27F210690 != -1)
      {
        swift_once();
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
      __swift_project_value_buffer(v69, qword_27F22E460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v105);
      v70 = v102;
      v60(v8, v102);
      v56(v8, v68, v70);
    }

    else
    {
      sub_24E601704(&v103, &qword_27F224FA0);
      v68 = v101;
    }

    v71 = v65;
    sub_24E60169C(v106, &v103, qword_27F224FA8);
    v72 = v99;
    if (v104)
    {
      sub_24E612C80(&v103, v105);
      if (qword_27F210698 != -1)
      {
        swift_once();
      }

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
      __swift_project_value_buffer(v73, qword_27F22E478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v105);
      v74 = v102;
      (v100)(v8, v102);
      v56(v8, v68, v74);
      v72 = v99;
      if (!v99)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_24E601704(&v103, qword_27F224FA8);
      if (!v72)
      {
LABEL_42:
        if (v95)
        {
          *&v105[0] = v95;
          *(&v105[0] + 1) = v86;
          v78 = qword_27F2106A8;
          swift_unknownObjectRetain();
          if (v78 != -1)
          {
            swift_once();
          }

          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
          __swift_project_value_buffer(v79, qword_27F22E4A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
          sub_24F929A48();
          v80 = v102;
          (v100)(v8, v102);
          swift_unknownObjectRelease();
          v56(v8, v68, v80);
        }

        if (v71)
        {
          *&v105[0] = v71;
          *(&v105[0] + 1) = v89;
          v81 = qword_27F2106A0;
          swift_unknownObjectRetain();
          if (v81 != -1)
          {
            swift_once();
          }

          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
          __swift_project_value_buffer(v82, qword_27F22E490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
          sub_24F929A48();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v83 = v102;
          (v100)(v8, v102);
          sub_24E601704(v106, qword_27F224FA8);
          sub_24E601704(v107, &qword_27F224FA0);
          swift_unknownObjectRelease();
          v56(v8, v68, v83);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_24E601704(v106, qword_27F224FA8);
          sub_24E601704(v107, &qword_27F224FA0);
        }

        return (v56)(v93, v8, v102);
      }
    }

    *&v105[0] = v72;
    v75 = qword_27F2106B0;

    if (v75 != -1)
    {
      swift_once();
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v76, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    v77 = v102;
    (v100)(v8, v102);

    v56(v8, v68, v77);
    goto LABEL_42;
  }

  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v22 = v102;
  v23 = __swift_project_value_buffer(v102, qword_27F22E3B8);
  return (*(v99 + 16))(a1, v23, v22);
}