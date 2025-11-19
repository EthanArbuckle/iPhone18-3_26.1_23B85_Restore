uint64_t sub_1B0CDC414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return result;
  }

  v52 = a6 + 32;
  v53 = a3 + 32;
  v46 = a7 + 32;

  v8 = 0;
  v9 = 0;
  v48 = v7;
  while (1)
  {
    v13 = v53 + 48 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = *(v13 + 40);
    if (v8)
    {
      break;
    }

    v23 = *v13;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v14, v16, v17);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17 == 2)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v17 == 5 && !(v16 | v14))
    {

      v8 = v15;
      goto LABEL_5;
    }

    v10 = v14;
    v11 = v16;
    v12 = v17;
LABEL_4:
    sub_1B0CDD120(v10, v11, v12);

    v8 = 0;
LABEL_5:
    if (++v9 == v7)
    {
    }
  }

  v19 = v8[2];
  if (v19 < v15[2])
  {
    v20 = 4;
    while (v19)
    {
      v21 = v8[v20];
      v22 = v15[v20++];
      --v19;
      if (v22 != v21)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_5;
  }

LABEL_11:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CDD108(v14, v16, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  if (v17 != 2)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (sub_1B0E44B98() == v14 && v16 == v24)
  {

    goto LABEL_20;
  }

  v25 = sub_1B0E46A78();

  if (v25)
  {
LABEL_20:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    goto LABEL_21;
  }

  v26 = v15[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v26)
  {
    goto LABEL_21;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = sub_1B0CD82C4(1, v15);
  v28 = *(a6 + 16);
  if (!a5)
  {
    if (!v28)
    {
      goto LABEL_45;
    }

    v30 = 0;
    while (1)
    {
      v34 = *(v52 + 8 * v30);
      v35 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v35, v27);

      if (v36)
      {
        break;
      }

      if (v28 == ++v30)
      {
        goto LABEL_44;
      }
    }

    v33 = v51;
    goto LABEL_35;
  }

  v30 = sub_1B0CD9CEC(v27, v52, v28, (v29 + 16), v29 + 32);
  v32 = v31;

  if (v32)
  {
LABEL_44:
    v7 = v48;
LABEL_45:

    goto LABEL_21;
  }

  v33 = v51;
  if ((v30 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v30 >= *(a7 + 16))
    {
      goto LABEL_51;
    }

    v51 = v33;
    v37 = v46 + 48 * v30;
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v42 = *(v37 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v39, v40, v41);

    if (v41 == 4)
    {
      v43 = Media.Subtype.alternative.unsafeMutableAddressor();
      if (*v43 == v39 && v40 == v43[1])
      {

        sub_1B0CDD120(v39, v40, 4u);
      }

      else
      {
        v45 = sub_1B0E46A78();

        sub_1B0CDD120(v39, v40, 4u);

        if ((v45 & 1) == 0)
        {
          v7 = v48;
          goto LABEL_21;
        }
      }

      LOBYTE(v54) = 0;
      sub_1B0CD7020(v15, a5, a6, a7, &v54);
      v7 = v48;
      if (v54)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_22;
      }

LABEL_21:
      sub_1B0CC91C4(&v54, v15);

LABEL_22:
      v10 = v14;
      v11 = v16;
      v12 = 2;
      goto LABEL_4;
    }

    sub_1B0CDD120(v39, v40, v41);
    goto LABEL_44;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1B0CDC878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v22 = *(*(a3 + 48) + 8 * v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B0CD619C(&v22, a4);

    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1B0CDA264(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDC9DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v29 = a2;
  v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v7;
    v27 = &v24;
    MEMORY[0x1EEE9AC00](v9);
    v26 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v8);
    v28 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v30[0] = *(*(a1 + 48) + 8 * v16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0CD619C(v30, v29);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v18 = v17;

      if (v18)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1B0CDA264(v26, v25, v28, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0CDA1C0(v22, v7, a1, v23, sub_1B0CDC878);

  MEMORY[0x1B272C230](v22, -1, -1);
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1B0CDCCA8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CD0];
  v26 = MEMORY[0x1E69E7CD0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 32;
    v23 = *(a2 + 16);
    v24 = a1 + 32;
    v22 = a2 + 32;
    do
    {
      v7 = v6 + 48 * v5;
      v8 = *(v7 + 24);
      if (v8 != 4)
      {
        v10 = *v7;
        v9 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = *(v7 + 40);
        v13 = a1;
        v14 = *(a1 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v9, v11, v8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v14)
        {
          v15 = 0;
          while (1)
          {
            v16 = *(v24 + 8 * v15);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v17, v10))
            {

              goto LABEL_19;
            }

            v18 = *(v16 + 16);
            if (v18 < *(v10 + 16))
            {
              break;
            }

LABEL_16:
            ++v15;

            if (v15 == v14)
            {
              goto LABEL_3;
            }
          }

          v19 = 32;
          while (v18)
          {
            v20 = *(v16 + v19);
            v21 = *(v10 + v19);
            --v18;
            v19 += 8;
            if (v21 != v20)
            {
              swift_unknownObjectRelease();
              goto LABEL_16;
            }
          }

          swift_unknownObjectRelease();
LABEL_19:
          sub_1B0CC91C4(&v25, v10);

          sub_1B0CDD120(v9, v11, v8);
        }

        else
        {
LABEL_3:

          sub_1B0CDD120(v9, v11, v8);
        }

        a1 = v13;
        v6 = v22;
        v4 = v23;
      }

      ++v5;
    }

    while (v5 != v4);
    return v26;
  }

  return result;
}

uint64_t sub_1B0CDCEB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 56);
    v6 = 1;
    while (v4 < *(v3 + 16))
    {
      if (*v5 != 4 || ((v7 = *(v5 - 2), v8 = *(v5 - 1), v7 == 0x64656E676973) ? (v9 = v8 == 0xE600000000000000) : (v9 = 0), !v9 && (v10 = *(v5 - 2), v11 = *(v5 - 1), (sub_1B0E46A78() & 1) == 0) && (v7 != 0x6574707972636E65 || v8 != 0xE900000000000064) && (result = sub_1B0E46A78(), (result & 1) == 0)))
      {
        v6 = ++v4 < v2;
        v5 += 48;
        if (v2 != v4)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0CDCFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v1, 0);
    v3 = v14;
    v4 = (a1 + 32);
    do
    {
      v16 = *v4;
      v17 = v4[1];
      v18 = v4[2];
      v5 = sub_1B0CD6DC0();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B041D32C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v12 = sub_1B0E448E8();

  return v12;
}

uint64_t sub_1B0CDD108(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0CDD120(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1B0CDD18C(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1B0CDD120(result, a2, a3);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO16IMAP2PersistenceE4TreeV9MediaKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0CDD228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0CDD270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0CDD2B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t RemoteMailbox.path.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2) | (*(v0 + 12) << 32);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t RemoteMailbox.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = *v2;

  *v2 = a1;
  *(v2 + 2) = v3;
  *(v2 + 12) = v5;
  return result;
}

__n128 RemoteMailbox.status.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 65);
  result = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 RemoteMailbox.status.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 26);
  *(v1 + 50) = result;
  return result;
}

__n128 RemoteMailbox.init(path:attributes:specialUse:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  *&v7[7] = *a5;
  *&v7[23] = a5[1];
  *&v7[33] = *(a5 + 26);
  *(a6 + 17) = *v7;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2);
  *(a6 + 14) = a3;
  *(a6 + 16) = a4;
  *(a6 + 33) = *&v7[16];
  result = *&v7[32];
  *(a6 + 49) = *&v7[32];
  *(a6 + 65) = v7[48];
  return result;
}

uint64_t RemoteMailbox.name.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0CDD4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t RemoteMailbox.Status.unreadMessagesCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t RemoteMailbox.Status.unreadMessagesCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RemoteMailbox.Status.highestModificationSequence.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t RemoteMailbox.Status.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t RemoteMailbox.Status.init(messageCount:nextUID:uidValidity:unreadMessagesCount:highestModificationSequence:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 12) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5 & 1;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  return result;
}

BOOL sub_1B0CDD648(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

double RemoteMailbox.withStatus(_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  *&v10[7] = *a1;
  v11[0] = *v2;
  *(v11 + 5) = *(v2 + 5);
  v5 = *(v2 + 14);
  v6 = *(v2 + 16);
  *&v10[23] = v4;
  *&v10[33] = *(a1 + 26);
  sub_1B03BB0B4(v2, &v9);
  *a2 = v11[0];
  *(a2 + 6) = *(v11 + 6);
  *(a2 + 14) = v5;
  *(a2 + 16) = v6;
  v7 = *&v10[16];
  *(a2 + 17) = *v10;
  *(a2 + 33) = v7;
  result = *&v10[32];
  *(a2 + 49) = *&v10[32];
  *(a2 + 65) = v10[48];
  return result;
}

uint64_t RemoteMailbox.Status.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0B11B9C(a1);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 32) & 1) != 0 || (*(a1 + 40))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v5 = *a1;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v6 = *(a1 + 28) | (*(a1 + 36) << 32);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

uint64_t RemoteMailbox.init(attributes:path:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  v28 = result + 32;
  v9 = result + 40;
LABEL_2:
  v10 = (v9 + 16 * v6);
  while (1)
  {
    v11 = *(v4 + 16);
    if (v8 == v6)
    {
      break;
    }

    if (v6 >= v11)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    ++v6;
    v12 = v10 + 2;
    v14 = *(v10 - 1);
    v13 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0();
    v10 = v12;
    if (result != 9)
    {
      if (result == 7)
      {
        v15 = 128;
      }

      else
      {
        v15 = 256;
      }

      if (result == 6)
      {
        v15 = 64;
      }

      if (result == 4)
      {
        v16 = 16;
      }

      else
      {
        v16 = 32;
      }

      if (result <= 5u)
      {
        v15 = v16;
      }

      if (result == 2)
      {
        v17 = 4;
      }

      else
      {
        v17 = 8;
      }

      if (result)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      if (result <= 1u)
      {
        v17 = v18;
      }

      if (result <= 3u)
      {
        v15 = v17;
      }

      v7 |= v15;
      goto LABEL_2;
    }
  }

  if (v11)
  {
    v19 = 0;
    v20 = (v4 + 40);
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0();
      if (result != 7)
      {
        break;
      }

      ++v19;
      v20 += 2;
      if (v11 == v19)
      {
        goto LABEL_33;
      }
    }

    v11 = v19;
  }

LABEL_33:
  v23 = *(v4 + 16);
  if (v11 == v23)
  {
    v24 = 7;
    goto LABEL_37;
  }

  if (v11 >= v23)
  {
    goto LABEL_39;
  }

  v25 = (v28 + 16 * v11);
  v26 = *v25;
  v27 = v25[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0();
  v24 = result;
  if (result != 7)
  {
LABEL_37:

    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 12) = BYTE4(a3);
    *(a4 + 14) = v7;
    *(a4 + 16) = v24;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 49) = 0u;
    *(a4 + 65) = 1;
    return result;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL RemoteMailbox.isInbox.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = MailboxName.inbox.unsafeMutableAddressor();
  return (*(v3 + 2) | (*(v3 + 2) << 32)) == (v2 | (v2 << 32)) && (sub_1B04520BC(*v3, v1) & 1) != 0;
}

