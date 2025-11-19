BOOL ConversationLink.hasSuggestions.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 16);
    }

    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v1 + 16);
  }

  return v3 > 0;
}

id ConversationLink.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = ConversationLink.prevailingSuggestion.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 documentTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D33DE7B4();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
    }
  }

  v13 = [v2 displayName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D33DE7B4();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      return v15;
    }
  }

  if (([v2 isLocallyCreated] & 1) == 0)
  {
    v19 = ConversationLink.prevailingSuggestion.getter();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D339C744();
      v23 = v22;

      if (v23)
      {
        return v21;
      }
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_1D33DEE14() >= 1)
    {
LABEL_21:
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_1D33DDB74();

      return v26;
    }
  }

  else if (*(v3 + 16) >= 1)
  {
    goto LABEL_21;
  }

  return 0;
}

id sub_1D339C744()
{
  result = [v0 receivedFromHandle];
  if (result)
  {
    v2 = result;
    v3 = sub_1D33DE7B4();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = [objc_opt_self() normalizedHandleWithDestinationID_];

      if (v7)
      {

        ParticipantContactDetails.init(handle:cache:)(v7, v10);
        v8 = v10[0];
        v9 = v10[1];

        return v9;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t ConversationLink.callHistoryTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = ConversationLink.displayName.getter();
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return result;
    }
  }

  result = ConversationLink.prevailingSuggestion.getter();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [result documentTitle];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D33DE7B4();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      return v10;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t ConversationLink.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v17 = *v1;
  v16 = *(v1 + 1);
  v18 = v16;
  v7 = ConversationLink.prevailingSuggestion.getter();
  if (v7)
  {
    v8 = v7;
    sub_1D339BEC0(a1);

    v9 = sub_1D33DDD34();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 0, 1, v9);
  }

  else
  {
    v12 = [v16 creationDate];
    if (v12)
    {
      v13 = v12;
      sub_1D33DDCF4();

      v14 = sub_1D33DDD34();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    }

    else
    {
      v15 = sub_1D33DDD34();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1D339E918(v6, a1);
  }
}

