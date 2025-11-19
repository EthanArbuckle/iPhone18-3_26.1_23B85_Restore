void sub_1000BDC8C(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v14 = _s13SelectedStateV7WrappedVMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(*a1 + 2);
  if (v20)
  {
    v21 = 0;
    v22 = a3 | (a3 << 32);
    while (1)
    {
      v23 = &v19[176 * v21 + 32];
      if ((*(v23 + 24) | (*(v23 + 24) << 32)) == v22)
      {
        v24 = *(v23 + 16);
        v25 = *(v24 + 16);
        if (v25 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v21 == v20)
      {
        return;
      }
    }

    if (v25)
    {
      v26 = v24 == a2;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
LABEL_14:
      a2 = *(v23 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v41 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v43[1] = a6;
      v29 = v16;

      v30 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v31, v18, _s13SelectedStateV7WrappedVMa);
        v32 = _s13SelectedStateV8_StorageCMa(0);
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        v35 = swift_allocObject();
        sub_1000CBC60(v18, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v35;
        v30 = &off_1005D1000;
      }

      v36 = v30[85] + a2;
      swift_beginAccess();
      a5(&v36[*(v29 + 20)], a7 & 0x101010101FFFF01);
      swift_endAccess();
      if (v21 < *(v19 + 2))
      {
        v37 = *(v23 + 96);
        if (!v37 || (v38 = v30[85], swift_beginAccess(), *(&v38->Flags + v37) != *v36))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v27 = (v24 + 32);
      v28 = (a2 + 32);
      while (v25)
      {
        if (*v27 != *v28)
        {
          goto LABEL_3;
        }

        ++v27;
        ++v28;
        if (!--v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v19 = sub_100139804(v19);
LABEL_21:
    if (v21 < *(v19 + 2))
    {
      v39 = &v19[176 * v21];
      v40 = *(v39 + 16);
      *(v39 + 16) = a2;

LABEL_28:
      *a1 = v19;
      return;
    }

    __break(1u);
LABEL_34:
    v19 = sub_100139804(v19);
LABEL_26:
    if (v21 >= *(v19 + 2))
    {
      __break(1u);
      return;
    }

    v42 = &v19[176 * v21];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v42 + 34) = 0;
    v42[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BDFC4(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(*a1 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = a3 | (a3 << 32);
    while (1)
    {
      v19 = &v15[176 * v17 + 32];
      if ((*(v19 + 24) | (*(v19 + 24) << 32)) == v18)
      {
        v20 = *(v19 + 16);
        v21 = *(v20 + 16);
        if (v21 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v17 == v16)
      {
        return;
      }
    }

    if (v21)
    {
      v22 = v20 == a2;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_14:
      a2 = *(v19 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v39 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v25 = v12;
      v26 = *(v19 + 96);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v27, v14, _s13SelectedStateV7WrappedVMa);
        v28 = _s13SelectedStateV8_StorageCMa(0);
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        v31 = swift_allocObject();
        sub_1000CBC60(v14, v31 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v31;
      }

      v32 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v33 = *(v25 + 20);
      v34 = type metadata accessor for MailboxSyncState();
      a5(&v32[v33 + *(v34 + 52)]);
      swift_endAccess();
      if (v17 < *(v15 + 2))
      {
        v35 = *(v19 + 96);
        if (!v35 || (v36 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v35 + v36) != *v32))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v23 = (v20 + 32);
      v24 = (a2 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_3;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v15 = sub_100139804(v15);
LABEL_21:
    if (v17 < *(v15 + 2))
    {
      v37 = &v15[176 * v17];
      v38 = *(v37 + 16);
      *(v37 + 16) = a2;

LABEL_28:
      *a1 = v15;
      return;
    }

    __break(1u);
LABEL_34:
    v15 = sub_100139804(v15);
LABEL_26:
    if (v17 >= *(v15 + 2))
    {
      __break(1u);
      return;
    }

    v40 = &v15[176 * v17];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v40 + 34) = 0;
    v40[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE2F4(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = a3 | (a3 << 32);
    while (1)
    {
      v17 = &v13[176 * v15 + 32];
      if ((*(v17 + 24) | (*(v17 + 24) << 32)) == v16)
      {
        v18 = *(v17 + 16);
        v19 = *(v18 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v15 == v14)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      a2 = *(v17 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v36 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v23 = v10;
      v24 = *(v17 + 96);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v25, v12, _s13SelectedStateV7WrappedVMa);
        v26 = _s13SelectedStateV8_StorageCMa(0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        sub_1000CBC60(v12, v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v29;
      }

      v30 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v31 = v30 + *(v23 + 20);
      sub_10013FC9C(8u);
      sub_100088568(&v39, 8);
      swift_endAccess();
      if (v15 < *(v13 + 2))
      {
        v32 = *(v17 + 96);
        if (!v32 || (v33 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v32 + v33) != *v30))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v13 = sub_100139804(v13);
LABEL_21:
    if (v15 < *(v13 + 2))
    {
      v34 = &v13[176 * v15];
      v35 = *(v34 + 16);
      *(v34 + 16) = a2;

LABEL_28:
      *a1 = v13;
      return;
    }

    __break(1u);
LABEL_34:
    v13 = sub_100139804(v13);
LABEL_26:
    if (v15 >= *(v13 + 2))
    {
      __break(1u);
      return;
    }

    v37 = &v13[176 * v15];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v37 + 34) = 0;
    v37[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE614(char **a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = _s13SelectedStateV7WrappedVMa(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v18 = *(*a1 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = a3 | (a3 << 32);
    while (1)
    {
      v21 = &v17[176 * v19 + 32];
      if ((*(v21 + 24) | (*(v21 + 24) << 32)) == v20)
      {
        v22 = *(v21 + 16);
        v23 = *(v22 + 16);
        if (v23 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v19 == v18)
      {
        return;
      }
    }

    if (v23)
    {
      v24 = v22 == a2;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_14:
      a2 = *(v21 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v42 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v27 = v14;
      v28 = *(v21 + 96);

      v29 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v30, v16, _s13SelectedStateV7WrappedVMa);
        v31 = _s13SelectedStateV8_StorageCMa(0);
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        v34 = swift_allocObject();
        sub_1000CBC60(v16, v34 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v34;
        v29 = &off_1005D1000;
      }

      v35 = (&v29[85]->Flags + a2);
      swift_beginAccess();
      v36 = a6 & 0x101010101FFFF01;
      v37 = v35 + *(v27 + 20);
      sub_1000D2F44(a5 & 0x101010101FFFF01, v36);
      swift_endAccess();
      if (v19 < *(v17 + 2))
      {
        v38 = *(v21 + 96);
        if (!v38 || (v39 = v29[85], swift_beginAccess(), *(&v39->Flags + v38) != *v35))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v25 = (v22 + 32);
      v26 = (a2 + 32);
      while (v23)
      {
        if (*v25 != *v26)
        {
          goto LABEL_3;
        }

        ++v25;
        ++v26;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v17 = sub_100139804(v17);
LABEL_21:
    if (v19 < *(v17 + 2))
    {
      v40 = &v17[176 * v19];
      v41 = *(v40 + 16);
      *(v40 + 16) = a2;

LABEL_28:
      *a1 = v17;
      return;
    }

    __break(1u);
LABEL_34:
    v17 = sub_100139804(v17);
LABEL_26:
    if (v19 >= *(v17 + 2))
    {
      __break(1u);
      return;
    }

    v43 = &v17[176 * v19];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v43 + 34) = 0;
    v43[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE940(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(*a1 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = a3 | (a3 << 32);
    while (1)
    {
      v19 = &v15[176 * v17 + 32];
      if ((*(v19 + 24) | (*(v19 + 24) << 32)) == v18)
      {
        v20 = *(v19 + 16);
        v21 = *(v20 + 16);
        if (v21 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v17 == v16)
      {
        return;
      }
    }

    if (v21)
    {
      v22 = v20 == a2;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_14:
      a2 = *(v19 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v38 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v25 = v12;
      v26 = *(v19 + 96);

      v27 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v28, v14, _s13SelectedStateV7WrappedVMa);
        v29 = _s13SelectedStateV8_StorageCMa(0);
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        v32 = swift_allocObject();
        sub_1000CBC60(v14, v32 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v32;
        v27 = &off_1005D1000;
      }

      v33 = v27[85] + a2;
      swift_beginAccess();
      a5(&v33[*(v25 + 20)]);
      swift_endAccess();
      if (v17 < *(v15 + 2))
      {
        v34 = *(v19 + 96);
        if (!v34 || (v35 = v27[85], swift_beginAccess(), *(&v35->Flags + v34) != *v33))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v23 = (v20 + 32);
      v24 = (a2 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_3;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v15 = sub_100139804(v15);
LABEL_21:
    if (v17 < *(v15 + 2))
    {
      v36 = &v15[176 * v17];
      v37 = *(v36 + 16);
      *(v36 + 16) = a2;

LABEL_28:
      *a1 = v15;
      return;
    }

    __break(1u);
LABEL_34:
    v15 = sub_100139804(v15);
LABEL_26:
    if (v17 >= *(v15 + 2))
    {
      __break(1u);
      return;
    }

    v39 = &v15[176 * v17];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v39 + 34) = 0;
    v39[140] = 1;
    goto LABEL_28;
  }
}

uint64_t sub_1000BEC60(uint64_t result, char a2, uint64_t a3, unsigned int a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = v7 + 32 + 176 * v10;
      if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a4 | (a4 << 32)))
      {
        v13 = *(v12 + 16);
        v14 = *(v13 + 16);
        if (v14 == *(a3 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a3;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a2;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = v18 + 176 * v10;
        *(v19 + 88) = v6;
        *(v19 + 96) = v5 & 1;
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a3 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000BEDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v236 = a7;
  v219 = a4;
  v220 = a6;
  v218 = a5;
  v221 = a3;
  v232 = a2;
  v234 = a1;
  v223 = _s13SelectedStateV7WrappedVMa(0);
  v7 = *(*(v223 - 8) + 64);
  __chkstk_darwin(v223);
  v222 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1004A4A74();
  v226 = *(v235 - 8);
  v9 = *(v226 + 64);
  v10 = __chkstk_darwin(v235);
  v231 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v228 = (&v207 - v13);
  v14 = __chkstk_darwin(v12);
  v224 = &v207 - v15;
  __chkstk_darwin(v14);
  v225 = &v207 - v16;
  v233 = type metadata accessor for State.Logger();
  v17 = *(*(v233 - 8) + 64);
  v18 = __chkstk_darwin(v233);
  v20 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v207 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = (&v207 - v25);
  __chkstk_darwin(v24);
  v28 = &v207 - v27;
  v29 = _s12LocalMailboxV6LoggerVMa();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v33 = (&v207 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v31);
  v36 = (&v207 - v35);
  v37 = __chkstk_darwin(v34);
  v39 = (&v207 - v38);
  __chkstk_darwin(v37);
  v41 = (&v207 - v40);
  v42 = type metadata accessor for UntaggedResponse(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42);
  result = __chkstk_darwin(v44);
  v49 = (&v207 - v48);
  if (v47 >> 62)
  {
    if (v47 >> 62 == 1)
    {
      v50 = *((v47 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v51 = *((v47 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1000CB7A0(v50, v51);
      sub_1000C0358(v50, v51, v236);

      return sub_1000CB7B4(v50, v51);
    }

    return result;
  }

  v52 = v23;
  v212 = v26;
  v213 = v28;
  v216 = v33;
  v217 = v20;
  v210 = v41;
  v211 = v36;
  v53 = v228;
  v209 = v39;
  v227 = v29;
  LODWORD(v229) = *(v47 + 16);
  v54 = *(v47 + 24);
  LODWORD(v36) = *(v47 + 32);
  v55 = *(v47 + 48);
  v214 = *(v47 + 40);
  v215 = v54;
  v56 = v54 >> 60;
  if ((v54 >> 60) <= 3)
  {
    if (v56 <= 1)
    {
      v101 = v232;
      if (!v56)
      {
        return result;
      }

LABEL_45:
      v159 = *v230;
      v160 = (v230 + 8);
      v161 = *(v230 + 8);
      v162 = *(v230 + 16);
      if ((*(v230 + 24) & 1) == 0)
      {
LABEL_53:

        v183 = v215;
        sub_1000CB7C8(v215);
        sub_100020D10(v159, v161, v162, 0);

        goto LABEL_57;
      }

      sub_1000CB7C8(v215);
      sub_100020D10(v159, v161, v162, 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v159;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v164 = sub_100139804(v159);
      }

      v165 = v164[2];
      v166 = v231;
      v167 = v217;
      v234 = v164;
      if (v165)
      {
        v222 = v162;
        v223 = v161;
        v224 = v159;
        v225 = v160;
        v208 = v55;
        v168 = 0;
        v259 = 0u;
        memset(v260, 0, 27);
        v257 = 0u;
        v258 = 0u;
        v169 = (v164 + 4);
        v232 = v226 + 16;
        v228 = (v226 + 32);
        v162 = v235;
        while (1)
        {
          sub_1000CBB98(v236, v167, type metadata accessor for State.Logger);
          v171 = v169[1];
          v170 = v169[2];
          v246 = *v169;
          v247 = v171;
          v248 = v170;
          v172 = v169[6];
          v174 = v169[3];
          v173 = v169[4];
          v251 = v169[5];
          v252 = v172;
          v249 = v174;
          v250 = v173;
          v175 = v169[10];
          v177 = v169[7];
          v176 = v169[8];
          v255 = v169[9];
          v256 = v175;
          v253 = v177;
          v254 = v176;
          (*v232)(v166, v167, v162);
          v161 = *(v167 + *(v233 + 20));
          sub_10000E08C(&v246, &v241);
          sub_1000CBC00(v167, type metadata accessor for State.Logger);
          v178 = v247;
          v179 = WORD6(v256);
          v159 = DWORD2(v247);

          sub_10000E0E8(&v246);
          v180 = v216;
          (*v228)();
          v181 = v180 + *(v227 + 20);
          *v181 = v161;
          *(v181 + 1) = v179;
          *(v181 + 1) = v178;
          *(v181 + 4) = v159;
          sub_10009B724(&v257, v229, v101, v180);
          sub_1000CBC00(v180, _s12LocalMailboxV6LoggerVMa);
          ++v168;
          v182 = v234[2];
          if (v168 == v182)
          {
            break;
          }

          v169 += 11;
          v166 = v231;
          v167 = v217;
          if (v168 >= v182)
          {
            __break(1u);
            goto LABEL_53;
          }
        }

        sub_100020D58(v224, v223, v222, 1);
        sub_1000CB848(v215);

        v104 = v230;
        v160 = v225;
      }

      else
      {
        sub_100020D58(v159, v161, v162, 1);
        sub_1000CB848(v215);

        v104 = v230;
      }

      *v104 = v234;
      *v160 = 0;
      *(v160 + 1) = 0;
LABEL_69:
      *(v104 + 24) = 1;
      return result;
    }

    if (v56 == 2)
    {
      v102 = v215;
      v103 = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v238 = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v239 = v103;
      v240[0] = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *(v240 + 11) = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v237 = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v104 = v230;
      v105 = *v230;
      v106 = *(v230 + 8);
      v107 = *(v230 + 16);
      if (*(v230 + 24))
      {
        v223 = v230 + 8;
        v231 = v52;

        sub_1000CB7C8(v102);
        sub_1000CB914(&v237, &v246);
        v224 = v107;
        sub_100020D10(v105, v106, v107, 1);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v105;
        if ((v108 & 1) == 0)
        {
          v109 = sub_100139804(v105);
        }

        v110 = v109[2];
        v111 = v233;
        v234 = v109;
        if (v110)
        {
          v112 = v53;
          v221 = v106;
          v222 = v105;
          v208 = v55;
          v113 = 0;
          v259 = v239;
          v260[0] = v240[0];
          *(v260 + 11) = *(v240 + 11);
          v257 = v237;
          v258 = v238;
          v36 = v109 + 4;
          v225 = (v226 + 16);
          v226 += 32;
          v114 = v211;
          while (1)
          {
            v115 = v231;
            sub_1000CBB98(v236, v231, type metadata accessor for State.Logger);
            v117 = *(v36 + 1);
            v116 = *(v36 + 2);
            v246 = *v36;
            v247 = v117;
            v248 = v116;
            v118 = *(v36 + 6);
            v120 = *(v36 + 3);
            v119 = *(v36 + 4);
            v251 = *(v36 + 5);
            v252 = v118;
            v249 = v120;
            v250 = v119;
            v121 = *(v36 + 10);
            v123 = *(v36 + 7);
            v122 = *(v36 + 8);
            v255 = *(v36 + 9);
            v256 = v121;
            v253 = v123;
            v254 = v122;
            v124 = v235;
            (*v225)(v112, v115, v235);
            v125 = *(v115 + *(v111 + 20));
            sub_10000E08C(&v246, &v241);
            sub_1000CBC00(v115, type metadata accessor for State.Logger);
            v55 = v247;
            LOWORD(v115) = WORD6(v256);
            v126 = DWORD2(v247);

            sub_10000E0E8(&v246);
            (*v226)(v114, v112, v124);
            v127 = v114 + *(v227 + 20);
            *v127 = v125;
            *(v127 + 1) = v115;
            *(v127 + 1) = v55;
            *(v127 + 4) = v126;
            sub_10009B724(&v257, v229, v232, v114);
            result = sub_1000CBC00(v114, _s12LocalMailboxV6LoggerVMa);
            ++v113;
            v128 = v234[2];
            if (v113 == v128)
            {
              break;
            }

            v36 += 22;
            v111 = v233;
            if (v113 >= v128)
            {
              __break(1u);
              goto LABEL_33;
            }
          }

          sub_1000CB970(&v237);
          sub_100020D58(v222, v221, v224, 1);
          v104 = v230;
          v102 = v215;
        }

        else
        {
          sub_1000CB970(&v237);
          sub_100020D58(v105, v106, v224, 1);
        }

        sub_1000CB848(v102);

        *v104 = v234;
        v184 = v223;
        *v223 = 0;
        *(v184 + 8) = 0;
        goto LABEL_69;
      }

      sub_1000CB7C8(v102);
      sub_1000CB914(&v237, &v246);
      sub_100020D10(v105, v106, v107, 0);

      sub_1000CB970(&v237);
      sub_1000CB848(v102);
    }

LABEL_33:
    v228 = result;
    v231 = v46;
    v208 = v55;
    v129 = v215;
    v130 = v49;
    v131 = swift_projectBox();
    v234 = v130;
    sub_1000CBB98(v131, v130, type metadata accessor for UntaggedResponse);
    v66 = v230;
    v65 = *v230;
    v63 = (v230 + 8);
    v132 = *(v230 + 8);
    v133 = *(v230 + 16);
    if ((*(v230 + 24) & 1) == 0)
    {

      sub_1000CB7C8(v129);
      sub_100020D10(v65, v132, v133, 0);

LABEL_79:
      v200 = v231;
      sub_1000CBB98(v234, v231, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v201 = *v200;
        v202 = *(v200 + 8);
        v203 = *(v200 + 96);
        v250 = *(v200 + 80);
        v251 = v203;
        v204 = *(v200 + 128);
        v252 = *(v200 + 112);
        v253 = v204;
        v205 = *(v200 + 32);
        v246 = *(v200 + 16);
        v247 = v205;
        v206 = *(v200 + 64);
        v248 = *(v200 + 48);
        v249 = v206;
        sub_1000CB8B8(&v246, &v241);
        sub_1000CA524(v201, v202, v66, &v246);
        sub_10009A0FC(&v246);
        sub_10009A0FC(&v246);
      }

      else
      {
        sub_1000CBC00(v200, type metadata accessor for UntaggedResponse);
      }

      sub_1000CBC00(v234, type metadata accessor for UntaggedResponse);
      sub_1000CB848(v129);
    }

    LODWORD(v217) = v36;
    v134 = v65[2];
    if (!v134)
    {

LABEL_71:
      sub_1000CB7C8(v129);
LABEL_78:
      *v66 = v65;
      *v63 = 0;
      v63[1] = 0;
      *(v66 + 24) = 1;
      goto LABEL_79;
    }

    v216 = v133;
    v224 = v132;
    v71 = 0;
    v58 = 128;
    v59 = &off_1005D1000;
    while (1)
    {
      v135 = *(v65 + v58);
      if (v135)
      {
        v136 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        if (*(v135 + v136) == v229)
        {
          break;
        }
      }

      ++v71;
      v58 += 176;
      if (v134 == v71)
      {

        v129 = v215;
        goto LABEL_71;
      }
    }

    v137 = v213;
    sub_1000CBB98(v236, v213, type metadata accessor for State.Logger);
    v64 = v65 + v58;
    v139 = *(v65 + v58 - 80);
    v138 = *(v65 + v58 - 64);
    v246 = *(v65 + v58 - 96);
    v247 = v139;
    v248 = v138;
    v140 = *(v65 + v58);
    v142 = *(v65 + v58 - 48);
    v141 = *(v65 + v58 - 32);
    v251 = *(v65 + v58 - 16);
    v252 = v140;
    v249 = v142;
    v250 = v141;
    v143 = *(v65 + v58 + 64);
    v145 = *(v65 + v58 + 16);
    v144 = *(v65 + v58 + 32);
    v255 = *(v65 + v58 + 48);
    v256 = v143;
    v253 = v145;
    v254 = v144;
    LODWORD(v236) = HIDWORD(v143);
    v146 = v226;
    (*(v226 + 16))(v225, v137, v235);
    LODWORD(v233) = *(v137 + *(v233 + 20));

    sub_1000CB7C8(v215);
    sub_100020D10(v65, v224, v216, 1);
    v212 = v135;

    sub_10000E08C(&v246, &v241);
    sub_1000CBC00(v137, type metadata accessor for State.Logger);
    v147 = v247;
    LODWORD(v229) = DWORD2(v247);

    sub_10000E0E8(&v246);
    v81 = v210;
    (*(v146 + 32))(v210, v225, v235);
    v148 = v81 + *(v227 + 20);
    *v148 = v233;
    *(v148 + 1) = v236;
    *(v148 + 1) = v147;
    *(v148 + 4) = v229;
    v229 = v65;
    if (v71 >= v65[2])
    {
      __break(1u);
LABEL_86:
      __break(1u);
    }

    else
    {
      v149 = *(v64 - 96);
      v150 = *(v64 - 80);
      v235 = *(v64 - 24);
      v236 = v150;
      LODWORD(v233) = *(v64 - 16);
      v151 = v220;
      v152 = v221;
      if (v220 && *(v220 + 16) && (v153 = sub_100063B5C(v236, *(v64 - 72)), (v154 & 1) != 0))
      {
        v155 = *(v151 + 56) + 72 * v153;
        v237 = *v155;
        v157 = *(v155 + 32);
        v156 = *(v155 + 48);
        v158 = *(v155 + 64);
        v238 = *(v155 + 16);
        v239 = v157;
        LOWORD(v240[1]) = v158;
        v240[0] = v156;
        v258 = *(v155 + 16);
        v259 = *(v155 + 32);
        v260[0] = *(v155 + 48);
        LOWORD(v260[1]) = *(v155 + 64);
        v257 = *v155;
        sub_100063BD4(&v237, &v241);
        v243 = v259;
        v244 = v260[0];
        v245 = v260[1];
        v241 = v257;
        v242 = v258;
      }

      else
      {
        v245 = 0;
        v243 = 0u;
        v244 = 0u;
        v241 = 0u;
        v242 = 0u;
      }

      v185 = v219;
      v64 = v218;
      v259 = v243;
      v260[0] = v244;
      LOWORD(v260[1]) = v245;
      v257 = v241;
      v258 = v242;
      LODWORD(v227) = *(v232 + 3);
      v232 = v149;

      sub_1000CA1A0(v235);
      v186 = WindowOfInterestSizes.subscript.getter(&v257, v152, v185);
      v188 = v187;
      sub_100025F40(&v241, &qword_1005CF248, &qword_1004D22C0);
      v81 = v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v64 = v222;
        sub_1000CBB98(v81 + v189, v222, _s13SelectedStateV7WrappedVMa);
        v190 = _s13SelectedStateV8_StorageCMa(0);
        v191 = *(v190 + 48);
        v192 = *(v190 + 52);
        v193 = swift_allocObject();
        sub_1000CBC60(v64, v193 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        v81 = v193;
      }

      v194 = v81 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v195 = v188 & 1;
      v196 = &v194[*(v223 + 20)];
      v59 = v210;
      sub_1000D17D0(v234, v217, v214, v208, v227, v186, v195, v210);
      swift_endAccess();

      sub_1000CB838(v235);

      v65 = v229;
      v197 = v229;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_76;
      }
    }

    v197 = sub_100139804(v65);
LABEL_76:
    sub_1000CBC00(v59, _s12LocalMailboxV6LoggerVMa);

    v198 = v71 >= *(v197 + 2);
    v66 = v230;
    v129 = v215;
    if (v198)
    {
      __break(1u);
      goto LABEL_89;
    }

    v199 = *&v197[v58];
    *&v197[v58] = v81;

    sub_100020D58(v65, v224, v216, 1);
    v65 = v197;
    goto LABEL_78;
  }

  if ((v56 - 5) < 3)
  {
    return result;
  }

  if (v56 != 4)
  {
    v101 = v232;
    if (v215 != 0x8000000000000000)
    {
      return result;
    }

    goto LABEL_45;
  }

  v57 = v230;
  v58 = *v230;
  v59 = (v230 + 8);
  v60 = *(v230 + 8);
  v61 = *(v230 + 16);
  if (*(v230 + 24))
  {
    v62 = *(v58 + 16);
    if (!v62)
    {
      goto LABEL_66;
    }

    v232 = *(v230 + 16);
    v234 = v60;
    v208 = v55;
    v63 = 0;
    v64 = 128;
    v65 = &off_1005D1000;
    while (1)
    {
      v66 = *(v58 + v64);
      if (v66)
      {
        v67 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        result = swift_beginAccess();
        v68 = *(v66 + v67);
        v69 = v235;
        if (v68 == v229)
        {
          break;
        }
      }

      v63 = (v63 + 1);
      v64 += 176;
      if (v62 == v63)
      {
        v57 = v230;
        goto LABEL_66;
      }
    }

    LODWORD(v217) = v36;
    v70 = v212;
    sub_1000CBB98(v236, v212, type metadata accessor for State.Logger);
    v71 = v58 + v64;
    v73 = *(v58 + v64 - 80);
    v72 = *(v58 + v64 - 64);
    v246 = *(v58 + v64 - 96);
    v247 = v73;
    v248 = v72;
    v74 = *(v58 + v64);
    v76 = *(v58 + v64 - 48);
    v75 = *(v58 + v64 - 32);
    v251 = *(v58 + v64 - 16);
    v252 = v74;
    v249 = v76;
    v250 = v75;
    v77 = *(v58 + v64 + 64);
    v79 = *(v58 + v64 + 16);
    v78 = *(v58 + v64 + 32);
    v255 = *(v58 + v64 + 48);
    v256 = v77;
    v253 = v79;
    v254 = v78;
    LODWORD(v236) = HIDWORD(v77);
    (*(v226 + 16))(v224, v70, v69);
    LODWORD(v233) = *(v70 + *(v233 + 20));

    sub_1000CB7C8(v215);
    sub_100020D10(v58, v234, v232, 1);

    sub_10000E08C(&v246, &v241);
    sub_1000CBC00(v70, type metadata accessor for State.Logger);
    v80 = v247;
    LODWORD(v231) = DWORD2(v247);

    sub_10000E0E8(&v246);
    v81 = v209;
    (*(v226 + 32))();
    v82 = v81 + *(v227 + 20);
    *v82 = v233;
    *(v82 + 1) = v236;
    *(v82 + 1) = v80;
    *(v82 + 4) = v231;
    if (v63 >= *(v58 + 16))
    {
      goto LABEL_86;
    }

    v83 = *(v71 - 96);
    v84 = *(v71 - 80);
    v85 = *(v71 - 24);
    v86 = *(v71 - 16);
    v236 = v83;

    v231 = v84;

    v235 = v85;
    LODWORD(v233) = v86;
    sub_1000CA1A0(v85);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v222;
    if ((v87 & 1) == 0)
    {
      v89 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v66 + v89, v88, _s13SelectedStateV7WrappedVMa);
      v90 = _s13SelectedStateV8_StorageCMa(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      v93 = swift_allocObject();
      sub_1000CBC60(v88, v93 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      v66 = v93;
    }

    v94 = v66 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v95 = *(v223 + 20);
    v96 = v94 + v95 + *(type metadata accessor for MailboxSyncState() + 48);
    v97 = *(v96 + 24);
    v98 = *(v96 + 32);
    sub_100025928(v96, v97);
    (*(v98 + 56))(v217, v214, v208, v97, v98);
    swift_endAccess();

    sub_1000CB838(v235);

    v99 = v58;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      sub_1000CBC00(v209, _s12LocalMailboxV6LoggerVMa);

      v57 = v230;
      if (v63 >= *(v99 + 2))
      {
        __break(1u);
        return result;
      }

      v100 = *&v99[v64];
      *&v99[v64] = v66;

      sub_100020D58(v58, v234, v232, 1);
      sub_1000CB848(v215);

      v58 = v99;
LABEL_66:
      *v57 = v58;
      *v59 = 0;
      v59[1] = 0;
      *(v57 + 24) = 1;
      return result;
    }

LABEL_89:
    v99 = sub_100139804(v58);
    goto LABEL_19;
  }

  v183 = v215;
  sub_1000CB7C8(v215);
  sub_100020D10(v58, v60, v61, 0);

LABEL_57:

  sub_1000CB848(v183);
}

uint64_t sub_1000C0358(unint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for State.Logger();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  if (a2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 3uLL:
        v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        return sub_1000BD254(v27);
      case 5uLL:
        v28 = result;
        v29 = v3;
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        v32 = sub_1000B4D94(v30, v31);

        sub_1000CBB98(a3, v11, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v33 = sub_1004A4A54();
        v34 = sub_1004A6034();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 68158208;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v36 = v11[*(v28 + 20)];
          sub_1000CBC00(v11, type metadata accessor for State.Logger);
          *(v35 + 10) = v36;
          *(v35 + 11) = 2048;
          *(v35 + 13) = *(v32 + 16);

          _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx] Updating mailbox priorities (%ld).", v35, 0x15u);
        }

        else
        {
          sub_1000CBC00(v11, type metadata accessor for State.Logger);
        }

        v47 = *(v29 + 40);

        *(v29 + 40) = v32;
        return result;
      case 6uLL:
        v43 = a1 & 0xFFFFFFFFFFFFFFBLL;
        v44 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v45 = *(v43 + 24);
        __chkstk_darwin(result);
        *(&v48 - 2) = a3;

        sub_1000B7288(v46, v45, sub_1000CB9C4);

      case 8uLL:
      case 0xCuLL:
      case 0x10uLL:
        v22 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
        v23 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 24);
        goto LABEL_7;
      case 9uLL:
      case 0xAuLL:
      case 0x11uLL:
        v22 = swift_projectBox();
        v23 = v22 + 1;
LABEL_7:
        v24 = *v22;
        v25 = *v23;

        __chkstk_darwin(v26);
        *(&v48 - 2) = a1;
        v18 = *v3;
        v20 = (v3 + 8);
        v19 = *(v3 + 8);
        v21 = *(v3 + 16);
        if ((*(v3 + 24) & 1) == 0)
        {
          goto LABEL_10;
        }

        v49 = *v3;
        sub_100020D10(v18, v19, v21, 1);
        sub_1000BD660(&v49, v24, v25, 1, sub_1000CBCCC);
        goto LABEL_9;
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
        v15 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v16 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        __chkstk_darwin(v17);
        *(&v48 - 2) = a1;
        v18 = *v3;
        v20 = (v3 + 8);
        v19 = *(v3 + 8);
        v21 = *(v3 + 16);
        if (*(v3 + 24))
        {
          v49 = *v3;
          sub_100020D10(v18, v19, v21, 1);
          sub_1000BDFC4(&v49, v15, v16, 1, sub_1000CB9CC);
LABEL_9:

          result = sub_100020D58(v18, v19, v21, 1);
          *v3 = v49;
          *v20 = 0;
          v20[1] = 0;
          *(v3 + 24) = 1;
        }

        else
        {
LABEL_10:
          sub_100020D10(v18, v19, v21, 0);
        }

        break;
      case 0x14uLL:
        v37 = result;
        v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000CBB98(a3, &v48 - v13, type metadata accessor for State.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v39 = sub_1004A4A54();
        v40 = sub_1004A5FF4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 68158208;
          *(v41 + 4) = 2;
          *(v41 + 8) = 256;
          v42 = v14[*(v37 + 20)];
          sub_1000CBC00(v14, type metadata accessor for State.Logger);
          *(v41 + 10) = v42;
          *(v41 + 11) = 2048;
          *(v41 + 13) = *(v38 + 16);

          _os_log_impl(&_mh_execute_header, v39, v40, "[%.*hhx] Setting %ld download requests.", v41, 0x15u);
        }

        else
        {
          sub_1000CBC00(v14, type metadata accessor for State.Logger);
        }

        sub_1000B9C38(v38, a3);

      default:
        return result;
    }
  }

  return result;
}

void sub_1000C09E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v60[-v10];
  __chkstk_darwin(v9);
  v13 = &v60[-v12];
  v14 = _s13SelectedStateV7WrappedVMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 96))
  {
    v62 = v4;
    v63 = a2;
    v18 = *(a1 + 16);
    v61 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v20 + v21, v17, _s13SelectedStateV7WrappedVMa);
      v22 = _s13SelectedStateV8_StorageCMa(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v25 = swift_allocObject();
      sub_1000CBC60(v17, v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(a1 + 96) = v25;
      v20 = v25;
    }

    v26 = v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v27 = *(v14 + 20);
    v28 = v26 + v27 + *(type metadata accessor for MailboxSyncState() + 68);
    v29 = sub_1000E6078();
    if (v29 > 1)
    {
      if (v29 != 2)
      {

        return;
      }

      if (*(a1 + 96))
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(a1 + 96);
        if ((v39 & 1) == 0)
        {
          v41 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          sub_1000CBB98(v40 + v41, v17, _s13SelectedStateV7WrappedVMa);
          v42 = _s13SelectedStateV8_StorageCMa(0);
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          v45 = swift_allocObject();
          sub_1000CBC60(v17, v45 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(a1 + 96) = v45;
          v40 = v45;
        }

        v46 = v40 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v47 = v46 + *(v14 + 20);
        sub_10013FC9C(0xCu);
        sub_100088568(&v64, 12);
        swift_endAccess();
      }

      sub_1000CBB98(v63, v13, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v30 = sub_1004A4A54();
      v48 = sub_1004A6034();

      if (os_log_type_enabled(v30, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v64 = v50;
        *v49 = 68158467;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v51 = v13[*(v62 + 20)];
        sub_1000CBC00(v13, type metadata accessor for State.Logger);
        *(v49 + 10) = v51;
        *(v49 + 11) = 2160;
        *(v49 + 13) = 0x786F626C69616DLL;
        *(v49 + 21) = 2085;
        v65 = v18;
        v66 = v61;
        v52 = sub_1004A5824();
        v54 = sub_10015BA6C(v52, v53, &v64);

        *(v49 + 23) = v54;
        _os_log_impl(&_mh_execute_header, v30, v48, "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest.", v49, 0x1Fu);
        sub_1000197E0(v50);

LABEL_18:

LABEL_24:

        return;
      }

      v59 = v13;
    }

    else if (v29)
    {
      sub_1000CBB98(v63, v8, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v30 = sub_1004A4A54();
      v31 = sub_1004A6034();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 68158467;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v55 = v8[*(v62 + 20)];
        sub_1000CBC00(v8, type metadata accessor for State.Logger);
        *(v32 + 10) = v55;
        *(v32 + 11) = 2160;
        *(v32 + 13) = 0x786F626C69616DLL;
        *(v32 + 21) = 2085;
        v67 = v18;
        v68 = v61;
        v56 = sub_1004A5824();
        v58 = sub_10015BA6C(v56, v57, &v65);

        *(v32 + 23) = v58;
        v38 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Fetching missing messages, first.";
        goto LABEL_17;
      }

      v59 = v8;
    }

    else
    {
      sub_1000CBB98(v63, v11, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v30 = sub_1004A4A54();
      v31 = sub_1004A6034();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 68158467;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v34 = v11[*(v62 + 20)];
        sub_1000CBC00(v11, type metadata accessor for State.Logger);
        *(v32 + 10) = v34;
        *(v32 + 11) = 2160;
        *(v32 + 13) = 0x786F626C69616DLL;
        *(v32 + 21) = 2085;
        v67 = v18;
        v68 = v61;
        v35 = sub_1004A5824();
        v37 = sub_10015BA6C(v35, v36, &v65);

        *(v32 + 23) = v37;
        v38 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Waiting for FindMissingMessages.";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v30, v31, v38, v32, 0x1Fu);
        sub_1000197E0(v33);

        goto LABEL_18;
      }

      v59 = v11;
    }

    sub_1000CBC00(v59, type metadata accessor for State.Logger);

    goto LABEL_24;
  }
}

_BYTE *sub_1000C1180(_BYTE *result, unint64_t a2)
{
  v2 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  if (v2 >= 0xE)
  {
    if (v2 <= 0x16)
    {
      if (((1 << v2) & 0x7A8000) != 0)
      {
        return result;
      }

      v3 = result + 2;
      if (v2 != 18)
      {
        v3 = result;
      }

      if (v2 == 16)
      {
        ++result;
      }

      else
      {
        result = v3;
      }
    }

    *result = 1;
  }

  return result;
}

uint64_t sub_1000C11D8(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 24) == 1)
  {
    v3 = result;
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(*v2 + 16);

    if (!v7)
    {
      v10 = v4;
      goto LABEL_20;
    }

    v8 = 0;
    v9 = v4 + 32;
    v28 = v6;
    v10 = v4;
    while (1)
    {
      v11 = 176 * v8;
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v4 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v13 = *(v9 + v11);
        v14 = *(v9 + v11 + 32);
        v30[1] = *(v9 + v11 + 16);
        v30[2] = v14;
        v30[0] = v13;
        v15 = *(v9 + v11 + 48);
        v16 = *(v9 + v11 + 64);
        v17 = *(v9 + v11 + 96);
        v30[5] = *(v9 + v11 + 80);
        v30[6] = v17;
        v30[3] = v15;
        v30[4] = v16;
        v18 = *(v9 + v11 + 112);
        v19 = *(v9 + v11 + 128);
        v20 = *(v9 + v11 + 160);
        v30[9] = *(v9 + v11 + 144);
        v30[10] = v20;
        v30[7] = v18;
        v30[8] = v19;
        memmove(__dst, (v9 + v11), 0xB0uLL);
        if (*(v3 + 16))
        {
          v21 = sub_100063B5C(v32, v33);
          if (v22)
          {
            break;
          }
        }

        sub_10000E08C(v30, v29);
        result = sub_10000E0E8(__dst);
        ++v12;
        v11 += 176;
        if (v7 == v12)
        {
          v6 = v28;
          goto LABEL_20;
        }
      }

      v23 = *(v3 + 56) + 48 * v21;
      v26 = *(v23 + 16);
      v27 = v5;
      v24 = *(v23 + 24);
      sub_10000E08C(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100139804(v10);
      }

      result = sub_10000E0E8(__dst);
      if (v12 >= *(v10 + 2))
      {
        goto LABEL_23;
      }

      if ((v24 & 1) == 0)
      {
        v25 = &v10[v11];
        if (v10[v11 + 200] != 1 || *(v25 + 24) != v26)
        {
          *(v25 + 24) = v26;
          v25[200] = 0;
        }
      }

      v8 = v12 + 1;
      v5 = v27;
      v6 = v28;
      if (v7 - 1 == v12)
      {
LABEL_20:
        result = sub_100020D58(v4, v5, v6, 1);
        *v2 = v10;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 1;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000C13D4(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a2 + 88) & 1) == 0 && *(a1 + 96))
  {
    v9 = result;
    v10 = *(a2 + 80);
    v11 = *(a1 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v13 + v14, v8, _s13SelectedStateV7WrappedVMa);
      v15 = _s13SelectedStateV8_StorageCMa(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      sub_1000CBC60(v8, v18 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(a1 + 96) = v18;
      v13 = v18;
    }

    v19 = v13 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    result = swift_beginAccess();
    v20 = v19 + *(v9 + 20);
    v21 = *(v20 + 32);
    if (v21 <= 1)
    {
      *(v20 + 24) = v10;
      *(v20 + 32) = v21;
    }
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    v22 = *(a2 + 48);
    if (*(a1 + 168) != 1 || *(a1 + 160) != v22)
    {
      *(a1 + 160) = v22;
      *(a1 + 168) = 0;
    }
  }

  return result;
}

void sub_1000C1574()
{
  if (v0[24])
  {
    v1 = 0;
    v2 = *(*v0 + 16);
    v3 = *v0 - 144;
    v4 = _swiftEmptyArrayStorage;
LABEL_3:
    v5 = v3 + 176 * v1;
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v7 = *(v5 + 344);
      ++v1;
      v5 += 176;
      if (!v7)
      {
        v8 = *v5;
        v9 = *(v5 + 8);
        v10 = *(v5 + 160);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100086C58(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_100086C58((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v13 = &v4[24 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v9;
        *(v13 + 6) = v10;
        v1 = v6;
        goto LABEL_3;
      }
    }
  }
}

void sub_1000C169C(uint64_t a1, uint64_t a2)
{
  v45 = sub_1004A4904();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v48 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1004A4944();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v47);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *tracingLog.unsafeMutableAddressor();
  v12 = sub_1004A6354();

  if (v12)
  {
    v44 = v4;
    v13 = sub_1000C19F8(a2);
    v14 = v13;
    v46 = v15;
    v16 = *(v13 + 16);
    v17 = v48;
    if (v16)
    {
      v18 = 0;
      v19 = (v13 + 32);
      while (v18 < *(v14 + 16))
      {
        v20 = *v19;
        v21 = v19[2];
        v50[1] = v19[1];
        v50[2] = v21;
        v50[0] = v20;
        v22 = v19[3];
        v23 = v19[4];
        v24 = v19[6];
        v50[5] = v19[5];
        v50[6] = v24;
        v50[3] = v22;
        v50[4] = v23;
        v25 = v19[7];
        v26 = v19[8];
        v27 = v19[10];
        v50[9] = v19[9];
        v50[10] = v27;
        v50[7] = v25;
        v50[8] = v26;
        ++v18;
        sub_10000E08C(v50, &v49);
        sub_10009CF2C(a1);
        sub_10000E0E8(v50);
        v19 += 11;
        if (v16 == v18)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v40[1] = v14;
      v28 = *(v46 + 16);
      if (v28)
      {
        v29 = tracingSignposter.unsafeMutableAddressor();
        v42 = a1 << 59;
        v43 = v29;
        v30 = v7 + 16;
        v41 = *(v7 + 16);
        v31 = (v44 + 8);
        v44 = v30;
        v32 = (v30 - 8);
        v33 = 32;
        v34 = v47;
        do
        {
          v35 = *(v46 + v33);
          v41(v10, v43, v34);
          sub_1004A4914();
          v36 = sub_1004A4934();
          v37 = sub_1004A6154();
          if (sub_1004A6354())
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            v39 = sub_1004A48F4();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v37, v39, "LocalMailboxRemoved", "", v38, 2u);
            v17 = v48;
          }

          (*v31)(v17, v45);
          v34 = v47;
          (*v32)(v10, v47);
          v33 += 4;
          --v28;
        }

        while (v28);
      }
    }
  }
}

uint64_t sub_1000C19F8(uint64_t a1)
{
  v2 = _swiftEmptyArrayStorage;
  v14[0] = _swiftEmptyArrayStorage;
  v14[1] = _swiftEmptyArrayStorage;
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
  }

  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  v5 = __chkstk_darwin(KeyPath);
  v13[2] = v14;
  v6 = __chkstk_darwin(v5);
  v12[2] = v7;
  __chkstk_darwin(v6);
  v11[2] = v8;
  v9 = sub_10009DE28();
  Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v2, KeyPath, sub_1000CA150, v13, sub_1000CA158, v12, sub_1000CA160, v11, v3, v9);

  return v14[0];
}

__n128 sub_1000C1B80(__n128 *a1, char **a2)
{
  v3 = a1[9];
  v30 = a1[8];
  v31 = v3;
  v32 = a1[10];
  v4 = a1[5];
  v26 = a1[4];
  v27 = v4;
  v5 = a1[7];
  v28 = a1[6];
  v29 = v5;
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v8 = *a2;
  sub_10000E08C(&v22, &v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1000853A8(0, *(v8 + 2) + 1, 1, v8);
    *a2 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000853A8((v10 > 1), v11 + 1, 1, v8);
    *a2 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[176 * v11];
  v13 = v22;
  v14 = v24;
  *(v12 + 3) = v23;
  *(v12 + 4) = v14;
  *(v12 + 2) = v13;
  v15 = v25;
  v16 = v26;
  v17 = v28;
  *(v12 + 7) = v27;
  *(v12 + 8) = v17;
  *(v12 + 5) = v15;
  *(v12 + 6) = v16;
  result = v29;
  v19 = v30;
  v20 = v32;
  *(v12 + 11) = v31;
  *(v12 + 12) = v20;
  *(v12 + 9) = result;
  *(v12 + 10) = v19;
  return result;
}

uint64_t sub_1000C1C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 172);
  v4 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v4;
  if ((result & 1) == 0)
  {
    result = sub_100086D78(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_100086D78((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 4 * v7 + 32) = v3;
  return result;
}

__n128 sub_1000C1D48(_OWORD *a1, __n128 *a2, char **a3)
{
  v4 = a1[9];
  v28[8] = a1[8];
  v28[9] = v4;
  v28[10] = a1[10];
  v5 = a1[5];
  v28[4] = a1[4];
  v28[5] = v5;
  v6 = a1[7];
  v28[6] = a1[6];
  v28[7] = v6;
  v7 = a1[1];
  v28[0] = *a1;
  v28[1] = v7;
  v8 = a1[3];
  v28[2] = a1[2];
  v28[3] = v8;
  v9 = a2[9];
  v37 = a2[8];
  v38 = v9;
  v39 = a2[10];
  v10 = a2[5];
  v33 = a2[4];
  v34 = v10;
  v11 = a2[7];
  v35 = a2[6];
  v36 = v11;
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v13 = a2[3];
  v31 = a2[2];
  v32 = v13;
  if (!sub_10009D400(v28, &v29))
  {
    v15 = *a3;
    sub_10000E08C(&v29, &v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1000853A8(0, *(v15 + 2) + 1, 1, v15);
      *a3 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1000853A8((v17 > 1), v18 + 1, 1, v15);
      *a3 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[176 * v18];
    v20 = v29;
    v21 = v31;
    *(v19 + 3) = v30;
    *(v19 + 4) = v21;
    *(v19 + 2) = v20;
    v22 = v32;
    v23 = v33;
    v24 = v35;
    *(v19 + 7) = v34;
    *(v19 + 8) = v24;
    *(v19 + 5) = v22;
    *(v19 + 6) = v23;
    result = v36;
    v25 = v37;
    v26 = v39;
    *(v19 + 11) = v38;
    *(v19 + 12) = v26;
    *(v19 + 9) = result;
    *(v19 + 10) = v25;
  }

  return result;
}

void sub_1000C1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for State.Logger();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v125 = &v112 - v11;
  __chkstk_darwin(v10);
  v13 = &v112 - v12;
  sub_1000CBB98(a3, &v112 - v12, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v122 = a3;
  v14 = sub_1004A4A54();
  v15 = sub_1004A6014();
  v16 = os_log_type_enabled(v14, v15);
  v117 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 68158208;
    *(v17 + 4) = 2;
    *(v17 + 8) = 256;
    v18 = v13[*(v6 + 20)];
    sub_1000CBC00(v13, type metadata accessor for State.Logger);
    *(v17 + 10) = v18;
    *(v17 + 11) = 2048;
    *(v17 + 13) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx] Persistence passed list of %ld mailboxes with duplicate names/IDs.", v17, 0x15u);
  }

  else
  {
    sub_1000CBC00(v13, type metadata accessor for State.Logger);
  }

  v123 = *(a2 + 16);
  if (!v123)
  {
    return;
  }

  v20 = 0;
  v21 = *(a1 + 16);
  v124 = a2 + 32;
  v22 = a1 + 32;
  *&v19 = 68159491;
  v113 = v19;
  *&v19 = 68159235;
  v112 = v19;
  while (1)
  {
    v126 = v20;
    v23 = (v124 + 96 * v20);
    v24 = v23[3];
    v137 = v23[2];
    v138 = v24;
    v139[0] = v23[4];
    *(v139 + 9) = *(v23 + 73);
    v25 = v23[1];
    v135 = *v23;
    v136 = v25;
    v26 = v135;
    sub_100099FE4(&v135, &v129);

    if (v21)
    {
      break;
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_31:
    v46 = v29[2];
    if (v46 <= 1)
    {
    }

    else
    {
      v47 = v29[6];
      LODWORD(v120) = *(v29 + 14);
      v48 = &v29[12 * v46];
      v49 = *(v48 - 6);
      LODWORD(v121) = *(v48 - 10);
      sub_1000CBB98(v122, v125, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v50 = sub_1004A4A54();
      v51 = sub_1004A6014();

      v127 = v47;

      LODWORD(v119) = v51;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v114 = v49;
        v53 = v52;
        v54 = swift_slowAlloc();
        v115 = v50;
        v116 = v54;
        v128[0] = v54;
        *v53 = v113;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v55 = *(v125 + *(v117 + 20));
        sub_1000CBC00(v125, type metadata accessor for State.Logger);
        *(v53 + 10) = v55;
        *(v53 + 11) = 2048;
        v56 = v29[2];

        *(v53 + 13) = v56;

        *(v53 + 21) = 2080;
        v57 = OpaqueMailboxID.description.getter(v26);
        v59 = v58;

        v60 = sub_10015BA6C(v57, v59, v128);

        *(v53 + 23) = v60;
        *(v53 + 31) = 2160;
        *(v53 + 33) = 0x786F626C69616DLL;
        *(v53 + 41) = 2085;
        *&v129 = v127;
        DWORD2(v129) = v120;
        v61 = sub_1004A5824();
        v63 = sub_10015BA6C(v61, v62, v128);

        *(v53 + 43) = v63;
        *(v53 + 51) = 2160;
        *(v53 + 53) = 0x786F626C69616DLL;
        *(v53 + 61) = 2085;
        *&v129 = v114;
        DWORD2(v129) = v121;
        v64 = sub_1004A5824();
        v66 = sub_10015BA6C(v64, v65, v128);

        *(v53 + 63) = v66;
        v67 = v115;
        _os_log_impl(&_mh_execute_header, v115, v119, "[%.*hhx] Persistence passed %ld copies of mailbox with ID %s %{sensitive,mask.mailbox}s - %{sensitive,mask.mailbox}s.", v53, 0x47u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CBC00(v125, type metadata accessor for State.Logger);
      }

      v68 = v136;
      v121 = DWORD2(v136);
      if (v21)
      {
        v69 = 0;
        v70 = v136 + 32;
        v71 = _swiftEmptyArrayStorage;
        v72 = DWORD2(v136) | (DWORD2(v136) << 32);
        v127 = v136 + 32;
        while (v69 < v21)
        {
          v73 = (v22 + 96 * v69);
          v74 = v73[3];
          v131 = v73[2];
          v132 = v74;
          v133[0] = v73[4];
          *(v133 + 9) = *(v73 + 73);
          v75 = v73[1];
          v129 = *v73;
          v130 = v75;
          v33 = __OFADD__(v69++, 1);
          if (v33)
          {
            goto LABEL_68;
          }

          if ((DWORD2(v130) | (DWORD2(v130) << 32)) == v72 && (v76 = *(v130 + 16), v76 == *(v68 + 16)))
          {
            if (v76)
            {
              v77 = v130 == v68;
            }

            else
            {
              v77 = 1;
            }

            if (!v77)
            {
              v78 = (v130 + 32);
              v79 = v70;
              while (v76)
              {
                if (*v78 != *v79)
                {
                  goto LABEL_37;
                }

                ++v78;
                ++v79;
                if (!--v76)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_64;
            }

LABEL_50:
            sub_100099FE4(&v129, v128);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v134 = v71;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100092088(0, v71[2] + 1, 1);
              v71 = v134;
            }

            v82 = v71[2];
            v81 = v71[3];
            if (v82 >= v81 >> 1)
            {
              sub_100092088((v81 > 1), v82 + 1, 1);
              v71 = v134;
            }

            v71[2] = v82 + 1;
            v83 = &v71[12 * v82];
            v84 = v130;
            v83[2] = v129;
            v83[3] = v84;
            v85 = v131;
            v86 = v132;
            v87 = v133[0];
            *(v83 + 105) = *(v133 + 9);
            v83[5] = v86;
            v83[6] = v87;
            v83[4] = v85;
            v70 = v127;
            if (v69 == v21)
            {
              goto LABEL_57;
            }
          }

          else
          {
LABEL_37:
            if (v69 == v21)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_67;
      }

      v71 = _swiftEmptyArrayStorage;
LABEL_57:
      v88 = v71[2];
      if (v88 > 1)
      {
        v89 = v71[4];
        v90 = &v71[12 * v88 + 4];
        v92 = *(v90 - 96);
        v91 = *(v90 - 88);
        v119 = v71[5];
        v120 = v91;
        sub_1000CBB98(v122, v118, type metadata accessor for State.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_100099FE4(&v135, &v129);

        v93 = sub_1004A4A54();
        v94 = sub_1004A6014();
        sub_10009A040(&v135);

        v127 = v89;

        LODWORD(v116) = v94;
        v95 = v94;
        v96 = v93;
        if (os_log_type_enabled(v93, v95))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v114 = v92;
          v115 = v98;
          v128[0] = v98;
          *v97 = v112;
          *(v97 + 4) = 2;
          *(v97 + 8) = 256;
          v99 = *(v118 + *(v117 + 20));
          sub_1000CBC00(v118, type metadata accessor for State.Logger);
          *(v97 + 10) = v99;
          *(v97 + 11) = 2048;
          v100 = v71[2];

          *(v97 + 13) = v100;

          *(v97 + 21) = 2160;
          *(v97 + 23) = 0x786F626C69616DLL;
          *(v97 + 31) = 2085;

          sub_10009A040(&v135);
          *&v129 = v68;
          DWORD2(v129) = v121;
          v101 = sub_1004A5824();
          v103 = sub_10015BA6C(v101, v102, v128);

          *(v97 + 33) = v103;
          *(v97 + 41) = 2080;
          v104 = OpaqueMailboxID.description.getter(v127);
          v106 = v105;

          v107 = sub_10015BA6C(v104, v106, v128);

          *(v97 + 43) = v107;
          *(v97 + 51) = 2080;
          v108 = OpaqueMailboxID.description.getter(v114);
          v110 = v109;

          v111 = sub_10015BA6C(v108, v110, v128);

          *(v97 + 53) = v111;
          _os_log_impl(&_mh_execute_header, v96, v116, "[%.*hhx] Persistence passed %ld copies of mailbox with name %{sensitive,mask.mailbox}s %s - %s.", v97, 0x3Du);
          swift_arrayDestroy();
        }

        else
        {

          sub_1000CBC00(v118, type metadata accessor for State.Logger);

          sub_10009A040(&v135);
        }

        goto LABEL_8;
      }
    }

    sub_10009A040(&v135);
LABEL_8:
    v20 = v126 + 1;
    if (v126 + 1 == v123)
    {
      return;
    }
  }

  v27 = 0;
  v28 = v26 + 32;
  v29 = _swiftEmptyArrayStorage;
  v127 = v26 + 32;
  while (v27 < v21)
  {
    v30 = (v22 + 96 * v27);
    v31 = v30[3];
    v131 = v30[2];
    v132 = v31;
    v133[0] = v30[4];
    *(v133 + 9) = *(v30 + 73);
    v32 = v30[1];
    v129 = *v30;
    v130 = v32;
    v33 = __OFADD__(v27++, 1);
    if (v33)
    {
      goto LABEL_66;
    }

    if (*(&v129 + 1) == *(&v26 + 1) && (v34 = *(v129 + 16), v34 == *(v26 + 16)))
    {
      if (v34)
      {
        v35 = v129 == v26;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        v36 = (v129 + 32);
        v37 = v28;
        while (v34)
        {
          if (*v36 != *v37)
          {
            goto LABEL_11;
          }

          ++v36;
          ++v37;
          if (!--v34)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

LABEL_24:
      sub_100099FE4(&v129, v128);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v29;
      if ((v38 & 1) == 0)
      {
        sub_100092088(0, v29[2] + 1, 1);
        v29 = v134;
      }

      v40 = v29[2];
      v39 = v29[3];
      if (v40 >= v39 >> 1)
      {
        sub_100092088((v39 > 1), v40 + 1, 1);
        v29 = v134;
      }

      v29[2] = v40 + 1;
      v41 = &v29[12 * v40];
      v42 = v130;
      v41[2] = v129;
      v41[3] = v42;
      v43 = v131;
      v44 = v132;
      v45 = v133[0];
      *(v41 + 105) = *(v133 + 9);
      v41[5] = v44;
      v41[6] = v45;
      v41[4] = v43;
      v28 = v127;
      if (v27 == v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_11:
      if (v27 == v21)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1000C2A74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6D8, &qword_1004D2B50);
  v40 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v26);
      result = sub_1004A6F14();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C2D38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF770, &qword_1004D2C90);
  v38 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = *v22;
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v24);
      result = sub_1004A6F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C2FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  v40 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v5 + 56) + 72 * v22;
      if (v40)
      {
        v47 = *(v26 + 16);
        v48 = *(v26 + 32);
        v49 = *(v26 + 48);
        v50 = *(v26 + 64);
        v46 = *v26;
      }

      else
      {
        v41 = *v26;
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *(v26 + 16);
        v45 = *(v26 + 64);
        v43 = v28;
        v44 = v27;
        v42 = v29;

        sub_100063BD4(&v41, &v46);
        v48 = v43;
        v49 = v44;
        v50 = v45;
        v46 = v41;
        v47 = v42;
      }

      v30 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v25 | (v25 << 32));
      result = sub_1004A6F14();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *(v18 + 16) = v47;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v50;
      *v18 = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C3328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6C8, &qword_1004D2B40);
  v39 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *v26;
      v42 = *(v26 + 4);
      v41 = *(v26 + 8);
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v25);
      result = sub_1004A6F14();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v27;
      *(v18 + 4) = v42;
      *(v18 + 8) = v41;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C3618(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF768, &qword_1004D2C88);
  v38 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = *v22;
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v24);
      result = sub_1004A6F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C38BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF738, &qword_1004D2BA0);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 24) = v38;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C3B80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v9 << 6);
      if (a2)
      {
LABEL_12:
        v20 = *(*(v5 + 48) + 4 * v19);
        v21 = *(v5 + 56) + 184 * v19;
        v64 = *(v21 + 128);
        v65 = *(v21 + 144);
        v66 = *(v21 + 160);
        v67 = *(v21 + 176);
        v60 = *(v21 + 64);
        v61 = *(v21 + 80);
        v62 = *(v21 + 96);
        v63 = *(v21 + 112);
        v56 = *v21;
        v57 = *(v21 + 16);
        v58 = *(v21 + 32);
        v59 = *(v21 + 48);
      }

      else
      {
LABEL_18:
        v20 = *(*(v5 + 48) + 4 * v19);
        v24 = *(v5 + 56) + 184 * v19;
        v26 = *(v24 + 32);
        v25 = *(v24 + 48);
        v27 = *v24;
        v45 = *(v24 + 16);
        v46 = v26;
        v44 = v27;
        v28 = *(v24 + 112);
        v30 = *(v24 + 64);
        v29 = *(v24 + 80);
        v50 = *(v24 + 96);
        v51 = v28;
        v48 = v30;
        v49 = v29;
        v32 = *(v24 + 144);
        v31 = *(v24 + 160);
        v33 = *(v24 + 128);
        v55 = *(v24 + 176);
        v53 = v32;
        v54 = v31;
        v52 = v33;
        v47 = v25;
        sub_10003E6D4(&v44, &v56);
        v64 = v52;
        v65 = v53;
        v66 = v54;
        v67 = v55;
        v60 = v48;
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v56 = v44;
        v57 = v45;
        v58 = v46;
        v59 = v47;
      }

      v34 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v20;
      v17 = *(v8 + 56) + 184 * v16;
      *(v17 + 128) = v64;
      *(v17 + 144) = v65;
      *(v17 + 160) = v66;
      *(v17 + 176) = v67;
      *(v17 + 64) = v60;
      *(v17 + 80) = v61;
      *(v17 + 96) = v62;
      *(v17 + 112) = v63;
      *v17 = v56;
      *(v17 + 16) = v57;
      *(v17 + 32) = v58;
      *(v17 + 48) = v59;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v13 = (v23 - 1) & v23;
        v19 = __clz(__rbit64(v23)) | (v9 << 6);
        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C3F58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF790, &qword_1004D2CB0);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56) + 12 * v21;
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = *(v8 + 40);
      result = sub_1004A6E84();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = *(v8 + 56) + 12 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000C41D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CDFA0, &qword_1004CFFE0);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56) + 16 * v21;
      v23 = *(*(v5 + 48) + 4 * v21);
      v38 = *(v22 + 9);
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v23);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v23;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 9) = v38;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C447C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v38 = *(v23 + 16);
      v39 = *(v23 + 17);
      v24 = *(v23 + 8);
      v25 = *v23;
      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = v38;
      *(v17 + 17) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C4730(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF798, &unk_1004F76A0);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = *(v5 + 56) + 24 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v38 = *(v24 + 17);
      v39 = *(v24 + 16);
      v40 = v23;
      if ((v37 & 1) == 0)
      {
        sub_100014CEC(v23, *(&v23 + 1));
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A4424();
      result = sub_1004A6F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v40;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v39;
      *(v18 + 17) = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000C4A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF748, &qword_1004D2BB0);
  v38 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 2 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = *v22;
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v24);
      result = sub_1004A6F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 2 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C4CA8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000C9C0(a3, a4);
  v37 = a2;
  result = sub_1004A6A64();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(v7 + 48) + 16 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v38 = *(*(v7 + 56) + v23);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v10 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v26 | (v26 << 32));
      result = sub_1004A6F14();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 16 * v18;
      *v19 = v25;
      *(v19 + 8) = v26;
      *(*(v10 + 56) + v18) = v38;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1000C4F48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6D0, &qword_1004D2B48);
  v39 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v42 = v23[1];
      v25 = *(v5 + 56) + 32 * v22;
      v26 = *v25;
      v27 = *(v25 + 16);
      v40 = *(v25 + 24);
      v41 = *(v25 + 8);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v42);
      result = sub_1004A6F14();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v42;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v26;
      *(v18 + 8) = v41;
      *(v18 + 16) = v27;
      *(v18 + 24) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C522C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6F8, &qword_1004D2B70);
  v46 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      if (v46)
      {
        v57 = *v23;
        v24 = *(v23 + 8);
        v25 = *(v5 + 56) + 96 * v22;
        v48 = *(v25 + 8);
        v49 = *(v25 + 24);
        v50 = *(v25 + 32);
        v56 = *(v25 + 36);
        v53 = *(v25 + 16);
        v54 = *(v25 + 40);
        v26 = *(v25 + 48);
        v51 = *v25;
        v52 = *(v25 + 56);
        v27 = *(v25 + 64);
        v55 = *(v25 + 72);
        v28 = *(v25 + 80);
        v47 = *(v25 + 88);
      }

      else
      {
        v29 = *v23;
        v24 = *(v23 + 8);
        v30 = (*(v5 + 56) + 96 * v22);
        v32 = v30[2];
        v31 = v30[3];
        v33 = v30[4];
        *&v62[9] = *(v30 + 73);
        v61 = v31;
        *v62 = v33;
        v60 = v32;
        v34 = v30[1];
        v59[0] = *v30;
        v59[1] = v34;
        v47 = v62[24];
        v28 = *&v62[16];
        v56 = BYTE4(v60);
        v54 = *(&v60 + 1);
        v55 = *(&v33 + 1);
        v26 = v31;
        v27 = v33;
        v52 = *(&v31 + 1);
        v53 = v34;
        v49 = DWORD2(v34);
        v50 = v60;
        v48 = *(&v59[0] + 1);
        v51 = *&v59[0];
        v57 = v29;

        sub_100099FE4(v59, v58);
      }

      v35 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v59[0]) = v56;
      v58[0] = v26;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v57;
      *(v17 + 8) = v24;
      v18 = *(v8 + 56) + 96 * v16;
      *v18 = v51;
      *(v18 + 8) = v48;
      *(v18 + 16) = v53;
      *(v18 + 24) = v49;
      *(v18 + 32) = v50;
      *(v18 + 36) = v56;
      *(v18 + 40) = v54;
      *(v18 + 48) = v26;
      *(v18 + 56) = v52;
      *(v18 + 64) = v27;
      *(v18 + 72) = v55;
      *(v18 + 80) = v28;
      *(v18 + 88) = v47;
      ++*(v8 + 16);
      v5 = v45;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C5638(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v38 = *(v23 + 16);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v38;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C58F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v77 = v76 - v8;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  __chkstk_darwin(v9);
  v92 = (v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = v76 - v13;
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  sub_10000C9C0(&qword_1005CF7C0, &unk_1004D2CD0);
  v17 = sub_1004A6A64();
  v18 = v17;
  if (!*(v15 + 16))
  {
LABEL_65:

    goto LABEL_66;
  }

  v76[0] = v3;
  v19 = 0;
  v20 = *(v15 + 64);
  v78 = (v15 + 64);
  v21 = 1 << *(v15 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v84 = v17 + 64;
  v82 = a2;
  v81 = v15;
  v80 = v17;
  v79 = v9;
  v88 = v14;
  v83 = v24;
LABEL_10:
  if (v23)
  {
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    goto LABEL_17;
  }

  v27 = v19;
  result = v78;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_68;
    }

    if (v19 >= v24)
    {
      break;
    }

    v29 = v78[v19];
    ++v27;
    if (v29)
    {
      v26 = __clz(__rbit64(v29));
      v23 = (v29 - 1) & v29;
LABEL_17:
      v30 = v26 | (v19 << 6);
      v31 = *(v85 + 72);
      v32 = *(v15 + 48) + v31 * v30;
      if (a2)
      {
        sub_1000CBC60(v32, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1000CBB98(v32, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      v90 = *(*(v15 + 56) + v30);
      v33 = *(v18 + 40);
      sub_1004A6E94();
      sub_1000CBB98(v14, v92, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v86 = v31;
        v87 = v23;
        if (!EnumCaseMultiPayload)
        {
          v35 = v77;
          sub_100025FDC(v92, v77, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          LOBYTE(a2) = v82;
          sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_49;
        }

        v76[1] = *v92;
        v51 = *(v92 + 2);
        v52 = v92[2];
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v51 | (v51 << 32));
        v53 = v52 + 64;
        v54 = 1 << *(v52 + 32);
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v56 = v55 & *(v52 + 64);
        v57 = (v54 + 63) >> 6;
        v89 = v52;

        v58 = 0;
        for (i = 0; v56; v14 = v88)
        {
          v91 = v58;
          v60 = i;
LABEL_44:
          v61 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          v62 = v61 | (v60 << 6);
          v63 = *(*(v89 + 48) + 4 * v62);
          v64 = (*(v89 + 56) + 24 * v62);
          v65 = *v64;
          v67 = *(v64 + 1);
          v66 = *(v64 + 2);
          sub_100014CEC(v67, v66);
          v95 = v100;
          v96 = v101;
          v97 = v102;
          v93 = v98;
          v94 = v99;
          sub_1004A6EE4(v63);
          sub_1004A6EB4(v65);
          sub_100014CEC(v67, v66);
          sub_1004A4424();
          sub_100014D40(v67, v66);
          sub_100014D40(v67, v66);
          result = sub_1004A6F14();
          v58 = result ^ v91;
        }

        while (1)
        {
          v60 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v60 >= v57)
          {

            sub_1004A6EB4(v58);

            LOBYTE(a2) = v82;
            v15 = v81;
            v18 = v80;
            goto LABEL_49;
          }

          v56 = *(v53 + 8 * v60);
          ++i;
          if (v56)
          {
            v91 = v58;
            i = v60;
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return result;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v86 = v31;
        v87 = v23;
        v89 = *v92;
        v36 = *(v92 + 2);
        v37 = v92[2];
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v36 | (v36 << 32));
        v38 = v37 + 64;
        v39 = 1 << *(v37 + 32);
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        else
        {
          v40 = -1;
        }

        v41 = v40 & *(v37 + 64);
        v42 = (v39 + 63) >> 6;
        v91 = v37;

        v43 = 0;
        v44 = 0;
        if (v41)
        {
          while (1)
          {
            v45 = v44;
LABEL_32:
            v46 = __clz(__rbit64(v41)) | (v45 << 6);
            v47 = *(*(v91 + 48) + 4 * v46);
            v48 = (*(v91 + 56) + 16 * v46);
            v50 = *v48;
            v49 = v48[1];
            sub_100014CEC(*v48, v49);
            if (v49 >> 60 == 15)
            {
              break;
            }

            v41 &= v41 - 1;
            v95 = v100;
            v96 = v101;
            v97 = v102;
            v93 = v98;
            v94 = v99;
            sub_1004A6EE4(v47);
            sub_1004A4424();
            sub_100014D40(v50, v49);
            result = sub_1004A6F14();
            v43 ^= result;
            v44 = v45;
            if (!v41)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_29:
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_69;
            }

            if (v45 >= v42)
            {
              break;
            }

            v41 = *(v38 + 8 * v45);
            ++v44;
            if (v41)
            {
              goto LABEL_32;
            }
          }
        }

        sub_1004A6EB4(v43);

        LOBYTE(a2) = v82;
        v15 = v81;
        v18 = v80;
        v14 = v88;
LABEL_49:
        v23 = v87;
        v31 = v86;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      result = sub_1004A6F14();
      v68 = -1 << *(v18 + 32);
      v69 = result & ~v68;
      v70 = v69 >> 6;
      if (((-1 << v69) & ~*(v84 + 8 * (v69 >> 6))) == 0)
      {
        v71 = 0;
        v72 = (63 - v68) >> 6;
        while (++v70 != v72 || (v71 & 1) == 0)
        {
          v73 = v70 == v72;
          if (v70 == v72)
          {
            v70 = 0;
          }

          v71 |= v73;
          v74 = *(v84 + 8 * v70);
          if (v74 != -1)
          {
            v25 = __clz(__rbit64(~v74)) + (v70 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_70;
      }

      v25 = __clz(__rbit64((-1 << v69) & ~*(v84 + 8 * (v69 >> 6)))) | v69 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v84 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1000CBC60(v14, *(v18 + 48) + v31 * v25, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(*(v18 + 56) + v25) = v90;
      ++*(v18 + 16);
      v24 = v83;
      goto LABEL_10;
    }
  }

  if (a2)
  {
    v75 = 1 << *(v15 + 32);
    v3 = v76[0];
    if (v75 >= 64)
    {
      bzero(v78, ((v75 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v78 = -1 << v75;
    }

    *(v15 + 16) = 0;
    goto LABEL_65;
  }

  v3 = v76[0];
LABEL_66:
  *v3 = v18;
  return result;
}

uint64_t sub_1000C6184(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v87 = &v84 - v8;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v84 - v14;
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF7B0, &qword_1004D2CC0);
  v18 = sub_1004A6A64();
  v19 = v18;
  if (!*(v16 + 16))
  {
LABEL_63:

    goto LABEL_64;
  }

  v85 = v2;
  v20 = 0;
  v21 = *(v16 + 64);
  v88 = (v16 + 64);
  v22 = 1 << *(v16 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v95 = a2;
  v93 = v16;
  v92 = v18;
  v91 = v9;
  v90 = v12;
  v89 = v15;
  v94 = v25;
  v26 = v9;
  v27 = a2;
  v96 = v18 + 64;
LABEL_10:
  if (v24)
  {
    v30 = v26;
    v31 = __clz(__rbit64(v24));
    v98 = (v24 - 1) & v24;
    goto LABEL_17;
  }

  v32 = v20;
  result = v88;
  while (1)
  {
    v20 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_66;
    }

    if (v20 >= v25)
    {
      break;
    }

    v34 = v88[v20];
    ++v32;
    if (v34)
    {
      v30 = v26;
      v31 = __clz(__rbit64(v34));
      v98 = (v34 - 1) & v34;
LABEL_17:
      v35 = v31 | (v20 << 6);
      v36 = *(v16 + 48);
      v37 = *(v36 + 8 * v35);
      v38 = *(*(v16 + 56) + 8 * v35);
      if ((v27 & 1) == 0)
      {
        v39 = *(v36 + 8 * v35);
      }

      v99 = v38;
      v40 = *(v19 + 40);
      sub_1004A6E94();
      v41 = *(*v37 + 96);
      swift_beginAccess();
      sub_1000CBB98(v37 + v41, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000CBB98(v15, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v26 = v30;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v101 = v37;
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v43 = v87;
          sub_100025FDC(v12, v87, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          v26 = v30;
          sub_1004A5564();
          v37 = v101;
          sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_48;
        }

        v86 = *v12;
        v59 = *(v12 + 2);
        v60 = *(v12 + 2);
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v59 | (v59 << 32));
        v61 = v60 + 64;
        v62 = 1 << *(v60 + 32);
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        else
        {
          v63 = -1;
        }

        v64 = v63 & *(v60 + 64);
        v65 = (v62 + 63) >> 6;
        v97 = v60;

        v66 = 0;
        for (i = 0; v64; v37 = v101)
        {
          v100 = v66;
          v68 = i;
LABEL_43:
          v69 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          v70 = v69 | (v68 << 6);
          v71 = *(*(v97 + 48) + 4 * v70);
          v72 = (*(v97 + 56) + 24 * v70);
          v73 = *v72;
          v75 = *(v72 + 1);
          v74 = *(v72 + 2);
          sub_100014CEC(v75, v74);
          v104 = v109;
          v105 = v110;
          v106 = v111;
          v103 = v108;
          v102 = v107;
          sub_1004A6EE4(v71);
          sub_1004A6EB4(v73);
          sub_100014CEC(v75, v74);
          sub_1004A4424();
          sub_100014D40(v75, v74);
          sub_100014D40(v75, v74);
          result = sub_1004A6F14();
          v66 = result ^ v100;
        }

        while (1)
        {
          v68 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v68 >= v65)
          {

            sub_1004A6EB4(v66);

            v16 = v93;
            v19 = v92;
            v26 = v91;
            v12 = v90;
            v15 = v89;
            goto LABEL_48;
          }

          v64 = *(v61 + 8 * v68);
          ++i;
          if (v64)
          {
            v100 = v66;
            i = v68;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return result;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v97 = *v12;
        v44 = *(v12 + 2);
        v45 = *(v12 + 2);
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v44 | (v44 << 32));
        v46 = v45 + 64;
        v47 = 1 << *(v45 + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v45 + 64);
        v50 = (v47 + 63) >> 6;
        v100 = v45;

        v51 = 0;
        v52 = 0;
        if (v49)
        {
          while (1)
          {
            v53 = v52;
LABEL_31:
            v54 = __clz(__rbit64(v49)) | (v53 << 6);
            v55 = *(*(v100 + 48) + 4 * v54);
            v56 = (*(v100 + 56) + 16 * v54);
            v57 = *v56;
            v58 = v56[1];
            sub_100014CEC(*v56, v58);
            if (v58 >> 60 == 15)
            {
              break;
            }

            v49 &= v49 - 1;
            v104 = v109;
            v105 = v110;
            v106 = v111;
            v103 = v108;
            v102 = v107;
            sub_1004A6EE4(v55);
            sub_1004A4424();
            sub_100014D40(v57, v58);
            result = sub_1004A6F14();
            v51 ^= result;
            v52 = v53;
            if (!v49)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_28:
            v53 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_67;
            }

            if (v53 >= v50)
            {
              break;
            }

            v49 = *(v46 + 8 * v53);
            ++v52;
            if (v49)
            {
              goto LABEL_31;
            }
          }
        }

        sub_1004A6EB4(v51);

        v16 = v93;
        v19 = v92;
        v26 = v91;
        v12 = v90;
        v15 = v89;
        v37 = v101;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

LABEL_48:
      sub_1000CBC00(v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      result = sub_1004A6F14();
      v76 = -1 << *(v19 + 32);
      v77 = result & ~v76;
      v78 = v77 >> 6;
      if (((-1 << v77) & ~*(v96 + 8 * (v77 >> 6))) == 0)
      {
        v79 = 0;
        v80 = (63 - v76) >> 6;
        v29 = v99;
        while (++v78 != v80 || (v79 & 1) == 0)
        {
          v81 = v78 == v80;
          if (v78 == v80)
          {
            v78 = 0;
          }

          v79 |= v81;
          v82 = *(v96 + 8 * v78);
          if (v82 != -1)
          {
            v28 = __clz(__rbit64(~v82)) + (v78 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_68;
      }

      v28 = __clz(__rbit64((-1 << v77) & ~*(v96 + 8 * (v77 >> 6)))) | v77 & 0x7FFFFFFFFFFFFFC0;
      v29 = v99;
LABEL_9:
      *(v96 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v19 + 48) + 8 * v28) = v37;
      *(*(v19 + 56) + 8 * v28) = v29;
      ++*(v19 + 16);
      v25 = v94;
      v24 = v98;
      v27 = v95;
      goto LABEL_10;
    }
  }

  if (v27)
  {
    v83 = 1 << *(v16 + 32);
    v3 = v85;
    if (v83 >= 64)
    {
      bzero(v88, ((v83 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v88 = -1 << v83;
    }

    *(v16 + 16) = 0;
    goto LABEL_63;
  }

  v3 = v85;
LABEL_64:
  *v3 = v19;
  return result;
}

uint64_t sub_1000C6A34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF778, &qword_1004D2C98);
  v33 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C6CC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF7C8, &qword_1004D3CD0);
  v39 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 40 * v22);
      v44 = *v24;
      v42 = *(v24 + 1);
      v25 = *(v24 + 1);
      v43 = *(v24 + 4);
      v27 = *(v24 + 3);
      v26 = *(v24 + 4);
      v28 = (v23 + 12 * v22);
      v41 = *v28;
      v40 = *(v28 + 8);
      if ((v39 & 1) == 0)
      {

        sub_100014CEC(v27, v26);
      }

      v29 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v44);
      sub_1004A6EE4(v42);
      sub_1004A6EB4(v43 | (v43 << 32));
      sub_1004A4424();
      result = sub_1004A6F14();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      *v17 = v44;
      *(v17 + 4) = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v43;
      *(v17 + 24) = v27;
      *(v17 + 32) = v26;
      v18 = *(v8 + 56) + 12 * v16;
      *v18 = v41;
      *(v18 + 8) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C7000(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF7B8, &qword_1004D2CC8);
  v35 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *(v23 + 8);
      v38 = *(v23 + 16);
      v36 = *(v23 + 32);
      v37 = *v23;
      if ((v35 & 1) == 0)
      {
        sub_100014CEC(v24, v38);
      }

      v25 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v37;
      *(v17 + 8) = v24;
      *(v17 + 16) = v38;
      *(v17 + 32) = v36;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C72D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF7D8, &qword_1004D3CC0);
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_100014CEC(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C7564(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v38 = *v23;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      if ((v37 & 1) == 0)
      {
        sub_100014CEC(v24, v25);
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v38;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C781C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6E8, &qword_1004D2B60);
  v39 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v27 = *v23;
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v25 | (v25 << 32));
      result = sub_1004A6F14();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C7AC8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6E0, &qword_1004D2B58);
  v44 = a2;
  result = sub_1004A6A64();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 16 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100025FDC(v31, v45, &unk_1005D91B0, &unk_1004CF400);
      }

      else
      {
        sub_10000E268(v31, v45, &unk_1005D91B0, &unk_1004CF400);
      }

      v32 = *(v12 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v29 | (v29 << 32));
      result = sub_1004A6F14();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 16 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      result = sub_100025FDC(v45, *(v12 + 56) + v30 * v20, &unk_1005D91B0, &unk_1004CF400);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1000C7E44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF6F0, &qword_1004D2B68);
  v38 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v5 + 56) + 48 * v22;
      v27 = *(v26 + 8);
      v42 = *(v26 + 16);
      v43 = *v26;
      v41 = *(v26 + 24);
      v40 = *(v26 + 32);
      v39 = *(v26 + 40);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v25 | (v25 << 32));
      result = sub_1004A6F14();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v43;
      *(v18 + 8) = v27;
      *(v18 + 16) = v42;
      *(v18 + 24) = v41;
      *(v18 + 32) = v40;
      *(v18 + 40) = v39;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C8144(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF740, &qword_1004D2BA8);
  v35 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v36 = *(*(v5 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(*(v8 + 56) + 8 * v16) = v36;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C83EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF760, &qword_1004D2BC8);
  v38 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C86B4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000C9C0(a3, a4);
  v40 = a2;
  result = sub_1004A6A64();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1000C8954(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000C9C0(&qword_1005CF788, &qword_1004D2CA8);
  v37 = a2;
  result = sub_1004A6A64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v38 = *(v23 + 8);
      v25 = *(v23 + 16);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v38;
      *(v17 + 16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C8C10(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_10000C9C0(&qword_1005CF780, &qword_1004D2CA0);
  v42 = a2;
  result = sub_1004A6A64();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v26;
      v43 = *(*(v10 + 48) + 16 * v26);
      v29 = *(&v43 + 1);
      if (v42)
      {
        sub_100025FDC(v28, v9, &unk_1005D91B0, &unk_1004CF400);
      }

      else
      {
        sub_10000E268(v28, v9, &unk_1005D91B0, &unk_1004CF400);
      }

      v30 = *(v13 + 40);
      sub_1004A6E94();
      sub_100092C14(v44, v43);
      sub_100092C14(v44, v29);
      result = sub_1004A6F14();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v43;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v22;
      result = sub_100025FDC(v9, *(v13 + 56) + v27 * v21, &unk_1005D91B0, &unk_1004CF400);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

void *sub_1000C8F9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100099FE4(a4, &v9);
    v8 = sub_1000CA830(v7, a2, a3, a4);

    sub_10009A040(a4);
    sub_10009A040(a4);
    return v8;
  }

  return result;
}

Swift::Int sub_1000C9048(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  if (*v3)
  {
    v8 = sub_10015C0B4(a1, a2, v7, v6, (*v3 + 16));
    if (v9)
    {
      return v8;
    }
  }

  else
  {
    v8 = sub_10015C014(a1, a2, v7, v6);
    if (v10)
    {
      return v8;
    }
  }

  v11 = a3[9];
  v17[8] = a3[8];
  v17[9] = v11;
  v17[10] = a3[10];
  v12 = a3[5];
  v17[4] = a3[4];
  v17[5] = v12;
  v13 = a3[7];
  v17[6] = a3[6];
  v17[7] = v13;
  v14 = a3[1];
  v17[0] = *a3;
  v17[1] = v14;
  v15 = a3[3];
  v17[2] = a3[2];
  v17[3] = v15;
  sub_100025F40(v17, &qword_1005CF700, &qword_1004D2B78);
  sub_1000C9130(v8, *(v3[2] + 16) - 1);
  sub_1000C9348(a3);
  UInt32.init(_:)(a3);
  return v8;
}

unint64_t sub_1000C9130(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        v7 = (v4 + 32 + 176 * result);
        v8 = *v7;
        v9 = v7[2];
        v62 = v7[1];
        v63 = v9;
        v61 = v8;
        v10 = v7[3];
        v11 = v7[4];
        v12 = v7[6];
        v66 = v7[5];
        v67 = v12;
        v64 = v10;
        v65 = v11;
        v13 = v7[7];
        v14 = v7[8];
        v15 = v7[10];
        v70 = v7[9];
        v71 = v15;
        v68 = v13;
        v69 = v14;
        if (v5 > a2)
        {
          v16 = (v4 + 32 + 176 * a2);
          v17 = *v16;
          v18 = v16[2];
          v73 = v16[1];
          v74 = v18;
          v72 = v17;
          v19 = v16[3];
          v20 = v16[4];
          v21 = v16[6];
          v77 = v16[5];
          v78 = v21;
          v75 = v19;
          v76 = v20;
          v22 = v16[7];
          v23 = v16[8];
          v24 = v16[10];
          v81 = v16[9];
          v82 = v24;
          v79 = v22;
          v80 = v23;
          sub_10000E08C(&v61, v60);
          sub_10000E08C(&v72, v60);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100141AFC(v4);
            v4 = result;
          }

          if (*(v4 + 16) > v3)
          {
            v25 = (v4 + 32 + 176 * v3);
            v26 = *v25;
            v27 = v25[2];
            v59[1] = v25[1];
            v59[2] = v27;
            v59[0] = v26;
            v28 = v25[3];
            v29 = v25[4];
            v30 = v25[6];
            v59[5] = v25[5];
            v59[6] = v30;
            v59[3] = v28;
            v59[4] = v29;
            v31 = v25[7];
            v32 = v25[8];
            v33 = v25[10];
            v59[9] = v25[9];
            v59[10] = v33;
            v59[7] = v31;
            v59[8] = v32;
            v34 = v72;
            v35 = v74;
            v25[1] = v73;
            v25[2] = v35;
            *v25 = v34;
            v36 = v75;
            v37 = v76;
            v38 = v78;
            v25[5] = v77;
            v25[6] = v38;
            v25[3] = v36;
            v25[4] = v37;
            v39 = v79;
            v40 = v80;
            v41 = v82;
            v25[9] = v81;
            v25[10] = v41;
            v25[7] = v39;
            v25[8] = v40;
            result = sub_10000E0E8(v59);
            if (*(v4 + 16) > a2)
            {
              v42 = (v4 + 32 + 176 * a2);
              v43 = *v42;
              v44 = v42[2];
              v60[1] = v42[1];
              v60[2] = v44;
              v60[0] = v43;
              v45 = v42[3];
              v46 = v42[4];
              v47 = v42[6];
              v60[5] = v42[5];
              v60[6] = v47;
              v60[3] = v45;
              v60[4] = v46;
              v48 = v42[7];
              v49 = v42[8];
              v50 = v42[10];
              v60[9] = v42[9];
              v60[10] = v50;
              v60[7] = v48;
              v60[8] = v49;
              v51 = v61;
              v52 = v63;
              v42[1] = v62;
              v42[2] = v52;
              *v42 = v51;
              v53 = v64;
              v54 = v65;
              v55 = v67;
              v42[5] = v66;
              v42[6] = v55;
              v42[3] = v53;
              v42[4] = v54;
              v56 = v68;
              v57 = v69;
              v58 = v71;
              v42[9] = v70;
              v42[10] = v58;
              v42[7] = v56;
              v42[8] = v57;
              result = sub_10000E0E8(v60);
              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_1000C9348(_OWORD *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1000C9A14(&v9);
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    if (sub_100021348(v20) == 1)
    {
      v8[8] = v17;
      v8[9] = v18;
      v8[10] = v19;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      sub_100025F40(v8, &qword_1005CF700, &qword_1004D2B78);
      sub_10018964C(*(*v1 + 16) - 1, a1);
    }

    else
    {
      v3 = v18;
      a1[8] = v17;
      a1[9] = v3;
      a1[10] = v19;
      v4 = v14;
      a1[4] = v13;
      a1[5] = v4;
      v5 = v16;
      a1[6] = v15;
      a1[7] = v5;
      v6 = v10;
      *a1 = v9;
      a1[1] = v6;
      v7 = v12;
      a1[2] = v11;
      a1[3] = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

int64_t sub_1000C9458(uint64_t a1, void *a2)
{
  v44 = _s19UserInitiatedSearchVMa(0);
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v44);
  v45 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = (&v42 - v8);
  v10 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v42 - v15);
  v17 = sub_10000C9C0(&qword_1005CF708, &qword_1004D2B80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v42 - v19);
  v54 = sub_10000C9C0(&qword_1005CF710, &qword_1004D2B88);
  v55 = sub_1000CBB00(&qword_1005CF718, &qword_1005CF710, &qword_1004D2B88);
  v53[0] = a1;
  v49 = v53;

  result = sub_10015C338(sub_1000CB6F4, v48);
  v22 = *(*a2 + 16);
  if (v22 < result)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v42 = 0;
    v47 = v10;
    sub_1001649C0(result, v22);
    v23 = v54;
    v24 = sub_10002587C(v53, v54);
    v46 = &v42;
    v25 = *(*(v23 - 8) + 64);
    __chkstk_darwin(v24);
    (*(v27 + 16))(&v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1000B3774(v50);
    sub_1004A5AC4();
    v46 = (v11 + 48);
LABEL_3:
    while (1)
    {
      sub_100025928(v50, AssociatedTypeWitness);
      sub_1004A6414();
      v28 = v47;
      if ((*v46)(v20, 1, v47) == 1)
      {
        break;
      }

      v29 = *v20;
      v30 = *(v28 + 48);
      *v16 = *v20;
      result = sub_1000CBC60(v20 + v30, v16 + v30, _s19UserInitiatedSearchV5StateOMa);
      v31 = 0;
      v32 = a2;
      v33 = *a2;
      v34 = *(*a2 + 16);
      while (v34 != v31)
      {
        if (v31 >= v33[2])
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_1000CBB98(v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31++, v9, _s19UserInitiatedSearchVMa);
        v35 = *v9;
        result = sub_1000CBC00(v9, _s19UserInitiatedSearchVMa);
        if (v35 == v29)
        {
          sub_100025F40(v16, &qword_1005CEF88, &qword_1004D1E68);
          a2 = v32;
          goto LABEL_3;
        }
      }

      v36 = v43;
      sub_10000E268(v16, v43, &qword_1005CEF88, &qword_1004D1E68);
      v37 = *(v47 + 48);
      v38 = v44;
      v39 = v45;
      *v45 = v29;
      sub_1000CBC60(v36 + v37, v39 + *(v38 + 20), _s19UserInitiatedSearchV5StateOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_100086310(0, v33[2] + 1, 1, v33);
      }

      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        v33 = sub_100086310(v40 > 1, v41 + 1, 1, v33);
      }

      sub_100025F40(v16, &qword_1005CEF88, &qword_1004D1E68);
      v33[2] = v41 + 1;
      sub_1000CBC60(v45, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v41, _s19UserInitiatedSearchVMa);
      a2 = v32;
      *v32 = v33;
    }

    sub_1000197E0(v50);
    return sub_1000197E0(v53);
  }

  return result;
}

uint64_t sub_1000C9A14@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    memmove(a1, (v3 + 176 * v5 - 144), 0xB0uLL);
    *(v3 + 16) = v6;
    *v1 = v3;

    return UInt32.init(_:)(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9A9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v34 = a1[8];
  v2 = v34;
  v35 = v3;
  v5 = a1[9];
  v6 = a1[11];
  v36 = a1[10];
  v7 = v36;
  v37 = v6;
  v8 = a1[5];
  v10 = a1[3];
  v30 = a1[4];
  v9 = v30;
  v31 = v8;
  v11 = a1[5];
  v12 = a1[7];
  v32 = a1[6];
  v13 = v32;
  v33 = v12;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v15 = a1[1];
  v16 = a1[3];
  v28 = a1[2];
  v17 = v28;
  v29 = v16;
  v18 = a1[8];
  v19 = a1[10];
  *(a2 + 144) = a1[9];
  *(a2 + 160) = v19;
  *(a2 + 176) = a1[11];
  v20 = a1[4];
  v21 = a1[6];
  *(a2 + 80) = a1[5];
  *(a2 + 96) = v21;
  *(a2 + 112) = a1[7];
  *(a2 + 128) = v18;
  v22 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v22;
  *(a2 + 48) = a1[3];
  *(a2 + 64) = v20;
  v38[8] = v5;
  v38[9] = v7;
  v38[10] = a1[11];
  v38[4] = v11;
  v38[5] = v13;
  v38[6] = v4;
  v38[7] = v2;
  v38[0] = v15;
  v38[1] = v17;
  v23 = DWORD2(v26);
  *a2 = v26;
  *(a2 + 8) = v23;
  v38[2] = v10;
  v38[3] = v9;
  sub_10000E08C(&v27, v25);
  sub_10000E268(&v26, v25, &qword_1005CF728, &qword_1004D2B90);
  return sub_10000E0E8(v38);
}

uint64_t sub_1000C9B9C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *a2;
  v6 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

    v7 = *(result + 16);
    if (v7 != *(v5 + 16))
    {
      return 0;
    }

    v49 = a2;
    if (v7)
    {
      v8 = result == v5;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (result + 32);
      v10 = (v5 + 32);
      while (1)
      {
        v11 = *v9;
        v12 = v9[2];
        v51[1] = v9[1];
        v51[2] = v12;
        v51[0] = v11;
        v13 = v9[3];
        v14 = v9[4];
        v15 = v9[6];
        v51[5] = v9[5];
        v51[6] = v15;
        v51[3] = v13;
        v51[4] = v14;
        v16 = v9[7];
        v17 = v9[8];
        v18 = v9[10];
        v51[9] = v9[9];
        v51[10] = v18;
        v51[7] = v16;
        v51[8] = v17;
        if (!v7)
        {
          break;
        }

        v19 = *v10;
        v20 = v10[2];
        v52[1] = v10[1];
        v52[2] = v20;
        v52[0] = v19;
        v21 = v10[3];
        v22 = v10[4];
        v23 = v10[6];
        v52[5] = v10[5];
        v52[6] = v23;
        v52[3] = v21;
        v52[4] = v22;
        v24 = v10[7];
        v25 = v10[8];
        v26 = v10[10];
        v52[9] = v10[9];
        v52[10] = v26;
        v52[7] = v24;
        v52[8] = v25;
        sub_10000E08C(v51, v50);
        sub_10000E08C(v52, v50);
        v27 = sub_10009D400(v51, v52);
        sub_10000E0E8(v52);
        result = sub_10000E0E8(v51);
        if (!v27)
        {
          return 0;
        }

        v9 += 11;
        v10 += 11;
        if (!--v7)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    v28 = *(a1 + 8);
    v29 = *(a1 + 16);
    v31 = *(a2 + 8);
    v30 = *(a2 + 16);
    result = sub_10011442C(result, v5);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v48 = v30;
    v32 = *(v28 + 16);
    if (v32 != *(v31 + 16))
    {
      return 0;
    }

    v47 = v29;
    v49 = a2;
    if (v32)
    {
      v33 = v28 == v31;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      v34 = (v28 + 48);
      v35 = (v31 + 48);
      while (v32)
      {
        v37 = *(v34 - 1);
        v36 = *v34;
        v38 = *(v34 - 4);
        v39 = *(v35 - 4);
        v40 = *(v35 - 1);
        v41 = *v35;
        sub_1000C9E18(v37, *v34);
        sub_1000C9E18(v40, v41);
        LOBYTE(v38) = static SearchRequest.__derived_struct_equals(_:_:)(v38, v37, v36, v39, v40, v41);
        sub_1000C9EF0(v40, v41);
        result = sub_1000C9EF0(v37, v36);
        if ((v38 & 1) == 0)
        {
          return 0;
        }

        v34 += 3;
        v35 += 3;
        if (!--v32)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_34;
    }

LABEL_24:
    if ((sub_1000FFDEC(v47, v48) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if ((sub_1001141E0(*(a1 + 32), *(v49 + 32)) & 1) == 0 || (sub_100114320(*(a1 + 40), *(v49 + 40)) & 1) == 0)
  {
    return 0;
  }

  v42 = *(a1 + 56);
  v43 = *(a1 + 64);
  v44 = *(v49 + 56);
  v45 = *(v49 + 64);
  v46 = sub_100100010(*(a1 + 48), *(v49 + 48));
  result = 0;
  if ((v46 & 1) != 0 && v42 == v44 && v43 == v45)
  {
    return *(a1 + 72) == *(v49 + 72);
  }

  return result;
}

unint64_t sub_1000C9E18(uint64_t a1, unint64_t a2)
{

  if ((a2 & 4) == 0)
  {

    return sub_1000C9E60(a2);
  }

  return result;
}

unint64_t sub_1000C9E60(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9 || v1 == 10 || v1 == 11)
      {
      }
    }

    else if (v1 == 6 || v1 == 7 || v1 == 8)
    {
    }
  }

  else
  {
    if (v1 <= 2)
    {
      if (v1 > 2)
      {
        return result;
      }
    }

    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

unint64_t sub_1000C9EF0(uint64_t a1, unint64_t a2)
{

  if ((a2 & 4) == 0)
  {

    return sub_1000C9F38(a2);
  }

  return result;
}

unint64_t sub_1000C9F38(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9 || v1 == 10 || v1 == 11)
      {
      }
    }

    else if (v1 == 6 || v1 == 7 || v1 == 8)
    {
    }
  }

  else
  {
    if (v1 <= 2)
    {
      if (v1 > 2)
      {
        return result;
      }
    }

    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t sub_1000C9FC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000C9FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = a2 + 56;
  v6 = 0;
  v7 = *(_s19UserInitiatedSearchVMa(0) - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    if (*(a2 + 16))
    {
      v10 = *(v8 + v9 * v6);
      v11 = *(a2 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      v12 = sub_1004A6F14();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        break;
      }
    }

LABEL_3:
    if (++v6 == v2)
    {
      return 0;
    }
  }

  v15 = ~v13;
  while (*(*(a2 + 48) + 4 * v14) != v10)
  {
    v14 = (v14 + 1) & v15;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

uint64_t sub_1000CA168()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000CA1A0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1000CA1B0(uint64_t *a1, uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  __chkstk_darwin(v14);
  v16 = (&v38 - v15);
  v17 = *a1;
  result = sub_1000C9FDC(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v45 = v16;
  v43 = a2;
  if (v19)
  {
    return v17[2];
  }

  v3 = result;
  v40 = v10;
  v41 = v13;
  v39 = a1;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v38 = 0;
    v21 = v43;
    v22 = v43 + 56;
    v23 = v45;
    v42 = v7;
    while (1)
    {
      v25 = v17[2];
      if (v20 == v25)
      {
        return v3;
      }

      if (v20 >= v25)
      {
        __break(1u);
LABEL_28:
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
        break;
      }

      v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = v17 + v44;
      v27 = *(v7 + 72);
      v28 = v27 * v20;
      sub_1000CBB98(v17 + v44 + v27 * v20, v23, _s19UserInitiatedSearchVMa);
      if (!*(v21 + 16))
      {
        goto LABEL_15;
      }

      v29 = *v45;
      v30 = *(v21 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v29);
      v31 = sub_1004A6F14();
      v21 = v43;
      v32 = -1 << *(v43 + 32);
      v33 = v31 & ~v32;
      if ((*(v22 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        while (*(*(v43 + 48) + 4 * v33) != v29)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v22 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v23 = v45;
        result = sub_1000CBC00(v45, _s19UserInitiatedSearchVMa);
        v7 = v42;
        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
LABEL_15:
        v23 = v45;
        result = sub_1000CBC00(v45, _s19UserInitiatedSearchVMa);
        if (v3 != v20)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v35 = v17[2];
          if (v3 >= v35)
          {
            goto LABEL_31;
          }

          v36 = v27 * v3;
          result = sub_1000CBB98(&v26[v36], v41, _s19UserInitiatedSearchVMa);
          if (v20 >= v35)
          {
            goto LABEL_32;
          }

          sub_1000CBB98(&v26[v28], v40, _s19UserInitiatedSearchVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1001398CC(v17);
          }

          v37 = v17 + v44;
          result = sub_1000CBA94(v40, v17 + v44 + v36);
          if (v20 >= v17[2])
          {
            goto LABEL_33;
          }

          result = sub_1000CBA94(v41, &v37[v28]);
          *v39 = v17;
          v21 = v43;
        }

        v24 = __OFADD__(v3++, 1);
        v7 = v42;
        if (v24)
        {
          goto LABEL_29;
        }

        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
          goto LABEL_28;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA524(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 1;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 1;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v4 = a4;
    v5 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1000C13D4(v19 + 176 * v8 + 32, v4);
    sub_100020D58(v6, v9, v11, 1);
    result = 0;
    *v5 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000CA698(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (*(a3 + 24) != 1)
  {
    return 1;
  }

  v8 = *a3;
  v9 = *(*a3 + 16);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  v12 = a3 + 1;
  v11 = a3[1];
  v13 = a3[2];
  while (1)
  {
    v14 = v8 + 32 + 176 * v10;
    if ((*(v14 + 24) | (*(v14 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v15 = *(v14 + 16);
      v16 = *(v15 + 16);
      if (v16 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v10 == v9)
    {
      return 1;
    }
  }

  if (v16)
  {
    v17 = v15 == a1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_15:
    v7 = a5;
    v6 = a4;
    v5 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v8;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = (v15 + 32);
    v19 = (a1 + 32);
    while (v16)
    {
      if (*v18 != *v19)
      {
        goto LABEL_4;
      }

      ++v18;
      ++v19;
      if (!--v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v8);
  v21 = result;
LABEL_16:
  if (v10 >= *(v21 + 16))
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      v22 = v21 + 176 * v10;
      if (*(v22 + 200) != 1 || *(v22 + 192) != v6)
      {
        *(v22 + 192) = v6;
        *(v22 + 200) = 0;
      }
    }

    sub_100020D58(v8, v11, v13, 1);
    result = 0;
    *v5 = v21;
    *v12 = 0;
    v12[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000CA830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 56) + 24 * v13);
    v15 = *(v14 + 1);
    v16 = v14[16];
    v17 = *a4;
    v18 = *(a4 + 8);
    v19 = *v14;

    v20.rawValue._rawValue = v17;
    v20.hashValue = v18;
    LOBYTE(v19) = SyncRequest.includes(_:)(v20);

    if (v19)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1000B1ED0(v23, a2, v24, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1000B1ED0(v23, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA9A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_100099FE4(a2, v13);
    sub_100099FE4(a2, v13);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      sub_100099FE4(a2, v13);
      v9 = sub_1000C8F9C(v10, v6, a1, a2);

      goto LABEL_8;
    }
  }

  else
  {
    sub_100099FE4(a2, v13);
    v8 = sub_100099FE4(a2, v13);
  }

  __chkstk_darwin(v8);
  bzero(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  sub_100099FE4(a2, v13);
  v9 = sub_1000CA830(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  sub_10009A040(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  sub_10009A040(a2);
  sub_10009A040(a2);
  return v9;
}

void *sub_1000CAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a2;
  v5 = *(a1 + 16);
  v68 = _swiftEmptyArrayStorage;
  sub_1000919E8(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v35 = v5;
  if (v5)
  {
    v7 = 0;
    v34 = a1 + 32;
    do
    {
      v8 = (v34 + 96 * v7);
      v9 = v8[3];
      v71 = v8[2];
      v72 = v9;
      v73[0] = v8[4];
      *(v73 + 9) = *(v8 + 73);
      v10 = v8[1];
      v69 = *v8;
      v70 = v10;
      sub_100099FE4(&v69, v48);
      sub_100099FE4(&v69, v48);
      v11 = sub_1000CA9A0(v74, &v69);
      sub_10009A040(&v69);
      v12 = sub_1000B537C(v11);

      v13 = *(v12 + 16);
      sub_1000CB72C();
      v14 = sub_1004A5D64();
      *&v48[0] = v14;
      if (v13)
      {
        v15 = 32;
        do
        {
          sub_100088204(&v37, *(v12 + v15));
          v15 += 4;
          --v13;
        }

        while (v13);

        v16 = *&v48[0];
      }

      else
      {
        v16 = v14;
      }

      sub_100099FE4(&v69, v48);
      v17 = Set<>.makeNonEmpty()(v16);

      v18 = *(a3 + 72);
      *(a3 + 72) = (v18 + 1) & 0xFFFFFF;
      v65 = v71;
      v66 = v72;
      *v67 = v73[0];
      *&v67[9] = *(v73 + 9);
      v63 = v69;
      v64 = v70;
      if (BYTE4(v71) & 1) != 0 || (v73[0])
      {
        v19 = 0;
        v20 = 0;
        v21 = 1;
      }

      else
      {
        v21 = 0;
        v19 = v71;
        v20 = *(&v72 + 1);
      }

      v39 = v65;
      v40 = v66;
      v41 = *v67;
      v42 = *&v67[16];
      v37 = v63;
      v38 = v64;
      v48[2] = v65;
      v48[3] = v66;
      v48[4] = *v67;
      v48[5] = *&v67[16];
      v62 = 1;
      v61 = v21;
      *&v43 = 0;
      DWORD2(v43) = 0;
      BYTE12(v43) = 1;
      *&v44 = v19;
      *(&v44 + 1) = v20;
      LOBYTE(v45) = v21;
      *(&v45 + 1) = v17;
      *&v46 = _swiftEmptyArrayStorage;
      *(&v46 + 1) = _swiftEmptyArrayStorage;
      *&v47 = 0;
      BYTE8(v47) = 2;
      HIDWORD(v47) = v18;
      v48[0] = v63;
      v48[1] = v64;
      v49 = 0;
      v50 = 0;
      v51 = 1;
      v52 = v19;
      v53 = v20;
      v54 = v21;
      v55 = v17;
      v56 = _swiftEmptyArrayStorage;
      v57 = _swiftEmptyArrayStorage;
      v58 = 0;
      v59 = 2;
      v60 = v18;
      sub_10000E08C(&v37, v36);
      sub_10000E0E8(v48);
      sub_10009A040(&v69);
      v68 = v6;
      v23 = v6[2];
      v22 = v6[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000919E8((v22 > 1), v23 + 1, 1);
        v6 = v68;
      }

      ++v7;
      v6[2] = v23 + 1;
      v24 = &v6[22 * v23];
      v25 = v37;
      v26 = v39;
      v24[3] = v38;
      v24[4] = v26;
      v24[2] = v25;
      v27 = v40;
      v28 = v41;
      v29 = v43;
      v24[7] = v42;
      v24[8] = v29;
      v24[5] = v27;
      v24[6] = v28;
      v30 = v44;
      v31 = v45;
      v32 = v47;
      v24[11] = v46;
      v24[12] = v32;
      v24[9] = v30;
      v24[10] = v31;
    }

    while (v7 != v35);
  }

  return v6;
}