BOOL _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2 || *(a2 + 8) != *(result + 8) || *(result + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 40);
  if (*(result + 40))
  {
    return (*(a2 + 40) & 1) != 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v4 = *(result + 32);
  v5 = *(a2 + 32);
  if (((v5 | v4) & 0x8000000000000000) == 0)
  {
    return v5 == v4;
  }

  __break(1u);
  return result;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!static MailboxPath.__derived_struct_equals(_:_:)(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32)) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 != 7)
  {
    if (v5 == 7 || (sub_1B0CED00C(v4, v5) & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    v6 = *(a2 + 65);
    if (*(a1 + 65))
    {
      if ((*(a2 + 65) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 65))
      {
        return 0;
      }

      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a2 + 24);
      v13 = *(a2 + 32);
      v14 = *(a2 + 40);
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(a2 + 64);
      v19[0] = *(a1 + 24);
      v19[1] = v7;
      v19[2] = v8;
      v20 = v9 & 1;
      v21 = v10;
      v22 = v11 & 1;
      v23[0] = v12;
      v23[1] = v13;
      v23[2] = v14;
      v24 = v15 & 1;
      v25 = v16;
      v26 = v17 & 1;
      if (!_s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(v19, v23))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v5 == 7)
  {
    goto LABEL_8;
  }

  return 0;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0CDDC10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0CDDC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CDDCBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CDDCDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1B0CDDD24()
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t RemoteMailbox.Attribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656C65536F6ELL;
    v6 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v6 = 0x74736978456E6F6ELL;
    }

    if (a1)
    {
      v5 = 0x64656B72616DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746F6D6572;
    v2 = 0x646C696843736168;
    if (a1 != 7)
    {
      v2 = 0x6968436F4E736168;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x697265666E496F6ELL;
    if (a1 != 4)
    {
      v3 = 0x6269726373627573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B0CDE004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_1B0CDE034@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteMailbox.Attribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0CDE060()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CDDD24();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CDE0B0()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0CDDD24();
  return sub_1B0E46CB8();
}

BOOL sub_1B0CDE220(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1B0CDE250@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1B0CDE27C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

uint64_t sub_1B0CDE33C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = sub_1B0CDF9FC(a1);

  *a2 = v3;
  return result;
}

uint64_t RemoteMailbox.Attributes.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v9 = *(v20 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v19 - v11;
  v21 = v4;
  v22 = a1;
  (*(v4 + 16))(v7, a1, a2, v10);
  sub_1B0E44F08();
  v23 = a2;
  swift_getAssociatedConformanceWitness();
  for (i = 0; ; i = i | 0x100)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          sub_1B0E45E38();
          if (v24 > 4u)
          {
            break;
          }

          if (v24 == 3)
          {
            v14 = 8;
          }

          else
          {
            v14 = 16;
          }

          if (v24 == 2)
          {
            v14 = 4;
          }

          if (v24)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          if (v24 <= 1u)
          {
            v16 = v15;
          }

          else
          {
            v16 = v14;
          }

          i = v16 | i;
        }

        if (v24 > 6u)
        {
          break;
        }

        if (v24 == 5)
        {
          v17 = 32;
        }

        else
        {
          v17 = 64;
        }

        i = v17 | i;
      }

      if (v24 != 7)
      {
        break;
      }

      i = i | 0x80;
    }

    if (v24 != 8)
    {
      break;
    }
  }

  (*(v21 + 8))(v22, v23);
  (*(v20 + 8))(v12, AssociatedTypeWitness);
  return i;
}

uint64_t RemoteMailbox.Attributes.allAttributes.getter@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = &unk_1F27269F0;
  a2[1] = sub_1B0CDF82C;
  a2[2] = result;
  return result;
}

unint64_t RemoteMailbox.Attributes.debugDescription.getter(__int16 a1)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, 0, 0);
  v2 = 0;
  v3 = v18;
  v4 = 0x7463656C65536F6ELL;
  result = 0xEB0000000073726FLL;