char *ConversationLink.linkSources.getter()
{
  v1 = *(v0 + 16);
  if (![*(v0 + 8) isLocallyCreated])
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (*(v1 + 16) >= 1)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v2 = sub_1D3359920(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D3359920((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 0;
  if ((v1 & 0xC000000000000001) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (sub_1D33DEE14() >= 1)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D3359920(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1D3359920((v5 > 1), v6 + 1, 1, v2);
    }

    v8 = 2;
    goto LABEL_11;
  }

LABEL_14:
  if (*(v2 + 2))
  {
    return v2;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D3359920(0, 1, 1, v2);
  }

  v6 = *(v2 + 2);
  v10 = *(v2 + 3);
  v7 = v6 + 1;
  if (v6 >= v10 >> 1)
  {
    v11 = sub_1D3359920((v10 > 1), v6 + 1, 1, v2);
    v8 = 1;
    v2 = v11;
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  *(v2 + 2) = v7;
  v2[v6 + 32] = v8;
  return v2;
}

id ConversationLink.uniqueId.getter()
{
  v1 = sub_1D33DDC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v49 = *v0;
  v50 = v6;
  v51 = v8;
  v9 = ConversationLink.linkSources.getter();
  v10 = *(v9 + 2);
  if (v10)
  {
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v43 = v5;
    v44 = v2;
    v45 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    v46 = v9;
    sub_1D334A9E0(0, v10, 0);
    v11 = v46;
    v12 = 32;
    v13 = 0xEE00646574616572;
    v14 = v52;
    do
    {
      v15 = v11[v12];
      if (v15 == 1)
      {
        v16 = 0x64657469766E69;
      }

      else
      {
        v16 = 0x6574736576726168;
      }

      if (v15 == 1)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xE900000000000064;
      }

      if (v11[v12])
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x43796C6C61636F6CLL;
      }

      if (v11[v12])
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      v52 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = v13;
        sub_1D334A9E0((v20 > 1), v21 + 1, 1);
        v13 = v23;
        v11 = v46;
        v14 = v52;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      ++v12;
      --v10;
    }

    while (v10);

    v2 = v44;
    v1 = v45;
    v6 = v42;
    v5 = v43;
    v8 = v40;
    v7 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  sub_1D339E988();
  v24 = sub_1D33DE764();
  v26 = v25;

  v52 = v24;
  v53 = v26;
  v49 = v7;
  v50 = v6;
  v51 = v8;
  v27 = ConversationLink.prevailingSuggestion.getter();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 documentIdentifier];

    v30 = sub_1D33DE7B4();
    v32 = v31;

    MEMORY[0x1D38B6ED0](v30, v32);
  }

  v49 = v7;
  v50 = v6;
  v51 = v8;
  v33 = ConversationLink.displayName.getter();
  if (v34)
  {
    MEMORY[0x1D38B6ED0](v33);
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  MEMORY[0x1D38B6ED0](v52, v53);
  MEMORY[0x1D38B6ED0](45, 0xE100000000000000);
  v49 = v7;
  v50 = v6;
  v51 = v8;
  sub_1D339D05C();
  sub_1D33DEA34();
  MEMORY[0x1D38B6ED0](0x2D6B6E696C2DLL, 0xE600000000000000);
  result = [v6 URL];
  if (result)
  {
    v36 = result;

    sub_1D33DDC24();

    v37 = sub_1D33DDBF4();
    v39 = v38;
    (*(v2 + 8))(v5, v1);
    MEMORY[0x1D38B6ED0](v37, v39);

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D339D05C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D33DDD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v17 = *v0;
  v18 = v11;
  v19 = v12;
  v13 = ConversationLink.prevailingSuggestion.getter();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D339D348();

    if (v15)
    {
      v17 = v10;
      v18 = v11;
      v19 = v12;
      ConversationLink.date.getter(v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1D33A1104(v4);
      }

      else
      {
        (*(v6 + 32))(v9, v4, v5);
        sub_1D33DDC74();
        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

void ConversationLink.endDate.getter(char *a1@<X8>)
{
  v7 = *v1;
  v8 = *(v1 + 2);
  v3 = ConversationLink.prevailingSuggestion.getter();
  if (v3)
  {
    v6 = v3;
    sub_1D339C28C(a1);
  }

  else
  {
    v4 = sub_1D33DDD34();
    v5 = *(*(v4 - 8) + 56);

    v5(a1, 1, 1, v4);
  }
}

uint64_t ConversationLink.hasEventDate.getter()
{
  v4 = *v0;
  v5 = *(v0 + 2);
  result = ConversationLink.prevailingSuggestion.getter();
  if (result)
  {
    v2 = result;
    v3 = sub_1D339D348();

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1D339D348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = [v0 documentDate];
  if (v5)
  {
    v6 = v5;
    sub_1D33DDCF4();

    v7 = sub_1D33DDD34();
    v8 = 1;
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_1D33A1104(v4);
    if (([v0 flags] & 0x20) == 0 && (objc_msgSend(v0, sel_flags) & 0x80) == 0)
    {
      return ([v0 flags] >> 6) & 1;
    }
  }

  else
  {
    v9 = sub_1D33DDD34();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1D33A1104(v4);
    return 0;
  }

  return v8;
}

uint64_t ConversationLink.invitedMemberHandles.getter()
{
  v1 = [*(v0 + 8) invitedMemberHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v3 = sub_1D33DEA54();

  return v3;
}

uint64_t sub_1D339D5C0@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*(v4 + 8) *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t static ConversationLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  return sub_1D33DEC74() & 1;
}

uint64_t ConversationLink.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t sub_1D339D738()
{
  v1 = *(v0 + 8);
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t sub_1D339D7A0()
{
  v1 = *(v0 + 8);
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t sub_1D339D7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  return sub_1D33DEC74() & 1;
}

uint64_t static ConversationLink.titleUsingLink(_:in:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v12[3] = *a1;
  v12[4] = v4;
  v12[5] = v5;
  result = ConversationLink.displayName.getter();
  if (!v7)
  {
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = v5;
    result = sub_1D33A09DC(v12, a2);
    if (!v8)
    {
      if (a2)
      {
        v9 = [a2 remoteMembers];
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
        v10 = sub_1D33DEA54();

        a2 = sub_1D339AAE8(v10);
      }

      v11 = sub_1D33A0780(a2);

      return v11;
    }
  }

  return result;
}

unint64_t sub_1D339D948(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D33DEC64();
  v5 = -1 << *(a2 + 32);
  result = sub_1D33DEDA4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D339D9CC(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D339DDC8(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v43 = MEMORY[0x1E69E7CD0];
  sub_1D33DEDC4();
  if (sub_1D33DEE54())
  {
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    do
    {
      swift_dynamicCast();
      v11 = v2;
      v12 = *v2;

      v13 = [v42 value];
      v14 = sub_1D33DE7B4();
      v16 = v15;

      if (*(v12 + 16) && (v17 = *(v12 + 40), sub_1D33DF284(), sub_1D33DE824(), v18 = sub_1D33DF2C4(), v19 = -1 << *(v12 + 32), v20 = v18 & ~v19, ((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(v12 + 48) + 16 * v20);
          v23 = *v22 == v14 && v22[1] == v16;
          if (v23 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v2 = v11;
      }

      else
      {
LABEL_17:

        v2 = v11;
        v24 = *v11;

        v25 = [v42 normalizedValue];
        if (v25)
        {
          v26 = v25;
          v27 = sub_1D33DE7B4();
          v29 = v28;

          if (!*(v24 + 16))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v27 = 0;
          v29 = 0xE000000000000000;
          if (!*(v24 + 16))
          {
            goto LABEL_29;
          }
        }

        v30 = *(v24 + 40);
        sub_1D33DF284();
        sub_1D33DE824();
        v31 = sub_1D33DF2C4();
        v32 = -1 << *(v24 + 32);
        v33 = v31 & ~v32;
        if (((*(v24 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
LABEL_29:

          v37 = *(v3 + 16);
          if (*(v3 + 24) <= v37)
          {
            sub_1D3364D30(v37 + 1);
          }

          v3 = v43;
          v4 = *(v43 + 40);
          result = sub_1D33DEC64();
          v6 = v43 + 56;
          v7 = -1 << *(v43 + 32);
          v8 = result & ~v7;
          v9 = v8 >> 6;
          if (((-1 << v8) & ~*(v43 + 56 + 8 * (v8 >> 6))) != 0)
          {
            v10 = __clz(__rbit64((-1 << v8) & ~*(v43 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v38 = 0;
            v39 = (63 - v7) >> 6;
            do
            {
              if (++v9 == v39 && (v38 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v40 = v9 == v39;
              if (v9 == v39)
              {
                v9 = 0;
              }

              v38 |= v40;
              v41 = *(v6 + 8 * v9);
            }

            while (v41 == -1);
            v10 = __clz(__rbit64(~v41)) + (v9 << 6);
          }

          *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
          *(*(v43 + 48) + 8 * v10) = v42;
          ++*(v43 + 16);
          continue;
        }

        v34 = ~v32;
        while (1)
        {
          v35 = (*(v24 + 48) + 16 * v33);
          v36 = *v35 == v27 && v35[1] == v29;
          if (v36 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }
    }

    while (sub_1D33DEE54());
  }

  return v3;
}

uint64_t sub_1D339DDC8(uint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v3 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_41;
  }

  while (2)
  {
    v48 = v5;
    v49 = v2;
    v47 = &v47;
    MEMORY[0x1EEE9AC00](a1);
    v50 = &v47 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v6);
    v51 = 0;
    v52 = v3;
    v7 = 0;
    v5 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v55 = (v10 - 1) & v10;
LABEL_14:
      v15 = v12 | (v7 << 6);
      v16 = *(v3 + 48);
      v53 = v15;
      v17 = *v54;
      v2 = *(v16 + 8 * v15);

      v56 = v2;
      v18 = [v2 value];
      v19 = sub_1D33DE7B4();
      v21 = v20;

      if (*(v17 + 16) && (v22 = *(v17 + 40), sub_1D33DF284(), sub_1D33DE824(), v23 = sub_1D33DF2C4(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v17 + 48) + 16 * v25);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_6:
        v10 = v55;

        v3 = v52;
      }

      else
      {
LABEL_23:

        v29 = *v54;

        v30 = [v56 normalizedValue];
        if (v30)
        {
          v31 = v30;
          v32 = sub_1D33DE7B4();
          v34 = v33;

          if (!*(v29 + 16))
          {
            goto LABEL_35;
          }
        }

        else
        {
          v32 = 0;
          v34 = 0xE000000000000000;
          if (!*(v29 + 16))
          {
            goto LABEL_35;
          }
        }

        v35 = *(v29 + 40);
        sub_1D33DF284();
        sub_1D33DE824();
        v36 = sub_1D33DF2C4();
        v37 = -1 << *(v29 + 32);
        v38 = v36 & ~v37;
        if ((*(v29 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          do
          {
            v40 = (*(v29 + 48) + 16 * v38);
            v41 = *v40 == v32 && v40[1] == v34;
            if (v41 || (sub_1D33DF1B4() & 1) != 0)
            {
              goto LABEL_6;
            }

            v38 = (v38 + 1) & v39;
          }

          while (((*(v29 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
        }

LABEL_35:

        v3 = v52;
        *&v50[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v42 = __OFADD__(v51++, 1);
        v10 = v55;
        if (v42)
        {
          __break(1u);
LABEL_38:
          result = sub_1D3366F28(v50, v48, v51, v3);
          goto LABEL_39;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_38;
      }

      v14 = *(v5 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v55 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = swift_slowAlloc();
  v46 = sub_1D339E7F4(v45, v5, v3, v54);

  MEMORY[0x1D38B81C0](v45, -1, -1);
  result = v46;
LABEL_39:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D339E244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v46 = (v8 - 1) & v8;
LABEL_13:
    v43 = v10 | (v4 << 6);
    v13 = *a4;
    v14 = *(*(a3 + 48) + 8 * v43);

    v15 = [v14 value];
    v16 = sub_1D33DE7B4();
    v18 = v17;

    if (*(v13 + 16) && (v19 = *(v13 + 40), sub_1D33DF284(), sub_1D33DE824(), v20 = sub_1D33DF2C4(), v21 = -1 << *(v13 + 32), v22 = v20 & ~v21, ((*(v13 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(v13 + 48) + 16 * v22);
        v25 = *v24 == v16 && v24[1] == v18;
        if (v25 || (sub_1D33DF1B4() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v13 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      v8 = v46;
    }

    else
    {
LABEL_22:

      v26 = *a4;

      v27 = [v14 normalizedValue];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D33DE7B4();
        v31 = v30;

        if (!*(v26 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v29 = 0;
        v31 = 0xE000000000000000;
        if (!*(v26 + 16))
        {
          goto LABEL_34;
        }
      }

      v32 = *(v26 + 40);
      sub_1D33DF284();
      sub_1D33DE824();
      v33 = sub_1D33DF2C4();
      v34 = -1 << *(v26 + 32);
      v35 = v33 & ~v34;
      if ((*(v26 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        do
        {
          v37 = (*(v26 + 48) + 16 * v35);
          v38 = *v37 == v29 && v37[1] == v31;
          if (v38 || (sub_1D33DF1B4() & 1) != 0)
          {
            goto LABEL_5;
          }

          v35 = (v35 + 1) & v36;
        }

        while (((*(v26 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
      }

LABEL_34:

      *(a1 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v39 = __OFADD__(v42++, 1);
      v8 = v46;
      if (v39)
      {
        __break(1u);
LABEL_37:

        sub_1D3366F28(a1, a2, v42, a3);
        return;
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
      goto LABEL_37;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1D339E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1D339E750(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1D339E5DC(result, a2, a3, a4, a5, sub_1D3366F14);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1D339E7F4(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D339E244(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D339E87C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D33AB4EC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D339E9EC(v6);
  return sub_1D33DEF94();
}

uint64_t sub_1D339E918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D339E988()
{
  result = qword_1EDEBEF28;
  if (!qword_1EDEBEF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF28);
  }

  return result;
}

void sub_1D339E9EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D33DF164();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
        v6 = sub_1D33DE8E4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D339EFBC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D339EB00(0, v2, 1, a1);
  }
}

void sub_1D339EB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = sub_1D33DDD34();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v50 - v21;
  v51 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v62 = (v20 + 32);
    v65 = (v20 + 56);
    v56 = (v20 + 48);
    v57 = (v20 + 8);
    v60 = v22;
    v23 = v22 + 8 * a3 - 8;
    v24 = a1 - a3;
    v58 = v13;
LABEL_5:
    v53 = v23;
    v54 = a3;
    v25 = *(v60 + 8 * a3);
    v52 = v24;
    v26 = v55;
    while (1)
    {
      v27 = *v23;
      v28 = v25;
      v29 = v27;
      v30 = [v28 documentDate];
      v64 = v28;
      if (v30)
      {
        v31 = v30;
        v32 = v63;
        sub_1D33DDCF4();

        v33 = *v62;
        (*v62)(v13, v32, v14);
        v34 = *v65;
        (*v65)(v13, 0, 1, v14);
        v33(v26, v13, v14);
      }

      else
      {
        v34 = *v65;
        (*v65)(v13, 1, 1, v14);
        v35 = [v28 receivedAt];
        sub_1D33DDCF4();

        if ((*v56)(v13, 1, v14) != 1)
        {
          sub_1D33A1104(v13);
        }
      }

      v36 = [v29 documentDate];
      if (v36)
      {
        v37 = v63;
        v38 = v36;
        sub_1D33DDCF4();

        v39 = v61;
        v40 = *v62;
        v41 = v37;
        v26 = v55;
        (*v62)(v61, v41, v14);
        v34(v39, 0, 1, v14);
        v42 = v59;
        v40(v59, v39, v14);
      }

      else
      {
        v43 = v61;
        v34(v61, 1, 1, v14);
        v44 = [v29 receivedAt];
        v42 = v59;
        sub_1D33DDCF4();

        if ((*v56)(v43, 1, v14) != 1)
        {
          sub_1D33A1104(v61);
        }
      }

      v45 = v42;
      v46 = sub_1D33DDD14();
      v47 = *v57;
      (*v57)(v45, v14);
      v47(v26, v14);

      v13 = v58;
      if (v46 != -1)
      {
LABEL_4:
        a3 = v54 + 1;
        v23 = v53 + 8;
        v24 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v60)
      {
        break;
      }

      v48 = *v23;
      v25 = *(v23 + 8);
      *v23 = v25;
      *(v23 + 8) = v48;
      v23 -= 8;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D339EFBC(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v177 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v156 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v169 = &v156 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v156 - v17;
  v19 = sub_1D33DDD34();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v173 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v181 = &v156 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v171 = &v156 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v158 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v180 = &v156 - v32;
  v170 = a3;
  v33 = a3[1];
  if (v33 >= 1)
  {
    v164 = v31;
    v165 = v18;
    v157 = a4;
    v34 = 0;
    v175 = (v30 + 8);
    v179 = (v30 + 32);
    v182 = (v30 + 56);
    v172 = (v30 + 48);
    v35 = MEMORY[0x1E69E7CC0];
    v176 = v14;
    while (1)
    {
      v36 = v34 + 1;
      v168 = v35;
      v161 = v34;
      if (v34 + 1 < v33)
      {
        v167 = v33;
        v159 = v5;
        v37 = *v170;
        v38 = *(*v170 + 8 * v36);
        v163 = 8 * v34;
        v39 = (v37 + 8 * v34);
        v40 = *v39;
        a3 = (v39 + 2);
        v178 = v38;
        v41 = v40;
        v42 = v180;
        sub_1D339BEC0(v180);
        v43 = v158;
        sub_1D339BEC0(v158);
        v174 = sub_1D33DDD14();
        v44 = *v175;
        (*v175)(v43, v19);
        v166 = v44;
        v44(v42, v19);

        v45 = v34 + 2;
        while (1)
        {
          v56 = v167;
          if (v167 == v45)
          {
            break;
          }

          v57 = *(a3 - 1);
          v58 = *a3;
          v59 = v57;
          v60 = [v58 documentDate];
          v178 = v58;
          if (v60)
          {
            v61 = v180;
            v62 = v60;
            sub_1D33DDCF4();

            v63 = *v179;
            v64 = v165;
            (*v179)(v165, v61, v19);
            v65 = *v182;
            (*v182)(v64, 0, 1, v19);
            v63(v171, v64, v19);
          }

          else
          {
            v65 = *v182;
            v66 = v165;
            (*v182)(v165, 1, 1, v19);
            v67 = [v58 receivedAt];
            sub_1D33DDCF4();

            if ((*v172)(v66, 1, v19) != 1)
            {
              sub_1D33A1104(v66);
            }
          }

          v68 = [v59 documentDate];
          if (v68)
          {
            v46 = v180;
            v47 = v68;
            sub_1D33DDCF4();

            v48 = *v179;
            v49 = v169;
            (*v179)(v169, v46, v19);
            v65(v49, 0, 1, v19);
            v50 = v164;
            v48(v164, v49, v19);
          }

          else
          {
            v69 = v169;
            v65(v169, 1, 1, v19);
            v70 = [v59 receivedAt];
            v50 = v164;
            sub_1D33DDCF4();

            if ((*v172)(v69, 1, v19) != 1)
            {
              sub_1D33A1104(v169);
            }
          }

          v51 = v174 == -1;
          v52 = v171;
          v53 = sub_1D33DDD14();
          v54 = v50;
          v55 = v166;
          v166(v54, v19);
          v55(v52, v19);

          ++v45;
          ++a3;
          v35 = v168;
          if (((v51 ^ (v53 != -1)) & 1) == 0)
          {
            v56 = v45 - 1;
            break;
          }
        }

        v71 = v163;
        v5 = v159;
        v14 = v176;
        if (v174 == -1)
        {
          v72 = v161;
          if (v56 < v161)
          {
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            return;
          }

          if (v161 < v56)
          {
            v73 = 8 * v56 - 8;
            v74 = v56;
            do
            {
              if (v72 != --v74)
              {
                v76 = *v170;
                if (!*v170)
                {
                  goto LABEL_144;
                }

                v75 = *(v76 + v71);
                *(v76 + v71) = *(v76 + v73);
                *(v76 + v73) = v75;
              }

              ++v72;
              v73 -= 8;
              v71 += 8;
            }

            while (v72 < v74);
          }
        }

        v36 = v56;
      }

      v77 = v170[1];
      if (v36 >= v77)
      {
        break;
      }

      if (__OFSUB__(v36, v161))
      {
        goto LABEL_136;
      }

      v34 = v36;
      if (v36 - v161 >= v157)
      {
        goto LABEL_54;
      }

      v78 = v161 + v157;
      if (__OFADD__(v161, v157))
      {
        goto LABEL_137;
      }

      if (v78 >= v77)
      {
        v78 = v170[1];
      }

      if (v78 < v161)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v79 = v161;
      if (v36 != v78)
      {
        v162 = v78;
        v159 = v5;
        v174 = *v170;
        v80 = v174 + 8 * v36 - 8;
        v81 = (v161 - v36);
        v82 = v36;
        do
        {
          v166 = v80;
          v167 = v82;
          v83 = *(v174 + 8 * v82);
          v163 = v81;
          while (1)
          {
            v84 = *v80;
            a3 = v83;
            v85 = v84;
            v86 = [a3 documentDate];
            if (v86)
            {
              v87 = v180;
              v88 = v86;
              sub_1D33DDCF4();

              v89 = *v179;
              (*v179)(v14, v87, v19);
              v90 = *v182;
              (*v182)(v14, 0, 1, v19);
              v89(v181, v14, v19);
            }

            else
            {
              v90 = *v182;
              (*v182)(v14, 1, 1, v19);
              v91 = [a3 receivedAt];
              sub_1D33DDCF4();

              if ((*v172)(v14, 1, v19) != 1)
              {
                sub_1D33A1104(v14);
              }
            }

            v92 = [v85 documentDate];
            if (v92)
            {
              v93 = v180;
              v94 = v92;
              sub_1D33DDCF4();

              v178 = v81;
              v95 = *v179;
              v96 = v177;
              (*v179)(v177, v93, v19);
              v90(v96, 0, 1, v19);
              v97 = v173;
              v95(v173, v96, v19);
              v81 = v178;
            }

            else
            {
              v98 = v177;
              v90(v177, 1, 1, v19);
              v99 = [v85 receivedAt];
              v97 = v173;
              sub_1D33DDCF4();

              if ((*v172)(v98, 1, v19) != 1)
              {
                sub_1D33A1104(v177);
              }
            }

            v100 = v181;
            v101 = sub_1D33DDD14();
            v102 = v97;
            v103 = *v175;
            (*v175)(v102, v19);
            v103(v100, v19);

            if (v101 != -1)
            {
              break;
            }

            v14 = v176;
            if (!v174)
            {
              goto LABEL_141;
            }

            v104 = *v80;
            v83 = *(v80 + 8);
            *v80 = v83;
            *(v80 + 8) = v104;
            v80 -= 8;
            if (__CFADD__(v81++, 1))
            {
              goto LABEL_38;
            }
          }

          v14 = v176;
LABEL_38:
          v82 = v167 + 1;
          v80 = v166 + 8;
          v81 = (v163 - 1);
        }

        while (v167 + 1 != v162);
        v34 = v162;
        v5 = v159;
        v35 = v168;
        goto LABEL_54;
      }

LABEL_55:
      if (v34 < v79)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D3359A14(0, *(v35 + 2) + 1, 1, v35);
      }

      v107 = *(v35 + 2);
      v106 = *(v35 + 3);
      v108 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        v35 = sub_1D3359A14((v106 > 1), v107 + 1, 1, v35);
      }

      *(v35 + 2) = v108;
      v109 = &v35[16 * v107];
      *(v109 + 4) = v161;
      *(v109 + 5) = v34;
      a3 = *v160;
      if (!*v160)
      {
        goto LABEL_145;
      }

      if (v107)
      {
        v14 = v176;
        while (1)
        {
          v110 = v108 - 1;
          if (v108 >= 4)
          {
            break;
          }

          if (v108 == 3)
          {
            v111 = *(v35 + 4);
            v112 = *(v35 + 5);
            v121 = __OFSUB__(v112, v111);
            v113 = v112 - v111;
            v114 = v121;
LABEL_76:
            if (v114)
            {
              goto LABEL_124;
            }

            v127 = &v35[16 * v108];
            v129 = *v127;
            v128 = *(v127 + 1);
            v130 = __OFSUB__(v128, v129);
            v131 = v128 - v129;
            v132 = v130;
            if (v130)
            {
              goto LABEL_127;
            }

            v133 = &v35[16 * v110 + 32];
            v135 = *v133;
            v134 = *(v133 + 1);
            v121 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v121)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v131, v136))
            {
              goto LABEL_131;
            }

            if (v131 + v136 >= v113)
            {
              if (v113 < v136)
              {
                v110 = v108 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          v137 = &v35[16 * v108];
          v139 = *v137;
          v138 = *(v137 + 1);
          v121 = __OFSUB__(v138, v139);
          v131 = v138 - v139;
          v132 = v121;
LABEL_90:
          if (v132)
          {
            goto LABEL_126;
          }

          v140 = &v35[16 * v110];
          v142 = *(v140 + 4);
          v141 = *(v140 + 5);
          v121 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v121)
          {
            goto LABEL_129;
          }

          if (v143 < v131)
          {
            goto LABEL_4;
          }

LABEL_97:
          v148 = v110 - 1;
          if (v110 - 1 >= v108)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
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
            goto LABEL_138;
          }

          if (!*v170)
          {
            goto LABEL_142;
          }

          v149 = *&v35[16 * v148 + 32];
          v150 = *&v35[16 * v110 + 40];
          sub_1D339FDB4((*v170 + 8 * v149), (*v170 + 8 * *&v35[16 * v110 + 32]), (*v170 + 8 * v150), a3);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v150 < v149)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1D33A9330(v35);
          }

          if (v148 >= *(v35 + 2))
          {
            goto LABEL_121;
          }

          v151 = &v35[16 * v148];
          *(v151 + 4) = v149;
          *(v151 + 5) = v150;
          v183 = v35;
          sub_1D33A92A4(v110);
          v35 = v183;
          v108 = *(v183 + 2);
          v14 = v176;
          if (v108 <= 1)
          {
            goto LABEL_4;
          }
        }

        v115 = &v35[16 * v108 + 32];
        v116 = *(v115 - 64);
        v117 = *(v115 - 56);
        v121 = __OFSUB__(v117, v116);
        v118 = v117 - v116;
        if (v121)
        {
          goto LABEL_122;
        }

        v120 = *(v115 - 48);
        v119 = *(v115 - 40);
        v121 = __OFSUB__(v119, v120);
        v113 = v119 - v120;
        v114 = v121;
        if (v121)
        {
          goto LABEL_123;
        }

        v122 = &v35[16 * v108];
        v124 = *v122;
        v123 = *(v122 + 1);
        v121 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v121)
        {
          goto LABEL_125;
        }

        v121 = __OFADD__(v113, v125);
        v126 = v113 + v125;
        if (v121)
        {
          goto LABEL_128;
        }

        if (v126 >= v118)
        {
          v144 = &v35[16 * v110 + 32];
          v146 = *v144;
          v145 = *(v144 + 1);
          v121 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v121)
          {
            goto LABEL_132;
          }

          if (v113 < v147)
          {
            v110 = v108 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_76;
      }

      v14 = v176;
LABEL_4:
      v33 = v170[1];
      if (v34 >= v33)
      {
        goto LABEL_108;
      }
    }

    v34 = v36;
LABEL_54:
    v79 = v161;
    goto LABEL_55;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_108:
  a3 = *v160;
  if (!*v160)
  {
    goto LABEL_146;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_139:
    v35 = sub_1D33A9330(v35);
  }

  v183 = v35;
  v152 = *(v35 + 2);
  if (v152 >= 2)
  {
    while (*v170)
    {
      v153 = *&v35[16 * v152];
      v154 = *&v35[16 * v152 + 24];
      sub_1D339FDB4((*v170 + 8 * v153), (*v170 + 8 * *&v35[16 * v152 + 16]), (*v170 + 8 * v154), a3);
      if (v5)
      {
        goto LABEL_118;
      }

      if (v154 < v153)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D33A9330(v35);
      }

      if (v152 - 2 >= *(v35 + 2))
      {
        goto LABEL_134;
      }

      v155 = &v35[16 * v152];
      *v155 = v153;
      *(v155 + 1) = v154;
      v183 = v35;
      sub_1D33A92A4(v152 - 1);
      v35 = v183;
      v152 = *(v183 + 2);
      if (v152 <= 1)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_143;
  }

LABEL_118:
}

uint64_t sub_1D339FDB4(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v106 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = (&v100 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v108 = (&v100 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v104 = (&v100 - v16);
  v17 = sub_1D33DDD34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v111 = &v100 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v102 = &v100 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v113 = &v100 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v100 - v28;
  v29 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v29 = a2 - a1;
  }

  v30 = v29 >> 3;
  v115 = a3;
  v31 = a3 - a2;
  v32 = v31 / 8;
  if (v29 >> 3 >= v31 / 8)
  {
    v112 = a1;
    if (a4 != a2 || &a2[v32] <= a4)
    {
      memmove(a4, a2, 8 * v32);
    }

    v33 = &a4[v32];
    v64 = v105;
    if (v31 >= 8 && a2 > v112)
    {
      v65 = v18;
      v66 = (v18 + 32);
      v110 = (v65 + 56);
      v101 = (v65 + 48);
      v102 = (v65 + 8);
      v67 = &off_1E843B000;
      v114 = a4;
LABEL_32:
      v109 = a2;
      v68 = a2 - 1;
      --v115;
      v69 = v33;
      v104 = a2 - 1;
      do
      {
        v70 = *(v69 - 1);
        v107 = v69 - 1;
        v108 = v33;
        v71 = *v68;
        v72 = v70;
        v73 = v71;
        v74 = [v72 v67[423]];
        if (v74)
        {
          v75 = v113;
          v76 = v74;
          sub_1D33DDCF4();

          v77 = *v66;
          (*v66)(v64, v75, v17);
          v78 = *v110;
          (*v110)(v64, 0, 1, v17);
          v77(v111, v64, v17);
        }

        else
        {
          v78 = *v110;
          (*v110)(v64, 1, 1, v17);
          v79 = [v72 receivedAt];
          sub_1D33DDCF4();

          if ((*v101)(v64, 1, v17) != 1)
          {
            sub_1D33A1104(v64);
          }
        }

        v80 = [v73 v67[423]];
        v81 = v73;
        if (v80)
        {
          v82 = v73;
          v83 = v72;
          v84 = v113;
          v85 = v80;
          sub_1D33DDCF4();

          v86 = *v66;
          v87 = v66;
          v88 = v106;
          v86(v106, v84, v17);
          v78(v88, 0, 1, v17);
          v89 = v103;
          v90 = v88;
          v66 = v87;
          v86(v103, v90, v17);
        }

        else
        {
          v83 = v72;
          v91 = v106;
          v78(v106, 1, 1, v17);
          v82 = v81;
          v92 = [v81 receivedAt];
          v93 = v103;
          sub_1D33DDCF4();

          v94 = v91;
          v89 = v93;
          if ((*v101)(v94, 1, v17) != 1)
          {
            sub_1D33A1104(v106);
          }
        }

        v95 = v111;
        v96 = sub_1D33DDD14();
        v97 = *v102;
        (*v102)(v89, v17);
        v97(v95, v17);

        if (v96 == -1)
        {
          v33 = v108;
          a4 = v114;
          v67 = &off_1E843B000;
          v98 = v104;
          if (v115 + 1 != v109)
          {
            *v115 = *v104;
          }

          v64 = v105;
          if (v33 <= a4 || (a2 = v98, v98 <= v112))
          {
            a2 = v98;
            goto LABEL_51;
          }

          goto LABEL_32;
        }

        v69 = v107;
        a4 = v114;
        v67 = &off_1E843B000;
        v68 = v104;
        if (v115 + 1 != v108)
        {
          *v115 = *v107;
        }

        --v115;
        v33 = v69;
        v64 = v105;
      }

      while (v69 > a4);
      v33 = v69;
      a2 = v109;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v30] <= a4)
    {
      memmove(a4, a1, 8 * v30);
    }

    v33 = &a4[v30];
    if (a2 - a1 >= 8 && a2 < v115)
    {
      v34 = a2;
      v111 = (v18 + 56);
      v105 = (v18 + 48);
      v106 = (v18 + 8);
      v107 = (v18 + 32);
      v35 = &off_1E843B000;
      v36 = v104;
      do
      {
        v112 = a1;
        v109 = v34;
        v37 = *v34;
        v114 = a4;
        v38 = *a4;
        v39 = v37;
        v40 = v38;
        v41 = [v39 v35[423]];
        if (v41)
        {
          v42 = v113;
          v43 = v41;
          sub_1D33DDCF4();

          v44 = *v107;
          (*v107)(v36, v42, v17);
          v45 = *v111;
          (*v111)(v36, 0, 1, v17);
          v44(v110, v36, v17);
        }

        else
        {
          v45 = *v111;
          (*v111)(v36, 1, 1, v17);
          v46 = [v39 receivedAt];
          sub_1D33DDCF4();

          if ((*v105)(v36, 1, v17) != 1)
          {
            sub_1D33A1104(v36);
          }
        }

        v47 = [v40 v35[423]];
        if (v47)
        {
          v48 = v33;
          v49 = v113;
          v50 = v47;
          sub_1D33DDCF4();

          v51 = v108;
          v52 = *v107;
          v53 = v49;
          v33 = v48;
          v54 = v102;
          (*v107)(v108, v53, v17);
          v45(v51, 0, 1, v17);
          v52(v54, v51, v17);
          v55 = v54;
        }

        else
        {
          v56 = v108;
          v45(v108, 1, 1, v17);
          v57 = [v40 receivedAt];
          v55 = v102;
          sub_1D33DDCF4();

          if ((*v105)(v56, 1, v17) != 1)
          {
            sub_1D33A1104(v108);
          }
        }

        v58 = v110;
        v59 = sub_1D33DDD14();
        v60 = *v106;
        (*v106)(v55, v17);
        v60(v58, v17);

        if (v59 == -1)
        {
          v61 = v109;
          v34 = v109 + 1;
          v62 = v112;
          v63 = v112 == v109;
          a4 = v114;
        }

        else
        {
          v61 = v114;
          a4 = v114 + 1;
          v62 = v112;
          v63 = v112 == v114;
          v34 = v109;
        }

        v36 = v104;
        v35 = &off_1E843B000;
        if (!v63)
        {
          *v62 = *v61;
        }

        a1 = v62 + 1;
      }

      while (a4 < v33 && v34 < v115);
    }

    a2 = a1;
  }

LABEL_51:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + ((v33 - a4) < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * ((v33 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1D33A0780(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_17:
      v3 = sub_1D33DEE14();
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    while (v3 != v4)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D38B75D0](v4, a1);
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = [v6 value];
      if (!v8)
      {
        sub_1D33DE7B4();
        v8 = sub_1D33DE784();
      }

      v5 = [v8 destinationIdIsTemporary];

      ++v4;
      if (v5)
      {
        break;
      }
    }
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D33DDB74();

  return v11;
}

uint64_t sub_1D33A096C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1D3363B24(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1D33A09DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = [v3 invitedMemberHandles];
  if (v4)
  {
    v5 = v4;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v6 = sub_1D33DEA54();
  }

  else
  {
    v6 = 0;
  }

  v45 = v6;
  if (([v3 isLocallyCreated] & 1) == 0)
  {
    v7 = [v3 originatorHandle];
    if (v7)
    {
      if (!v6)
      {

        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      sub_1D3363C74(&v44, v7);
    }
  }

  if (!a2)
  {
LABEL_12:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_9:
  v8 = [a2 localMember];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 handles];

  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v11 = sub_1D33DEA54();

  sub_1D339A780(v11);
  v13 = v12;

LABEL_13:
  v14 = sub_1D3367844(v13);

  v44 = v14;
  v15 = [objc_opt_self() sharedController];
  [v15 blockUntilConnected];

  v16 = [objc_opt_self() sharedInstance];
  if (!v16)
  {
    goto LABEL_17;
  }

  sub_1D331DA18(0, &qword_1EC761A78, 0x1E69A5CA0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v16;
  v19 = [ObjCClassFromMetadata facetimeService];
  v20 = [v18 bestAccountForService_];

  if (!v20 || (v21 = [v20 aliases], v20, !v21) || (v22 = sub_1D33DE8B4(), v21, v23 = sub_1D337BCA4(v22), , !v23))
  {
LABEL_17:

    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1D33A096C(v23);

  if (v45)
  {

    v25 = sub_1D339D9CC(v24, &v44);

    sub_1D33A6A18(v25);
    v27 = v26;

    v28 = *(v27 + 16);
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_24:

    v29 = 0;
    goto LABEL_28;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v28 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v28)
  {
    goto LABEL_24;
  }

LABEL_20:
  v29 = *(v27 + 40);
  v30 = *(v27 + 48);
  v31 = *(v27 + 64);
  v32 = *(v27 + 80);
  v33 = *(v27 + 32);

  if (v28 == 2)
  {
    type metadata accessor for BundleClass();
    v34 = swift_getObjCClassFromMetadata();
    v43 = v33;
    v35 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D33E2410;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1D3387AE4();
    *(v36 + 32) = v29;
    *(v36 + 40) = v30;
LABEL_27:

    v29 = sub_1D33DE7D4();

    goto LABEL_28;
  }

  if (v28 != 1)
  {
    type metadata accessor for BundleClass();
    v37 = swift_getObjCClassFromMetadata();
    v43 = v33;
    v38 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D33E3DA0;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1D3387AE4();
    *(v39 + 32) = v29;
    *(v39 + 40) = v30;
    v41 = MEMORY[0x1E69E65A8];
    *(v39 + 96) = MEMORY[0x1E69E6530];
    *(v39 + 104) = v41;
    *(v39 + 64) = v40;
    *(v39 + 72) = v28 - 1;
    goto LABEL_27;
  }

LABEL_28:

  return v29;
}

unint64_t sub_1D33A1038()
{
  result = qword_1EC761A68;
  if (!qword_1EC761A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A68);
  }

  return result;
}

unint64_t sub_1D33A1090()
{
  result = qword_1EC761A70;
  if (!qword_1EC761A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A70);
  }

  return result;
}

uint64_t sub_1D33A1104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D33A116C(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D38B75D0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1D336389C(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_1D33DEE14();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t RecentsItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v5 = 1;
  if (((1 << v4) & 0x1BB) == 0)
  {
    if (v4 == 2)
    {
      v6 = *v1;
      v8 = *(v1 + 16);
      v7 = *(v1 + 24);
      v9 = *v1;
      sub_1D33DE0B4();
      sub_1D332B1DC(v6, v3, v8, v7, 2u);
    }

    else
    {
      v10 = v3;
      sub_1D33DE0B4();
    }

    v5 = 0;
  }

  v11 = sub_1D33DDDB4();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v5, 1, v11);
}

uint64_t sub_1D33A1350(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    result = sub_1D33DEA94();
    v1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      sub_1D331FEEC();
      return v10;
    }

    while (1)
    {
      [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

      MEMORY[0x1D38B6F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v23;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *RecentsItem.message.getter()
{
  result = 0;
  v2 = *(v0 + 32);
  if (v2 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v2) & 0x1B0) != 0)
  {
    return result;
  }

  v3 = *(v0 + 8);
  if (v2 != 3 && v2 != 6)
  {
LABEL_5:
    if (v2 < 2)
    {
      return result;
    }

    v3 = *v0;
  }

  v4 = v3;
  return v3;
}

uint64_t RecentsItem.messageUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 32);
  v5 = 1;
  if (v4 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v4) & 0x1B0) != 0)
  {
    goto LABEL_8;
  }

  v6 = *(v1 + 8);
  if (v4 != 3 && v4 != 6)
  {
LABEL_5:
    if (v4 < 2)
    {
      goto LABEL_8;
    }

    v6 = *v1;
  }

  v7 = v6;
  sub_1D33DE0B4();

  v5 = 0;
LABEL_8:
  v8 = sub_1D33DDDB4();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v5, 1, v8);
}

uint64_t RecentsItem.init(link:)@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = &v90 - v6;
  v92 = sub_1D33DDD34();
  v7 = *(v92 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v90 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v90 - v19;
  v21 = type metadata accessor for RecentsItem(0);
  v97 = *(v21 - 8);
  v22 = *(v97 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[1];
  v27 = a1[2];
  v100 = *a1;
  v101 = v27;
  v28 = &v25[v23[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[v23[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v98 = v23;
  v30 = v23[11];
  v31 = type metadata accessor for ReminderStatus();
  v32 = 1;
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  v33 = [v26 URL];
  v99 = a2;
  v96 = v7;
  if (v33)
  {
    v34 = v33;
    sub_1D33DDC24();

    v32 = 0;
  }

  v35 = sub_1D33DDC44();
  v36 = *(v35 - 1);
  (*(v36 + 56))(v18, v32, 1, v35);
  sub_1D333842C(v18, v20, &unk_1EC760EA0, &qword_1D33E2210);
  v37 = (*(v36 + 48))(v20, 1, v35);
  sub_1D331E880(v20, &unk_1EC760EA0, &qword_1D33E2210);
  if (v37 == 1)
  {

    sub_1D331E880(&v25[v30], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v97 + 56))(v99, 1, 1, v98);
  }

  v40 = v100;
  v39 = v101;
  *v25 = v100;
  *(v25 + 1) = v26;
  *(v25 + 2) = v39;
  *(v25 + 3) = 0;
  v25[32] = 7;

  v41 = v26;

  v95 = v41;
  v42 = [v41 invitedMemberHandles];
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v44 = v42;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v45 = sub_1D33DEA54();

    v20 = 0;
    sub_1D33A6A18(v45);
    v47 = v46;
    v90 = 0;
  }

  else
  {
    v90 = 0;
    v47 = MEMORY[0x1E69E7CC0];
  }

  v48 = 0;
  v105 = v43;
  v49 = *(v47 + 16);
  v50 = 32;
  v51 = v43;
LABEL_9:
  v52 = v50 + 56 * v48;
  while (v49 != v48)
  {
    if (v48 >= *(v47 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    ++v48;
    v53 = *(v47 + v52);
    v52 += 56;
    if (v53)
    {
      v91 = v50;
      v20 = v40;
      v35 = v53;
      MEMORY[0x1D38B6F20]();
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v51 = v105;
      v50 = v91;
      goto LABEL_9;
    }
  }

  *(v25 + 5) = v51;
  v54 = v95;
  v105 = v40;
  v106 = v95;
  v107 = v101;
  v35 = ConversationLink.displayName.getter();
  v20 = v55;
  v56 = [v54 invitedMemberHandles];
  if (v56)
  {
    v57 = v56;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v58 = sub_1D33DEA54();

    v49 = v93;
    v59 = v94;
    goto LABEL_21;
  }

  v49 = v93;
  if (!(v43 >> 62))
  {
LABEL_19:
    v58 = MEMORY[0x1E69E7CD0];
    goto LABEL_20;
  }

LABEL_34:
  if (!sub_1D33DEE14())
  {
    goto LABEL_19;
  }

  sub_1D33A6E14(MEMORY[0x1E69E7CC0], qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
  v58 = v89;
LABEL_20:
  v59 = v94;
LABEL_21:
  v60 = sub_1D3321CEC(v58, sub_1D33D6CA4, sub_1D33D3AC8);

  v61 = sub_1D33A0780(v60);
  v63 = v62;

  v105 = v40;
  v106 = v95;
  v107 = v101;
  v64 = sub_1D33A09DC(&v105, 0);
  if (!v65)
  {
    if (!v20)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = objc_opt_self();
      v68 = [v67 bundleForClass_];
      v69 = sub_1D33DDB74();
      v71 = v70;

      *(v25 + 6) = v69;
      *(v25 + 7) = v71;
      v59 = v94;
      v72 = [v67 bundleForClass_];
      v40 = v100;
      v49 = v93;
      v35 = sub_1D33DDB74();
      v63 = v73;

      goto LABEL_28;
    }

    *(v25 + 6) = v35;
    *(v25 + 7) = v20;
    goto LABEL_26;
  }

  *(v25 + 6) = v64;
  *(v25 + 7) = v65;
  if (!v20)
  {
LABEL_26:
    v35 = v61;
    goto LABEL_28;
  }

  v63 = v20;
LABEL_28:
  *(v25 + 8) = v35;
  *(v25 + 9) = v63;
  v74 = v95;
  v105 = v40;
  v106 = v95;
  v75 = v101;
  v107 = v101;
  v76 = ConversationLink.uniqueId.getter();
  v78 = v77;
  v102 = v40;
  v103 = v74;
  v104 = v75;
  ConversationLink.date.getter(v49);

  v79 = v96;
  v80 = *(v96 + 48);
  v81 = v92;
  if (v80(v49, 1, v92) == 1)
  {
    sub_1D33DDD24();
    v82 = v80(v49, 1, v81) == 1;
    v83 = v49;
    v85 = v98;
    v84 = v99;
    v86 = v97;
    if (!v82)
    {
      sub_1D331E880(v83, &qword_1EC760E10, &unk_1D33E1A90);
    }
  }

  else
  {
    (*(v79 + 32))(v59, v49, v81);
    v85 = v98;
    v84 = v99;
    v86 = v97;
  }

  *v13 = v76;
  *(v13 + 1) = v78;
  v13[16] = 0;
  v87 = type metadata accessor for CallInfo(0);
  (*(v96 + 32))(&v13[v87[6]], v59, v81);
  *&v13[v87[7]] = 0;
  v88 = &v13[v87[8]];
  *v88 = 0;
  *(v88 + 1) = 0;
  v13[v87[9]] = 0;
  *&v13[v87[10]] = 0;
  v13[v87[11]] = 0;
  v13[v87[12]] = 0;
  v13[v87[13]] = 0;
  (*(*(v87 - 1) + 56))(v13, 0, 1, v87);
  sub_1D333842C(v13, &v25[v85[8]], &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D332A828(v25, v84);
  (*(v86 + 56))(v84, 0, 1, v85);
  return sub_1D3337AB4(v25, type metadata accessor for RecentsItem);
}

id RecentsItem.recentCall.getter()
{
  if (*(v0 + 32) - 4 > 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CallInfo.init(uniqueId:missed:date:numberOfOccurrences:senderIdentity:isOutgoing:duration:isVerified:isJunk:isBlocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v19 = type metadata accessor for CallInfo(0);
  v20 = v19[6];
  v21 = sub_1D33DDD34();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a4, v21);
  *(a9 + v19[7]) = a5;
  v23 = (a9 + v19[8]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v19[9]) = a8;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  *(a9 + v19[12]) = a12;
  *(a9 + v19[13]) = a13;
  return result;
}

uint64_t RecentsItem.init(type:title:subtitle:callInfo:contacts:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a1 + 32);
  v16 = type metadata accessor for RecentsItem(0);
  v17 = (a8 + v16[9]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a8 + v16[10]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v16[11];
  v20 = type metadata accessor for ReminderStatus();
  v22 = a1[1];
  v23 = *a1;
  (*(*(v20 - 8) + 56))(a8 + v19, 1, 1, v20);
  *a8 = v23;
  *(a8 + 16) = v22;
  *(a8 + 32) = v15;
  *(a8 + 48) = a2;
  *(a8 + 56) = a3;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  result = sub_1D333842C(a6, a8 + v16[8], &unk_1EC761DE0, &unk_1D33E50F0);
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_1D33A23D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = (a2 + v4[9]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[10]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v4[11];
  v8 = type metadata accessor for ReminderStatus();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = [a1 remoteMembers];
  sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
  sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
  v10 = sub_1D33DEA54();

  v11 = sub_1D33A3924(v10);

  v12 = sub_1D33678DC(v11);

  v13 = [a1 link];
  if (v13)
  {
    v14 = v13;
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D33DEE14())
    {
      sub_1D33A6E14(MEMORY[0x1E69E7CC0], &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
      v15 = v39;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CD0];
    }

    v40 = v4;
    v41 = v12;
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDEC0110;
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v42[3] = v16;
    v42[4] = v14;
    v42[5] = v15;
    swift_retain_n();
    v17 = a1;
    v18 = v14;

    v19 = ConversationLink.displayName.getter();
    if (v20 || (v42[0] = v16, v42[1] = v18, v42[2] = v15, v19 = sub_1D33A09DC(v42, a1), v20))
    {
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v35 = [v17 remoteMembers];
      v36 = sub_1D33DEA54();

      v37 = sub_1D339AAE8(v36);

      v21 = sub_1D33A0780(v37);
      v22 = v38;
    }

    v4 = v40;
    v12 = v41;
  }

  else
  {
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v23 = [a1 displayName];
    v21 = sub_1D33DE7B4();
    v22 = v24;

    v16 = 0;
    v14 = 0;
  }

  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_1D33DDB74();
  v29 = v28;

  *(a2 + 64) = v27;
  *(a2 + 72) = v29;
  v30 = sub_1D33A1350(v12);
  sub_1D33A7638(v16, v14);

  *(a2 + 40) = v30;
  v31 = v4[8];
  v32 = type metadata accessor for CallInfo(0);
  v33 = *(*(v32 - 8) + 56);

  return v33(a2 + v31, 1, 1, v32);
}

uint64_t CallInfo.uniqueId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CallInfo.uniqueId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CallInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallInfo(0) + 24);
  v4 = sub_1D33DDD34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentsItem.BackingType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  if (v4 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v4 != 2)
      {
        v6 = 3;
        goto LABEL_19;
      }

      v5 = 2;
    }

    else
    {
      if (*(v0 + 32))
      {
        v6 = 1;
        goto LABEL_19;
      }

      v5 = 0;
    }

LABEL_13:
    MEMORY[0x1D38B7920](v5);
    return sub_1D33DEC84();
  }

  if (*(v0 + 32) <= 5u)
  {
    if (v4 != 4)
    {
      v6 = 5;
      goto LABEL_19;
    }

    v5 = 4;
    goto LABEL_13;
  }

  if (v4 == 6)
  {
    v6 = 6;
LABEL_19:
    MEMORY[0x1D38B7920](v6);
    sub_1D33DEC84();
    return sub_1D33DEC84();
  }

  if (v4 != 7)
  {
    return MEMORY[0x1D38B7920](8);
  }

  MEMORY[0x1D38B7920](7);
  return sub_1D33DEC84();
}

uint64_t RecentsItem.BackingType.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A2B40()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A2B98()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D33DF284();
  RecentsItem.BackingType.hash(into:)();
  return sub_1D33DF2C4();
}

uint64_t RecentsItem.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RecentsItem.subtitle.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t RecentsItem.messageSummary.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentsItem(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentsItem.messageSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentsItem(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentsItem.messageTranscript.getter()
{
  v1 = (v0 + *(type metadata accessor for RecentsItem(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecentsItem.messageTranscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecentsItem(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecentsItem.reminderStatus.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecentsItem(0) + 44);

  return sub_1D3394050(a1, v3);
}

uint64_t RecentsItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D33DDD34();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - v7;
  v50 = type metadata accessor for ReminderStatus();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for CallInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v45 - v22;
  v24 = RecentsItem.dataSourceId.getter();
  v25 = MEMORY[0x1D38B6F00](v24);

  MEMORY[0x1D38B7920](v25);
  v26 = *v0;
  v27 = *(v0 + 32);
  if (v27 > 8)
  {
    goto LABEL_5;
  }

  if (((1 << v27) & 0x1B0) != 0)
  {
    goto LABEL_8;
  }

  v28 = v0[1];
  if (v27 != 3 && v27 != 6)
  {
LABEL_5:
    if (v27 < 2)
    {
      goto LABEL_8;
    }

    v28 = *v0;
  }

  v29 = v28;
  sub_1D33DE164();

  sub_1D33DF2A4();
LABEL_8:
  sub_1D33DF2A4();
  if (v1[7])
  {
    v30 = v1[6];
    sub_1D33DE824();
  }

  if (v1[9])
  {
    v31 = v1[8];
    sub_1D33DE824();
  }

  v32 = type metadata accessor for RecentsItem(0);
  sub_1D331E818(v1 + v32[8], v23, &unk_1EC761DE0, &unk_1D33E50F0);
  if ((*(v16 + 48))(v23, 1, v15) != 1)
  {
    sub_1D33A7100(v23, v19, type metadata accessor for CallInfo);
    CallInfo.hash(into:)();
    sub_1D3337AB4(v19, type metadata accessor for CallInfo);
  }

  v33 = (v1 + v32[9]);
  v34 = v50;
  if (v33[1])
  {
    v35 = *v33;
    sub_1D33DE824();
  }

  v36 = (v1 + v32[10]);
  if (v36[1])
  {
    v37 = *v36;
    sub_1D33DE824();
  }

  sub_1D331E818(v1 + v32[11], v14, &unk_1EC761320, &unk_1D33E28D0);
  result = (*(v8 + 48))(v14, 1, v34);
  if (result != 1)
  {
    v39 = v47;
    sub_1D33A7100(v14, v47, type metadata accessor for ReminderStatus);
    MEMORY[0x1D38B7920](*v39);
    v40 = v46;
    sub_1D331E818(&v39[*(v34 + 20)], v46, &qword_1EC760E10, &unk_1D33E1A90);
    v42 = v48;
    v41 = v49;
    if ((*(v48 + 48))(v40, 1, v49) == 1)
    {
      sub_1D33DF2A4();
    }

    else
    {
      v43 = v45;
      (*(v42 + 32))(v45, v40, v41);
      sub_1D33DF2A4();
      sub_1D332C29C(&unk_1EDEBFD40, MEMORY[0x1E6969530]);
      sub_1D33DE734();
      (*(v42 + 8))(v43, v41);
    }

    v44 = v39[*(v34 + 24)];
    sub_1D33DF2A4();
    return sub_1D3337AB4(v39, type metadata accessor for ReminderStatus);
  }

  return result;
}

uint64_t sub_1D33A34A8(void (*a1)(_BYTE *))
{
  sub_1D33DF284();
  a1(v3);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A3508(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D33DF284();
  a3(v5);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A356C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D33DF284();
  a4(v6);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33A35B0@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsItem.dataSourceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D33A35D8@<X0>(char *a1@<X8>)
{
  v3 = sub_1D33DDDB4();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v12 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 32);
  if (v13 <= 3)
  {
    if (v13 < 2)
    {
      v17 = v12;
      v18 = [v17 UUID];

      sub_1D33DDD84();
LABEL_10:
      v14 = *(v28 + 56);
      v15 = a1;
      v16 = 0;
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      v11 = *v1;
    }

LABEL_9:
    v19 = v11;
    sub_1D33DE184();

    goto LABEL_10;
  }

  if (v13 - 4 >= 2)
  {
    if (v13 - 7 < 2)
    {
      v14 = *(v28 + 56);
      v15 = a1;
      v16 = 1;
LABEL_11:

      return v14(v15, v16, 1, v3);
    }

    goto LABEL_9;
  }

  v21 = v12;
  v22 = [v21 conversationID];
  if (v22)
  {
    v23 = v22;
    sub_1D33DDD84();

    v24 = *(v28 + 32);
    v24(v10, v6, v3);
    v25 = *(v28 + 56);
    v28 += 56;
    v25(v10, 0, 1, v3);
    v24(a1, v10, v3);
    return (v25)(a1, 0, 1, v3);
  }

  else
  {
    (*(v28 + 56))(v10, 1, 1, v3);
    v26 = [v21 uniqueId];
    sub_1D33DE7B4();

    sub_1D33DDD44();

    result = (*(v28 + 48))(v10, 1, v3);
    if (result != 1)
    {
      return sub_1D331E880(v10, &qword_1EC7612B0, qword_1D33E2830);
    }
  }

  return result;
}

uint64_t sub_1D33A3924(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    result = sub_1D33DEA94();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1D331FEEC();
      return v24;
    }

    while (1)
    {
      v15 = [v14 handles];
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      v16 = sub_1D33DEA54();

      result = sub_1D33CCCBC(v16);
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        swift_dynamicCast();
        v14 = v18;
        v12 = v5;
        v13 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *RecentsItem.init(recentConversationItem:linkItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v152 = a1;
  v150 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v144 = (&v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v143 = (&v126 - v7);
  v8 = sub_1D33DDDB4();
  v9 = *(v8 - 8);
  v145 = v8;
  v146 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v126 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v126 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v126 - v28;
  v30 = type metadata accessor for RecentsItem(0);
  v148 = *(v30 - 8);
  v31 = *(v148 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v34[v32[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v34[v32[10]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = v32[11];
  v38 = type metadata accessor for ReminderStatus();
  v39 = *(*(v38 - 8) + 56);
  v149 = v34;
  v147 = v37;
  v40 = &v34[v37];
  v41 = v152;
  v39(v40, 1, 1, v38);
  if (*(v41 + 32))
  {
    v42 = v151;
LABEL_6:
    sub_1D3337AB4(v42, type metadata accessor for RecentsItem);
    sub_1D3337AB4(v41, type metadata accessor for RecentsItem);
    v63 = v149;
    v64 = v150;
LABEL_7:
    sub_1D331E880(&v63[v147], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v148 + 56))(v64, 1, 1, v30);
  }

  v137 = v24;
  v138 = v13;
  v139 = v21;
  v141 = v27;
  v142 = v29;
  v133 = v12;
  v140 = v16;
  v43 = v145;
  v42 = v151;
  if (*(v151 + 32) != 7)
  {
    goto LABEL_6;
  }

  v131 = v30;
  v44 = *v41;
  v45 = *(v41 + 16);
  v46 = *(v41 + 24);
  v47 = *v151;
  v48 = *(v151 + 8);
  v49 = *(v151 + 16);
  v50 = *(v151 + 24);
  v51 = *v41;
  v129 = *(v41 + 8);
  v128 = v45;
  v127 = v46;
  sub_1D332B0D0(v51, v129, v45, v46, 0);
  v134 = v47;
  v136 = v49;
  v132 = v50;
  sub_1D332B0D0(v47, v48, v49, v50, 7u);
  v130 = v44;
  v52 = [v44 groupUUID];
  v53 = v142;
  sub_1D33DDD84();

  v54 = *(v146 + 56);
  v55 = 1;
  v56 = v43;
  v54(v53, 0, 1, v43);
  v135 = v48;
  v57 = [v48 groupUUID];
  if (v57)
  {
    v58 = v57;
    v59 = v137;
    sub_1D33DDD84();

    v55 = 0;
    v60 = v138;
    v61 = v139;
    v62 = v141;
  }

  else
  {
    v60 = v138;
    v61 = v139;
    v62 = v141;
    v59 = v137;
  }

  v54(v59, v55, 1, v56);
  sub_1D333842C(v59, v62, &qword_1EC7612B0, qword_1D33E2830);
  v66 = *(v60 + 48);
  v67 = v140;
  sub_1D331E818(v53, v140, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E818(v62, v67 + v66, &qword_1EC7612B0, qword_1D33E2830);
  v68 = v146;
  v69 = *(v146 + 48);
  if (v69(v67, 1, v56) == 1)
  {
    sub_1D331E880(v62, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v53, &qword_1EC7612B0, qword_1D33E2830);
    v70 = v69(v67 + v66, 1, v56);
    v64 = v150;
    v71 = v152;
    v72 = v136;
    if (v70 == 1)
    {
      sub_1D331E880(v67, &qword_1EC7612B0, qword_1D33E2830);
      v63 = v149;
      v73 = v130;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_1D331E818(v67, v61, &qword_1EC7612B0, qword_1D33E2830);
  v74 = v69(v67 + v66, 1, v56);
  v75 = v56;
  v64 = v150;
  v72 = v136;
  if (v74 == 1)
  {
    sub_1D331E880(v141, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v142, &qword_1EC7612B0, qword_1D33E2830);
    (*(v68 + 8))(v61, v75);
    v71 = v152;
LABEL_14:
    sub_1D331E880(v67, &qword_1EC761A90, &qword_1D33E3F98);
    v63 = v149;
    v73 = v130;
LABEL_15:
    sub_1D3337AB4(v151, type metadata accessor for RecentsItem);
    sub_1D332B1DC(v73, v129, v128, v127, 0);
    sub_1D332B1DC(v134, v135, v72, v132, 7u);
    sub_1D3337AB4(v71, type metadata accessor for RecentsItem);
LABEL_16:
    v30 = v131;
    goto LABEL_7;
  }

  v76 = v133;
  (*(v68 + 32))(v133, v67 + v66, v75);
  sub_1D332C29C(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
  v77 = v68;
  v78 = sub_1D33DE774();
  v79 = *(v77 + 8);
  v79(v76, v75);
  sub_1D331E880(v141, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E880(v142, &qword_1EC7612B0, qword_1D33E2830);
  v79(v61, v75);
  sub_1D331E880(v67, &qword_1EC7612B0, qword_1D33E2830);
  v71 = v152;
  v63 = v149;
  v73 = v130;
  if ((v78 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (*(v151 + 56))
  {
    v80 = *(v151 + 48);
    v81 = *(v151 + 56);
  }

  else
  {
    v80 = v71[8];
    v81 = v71[9];
  }

  *(v63 + 8) = v80;
  *(v63 + 9) = v81;

  v82 = [v73 remoteMembers];
  sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
  sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
  v83 = sub_1D33DEA54();

  v84 = sub_1D33A3924(v83);

  v85 = sub_1D33678DC(v84);

  if ((v85 & 0xC000000000000001) != 0)
  {
    v86 = sub_1D33DEE14();
  }

  else
  {
    v86 = *(v85 + 16);
  }

  if (v86 < 1)
  {
    sub_1D3337AB4(v151, type metadata accessor for RecentsItem);
    sub_1D332B1DC(v73, v129, v128, v127, 0);
    sub_1D332B1DC(v134, v135, v136, v132, 7u);
    sub_1D3337AB4(v71, type metadata accessor for RecentsItem);

    goto LABEL_16;
  }

  v87 = v134;
  *v63 = v73;
  *(v63 + 1) = v87;
  v88 = v136;
  *(v63 + 2) = v135;
  *(v63 + 3) = v88;
  v63[32] = 1;
  v89 = v71[7];
  *(v63 + 6) = v71[6];
  *(v63 + 7) = v89;
  v90 = v71[5];
  *(v63 + 5) = v90;
  if (v90 >> 62)
  {
    v91 = sub_1D33DEE14();
    if (v91)
    {
      goto LABEL_27;
    }

LABEL_41:
    sub_1D332B0D0(v134, v135, v136, v132, 7u);

    v93 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v91)
  {
    goto LABEL_41;
  }

LABEL_27:
  sub_1D332B0D0(v134, v135, v136, v132, 7u);
  v155 = MEMORY[0x1E69E7CC0];

  result = sub_1D334A9E0(0, v91 & ~(v91 >> 63), 0);
  if (v91 < 0)
  {
    __break(1u);
    return result;
  }

  v92 = 0;
  v93 = v155;
  do
  {
    if ((v90 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x1D38B75D0](v92, v90);
    }

    else
    {
      v94 = *(v90 + 8 * v92 + 32);
    }

    v95 = v94;
    if ([v94 hasBeenPersisted])
    {
      v96 = [v95 identifier];
      v97 = sub_1D33DE7B4();
      v99 = v98;
    }

    else
    {

      v97 = 0;
      v99 = 0xE000000000000000;
    }

    v155 = v93;
    v101 = v93[2];
    v100 = v93[3];
    if (v101 >= v100 >> 1)
    {
      sub_1D334A9E0((v100 > 1), v101 + 1, 1);
      v93 = v155;
    }

    ++v92;
    v93[2] = v101 + 1;
    v102 = &v93[2 * v101];
    v102[4] = v97;
    v102[5] = v99;
    v71 = v152;
  }

  while (v91 != v92);
LABEL_42:
  v155 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  sub_1D339E988();
  v103 = sub_1D33DE764();
  v105 = v104;

  v147 = *(v131 + 32);
  v106 = v143;
  sub_1D331E818(v71 + v147, v143, &unk_1EC761DE0, &unk_1D33E50F0);
  v107 = type metadata accessor for CallInfo(0);
  v146 = *(*(v107 - 8) + 48);
  if ((v146)(v106, 1, v107) == 1)
  {
    sub_1D331E880(v106, &unk_1EC761DE0, &unk_1D33E50F0);
    v108 = 0;
    v109 = 0xE000000000000000;
  }

  else
  {
    v108 = *v106;
    v109 = v106[1];

    sub_1D3337AB4(v106, type metadata accessor for CallInfo);
  }

  v155 = v108;
  v156 = v109;

  MEMORY[0x1D38B6ED0](v103, v105);

  v111 = v155;
  v110 = v156;
  v112 = v134;
  v113 = v135;
  v155 = v134;
  v156 = v135;
  v114 = v136;
  v157 = v136;
  v115 = ConversationLink.uniqueId.getter();
  v117 = v116;
  sub_1D332B1DC(v112, v113, v114, v132, 7u);
  v153 = v111;
  v154 = v110;

  MEMORY[0x1D38B6ED0](v115, v117);

  v119 = v153;
  v118 = v154;
  sub_1D3337AB4(v151, type metadata accessor for RecentsItem);
  v120 = v152;
  v121 = v144;
  sub_1D331E818(v152 + v147, v144, &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D3337AB4(v120, type metadata accessor for RecentsItem);
  if (!(v146)(v121, 1, v107))
  {
    v122 = v121[1];
    *v121 = v119;
    v121[1] = v118;
  }

  v124 = v149;
  v123 = v150;
  v125 = v131;

  sub_1D333842C(v121, v124 + *(v125 + 32), &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D332A828(v124, v123);
  (*(v148 + 56))(v123, 0, 1, v125);
  return sub_1D3337AB4(v124, type metadata accessor for RecentsItem);
}

uint64_t RecentsItem.init(recentHistoryItem:linkItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D33DDDB4();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  v9 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v11 = &v76 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v95 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v76 - v21;
  v22 = type metadata accessor for RecentsItem(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &v27[v25[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v27[v25[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = v25[11];
  v31 = type metadata accessor for ReminderStatus();
  v32 = *(*(v31 - 8) + 56);
  v98 = v30;
  v32(&v27[v30], 1, 1, v31);
  if (*(a1 + 32) != 4 || *(a2 + 32) != 7)
  {
    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    goto LABEL_6;
  }

  v82 = v11;
  v83 = v6;
  v84 = v22;
  v89 = a3;
  v33 = *a1;
  v34 = *(a1 + 16);
  v35 = *(a1 + 24);
  v37 = *a2;
  v36 = *(a2 + 8);
  v38 = *(a2 + 16);
  v39 = *(a2 + 24);
  v40 = *a1;
  v77 = *(a1 + 8);
  v78 = v34;
  v79 = v35;
  sub_1D332B0D0(v40, v77, v34, v35, 4u);
  v85 = v37;
  v86 = v38;
  v91 = v36;
  v80 = v39;
  sub_1D332B0D0(v37, v36, v38, v39, 7u);
  v81 = v33;
  v41 = [v33 participantGroupUUID];
  v90 = a2;
  v87 = v23;
  v88 = a1;
  if (v41)
  {
    v42 = v96;
    v43 = v41;
    sub_1D33DDD84();

    v44 = 0;
    v45 = v83;
  }

  else
  {
    v44 = 1;
    v45 = v83;
    v42 = v96;
  }

  v47 = *(v97 + 56);
  v48 = 1;
  v47(v42, v44, 1, v45);
  v49 = [v91 groupUUID];
  v50 = v82;
  if (v49)
  {
    v51 = v49;
    sub_1D33DDD84();

    v48 = 0;
  }

  v47(v18, v48, 1, v45);
  v52 = v18;
  v53 = v95;
  sub_1D333842C(v52, v95, &qword_1EC7612B0, qword_1D33E2830);
  v54 = *(v94 + 48);
  v55 = v96;
  sub_1D331E818(v96, v50, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E818(v53, v50 + v54, &qword_1EC7612B0, qword_1D33E2830);
  v56 = *(v97 + 48);
  if (v56(v50, 1, v45) != 1)
  {
    v59 = v93;
    sub_1D331E818(v50, v93, &qword_1EC7612B0, qword_1D33E2830);
    v60 = v56(v50 + v54, 1, v45);
    v58 = v88;
    if (v60 != 1)
    {
      v61 = v59;
      v62 = v97;
      v63 = v92;
      (*(v97 + 32))(v92, v50 + v54, v45);
      sub_1D332C29C(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v64 = sub_1D33DE774();
      v65 = *(v62 + 8);
      v65(v63, v45);
      sub_1D331E880(v95, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E880(v96, &qword_1EC7612B0, qword_1D33E2830);
      v65(v61, v45);
      sub_1D331E880(v50, &qword_1EC7612B0, qword_1D33E2830);
      a3 = v89;
      if (v64)
      {
        goto LABEL_19;
      }

LABEL_17:
      sub_1D332B1DC(v81, v77, v78, v79, 4u);
      sub_1D332B1DC(v85, v91, v86, v80, 7u);
      sub_1D3337AB4(v90, type metadata accessor for RecentsItem);
      sub_1D3337AB4(v58, type metadata accessor for RecentsItem);
      v23 = v87;
      v22 = v84;
      goto LABEL_6;
    }

    sub_1D331E880(v95, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D331E880(v96, &qword_1EC7612B0, qword_1D33E2830);
    (*(v97 + 8))(v59, v45);
    a3 = v89;
LABEL_16:
    sub_1D331E880(v50, &qword_1EC761A90, &qword_1D33E3F98);
    goto LABEL_17;
  }

  sub_1D331E880(v53, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D331E880(v55, &qword_1EC7612B0, qword_1D33E2830);
  v57 = v56(v50 + v54, 1, v45);
  v58 = v88;
  a3 = v89;
  if (v57 != 1)
  {
    goto LABEL_16;
  }

  sub_1D331E880(v50, &qword_1EC7612B0, qword_1D33E2830);
LABEL_19:
  v66 = v81;
  if (*(v90 + 72))
  {
    v67 = *(v90 + 64);
    v68 = *(v90 + 72);
  }

  else
  {
    v67 = v58[8];
    v68 = v58[9];
  }

  *(v27 + 8) = v67;
  *(v27 + 9) = v68;

  v69 = [v66 remoteParticipantHandles];
  if (v69)
  {
    v70 = v69;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v71 = sub_1D33DEA54();

    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = sub_1D33DEE14();

      sub_1D3337AB4(v90, type metadata accessor for RecentsItem);
    }

    else
    {
      sub_1D3337AB4(v90, type metadata accessor for RecentsItem);
      v72 = *(v71 + 16);
    }

    v22 = v84;
    if (v72 > 0)
    {
      v73 = v85;
      *v27 = v66;
      *(v27 + 1) = v73;
      v74 = v86;
      *(v27 + 2) = v91;
      *(v27 + 3) = v74;
      v27[32] = 5;
      v75 = v58[7];
      *(v27 + 6) = v58[6];
      *(v27 + 7) = v75;
      *(v27 + 5) = v58[5];
      sub_1D331E818(v58 + *(v22 + 32), &v27[*(v22 + 32)], &unk_1EC761DE0, &unk_1D33E50F0);

      sub_1D3337AB4(v58, type metadata accessor for RecentsItem);
      sub_1D332A828(v27, a3);
      (*(v87 + 56))(a3, 0, 1, v22);
      return sub_1D3337AB4(v27, type metadata accessor for RecentsItem);
    }

    sub_1D332B1DC(v66, v77, v78, v79, 4u);
    sub_1D332B1DC(v85, v91, v86, v80, 7u);
  }

  else
  {
    sub_1D332B1DC(v66, v77, v78, v79, 4u);
    sub_1D332B1DC(v85, v91, v86, v80, 7u);
    sub_1D3337AB4(v90, type metadata accessor for RecentsItem);
    v22 = v84;
  }

  sub_1D3337AB4(v58, type metadata accessor for RecentsItem);

  v23 = v87;
LABEL_6:
  sub_1D331E880(&v27[v98], &unk_1EC761320, &unk_1D33E28D0);
  return (*(v23 + 56))(a3, 1, 1, v22);
}

uint64_t RecentsItem.init(historyItem:messageItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 44);
  v13 = type metadata accessor for ReminderStatus();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  if (*(a1 + 32) == 4 && *(a2 + 32) == 2)
  {
    v15 = *a1;
    v14 = *(a1 + 8);
    v16 = *(a1 + 24);
    v35 = *(a1 + 16);
    v17 = *(a2 + 8);
    v38 = *a2;
    v18 = v38;
    v39 = v17;
    v36 = *(a2 + 16);
    v37 = v14;
    v19 = *(a2 + 24);
    v33 = v16;
    v34 = v19;
    *v11 = v15;
    *(v11 + 1) = v18;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    v11[32] = 6;
    v20 = *(a1 + 56);
    *(v11 + 6) = *(a1 + 48);
    *(v11 + 7) = v20;
    v40 = v20;
    if (*(a1 + 72))
    {
      v21 = *(a1 + 64);
      v22 = *(a1 + 72);
    }

    else
    {
      v21 = *(a2 + 64);
      v24 = *(a2 + 72);
    }

    v25 = &v11[v6[9]];
    v41 = &v11[v6[10]];
    *(v11 + 8) = v21;
    *(v11 + 9) = v22;
    *(v11 + 5) = *(a1 + 40);
    sub_1D331E818(a1 + v6[8], &v11[v6[8]], &unk_1EC761DE0, &unk_1D33E50F0);
    sub_1D332B0D0(v15, v37, v35, v33, 4u);
    sub_1D332B0D0(v38, v39, v36, v34, 2u);

    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    v26 = (a2 + v6[9]);
    v27 = v26[1];
    *v25 = *v26;
    *(v25 + 1) = v27;
    v28 = (a2 + v6[10]);
    v30 = *v28;
    v29 = v28[1];

    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    v31 = v41;
    *v41 = v30;
    *(v31 + 1) = v29;
    sub_1D332A828(v11, a3);
    (*(v7 + 56))(a3, 0, 1, v6);
    return sub_1D3337AB4(v11, type metadata accessor for RecentsItem);
  }

  else
  {
    sub_1D3337AB4(a2, type metadata accessor for RecentsItem);
    sub_1D3337AB4(a1, type metadata accessor for RecentsItem);
    sub_1D331E880(&v11[v12], &unk_1EC761320, &unk_1D33E28D0);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }
}

BOOL RecentsItem.isVideo.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 3)
  {
    return v1 < 2 || v1 != 2;
  }

  if (v1 - 4 >= 3)
  {
    return v1 == 7;
  }

  else
  {
    v2 = *v0;
    v3 = [v2 mediaType];

    return v3 == 2;
  }
}

BOOL RecentsItem.isUnusedLink.getter()
{
  if (*(v0 + 32) != 7)
  {
    return 0;
  }

  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = v1;

  v6 = [v5 invitedMemberHandles];
  if (v6)
  {
    v7 = v6;
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    v8 = sub_1D33DEA54();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = sub_1D33DEE14();
      sub_1D332B1DC(v2, v1, v4, v3, 7u);
    }

    else
    {
      sub_1D332B1DC(v2, v1, v4, v3, 7u);
      v9 = *(v8 + 16);
    }

    return v9 == 0;
  }

  else
  {
    sub_1D332B1DC(v2, v1, v4, v3, 7u);
    return 1;
  }
}

uint64_t RecentsItem.handleValue.getter()
{
  result = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 3)
  {
    if (v3 < 2)
    {
      return result;
    }

    if (v3 == 2)
    {
      v2 = *v0;
    }

LABEL_12:
    v9 = v2;
    v7 = sub_1D33DE124();

    if (v7)
    {
      v8 = [v7 normalizedValue];
      if (!v8)
      {
LABEL_14:
        v8 = [v7 value];
      }

LABEL_15:
      v10 = v8;
      v11 = sub_1D33DE7B4();

      return v11;
    }

    return 0;
  }

  if (v3 - 4 >= 3)
  {
    return result;
  }

  v4 = *v0;
  v5 = [v4 remoteParticipantHandles];

  if (v5)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v6 = sub_1D33DEA54();

    v7 = sub_1D335DC7C(v6);

    if (v7)
    {
      v8 = [v7 normalizedValue];
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  if (v3 == 6)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t _s16CallsAppServices11RecentsItemV11BackingTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v33[0] = *a1;
  v33[1] = v2;
  v33[2] = v5;
  v33[3] = v4;
  v34 = v6;
  v35 = v8;
  v36 = v7;
  v37 = v10;
  v38 = v9;
  v39 = v11;
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          if (v11 == 7)
          {
            sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
            sub_1D332B0D0(v8, v7, v10, v9, 7u);
            sub_1D332B0D0(v3, v2, v5, v4, 7u);
            sub_1D332B0D0(v8, v7, v10, v9, 7u);
            sub_1D332B0D0(v3, v2, v5, v4, 7u);
            v12 = sub_1D33DEC74();
            sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
            sub_1D332B1DC(v8, v7, v10, v9, 7u);
            sub_1D332B1DC(v3, v2, v5, v4, 7u);
            return v12 & 1;
          }
        }

        else if (v11 == 8 && !(v7 | v8 | v10 | v9))
        {
          sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
          return 1;
        }

        goto LABEL_33;
      }

      if (v11 == 6)
      {
        sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
        sub_1D332B0D0(v8, v7, v10, v9, 6u);
        v19 = v3;
        v20 = v2;
        v21 = v5;
        v22 = v4;
        v23 = 6;
        goto LABEL_24;
      }

LABEL_33:
      sub_1D332B0D0(v8, v7, v10, v9, v11);
      sub_1D332B0D0(v3, v2, v5, v4, v6);
      goto LABEL_34;
    }

    if (v6 == 4)
    {
      if (v11 != 4)
      {
        goto LABEL_33;
      }

      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      sub_1D332B0D0(v8, v7, v10, v9, 4u);
      v14 = v3;
      v15 = v2;
      v16 = v5;
      v17 = v4;
      v18 = 4;
      goto LABEL_17;
    }

    if (v11 != 5)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 5u);
    v24 = v3;
    v25 = v2;
    v26 = v5;
    v27 = v4;
    v28 = 5;
LABEL_31:
    sub_1D332B0D0(v24, v25, v26, v27, v28);

    v30 = v5;

    v31 = v10;

    if (sub_1D33DEC74())
    {
      v32 = sub_1D33DEC74();
      sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);

      return v32 & 1;
    }

    goto LABEL_34;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v11 != 1)
      {
        goto LABEL_33;
      }

      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      sub_1D332B0D0(v8, v7, v10, v9, 1u);
      v24 = v3;
      v25 = v2;
      v26 = v5;
      v27 = v4;
      v28 = 1;
      goto LABEL_31;
    }

    if (v11)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 0);
    v14 = v3;
    v15 = v2;
    v16 = v5;
    v17 = v4;
    v18 = 0;
LABEL_17:
    sub_1D332B0D0(v14, v15, v16, v17, v18);
LABEL_25:
    v29 = sub_1D33DEC74();
    sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
    return v29 & 1;
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_33;
    }

    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    sub_1D332B0D0(v8, v7, v10, v9, 2u);
    v14 = v3;
    v15 = v2;
    v16 = v5;
    v17 = v4;
    v18 = 2;
    goto LABEL_17;
  }

  if (v11 != 3)
  {
    goto LABEL_33;
  }

  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  sub_1D332B0D0(v8, v7, v10, v9, 3u);
  v19 = v3;
  v20 = v2;
  v21 = v5;
  v22 = v4;
  v23 = 3;
LABEL_24:
  sub_1D332B0D0(v19, v20, v21, v22, v23);
  if (sub_1D33DEC74())
  {
    goto LABEL_25;
  }

LABEL_34:
  sub_1D331E880(v33, &qword_1EC761AC8, &unk_1D33E4358);
  return 0;
}

uint64_t _s16CallsAppServices8CallInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D33DF1B4() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_22;
  }

  v5 = type metadata accessor for CallInfo(0);
  v6 = v5[6];
  if ((sub_1D33DDCE4() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    goto LABEL_22;
  }

  v7 = v5[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v11)
  {
    goto LABEL_22;
  }

  if (*(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]))
  {
    v13 = *(a1 + v5[13]) ^ *(a2 + v5[13]) ^ 1;
    return v13 & 1;
  }

LABEL_22:
  v13 = 0;
  return v13 & 1;
}

uint64_t _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v71 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AB8, &qword_1D33E4348);
  v10 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v71 - v11;
  v12 = type metadata accessor for CallInfo(0);
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AC0, &qword_1D33E4350);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v24 = RecentsItem.dataSourceId.getter();
  v26 = v25;
  if (v24 == RecentsItem.dataSourceId.getter() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_1D33DF1B4();

    if ((v28 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30 || (*(a1 + 48) != *(a2 + 48) || v29 != v30) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v30)
  {
    goto LABEL_26;
  }

  v31 = *(a1 + 72);
  v32 = *(a2 + 72);
  if (!v31)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

LABEL_26:
    v39 = 0;
    return v39 & 1;
  }

  if (!v32 || (*(a1 + 64) != *(a2 + 64) || v31 != v32) && (sub_1D33DF1B4() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v71 = type metadata accessor for RecentsItem(0);
  v33 = *(v71 + 32);
  v34 = *(v20 + 48);
  sub_1D331E818(a1 + v33, v23, &unk_1EC761DE0, &unk_1D33E50F0);
  sub_1D331E818(a2 + v33, &v23[v34], &unk_1EC761DE0, &unk_1D33E50F0);
  v35 = *(v78 + 48);
  if (v35(v23, 1, v12) == 1)
  {
    if (v35(&v23[v34], 1, v12) == 1)
    {
      sub_1D331E880(v23, &unk_1EC761DE0, &unk_1D33E50F0);
      goto LABEL_29;
    }

LABEL_24:
    v36 = &qword_1EC761AC0;
    v37 = &qword_1D33E4350;
    v38 = v23;
LABEL_25:
    sub_1D331E880(v38, v36, v37);
    goto LABEL_26;
  }

  sub_1D331E818(v23, v19, &unk_1EC761DE0, &unk_1D33E50F0);
  if (v35(&v23[v34], 1, v12) == 1)
  {
    sub_1D3337AB4(v19, type metadata accessor for CallInfo);
    goto LABEL_24;
  }

  sub_1D33A7100(&v23[v34], v15, type metadata accessor for CallInfo);
  v41 = _s16CallsAppServices8CallInfoV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_1D3337AB4(v15, type metadata accessor for CallInfo);
  sub_1D3337AB4(v19, type metadata accessor for CallInfo);
  sub_1D331E880(v23, &unk_1EC761DE0, &unk_1D33E50F0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v42 = v71;
  v43 = *(v71 + 36);
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v47)
  {
    goto LABEL_26;
  }

  v48 = *(v42 + 40);
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v52)
  {
    goto LABEL_26;
  }

  v53 = *(a1 + 32);
  v54 = 2;
  if (v53 <= 8)
  {
    if (((1 << v53) & 0x1B0) != 0)
    {
      goto LABEL_50;
    }

    v55 = *(a1 + 8);
    if (v53 == 3 || v53 == 6)
    {
      goto LABEL_49;
    }
  }

  if (v53 >= 2)
  {
    v55 = *a1;
LABEL_49:
    v56 = v55;
    v57 = sub_1D33DE164();

    v54 = v57 & 1;
  }

LABEL_50:
  v58 = *(a2 + 32);
  v59 = 2;
  if (v58 > 8)
  {
    goto LABEL_54;
  }

  if (((1 << v58) & 0x1B0) != 0)
  {
    goto LABEL_57;
  }

  v60 = *(a2 + 8);
  if (v58 != 3 && v58 != 6)
  {
LABEL_54:
    if (v58 < 2)
    {
      goto LABEL_57;
    }

    v60 = *a2;
  }

  v61 = v60;
  v62 = sub_1D33DE164();

  v59 = v62 & 1;
LABEL_57:
  if (v54 == 2)
  {
    if (v59 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  v39 = 0;
  if (v59 != 2 && ((v59 ^ v54) & 1) == 0)
  {
LABEL_62:
    v63 = *(v42 + 44);
    v64 = *(v74 + 48);
    v65 = v77;
    sub_1D331E818(a1 + v63, v77, &unk_1EC761320, &unk_1D33E28D0);
    sub_1D331E818(a2 + v63, v65 + v64, &unk_1EC761320, &unk_1D33E28D0);
    v66 = v76;
    v67 = *(v75 + 48);
    if (v67(v65, 1, v76) == 1)
    {
      if (v67(v65 + v64, 1, v66) == 1)
      {
        sub_1D331E880(v65, &unk_1EC761320, &unk_1D33E28D0);
        v39 = 1;
        return v39 & 1;
      }
    }

    else
    {
      v68 = v73;
      sub_1D331E818(v65, v73, &unk_1EC761320, &unk_1D33E28D0);
      if (v67(v65 + v64, 1, v66) != 1)
      {
        v69 = v65 + v64;
        v70 = v72;
        sub_1D33A7100(v69, v72, type metadata accessor for ReminderStatus);
        v39 = _s16CallsAppServices14ReminderStatusV2eeoiySbAC_ACtFZ_0(v68, v70);
        sub_1D3337AB4(v70, type metadata accessor for ReminderStatus);
        sub_1D3337AB4(v68, type metadata accessor for ReminderStatus);
        sub_1D331E880(v65, &unk_1EC761320, &unk_1D33E28D0);
        return v39 & 1;
      }

      sub_1D3337AB4(v68, type metadata accessor for ReminderStatus);
    }

    v36 = &qword_1EC761AB8;
    v37 = &qword_1D33E4348;
    v38 = v65;
    goto LABEL_25;
  }

  return v39 & 1;
}

void sub_1D33A6A18(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    isUniquelyReferenced_nonNull_native = sub_1D33DEA94();
    v1 = v37[7];
    v3 = v37[8];
    v4 = v37[9];
    v5 = v37[10];
    v6 = v37[11];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));

    v5 = 0;
  }

  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v13 = sub_1D33DEE54();
      if (!v13 || (v37[14] = v13, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v12 = v37[0]) == 0))
      {
LABEL_27:
        sub_1D331FEEC();
        return;
      }

      goto LABEL_17;
    }

    v10 = v5;
    v11 = v6;
    if (!v6)
    {
      break;
    }

LABEL_13:
    v6 = ((v11 - 1) & v11);
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_17:
    v14 = [v12 value];
    if (!v14)
    {
      sub_1D33DE7B4();
      v14 = sub_1D33DE784();
    }

    v15 = [v14 destinationIdIsTemporary];

    if (v15)
    {
    }

    else
    {

      sub_1D332786C(v12, 0, 0, v37);
      v16 = v37[0];
      v17 = v37[2];
      v32 = v37[3];
      v33 = v37[1];
      v18 = v37[4];
      v28 = v37[0];
      v29 = v17;

      v20 = MEMORY[0x1D38B7A70](v19);
      v34 = v16;
      sub_1D3328D7C(v16, v37);
      isUniquelyReferenced_nonNull_native = v20;
      if (v36)
      {
        goto LABEL_29;
      }

      objc_autoreleasePoolPop(v20);
      sub_1D3328AF4();
      v21 = sub_1D33DED14();
      v30 = v22;
      v31 = v21;

      v23 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D3359C88(0, *(v35 + 16) + 1, 1, v35);
        v23 = isUniquelyReferenced_nonNull_native;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = v18;
      if (v25 >= v24 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D3359C88((v24 > 1), v25 + 1, 1, v23);
        v23 = isUniquelyReferenced_nonNull_native;
        v26 = v18;
      }

      *(v23 + 16) = v25 + 1;
      v35 = v23;
      v27 = (v23 + 56 * v25);
      v27[4] = v34;
      v27[5] = v33;
      v27[6] = v29;
      v27[7] = v32;
      v27[8] = v26;
      v27[9] = v31;
      v27[10] = v30;
    }
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v11 = v3[v5];
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  objc_autoreleasePoolPop(isUniquelyReferenced_nonNull_native);
  __break(1u);
}

void sub_1D33A6E14(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1D33DEE14();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1D33DEF04();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1D33DEE14();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x1D38B75D0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_1D33DEC64();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_1D331DA18(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_1D33DEC74();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_1D33DEC64();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_1D331DA18(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_1D33DEC74();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D33A7100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D33A716C()
{
  result = qword_1EC761A98;
  if (!qword_1EC761A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A98);
  }

  return result;
}

void sub_1D33A71C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D33DECF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D33A7214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 33))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D33A725C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D33A72A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D33A7318(uint64_t a1)
{
  v2 = sub_1D33DDE74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AA0, &qword_1D33E4340);
    v10 = sub_1D33DEF04();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D332C29C(&qword_1EC761AA8, MEMORY[0x1E6969AD0]);
      v18 = sub_1D33DE724();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D332C29C(&qword_1EC761AB0, MEMORY[0x1E6969AD0]);
          v25 = sub_1D33DE774();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D33A7638(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

id Message.dialRequest(with:)(void *a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DE1A4();
  v9 = v8;
  v10 = [a1 telephonyProvider];
  v11 = [v10 identifier];

  v12 = sub_1D33DE7B4();
  v14 = v13;

  if (v7 == v12 && v9 == v14)
  {

    v17 = &selRef_telephonyProvider;
  }

  else
  {
    v16 = sub_1D33DF1B4();

    v17 = &selRef_faceTimeProvider;
    if (v16)
    {
      v17 = &selRef_telephonyProvider;
    }
  }

  v18 = [a1 *v17];
  v19 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v20 = sub_1D33DE124();
  [v19 setHandle_];

  [v19 setOriginatingUIType_];
  v21 = sub_1D33DE134();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isoCountryCode];
    if (v23)
    {
      v24 = v23;
      v25 = [v22 canonicalHandleForISOCountryCode_];

      v26 = [v18 senderIdentityForHandle_];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 accountUUID];

        sub_1D33DDD84();
        v29 = sub_1D33DDD64();
        (*(v3 + 8))(v6, v2);
      }

      else
      {
        v29 = 0;
      }

      [v19 setLocalSenderIdentityAccountUUID_];
    }

    else
    {
    }
  }

  return v19;
}

uint64_t PrioritizedCallObserver.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

void PrioritizedCallObserver.delegate.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*PrioritizedCallObserver.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D33A7ABC;
}

void sub_1D33A7ABC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id PrioritizedCallObserver.__allocating_init(delegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate];
  *&v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_cancellables] = MEMORY[0x1E69E7CD0];
  v7 = &v5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  *&v5[v8] = sub_1D336C188(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v6 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id PrioritizedCallObserver.init(delegate:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate];
  *&v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_cancellables] = MEMORY[0x1E69E7CD0];
  v7 = &v2[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  *&v2[v8] = sub_1D336C188(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v6 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

Swift::Void __swiftcall PrioritizedCallObserver.observeCalls()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  *v2 = 0;
  v2[1] = 0;

  v4 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = MEMORY[0x1E69E7CC8];

  sub_1D33A7F18();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761AF8, qword_1D33E4380);
  sub_1D334CB54(&qword_1EC761B00, &qword_1EC761AF8, qword_1D33E4380);
  sub_1D33DE644();

  swift_beginAccess();
  sub_1D33DE484();
  swift_endAccess();

  sub_1D33A941C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D33DE644();

  swift_beginAccess();
  sub_1D33DE484();
  swift_endAccess();
}

uint64_t sub_1D33A7F18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36 - v2;
  v4 = sub_1D33DEC24();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B10, &qword_1D33E4408);
  v44 = *(v41 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B18, &qword_1D33E4410);
  v18 = *(v17 - 8);
  v42 = v17;
  v43 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x1E69D8E08];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v24 = sub_1D33DEB94();
  v45 = v24;
  v25 = sub_1D33DEB34();
  (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
  sub_1D33AB4A4(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v26 = v36;
  sub_1D33DE604();
  sub_1D331E880(v3, &qword_1EC760F20, &qword_1D33E2290);

  (*(v37 + 8))(v8, v26);
  v27 = swift_allocObject();
  v28 = v40;
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D33A9AAC;
  *(v29 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B20, &unk_1D33E4418);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400);
  v30 = v38;
  sub_1D33DE5B4();

  (*(v39 + 8))(v13, v30);
  *(swift_allocObject() + 16) = v28;
  sub_1D334CB54(&qword_1EC761B30, &qword_1EC761B10, &qword_1D33E4408);
  v31 = v28;
  v32 = v41;
  sub_1D33DE5C4();

  (*(v44 + 8))(v16, v32);
  sub_1D334CB54(&qword_1EC761B48, &qword_1EC761B18, &qword_1D33E4410);
  v33 = v42;
  v34 = sub_1D33DE5A4();
  (*(v43 + 8))(v21, v33);
  return v34;
}

void sub_1D33A850C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (v1)
      {
        v7 = *(v4 + 8);
        swift_getObjectType();
        v8 = *(v7 + 8);
        v9 = v1;
        v8();

        v3 = v6;
        v6 = v9;
      }

      v3 = v6;
    }
  }
}

void sub_1D33A85F4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (v1)
      {
        v7 = *(v4 + 8);
        swift_getObjectType();
        v8 = *(v7 + 16);
        v9 = v1;
        v8();

        v3 = v6;
        v6 = v9;
      }

      v3 = v6;
    }
  }
}

uint64_t sub_1D33A86DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1D33A8748();

  return v2;
}

uint64_t sub_1D33A8748()
{
  sub_1D33DDAD4();
  if (!v7)
  {
    sub_1D331E880(v6, &qword_1EC7616D0, &unk_1D33E2890);
    return 0;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D33A88C8(v5);
  v0 = [v5 callCenter];
  v1 = sub_1D33A8A1C(v0);

  if (!v1)
  {
LABEL_13:

    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_1D33DEE14();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D38B75D0](0, v1);
    goto LABEL_9;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_9:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1D33A8898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D33A8D6C();
  if (result <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D33A88C8(void *a1)
{
  v2 = v1;
  v4 = [a1 callUUID];
  v5 = sub_1D33DE7B4();
  v7 = v6;

  v8 = OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_previousCallStates;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (v10 = sub_1D33378A8(v5, v7), (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = *(*(v9 + 56) + 4 * v10);
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  swift_endAccess();
  v14 = [a1 status];
  swift_beginAccess();
  v15 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v8);
  *(v2 + v8) = 0x8000000000000000;
  sub_1D339913C(v14, v5, v7, isUniquelyReferenced_nonNull_native);
  *(v2 + v8) = v18;
  swift_endAccess();
  sub_1D33A8C24(v5, v7, v13 | (v12 << 32), v14);
}

void *sub_1D33A8A1C(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = [v2 currentCalls];
    sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
    v4 = sub_1D33DE8B4();

    v14 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
    {
      v12 = v1;
      v13 = v2;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1D38B75D0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v8 isVideo])
        {
        }

        else
        {
          sub_1D33DEF84();
          v7 = *(v14 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          v1 = &v14;
          sub_1D33DEF94();
        }

        ++v6;
        if (v2 == i)
        {
          v10 = v14;
          v1 = v12;
          v2 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

    swift_retain_n();
    v11 = v1;
    v14 = sub_1D33A9344(v10);
    sub_1D33AADC8(&v14, v11, v10);

    return v14;
  }

  return result;
}

uint64_t sub_1D33A8C24(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if ((a3 & 0x100000000) == 0 && (a3 - 3) <= 1 && a4 == 1)
  {
    v8 = (v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
    v9 = *(v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
    *v8 = v7;
    v8[1] = a2;
  }

  v10 = (v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  v11 = *(v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  if (!v11)
  {
    goto LABEL_15;
  }

  result = *v10;
  if (*v10 == v7 && v11 == a2)
  {
    if (a4 == 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v13 = *(v4 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  result = sub_1D33DF1B4();
  if ((result & 1) != 0 && a4 != 1)
  {
LABEL_14:
    *v10 = 0;
    v10[1] = 0;
  }

LABEL_15:
  if (a4 == 6)
  {
    swift_beginAccess();
    sub_1D334BD88(v7, a2);
    result = swift_endAccess();
    v14 = v10[1];
    if (v14)
    {
      v15 = *v10 == v7 && v14 == a2;
      if (v15 || (v16 = v10[1], result = sub_1D33DF1B4(), (result & 1) != 0))
      {
        *v10 = 0;
        v10[1] = 0;
      }
    }
  }

  return result;
}

id sub_1D33A8D6C()
{
  sub_1D33DDAD4();
  if (v3)
  {
    sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      if ([v1 status] == 6)
      {
        return v1;
      }
    }
  }

  else
  {
    sub_1D331E880(v2, &qword_1EC7616D0, &unk_1D33E2890);
  }

  return 0;
}

BOOL sub_1D33A8E28(void **a1, void **a2, uint64_t a3, unint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a3 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID + 8);
  v7 = &selRef_setOriginatingUIType_;
  if (!v6)
  {
LABEL_25:
    v25 = [v4 v7[124]];
    if (v25 > 4)
    {
      v26 = 0;
    }

    else
    {
      v26 = qword_1D33E4428[v25];
    }

    v27 = [v5 v7[124]];
    if (v27 > 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = qword_1D33E4428[v27];
    }

    return v28 < v26;
  }

  v37 = *(a3 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID);
  v35 = *a2;
  v34 = *a1;
  if (a4 >> 62)
  {
LABEL_41:
    v9 = sub_1D33DEE14();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_24:

    v5 = v35;
    v7 = &selRef_setOriginatingUIType_;
    v4 = v34;
    goto LABEL_25;
  }

  v10 = 0;
  while (1)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B75D0](v10, a4);
    }

    else
    {
      if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v11 = *(a4 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v14 = [v11 callUUID];
    v15 = sub_1D33DE7B4();
    v17 = v16;

    if (v15 == v37 && v6 == v17)
    {
      break;
    }

    v19 = sub_1D33DF1B4();

    if (v19)
    {
      goto LABEL_19;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v7 = &selRef_setOriginatingUIType_;
  if ([v12 status] != 1)
  {

    goto LABEL_24;
  }

  v4 = v34;
  v20 = [v34 callUUID];
  v21 = sub_1D33DE7B4();
  v23 = v22;

  v5 = v35;
  if (v21 == v37 && v6 == v23)
  {

    return 1;
  }

  v29 = sub_1D33DF1B4();

  if (v29)
  {

    return 1;
  }

  v30 = [v35 callUUID];
  v31 = sub_1D33DE7B4();
  v36 = v32;

  if (v31 == v37 && v6 == v36)
  {

    return 0;
  }

  v33 = sub_1D33DF1B4();

  result = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

  return result;
}

id PrioritizedCallObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrioritizedCallObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D33A92A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D33A9330(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D33A9344(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D33DEE14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D33D6CA4(v3, 0);
  sub_1D33D33A4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D33A941C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v30 - v2;
  v4 = sub_1D33DEC24();
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B10, &qword_1D33E4408);
  v38 = *(v36 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v30 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B18, &qword_1D33E4410);
  v37 = *(v35 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v19 = &v30 - v18;
  v20 = [objc_opt_self() defaultCenter];
  v21 = *MEMORY[0x1E69D8E08];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v22 = sub_1D33DEB94();
  v39 = v22;
  v23 = sub_1D33DEB34();
  (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  sub_1D33AB4A4(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v24 = v31;
  sub_1D33DE604();
  sub_1D331E880(v3, &qword_1EC760F20, &qword_1D33E2290);

  (*(v32 + 8))(v8, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B20, &unk_1D33E4418);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400);
  v25 = v33;
  sub_1D33DE5B4();
  (*(v34 + 8))(v13, v25);
  sub_1D334CB54(&qword_1EC761B30, &qword_1EC761B10, &qword_1D33E4408);
  sub_1D33A99FC();
  v26 = v36;
  sub_1D33DE624();
  (*(v38 + 8))(v16, v26);
  sub_1D334CB54(&qword_1EC761B48, &qword_1EC761B18, &qword_1D33E4410);
  v27 = v35;
  v28 = sub_1D33DE5A4();
  (*(v37 + 8))(v19, v27);
  return v28;
}

unint64_t sub_1D33A99FC()
{
  result = qword_1EC761B38;
  if (!qword_1EC761B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761B20, &unk_1D33E4418);
    sub_1D3357A1C(&qword_1EC761B40, &qword_1EC761FD0, 0x1E69D8A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761B38);
  }

  return result;
}

unint64_t sub_1D33A9AB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  if (result <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = result;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1D33A9AF8(char *__src, void **a2, void **a3, uint64_t __dst, void *a5, unint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    v16 = __dst;
    if (__dst != __src || &__src[8 * v11] <= __dst)
    {
      memmove(__dst, __src, 8 * v11);
    }

    v17 = &v16[v11];
    if (v9 < 8)
    {
LABEL_10:
      v18 = v8;
      goto LABEL_51;
    }

    while (1)
    {
      if (v15 >= v7)
      {
        goto LABEL_10;
      }

      v56 = *v15;
      v55 = *v16;
      v21 = v55;
      v22 = v56;
      v23 = v21;
      v24 = sub_1D33A8E28(&v56, &v55, a5, a6);
      if (v6)
      {

        v47 = v17 - v16 + 7;
        if (v17 - v16 >= 0)
        {
          v47 = v17 - v16;
        }

        if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
        {
          v46 = 8 * (v47 >> 3);
          v18 = v8;
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      v25 = v24;

      if (v25)
      {
        break;
      }

      v19 = v16;
      v20 = v8 == v16++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      if (v16 >= v17)
      {
        goto LABEL_10;
      }
    }

    v19 = v15;
    v20 = v8 == v15++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v26 = a2;
    v27 = __dst;
    memmove(__dst, a2, 8 * v14);
    a2 = v26;
    __dst = v27;
  }

  v18 = a2;
  v17 = (__dst + 8 * v14);
  v28 = v12 < 8;
  v16 = __dst;
  if (!v28 && a2 > v8)
  {
    v52 = __dst;
    v29 = -__dst;
    v50 = -__dst;
LABEL_26:
    v51 = v18;
    v30 = v18 - 1;
    v31 = v17 + v29;
    --v7;
    v32 = v17;
    v33 = v17;
    while (1)
    {
      v34 = *--v33;
      v56 = v34;
      v35 = v30;
      v55 = *v30;
      v36 = v55;
      v37 = v34;
      v38 = v36;
      v39 = sub_1D33A8E28(&v56, &v55, a5, a6);
      if (v6)
      {
        break;
      }

      v40 = v39;

      v41 = v7 + 1;
      if (v40)
      {
        v42 = v35;
        if (v41 != v51)
        {
          *v7 = *v35;
        }

        v16 = v52;
        v17 = v32;
        if (v32 <= v52 || (v18 = v42, v29 = v50, v42 <= v8))
        {
          v18 = v42;
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v41 != v32)
      {
        *v7 = *v33;
      }

      v31 -= 8;
      --v7;
      v32 = v33;
      v30 = v35;
      if (v33 <= v52)
      {
        v17 = v33;
        v18 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v31 >= 0)
    {
      v43 = v31;
    }

    else
    {
      v43 = v31 + 7;
    }

    v44 = v43 >> 3;
    v18 = v51;
    v45 = v52;
    if (v51 < v52 || v51 >= v52 + (v43 & 0xFFFFFFFFFFFFFFF8))
    {
      memmove(v51, v52, 8 * v44);
      goto LABEL_59;
    }

    if (v51 == v52)
    {
      goto LABEL_59;
    }

    v46 = 8 * v44;
    goto LABEL_58;
  }

LABEL_51:
  v48 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v48 = v17 - v16;
  }

  if (v18 < v16 || v18 >= (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) || v18 != v16)
  {
    v46 = 8 * (v48 >> 3);
LABEL_57:
    v45 = v16;
LABEL_58:
    memmove(v18, v45, v46);
  }

LABEL_59:

  return 1;
}

uint64_t sub_1D33A9E84(char *a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5)
{
  v7 = a1;
  v8 = *a1;
  v22 = a4;
  v23 = a5;

  v24 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D33A9330(v24);
  }

  v19 = v7;
  *v7 = v24;
  v10 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v24;

    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v7 = &v24[16 * v9];
      v12 = *v7;
      v13 = &v10[2 * v9];
      v14 = v13[1];
      __src = (v11 + 8 * *v7);
      v25 = (v11 + 8 * v14);
      v26 = (v11 + 8 * *v13);
      v15 = v22;

      sub_1D33A9AF8(__src, v26, v25, a2, v15, v23);

      if (v5)
      {
        *v19 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v10;
      if (v9 - 2 >= *v10)
      {
        goto LABEL_13;
      }

      *v7 = v12;
      *(v7 + 1) = v14;
      v17 = v16 - v9;
      if (v16 < v9)
      {
        goto LABEL_14;
      }

      v9 = v16 - 1;
      memmove(v13, v13 + 2, 16 * v17);
      *v10 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v24;

    __break(1u);
  }

  return result;
}

void sub_1D33AA050(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v155 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  if (v7 < 1)
  {
    v11 = a5;
    swift_bridgeObjectRetain_n();
    v12 = v11;
LABEL_4:
    v13 = *a1;
    if (!*a1)
    {
      goto LABEL_175;
    }

    v14 = a5;

    sub_1D33A9E84(&v155, v13, a3, v14, v6);
    if (v144)
    {

      goto LABEL_146;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_147;
  }

  v140 = &a5[OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_mostRecentlyAcceptedCallUUID];
  v151 = a6 & 0xFFFFFFFFFFFFFF8;
  v150 = a6 & 0xC000000000000001;
  v9 = a5;
  swift_bridgeObjectRetain_n();
  v142 = v9;
  v143 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  v152 = v6;
  v132 = a4;
  while (1)
  {
    v15 = v10;
    v16 = v10 + 1;
    v141 = v15;
    if (v16 < v7)
    {
      v17 = *a3;
      v18 = *(*a3 + 8 * v16);
      v153 = *(*a3 + 8 * v15);
      v19 = v153;
      v154[0] = v18;
      v20 = v18;
      v21 = v19;
      v22 = sub_1D33A8E28(v154, &v153, v142, v6);
      if (!v144)
      {
        v23 = v22;

        v24 = v15;
        v25 = v15 + 2;
        v26 = 8 * v24;
        v27 = (v17 + 8 * v24 + 16);
        while (v7 != v25)
        {
          v28 = *v27;
          v153 = *(v27 - 1);
          v29 = v153;
          v154[0] = v28;
          v30 = v28;
          v31 = v29;
          LODWORD(v29) = sub_1D33A8E28(v154, &v153, v142, v6);

          ++v25;
          ++v27;
          if ((v23 ^ v29))
          {
            v7 = v25 - 1;
            break;
          }
        }

        a4 = v132;
        v15 = v141;
        if (v23)
        {
          if (v7 < v141)
          {
            goto LABEL_170;
          }

          if (v141 < v7)
          {
            v32 = 8 * v7 - 8;
            v33 = v7;
            v34 = v141;
            do
            {
              if (v34 != --v33)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_173;
                }

                v36 = *(v35 + v26);
                *(v35 + v26) = *(v35 + v32);
                *(v35 + v32) = v36;
              }

              ++v34;
              v32 -= 8;
              v26 += 8;
            }

            while (v34 < v33);
          }
        }

        goto LABEL_24;
      }

LABEL_146:
      swift_bridgeObjectRelease_n();

LABEL_147:

      return;
    }

    v7 = v16;
LABEL_24:
    v37 = a3[1];
    if (v7 >= v37)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v7, v15))
    {
      goto LABEL_167;
    }

    v38 = v7;
    if (v7 - v15 >= a4)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v15, a4))
    {
      goto LABEL_168;
    }

    if (v15 + a4 < v37)
    {
      v37 = v15 + a4;
    }

    v39 = v140;
    v40 = &selRef_setOriginatingUIType_;
    if (v37 < v15)
    {
      goto LABEL_169;
    }

    if (v7 == v37)
    {
LABEL_32:
      if (v7 < v15)
      {
        goto LABEL_166;
      }

      goto LABEL_33;
    }

    v131 = v37;
    v95 = *a3;
    v138 = *a3;
LABEL_85:
    v97 = *(v95 + 8 * v38);
    v136 = v38;
LABEL_86:
    v146 = v38;
    v147 = v97;
    v98 = *(v39 + 1);
    v145 = v38 - 1;
    v149 = *(v95 + 8 * (v38 - 1));
    if (!v98)
    {
      v112 = v97;
      v113 = *(v95 + 8 * (v38 - 1));
      v114 = v97;
      v115 = v113;
      goto LABEL_114;
    }

    v99 = *v39;
    if (v6 >> 62)
    {
      v100 = sub_1D33DEE14();
    }

    else
    {
      v100 = *(v151 + 16);
    }

    v101 = v147;
    v102 = v149;

    if (!v100)
    {
LABEL_105:

      v39 = v140;
      v40 = &selRef_setOriginatingUIType_;
      goto LABEL_112;
    }

    v137 = v101;
    v103 = 0;
    while (1)
    {
      if (v150)
      {
        v104 = MEMORY[0x1D38B75D0](v103, v6);
      }

      else
      {
        if (v103 >= *(v151 + 16))
        {
          goto LABEL_150;
        }

        v104 = *(v6 + 8 * v103 + 32);
      }

      v96 = v104;
      v105 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v106 = [v104 callUUID];
      v107 = sub_1D33DE7B4();
      v109 = v108;

      v110 = v107 == v99 && v98 == v109;
      if (v110)
      {
        break;
      }

      v111 = sub_1D33DF1B4();

      if (v111)
      {
        goto LABEL_107;
      }

      ++v103;
      v110 = v105 == v100;
      v6 = v152;
      if (v110)
      {
        goto LABEL_105;
      }
    }

LABEL_107:
    v40 = &selRef_setOriginatingUIType_;
    if ([v96 status] != 1)
    {

      v6 = v152;
      v39 = v140;
LABEL_112:
      v15 = v141;
      v95 = v138;
LABEL_113:
      v112 = v147;
LABEL_114:
      v120 = [v112 v40[124]];
      if (v120 > 4)
      {
        v121 = 0;
      }

      else
      {
        v121 = qword_1D33E4428[v120];
      }

      v122 = [v149 v40[124]];
      if (v122 > 1)
      {
        if (v122 == 2)
        {
          v123 = 2;
          goto LABEL_126;
        }

        if ((v122 - 3) < 2)
        {

          v96 = v149;
          goto LABEL_83;
        }
      }

      else
      {
        if (!v122)
        {
          v123 = 1;
          goto LABEL_126;
        }

        if (v122 == 1)
        {
          v123 = 3;
LABEL_126:

          v124 = v146;
          if (v123 >= v121)
          {
            goto LABEL_84;
          }

          if (!v95)
          {
            goto LABEL_171;
          }

          goto LABEL_128;
        }
      }

      v123 = 0;
      goto LABEL_126;
    }

    v116 = [v137 callUUID];
    v117 = sub_1D33DE7B4();
    v119 = v118;

    v95 = v138;
    if (v117 == v99 && v98 == v119)
    {

      goto LABEL_132;
    }

    v125 = sub_1D33DF1B4();

    if (v125)
    {
      break;
    }

    v126 = [v102 callUUID];
    v127 = sub_1D33DE7B4();
    v129 = v128;

    v6 = v152;
    if (v127 == v99 && v98 == v129)
    {
    }

    else
    {
      v130 = sub_1D33DF1B4();

      if ((v130 & 1) == 0)
      {
        v39 = v140;
        v15 = v141;
        v40 = &selRef_setOriginatingUIType_;
        goto LABEL_113;
      }

      v96 = v102;
    }

    v39 = v140;
    v15 = v141;
    v40 = &selRef_setOriginatingUIType_;
LABEL_83:

LABEL_84:
    v38 = v136 + 1;
    if (v136 + 1 != v131)
    {
      goto LABEL_85;
    }

    v7 = v131;
    if (v131 < v15)
    {
      goto LABEL_166;
    }

LABEL_33:
    v135 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_1D3359A14(0, *(v143 + 2) + 1, 1, v143);
    }

    v42 = *(v143 + 2);
    v41 = *(v143 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v143 = sub_1D3359A14((v41 > 1), v42 + 1, 1, v143);
    }

    *(v143 + 2) = v43;
    v44 = v143 + 32;
    v45 = &v143[16 * v42 + 32];
    *v45 = v15;
    *(v45 + 1) = v7;
    v155 = v143;
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_174;
    }

    if (v42)
    {
      while (2)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          v51 = &v44[16 * v43];
          v52 = *(v51 - 8);
          v53 = *(v51 - 7);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_155;
          }

          v56 = *(v51 - 6);
          v55 = *(v51 - 5);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_156;
          }

          v58 = &v143[16 * v43];
          v60 = *v58;
          v59 = *(v58 + 1);
          v57 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v57)
          {
            goto LABEL_158;
          }

          v57 = __OFADD__(v49, v61);
          v62 = v49 + v61;
          if (v57)
          {
            goto LABEL_161;
          }

          if (v62 >= v54)
          {
            v80 = &v44[16 * v46];
            v82 = *v80;
            v81 = *(v80 + 1);
            v57 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v57)
            {
              goto LABEL_165;
            }

            if (v49 < v83)
            {
              v46 = v43 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v50)
            {
              goto LABEL_157;
            }

            v63 = &v143[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_160;
            }

            v69 = &v44[16 * v46];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_163;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_164;
            }

            if (v67 + v72 < v49)
            {
              goto LABEL_66;
            }

            if (v49 < v72)
            {
              v46 = v43 - 2;
            }
          }
        }

        else
        {
          if (v43 == 3)
          {
            v47 = *(v143 + 4);
            v48 = *(v143 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_52;
          }

          v73 = &v143[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_66:
          if (v68)
          {
            goto LABEL_159;
          }

          v76 = &v44[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_162;
          }

          if (v79 < v67)
          {
            goto LABEL_7;
          }
        }

        if (v46 - 1 >= v43)
        {
          goto LABEL_151;
        }

        v84 = *a3;
        if (!*a3)
        {
          goto LABEL_172;
        }

        v85 = &v44[16 * v46 - 16];
        v86 = *v85;
        v87 = v46;
        v88 = &v44[16 * v46];
        v89 = *(v88 + 1);
        v90 = (v84 + 8 * *v85);
        v91 = (v84 + 8 * *v88);
        v92 = (v84 + 8 * v89);
        v93 = v142;

        sub_1D33A9AF8(v90, v91, v92, v148, v93, v152);
        if (v144)
        {

          goto LABEL_146;
        }

        if (v89 < v86)
        {
          goto LABEL_152;
        }

        v144 = 0;
        v94 = *(v143 + 2);
        if (v87 > v94)
        {
          goto LABEL_153;
        }

        *v85 = v86;
        *(v85 + 1) = v89;
        if (v87 >= v94)
        {
          goto LABEL_154;
        }

        v43 = v94 - 1;
        memmove(v88, v88 + 16, 16 * (v94 - 1 - v87));
        *(v143 + 2) = v94 - 1;
        v6 = v152;
        v44 = v143 + 32;
        if (v94 <= 2)
        {
LABEL_7:
          v155 = v143;
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    v10 = v135;
    a4 = v132;
    if (v135 >= v7)
    {
      goto LABEL_4;
    }
  }

LABEL_132:
  v6 = v152;

  v39 = v140;
  v15 = v141;
  v40 = &selRef_setOriginatingUIType_;
  v124 = v146;
  if (v138)
  {
LABEL_128:
    v97 = *(v95 + 8 * v124);
    *(v95 + 8 * v124) = *(v95 + 8 * v145);
    *(v95 + 8 * v145) = v97;
    v38 = v145;
    if (v145 == v15)
    {
      goto LABEL_84;
    }

    goto LABEL_86;
  }

LABEL_171:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_172:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_173:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_174:
  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_175:
  swift_bridgeObjectRelease_n();

  __break(1u);
}

void sub_1D33AAB28(uint64_t *a1, void *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a2;
  swift_bridgeObjectRetain_n();
  v8 = v7;
  v9 = sub_1D33DF164();
  if (v9 < v6)
  {
    if (v6 >= -1)
    {
      v10 = v9;
      if (v6 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
        v11 = sub_1D33DE8E4();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6 / 2;
      }

      v33[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v33[1] = (v6 / 2);
      v12 = v8;

      sub_1D33AA050(v33, &v34, a1, v10, v12, a3);

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();

LABEL_25:

      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_27;
  }

  if (v6)
  {
    if (v6 == 1)
    {
    }

    else
    {
      v13 = *a1;
      v28 = v8;
      v14 = v8;

      v15 = -1;
      v16 = 1;
      v17 = v13;
      v29 = v6;
      while (2)
      {
        v31 = v16;
        v32 = v15;
        v18 = *(v13 + 8 * v16);
        v30 = v17;
        v19 = v17;
        while (1)
        {
          v33[0] = v18;
          v34 = *v19;
          v20 = v34;
          v21 = v18;
          v22 = v20;
          v23 = a3;
          v24 = sub_1D33A8E28(v33, &v34, v14, a3);
          if (v3)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_25;
          }

          v25 = v24;

          if (!v25)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_28;
          }

          v26 = *v19;
          v18 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = v26;
          v19 -= 8;
          v27 = __CFADD__(v15++, 1);
          a3 = v23;
          if (v27)
          {
            goto LABEL_22;
          }
        }

        a3 = v23;
LABEL_22:
        v16 = v31 + 1;
        v17 = v30 + 8;
        v15 = v32 - 1;
        if (v31 + 1 != v29)
        {
          continue;
        }

        break;
      }

      swift_bridgeObjectRelease_n();
      v8 = v28;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

void sub_1D33AADC8(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  swift_bridgeObjectRetain_n();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D333A70C(v5);
    *a1 = v5;
  }

  v9 = *(v5 + 16);
  v11[0] = v5 + 32;
  v11[1] = v9;
  v10 = v7;

  sub_1D33AAB28(v11, v10, a3);

  sub_1D33DEF94();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D33AAEA4(void *a1, void *a2)
{
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - v21;
  if (!a1 || !a2)
  {
    return 1;
  }

  v58 = v12;
  v59 = v5;
  v57 = v4;
  v23 = a1;
  v24 = a2;
  v61 = v23;
  v25 = [v23 callUUID];
  v26 = sub_1D33DE7B4();
  v28 = v27;

  v60 = v24;
  v29 = [v24 callUUID];
  v30 = sub_1D33DE7B4();
  v32 = v31;

  if (v26 != v30 || v28 != v32)
  {
    v33 = sub_1D33DF1B4();

    if (v33)
    {

      return 1;
    }

    v35 = v61;
    v36 = [v61 isConferenced];
    v37 = v60;
    if (v36 && ([v60 isConferenced] & 1) != 0)
    {
      v38 = [v35 callGroupUUID];
      if (v38)
      {
        v39 = v38;
        sub_1D33DDD84();

        v40 = *(v59 + 56);
        v41 = v22;
        v42 = 0;
      }

      else
      {
        v40 = *(v59 + 56);
        v41 = v22;
        v42 = 1;
      }

      v43 = v57;
      v40(v41, v42, 1, v57);
      v44 = [v37 callGroupUUID];
      if (v44)
      {
        v45 = v44;
        sub_1D33DDD84();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = v59;
      v40(v20, v46, 1, v43);
      v48 = *(v9 + 48);
      v49 = v58;
      sub_1D33383BC(v22, v58);
      sub_1D33383BC(v20, v49 + v48);
      v50 = *(v47 + 48);
      if (v50(v49, 1, v43) == 1)
      {

        sub_1D331E880(v20, &qword_1EC7612B0, qword_1D33E2830);
        v51 = v58;
        sub_1D331E880(v22, &qword_1EC7612B0, qword_1D33E2830);
        if (v50(v51 + v48, 1, v43) == 1)
        {
          sub_1D331E880(v51, &qword_1EC7612B0, qword_1D33E2830);
          return 1;
        }

LABEL_25:
        sub_1D331E880(v51, &qword_1EC761A90, &qword_1D33E3F98);
        return 0;
      }

      sub_1D33383BC(v49, v17);
      if (v50(v49 + v48, 1, v43) == 1)
      {

        sub_1D331E880(v20, &qword_1EC7612B0, qword_1D33E2830);
        v51 = v58;
        sub_1D331E880(v22, &qword_1EC7612B0, qword_1D33E2830);
        (*(v59 + 8))(v17, v43);
        goto LABEL_25;
      }

      v52 = v59;
      (*(v59 + 32))(v8, v49 + v48, v43);
      sub_1D33AB4A4(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v53 = v49;
      v54 = sub_1D33DE774();

      v55 = *(v52 + 8);
      v55(v8, v43);
      sub_1D331E880(v20, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E880(v22, &qword_1EC7612B0, qword_1D33E2830);
      v55(v17, v43);
      sub_1D331E880(v53, &qword_1EC7612B0, qword_1D33E2830);
      if (v54)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D33AB4A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D33AB4F0(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    sub_1D33DEA94();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), v13 = v18, v4 = v9, v5 = v10, !v18))
      {
LABEL_22:
        sub_1D331FEEC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 normalizedValue];
    v15 = TUHandleForIDSCanonicalAddress();

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x1D38B6F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1D33AB770()
{
  v1 = [v0 validRemoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v3 = sub_1D33DEA54();

    sub_1D33AB4F0(v3);
    v5 = v4;

    if (v5 >> 62)
    {
LABEL_23:
      v6 = sub_1D33DEE14();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1D38B75D0](v9, v5);
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = TUCopyIDSFromIDForHandle();
            if (v12)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = sub_1D33DE7B4();
          v16 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D3359DD4(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = sub_1D3359DD4((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v14;
          *(v19 + 5) = v16;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_25:

    return v8;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D33AB974()
{
  v1 = v0;
  v2 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  v24 = v2;
  *&v21 = 0x616E2D7473726966;
  *(&v21 + 1) = 0xEA0000000000656DLL;
  v3 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v4 = v1[18];
  if (v4)
  {
    v5 = v1[17];
    v22 = v3;
    *&v21 = v5;
    *(&v21 + 1) = v4;
    sub_1D334CCF4(&v21, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, isUniquelyReferenced_nonNull_native);
    sub_1D334CCA0(v23);
    v24 = v2;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x6D616E2D7473616CLL;
  *(&v21 + 1) = 0xE900000000000065;
  v7 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v8 = v1[20];
  if (v8)
  {
    v9 = v1[19];
    v22 = v7;
    *&v21 = v9;
    *(&v21 + 1) = v8;
    sub_1D334CCF4(&v21, v20);

    v10 = v24;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v11);
    sub_1D334CCA0(v23);
    v24 = v10;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x644964726F636572;
  *(&v21 + 1) = 0xE800000000000000;
  sub_1D33DEEB4();
  v12 = v1[22];
  if (v12)
  {
    v13 = v1[21];
    v22 = v7;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_1D334CCF4(&v21, v20);

    v14 = v24;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v15);
    sub_1D334CCA0(v23);
    v24 = v14;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0xD000000000000017;
  *(&v21 + 1) = 0x80000001D33E7470;
  sub_1D33DEEB4();
  v16 = v1[23];
  if (v16)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B78, &qword_1D33E4538);
    *&v21 = v16;
    sub_1D334CCF4(&v21, v20);

    v17 = v24;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v18);
    sub_1D334CCA0(v23);
    return v17;
  }

  else
  {
    sub_1D334BCE4(v23, &v21);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
    return v24;
  }
}

unint64_t sub_1D33ABCE4()
{
  v1 = v0;
  v2 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  *&v69 = 0x2D64657469766E69;
  *(&v69 + 1) = 0xEF737265626D656DLL;
  v3 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v4 = *v1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *&v69 = v4;
  sub_1D334CCF4(&v69, v68);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, isUniquelyReferenced_nonNull_native);
  sub_1D334CCA0(v71);
  v72 = v2;
  if (v1[14])
  {

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_24:
    _os_log_impl(&dword_1D331A000, v7, v8, v10, v9, 2u);
    MEMORY[0x1D38B81C0](v9, -1, -1);
LABEL_25:

    return 0;
  }

  v11 = v1[12];
  if (!v11)
  {

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v43 = sub_1D33DE464();
    __swift_project_value_buffer(v43, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_24;
  }

  if (!v1[10])
  {

LABEL_20:
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v44 = sub_1D33DE464();
    __swift_project_value_buffer(v44, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "senderHandleValue is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_24;
  }

  v12 = v1[13];
  v13 = v1[11];
  v14 = v1[9];
  v15 = v1[12];

  v16 = sub_1D33DE784();
  v17 = TUHandleForIDSCanonicalAddress();

  if (!v17)
  {

LABEL_19:

    goto LABEL_20;
  }

  v18 = TUCopyIDSFromIDForHandle();
  if (!v18)
  {

    goto LABEL_19;
  }

  v19 = v18;
  v20 = sub_1D33DE7B4();
  v66 = v21;
  v67 = v20;

  v22 = v1[7];
  v23 = v1[8];
  v24 = sub_1D33DE784();
  v25 = TUHandleForIDSCanonicalAddress();

  v26 = *MEMORY[0x1E69A5488];
  *&v69 = sub_1D33DE7B4();
  *(&v69 + 1) = v27;
  sub_1D33DEEB4();
  v28 = v1[15];
  v29 = v1[16];
  v70 = v3;
  *&v69 = v28;
  *(&v69 + 1) = v29;
  sub_1D334CCF4(&v69, v68);

  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v30);
  sub_1D334CCA0(v71);
  v31 = *MEMORY[0x1E69A5490];
  *&v69 = sub_1D33DE7B4();
  *(&v69 + 1) = v32;
  sub_1D33DEEB4();
  v70 = MEMORY[0x1E69E63B0];
  *&v69 = v12;
  v33 = v25;
  sub_1D334CCF4(&v69, v68);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v34);
  sub_1D334CCA0(v71);
  v72 = v2;
  v35 = *MEMORY[0x1E69A5478];
  *&v69 = sub_1D33DE7B4();
  *(&v69 + 1) = v36;
  sub_1D33DEEB4();
  v37 = TUCopyIDSFromIDForHandle();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1D33DE7B4();
    v41 = v40;

    v70 = v3;
    *&v69 = v39;
    *(&v69 + 1) = v41;
    sub_1D334CCF4(&v69, v68);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v68, v71, v42);
    sub_1D334CCA0(v71);
    v72 = v2;
  }

  else
  {
    sub_1D334BCE4(v71, &v69);
    sub_1D331E880(&v69, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v71);
    v2 = v72;
  }

  v46 = *MEMORY[0x1E69A5470];
  *&v69 = sub_1D33DE7B4();
  *(&v69 + 1) = v47;
  sub_1D33DEEB4();
  v70 = v3;
  *&v69 = v13;
  *(&v69 + 1) = v11;
  sub_1D334CCF4(&v69, v68);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v48);
  sub_1D334CCA0(v71);
  v49 = *MEMORY[0x1E69A5480];
  *&v69 = sub_1D33DE7B4();
  *(&v69 + 1) = v50;
  sub_1D33DEEB4();
  v70 = v3;
  *&v69 = v67;
  *(&v69 + 1) = v66;
  sub_1D334CCF4(&v69, v68);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v51);
  sub_1D334CCA0(v71);
  v72 = v2;
  *&v69 = 0x7079742D6C6C6163;
  *(&v69 + 1) = 0xE900000000000065;
  sub_1D33DEEB4();
  v52 = v1[2];
  if (v52)
  {
    v53 = v1[1];
    v70 = v3;
    *&v69 = v53;
    *(&v69 + 1) = v52;
    sub_1D334CCF4(&v69, v68);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v68, v71, v54);
    sub_1D334CCA0(v71);
    v72 = v2;
  }

  else
  {
    sub_1D334BCE4(v71, &v69);
    sub_1D331E880(&v69, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v71);
  }

  *&v69 = 0x6E656C2D6C6C6163;
  *(&v69 + 1) = 0xEB00000000687467;
  sub_1D33DEEB4();
  if (v1[4])
  {
    sub_1D334BCE4(v71, &v69);
    sub_1D331E880(&v69, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v71);
    v55 = v72;
  }

  else
  {
    v56 = v1[3];
    v70 = MEMORY[0x1E69E63B0];
    *&v69 = v56;
    sub_1D334CCF4(&v69, v68);
    v55 = v72;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v68, v71, v57);
    sub_1D334CCA0(v71);
    v72 = v55;
  }

  *&v69 = 0x6B6E696C2D736168;
  *(&v69 + 1) = 0xE800000000000000;
  sub_1D33DEEB4();
  v58 = *(v1 + 33);
  v70 = MEMORY[0x1E69E6370];
  LOBYTE(v69) = v58;
  sub_1D334CCF4(&v69, v68);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v59);
  sub_1D334CCA0(v71);
  v72 = v55;
  *&v69 = 0x6174732D6C6C6163;
  *(&v69 + 1) = 0xEB00000000737574;
  sub_1D33DEEB4();
  v60 = v1[6];
  if (v60)
  {
    v61 = v1[5];
    v70 = v3;
    *&v69 = v61;
    *(&v69 + 1) = v60;
    sub_1D334CCF4(&v69, v68);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v68, v71, v62);
    sub_1D334CCA0(v71);
    v63 = v55;
  }

  else
  {
    sub_1D334BCE4(v71, &v69);
    sub_1D331E880(&v69, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v71);
    v63 = v72;
  }

  *&v69 = 0xD00000000000001CLL;
  *(&v69 + 1) = 0x80000001D33E7450;
  sub_1D33DEEB4();
  v64 = sub_1D33AB974();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
  *&v69 = v64;
  sub_1D334CCF4(&v69, v68);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v68, v71, v65);

  sub_1D334CCA0(v71);
  return v63;
}

id FaceTimeSpamReportManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FaceTimeSpamReportManager.init()()
{
  ObjectType = swift_getObjectType();
  v1 = *MEMORY[0x1E69A47F8];
  sub_1D33DE7B4();
  v2 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v3 = sub_1D33DE784();

  v4 = [v2 initWithService_];

  if (v4)
  {
    v5 = [objc_opt_self() sharedInstance];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() sharedController];
      v8 = objc_allocWithZone(ObjectType);
      v9 = OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider;
      *&v8[v9] = [objc_allocWithZone(MEMORY[0x1E69A5C18]) init];
      *&v8[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService] = v4;
      *&v8[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController] = v6;
      *&v8[OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imDaemonController] = v7;
      v10.receiver = v8;
      v10.super_class = ObjectType;
      objc_msgSendSuper2(&v10, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FaceTimeSpamReportManager.reportSpam(call:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D33ACE9C();
  v5 = sub_1D335DDB8(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = [a1 validRemoteParticipantHandles];
    if (v9)
    {
      v10 = v9;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D331F514();
      v11 = sub_1D33DEA54();

      v12 = sub_1D335DC7C(v11);

      if (v12)
      {
        v13 = [v12 value];

        v14 = sub_1D33DE7B4();
        v16 = v15;

        v9 = v14;
        goto LABEL_14;
      }

      v9 = 0;
    }

    v16 = 0;
LABEL_14:
    v25 = sub_1D33AD3C0(v9, v16);

    v26 = [a1 validRemoteParticipantHandles];
    if (v26)
    {
      v27 = v26;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D331F514();
      v28 = sub_1D33DEA54();

      v29 = sub_1D335DC7C(v28);

      if (v29)
      {
        v30 = [v29 value];

        v31 = sub_1D33DE7B4();
        v33 = v32;

        v26 = v31;
        goto LABEL_19;
      }

      v26 = 0;
    }

    v33 = 0;
LABEL_19:
    v34 = sub_1D33AD608(v26, v33);

    v35 = v25;
    sub_1D33ADD9C(a1, v25, v7, v8, v34, v56);
    v36 = sub_1D33ABCE4();
    sub_1D33AE21C(v56);
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EC762130);

    v38 = sub_1D33DE444();
    v39 = sub_1D33DEAF4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55 = v41;
      *v40 = 136315138;
      if (v36)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
        v42 = sub_1D33DE804();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      v45 = sub_1D3328B48(v42, v44, &v55);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1D331A000, v38, v39, "ReportSpamManager: report spam, model.dictionary: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1D38B81C0](v41, -1, -1);
      MEMORY[0x1D38B81C0](v40, -1, -1);
    }

    v46 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService);
    if (v36)
    {
      v47 = sub_1D33DE6E4();
    }

    else
    {
      v47 = 0;
    }

    v48 = [v46 reportSpamMessage_];

    v49 = sub_1D33DE444();
    v50 = sub_1D33DEAF4();
    v51 = os_log_type_enabled(v49, v50);
    if (v48)
    {
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "ReportSpamManager: report spam was sent successfully";
LABEL_34:
        _os_log_impl(&dword_1D331A000, v49, v50, v53, v52, 2u);
        MEMORY[0x1D38B81C0](v52, -1, -1);
      }
    }

    else if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_34;
    }

    return;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v17 = sub_1D33DE464();
  __swift_project_value_buffer(v17, qword_1EC762130);

  oslog = sub_1D33DE444();
  v18 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56[0] = v20;
    *v19 = 136315138;
    v21 = sub_1D33DEA64();
    v23 = v22;

    v24 = sub_1D3328B48(v21, v23, v56);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1D331A000, oslog, v18, "Could not report facetime call spam due to zero registered facetime service IMAccount %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1D38B81C0](v20, -1, -1);
    MEMORY[0x1D38B81C0](v19, -1, -1);
  }

  else
  {
  }
}

id sub_1D33ACE9C()
{
  [*(v0 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imDaemonController) blockUntilConnected];
  v1 = OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imAccountController);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = &selRef_setOriginatingUIType_;
  v6 = [v3 facetimeService];
  v7 = &selRef_setOriginatingUIType_;
  v8 = [v4 accountsForService_];

  if (!v8)
  {
    if (qword_1EC760990 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_17;
  }

  sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
  v9 = sub_1D33DE8B4();

  v40 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v12 = 0;
      v5 = v9 & 0xC000000000000001;
      v7 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v5)
        {
          v13 = MEMORY[0x1D38B75D0](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v3 = v13;
        v1 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 registrationStatus] == 5)
        {
          sub_1D33DEF84();
          v14 = *(v40 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v12;
        if (v1 == i)
        {
          v15 = v40;
          v11 = MEMORY[0x1E69E7CC0];
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_21:

    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v9 = sub_1D33DEE14();
      if (!v9)
      {
LABEL_44:

        v39 = sub_1D3367844(v11);

        return v39;
      }
    }

    else
    {
      v9 = *(v15 + 16);
      if (!v9)
      {
        goto LABEL_44;
      }
    }

    v40 = v11;
    v0 = &v40;
    sub_1D334A9E0(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v25 = 0;
    v11 = v40;
    v7 = (v15 & 0xC000000000000001);
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v7)
      {
        v27 = MEMORY[0x1D38B75D0](v25, v15);
      }

      else
      {
        if (v25 >= *(v15 + 16))
        {
          goto LABEL_41;
        }

        v27 = *(v15 + 8 * v25 + 32);
      }

      v28 = v27;
      result = [v27 strippedLogin];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      sub_1D33DE7B4();

      v31 = sub_1D33DE7F4();
      v1 = v32;

      v40 = v11;
      v5 = *(v11 + 16);
      v33 = *(v11 + 24);
      v3 = (v5 + 1);
      if (v5 >= v33 >> 1)
      {
        sub_1D334A9E0((v33 > 1), v5 + 1, 1);
        v11 = v40;
      }

      *(v11 + 16) = v3;
      v34 = v11 + 16 * v5;
      *(v34 + 32) = v31;
      *(v34 + 40) = v1;
      ++v25;
      if (v26 == v9)
      {
        goto LABEL_44;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_17:
  v16 = sub_1D33DE464();
  __swift_project_value_buffer(v16, qword_1EC762130);
  v17 = v0;
  v18 = sub_1D33DE444();
  v19 = sub_1D33DEAF4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315138;
    v22 = *(v0 + v1);
    v23 = [v3 *(v5 + 872)];
    v24 = [v22 v7[138]];

    if (v24)
    {
      sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
      sub_1D33DE8B4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E20, qword_1D33E4540);
    v35 = sub_1D33DECE4();
    v37 = v36;

    v38 = sub_1D3328B48(v35, v37, &v40);

    *(v20 + 4) = v38;
    _os_log_impl(&dword_1D331A000, v18, v19, "Could not find any facetime service IMAccount in IMAccountController %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D38B81C0](v21, -1, -1);
    MEMORY[0x1D38B81C0](v20, -1, -1);
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1D33AD3C0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider);
    v6 = sub_1D33DE784();
    v7 = [v4 nicknameForHandleID_];

    result = v7;
    if (v7)
    {
      return result;
    }

    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EC762130);

    v10 = sub_1D33DE444();
    v11 = sub_1D33DEAD4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D3328B48(a1, a2, &v18);
      _os_log_impl(&dword_1D331A000, v10, v11, "Could not find a pending or previously handled IMNickname for handle %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1D38B81C0](v13, -1, -1);
      MEMORY[0x1D38B81C0](v12, -1, -1);
    }
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC762130);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D331A000, v15, v16, "Could not handle id is nil so unable to get imnicknames", v17, 2u);
      MEMORY[0x1D38B81C0](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D33AD608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_imNicknameProvider);
    v4 = sub_1D33DE784();
    v5 = [v3 unknownSenderRecordInfoFor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
    v6 = sub_1D33DE8B4();
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v7 = sub_1D33DE464();
    __swift_project_value_buffer(v7, qword_1EC762130);
    v8 = sub_1D33DE444();
    v9 = sub_1D33DEAF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D331A000, v8, v9, "unknownSenderRecordInfo is nil", v10, 2u);
      MEMORY[0x1D38B81C0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

void FaceTimeSpamReportManager.reportSpam(item:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D33ACE9C();
  v9 = sub_1D335DDB8(v8);
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    v13 = RecentsItem.handleValue.getter();
    v15 = sub_1D33AD3C0(v13, v14);

    v16 = RecentsItem.handleValue.getter();
    v18 = sub_1D33AD608(v16, v17);

    sub_1D332A828(a1, v7);
    v19 = v15;
    sub_1D33AE24C(v7, v15, v11, v12, v18, v49);
    v20 = sub_1D33ABCE4();
    sub_1D33AE21C(v49);
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v21 = sub_1D33DE464();
    __swift_project_value_buffer(v21, qword_1EC762130);

    v22 = sub_1D33DE444();
    v23 = sub_1D33DEAF4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      if (v20)
      {
        v47[1] = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
        v26 = sub_1D33DE804();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v38 = sub_1D3328B48(v26, v28, &v48);

      *(v24 + 4) = v38;
      _os_log_impl(&dword_1D331A000, v22, v23, "ReportSpamManager: report spam, model.dictionary: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D38B81C0](v25, -1, -1);
      MEMORY[0x1D38B81C0](v24, -1, -1);
    }

    v39 = *(v2 + OBJC_IVAR____TtC16CallsAppServices25FaceTimeSpamReportManager_idsService);
    if (v20)
    {
      v40 = sub_1D33DE6E4();
    }

    else
    {
      v40 = 0;
    }

    v41 = [v39 reportSpamMessage_];

    v42 = sub_1D33DE444();
    v43 = sub_1D33DEAF4();
    v44 = os_log_type_enabled(v42, v43);
    if (v41)
    {
      if (v44)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "ReportSpamManager: report spam was sent successfully";
LABEL_24:
        _os_log_impl(&dword_1D331A000, v42, v43, v46, v45, 2u);
        MEMORY[0x1D38B81C0](v45, -1, -1);
      }
    }

    else if (v44)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_24;
    }

    return;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v29 = sub_1D33DE464();
  __swift_project_value_buffer(v29, qword_1EC762130);

  v47[0] = sub_1D33DE444();
  v30 = sub_1D33DEAF4();

  if (os_log_type_enabled(v47[0], v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136315138;
    v33 = sub_1D33DEA64();
    v35 = v34;

    v36 = sub_1D3328B48(v33, v35, v49);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1D331A000, v47[0], v30, "Could not report facetime call spam due to zero registered facetime service IMAccount %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1D38B81C0](v32, -1, -1);
    MEMORY[0x1D38B81C0](v31, -1, -1);
  }

  else
  {

    v37 = v47[0];
  }
}