LABEL_2:
  v6 = 0;
  if (v2 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = v2;
  }

  v8 = &unk_1F2726A10;
  while (v2 != v7)
  {
    v9 = v8[v2];
    if (v9 <= 3)
    {
      if (v8[v2] > 1u)
      {
        if (v9 == 2)
        {
          if ((a1 & 4) != 0)
          {
            v11 = 0xE800000000000000;
            v10 = 0x64656B72616D6E75;
            goto LABEL_34;
          }
        }

        else if ((a1 & 8) != 0)
        {
          v10 = 0x74736978456E6F6ELL;
          v11 = 0xEB00000000746E65;
          goto LABEL_34;
        }
      }

      else if (v8[v2])
      {
        if ((a1 & 2) != 0)
        {
          v11 = 0xE600000000000000;
          v10 = 0x64656B72616DLL;
          goto LABEL_34;
        }
      }

      else if (a1)
      {
        v11 = 0xE800000000000000;
        v10 = v4;
        goto LABEL_34;
      }
    }

    else if (v8[v2] <= 5u)
    {
      if (v9 == 4)
      {
        if ((a1 & 0x10) != 0)
        {
          v10 = 0x697265666E496F6ELL;
          v11 = 0xEB0000000073726FLL;
          goto LABEL_34;
        }
      }

      else if ((a1 & 0x20) != 0)
      {
        v11 = 0xEA00000000006465;
        v10 = 0x6269726373627573;
        goto LABEL_34;
      }
    }

    else if (v9 == 6)
    {
      if ((a1 & 0x40) != 0)
      {
        v11 = 0xE600000000000000;
        v10 = 0x65746F6D6572;
LABEL_34:
        v19 = v3;
        v13 = *(v3 + 16);
        v12 = *(v3 + 24);
        if (v13 >= v12 >> 1)
        {
          v16 = v4;
          sub_1B041D32C((v12 > 1), v13 + 1, 1);
          result = 0xEB0000000073726FLL;
          v4 = v16;
          v3 = v19;
        }

        v14 = v2 - 8;
        v2 = v2 - v6 + 1;
        *(v3 + 16) = v13 + 1;
        v15 = v3 + 16 * v13;
        *(v15 + 32) = v10;
        *(v15 + 40) = v11;
        if (v14 == v6)
        {
LABEL_37:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
          v17 = sub_1B0E448E8();

          return v17;
        }

        goto LABEL_2;
      }
    }

    else if (v9 == 7)
    {
      if ((a1 & 0x80) != 0)
      {
        v10 = 0x646C696843736168;
        v11 = 0xEB000000006E6572;
        goto LABEL_34;
      }
    }

    else if ((a1 & 0x100) != 0)
    {
      v10 = 0x6968436F4E736168;
      v11 = 0xED00006E6572646CLL;
      goto LABEL_34;
    }

    --v7;
    ++v8;
    if (v2 - 9 == --v6)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B0CDEA70(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CDEB48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEA90(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CDEC68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0CDEAB0(void *a1, int64_t a2, char a3)
{
  result = sub_1B0CDED74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEAD0(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CDEEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEAF0(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CDEFE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0CDEB10(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CDF10C(a1, a2, a3, *v3, &qword_1EB6E6288, &unk_1B0EE4E60);
  *v3 = result;
  return result;
}

char *sub_1B0CDEB48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62A0, &qword_1B0EE4E88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEC68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0CDED74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62A8, &qword_1B0EE4E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62B0, &qword_1B0EE4E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEEC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62B8, &unk_1B0EE4EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDEFE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6298, &qword_1B0EE4E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CDF10C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0()
{
  v0 = sub_1B0E44B98();
  v2 = v1;
  if (v0 == sub_1B0E44B98() && v2 == v3)
  {

LABEL_8:

    return 0;
  }

  v5 = sub_1B0E46A78();

  if (v5)
  {
    goto LABEL_8;
  }

  v7 = sub_1B0E44B98();
  v9 = v8;
  if (v7 == sub_1B0E44B98() && v9 == v10)
  {

LABEL_13:

    return 1;
  }

  v11 = sub_1B0E46A78();

  if (v11)
  {
    goto LABEL_13;
  }

  v12 = sub_1B0E44B98();
  v14 = v13;
  if (v12 == sub_1B0E44B98() && v14 == v15)
  {

LABEL_18:

    return 2;
  }

  v16 = sub_1B0E46A78();

  if (v16)
  {
    goto LABEL_18;
  }

  v17 = sub_1B0E44B98();
  v19 = v18;
  if (v17 == sub_1B0E44B98() && v19 == v20)
  {

LABEL_23:

    return 3;
  }

  v21 = sub_1B0E46A78();

  if (v21)
  {
    goto LABEL_23;
  }

  v22 = sub_1B0E44B98();
  v24 = v23;
  if (v22 == sub_1B0E44B98() && v24 == v25)
  {

LABEL_28:

    return 4;
  }

  v26 = sub_1B0E46A78();

  if (v26)
  {
    goto LABEL_28;
  }

  v27 = sub_1B0E44B98();
  v29 = v28;
  if (v27 == sub_1B0E44B98() && v29 == v30)
  {

LABEL_33:

    return 5;
  }

  v31 = sub_1B0E46A78();

  if (v31)
  {
    goto LABEL_33;
  }

  v32 = sub_1B0E44B98();
  v34 = v33;
  if (v32 == sub_1B0E44B98() && v34 == v35)
  {

LABEL_38:

    return 6;
  }

  v36 = sub_1B0E46A78();

  if (v36)
  {
    goto LABEL_38;
  }

  v37 = sub_1B0E44B98();
  v39 = v38;
  if (v37 == sub_1B0E44B98() && v39 == v40)
  {

LABEL_43:

    return 7;
  }

  v41 = sub_1B0E46A78();

  if (v41)
  {
    goto LABEL_43;
  }

  v42 = sub_1B0E44B98();
  v44 = v43;
  if (v42 == sub_1B0E44B98() && v44 == v45)
  {

    return 8;
  }

  else
  {
    v46 = sub_1B0E46A78();

    if (v46)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B0CDF838()
{
  result = qword_1EB6E6258;
  if (!qword_1EB6E6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6258);
  }

  return result;
}

unint64_t sub_1B0CDF8D4()
{
  result = qword_1EB6E6270;
  if (!qword_1EB6E6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6270);
  }

  return result;
}

unint64_t sub_1B0CDF930()
{
  result = qword_1EB6E6278;
  if (!qword_1EB6E6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6278);
  }

  return result;
}

unint64_t sub_1B0CDF988()
{
  result = qword_1EB6E6280;
  if (!qword_1EB6E6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6280);
  }

  return result;
}

uint64_t sub_1B0CDF9FC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B0CDFA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B03A8208(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = *(a1 + 48) + 32 * v7;
    v12 = *(v11 + 16);
    v25 = *(v11 + 24);
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v13 >= v14 >> 1)
    {
      result = sub_1B03A8208((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v12;
    *(v15 + 40) = v25;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1B0425168(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0CDFC68(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CE35B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0CE255C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0CDFCD4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v4 = a1[3];
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1B0CDEB10(0, v4 & ~(v4 >> 63), 0);
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v34 = v3;
  v35 = v3[4];
  v36 = v7;
  if (v4 < 0)
  {
    goto LABEL_21;
  }

  if (!v4)
  {
    v8 = v6;
    goto LABEL_17;
  }

  while (v6 != v36)
  {
LABEL_8:
    v8 = v6 + 1;
    v35 = v6 + 1;
    v9 = &v3[4 * v6];
    v10 = v9[5];
    v11 = v9[7];
    v12 = *(v9 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_bridgeObjectRetain_n();
    v13 = sub_1B0CE1608(v11, v12, a2, a3);
    v31 = v14;

    v16 = *(v37 + 16);
    v15 = *(v37 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B0CDEB10((v15 > 1), v16 + 1, 1);
    }

    *(v37 + 16) = v16 + 1;
    v17 = v37 + 32 * v16;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v31;
    ++v6;
    if (!--v4)
    {
      while (1)
      {
LABEL_17:
        if (v8 == v36)
        {
          v30 = sub_1B0CE46C4();
          v18 = v34;
          if ((v30 & 1) == 0)
          {

            return v37;
          }
        }

        else
        {
          v18 = v34;
        }

        v19 = v35;
        v8 = ++v35;
        v20 = &v18[4 * v19];
        v21 = v20[5];
        v22 = v20[7];
        v23 = *(v20 + 16);
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = sub_1B0CE1608(v22, v23, a2, a3);
        v26 = v25;

        v28 = *(v37 + 16);
        v27 = *(v37 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1B0CDEB10((v27 > 1), v28 + 1, 1);
        }

        *(v37 + 16) = v28 + 1;
        v29 = v37 + 32 * v28;
        *(v29 + 32) = v22;
        *(v29 + 40) = v23;
        *(v29 + 48) = v24;
        *(v29 + 56) = v26;
      }
    }
  }

  result = sub_1B0CE46C4();
  if (result)
  {
    v3 = v34;
    v6 = v35;
    goto LABEL_8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static RenameRollback.makeSteps(failedRenames:allMailboxes:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1B0E435B8();
  v7 = v6;
  v8 = *v6;
  v42 = *v6;
  v9 = *(a1 + 16);
  if (v9)
  {
    v35 = v6;
    v10 = sub_1B0CE2400(v9, 0);
    v36 = sub_1B0CE4148(&v40, (v10 + 4), v9, a1);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8();
    if (v36 != v9)
    {
LABEL_27:
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v35;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v40 = v10;
  v10 = 0;
  sub_1B0CDFC68(&v40);
  v11 = v40;
  v12 = *(v40 + 2);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62C0, &qword_1B0EE4EE0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 40;
    if (v14 < 40)
    {
      v15 = v14 - 9;
    }

    v13[2] = v15 >> 5;
    v13[3] = 0;
    v13[4] = 0;
    sub_1B0CE35CC((v13 + 2), (v13 + 5), v12, v11);
  }

  else
  {
    v13 = *v7;
  }

  v41 = v13;
  v16 = sub_1B0CDFA38(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0CC03D0(v16, a2);

  v39[0] = v17;
  v18 = v13[3];
  v19 = v8[3];
  swift_beginAccess();
  if (v13[3])
  {
    while (1)
    {
      v20 = sub_1B0CE02EC(&v41, v39, a3);
      v21 = *(v20 + 16);
      v22 = v8[3];
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        break;
      }

      v24 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v8[2] < v23 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v23, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
        v8 = v42;
      }

      sub_1B0CE37E8((v8 + 2), (v8 + 5), v24 + 32, v21);

      v13 = v41;
      v26 = v41[3];
      if (v8[3] != v19 || v26 != v18)
      {
        v18 = v41[3];
        v19 = v8[3];
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_20:
  v28 = sub_1B0CDFCD4(v13, a3, v39);
  swift_beginAccess();
  v29 = *(v28 + 16);
  v30 = v8[3];
  v31 = v30 + v29;
  if (__OFADD__(v30, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v42;
  if (v42[2] < v31 || (v32 & 1) == 0)
  {
    sub_1B0CE363C(v32, v31, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
    v33 = v42;
  }

  sub_1B0CE37E8((v33 + 2), (v33 + 5), v28 + 32, v29);
  swift_endAccess();

  *a4 = v33;
}

uint64_t sub_1B0CE02EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v131 = 0;
  v132 = a3;
  v120 = sub_1B0E42FC8();
  v5 = *(v120 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v116[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_1B0E44B68();
  v8 = *(v127 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = *sub_1B0E435B8();
  v11 = v138;
  v139 = v138;
  v12 = *(*a1 + 24);
  swift_retain_n();
  if (!v12)
  {
    v122 = v11;
    v13 = v11;
LABEL_112:
    result = sub_1B0CE0EE8(v13);
    v113 = v122;
    v114 = *(v122 + 24);
    if (v114 < 0)
    {
      goto LABEL_126;
    }

    if (v114)
    {
      v115 = sub_1B0E45278();
      *(v115 + 16) = v114;
    }

    else
    {
      v115 = MEMORY[0x1E69E7CC0];
    }

    v134 = 0;
    v135 = v115 + 32;
    v136 = v114;
    result = sub_1B0CE4580((v113 + 16), v113 + 40, &v135, &v134);
    if (v114 < v134)
    {
      goto LABEL_127;
    }

    *(v115 + 16) = v134;

    return v115;
  }

  v124 = (v8 + 8);
  v118 = (v5 + 8);
  v122 = v11;
  v125 = a1;
  v128 = a2;
  v13 = v11;
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0CE4824();
    }

    v15 = *a1;
    v16 = *(*a1 + 24);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v17)
    {
      goto LABEL_120;
    }

    v19 = v15[4] + v18;
    v20 = v15[2];
    if (v19 < v20)
    {
      v20 = 0;
    }

    v21 = &v15[4 * (v19 - v20)];
    v22 = v21[5];
    v23 = *(v21 + 12);
    v24 = v21[7];
    v25 = *(v21 + 16);
    v15[3] = v18;
    v130 = *a2;
    result = sub_1B03B5DDC(v22, v23, v130);
    if (result)
    {
      goto LABEL_27;
    }

    v129 = v13;
    v26 = v15[4];
    v27 = v15[2];
    if (v27 >= (v15[3] + v26))
    {
      v27 = v15[3] + v26;
    }

    v135 = v15;
    v136 = v26;
    v137 = v27;
    v28 = v15;
    while (1)
    {
      if (v26 == v27)
      {
        result = sub_1B0CE46C4();
        if ((result & 1) == 0)
        {

          result = swift_beginAccess();
          v41 = *(v122 + 24);
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_128;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v139;
          if (*(v139 + 16) < v42 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v42, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
            v122 = v139;
          }

          v44 = v24;
          v45 = v24;
          v46 = v131;
          sub_1B0CE3E6C((v122 + 16), v122 + 40, v44, v25, v22, v23);
          v131 = v46;
          swift_endAccess();
          v47 = v128;
          sub_1B0B93AEC(v45, v25);

          sub_1B03AB2E0(&v135, v22, v23);

          v13 = v129;
          a2 = v47;
          goto LABEL_33;
        }

        v28 = v135;
        v26 = v136;
      }

      v29 = v26 + 1;
      v136 = v26 + 1;
      v30 = v28 + 32 * v26;
      if ((*(v30 + 48) | (*(v30 + 48) << 32)) == (v23 | (v23 << 32)))
      {
        v31 = *(v30 + 40);
        v32 = *(v31 + 16);
        if (v32 == *(v22 + 16))
        {
          break;
        }
      }

LABEL_12:
      v27 = v137;
      v26 = v29;
    }

    if (v32)
    {
      v33 = v31 == v22;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      v34 = (v31 + 32);
      v35 = (v22 + 32);
      while (v32)
      {
        if (*v34 != *v35)
        {
          goto LABEL_12;
        }

        ++v34;
        ++v35;
        if (!--v32)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_26:

    v13 = v129;
    a2 = v128;
LABEL_27:
    if (sub_1B0CE1A04(v22, v23, v24, v25, a1, &v138))
    {
      break;
    }

    result = swift_beginAccess();
    v36 = v13[3];
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_121;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v138;
    if (v138[2] < v37 || (v38 & 1) == 0)
    {
      sub_1B0CE363C(v38, v37, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
      v13 = v138;
    }

    v39 = v24;
    v40 = v131;
    sub_1B0CE3E6C(v13 + 2, (v13 + 5), v22, v23, v39, v25);
    v131 = v40;
    swift_endAccess();

LABEL_33:
    if (!*(*a1 + 24))
    {
      goto LABEL_112;
    }
  }

  v129 = v13;
  v48 = sub_1B0CE3F00(0x15F90uLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0CE2090(v22);
  v50 = sub_1B0CE220C(v48 + 10000, v49);
  v52 = v51;

  result = sub_1B03B5DDC(v50, v52, v130);
  v117 = v25;
  if (result)
  {
    goto LABEL_59;
  }

  v53 = v15[4];
  v54 = v15[2];
  if (v54 >= (v15[3] + v53))
  {
    v54 = v15[3] + v53;
  }

  v135 = v15;
  v136 = v53;
  v137 = v54;
  v121 = v52;
  v55 = v52 | (v52 << 32);
  v56 = v15;
  while (v53 != v54)
  {
LABEL_48:
    v57 = v53 + 1;
    v136 = v53 + 1;
    v58 = v56 + 32 * v53;
    if ((*(v58 + 48) | (*(v58 + 48) << 32)) == v55)
    {
      v59 = *(v58 + 40);
      v60 = *(v59 + 16);
      if (v60 == *(v50 + 16))
      {
        if (v60)
        {
          v61 = v59 == v50;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          v62 = (v59 + 32);
          v63 = (v50 + 32);
          while (v60)
          {
            if (*v62 != *v63)
            {
              goto LABEL_44;
            }

            ++v62;
            ++v63;
            if (!--v60)
            {
              goto LABEL_58;
            }
          }

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
          goto LABEL_130;
        }

LABEL_58:

LABEL_59:

        v123 = v24;
        do
        {
LABEL_61:
          v64 = 90000 * PCG32Random.next()();
        }

        while (v64 < 0x12DF0);
        v65 = HIDWORD(v64) + 10000;
        v66 = v22;
        v67 = v23;
        v134 = sub_1B0CE2090(v22);
        v135 = 45;
        v136 = 0xE100000000000000;
        v133 = v65;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v68 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v68);

        v69 = v126;
        sub_1B0E44B48();
        v70 = sub_1B0E44AE8();
        v72 = v71;

        result = (*v124)(v69, v127);
        if (v72 >> 60 == 15)
        {
          goto LABEL_134;
        }

        v73 = v72 >> 62;
        if ((v72 >> 62) > 1)
        {
          v23 = v67;
          if (v73 != 2)
          {
            goto LABEL_74;
          }

          v76 = *(v70 + 16);
          v75 = *(v70 + 24);
          v74 = v75 - v76;
          if (__OFSUB__(v75, v76))
          {
            goto LABEL_124;
          }

          if (!v74)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v73)
          {
            if (__OFSUB__(HIDWORD(v70), v70))
            {
              goto LABEL_125;
            }

            v74 = HIDWORD(v70) - v70;
          }

          else
          {
            v74 = BYTE6(v72);
          }

          v23 = v67;
          if (!v74)
          {
LABEL_74:
            sub_1B070E144(v70, v72);
            v77 = MEMORY[0x1E69E7CC0];
            a2 = v128;
            a1 = v125;
            v24 = v123;
LABEL_75:
            sub_1B0C31A28(v77);
            v50 = MailboxName.init(_:)(v134);
            v82 = v81;

            result = sub_1B03B5DDC(v50, v82, v130);
            if ((result & 1) == 0)
            {
              v83 = v15[4];
              v84 = v15[2];
              if (v84 >= (v15[3] + v83))
              {
                v84 = v15[3] + v83;
              }

              v135 = v15;
              v136 = v83;
              v137 = v84;
              v121 = v82;
              v85 = v15;
              while (1)
              {
                if (v83 == v84)
                {
                  result = sub_1B0CE46C4();
                  if ((result & 1) == 0)
                  {

                    goto LABEL_95;
                  }

                  v85 = v135;
                  v83 = v136;
                }

                v86 = v83 + 1;
                v136 = v83 + 1;
                v87 = v85 + 32 * v83;
                if ((*(v87 + 48) | (*(v87 + 48) << 32)) == (v82 | (v82 << 32)))
                {
                  v88 = *(v87 + 40);
                  v89 = *(v88 + 16);
                  if (v89 == *(v50 + 16))
                  {
                    break;
                  }
                }

LABEL_79:
                v84 = v137;
                v83 = v86;
              }

              if (v89)
              {
                v90 = v88 == v50;
              }

              else
              {
                v90 = 1;
              }

              if (v90)
              {
LABEL_93:

                goto LABEL_61;
              }

              v91 = 32;
              while (v89)
              {
                if (*(v88 + v91) != *(v50 + v91))
                {
                  goto LABEL_79;
                }

                ++v91;
                if (!--v89)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_119;
            }

            goto LABEL_61;
          }
        }

        v77 = sub_1B03B7A3C(v74, 0);
        v78 = v119;
        v79 = sub_1B0E42EB8();
        sub_1B070E144(v70, v72);
        v80 = v78;
        v22 = v66;
        result = (*v118)(v80, v120);
        v33 = v79 == v74;
        v23 = v67;
        a1 = v125;
        a2 = v128;
        v24 = v123;
        if (!v33)
        {
          goto LABEL_123;
        }

        goto LABEL_75;
      }
    }

LABEL_44:
    v54 = v137;
    v53 = v57;
  }

  result = sub_1B0CE46C4();
  if (result)
  {
    v56 = v135;
    v53 = v136;
    goto LABEL_48;
  }

  a1 = v125;
LABEL_95:
  result = swift_beginAccess();
  v92 = *(v122 + 24);
  v93 = v92 + 1;
  v94 = v117;
  if (__OFADD__(v92, 1))
  {
    goto LABEL_129;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v139;
  if (*(v139 + 16) < v93 || (v95 & 1) == 0)
  {
    sub_1B0CE363C(v95, v93, 0, &type metadata for RenameRollback.Step, &qword_1EB6E62D8, &unk_1B0EE4F60);
    v122 = v139;
  }

  v96 = v24;
  v97 = v94;
  v98 = v121;
  v99 = v94;
  v100 = v24;
  v101 = v131;
  sub_1B0CE3E6C((v122 + 16), v122 + 40, v96, v97, v50, v121);
  v131 = v101;
  swift_endAccess();
  sub_1B0B93AEC(v100, v99);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03AB2E0(&v135, v50, v98);

  swift_bridgeObjectRelease_n();

  v102 = v15[3];
  v103 = v102 + 1;
  if (__OFADD__(v102, 1))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v104 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v105 = *a1;
  if (*(*a1 + 16) < v103 || (result & 1) == 0)
  {
    result = sub_1B0CE363C(result, v103, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
    v105 = *a1;
  }

  v106 = v105[4];
  v107 = v121;
  if (v106)
  {
    v17 = __OFSUB__(v106, 1);
    v108 = v106 - 1;
    if (!v17)
    {
LABEL_108:
      v110 = &v105[4 * v108];
      v110[5] = v22;
      *(v110 + 12) = v23;
      v110[7] = v50;
      *(v110 + 16) = v107;
      v105[4] = v108;
      v111 = v105[3];
      v17 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (!v17)
      {
        v105[3] = v112;
        v13 = v129;
        goto LABEL_33;
      }

LABEL_131:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v109 = v105[2];
    v17 = __OFSUB__(v109, 1);
    v108 = v109 - 1;
    if (!v17)
    {
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

void *sub_1B0CE0EE8(void *result)
{
  v4 = result + 2;
  v5 = (result + 5);
  v6 = result[3];
  v7 = result[4];
  v8 = v6 + v7;
  if (result[2] < v6 + v7)
  {
    if (v6 <= 0)
    {
      return result;
    }

    v2 = result;
    v9 = (*v1)[3];
    v10 = v9 + v6;
    if (__OFADD__(v9, v6))
    {
      goto LABEL_79;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    if ((*v1)[2] < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0CE363C(isUniquelyReferenced_nonNull_native, v10, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
      v12 = *v1;
    }

    sub_1B0CE38AC(v12 + 2, (v12 + 5), v75);
    result = sub_1B0CE3958(v6, &v76);
    v13 = v76;
    v3 = v77;
    if (v80)
    {
      v14 = *(v2 + 4);
      v15 = *(v2 + 3) + v14;
      if (*(v2 + 2) < v15)
      {
        v72 = sub_1B0CE43F4(v4, v5, v76, v77, v2);
        v73 = v16;
        v74 = v17;
        if (v16 != v17 || (sub_1B0CE46C4() & 1) != 0)
        {
          goto LABEL_90;
        }

        goto LABEL_68;
      }

LABEL_33:
      v37 = v15 - v14;
      if (v15 < v14)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (__OFSUB__(v15, v14))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v37)
      {
        if (v3 < v37)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        result = swift_arrayInitWithCopy();
      }

      goto LABEL_68;
    }

    if (v77 < 0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v70 = v12;
    if (*(v2 + 3) < v77)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v22 = v78;
    v71 = v79;
    MEMORY[0x1EEE9AC00](result);
    v66 = v13;
    v67 = v3;
    v72 = 0;
    v73 = v3;
    v74 = v2;
    MEMORY[0x1EEE9AC00](v23);
    v62 = &v72;
    v63 = sub_1B0CE4A2C;
    v64 = v24;

    v25 = sub_1B0CE42D8(v4, v5, sub_1B0CE4A44);
    v69 = v3;
    if (v26)
    {
      v72 = 0;
      v73 = v3;
      v74 = v2;
      MEMORY[0x1EEE9AC00](v25);
      v66 = v13;
      v67 = v3;
      MEMORY[0x1EEE9AC00](v27);
      v12 = &v61;
      v62 = &v72;
      v63 = sub_1B0CE4A64;
      v64 = v28;

      result = sub_1B0CE4360(v4, v5, sub_1B0CE4A7C);
      if (v30)
      {
        if (v13)
        {
          if (v3)
          {
            v14 = *(v2 + 3);
            if (v14 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v3 = 0;
            v31 = v69 - 1;
            while (1)
            {
              v32 = *(v2 + 4);
              v33 = &v3[v32] >= *(v2 + 2) ? *(v2 + 2) : 0;
              v34 = v5 + 32 * &v3[v32 - v33];
              v35 = *v34;
              v36 = *(v34 + 8);
              v12 = *(v34 + 16);
              LODWORD(v34) = *(v34 + 24);
              *v13 = v35;
              *(v13 + 8) = v36;
              *(v13 + 16) = v12;
              *(v13 + 24) = v34;
              if (v31 == v3)
              {
                break;
              }

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v14 = *(v2 + 3);
              ++v3;
              v13 += 32;
              if (v3 >= v14)
              {
                goto LABEL_32;
              }
            }

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v3 = v69;
          }
        }

        else if (v3)
        {
LABEL_91:
          v29 = 0;
LABEL_92:
          if (v29 >= v3)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          if (v29 >= *(v2 + 3))
          {
LABEL_98:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_95;
        }
      }

      else if (v29 != v3)
      {
        goto LABEL_92;
      }
    }

    else
    {
    }

    v39 = *(v2 + 3);
    if (v39 < v3)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    MEMORY[0x1EEE9AC00](v38);
    v3 = &v65;
    v66 = v22;
    v67 = v71;
    v72 = v40;
    v73 = v39;
    v74 = v2;
    MEMORY[0x1EEE9AC00](v41);
    v62 = &v72;
    v63 = sub_1B0CE4B40;
    v64 = v42;

    v43 = sub_1B0CE42D8(v4, v5, sub_1B0CE4B70);
    if ((v44 & 1) == 0)
    {

LABEL_67:
      v12 = v70;
LABEL_68:
      v58 = v12[3];
      v59 = __OFADD__(v58, v6);
      v60 = v58 + v6;
      if (!v59)
      {
        v12[3] = v60;
        return result;
      }

      goto LABEL_80;
    }

    v68 = &v68;
    v3 = v69;
    v72 = v69;
    v73 = v39;
    v74 = v2;
    MEMORY[0x1EEE9AC00](v43);
    v45 = v71;
    v66 = v22;
    v67 = v71;
    MEMORY[0x1EEE9AC00](v46);
    v62 = &v72;
    v63 = sub_1B0CE4B58;
    v64 = v47;

    result = sub_1B0CE4360(v4, v5, sub_1B0CE4B88);
    if (v49)
    {
      if (v22 && v45)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
LABEL_89:
          __break(1u);
LABEL_90:

          __break(1u);
          goto LABEL_91;
        }

        if (v3 != v39)
        {
          v50 = v45 - 1;
          v51 = v3;
          while (v39 != v51)
          {
            if (v51 >= *(v2 + 3))
            {
              goto LABEL_85;
            }

            v52 = *(v2 + 4);
            if (&v51[v52] >= *(v2 + 2))
            {
              v53 = *(v2 + 2);
            }

            else
            {
              v53 = 0;
            }

            v54 = v5 + 32 * &v51[v52 - v53];
            v55 = *v54;
            v56 = *(v54 + 16);
            ++v51;
            v57 = *(v54 + 24);
            LODWORD(v54) = *(v54 + 8);
            *v22 = v55;
            *(v22 + 8) = v54;
            *(v22 + 16) = v56;
            *(v22 + 24) = v57;
            if (!v50)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (v51 == v39)
              {
                goto LABEL_66;
              }

              goto LABEL_72;
            }

            v22 += 32;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            --v50;
            if (v39 == v51)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_84;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v51 = &v3[v48];
      if (!__OFADD__(v3, v48))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v51 = v3;
LABEL_65:
    if (v51 == v39)
    {
LABEL_66:

      goto LABEL_67;
    }

LABEL_72:
    if (v51 < v3 || v51 >= v39)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v51 >= *(v2 + 3))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (v8 < v7)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v18 = (*v1)[3];
  v19 = v18 + v6;
  if (__OFADD__(v18, v6))
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v1;
  if ((*v1)[2] < v19 || (v20 & 1) == 0)
  {
    sub_1B0CE363C(v20, v19, 0, &type metadata for MailboxToRename, &qword_1EB6E62C0, &qword_1B0EE4EE0);
    v21 = *v1;
  }

  return sub_1B0CE37E8((v21 + 2), (v21 + 5), v5 + 32 * v7, v6);
}

uint64_t sub_1B0CE1608(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v41 = sub_1B0E42FC8();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B0E44B68();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0CE3F00(0x15F90uLL);
  v45 = a1;
  v14 = a2;
  v15 = sub_1B0CE2090(a1);
  v16 = sub_1B0CE220C(v13 + 10000, v15);
  v18 = v17;

  v46 = a4;
  if ((sub_1B03B5DDC(v16, v18, *a4) & 1) == 0)
  {
LABEL_19:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(v48, v16, v18);

    return v16;
  }

  v42 = (v10 + 8);
  v38 = (v7 + 8);
  v39 = v14;
  while (1)
  {
    do
    {
      v19 = 90000 * PCG32Random.next()();
    }

    while (v19 < 0x12DF0);
    v20 = HIDWORD(v19) + 10000;
    v21 = sub_1B0CE2090(v45);
    v48[0] = 45;
    v48[1] = 0xE100000000000000;
    v49 = v21;
    v47 = v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v22);

    v23 = v43;
    sub_1B0E44B48();
    v24 = sub_1B0E44AE8();
    v26 = v25;

    result = (*v42)(v23, v44);
    if (v26 >> 60 == 15)
    {
      break;
    }

    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_16;
      }

      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_21;
      }

      if (!v29)
      {
        goto LABEL_16;
      }
    }

    else if (v28)
    {
      v35 = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_20;
      }

      v29 = v35;
      if (!v35)
      {
LABEL_16:
        sub_1B070E144(v24, v26);
        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    else
    {
      v29 = BYTE6(v26);
      if (!BYTE6(v26))
      {
        goto LABEL_16;
      }
    }

    v32 = sub_1B03B7A3C(v29, 0);
    v33 = v40;
    v34 = sub_1B0E42EB8();
    sub_1B070E144(v24, v26);
    result = (*v38)(v33, v41);
    if (v34 != v29)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

LABEL_17:
    sub_1B0C31A28(v32);
    v16 = MailboxName.init(_:)(v49);
    v18 = v36;

    if ((sub_1B03B5DDC(v16, v18, *v46) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE1A04(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t *a6)
{
  v72 = a2;
  v76 = a4;
  if (a2 != a4 || (v7 = a1, (sub_1B04520BC(a1, a3) & 1) == 0))
  {
    v10 = v76 | (v76 << 32);
    v11 = *a5;
    v12 = *(*a5 + 32);
    v13 = *(*a5 + 16);
    if (v13 >= *(*a5 + 24) + v12)
    {
      v13 = *(*a5 + 24) + v12;
    }

    v83 = *(*a5 + 32);
    v85 = v13;
    v14 = *a5;
    while (1)
    {
      if (v12 == v13)
      {
        if ((sub_1B0CE46C4() & 1) == 0)
        {

          result = swift_beginAccess();
          v56 = *a6;
          v57 = *(*a6 + 32);
          v58 = *(*a6 + 16);
          if (v58 >= *(*a6 + 24) + v57)
          {
            v58 = *(*a6 + 24) + v57;
          }

          v84 = *(*a6 + 32);
          v86 = v58;
          v59 = *a6;
          while (1)
          {
            if (v57 == v58)
            {
              result = sub_1B0CE46C4();
              if ((result & 1) == 0)
              {
                goto LABEL_111;
              }

              v59 = v56;
              v57 = v84;
            }

            v60 = v57 + 1;
            v84 = v57 + 1;
            v61 = v59 + 32 * v57;
            v75 = *(v61 + 48);
            if ((v75 | (v75 << 32)) == v10)
            {
              v8 = *(v61 + 40);
              v62 = *(v8 + 16);
              if (v62 == *(a3 + 16))
              {
                v18 = *(v61 + 56);
                v70 = *(v61 + 64);
                if (v62)
                {
                  v63 = v8 == a3;
                }

                else
                {
                  v63 = 1;
                }

                if (v63)
                {
                  goto LABEL_21;
                }

                v64 = (v8 + 32);
                v65 = (a3 + 32);
                while (1)
                {
                  if (!v62)
                  {
                    __break(1u);
                    return result;
                  }

                  if (*v64 != *v65)
                  {
                    break;
                  }

                  ++v64;
                  ++v65;
                  if (!--v62)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }

            v58 = v86;
            v57 = v60;
          }
        }

        v14 = v11;
        v12 = v83;
      }

      v15 = v12 + 1;
      v83 = v12 + 1;
      v16 = v14 + 32 * v12;
      v75 = *(v16 + 48);
      if ((v75 | (v75 << 32)) == v10)
      {
        v8 = *(v16 + 40);
        v17 = *(v8 + 16);
        if (v17 == *(a3 + 16))
        {
          v18 = *(v16 + 56);
          v70 = *(v16 + 64);
          if (v17)
          {
            v19 = v8 == a3;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
LABEL_21:

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v9 = v18;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            v7 = a1;
            goto LABEL_22;
          }

          v20 = (v8 + 32);
          v21 = (a3 + 32);
          while (1)
          {
            if (!v17)
            {
              goto LABEL_110;
            }

            if (*v20 != *v21)
            {
              break;
            }

            ++v20;
            ++v21;
            if (!--v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      v13 = v85;
      v12 = v15;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v7;
  v75 = v76;
  v9 = a3;
  v70 = v76;
LABEL_22:
  swift_beginAccess();
  v73 = v8;
  v67 = (v8 + 32);
  v69 = v9;
  v66 = (v9 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v72;
  while (v22 == v76)
  {
    v23 = *(a3 + 16);
    if (v23 != *(v7 + 16))
    {
      break;
    }

    if (v23)
    {
      v24 = v7 == a3;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v7 + 32);
      v26 = (a3 + 32);
      while (v23)
      {
        if (*v26 != *v25)
        {
          goto LABEL_35;
        }

        ++v26;
        ++v25;
        if (!--v23)
        {
          goto LABEL_34;
        }
      }

LABEL_109:
      __break(1u);
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:

      goto LABEL_89;
    }

LABEL_34:
    v27 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v72;
    v28 = a3;
    v29 = v76;
LABEL_53:
    if (v22 == v75)
    {
      v40 = *(v27 + 16);
      if (v40 == *(v73 + 16))
      {
        if (!v40 || v27 == v73)
        {
LABEL_60:
          if (v29 == v70)
          {
            v43 = *(v28 + 16);
            if (v43 == *(v69 + 16))
            {
              if (!v43 || v28 == v69)
              {
LABEL_86:

                return 1;
              }

              v44 = (v28 + 32);
              v45 = v66;
              while (*v44 == *v45)
              {
                ++v44;
                ++v45;
                if (!--v43)
                {
                  goto LABEL_86;
                }
              }
            }
          }
        }

        else
        {
          v41 = (v27 + 32);
          v42 = v67;
          while (*v41 == *v42)
          {
            ++v41;
            ++v42;
            if (!--v40)
            {
              goto LABEL_60;
            }
          }
        }
      }
    }

    v7 = v27;
  }

LABEL_35:
  v30 = 0x100000001 * v22;
  v31 = *(*a5 + 32);
  v32 = *(*a5 + 16);
  if (v32 >= *(*a5 + 24) + v31)
  {
    v32 = *(*a5 + 24) + v31;
  }

  v77 = *a5;
  v79 = *(*a5 + 32);
  v81 = v32;
  v33 = *a5;
  while (1)
  {
    if (v31 == v32)
    {
      if ((sub_1B0CE46C4() & 1) == 0)
      {

        v46 = *(*a6 + 32);
        v47 = *(*a6 + 16);
        if (v47 >= *(*a6 + 24) + v46)
        {
          v47 = *(*a6 + 24) + v46;
        }

        v78 = *a6;
        v80 = *(*a6 + 32);
        v82 = v47;
        v48 = *a6;
        while (1)
        {
          if (v46 == v47)
          {
            if ((sub_1B0CE46C4() & 1) == 0)
            {
              goto LABEL_88;
            }

            v48 = v78;
            v46 = v80;
          }

          v49 = v46 + 1;
          v80 = v46 + 1;
          v50 = v48 + 32 * v46;
          v29 = *(v50 + 64);
          if ((v29 | (v29 << 32)) == v30)
          {
            v28 = *(v50 + 56);
            v51 = *(v28 + 16);
            if (v51 == *(v7 + 16))
            {
              break;
            }
          }

LABEL_71:
          v47 = v82;
          v46 = v49;
        }

        v27 = *(v50 + 40);
        v22 = *(v50 + 48);
        if (v51)
        {
          v52 = v28 == v7;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = (v28 + 32);
          v54 = (v7 + 32);
          while (v51)
          {
            if (*v53 != *v54)
            {
              goto LABEL_71;
            }

            ++v53;
            ++v54;
            if (!--v51)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_109;
        }

LABEL_52:

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        goto LABEL_53;
      }

      v33 = v77;
      v31 = v79;
    }

    v34 = v31 + 1;
    v79 = v31 + 1;
    v35 = v33 + 32 * v31;
    v29 = *(v35 + 64);
    if ((v29 | (v29 << 32)) == v30)
    {
      v28 = *(v35 + 56);
      v36 = *(v28 + 16);
      if (v36 == *(v7 + 16))
      {
        break;
      }
    }

LABEL_38:
    v32 = v81;
    v31 = v34;
  }

  v27 = *(v35 + 40);
  v22 = *(v35 + 48);
  if (v36)
  {
    v37 = v28 == v7;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    goto LABEL_52;
  }

  v38 = (v28 + 32);
  v39 = (v7 + 32);
  while (v36)
  {
    if (*v38 != *v39)
    {
      goto LABEL_38;
    }

    ++v38;
    ++v39;
    if (!--v36)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_88:

LABEL_89:

  return 0;
}

uint64_t sub_1B0CE2090(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 >= 6)
  {
    v4 = v3 - 6;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v3)
  {
LABEL_15:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v2;
  }

  v5 = 6;
  if (v3 < 6)
  {
    v5 = *(a1 + 16);
  }

  while (1)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_27:
      swift_unknownObjectRelease();
      sub_1B0C14438(v2, v2 + 32, 0, (2 * v1) | 1);
      goto LABEL_25;
    }

    if (*(a1 + v4 + 32) == 45)
    {
      break;
    }

    ++v4;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v6 = -v5;
  while (v6 != -1)
  {
    v7 = *(v3 + a1 + 33 + v6++) - 58;
    if (v7 < 0xFFFFFFF6)
    {
      goto LABEL_15;
    }
  }

  v9 = v3 >= v5;
  v10 = v3 - v5;
  if (v9)
  {
    v1 = v10;
  }

  else
  {
    v1 = 0;
  }

  sub_1B0E46AD8();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);

  if (v12 != v1)
  {
    goto LABEL_27;
  }

  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v14 = MailboxName.init(_:)(v13);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_1B0CE220C(int a1, uint64_t a2)
{
  v4 = sub_1B0E44B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 45;
  v17 = 0xE100000000000000;
  v18 = a2;
  v15[1] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  sub_1B0E44B48();
  v10 = sub_1B0E44AE8();
  v12 = v11;

  result = (*(v5 + 8))(v8, v4);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1B03B207C(v10, v12);
    sub_1B0C31A28(v14);
    return MailboxName.init(_:)(v18);
  }

  return result;
}

void *sub_1B0CE237C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1B0CE2400(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6290, &qword_1B0EE4E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_1B0CE2484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B0CE255C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B0CE2848(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B0CE2654(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0CE2654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for ComparisonResult(0);
    v28 = v6;
    v7 = v6 + 32 * v4;
    v8 = v5 - v4;
LABEL_5:
    v26 = v7;
    v27 = v4;
    v25 = v8;
    while (1)
    {
      v9 = *v7;
      v29 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 - 32);
      v13 = *(v7 - 24);
      v14 = *(v7 - 16);
      v15 = *(v7 - 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = static MailboxName.stableOrderCompare(_:_:)(v10, v11, v14);
      if (v16 == -1)
      {
      }

      else
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_18;
          }

LABEL_4:
          v4 = v27 + 1;
          v7 = v26 + 32;
          v8 = v25 - 1;
          if (v27 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }

        v17 = static MailboxName.stableOrder(_:_:)(v9, v29, v12, v13);

        if (!v17)
        {
          goto LABEL_4;
        }
      }

      if (!v28)
      {
        break;
      }

      v18 = *v7;
      v19 = *(v7 + 8);
      v20 = *(v7 + 16);
      v21 = *(v7 + 24);
      v22 = *(v7 - 16);
      *v7 = *(v7 - 32);
      *(v7 + 16) = v22;
      *(v7 - 24) = v19;
      *(v7 - 16) = v20;
      *(v7 - 8) = v21;
      *(v7 - 32) = v18;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_18:
    result = sub_1B0E46B28();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE2848(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8 + 1;
      v133 = v9;
      if (v8 + 1 >= v7)
      {
        goto LABEL_35;
      }

      v127 = v7;
      v11 = *a3;
      v131 = v8 + 1;
      v12 = *a3 + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v123 = v8;
      v17 = *a3 + 32 * v8;
      v18 = *v17;
      v19 = *(v17 + 8);
      v5 = *(v17 + 16);
      v20 = *(v17 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = static MailboxName.stableOrderCompare(_:_:)(v15, v16, v5);
      type metadata accessor for ComparisonResult(0);
      v120 = v6;
      if (v21 == -1)
      {
        v129 = 1;
      }

      else if (v21 == 1)
      {
        v129 = 0;
      }

      else
      {
        if (v21)
        {
          goto LABEL_149;
        }

        v129 = static MailboxName.stableOrder(_:_:)(v13, v14, v18, v19);
      }

      v22 = 0;
      v125 = 32 * v123;
      v23 = v11 + 32 * v123 + 48;
      v24 = v123 + 2;
      v25 = v131;
      v9 = v133;
      do
      {
        v10 = v24;
        v27 = v22;
        v28 = v25;
        if (v24 >= v127)
        {
          break;
        }

        v137 = v24;
        v29 = *(v23 + 16);
        v135 = *(v23 + 24);
        v30 = *(v23 + 32);
        v31 = *(v23 + 40);
        v32 = *(v23 - 16);
        v33 = *(v23 - 8);
        v5 = *v23;
        v34 = *(v23 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v35 = static MailboxName.stableOrderCompare(_:_:)(v30, v31, v5);
        if (v35 == -1)
        {
          v26 = 1;
        }

        else if (v35 == 1)
        {
          v26 = 0;
        }

        else
        {
          if (v35)
          {
            goto LABEL_149;
          }

          v26 = static MailboxName.stableOrder(_:_:)(v29, v135, v32, v33);
        }

        v23 += 32;
        v10 = v137;
        v24 = v137 + 1;
        v22 = v27 + 32;
        v25 = v28 + 1;
        v9 = v133;
      }

      while (v129 == v26);
      v6 = v120;
      if (!v129)
      {
        goto LABEL_33;
      }

      v36 = v123;
      if (v10 < v123)
      {
        goto LABEL_139;
      }

      if (v123 < v10)
      {
        break;
      }

      v8 = v123;
LABEL_35:
      v48 = a3[1];
      if (v10 >= v48)
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_138;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_59;
      }

      if (__OFADD__(v8, a4))
      {
        goto LABEL_140;
      }

      if (v8 + a4 >= v48)
      {
        v49 = a3[1];
      }

      else
      {
        v49 = v8 + a4;
      }

      if (v49 < v8)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v10 == v49)
      {
        goto LABEL_59;
      }

      v121 = v6;
      v50 = *a3;
      type metadata accessor for ComparisonResult(0);
      v136 = v50;
      v51 = v50 + 32 * v10;
      v124 = v8;
      v126 = v49;
      v52 = v8 - v10;
      while (2)
      {
        v130 = v51;
        v132 = v10;
        v128 = v52;
        v53 = v51;
        while (1)
        {
          v54 = *v53;
          v138 = *(v53 + 8);
          v5 = *(v53 + 16);
          v55 = *(v53 + 24);
          v56 = *(v53 - 32);
          v57 = *(v53 - 24);
          v58 = *(v53 - 16);
          v59 = *(v53 - 8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v60 = static MailboxName.stableOrderCompare(_:_:)(v5, v55, v58);
          if (v60 == -1)
          {

            goto LABEL_52;
          }

          if (v60)
          {
            break;
          }

          v61 = static MailboxName.stableOrder(_:_:)(v54, v138, v56, v57);

          if (!v61)
          {
            goto LABEL_45;
          }

LABEL_52:
          if (!v136)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            while (1)
            {
LABEL_149:
              sub_1B0E46B28();
              __break(1u);
            }
          }

          v62 = *v53;
          v63 = *(v53 + 8);
          v64 = *(v53 + 16);
          v65 = *(v53 + 24);
          v66 = *(v53 - 16);
          *v53 = *(v53 - 32);
          *(v53 + 16) = v66;
          *(v53 - 24) = v63;
          *(v53 - 16) = v64;
          *(v53 - 8) = v65;
          *(v53 - 32) = v62;
          v53 -= 32;
          if (__CFADD__(v52++, 1))
          {
            goto LABEL_45;
          }
        }

        if (v60 != 1)
        {
          goto LABEL_149;
        }

LABEL_45:
        v10 = v132 + 1;
        v51 = v130 + 32;
        v52 = v128 - 1;
        if (v132 + 1 != v126)
        {
          continue;
        }

        break;
      }

      v10 = v126;
      v6 = v121;
      v9 = v133;
      v8 = v124;
LABEL_59:
      if (v10 < v8)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      }

      v69 = *(v9 + 2);
      v68 = *(v9 + 3);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        v9 = sub_1B0AFF300((v68 > 1), v69 + 1, 1, v9);
      }

      *(v9 + 2) = v70;
      v71 = &v9[16 * v69];
      *(v71 + 4) = v8;
      *(v71 + 5) = v10;
      v8 = v10;
      v72 = *a1;
      if (!*a1)
      {
        goto LABEL_147;
      }

      if (v69)
      {
        while (2)
        {
          v73 = v70 - 1;
          if (v70 >= 4)
          {
            v78 = &v9[16 * v70 + 32];
            v79 = *(v78 - 64);
            v80 = *(v78 - 56);
            v84 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            if (v84)
            {
              goto LABEL_124;
            }

            v83 = *(v78 - 48);
            v82 = *(v78 - 40);
            v84 = __OFSUB__(v82, v83);
            v76 = v82 - v83;
            v77 = v84;
            if (v84)
            {
              goto LABEL_125;
            }

            v85 = &v9[16 * v70];
            v87 = *v85;
            v86 = *(v85 + 1);
            v84 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v84)
            {
              goto LABEL_127;
            }

            v84 = __OFADD__(v76, v88);
            v89 = v76 + v88;
            if (v84)
            {
              goto LABEL_130;
            }

            if (v89 >= v81)
            {
              v107 = &v9[16 * v73 + 32];
              v109 = *v107;
              v108 = *(v107 + 1);
              v84 = __OFSUB__(v108, v109);
              v110 = v108 - v109;
              if (v84)
              {
                goto LABEL_134;
              }

              if (v76 < v110)
              {
                v73 = v70 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v77)
              {
                goto LABEL_126;
              }

              v90 = &v9[16 * v70];
              v92 = *v90;
              v91 = *(v90 + 1);
              v93 = __OFSUB__(v91, v92);
              v94 = v91 - v92;
              v95 = v93;
              if (v93)
              {
                goto LABEL_129;
              }

              v96 = &v9[16 * v73 + 32];
              v98 = *v96;
              v97 = *(v96 + 1);
              v84 = __OFSUB__(v97, v98);
              v99 = v97 - v98;
              if (v84)
              {
                goto LABEL_132;
              }

              if (__OFADD__(v94, v99))
              {
                goto LABEL_133;
              }

              if (v94 + v99 < v76)
              {
                goto LABEL_93;
              }

              if (v76 < v99)
              {
                v73 = v70 - 2;
              }
            }
          }

          else
          {
            if (v70 == 3)
            {
              v74 = *(v9 + 4);
              v75 = *(v9 + 5);
              v84 = __OFSUB__(v75, v74);
              v76 = v75 - v74;
              v77 = v84;
              goto LABEL_79;
            }

            v100 = &v9[16 * v70];
            v102 = *v100;
            v101 = *(v100 + 1);
            v84 = __OFSUB__(v101, v102);
            v94 = v101 - v102;
            v95 = v84;
LABEL_93:
            if (v95)
            {
              goto LABEL_128;
            }

            v103 = &v9[16 * v73];
            v105 = *(v103 + 4);
            v104 = *(v103 + 5);
            v84 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v84)
            {
              goto LABEL_131;
            }

            if (v106 < v94)
            {
              break;
            }
          }

          v111 = v73 - 1;
          if (v73 - 1 >= v70)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*a3)
          {
            goto LABEL_144;
          }

          v112 = *&v9[16 * v111 + 32];
          v5 = *&v9[16 * v73 + 40];
          sub_1B0CE312C((*a3 + 32 * v112), (*a3 + 32 * *&v9[16 * v73 + 32]), (*a3 + 32 * v5), v72);
          if (v6)
          {
          }

          if (v5 < v112)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B0B9443C(v9);
          }

          if (v111 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v113 = &v9[16 * v111];
          *(v113 + 4) = v112;
          *(v113 + 5) = v5;
          sub_1B0B943B0(v73);
          v70 = *(v9 + 2);
          if (v70 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_110;
      }
    }

    v37 = 0;
    do
    {
      if (v36 != v28)
      {
        v41 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v42 = v41 + v125 + v37;
        v43 = v41 + v125 + v27;
        v44 = *v42;
        v45 = *(v42 + 8);
        v46 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v125 + v37 != v125 + v27 + 32 || v42 >= v43 + 64)
        {
          v38 = *(v43 + 48);
          *v42 = *(v43 + 32);
          *(v42 + 16) = v38;
        }

        *(v43 + 32) = v44;
        v39 = v41 + v125 + v27;
        *(v39 + 40) = v45;
        *(v39 + 48) = v46;
        *(v39 + 56) = v47;
      }

      ++v36;
      v27 -= 32;
      v37 += 32;
    }

    while (v36 < v28--);
LABEL_33:
    v8 = v123;
    goto LABEL_35;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_110:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_148;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_142:
    v9 = sub_1B0B9443C(v9);
  }

  v114 = *(v9 + 2);
  if (v114 >= 2)
  {
    while (*a3)
    {
      v115 = *&v9[16 * v114];
      v116 = *&v9[16 * v114 + 24];
      sub_1B0CE312C((*a3 + 32 * v115), (*a3 + 32 * *&v9[16 * v114 + 16]), (*a3 + 32 * v116), v5);
      if (v6)
      {
      }

      if (v116 < v115)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0B9443C(v9);
      }

      if (v114 - 2 >= *(v9 + 2))
      {
        goto LABEL_136;
      }

      v117 = &v9[16 * v114];
      *v117 = v115;
      *(v117 + 1) = v116;
      sub_1B0B943B0(v114 - 1);
      v114 = *(v9 + 2);
      if (v114 <= 1)
      {
      }
    }

    goto LABEL_146;
  }
}

uint64_t sub_1B0CE312C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - a2;
  v11 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 5;
  if (v9 >= v12)
  {
    v29 = 32 * v12;
    if (__dst != a2 || &a2[v29] <= __dst)
    {
      v30 = __dst;
      memmove(__dst, a2, 32 * v12);
      __dst = v30;
    }

    v53 = __dst;
    v15 = &__dst[v29];
    if (v10 >= 32 && v5 > __src)
    {
LABEL_31:
      v31 = 0;
      v32 = v15;
      v57 = v4;
      __dstb = v5;
      v50 = v5 - 32;
      v52 = v15;
      while (1)
      {
        v33 = &v32[v31];
        v34 = &v32[v31 - 32];
        v35 = *v34;
        v55 = *&v32[v31 - 24];
        v36 = *&v32[v31 - 16];
        v37 = *&v32[v31 - 8];
        v38 = *(__dstb - 4);
        v39 = *(__dstb - 6);
        v40 = *(__dstb - 2);
        v41 = *(__dstb - 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42 = static MailboxName.stableOrderCompare(_:_:)(v36, v37, v40);
        type metadata accessor for ComparisonResult(0);
        if (v42 == -1)
        {
          v43 = 1;
        }

        else if (v42 == 1)
        {
          v43 = 0;
        }

        else
        {
          if (v42)
          {
LABEL_54:
            result = sub_1B0E46B28();
            __break(1u);
            return result;
          }

          v43 = static MailboxName.stableOrder(_:_:)(v35, v55, v38, v39);
        }

        v44 = &v57[v31];
        if (v43)
        {
          v4 = v44 - 32;
          v46 = v50;
          if (v44 != __dstb)
          {
            v47 = *(v50 + 1);
            *v4 = *v50;
            *(v44 - 1) = v47;
          }

          v14 = v53;
          v15 = &v52[v31];
          if (&v52[v31] <= v53 || (v5 = v50, v50 <= __src))
          {
            v15 = &v52[v31];
            goto LABEL_50;
          }

          goto LABEL_31;
        }

        if (v44 != v33)
        {
          v45 = *(v34 + 16);
          *(v44 - 2) = *v34;
          *(v44 - 1) = v45;
        }

        v31 -= 32;
        v32 = v52;
        v14 = v53;
        v15 = &v52[v31];
        if (&v52[v31] <= v53)
        {
          v46 = __dstb;
          goto LABEL_50;
        }
      }
    }

    v46 = v5;
    v14 = __dst;
  }

  else
  {
    v13 = 32 * v9;
    v14 = __dst;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      memmove(__dst, __src, v13);
    }

    v15 = &v14[v13];
    if (v7 >= 32 && v5 < v4)
    {
      v56 = v4;
      while (1)
      {
        v16 = *v5;
        v54 = *(v5 + 2);
        v17 = *(v5 + 2);
        __dsta = v5;
        v18 = *(v5 + 6);
        v19 = *v14;
        v20 = *(v14 + 2);
        v21 = *(v14 + 2);
        v22 = *(v14 + 6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = static MailboxName.stableOrderCompare(_:_:)(v17, v18, v21);
        type metadata accessor for ComparisonResult(0);
        if (v23 == 1)
        {
          break;
        }

        if (v23)
        {
          if (v23 != -1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v24 = static MailboxName.stableOrder(_:_:)(v16, v54, v19, v20);

          if (!v24)
          {
            goto LABEL_17;
          }
        }

        v27 = v56;
        v25 = __dsta;
        v5 = __dsta + 32;
        if (v6 != __dsta)
        {
          goto LABEL_18;
        }

LABEL_19:
        v6 += 32;
        if (v14 >= v15 || v5 >= v27)
        {
          goto LABEL_47;
        }
      }

LABEL_17:
      v25 = v14;
      v26 = v6 == v14;
      v14 += 32;
      v27 = v56;
      v5 = __dsta;
      if (v26)
      {
        goto LABEL_19;
      }

LABEL_18:
      v28 = *(v25 + 1);
      *v6 = *v25;
      *(v6 + 1) = v28;
      goto LABEL_19;
    }

LABEL_47:
    v46 = v6;
  }

LABEL_50:
  v48 = (v15 - v14 + (v15 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v46 != v14 || v46 >= &v14[v48])
  {
    memmove(v46, v14, v48);
  }

  return 1;
}

uint64_t sub_1B0CE35CC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE363C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *v6;
  v10 = (*v6 + 16);
  v11 = *v10;
  if (*v10 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = swift_allocObject();
    v18 = *(v9 + 24);
    *(v15 + 16) = v11;
    *(v15 + 24) = v18;
    if (v18 >= 1)
    {
      sub_1B0CE3D18(v15 + 16, v15 + 40, v10, v9 + 40);
    }
  }

  else
  {
    v13 = *v6;
    sub_1B0E435C8();
    if (a1)
    {
      v14 = *(v9 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size_0(v15);
      v17 = v16 - 40;
      if (v16 < 40)
      {
        v17 = v16 - 9;
      }

      *(v15 + 16) = v17 >> 5;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_1B0CE3B0C(v15 + 16, (v15 + 40), v10, (v9 + 40));
        *(v9 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size_0(v15);
      v20 = v19 - 40;
      if (v19 < 40)
      {
        v20 = v19 - 9;
      }

      v21 = *(v9 + 24);
      *(v15 + 16) = v20 >> 5;
      *(v15 + 24) = v21;
      *(v15 + 32) = 0;
      if (v21 >= 1)
      {
        sub_1B0CE3C34(v15 + 16, v15 + 40, v10, v9 + 40);
      }
    }
  }

  *v6 = v15;
  return result;
}

uint64_t sub_1B0CE37E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v7 = result;
  result = *(result + 8);
  v8 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7[1] = v8;
  if (v8 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B0CE3DF4(result, v8, v7, a2, &v12);
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = 0;
  }

  v16 = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  return sub_1B0CE3A00(a3, a4);
}

void *sub_1B0CE38AC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 32 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0CE3958@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE3A00(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (v2[4])
  {
    if (!result || !a2)
    {
      return result;
    }

    if (v2[1] >= a2)
    {
      v5 = *v2;
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v6 = v2[1];
  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v2[2];
  v8 = v2[3];
  if (result && v6)
  {
    v9 = *v2;
    v10 = v2[1];
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v6, a2 - v6))
  {
    goto LABEL_20;
  }

  if (a2 < v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v6)
  {
    return result;
  }

  if (v8 < a2 - v6)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

void sub_1B0CE3B0C(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

uint64_t sub_1B0CE3C34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3D18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3DF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 32 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0CE3E6C(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v6 = result[1];
  v7 = result[2];
  v9 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (!v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *result);
      if (v8 < *result || (v8 -= *result, !v9))
      {
LABEL_9:
        v10 = a2 + 32 * v8;
        *v10 = a3;
        *(v10 + 8) = a4;
        *(v10 + 16) = a5;
        *(v10 + 24) = a6;
        v9 = __OFADD__(v6, 1);
        v11 = v6 + 1;
        if (!v9)
        {
          result[1] = v11;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *result);
      v8 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1B0CE3F00(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = PCG32Random.next()() * result;
    if (v3 < v1)
    {
        ;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CE3F74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 32 * v4;
  }

  return result;
}

void *sub_1B0CE3FF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      ++v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0CE4148(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LODWORD(v18) = *(v18 + 24);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_23;
      }

      v11 += 32;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1B0CE42D8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1B0CE4360(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1B0CE43F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[2];
  v6 = *result - v5;
  if (__OFSUB__(*result, v5))
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = result[1];
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (__OFSUB__(v9, v6))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v12 = *result - v5;
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = result[1];
  }

  v16 = v6 >= v9;
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 && v13)
  {
    result = swift_arrayInitWithCopy();
  }

  if (v12 >= a4 || v16)
  {
    sub_1B0CE4938((a5 + 16), v13, a5);
  }

  if (a4 - v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = a4 - v13;
  }

  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    goto LABEL_30;
  }

  if (v15 < v13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      if (v14)
      {
        swift_arrayInitWithCopy();
      }
    }

    sub_1B0CE4938((a5 + 16), v15, a5);
  }

LABEL_32:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_1B0CE4580(void *result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v16 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    v12 = *a3;
    result = swift_arrayInitWithCopy();
  }

  v13 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v13;
  if (v16)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = (*a3 + 32 * v11);
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = swift_arrayInitWithCopy();
      v13 = *a4;
    }
  }

  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    goto LABEL_29;
  }

  *a4 = v15;
  return result;
}

uint64_t sub_1B0CE46C4()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

void *sub_1B0CE472C@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_1B0CE47AC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_1B0CE4824()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62C0, &qword_1B0EE4EE0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1B0CE3D18(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t *sub_1B0CE4938(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v3 + a2 >= *result)
  {
    v6 = *result;
  }

  if (v4 == a2)
  {
    return a3;
  }

  v7 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, v5);
      if (v7 < v5)
      {
        return a3;
      }

      v7 -= v5;
      if (!v8)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v7 & 0x8000000000000000) == 0 || !__OFADD__(v7, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CE49C8()
{
  result = qword_1EB6E62C8;
  if (!qword_1EB6E62C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E62D0, "2");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62C8);
  }

  return result;
}

uint64_t sub_1B0CE4A9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 24) >= a2)
  {
    v6 = *(v3 + 16);
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE4B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0CE3F74(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void sub_1B0CE4BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E62F8, &qword_1B0EE59B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v63 = (&v57 - v16);
  if (a1 == a2)
  {
    v65 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v59 = a2;
    v60 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v57 = (v21 + 63) >> 6;
    v58 = v19;
    while (v23)
    {
      v24 = __clz(__rbit64(v23));
      v25 = (v23 - 1) & v23;
      v26 = v24 | (v17 << 6);
LABEL_16:
      v31 = v61;
      v32 = *(v60 + 48) + 16 * v26;
      v33 = *v32;
      v34 = *(v32 + 8);
      sub_1B03B5C80(*(v60 + 56) + *(v66 + 72) * v26, v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
      v36 = *(v35 + 48);
      v37 = v64;
      *v64 = v33;
      *(v37 + 2) = v34;
      v38 = v37;
      sub_1B03C60A4(v31, v37 + v36, &unk_1EB6E26C0, &unk_1B0E9DE10);
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a2 = v59;
LABEL_17:
      v39 = v38;
      v40 = v63;
      sub_1B03C60A4(v39, v63, &qword_1EB6E62F8, &qword_1B0EE59B8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
      v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
      v65 = v42 == 1;
      if (v42 == 1)
      {
        return;
      }

      v43 = v25;
      v44 = v66;
      v45 = *(v41 + 48);
      v46 = v40;
      v47 = *v40;
      v48 = *(v46 + 2);
      sub_1B03C60A4(v46 + v45, v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v49 = sub_1B03AB888(v47, v48);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        sub_1B0398EFC(v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
        goto LABEL_24;
      }

      v52 = *(a2 + 56) + *(v44 + 72) * v49;
      v53 = v62;
      sub_1B03B5C80(v52, v62, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v54 = sub_1B0E46E08();
      sub_1B0398EFC(v53, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v23 = v43;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v57 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v57;
    }

    v28 = v27 - 1;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v57)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6300, &unk_1B0EE59C0);
        v56 = v64;
        (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
        v25 = 0;
        v17 = v28;
        v38 = v56;
        goto LABEL_17;
      }

      v30 = *(v58 + 8 * v29);
      ++v17;
      if (v30)
      {
        v25 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v65 = 0;
  }
}

uint64_t sub_1B0CE5080(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 16 * v12;
    v14 = *(v3 + 56) + 24 * v12;
    v15 = *v14;
    v30 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = sub_1B03AB888(*v13, *(v13 + 8));
    v19 = v18;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((v19 & 1) == 0 || (v20 = *(a2 + 56) + 24 * v17, v21 = *v20, v22 = *(*v20 + 16), v22 != *(v15 + 16)))
    {
LABEL_34:

      return 0;
    }

    v23 = *(v20 + 8);
    v24 = *(v20 + 16);
    if (v22)
    {
      v25 = v21 == v15;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = (v21 + 36);
      v27 = (v15 + 36);
      while (v22)
      {
        if (*(v27 - 1) != *(v26 - 1))
        {
          goto LABEL_34;
        }

        v28 = *v26;
        v26 += 2;
        if (*v27 != v28)
        {
          goto LABEL_34;
        }

        v27 += 2;
        if (!--v22)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_37;
    }

LABEL_20:

    result = 0;
    if (v24)
    {
      v7 = v31;
      if ((v16 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v7 = v31;
      if (v23 == v30)
      {
        v29 = v16;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        return result;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1B0CE526C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 56) + 16 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    result = sub_1B0CBF490(*(*(v3 + 48) + v13));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = *(a2 + 56) + 16 * result;
    if (*(v18 + 8) == 1)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 == v15)
      {
        v9 = v16;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CE5398(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE54A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1B03FE284(*(*(v3 + 48) + 4 * v12));
    if (v15)
    {
      result = sub_1B0BE9028(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE55B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v29 = result + 64;
  v30 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v28 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v32 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 40 * v9);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 1);
    v14 = *(v10 + 4);
    v15 = *(v10 + 3);
    v16 = *(v10 + 4);
    v17 = *(result + 56) + 12 * v9;
    v18 = *v17;
    v19 = *(v17 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v15, v16);
    v20 = v13 == 0;
    if (!v13)
    {
      return v20;
    }

    v33[0] = v11 | (v12 << 32);
    v33[1] = v13;
    v33[2] = v14;
    v33[3] = v15;
    v33[4] = v16;
    v21 = sub_1B0AE0250(v33);
    v23 = v22;
    sub_1B0929338(v33);
    if ((v23 & 1) == 0)
    {
      return v20;
    }

    v24 = *(a2 + 56) + 12 * v21;
    v25 = *v24;
    if (*(v24 + 8) != 1)
    {
      if (v19)
      {
        return v20;
      }

      v27 = v18 == v25;
      goto LABEL_28;
    }

    if (v25)
    {
      if (v19)
      {
        v26 = v18 == 0;
      }

      else
      {
        v26 = 1;
      }

      result = v30;
      v5 = v32;
      if (v26)
      {
        return v20;
      }
    }

    else
    {
      if (v19)
      {
        v27 = v18 == 0;
      }

      else
      {
        v27 = 0;
      }

LABEL_28:
      result = v30;
      v5 = v32;
      if (!v27)
      {
        return v20;
      }
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v28)
    {
      return 1;
    }

    v8 = *(v29 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CE5798(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_17:
    v13 = v10 | (v3 << 6);
    v14 = result;
    v15 = (*(result + 48) + 16 * v13);
    v16 = *(result + 56) + 24 * v13;
    v17 = *v16;
    v18 = *(v16 + 4);
    v19 = *(v16 + 8);
    v20 = *(v16 + 16);
    v21 = sub_1B03B8A9C(*v15, v15[1]);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v21;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    if (*(v23 + 4))
    {
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 == v17)
      {
        v26 = v18;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    if (v25)
    {
      result = v14;
      v7 = v27;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v24 == v19)
      {
        v9 = v20;
      }

      else
      {
        v9 = 1;
      }

      result = v14;
      v7 = v27;
      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CE5920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6320, &qword_1B0EE59F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v63 = (&v57 - v16);
  if (a1 == a2)
  {
    v65 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v59 = a2;
    v60 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v57 = (v21 + 63) >> 6;
    v58 = v19;
    while (v23)
    {
      v24 = __clz(__rbit64(v23));
      v25 = (v23 - 1) & v23;
      v26 = v24 | (v17 << 6);
LABEL_16:
      v31 = v61;
      v32 = *(v60 + 48) + 16 * v26;
      v33 = *v32;
      v34 = *(v32 + 8);
      sub_1B03B5C80(*(v60 + 56) + *(v66 + 72) * v26, v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
      v36 = *(v35 + 48);
      v37 = v64;
      *v64 = v33;
      *(v37 + 2) = v34;
      v38 = v37;
      sub_1B03C60A4(v31, v37 + v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a2 = v59;
LABEL_17:
      v39 = v38;
      v40 = v63;
      sub_1B03C60A4(v39, v63, &qword_1EB6E6320, &qword_1B0EE59F8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
      v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
      v65 = v42 == 1;
      if (v42 == 1)
      {
        return;
      }

      v43 = v25;
      v44 = v66;
      v45 = *(v41 + 48);
      v46 = v40;
      v47 = *v40;
      v48 = *(v46 + 2);
      sub_1B03C60A4(v46 + v45, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v49 = sub_1B03AB888(v47, v48);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_24;
      }

      v52 = *(a2 + 56) + *(v44 + 72) * v49;
      v53 = v62;
      sub_1B03B5C80(v52, v62, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v54 = sub_1B0E46E08();
      sub_1B0398EFC(v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v23 = v43;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v57 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v57;
    }

    v28 = v27 - 1;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v57)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6328, &qword_1B0EE5A00);
        v56 = v64;
        (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
        v25 = 0;
        v17 = v28;
        v38 = v56;
        goto LABEL_17;
      }

      v30 = *(v58 + 8 * v29);
      ++v17;
      if (v30)
      {
        v25 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v65 = 0;
  }
}

uint64_t SearchRequest.Query.mailboxes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t SearchRequest.Query.predicate.setter(uint64_t a1)
{
  result = sub_1B09AEA14(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

uint64_t static SearchRequest.Query.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_1B0CE5080(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
}

uint64_t static SearchRequest.Predicate.__derived_enum_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  while (2)
  {
    switch(a1 >> 60)
    {
      case 1uLL:
        if (a2 >> 60 != 1)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 2uLL:
        if (a2 >> 60 != 2)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 3uLL:
        if (a2 >> 60 != 3)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 4uLL:
        if (a2 >> 60 != 4)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      case 5uLL:
        if (a2 >> 60 != 5)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      case 6uLL:
        if (a2 >> 60 != 6)
        {
          goto LABEL_60;
        }

        v11 = a1 & 0xFFFFFFFFFFFFFFFLL;
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *(v11 + 40);
        v16 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v20 = *(v16 + 40);
        v21 = v12 == v17 && v13 == v18;
        if (!v21 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_60;
        }

        if (v14 != v19 || v15 != v20)
        {
          goto LABEL_41;
        }

        goto LABEL_59;
      case 7uLL:
        if (a2 >> 60 != 7)
        {
          goto LABEL_60;
        }

        v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1B09AE83C(v25);
        LOBYTE(v24) = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v24, v25);
        sub_1B09AEA14(v25);
        return v24 & 1;
      case 8uLL:
        if (a2 >> 60 == 8)
        {
          v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a1 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          a2 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v7, v8))
          {
            continue;
          }
        }

        goto LABEL_60;
      case 9uLL:
        if (a2 >> 60 != 9)
        {
          goto LABEL_60;
        }

        return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      case 0xAuLL:
        if (a2 >> 60 == 10)
        {
          goto LABEL_37;
        }

        goto LABEL_60;
      case 0xBuLL:
        if (a2 >> 60 != 11)
        {
          goto LABEL_60;
        }

LABEL_37:
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_59;
        }

LABEL_41:

        return sub_1B0E46A78();
      case 0xCuLL:
        v9 = __ROR8__(a1 + 0x4000000000000000, 3);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = 0xC000000000000010;
          }

          else
          {
            v10 = 0xC000000000000018;
          }
        }

        else if (v9)
        {
          v10 = 0xC000000000000008;
        }

        else
        {
          v10 = 0xC000000000000000;
        }

        if (a2 != v10)
        {
          goto LABEL_60;
        }

LABEL_59:
        result = 1;
        break;
      default:
        if (!(a2 >> 60))
        {
          v4 = *(a1 + 24);
          v5 = *(a2 + 16);
          a2 = *(a2 + 24);
          v6 = static SearchRequest.Predicate.__derived_enum_equals(_:_:)(*(a1 + 16), v5);
          a1 = v4;
          if (v6)
          {
            continue;
          }
        }

LABEL_60:
        result = 0;
        break;
    }

    return result;
  }
}

uint64_t sub_1B0CE61C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B0CE5080(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v2, v3);
}

void static SearchRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    if ((a4 & 4) != 0)
    {

      sub_1B0CE4BA0(a1, a3);
    }
  }

  else if (a4 & 4) == 0 && (sub_1B0CE5080(a1, a3))
  {
    static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a2, a4);
  }
}

void sub_1B0CE629C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((v5 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {

      sub_1B0CE4BA0(v4, v6);
    }
  }

  else if (v7 & 4) == 0 && (sub_1B0CE5080(v4, v6))
  {
    static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v5, v7);
  }
}

unint64_t SearchRequest.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B09AFBA0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static SearchRequest.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 4) != 0)
  {
    if ((a6 & 4) != 0)
    {
      sub_1B0CE4BA0(a2, a5);
      if (v9)
      {
        return 1;
      }
    }
  }

  else if (a6 & 4) == 0 && (sub_1B0CE5080(a2, a5) & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(a3, a6))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0CE6498(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 4) != 0)
  {
    if ((v7 & 4) != 0)
    {
      sub_1B0CE4BA0(v3, v6);
      if (v9)
      {
        return 1;
      }
    }
  }

  else if (v7 & 4) == 0 && (sub_1B0CE5080(v3, v6) & 1) != 0 && (static SearchRequest.Predicate.__derived_enum_equals(_:_:)(v4, v7))
  {
    return 1;
  }

  return 0;
}

uint64_t SearchRequest.ID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t SearchRequest.Predicate.Color.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t SearchRequest.Predicate.Day.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return MEMORY[0x1B2728D70](a4);
}

uint64_t SearchRequest.Predicate.Day.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6800()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE686C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0CE68B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

unint64_t SearchRequest.Predicate.hash(into:)(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    switch(a2 >> 60)
    {
      case 1uLL:
        v36 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v36 + 24);
        v12 = *(v36 + 32);
        v13 = 2;
        goto LABEL_25;
      case 2uLL:
        v14 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *(v14 + 24);
        v8 = 3;
        goto LABEL_21;
      case 3uLL:
        v22 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v23 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v24 = *(v22 + 24);
        v8 = 4;
        goto LABEL_21;
      case 4uLL:
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1B2728D70](7);
        v18 = v25;
        return MEMORY[0x1B2728D70](v18);
      case 5uLL:
        v19 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v20 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v21 = *(v19 + 24);
        v8 = 8;
        goto LABEL_21;
      case 6uLL:
        v26 = (a2 & 0xFFFFFFFFFFFFFFFLL);
        v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v28 = v26[3];
        v29 = v26[4];
        v30 = v26[5];
        MEMORY[0x1B2728D70](9);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      case 7uLL:
        v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1B2728D70](10);
        sub_1B09AE83C(v32);
        SearchRequest.Predicate.hash(into:)(a1, v32);

        return sub_1B09AEA14(v32);
      case 8uLL:
        a2 &= 0xFFFFFFFFFFFFFFFuLL;
        goto LABEL_2;
      case 9uLL:
        v9 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v9 + 24);
        v12 = *(v9 + 32);
        v13 = 13;
LABEL_25:
        MEMORY[0x1B2728D70](v13);
        MEMORY[0x1B2728D70](v10);
        MEMORY[0x1B2728D70](v11);
        v18 = v12;
        return MEMORY[0x1B2728D70](v18);
      case 0xAuLL:
        v33 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v35 = *(v33 + 24);
        v8 = 14;
        goto LABEL_21;
      case 0xBuLL:
        v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *(v5 + 24);
        v8 = 15;
LABEL_21:
        MEMORY[0x1B2728D70](v8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      case 0xCuLL:
        v17 = __ROR8__(a2 + 0x4000000000000000, 3);
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v18 = 6;
          }

          else
          {
            v18 = 12;
          }
        }

        else if (v17)
        {
          v18 = 5;
        }

        else
        {
          v18 = 1;
        }

        return MEMORY[0x1B2728D70](v18);
      default:
LABEL_2:
        v4 = *(a2 + 16);
        a2 = *(a2 + 24);
        MEMORY[0x1B2728D70]();
        SearchRequest.Predicate.hash(into:)(a1, v4);
        break;
    }
  }
}

uint64_t SearchRequest.Predicate.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6BAC()
{
  v1 = *v0;
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CE6BFC()
{
  v1 = *v0;
  sub_1B0E46C28();
  SearchRequest.Predicate.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

void *static SearchRequest.Predicate.and(_:)(void *result)
{
  v1 = result[2];
  if (v1 == 1)
  {
    v3 = result[4];
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = &result[v1];
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    v5 = result;
    result[2] = v3;
    result[3] = v4;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      v8 = result;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v9 = *v7--;
        v5 = swift_allocObject();
        *(v5 + 16) = v9;
        *(v5 + 24) = v8;
        result = sub_1B09AE83C(v9);
        --v6;
        v8 = v5;
        if (v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1B09AE83C(v4);
LABEL_10:
    sub_1B09AE83C(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t static SearchRequest.Predicate.or(_:)(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1)
  {
    v3 = *(result + 32);
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = (result + 8 * v1);
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v5 = result | 0x8000000000000000;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v8 = *v7--;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        result = sub_1B09AE83C(v8);
        v5 = v9 | 0x8000000000000000;
        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1B09AE83C(v4);
LABEL_10:
    sub_1B09AE83C(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t SearchRequest.Predicate.Color.description.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 0x656C70727570;
  if (a1 != 5)
  {
    v2 = 2036429415;
  }

  v3 = 0x6E65657267;
  if (a1 != 3)
  {
    v3 = 1702194274;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65676E61726FLL;
  if (a1 != 1)
  {
    v4 = 0x776F6C6C6579;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0CE6EFC()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x656C70727570;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 0x6E65657267;
  if (v1 != 3)
  {
    v4 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65676E61726FLL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C6579;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchRequest.Predicate.Day.description.getter()
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  return v3;
}

uint64_t sub_1B0CE7088()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return SearchRequest.Predicate.Day.description.getter();
}

uint64_t SearchRequest.Predicate.description.getter(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v32 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v34 = *(v32 + 24);
      v35 = *(v32 + 32);
      v28 = 0x2845524F464542;
      goto LABEL_37;
    case 2uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = 1497648962;
      goto LABEL_40;
    case 3uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 2638659;
      goto LABEL_43;
    case 4uLL:
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = 0xE600000000000000;
      v12 = 0x65676E61726FLL;
      v13 = 0xE600000000000000;
      v42 = 0x28524F4C4F43;
      v14 = 0x656C70727570;
      if (v10 != 5)
      {
        v14 = 2036429415;
        v13 = 0xE400000000000000;
      }

      v15 = 0xE500000000000000;
      v16 = 0x6E65657267;
      if (v10 != 3)
      {
        v16 = 1702194274;
        v15 = 0xE400000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 4u)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v10 != 1)
      {
        v12 = 0x776F6C6C6579;
        v11 = 0xE600000000000000;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
      {
        v12 = 6579570;
        v11 = 0xE300000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 2u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v10 <= 2)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = v18;
      goto LABEL_38;
    case 5uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = 1297044038;
LABEL_40:
      v9 = v29 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      goto LABEL_43;
    case 6uLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v42 = 0x28524544414548;
      MEMORY[0x1B2726E80](*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18));
      MEMORY[0x1B2726E80](61, 0xE100000000000000);
      MEMORY[0x1B2726E80](v36, v37);
      goto LABEL_45;
    case 7uLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = 542396238;
      sub_1B09AE83C(v30);
      v31 = SearchRequest.Predicate.description.getter(v30);
      MEMORY[0x1B2726E80](v31);

      sub_1B09AEA14(v30);
      return v42;
    case 8uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v40 = SearchRequest.Predicate.description.getter(v39);
      if (!(v39 >> 60))
      {
        MEMORY[0x1B2726E80](v40);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v40 = 40;
      }

      v42 = v40;
      MEMORY[0x1B2726E80](542265120, 0xE400000000000000);
      v4 = SearchRequest.Predicate.description.getter(v38);
      v6 = v41;
      if (v38 >> 60)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    case 9uLL:
      v24 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = 0x2845434E4953;
LABEL_37:
      v42 = v28;
      v17 = SearchRequest.Predicate.Day.description.getter();
LABEL_38:
      MEMORY[0x1B2726E80](v17, v19);
      goto LABEL_44;
    case 0xAuLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 0x285443454A425553;
      goto LABEL_43;
    case 0xBuLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = 2641748;
LABEL_43:
      v42 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v7, v8);
LABEL_44:

LABEL_45:
      MEMORY[0x1B2726E80](41, 0xE100000000000000);
      return v42;
    case 0xCuLL:
      v20 = __ROR8__(a1 + 0x4000000000000000, 3);
      v21 = 0x4445524557534E41;
      v22 = 0x44454747414C46;
      if (v20 != 2)
      {
        v22 = 1145128274;
      }

      if (v20)
      {
        v21 = 0x444554454C4544;
      }

      if (v20 <= 1)
      {
        return v21;
      }

      else
      {
        return v22;
      }

    default:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3 = SearchRequest.Predicate.description.getter(v2);
      if (v2 >> 60 == 8)
      {
        MEMORY[0x1B2726E80](v3);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v3 = 40;
      }

      v42 = v3;
      MEMORY[0x1B2726E80](0x20444E4120, 0xE500000000000000);
      v4 = SearchRequest.Predicate.description.getter(v1);
      v6 = v5;
      if (v1 >> 60 == 8)
      {
LABEL_5:
        MEMORY[0x1B2726E80]();

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v4 = 40;
        v6 = 0xE100000000000000;
      }

LABEL_6:
      MEMORY[0x1B2726E80](v4, v6);

      return v42;
  }
}

BOOL SearchRequest.Predicate.requiresBody.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 2)
  {
    if (((1 << v1) & 0x1E78) != 0)
    {
      return 0;
    }

    if (v1 == 7)
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B09AE83C(v3);
LABEL_12:
      v6 = SearchRequest.Predicate.requiresBody.getter(v3);
      sub_1B09AEA14(v3);
      return v6 & 1;
    }

    a1 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_10:
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1B09AE83C(v4);
    sub_1B09AE83C(v3);
    v5 = SearchRequest.Predicate.requiresBody.getter(v4);
    sub_1B09AEA14(v4);
    if (v5)
    {
      sub_1B09AEA14(v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  return v1 != 1;
}

uint64_t SearchRequest.RangesToExclude.ranges.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SearchRequest.RangesToExclude.skipForMessageCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

IMAP2Persistence::SearchRequest::RangesToExclude __swiftcall SearchRequest.RangesToExclude.init(ranges:skipForMessageCount:)(Swift::OpaquePointer ranges, Swift::Int_optional skipForMessageCount)
{
  skipForMessageCount.is_nil &= 1u;
  result.skipForMessageCount = skipForMessageCount;
  result.ranges = ranges;
  return result;
}

BOOL static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(int32x2_t *a1, uint64_t a2, char a3, int32x2_t *a4, uint64_t a5, char a6)
{
  if ((sub_1B03D37DC(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

unint64_t sub_1B0CE76F8()
{
  result = qword_1EB6DCC58;
  if (!qword_1EB6DCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCC58);
  }

  return result;
}

unint64_t sub_1B0CE7750()
{
  result = qword_1EB6E62E0;
  if (!qword_1EB6E62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62E0);
  }

  return result;
}

unint64_t sub_1B0CE77A8()
{
  result = qword_1EB6E62E8;
  if (!qword_1EB6E62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62E8);
  }

  return result;
}

unint64_t sub_1B0CE7800()
{
  result = qword_1EB6E62F0;
  if (!qword_1EB6E62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E62F0);
  }

  return result;
}

uint64_t sub_1B0CE7854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1B03D37DC(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence13SearchRequestV9PredicateO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1B0CE78E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 24))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 16) >> 2) & 1 | (2 * (*(a1 + 16) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE7934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for SearchRequest()
{
  return &type metadata for SearchRequest;
}

{
  return &type metadata for SearchRequest;
}

uint64_t sub_1B0CE79A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 16))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE79F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

uint64_t sub_1B0CE7A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CE7AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0CE7B20(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1B0CE7B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CE7BF8()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t RemoteMailbox.SpecialUse.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 1953391987;
  if (a1 != 5)
  {
    v2 = 0x6873617274;
  }

  v3 = 0x64656767616C66;
  if (a1 != 3)
  {
    v3 = 1802401130;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65766968637261;
  if (a1 != 1)
  {
    v4 = 0x737466617264;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0CE7DD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1B0CE7E08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE400000000000000;
  v6 = 1953391987;
  if (v2 != 5)
  {
    v6 = 0x6873617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (v2 != 3)
  {
    v8 = 1802401130;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65766968637261;
  if (v2 != 1)
  {
    v10 = 0x737466617264;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}