id sub_1D335E840()
{
  v1 = [*v0 initiator];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D336A260();

  return v3;
}

void TUCall.unknownHandles.getter()
{
  v1 = v0;
  v82 = sub_1D33DDBC4();
  v2 = *(v82 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v87 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 remoteParticipantHandles];
  v6 = sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v7 = sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v8 = sub_1D33DEA54();

  v9 = MEMORY[0x1E69E7CC0];
  v107 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1D33DEDC4();
    sub_1D33DEA94();
    v8 = v108;
    v10 = v109;
    v11 = v110;
    v12 = v111;
    v13 = v112;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
  }

  v83 = v11;
  v17 = (v11 + 64) >> 6;
  v81 = (v2 + 8);
  v93 = xmmword_1D33E1DE0;
  v98 = v6;
  v92 = v7;
  v91 = v8;
  v90 = v10;
  v89 = v17;
  while (2)
  {
    if (v8 < 0)
    {
      v22 = sub_1D33DEE54();
      if (!v22)
      {
        goto LABEL_65;
      }

      v100 = v22;
      swift_dynamicCast();
      v21 = v101;
      i = v12;
      v97 = v13;
      if (!v101)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v18 = v12;
      v19 = v13;
      for (i = v12; !v19; ++v18)
      {
        i = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_68;
        }

        if (i >= v17)
        {
LABEL_65:
          sub_1D331FEEC();
          sub_1D335F428(v107, &unk_1EDEC0120, 0x1E69D8C00, &qword_1EC7611C8, &qword_1D33E26F8);

          return;
        }

        v19 = *(v10 + 8 * i);
      }

      v97 = (v19 - 1) & v19;
      v21 = *(*(v8 + 48) + ((i << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v21)
      {
        goto LABEL_65;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = v93;
    *(inited + 32) = v21;
    v94 = v21;
    v24 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
    swift_setDeallocating();
    v25 = *(inited + 16);
    swift_arrayDestroy();
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v88 = qword_1EDEC0110;
    v96 = v24;
    if ((v24 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D33DEDC4();
      sub_1D33DEA94();
      v27 = v113;
      v26 = v114;
      v28 = v115;
      v29 = v116;
      v30 = v117;
    }

    else
    {
      v31 = -1 << *(v24 + 32);
      v26 = v24 + 56;
      v28 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v30 = v33 & *(v24 + 56);

      v29 = 0;
      v27 = v24;
    }

    v95 = v28;
    v34 = (v28 + 64) >> 6;
    v35 = v9;
    v99 = v27;
    while (1)
    {
      v36 = v29;
      v37 = v30;
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v41 = sub_1D33DEE54();
        if (!v41)
        {
          goto LABEL_52;
        }

        v100 = v41;
        swift_dynamicCast();
        v40 = v101;
        v29 = v36;
        v30 = v37;
        if (!v101)
        {
          goto LABEL_52;
        }

LABEL_37:
        v42 = [v40 value];
        if (!v42)
        {
          sub_1D33DE7B4();
          v42 = sub_1D33DE784();
        }

        v43 = [v42 destinationIdIsTemporary];

        if (!v43)
        {
          break;
        }

        v36 = v29;
        v37 = v30;
        v27 = v99;
        if ((v99 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_1D332786C(v40, 0, 0, &v101);
      v44 = v101;
      v79 = v102;
      v45 = v103;
      v78 = v104;
      v46 = v105;
      v77 = v106;
      v84 = v101;
      v86 = v45;

      v85 = v46;

      v76 = MEMORY[0x1D38B7A70](v47);
      sub_1D33DDBB4();
      v80 = v44;
      if (v44)
      {
        v48 = v84;
        v49 = [v84 givenName];
        v75[2] = sub_1D33DE7B4();
        v75[1] = v50;

        sub_1D33DDB84();
        v51 = [v48 familyName];
        sub_1D33DE7B4();
      }

      else
      {
        sub_1D33DDB84();
      }

      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
        swift_once();
      }

      v52 = qword_1EDEC1498;
      v53 = sub_1D33DDBA4();
      v54 = v52;
      v55 = [v52 stringFromPersonNameComponents_];

      v56 = sub_1D33DE7B4();
      v58 = v57;

      (*v81)(v87, v82);
      objc_autoreleasePoolPop(v76);
      v101 = v56;
      v102 = v58;
      sub_1D3328AF4();
      v59 = sub_1D33DED14();
      v76 = v60;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D3359C88(0, *(v35 + 2) + 1, 1, v35);
      }

      v27 = v99;
      v62 = *(v35 + 2);
      v61 = *(v35 + 3);
      if (v62 >= v61 >> 1)
      {
        v35 = sub_1D3359C88((v61 > 1), v62 + 1, 1, v35);
      }

      *(v35 + 2) = v62 + 1;
      v63 = &v35[56 * v62];
      v64 = v79;
      *(v63 + 4) = v80;
      *(v63 + 5) = v64;
      v65 = v78;
      *(v63 + 6) = v86;
      *(v63 + 7) = v65;
      *(v63 + 8) = v85;
      *(v63 + 9) = v59;
      *(v63 + 10) = v76;
    }

LABEL_29:
    v38 = v36;
    v39 = v37;
    v29 = v36;
    if (v37)
    {
LABEL_33:
      v30 = (v39 - 1) & v39;
      v40 = *(*(v27 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v39)))));
      if (v40)
      {
        goto LABEL_37;
      }

LABEL_52:
      sub_1D331FEEC();

      v66 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v101 = MEMORY[0x1E69E7CC0];
      v67 = *(v35 + 2);
      v68 = MEMORY[0x1E69E7CC0];
LABEL_53:
      v69 = 56 * v66 + 32;
      while (v67 != v66)
      {
        if (v66 >= *(v35 + 2))
        {
          __break(1u);
          goto LABEL_67;
        }

        ++v66;
        v70 = *&v35[v69];
        v69 += 56;
        if (v70)
        {
          v71 = v70;
          MEMORY[0x1D38B6F20]();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v72 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D33DE8D4();
          }

          sub_1D33DE8F4();
          v68 = v101;
          goto LABEL_53;
        }
      }

      if (v68 >> 62)
      {
        v73 = sub_1D33DEE14();
      }

      else
      {
        v73 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = v91;
      v10 = v90;

      if (v73)
      {
      }

      else
      {
        sub_1D33DEF84();
        v74 = *(v107 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      v12 = i;
      v13 = v97;
      v17 = v89;
      continue;
    }

    break;
  }

  while (1)
  {
    v29 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      goto LABEL_52;
    }

    v39 = *(v26 + 8 * v29);
    ++v38;
    if (v39)
    {
      goto LABEL_33;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1D335F428(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    v10 = sub_1D33DEE14();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v19 = MEMORY[0x1E69E7CC0];
    result = sub_1D33DEFA4();
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        do
        {
          v13 = v12 + 1;
          MEMORY[0x1D38B75D0]();
          sub_1D331DA18(0, a2, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
          swift_dynamicCast();
          sub_1D33DEF84();
          v14 = *(v19 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
          v12 = v13;
        }

        while (v10 != v13);
      }

      else
      {
        v15 = (a1 + 32);
        sub_1D331DA18(0, a2, a3);
        do
        {
          v16 = *v15++;
          v17 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
          swift_dynamicCast();
          sub_1D33DEF84();
          v18 = *(v19 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
          --v10;
        }

        while (v10);
      }

      return v19;
    }
  }

  return result;
}

uint64_t TUCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 == 1)
  {
    TUCall.unknownHandles.getter();
    v5 = v4;
    v6 = [v0 initiator];
    v10 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = &v10;
    v7 = sub_1D3358048(sub_1D3367DAC, v9, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t TUCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 < 2)
  {
    v7 = 0;
  }

  else
  {
    TUCall.unknownHandles.getter();
    v5 = v4;
    v6 = [v0 initiator];
    v10 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = &v10;
    v7 = sub_1D3358048(sub_1D3367DAC, v9, v5);
  }

  return v7 & 1;
}

BOOL TUCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 < 2)
  {
    return 0;
  }

  v4 = [v0 remoteParticipantHandles];
  v5 = sub_1D33DEA54();

  sub_1D335AC18(v5);
  v7 = v6;

  v8 = *(v7 + 16);

  if (!v8)
  {
    return 0;
  }

  v9 = [v0 remoteParticipantHandles];
  v10 = sub_1D33DEA54();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D33DEE14();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  return v8 < v11;
}

BOOL TUCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  sub_1D335AC18(v2);
  v4 = v3;

  v5 = *(v4 + 16);

  v6 = [v0 remoteParticipantHandles];
  v7 = sub_1D33DEA54();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_1D33DEE14();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  return v8 > 1 && v5 == 0;
}

uint64_t TUCall.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v46 = sub_1D33DDD34();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(v48, a1, a2, ObjectType, a3);
  v44 = v48[1];
  v45 = v48[0];
  v42 = v50;
  v43 = v49;
  v15 = *(a3 + 16);
  v47 = a1;
  v41 = v15(a1, a2, ObjectType, a3);
  v16 = [v4 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v17 = sub_1D33DEA54();

  sub_1D335AEA4(v17);
  v40 = v18;

  v19 = sub_1D335FF3C();
  v39 = v20;
  [v5 callDuration];
  v22 = v21;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 activeConversationForCall_];

  if (!v24 || (v25 = [v24 initiator], v24, !v25))
  {
    v26 = [v5 remoteParticipantHandles];
    v27 = sub_1D33DEA54();

    v25 = sub_1D335DC94(v27, sub_1D33D3784);
  }

  v28 = [v5 callUUID];
  v29 = sub_1D33DE7B4();
  v31 = v30;

  [v5 callDuration];
  sub_1D33DDCC4();
  sub_1D33DDCD4();
  v33 = v32;
  (*(v10 + 8))(v13, v46);
  v34 = v39;
  *a4 = v40;
  *(a4 + 8) = v19;
  *(a4 + 16) = v34;
  *(a4 + 24) = v22;
  *(a4 + 32) = 0;
  *(a4 + 40) = v47;
  *(a4 + 48) = a2;
  *(a4 + 56) = v25;
  *(a4 + 64) = v29;
  *(a4 + 72) = v31;
  *(a4 + 80) = v33;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0xD000000000000010;
  *(a4 + 104) = 0x80000001D33E6240;
  *(a4 + 112) = 0xD000000000000011;
  *(a4 + 120) = 0x80000001D33E6280;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  v35 = v44;
  *(a4 + 144) = v45;
  *(a4 + 160) = v35;
  v36 = v42;
  *(a4 + 176) = v43;
  *(a4 + 184) = v36;
  *(a4 + 192) = v41;
}

unint64_t sub_1D335FF3C()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = [v0 provider];
  v5 = [v4 isFaceTimeProvider];

  v6 = 0x656D697465636166;
  if (v3 == 1)
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id TUCall.initiatorHandle.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 activeConversationForCall_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 initiator];

  return v3;
}

uint64_t sub_1D3360118(uint64_t (*a1)(void), void (*a2)(void))
{
  v3 = a1();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + 16);
  while (1)
  {
    if (v6 == v4)
    {

      if (v5 >> 62)
      {
        goto LABEL_21;
      }

      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(v3 + 8 * v4++ + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D38B6F20]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v5 = v16;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v10 = sub_1D33DEE14();
    if (!v10)
    {
      break;
    }

LABEL_10:
    v11 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1D38B75D0](v11, v5);
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v5 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a2();

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
}

BOOL sub_1D33602C8(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (v5 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v2 + 8 * v3++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D38B6F20]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v15;
    }
  }

  v1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_23:
  v8 = sub_1D33DEE14();
LABEL_10:
  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B75D0](v9, v4);
    }

    else
    {
      if (v9 >= *(v1 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_21;
    }

    v13 = TUHandle.isBlocked()();

    v9 = v10 + 1;
  }

  while (v13);

  return v8 == v10;
}

Swift::Void __swiftcall TUCall.unblock()()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D33DEA94();
    v2 = v31[1];
    v3 = v31[2];
    v5 = v31[3];
    v4 = v31[4];
    v6 = v31[5];
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v28 = v2;
  while (v2 < 0)
  {
    if (!sub_1D33DEE54() || (swift_dynamicCast(), v15 = v31[0], v13 = v4, v14 = v6, !v31[0]))
    {
LABEL_22:
      sub_1D331FEEC();

      return;
    }

LABEL_18:
    v30 = v14;
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v16 = sub_1D33DE464();
    __swift_project_value_buffer(v16, qword_1EC761DC8);
    v17 = v15;
    v18 = sub_1D33DE444();
    v19 = sub_1D33DEAF4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v20 = 136315138;
      v21 = v10;
      v22 = v3;
      v23 = [v17 value];
      v24 = sub_1D33DE7B4();
      v26 = v25;

      v3 = v22;
      v10 = v21;
      v27 = sub_1D3328B48(v24, v26, v31);

      *(v20 + 4) = v27;
      v2 = v28;
      _os_log_impl(&dword_1D331A000, v18, v19, "TUCall: unblock handle %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D38B81C0](v29, -1, -1);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    v6 = v30;
    TUHandle.unblock()();

    v4 = v13;
  }

  v11 = v4;
  v12 = v6;
  v13 = v4;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1D33608E8()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activeConversationForCall_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 initiator];

  return v4;
}

uint64_t RecentsItem.isIncomingCall.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(v0 + *(v5 + 32), v4);
  v6 = type metadata accessor for CallInfo(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1D3367B04(v4);
    v7 = 0;
  }

  else
  {
    v8 = v4[*(v6 + 36)];
    sub_1D3367D30(v4, type metadata accessor for CallInfo);
    v7 = v8 ^ 1;
  }

  return v7 & 1;
}

uint64_t RecentsItem.isOneToOneUnknownFaceTimeCall.getter()
{
  v0 = sub_1D33C8784();
  if (v0 >> 62)
  {
    v1 = sub_1D33DEE14();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 == 1)
  {
    v2 = RecentsItem.unknownHandles.getter();
    v3 = RecentsItem.initiatorHandle.getter();
    v7 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v6[2] = &v7;
    v4 = sub_1D3358048(sub_1D3367DAC, v6, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t RecentsItem.unknownHandles.getter()
{
  v63 = sub_1D33DDBC4();
  v0 = *(v63 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v72 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D33C8784();
  v90 = MEMORY[0x1E69E7CC0];
  v61 = v3;
  if (v3 >> 62)
  {
    goto LABEL_63;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v77 = v61 & 0xC000000000000001;
    v76 = v61 & 0xFFFFFFFFFFFFFF8;
    v74 = v61 + 32;
    v62 = (v0 + 8);
    v75 = xmmword_1D33E1DE0;
    v73 = v4;
LABEL_7:
    if (v77)
    {
      v7 = MEMORY[0x1D38B75D0](v6, v61);
    }

    else
    {
      if (v6 >= *(v76 + 16))
      {
        goto LABEL_62;
      }

      v7 = *(v74 + 8 * v6);
    }

    v0 = v7;
    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    if (v8)
    {
      goto LABEL_61;
    }

    v80 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = v75;
    *(inited + 32) = v0;
    v79 = v0;
    v11 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v78 = qword_1EDEC0110;
    v82 = v11;
    if ((v11 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D33DEDC4();
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33DEA94();
      v11 = v91;
      v13 = v92;
      v14 = v93;
      v15 = v94;
      v16 = v95;
    }

    else
    {
      v17 = -1 << *(v11 + 32);
      v13 = v11 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v11 + 56);

      v15 = 0;
    }

    v81 = v14;
    v20 = (v14 + 64) >> 6;
    v21 = v5;
    while (1)
    {
      v0 = v15;
      if (v11 < 0)
      {
        v25 = sub_1D33DEE54();
        if (!v25 || (v83 = v25, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v24 = v84) == 0))
        {
LABEL_43:
          sub_1D331FEEC();

          v51 = 0;
          v5 = MEMORY[0x1E69E7CC0];
          v84 = MEMORY[0x1E69E7CC0];
          v52 = *(v21 + 2);
          v0 = MEMORY[0x1E69E7CC0];
LABEL_44:
          v53 = 56 * v51 + 32;
          while (v52 != v51)
          {
            if (v51 >= *(v21 + 2))
            {
              __break(1u);
              goto LABEL_60;
            }

            ++v51;
            v54 = *&v21[v53];
            v53 += 56;
            if (v54)
            {
              v55 = v54;
              MEMORY[0x1D38B6F20]();
              if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v56 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1D33DE8D4();
              }

              sub_1D33DE8F4();
              v0 = v84;
              goto LABEL_44;
            }
          }

          if (v0 >> 62)
          {
            v57 = sub_1D33DEE14();
          }

          else
          {
            v57 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v6 = v80;

          if (v57)
          {
          }

          else
          {
            sub_1D33DEF84();
            v0 = *(v90 + 16);
            sub_1D33DEFB4();
            sub_1D33DEFC4();
            sub_1D33DEF94();
          }

          if (v6 == v73)
          {
            v5 = v90;
            break;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v22 = v15;
        v23 = v16;
        if (!v16)
        {
          while (1)
          {
            v15 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v15 >= v20)
            {
              goto LABEL_43;
            }

            v23 = *(v13 + 8 * v15);
            ++v22;
            if (v23)
            {
              goto LABEL_25;
            }
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v4 = sub_1D33DEE14();
          goto LABEL_3;
        }

LABEL_25:
        v16 = (v23 - 1) & v23;
        v24 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v24)
        {
          goto LABEL_43;
        }
      }

      v26 = [v24 value];
      if (!v26)
      {
        sub_1D33DE7B4();
        v26 = sub_1D33DE784();
      }

      v27 = [v26 destinationIdIsTemporary];

      if (v27)
      {
      }

      else
      {
        sub_1D332786C(v24, 0, 0, &v84);
        v28 = v84;
        v67 = v85;
        v29 = v86;
        v66 = v87;
        v30 = v88;
        v65 = v89;
        v69 = v84;
        v71 = v29;

        v70 = v30;

        v64 = MEMORY[0x1D38B7A70](v31);
        sub_1D33DDBB4();
        v68 = v28;
        if (v28)
        {
          v32 = v69;
          v33 = [v69 givenName];
          sub_1D33DE7B4();
          v60[1] = v34;

          sub_1D33DDB84();
          v35 = [v32 familyName];
          sub_1D33DE7B4();
        }

        else
        {
          sub_1D33DDB84();
        }

        sub_1D33DDB94();
        if (qword_1EDEC0130 != -1)
        {
          swift_once();
        }

        v36 = qword_1EDEC1498;
        v37 = sub_1D33DDBA4();
        v38 = v36;
        v39 = [v36 stringFromPersonNameComponents_];

        v40 = sub_1D33DE7B4();
        v42 = v41;

        (*v62)(v72, v63);
        objc_autoreleasePoolPop(v64);
        v84 = v40;
        v85 = v42;
        sub_1D3328AF4();
        v43 = sub_1D33DED14();
        v45 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D3359C88(0, *(v21 + 2) + 1, 1, v21);
        }

        v47 = *(v21 + 2);
        v46 = *(v21 + 3);
        if (v47 >= v46 >> 1)
        {
          v21 = sub_1D3359C88((v46 > 1), v47 + 1, 1, v21);
        }

        *(v21 + 2) = v47 + 1;
        v48 = &v21[56 * v47];
        v49 = v67;
        *(v48 + 4) = v68;
        *(v48 + 5) = v49;
        v50 = v66;
        *(v48 + 6) = v71;
        *(v48 + 7) = v50;
        *(v48 + 8) = v70;
        *(v48 + 9) = v43;
        *(v48 + 10) = v45;
      }
    }
  }

  v58 = sub_1D335F428(v5, &unk_1EDEC0120, 0x1E69D8C00, &qword_1EC7611C8, &qword_1D33E26F8);

  return v58;
}

uint64_t RecentsItem.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v0 = sub_1D33C8784();
  if (v0 >> 62)
  {
    v1 = sub_1D33DEE14();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 2)
  {
    v4 = 0;
  }

  else
  {
    v2 = RecentsItem.unknownHandles.getter();
    v3 = RecentsItem.initiatorHandle.getter();
    v7 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v6[2] = &v7;
    v4 = sub_1D3358048(sub_1D3367DAC, v6, v2);
  }

  return v4 & 1;
}

BOOL RecentsItem.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  if (!sub_1D3361714())
  {
    return 0;
  }

  v0 = *(RecentsItem.unknownHandles.getter() + 16);

  if (!v0)
  {
    return 0;
  }

  v1 = *(RecentsItem.unknownHandles.getter() + 16);

  v2 = sub_1D33C8784();
  if (v2 >> 62)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 < v3;
}

BOOL sub_1D3361714()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  if (*(v0 + 32) == 7)
  {
    return 0;
  }

  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v8 = sub_1D33DE464();
  __swift_project_value_buffer(v8, qword_1EC761DC8);
  sub_1D332A828(v0, v7);
  sub_1D332A828(v0, v5);
  v9 = sub_1D33DE444();
  v10 = sub_1D33DEAF4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    v12 = sub_1D3361BB4() & 1;
    sub_1D3367D30(v7, type metadata accessor for RecentsItem);
    *(v11 + 4) = v12;
    *(v11 + 8) = 1024;
    v13 = sub_1D3361CA0();
    sub_1D3367D30(v5, type metadata accessor for RecentsItem);
    *(v11 + 10) = v13;
    _os_log_impl(&dword_1D331A000, v9, v10, "[SpamReporting] isTelephony: %{BOOL}d, isOneToOne: %{BOOL}d", v11, 0xEu);
    MEMORY[0x1D38B81C0](v11, -1, -1);
  }

  else
  {
    sub_1D3367D30(v5, type metadata accessor for RecentsItem);
    sub_1D3367D30(v7, type metadata accessor for RecentsItem);
  }

  return (sub_1D3361BB4() & 1) == 0 && !sub_1D3361CA0();
}

uint64_t RecentsItem.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  v0 = sub_1D33C8784();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_19:
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D38B75D0](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v6);

    ++v4;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D3359DB0(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D3359DB0((v10 > 1), v11 + 1, 1, v5);
      }

      v5[2] = v11 + 1;
      v5[v11 + 4] = v9;
      v4 = v8;
    }
  }

  v12 = v5[2];

  return sub_1D3361714() & (v12 == 0);
}

BOOL RecentsItem.isOneToOneFaceTime.getter()
{
  if ((*(v0 + 32) | 2) != 6)
  {
    goto LABEL_12;
  }

  v1 = [*v0 serviceProvider];
  if (!v1)
  {
    v11 = *MEMORY[0x1E69935E8];
    sub_1D33DE7B4();
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_1D33DE7B4();
  v5 = v4;

  v6 = *MEMORY[0x1E69935E8];
  v7 = sub_1D33DE7B4();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v3 == v7 && v5 == v8)
  {

    return 0;
  }

  v10 = sub_1D33DF1B4();

  if (v10)
  {
    return 0;
  }

LABEL_12:

  return sub_1D3361CA0();
}

uint64_t sub_1D3361BB4()
{
  if ((*(v0 + 32) | 2) == 6)
  {
    v1 = [*v0 serviceProvider];
    if (v1)
    {
      v2 = v1;
      v3 = sub_1D33DE7B4();
      v5 = v4;

      v6 = *MEMORY[0x1E69935E8];
      v7 = sub_1D33DE7B4();
      if (v5)
      {
        if (v3 == v7 && v5 == v8)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_1D33DF1B4();
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = *MEMORY[0x1E69935E8];
      sub_1D33DE7B4();
    }

    v10 = 0;
LABEL_13:

    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_1D3361CA0()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v6 = sub_1D33DE464();
  __swift_project_value_buffer(v6, qword_1EC761DC8);
  sub_1D332A828(v0, v5);
  v7 = sub_1D33DE444();
  v8 = sub_1D33DEAF4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    v11 = *(v5 + 1);
    v12 = *(v5 + 2);
    v13 = *(v5 + 3);
    v14 = v5[32];
    v34[0] = *v5;
    v34[1] = v11;
    v34[2] = v12;
    v34[3] = v13;
    v35 = v14;
    sub_1D332B0D0(v34[0], v11, v12, v13, v14);
    v15 = sub_1D33DE804();
    v17 = v16;
    sub_1D3367D30(v5, type metadata accessor for RecentsItem);
    v18 = sub_1D3328B48(v15, v17, &v36);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_1D331A000, v7, v8, "[SpamReporting] RecentsItem: type: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38B81C0](v10, -1, -1);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  else
  {

    sub_1D3367D30(v5, type metadata accessor for RecentsItem);
  }

  v19 = *v1;
  v20 = *(v1 + 8);
  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  v23 = *(v1 + 32);
  if (v23 > 8)
  {
    goto LABEL_14;
  }

  result = 1;
  if (((1 << v23) & 0x4C) != 0)
  {
    return result;
  }

  v25 = 1 << v23;
  if ((v25 & 0x182) != 0)
  {
    return 0;
  }

  if ((v25 & 0x30) != 0)
  {
    v26 = v19;
    v27 = [v26 remoteParticipantHandles];

    if (!v27)
    {
      return 0;
    }

    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v28 = sub_1D33DEA54();

    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = sub_1D33DEE14();
    }

    else
    {
      v29 = *(v28 + 16);
    }

    return v29 == 1;
  }

  else
  {
LABEL_14:
    v30 = [v19 remoteMembers];
    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    v31 = sub_1D33DEA54();

    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = sub_1D33DEE14();
      sub_1D332B1DC(v19, v20, v22, v21, 0);
    }

    else
    {
      sub_1D332B1DC(v19, v20, v22, v21, 0);
      v32 = *(v31 + 16);
    }

    return v32 == 1;
  }
}

uint64_t RecentsItem.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v73 = sub_1D33DDD34();
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v70 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  if ((*(v4 + 32) | 2) == 6)
  {
    v22 = sub_1D33C8614([*v4 callStatus]);
    v87 = v23;
    v88 = v22;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 8))(v91, a1, a2, ObjectType, a3);
  v86 = v91[1];
  v83 = v91[0];
  v84 = v93;
  v85 = v92;
  v25 = *(a3 + 16);
  v89 = a1;
  v90 = a2;
  v82 = v25(a1, a2, ObjectType, a3);
  v81 = sub_1D3362664();
  v79 = sub_1D33627EC();
  v80 = v26;
  v27 = *(type metadata accessor for RecentsItem(0) + 32);
  sub_1D3367A94(v4 + v27, v21);
  v28 = type metadata accessor for CallInfo(0);
  v29 = *(*(v28 - 8) + 48);
  v77 = v29(v21, 1, v28);
  if (v77 == 1)
  {
    sub_1D3367B04(v21);
    v78 = 0;
  }

  else
  {
    v78 = *&v21[*(v28 + 40)];
    sub_1D3367D30(v21, type metadata accessor for CallInfo);
  }

  v76 = *(v4 + 32);
  v30 = RecentsItem.initiatorHandle.getter();
  sub_1D3367A94(v4 + v27, v19);
  if (v29(v19, 1, v28) == 1)
  {
    sub_1D3367B04(v19);
    v75 = 0;
    v74 = 0;
  }

  else
  {
    v31 = v19[1];
    v75 = *v19;
    v74 = v31;

    sub_1D3367D30(v19, type metadata accessor for CallInfo);
  }

  sub_1D3367A94(v4 + v27, v16);
  v32 = v29(v16, 1, v28);
  if (v32 == 1)
  {
    sub_1D3367B04(v16);
    v33 = 0;
  }

  else
  {
    v34 = *(v28 + 24);
    v35 = v72;
    v36 = v71;
    v37 = v73;
    (*(v72 + 16))(v71, &v16[v34], v73);
    sub_1D3367D30(v16, type metadata accessor for CallInfo);
    sub_1D33DDCD4();
    v33 = v38;
    (*(v35 + 8))(v36, v37);
  }

  v39 = v5[1];
  v40 = v5[2];
  v41 = *(v5 + 32);
  if (v41 == 7)
  {
    v42 = v30;
    v45 = *v5;
  }

  else
  {
    if (v41 != 1)
    {
      v49 = 0;
      v51 = 0;
      v52 = v90;
      v54 = v87;
      v53 = v88;
      v56 = v84;
      v55 = v85;
      v57 = v81;
      v58 = v82;
      v59 = v80;
      v60 = v79;
      v61 = v78;
      v62 = v77;
      goto LABEL_22;
    }

    v42 = v30;
    v43 = v5[1];
    v39 = v5[2];
    v44 = v5[3];
  }

  v46 = v39;

  v47 = [v46 linkName];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1D33DE7B4();
    v51 = v50;
  }

  else
  {

    v49 = 0;
    v51 = 0;
  }

  v52 = v90;
  v54 = v87;
  v53 = v88;
  v56 = v84;
  v55 = v85;
  v57 = v81;
  v58 = v82;
  v59 = v80;
  v60 = v79;
  v61 = v78;
  v62 = v77;
  v30 = v42;
LABEL_22:
  v63 = v76;
  v64 = v75;
  v65 = v74;
  *a4 = v57;
  *(a4 + 8) = v60;
  v66 = v63 == 1 || v63 == 7;
  *(a4 + 16) = v59;
  *(a4 + 24) = v61;
  v67 = v66;
  *(a4 + 32) = v62 == 1;
  *(a4 + 33) = v67;
  *(a4 + 40) = v89;
  *(a4 + 48) = v52;
  *(a4 + 56) = v30;
  *(a4 + 64) = v64;
  *(a4 + 72) = v65;
  *(a4 + 80) = v33;
  *(a4 + 88) = v32 == 1;
  *(a4 + 96) = 0xD000000000000010;
  *(a4 + 104) = 0x80000001D33E6240;
  *(a4 + 112) = v53;
  *(a4 + 120) = v54;
  *(a4 + 128) = v49;
  *(a4 + 136) = v51;
  v68 = v86;
  *(a4 + 144) = v83;
  *(a4 + 160) = v68;
  *(a4 + 176) = v55;
  *(a4 + 184) = v56;
  *(a4 + 192) = v58;
}

char *sub_1D3362664()
{
  v0 = sub_1D33C8784();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_1D33DEE14();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = TUCopyIDSFromIDForHandle();
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_1D33DE7B4();
    v13 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D3359DD4(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_1D3359DD4((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    v16 = &v5[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
  }

  while (v4 != v3);
LABEL_23:

  return v5;
}

unint64_t sub_1D33627EC()
{
  if (sub_1D3361CA0() && (sub_1D3361BB4() & 1) == 0)
  {
    return 0xD000000000000013;
  }

  v1 = 0x656D697465636166;
  if (!sub_1D3361714())
  {
    v2 = *(v0 + 32);
    if (v2 != 1 && v2 != 7)
    {
      return 0;
    }
  }

  return v1;
}

id RecentsItem.initiatorHandle.getter()
{
  if (*(v0 + 32) - 4 >= 3)
  {
    return 0;
  }

  v1 = *v0;
  v2 = [v1 initiator];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D336A260();

  return v3;
}

uint64_t sub_1D33628F8(void (*a1)(void))
{
  v2 = RecentsItem.unknownHandles.getter();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (1)
  {
    if (v5 == v3)
    {

      if (v4 >> 62)
      {
        goto LABEL_24;
      }

      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + 8 * v3++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D38B6F20]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v33;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v9 = sub_1D33DEE14();
    if (!v9)
    {
      break;
    }

LABEL_10:
    v10 = 0;
    v11 = v4 & 0xC000000000000001;
    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    v29 = v9;
    v30 = a1;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x1D38B75D0](v10, v4);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_23;
        }

        v13 = *(v4 + 8 * v10 + 32);
      }

      v14 = v13;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v32 = v10 + 1;
      if (qword_1EC760968 != -1)
      {
        swift_once();
      }

      v15 = sub_1D33DE464();
      __swift_project_value_buffer(v15, qword_1EC761DC8);
      v16 = v14;
      v17 = sub_1D33DE444();
      v18 = sub_1D33DEAF4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v31;
        *v19 = 136315138;
        v20 = v11;
        v21 = v4;
        v22 = [v16 value];
        v23 = sub_1D33DE7B4();
        v25 = v24;

        v4 = v21;
        v11 = v20;
        v26 = sub_1D3328B48(v23, v25, &v33);
        v12 = v28;

        *(v19 + 4) = v26;
        v9 = v29;
        _os_log_impl(&dword_1D331A000, v17, v18, "TUCall: block unknown handle %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        a1 = v30;
        MEMORY[0x1D38B81C0](v31, -1, -1);
        MEMORY[0x1D38B81C0](v19, -1, -1);
      }

      a1();
      ++v10;
      if (v32 == v9)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_25:
}

Swift::Bool __swiftcall RecentsItem.isBlocked()()
{
  v1 = RecentsItem.unknownHandles.getter();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v4 = *(v1 + 16);
  while (v4 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v1 + 8 * v2++ + 32);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1D38B6F20]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v3 = v14;
    }
  }

  v0 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_23:
  v7 = sub_1D33DEE14();
LABEL_10:
  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1D38B75D0](v8, v3);
    }

    else
    {
      if (v8 >= *(v0 + 16))
      {
        goto LABEL_22;
      }

      v10 = *(v3 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_21;
    }

    v12 = TUHandle.isBlocked()();

    v8 = v9 + 1;
  }

  while (v12);

  return v7 == v9;
}

BOOL sub_1D3362E00()
{
  if (!sub_1D3361714())
  {
    return 0;
  }

  v0 = *(RecentsItem.unknownHandles.getter() + 16);

  if (!v0)
  {
    return 0;
  }

  v1 = *(RecentsItem.unknownHandles.getter() + 16);

  v2 = sub_1D33C8784();
  if (v2 >> 62)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 < v3;
}

uint64_t sub_1D3362E94()
{
  v0 = sub_1D33C8784();
  if (v0 >> 62)
  {
    v1 = sub_1D33DEE14();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 2)
  {
    v4 = 0;
  }

  else
  {
    v2 = RecentsItem.unknownHandles.getter();
    v3 = RecentsItem.initiatorHandle.getter();
    v7 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v6[2] = &v7;
    v4 = sub_1D3358048(sub_1D3367DAC, v6, v2);
  }

  return v4 & 1;
}

uint64_t sub_1D3362F8C()
{
  v0 = sub_1D33C8784();
  if (v0 >> 62)
  {
    v1 = sub_1D33DEE14();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 == 1)
  {
    v2 = RecentsItem.unknownHandles.getter();
    v3 = RecentsItem.initiatorHandle.getter();
    v7 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v6[2] = &v7;
    v4 = sub_1D3358048(sub_1D3367DAC, v6, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D3363084(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  sub_1D3367A94(v1 + *(a1 + 32), &v11 - v5);
  v7 = type metadata accessor for CallInfo(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D3367B04(v6);
    v8 = 0;
  }

  else
  {
    v9 = v6[*(v7 + 36)];
    sub_1D3367D30(v6, type metadata accessor for CallInfo);
    v8 = v9 ^ 1;
  }

  return v8 & 1;
}

void *sub_1D3363238(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D33632AC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D33632DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1D33DE724();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D3367CE8(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v23 = sub_1D33DE774();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D33651D8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D33635BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D33DE374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
  v36 = a2;
  v13 = sub_1D33DE724();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D3367CE8(&qword_1EC7611B0, MEMORY[0x1E696EDC8]);
      v23 = sub_1D33DE774();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D33654A0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D336389C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D3364184(v7, result + 1, &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D3364FB8(v22 + 1, &qword_1EC7611C0, &qword_1D33E26F0);
    }

    v20 = v8;
    sub_1D33A1260();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
  v11 = *(v6 + 40);
  v12 = sub_1D33DEC64();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D33658E8(v20, v14, isUniquelyReferenced_nonNull_native, &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D33DEC74();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D3363B24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D33DF284();
  sub_1D33DE824();
  v9 = sub_1D33DF2C4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D33DF1B4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D3365768(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D3363C74(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D3364184(v7, result + 1, qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D3364FB8(v22 + 1, qword_1EC7611D8, &unk_1D33E4370);
    }

    v20 = v8;
    sub_1D33A1260();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v11 = *(v6 + 40);
  v12 = sub_1D33DEC64();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D33658E8(v20, v14, isUniquelyReferenced_nonNull_native, qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D33DEC74();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D3363EFC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D3364184(v7, result + 1, &qword_1EC761188, &qword_1D33E26C8, &unk_1EC7613D0, 0x1E69D8B68);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D3364FB8(v22 + 1, &qword_1EC761188, &qword_1D33E26C8);
    }

    v20 = v8;
    sub_1D33A1260();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
  v11 = *(v6 + 40);
  v12 = sub_1D33DEC64();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D33658E8(v20, v14, isUniquelyReferenced_nonNull_native, &qword_1EC761188, &qword_1D33E26C8, &unk_1EC7613D0, 0x1E69D8B68);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D33DEC74();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D3364184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D33DEEF4();
    v24 = v10;
    sub_1D33DEDC4();
    if (sub_1D33DEE54())
    {
      sub_1D331DA18(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1D3364FB8(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1D33DEC64();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1D33DEE54());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D3364398(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsItem(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  result = sub_1D33DEEE4();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D33302BC(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7);
      v24 = *(v11 + 40);
      sub_1D33DF284();
      RecentsItem.hash(into:)();
      result = sub_1D33DF2C4();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D33302BC(v7, *(v11 + 48) + v19 * v23);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D3364678(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D33DDDB4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  result = sub_1D33DEEE4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
      result = sub_1D33DE724();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D33649D4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D33DE374();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611B8, &qword_1D33E26E8);
  result = sub_1D33DEEE4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
      result = sub_1D33DE724();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D3364D44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  result = sub_1D33DEEE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D3364FB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D33DEEE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1D33DEC64();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D33651D8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D3364678(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D3365C84(MEMORY[0x1E69695A8], &qword_1EC761190, &qword_1D33E26D0);
      goto LABEL_12;
    }

    sub_1D3366408(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v15 = sub_1D33DE724();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D3367CE8(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v23 = sub_1D33DE774();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D33654A0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D33DE374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D33649D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D3365C84(MEMORY[0x1E696EDC8], &qword_1EC7611B8, &qword_1D33E26E8);
      goto LABEL_12;
    }

    sub_1D3366724(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
  v15 = sub_1D33DE724();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D3367CE8(&qword_1EC7611B0, MEMORY[0x1E696EDC8]);
      v23 = sub_1D33DE774();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D3365768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D3364D44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D3365EBC();
      goto LABEL_16;
    }

    sub_1D3366A40(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D33DF284();
  sub_1D33DE824();
  result = sub_1D33DF2C4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D33DF1B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

void sub_1D33658E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D3364FB8(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D3366018(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D3366C78(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1D33DEC64();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1D331DA18(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1D33DEC74();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D33DF1D4();
  __break(1u);
}

void *sub_1D3365A78()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  v7 = *v0;
  v8 = sub_1D33DEED4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D332A828(*(v7 + 48) + v22, v6);
        result = sub_1D33302BC(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D3365C84(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1D33DEED4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_1D3365EBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  v2 = *v0;
  v3 = sub_1D33DEED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1D3366018(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D33DEED4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1D3366158(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsItem(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  result = sub_1D33DEEE4();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D332A828(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
      v23 = *(v11 + 40);
      sub_1D33DF284();
      RecentsItem.hash(into:)();
      result = sub_1D33DF2C4();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D33302BC(v7, *(v11 + 48) + v18 * v22);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D3366408(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D33DDDB4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  v10 = sub_1D33DEEE4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
      result = sub_1D33DE724();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D3366724(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D33DE374();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611B8, &qword_1D33E26E8);
  v10 = sub_1D33DEEE4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
      result = sub_1D33DE724();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D3366A40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  result = sub_1D33DEEE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D33DF284();

      sub_1D33DE824();
      result = sub_1D33DF2C4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D3366C78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D33DEEE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1D33DEC64();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

void *sub_1D3366E84(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
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

    sub_1D339E5B0(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_1D3366F50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D33DEF04();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D33DEC64();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D336713C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1D33DDDB4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  result = sub_1D33DEF04();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
    result = sub_1D33DE724();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t (*sub_1D3367464(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D3367DC8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D33674E4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1D3367564;
  }

  __break(1u);
  return result;
}

void (*sub_1D336756C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D33675EC;
  }

  __break(1u);
  return result;
}

BOOL sub_1D33675F4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    v6 = v2;
    v7 = v3;
    v8 = sub_1D33DEC74();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_1D33676A8(uint64_t a1)
{
  v2 = sub_1D33DE374();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
  result = MEMORY[0x1D38B7100](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D33635BC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1D3367844(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38B7100](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D3363B24(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D336793C(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v12 = sub_1D331DA18(0, a2, a3);
    v13 = sub_1D33565AC(a4, a2, a3);
    result = MEMORY[0x1D38B7100](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1D38B75D0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D33DEE14();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D3367A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3367B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3367CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3367D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3367E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D3367EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D3367FE8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1D3368248()
{
  sub_1D3368348();
  result = sub_1D33DEB94();
  qword_1EC7620F8 = result;
  return result;
}

unint64_t sub_1D33682A0()
{
  result = qword_1EC761260;
  if (!qword_1EC761260)
  {
    type metadata accessor for TUActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761260);
  }

  return result;
}

unint64_t sub_1D3368348()
{
  result = qword_1EDEBEEC8;
  if (!qword_1EDEBEEC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEEC8);
  }

  return result;
}

void *RequestsHandlerPresenter.presentingViewController.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.presentingViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *RequestsHandlerPresenter.metadataCache.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.metadataCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *RequestsHandlerPresenter.sourceView.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.sourceView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RequestsHandlerPresenter.__allocating_init(presentingViewController:sourceView:sourceRect:metadataCache:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController] = 0;
  v10 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache] = 0;
  v11 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView] = 0;
  v12 = &v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v13 = &v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager] = 0;
  v14 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags;
  *&v8[v14] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v15 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_requestHandler;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDEBFC50;
  *&v8[v15] = qword_1EDEBFC50;
  swift_beginAccess();
  v17 = *&v8[v9];
  *&v8[v9] = a1;
  v18 = v16;
  v19 = a1;

  swift_beginAccess();
  v20 = *&v8[v11];
  *&v8[v11] = a2;
  v21 = a2;

  v22 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 1) = v22;
  v12[32] = *(a3 + 32);
  swift_beginAccess();
  v23 = *&v8[v10];
  *&v8[v10] = a4;
  v24 = a4;

  v29.receiver = v8;
  v29.super_class = v28;
  v25 = objc_msgSendSuper2(&v29, sel_init);

  return v25;
}

id RequestsHandlerPresenter.init(presentingViewController:sourceView:sourceRect:metadataCache:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController] = 0;
  v9 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache] = 0;
  v10 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView] = 0;
  v11 = &v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager] = 0;
  v13 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_requestHandler;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEBFC50;
  *&v4[v14] = qword_1EDEBFC50;
  swift_beginAccess();
  v16 = *&v4[v8];
  *&v4[v8] = a1;
  v17 = v15;
  v18 = a1;

  swift_beginAccess();
  v19 = *&v4[v10];
  *&v4[v10] = a2;
  v20 = a2;

  v21 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 1) = v21;
  v11[32] = *(a3 + 32);
  swift_beginAccess();
  v22 = *&v4[v9];
  *&v4[v9] = a4;
  v23 = a4;

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, sel_init);

  return v24;
}

id RequestsHandlerPresenter.contextualAction(for:)(uint64_t a1)
{
  v3 = type metadata accessor for RecentsItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = aBlock - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = aBlock - v13;
  if (![*(v1 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags) acceptedContactsLabelsEnabled])
  {
    return 0;
  }

  sub_1D3367A94(a1 + *(v3 + 32), v14);
  v15 = type metadata accessor for CallInfo(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1D331E880(v14, &unk_1EC761DE0, &unk_1D33E50F0);
  }

  else
  {
    v16 = v14[*(v15 + 48)];
    sub_1D336A0E8(v14);
    if (v16 != 1)
    {
      goto LABEL_13;
    }
  }

  v17 = *a1;
  v18 = *(a1 + 32);
  if (v18 > 8)
  {
    goto LABEL_9;
  }

  if (((1 << v18) & 0x1B0) != 0)
  {
LABEL_10:
    v20 = sub_1D33DDDB4();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    sub_1D331E880(v10, &qword_1EC7612B0, qword_1D33E2830);
    return 0;
  }

  v19 = *(a1 + 8);
  if (v18 != 3 && v18 != 6)
  {
LABEL_9:
    if (v18 < 2)
    {
      goto LABEL_10;
    }

    v19 = *a1;
  }

  v21 = v19;
  sub_1D33DE0B4();

  v22 = sub_1D33DDDB4();
  (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
  sub_1D331E880(v10, &qword_1EC7612B0, qword_1D33E2830);
LABEL_13:
  v23 = *(v1 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_requestHandler);
  if (RequestsHandler.isItemUnknownParticipant(_:)(a1))
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D332A828(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_1D3329070(v6, v26 + v25, type metadata accessor for RecentsItem);

    v27 = sub_1D33DE784();
    aBlock[4] = sub_1D336A04C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D33698FC;
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);
    v29 = [objc_opt_self() contextualActionWithStyle:0 title:v27 handler:v28];

    _Block_release(v28);

    v30 = objc_opt_self();
    v31 = sub_1D33DE784();
    v32 = [v30 __systemImageNamedSwift_];

    [v29 setImage_];
    v33 = [objc_opt_self() systemBlueColor];
    [v29 setBackgroundColor_];

    return v29;
  }

  return 0;
}

void sub_1D3368F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
    swift_beginAccess();
    v13 = *&v11[v12];
    *&v11[v12] = a2;

    v14 = a2;
    sub_1D3369054(a6);
    v15 = &v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
    v16 = *&v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
    v17 = *&v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler + 8];
    *v15 = a3;
    *(v15 + 1) = a4;
    sub_1D331EEDC(v16);
  }
}

void sub_1D3369054(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v79 - v6;
  v8 = type metadata accessor for CallInfo(0);
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v11) = *(a1 + 32) - 4;
  v85 = v10;
  if (v11 <= 2)
  {
    v12 = *a1;
    v87 = sub_1D33D5B88(v12);
    v14 = v13;
    v86 = sub_1D33D6278(v12);
    v16 = v15;
    v17 = [v12 remoteParticipantHandles];
    if (v17 && (v18 = v17, sub_1D331F56C(), sub_1D331F514(), v19 = sub_1D33DEA54(), v18, v20 = sub_1D335DC7C(v19), , v20))
    {
      v21 = sub_1D336A260();
    }

    else
    {
      v21 = 0;
    }

    v24 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
    swift_beginAccess();
    v25 = [objc_opt_self() contactForRecentCall:v12 metadataCache:*(v2 + v24)];
    if (v25)
    {
      v26 = v25;
      v27 = objc_opt_self();
      v22 = v26;
      v28 = [v27 stringFromContact:v22 style:0];
      if (v28)
      {
        v29 = v28;
        v83 = sub_1D33DE7B4();
        v23 = v30;

        goto LABEL_13;
      }
    }

    else
    {

      v22 = 0;
    }

    v83 = 0;
    v23 = 0;
    goto LABEL_13;
  }

  v86 = 0;
  v87 = 0;
  v16 = 0;
  v14 = 0;
  v22 = 0;
  v83 = 0;
  v23 = 0;
  v21 = 0;
LABEL_13:
  v31 = *a1;
  v32 = *(a1 + 32);
  if (v32 > 8)
  {
    goto LABEL_17;
  }

  if (((1 << v32) & 0x1B0) != 0)
  {
    goto LABEL_18;
  }

  v33 = *(a1 + 8);
  if (v32 != 3 && v32 != 6)
  {
LABEL_17:
    if (v32 < 2)
    {
LABEL_18:
      if (v21)
      {
        goto LABEL_19;
      }

LABEL_48:

      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v71 = sub_1D33DE464();
      __swift_project_value_buffer(v71, qword_1EDEC1480);
      v72 = sub_1D33DE444();
      v73 = sub_1D33DEAD4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1D331A000, v72, v73, "[RequestsHandlerPresenter] Could not find remote handle", v74, 2u);
        MEMORY[0x1D38B81C0](v74, -1, -1);
      }

      v75 = (v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
      v76 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
      if (v76)
      {
        v77 = v75[1];

        v76(0);

        sub_1D331EEDC(v76);
        v45 = *v75;
        v78 = v75[1];
        *v75 = 0;
        v75[1] = 0;
        goto LABEL_54;
      }

LABEL_56:
      v38 = v22;
      goto LABEL_57;
    }

    v33 = *a1;
  }

  v65 = v33;

  v87 = sub_1D33DE1B4();
  v14 = v66;
  v67 = [objc_opt_self() mainBundle];
  v68 = [v67 bundleIdentifier];

  if (v68)
  {
    v86 = sub_1D33DE7B4();
    v16 = v69;
  }

  else
  {
    v86 = 0;
    v16 = 0;
  }

  v70 = sub_1D33DE124();

  v21 = v70;
  if (!v70)
  {
    goto LABEL_48;
  }

LABEL_19:
  v34 = [v21 type];
  if (v34 != 3)
  {
    if (v34 == 2)
    {
      v80 = v14;
      v81 = v22;
      v35 = &selRef_configurationForPhoneNumber_;
      goto LABEL_23;
    }

    v42 = (v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
    v43 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
    if (v43)
    {
      v44 = v42[1];

      v43(0);

      sub_1D331EEDC(v43);
      v45 = *v42;
      v46 = v42[1];
      *v42 = 0;
      v42[1] = 0;
LABEL_54:
      sub_1D331EEDC(v45);
      v38 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
      *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v80 = v14;
  v81 = v22;
  v35 = &selRef_configurationForEmailAddress_;
LABEL_23:
  v36 = [v21 value];
  sub_1D33DE7B4();

  v37 = sub_1D33DE784();

  v38 = [objc_opt_self() *v35];

  v39 = *(a1 + 72);
  if (v39)
  {
    v40 = *(a1 + 64);
    v41 = v38;
    v39 = sub_1D33DE784();
  }

  else
  {
    v47 = v38;
  }

  [v38 setSubtitle_];

  v48 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(a1 + *(v48 + 32), v7);
  v49 = v85;
  if ((*(v84 + 48))(v7, 1, v85) != 1)
  {
    v51 = v82;
    sub_1D3329070(v7, v82, type metadata accessor for CallInfo);
    v52 = *(v51 + *(v49 + 36)) == 0;
    v53 = objc_opt_self();
    v54 = sub_1D33DE784();

    v55 = [v53 __systemImageNamedSwift_];

    [v38 setSubtitleImage_];
    sub_1D336A0E8(v51);
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_32:
    v50 = 0;
    goto LABEL_33;
  }

  sub_1D331E880(v7, &unk_1EC761DE0, &unk_1D33E50F0);
  if (!v23)
  {
    goto LABEL_32;
  }

LABEL_30:
  v50 = sub_1D33DE784();

LABEL_33:
  [v38 setSuggestedDisplayName_];

  v56 = v81;
  [v38 setContact_];
  if (v80)
  {
    v57 = sub_1D33DE784();
  }

  else
  {
    v57 = 0;
  }

  [v38 setSendingAddress_];

  if (v16)
  {
    v58 = sub_1D33DE784();
  }

  else
  {
    v58 = 0;
  }

  [v38 setSource_];

  v59 = [objc_allocWithZone(MEMORY[0x1E695D1A8]) initWithConfiguration_];
  v60 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager;
  v61 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
  *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = v59;

  v62 = *(v2 + v60);
  if (v62 && ([v62 setDelegate_], (v63 = *(v2 + v60)) != 0))
  {
    v64 = v63;
    [v64 presentAcceptedContactViewController];

    v38 = v21;
  }

  else
  {
  }

LABEL_57:
}

void sub_1D33698FC(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_1D336A244, v9);
}

void RequestsHandlerPresenter.presentAcceptUI(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler + 8);
  *v5 = a2;
  v5[1] = a3;
  sub_1D331EEDC(v6);

  sub_1D3369054(a1);
}

id RequestsHandlerPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestsHandlerPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *RequestsHandlerPresenter.presentingViewController(for:sourceView:sourceRect:)(uint64_t a1, void *a2)
{
  v2 = sub_1D336A144(a2);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.acceptedContactActionsManager(_:didRecordRecentEvent:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(1);
    sub_1D331EEDC(v2);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void RequestsHandlerPresenter.acceptedContactActionsManager(_:didCreateNewContact:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(1);
    sub_1D331EEDC(v2);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void RequestsHandlerPresenter.acceptedContactActionsManagerDidCancel(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(0);
    sub_1D331EEDC(v2);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void sub_1D336A04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RecentsItem(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_1D3368F90(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1D336A0E8(uint64_t a1)
{
  v2 = type metadata accessor for CallInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D336A144(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *a1 = v4;
    v5 = v4;
  }

  v6 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  return *(v1 + v6);
}

uint64_t dispatch thunk of RequestsHandlerPresenter.__allocating_init(presentingViewController:sourceView:sourceRect:metadataCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 144);
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, a2, v8);
}

id sub_1D336A260()
{
  v1 = [v0 type];
  if (v1 > 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = qword_1D33E29B0[v1];
  }

  v3 = [v0 value];
  if (!v3)
  {
    sub_1D33DE7B4();
    v3 = sub_1D33DE784();
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v2 value:v3];

  return v4;
}

id sub_1D336A314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D33E28A0;
  v1 = *MEMORY[0x1E695C240];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C330];
  v4 = *MEMORY[0x1E695C208];
  *(v0 + 48) = *MEMORY[0x1E695C330];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C258];
  v6 = *MEMORY[0x1E695C3D0];
  *(v0 + 64) = *MEMORY[0x1E695C258];
  *(v0 + 72) = v6;
  v7 = objc_opt_self();
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  result = [v7 descriptorForRequiredKeysForStyle_];
  *(v0 + 80) = result;
  qword_1EDEC1478 = v0;
  return result;
}

uint64_t sub_1D336A41C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) recentCalls];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v3 = sub_1D33DE8B4();

  v23 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v5 = 0;
    v6 = *MEMORY[0x1E69935E0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 serviceProvider];
      if (!v10)
      {
        sub_1D33DE7B4();
LABEL_6:

        goto LABEL_7;
      }

      v11 = v10;
      v12 = sub_1D33DE7B4();
      v14 = v13;

      v15 = sub_1D33DE7B4();
      if (!v14)
      {
        goto LABEL_6;
      }

      if (v12 == v15 && v14 == v16)
      {

LABEL_22:
        sub_1D33DEF84();
        v19 = *(v23 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
        goto LABEL_8;
      }

      v18 = sub_1D33DF1B4();

      if (v18)
      {
        goto LABEL_22;
      }

LABEL_7:

LABEL_8:
      ++v5;
      if (v9 == i)
      {
        v20 = v23;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
  {
    v21 = sub_1D33DEE14();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  return v21;
}

void sub_1D336A684(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= 5)
  {
    if (v2 == 2)
    {
      v15 = [*(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) callProviderManager];
      v16 = Message.dialRequest(with:)(v15);

      osloga = [objc_opt_self() sharedInstance];
      v17 = [osloga dialWithRequest:v16];

      goto LABEL_15;
    }

    if (v2 != 4)
    {
      return;
    }

LABEL_11:
    oslog = *a1;
    v13 = CHRecentCall.isGroupFaceTime.getter();
    v14 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
    if (v13)
    {
      [v14 performJoinRequestForRecentCall_];
    }

    else
    {
      [v14 performDialRequestForRecentCall_];
    }

LABEL_15:

    return;
  }

  if (v2 == 6)
  {
    goto LABEL_11;
  }

  if (v2 != 7)
  {
    return;
  }

  v3 = *(a1 + 8);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v18 = sub_1D33DE464();
    __swift_project_value_buffer(v18, qword_1EDEC1480);
    osloga = sub_1D33DE444();
    v19 = sub_1D33DEAD4();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D331A000, osloga, v19, "links are only included on visionOS currently, this action should not be invoked.", v20, 2u);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    goto LABEL_15;
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D33DEE14())
  {
    sub_1D33A6DF0(MEMORY[0x1E69E7CC0]);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v7 = sub_1D33DEA44();

  v8 = [v6 initWithConversationLink:v3 otherInvitedHandles:v7 sendLetMeInRequest:0];

  [v8 setVideoEnabled_];
  [v8 setOriginatingUIType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E28B0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:2];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:2];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:2];
  sub_1D336790C(inited);
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
  sub_1D33565AC(&qword_1EC761180, &unk_1EC7613D0, 0x1E69D8B68);
  v11 = sub_1D33DEA44();

  [v8 setInvitationPreferences_];

  v12 = [objc_opt_self() sharedInstance];
  [v12 launchAppForJoinRequest_];
}

void sub_1D336AB18(uint64_t a1)
{
  v3 = type metadata accessor for RecentsItem(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_1D336D080(v9, v7, type metadata accessor for RecentsItem);
      if (*(v7 + 32) - 4 >= 3)
      {
        sub_1D3367D30(v7, type metadata accessor for RecentsItem);
      }

      else
      {
        v11 = *v7;
        v12 = sub_1D3367D30(v7, type metadata accessor for RecentsItem);
        MEMORY[0x1D38B6F20](v12);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v14 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v15 = sub_1D33DE8A4();

  [v14 deleteRecentCalls_];
}

uint64_t PKRecentsController.contacts(for:keyDescriptors:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v3 = sub_1D33DE8A4();
  v4 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v3];

  if (v4)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v5 = sub_1D33DE6F4();
  }

  else
  {
    v5 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
  }

  v6 = [a1 validRemoteParticipantHandles];
  if (v6)
  {
    v7 = v6;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v8 = sub_1D33DEA54();

    v9 = a1;
    v10 = v1;
    v11 = sub_1D336C398(v8, v5, v9);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

void sub_1D336AF90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  if (*(a2 + 32) - 4 <= 2)
  {
    v9 = *a2;
    v10 = *(v2 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
    sub_1D331E818(a1, v8, &qword_1EC7612B0, qword_1D33E2830);
    v11 = sub_1D33DDDB4();
    v12 = *(v11 - 8);
    v13 = 0;
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      v13 = sub_1D33DDD64();
      (*(v12 + 8))(v8, v11);
    }

    [v10 updateReminderUUID:v13 forRecentCall:v9];
  }
}

id sub_1D336B12C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentCallProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D336B1D0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) serialQueue];

  return v1;
}

id sub_1D336B2A0(void *a1, void *a2)
{
  v4 = sub_1D33DDC44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v36 = v35 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v35 - v19;
  v35[1] = sub_1D336B874(a1, a2);
  v21 = [a1 imageURL];
  v35[0] = v8;
  if (v21)
  {
    v22 = v21;
    sub_1D33DDC24();

    (*(v5 + 56))(v18, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
  }

  sub_1D333842C(v18, v20, &unk_1EC760EA0, &qword_1D33E2210);
  v23 = sub_1D336A260();
  v24 = v36;
  sub_1D331E818(v20, v36, &unk_1EC760EA0, &qword_1D33E2210);
  v25 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
  v26 = sub_1D33DE784();

  [v25 setCompanyName_];

  [v25 setContactType_];
  sub_1D331E818(v24, v13, &unk_1EC760EA0, &qword_1D33E2210);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {

    sub_1D331E880(v24, &unk_1EC760EA0, &qword_1D33E2210);
    v24 = v20;
    v20 = v13;
  }

  else
  {
    v27 = v23;
    v28 = v35[0];
    (*(v5 + 32))(v35[0], v13, v4);
    v29 = sub_1D33DDC54();
    v30 = v4;
    v32 = v31;
    v33 = sub_1D33DDC64();
    sub_1D336D9B4(v29, v32);
    [v25 setImageData_];

    (*(v5 + 8))(v28, v30);
  }

  sub_1D331E880(v24, &unk_1EC760EA0, &qword_1D33E2210);
  sub_1D331E880(v20, &unk_1EC760EA0, &qword_1D33E2210);
  return v25;
}

uint64_t PKRecentsController.unknownContacts(for:keyDescriptors:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v3 = sub_1D33DE8A4();
  v4 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v3];

  if (v4)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v5 = sub_1D33DE6F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 validRemoteParticipantHandles];
  if (v6)
  {
    v7 = v6;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v8 = sub_1D33DEA54();

    v9 = a1;
    v10 = v1;
    sub_1D336C7A8(v8, v5, v9, v10);
    v12 = v11;

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1D336B874(uint64_t a1, void *a2)
{
  v5 = [v2 subtitleProvider];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69D8D00]) init];
  }

  v6 = [a2 value];
  if (!v6)
  {
    sub_1D33DE7B4();
    v6 = sub_1D33DE784();
  }

  v7 = [v5 localizedSubtitleForRecentCall:a1 handle:v6 contact:0];

  sub_1D33DE7B4();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1D33DDB74();

  return v10;
}

unint64_t sub_1D336B9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761408, &qword_1D33E2960);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D33378A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613E0, &qword_1D33E2938);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613E8, &unk_1D33E2940);
    v8 = sub_1D33DF124();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v10, v6, &qword_1EC7613E0, &qword_1D33E2938);
      result = sub_1D33B926C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D33DDDB4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for RecentsItem(0);
      result = sub_1D33290D8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for RecentsItem);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BD10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
    v3 = sub_1D33DF124();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
    v8 = sub_1D33DF124();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v9, v6, &qword_1EC760DC8, &qword_1D33E1B50);
      result = sub_1D33B9390(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
      sub_1D333842C(v6, v14 + *(*(v15 - 8) + 72) * v13, &qword_1EC7612B0, qword_1D33E2830);
      v16 = v8[7];
      v17 = type metadata accessor for RecentsItem(0);
      result = sub_1D33290D8(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RecentsItem);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
    v3 = sub_1D33DF124();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D331E818(v4, v13, &qword_1EC7613F8, &qword_1D33E2950);
      result = sub_1D33B95A0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D334CCF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761400, &qword_1D33E2958);
    v3 = sub_1D33DF124();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D336C398(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v3 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_35:
      sub_1D331FEEC();
      return v12;
    }

    while (1)
    {
      v29 = v16;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = v17;
        v19 = sub_1D33DF0A4();

        if (v19)
        {
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          swift_dynamicCast();
          if (v30)
          {
            goto LABEL_31;
          }
        }
      }

      else if (*(a2 + 16))
      {
        v20 = sub_1D33B9340(v17);
        if (v21)
        {
          if (*(*(a2 + 56) + 8 * v20))
          {
            goto LABEL_31;
          }
        }
      }

      if ([a3 callDirectoryIdentityType] == 2)
      {
        sub_1D336B2A0(a3, v17);
      }

      else
      {
        v22 = [v17 type];
        if (v22 > 3)
        {
          v23 = 2;
        }

        else
        {
          v23 = qword_1D33E29B0[v22];
        }

        v24 = [v17 value];
        if (!v24)
        {
          sub_1D33DE7B4();
          v24 = sub_1D33DE784();
        }

        v25 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v23 value:v24];

        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
        v17 = v25;
      }

LABEL_31:

      MEMORY[0x1D38B6F20]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v12 = v36;
      v7 = v15;
      v8 = v29;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v17 = v30;
        v15 = v7;
        v16 = v8;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1D336C7A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v76 = a4;
  v77 = a3;
  v79 = sub_1D33DDC44();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v75 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v68 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v71 = v68 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = v68 - v18;
  v94 = MEMORY[0x1E69E7CC0];
  v86 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    a2 = v86;
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    a1 = v89;
    v19 = v90;
    v20 = v91;
    v21 = v92;
    v22 = v93;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v19 = a1 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 56);

    v21 = 0;
  }

  v81 = v20;
  v26 = (v20 + 64) >> 6;
  v27 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v27 = a2;
  }

  v84 = v27;
  v85 = a2 & 0xC000000000000001;
  v73 = (v6 + 56);
  v72 = (v6 + 48);
  v70 = (v6 + 32);
  v69 = (v6 + 8);
  v83 = MEMORY[0x1E69E7CC0];
  v80 = v15;
  while (1)
  {
    if (a1 < 0)
    {
      v31 = sub_1D33DEE54();
      if (!v31 || (v87 = v31, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), (v30 = v88) == 0))
      {
LABEL_52:
        sub_1D331FEEC();
        return;
      }

      goto LABEL_20;
    }

    v28 = v21;
    v29 = v22;
    if (!v22)
    {
      break;
    }

LABEL_16:
    v22 = (v29 - 1) & v29;
    v30 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v30)
    {
      goto LABEL_52;
    }

LABEL_20:
    v32 = v86;
    if (!v86)
    {
      goto LABEL_28;
    }

    if (v85)
    {
      v33 = v30;
      v34 = sub_1D33DF0A4();

      if (!v34)
      {
        goto LABEL_28;
      }

      v87 = v34;
      sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
      swift_dynamicCast();
      v35 = v88;
      if (!v88)
      {
        goto LABEL_28;
      }

LABEL_10:
    }

    else
    {
      if (*(v86 + 16))
      {
        v36 = sub_1D33B9340(v30);
        if (v37)
        {
          v35 = *(*(v32 + 56) + 8 * v36);
          if (v35)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_28:
      v38 = v77;
      if ([v77 callDirectoryIdentityType] == 2)
      {
        v68[1] = sub_1D336B874(v38, v30);
        v83 = v39;
        v40 = [v38 imageURL];
        if (v40)
        {
          v41 = v71;
          v42 = v40;
          sub_1D33DDC24();

          v43 = 0;
          v44 = v79;
        }

        else
        {
          v43 = 1;
          v44 = v79;
          v41 = v71;
        }

        (*v73)(v41, v43, 1, v44);
        v49 = v41;
        v50 = v78;
        sub_1D333842C(v49, v78, &unk_1EC760EA0, &qword_1D33E2210);
        v51 = [v30 type];
        if (v51 > 3)
        {
          v52 = 2;
        }

        else
        {
          v52 = qword_1D33E29B0[v51];
        }

        v53 = [v30 value];
        if (!v53)
        {
          sub_1D33DE7B4();
          v53 = sub_1D33DE784();
          v50 = v78;
        }

        v54 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v52 value:v53];

        sub_1D331E818(v50, v80, &unk_1EC760EA0, &qword_1D33E2210);
        v55 = objc_allocWithZone(MEMORY[0x1E695CF18]);
        v68[0] = v54;
        v56 = [v55 _initWithHandle_];
        v57 = sub_1D33DE784();

        [v56 setCompanyName_];

        [v56 setContactType_];
        v83 = v56;

        v58 = v80;
        v59 = v74;
        sub_1D331E818(v80, v74, &unk_1EC760EA0, &qword_1D33E2210);
        v60 = v79;
        if ((*v72)(v59, 1, v79) == 1)
        {

          sub_1D331E880(v58, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v78, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v59, &unk_1EC760EA0, &qword_1D33E2210);
        }

        else
        {
          (*v70)(v75, v59, v60);
          v61 = v82;
          v62 = sub_1D33DDC54();
          if (v61)
          {

            v64 = 0;
            v82 = 0;
          }

          else
          {
            v82 = 0;
            v65 = v62;
            v66 = v63;
            v64 = sub_1D33DDC64();
            sub_1D336D9B4(v65, v66);
          }

          [v83 setImageData_];

          (*v69)(v75, v79);
          sub_1D331E880(v80, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v78, &unk_1EC760EA0, &qword_1D33E2210);
        }
      }

      else
      {
        v45 = [v30 type];
        if (v45 > 3)
        {
          v46 = 2;
        }

        else
        {
          v46 = qword_1D33E29B0[v45];
        }

        v47 = [v30 value];
        if (!v47)
        {
          sub_1D33DE7B4();
          v47 = sub_1D33DE784();
        }

        v48 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v46 value:v47];

        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
        v30 = v48;
      }

      MEMORY[0x1D38B6F20]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v67 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v83 = v94;
    }
  }

  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_52;
    }

    v29 = *(v19 + 8 * v21);
    ++v28;
    if (v29)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1D336D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D336D0E8(void *a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  v76 = *(v2 - 8);
  v3 = *(v76 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - v6;
  v8 = sub_1D33DE3B4();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D33DE3E4();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = [a1 recentCalls];
  if (v18)
  {
    v19 = v18;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v20 = sub_1D33DE8B4();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDEBF088 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v12, qword_1EDEC1458);
    v22 = v13[2];
    v67 = v12;
    v22(v16, v21, v12);
    sub_1D33DE3A4();
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1D33DE3D4();
    v25 = sub_1D33DEC04();
    v12 = v11;
    v26 = sub_1D33DE394();
    v62 = v24;
    v63 = v23;
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v24, v25, v26, "Create RecentsItems", "", v23, 2u);
    v27 = v20 >> 62 ? sub_1D33DEE14() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v16;
    v65 = v13;
    v66 = v11;
    v13 = MEMORY[0x1E69E7CC0];
    if (!v27)
    {
      break;
    }

    v16 = 0;
    v79 = v20 & 0xC000000000000001;
    v80 = 0;
    v77 = v27;
    v78 = v20 & 0xFFFFFFFFFFFFFF8;
    v72 = *MEMORY[0x1E69935B8];
    v71 = MEMORY[0x1E69E7CC0] >> 62;
    v11 = v17;
    v81 = v17;
    v73 = v7;
    v74 = v20;
    while (1)
    {
      if (v79)
      {
        v28 = MEMORY[0x1D38B75D0](v16, v20);
      }

      else
      {
        if (v16 >= *(v78 + 16))
        {
          goto LABEL_44;
        }

        v28 = *(v20 + 8 * v16 + 32);
      }

      v12 = v28;
      v29 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (([v28 isFaceTime] & 1) == 0 || (v30 = objc_msgSend(v12, sel_callStatus), v30 != v72))
      {
LABEL_26:
        v82 = [v11 itemForRecentCall:v12 presentationStyle:0];
        if (qword_1EDEBFC30 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
        v37 = sub_1D33DE8A4();
        v38 = [v11 contactByHandleForRecentCall:v12 keyDescriptors:v37];

        if (v38)
        {
          v17 = 0x1E6993578uLL;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v39 = sub_1D33DE6F4();
        }

        else
        {
          v39 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
        }

        v40 = v13;
        v41 = [v12 validRemoteParticipantHandles];
        if (v41)
        {
          v42 = v41;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v43 = sub_1D33DEA54();

          v44 = v12;
          v45 = v11;
          v17 = v80;
          v46 = sub_1D336C398(v43, v39, v44);
          v80 = v17;

          swift_bridgeObjectRelease_n();
        }

        else
        {

          v46 = MEMORY[0x1E69E7CC0];
        }

        v47 = v75;
        RecentsItem.init(from:recentsItem:contacts:)(v12, v82, v46, v75);
        v7 = v73;
        sub_1D33290D8(v47, v73, type metadata accessor for RecentsItem);
        v13 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_1D33226AC(0, v40[2] + 1, 1, v40);
        }

        v11 = v81;
        v20 = v74;
        v12 = v13[2];
        v50 = v13[3];
        if (v12 >= v50 >> 1)
        {
          v13 = sub_1D33226AC(v50 > 1, v12 + 1, 1, v13);
        }

        v13[2] = v12 + 1;
        sub_1D33290D8(v7, v13 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v12, type metadata accessor for RecentsItem);
        goto LABEL_39;
      }

      v31 = [v12 remoteParticipantHandles];
      if (v31)
      {
        v32 = v31;
        v17 = 0x1E6993578uLL;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v33 = sub_1D33DEA54();

        if ((v33 & 0xC000000000000001) != 0)
        {
          goto LABEL_20;
        }
      }

      else if (v71 && (v35 = MEMORY[0x1E69E7CC0], sub_1D33DEE14()))
      {
        sub_1D33A72F4(v35);
        v33 = v36;
        if ((v36 & 0xC000000000000001) != 0)
        {
LABEL_20:
          v34 = sub_1D33DEE14();
          goto LABEL_25;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
        {
          goto LABEL_20;
        }
      }

      v34 = *(v33 + 16);
LABEL_25:
      v11 = v81;

      if (v34)
      {
        goto LABEL_26;
      }

      v49 = v77;
LABEL_39:
      ++v16;
      if (v29 == v49)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_42:
  v51 = sub_1D33DEBF4();
  v52 = v66;
  v53 = sub_1D33DE394();
  v54 = v51;
  v55 = v62;
  v56 = v63;
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v62, v54, v53, "Create RecentsItems", "", v63, 2u);

  MEMORY[0x1D38B81C0](v56, -1, -1);

  (*(v68 + 8))(v52, v69);
  (v65[1])(v64, v67);
  v57 = v70;
  v58 = *(v70 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItems);
  *(v70 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItems) = v13;

  v59 = *(v57 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItemsUpdateTrigger);

  sub_1D33DE4C4();
}

uint64_t sub_1D336D9B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D336DA30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[10];
  v6 = v3[11];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1D336DB60(v4);
}

uint64_t sub_1D336DA84(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[9];
  v7 = v5[10];
  v8 = v5[11];
  v5[9] = v2;
  v5[10] = v3;
  v5[11] = v4;
  sub_1D336DB60(v2);
  return sub_1D33717A8(v6);
}

uint64_t sub_1D336DB10@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1D336DB60(v3);
}

uint64_t sub_1D336DB60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D336DBAC(uint64_t a1)
{
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "SearchManager: Cancelling old search task", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  if (a1)
  {

    sub_1D33DE9D4();
  }
}

char *SearchManager.__allocating_init(recentsController:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1D3371580(a1);

  return v5;
}

char *SearchManager.init(recentsController:)(void *a1)
{
  v2 = sub_1D3371580(a1);

  return v2;
}

uint64_t sub_1D336DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D33DE664();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(v3 + 96);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  aBlock[4] = sub_1D337179C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  sub_1D3372394(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  sub_1D33DED64();
  v12 = sub_1D33DE6D4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D33DE6B4();

  sub_1D3370ED8(v15);
}

uint64_t sub_1D336DF60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D336DFDC(a2, a3, a4);
  }

  return result;
}

void sub_1D336DFDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v56 - v14;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D33DE464();
  __swift_project_value_buffer(v16, qword_1EC762160);

  v17 = sub_1D33DE444();
  v18 = sub_1D33DEAF4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v58 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v57 = v15;
    v22 = v21;
    v59 = v21;
    *v20 = 136315394;
    v23 = a1;
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      a1 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = sub_1D3328B48(a1, v24, &v59);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_1D331DA18(0, &unk_1EC761570, 0x1E69DCF30);
    v27 = MEMORY[0x1D38B6F50](a3, v26);
    v29 = sub_1D3328B48(v27, v28, &v59);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_1D331A000, v17, v18, "SearchViewController: Performing Search for searchText: %s searchTokens: %s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    v15 = v57;
    MEMORY[0x1D38B81C0](v30, -1, -1);
    v31 = v20;
    v11 = v58;
    MEMORY[0x1D38B81C0](v31, -1, -1);
  }

  else
  {
    v23 = a1;
  }

  v32 = v4[7];
  sub_1D33DE4F4();
  if (a2)
  {
    if (!v60)
    {
      goto LABEL_21;
    }

    if (v59 == v23 && v60 == a2)
    {
    }

    else
    {
      v33 = sub_1D33DF1B4();

      if ((v33 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v60)
  {

    goto LABEL_21;
  }

  v34 = v4[8];

  v36 = sub_1D3374154(v35, a3);

  if (v36)
  {
    v37 = sub_1D33DE444();
    v38 = sub_1D33DEAF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D331A000, v37, v38, "SearchTableDataSource: Aborting new search as text and tokens unchanged", v39, 2u);
      MEMORY[0x1D38B81C0](v39, -1, -1);
    }

    return;
  }

LABEL_21:
  v40 = v23;
  v59 = v23;
  v60 = a2;
  sub_1D33DE4E4();
  v41 = v4[8];
  v4[8] = a3;

  v42 = sub_1D33DE444();
  v43 = sub_1D33DEAF4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1D331A000, v42, v43, "SearchTableDataSource: Setting new search task", v44, 2u);
    MEMORY[0x1D38B81C0](v44, -1, -1);
  }

  sub_1D33DDD24();
  v45 = sub_1D33DDD34();
  (*(*(v45 - 8) + 56))(v15, 0, 1, v45);
  v46 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime;
  swift_beginAccess();
  sub_1D3371CF4(v15, v4 + v46);
  swift_endAccess();
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E7CC0];
  v47[2] = MEMORY[0x1E69E7CC0];
  v47[3] = v48;
  v47[4] = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  sub_1D33DE984();
  v50 = sub_1D33DE9B4();
  (*(*(v50 - 8) + 56))(v11, 0, 1, v50);
  sub_1D33DE974();

  v51 = sub_1D33DE964();
  v52 = swift_allocObject();
  v53 = MEMORY[0x1E69E85E0];
  v52[2] = v51;
  v52[3] = v53;
  v52[4] = v4;
  v52[5] = v40;
  v52[6] = a2;
  v52[7] = a3;
  v52[8] = v47;
  v52[9] = v49;
  v54 = sub_1D333DD88(0, 0, v11, &unk_1D33E2B78, v52);
  v55 = v4[13];
  v4[13] = v54;

  sub_1D336DBAC(v55);
}

uint64_t sub_1D336E5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-v8];
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v10 = *(a1 + 16);

    sub_1D33DE9D4();
  }

  v11 = sub_1D33DE9B4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D33DE974();

  v12 = sub_1D33DE964();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  v15 = sub_1D333DD88(0, 0, v9, &unk_1D33E2BC8, v13);
  swift_beginAccess();
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;
}

uint64_t sub_1D336E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1D33DEFE4();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_1D33DE974();
  v5[13] = sub_1D33DE964();
  v10 = sub_1D33DE914();
  v5[14] = v10;
  v5[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D336E89C, v10, v9);
}

uint64_t sub_1D336E89C()
{
  v1 = *(v0 + 96);
  sub_1D33DF214();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1D336E968;
  v3 = *(v0 + 96);

  return sub_1D33710C8(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D336E968()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {
    v7 = sub_1D336EBE4;
  }

  else
  {
    v7 = sub_1D336EAF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D336EAF0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];

  swift_beginAccess();
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  swift_beginAccess();
  v7 = v3[9];
  v8 = v3[10];
  v9 = v3[11];
  v3[9] = v5;
  v3[10] = v4;
  v3[11] = v6;

  sub_1D33717A8(v7);
  v10 = v3[6];
  sub_1D33DE4C4();
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D336EBE4()
{
  v1 = v0[17];
  v2 = v0[13];

  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D336EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v8[9] = sub_1D33DE974();
  v8[10] = sub_1D33DE964();
  v10 = sub_1D33DE914();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D336ED08, v10, v9);
}

uint64_t sub_1D336ED08()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v14 = *(v0 + 24);
  v15 = *(v0 + 48);
  v4 = sub_1D33DE964();
  *(v0 + 104) = v4;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = v14;
  *(v5 + 32) = v3;
  *(v5 + 40) = v15;
  *(v5 + 56) = v2;
  v6 = *(MEMORY[0x1E69E87D8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1D336EE34;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E85E0];
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v8, v9, v11, v4, v10, &unk_1D33E2B88, v5, v12);
}

uint64_t sub_1D336EE34()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D336EF94, v6, v5);
}

uint64_t sub_1D336EF94()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D336EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  sub_1D33DE974();
  v8[13] = sub_1D33DE964();
  v11 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D336F0D0, v11, v10);
}

uint64_t sub_1D336F0D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v22 = v0[5];

  v24 = sub_1D33DE9B4();
  v23 = *(*(v24 - 8) + 56);
  v23(v2, 1, 1, v24);
  v9 = v8[3];
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v5;
  v10[6] = v6;
  v10[7] = v4;
  v10[8] = v3;
  v10[9] = v8;
  v10[10] = v9;

  v11 = v9;

  sub_1D336F7A4(v2, &unk_1D33E2B98, v10);
  sub_1D331E880(v2, &unk_1EC7610E0, &qword_1D33E16C0);
  v23(v2, 1, 1, v24);
  v12 = v8[4];
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v7;
  v13[5] = v5;
  v13[6] = v6;
  v13[7] = v4;
  v13[8] = v3;
  v13[9] = v8;
  v13[10] = v12;

  v14 = v12;
  sub_1D336F7A4(v2, &unk_1D33E2BA8, v13);
  sub_1D331E880(v2, &unk_1EC7610E0, &qword_1D33E16C0);
  v23(v2, 1, 1, v24);
  v15 = v8[5];
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v7;
  v16[5] = v5;
  v16[6] = v6;
  v16[7] = v4;
  v16[8] = v3;
  v16[9] = v8;
  v16[10] = v15;

  sub_1D336F7A4(v2, &unk_1D33E2BB8, v16);
  sub_1D331E880(v2, &unk_1EC7610E0, &qword_1D33E16C0);
  swift_beginAccess();
  if (*(v3 + 16))
  {
    v17 = *(v3 + 16);

    sub_1D33DE9D4();
  }

  v18 = v0[12];
  v19 = *(v0[6] + 48);
  sub_1D33DE4C4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D336F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336F464, 0, 0);
}

uint64_t sub_1D336F464()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336F4F8, v2, v1);
}

uint64_t sub_1D336F4F8()
{
  v1 = *(v0[14] + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_dataSource);
  sub_1D3375E8C();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1D336F5AC;
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];

  return CallsSearchManager.search(with:searchTokens:)(v6, v4, v5);
}

uint64_t sub_1D336F5AC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D336F6CC, v4, v3);
}

uint64_t sub_1D336F6CC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  v6 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  v7 = *(v2 + v6);
  swift_beginAccess();
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  sub_1D336E5FC(v3, v4, v5);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D336F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  sub_1D33723DC(a1, v22 - v10);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1D33DE914();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D33DE9A4();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1D336F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336F9E0, 0, 0);
}

uint64_t sub_1D336F9E0()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336FA74, v2, v1);
}

uint64_t sub_1D336FA74()
{
  v1 = *(v0[14] + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_dataSource);
  sub_1D3375E8C();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1D336FB28;
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];

  return VoicemailSearchManager.search(with:searchTokens:)(v6, v4, v5);
}

uint64_t sub_1D336FB28()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D336FC48, v4, v3);
}

uint64_t sub_1D336FC48()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  v6 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v7 = *(v2 + v6);
  swift_beginAccess();
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  sub_1D336E5FC(v3, v4, v5);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D336FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336FD54, 0, 0);
}

uint64_t sub_1D336FD54()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336FDE8, v2, v1);
}

uint64_t sub_1D336FDE8()
{
  v17 = v0;
  v1 = *(v0[14] + 56);
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762148);

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_1D33C3880();
    v9 = sub_1D3328B48(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v3, v4, "Search cancelled for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1D336FFC4;
  v11 = v0[14];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[8];

  return ContactSearchManager.search(with:searchTokens:)(v14, v12, v13);
}

uint64_t sub_1D336FFC4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D33700E4, v4, v3);
}

uint64_t sub_1D33700E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  swift_beginAccess();
  v6 = *(v2 + 16);
  swift_beginAccess();
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  sub_1D336E5FC(v3, v4, v5);
  v8 = v0[1];

  return v8();
}

uint64_t SearchManager.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_1D33717A8(*(v0 + 72));
  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  sub_1D331E880(v0 + OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime, &qword_1EC760E10, &unk_1D33E1A90);
  v9 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_logger;
  v10 = sub_1D33DE464();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t SearchManager.__deallocating_deinit()
{
  SearchManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void SearchManager.redial(item:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 32);
  if (v4 == 2)
  {
    v8 = [*(v2 + 16) callProviderManager];
    v9 = Message.dialRequest(with:)(v8);

    v11 = [objc_opt_self() sharedInstance];
    v10 = [v11 dialWithRequest_];
  }

  else if (v4 == 4)
  {
    v5 = CHRecentCall.isGroupFaceTime.getter();
    v6 = *(v2 + 16);
    if (v5)
    {
      v7 = sel_performJoinRequestForRecentCall_;
    }

    else
    {
      v7 = sel_performDialRequestForRecentCall_;
    }

    [v6 v7];
  }
}

void SearchManager.dialAudio(contactResult:)(void *a1)
{
  v1 = sub_1D337049C(a1, 0, 0);
  if (v1)
  {
    v2 = v1;
    v4 = [objc_opt_self() sharedInstance];
    v3 = [v4 dialWithRequest_];
  }
}

id sub_1D337049C(void *a1, char a2, void *a3)
{
  v7 = [*(v3 + 16) callProviderManager];
  v8 = [a1 contact];
  v9 = [a1 preferredPhoneNumber];
  if (a2 & 1 | (a3 != 0))
  {
    v10 = &selRef_faceTimeProvider;
  }

  else
  {
    v10 = &selRef_telephonyProvider;
  }

  v11 = [v7 *v10];
  v12 = objc_opt_self();
  if ([v12 supportsTelephonyCalls])
  {
    if ([v12 isRelayCallingEnabled])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 isThumperCallingEnabled];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1 && (v13 & 1) == 0)
  {
    v16 = [v7 faceTimeProvider];

    v11 = v16;
  }

  if ((a2 & 1) == 0)
  {
    if (v9)
    {
      v18 = [v9 value];
      v19 = [v18 stringValue];

      sub_1D33DE7B4();
    }

    else
    {
      v20 = [v8 phoneNumberStrings];
      v21 = sub_1D33DE8B4();

      if (!v21[2])
      {

        return 0;
      }

      v23 = v21[4];
      v22 = v21[5];
    }

    v24 = objc_opt_self();
    v25 = sub_1D33DE784();

    v17 = [v24 normalizedHandleWithDestinationID_];

    if (v17)
    {
      goto LABEL_21;
    }

    v29 = v8;
    v30 = sub_1D33DE444();
    v31 = sub_1D33DEAF4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_1D331A000, v30, v31, "SearchManager: Cannot able to create handle for contact %@ ", v32, 0xCu);
      sub_1D331E880(v33, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v33, -1, -1);
      MEMORY[0x1D38B81C0](v32, -1, -1);
    }

    else
    {
    }

LABEL_27:

    return 0;
  }

  if (!a3)
  {

    goto LABEL_27;
  }

  v17 = a3;
LABEL_21:
  v26 = v17;
  v27 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v27 setHandle_];
  v28 = [v8 identifier];
  if (!v28)
  {
    sub_1D33DE7B4();
    v28 = sub_1D33DE784();
  }

  [v27 setContactIdentifier_];

  [v27 setVideo_];
  [v27 setOriginatingUIType_];

  return v27;
}

void sub_1D3370934(void *a1, void *a2, char a3)
{
  v3 = sub_1D337049C(a1, a3, a2);
  if (v3)
  {
    v4 = v3;
    v6 = [objc_opt_self() sharedInstance];
    v5 = [v6 dialWithRequest_];
  }
}

uint64_t sub_1D33709DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_1D33DEB74();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614D0, &qword_1D33E2C08);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D33DE464();
  v16 = __swift_project_value_buffer(v15, qword_1EC762160);
  (*(*(v15 - 8) + 16))(v1 + v14, v16, v15);
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_throttleTime) = 0x3FB999999999999ALL;
  v17 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_subject;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614D8, &qword_1D33E2C10);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1D33DE4D4();
  *(v1 + v17) = v21;
  v29 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_inputCancellable;
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_inputCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem) = 0;
  v35 = v21;

  sub_1D33DEB44();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v22 = sub_1D33DEB94();
  v34 = v22;
  v23 = sub_1D33DEB34();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_1D334CB54(&qword_1EC7614E0, &qword_1EC7614D8, &qword_1D33E2C10);
  sub_1D3372504();
  sub_1D33DE614();
  sub_1D331E880(v5, &qword_1EC760F20, &qword_1D33E2290);

  (*(v30 + 8))(v9, v31);

  swift_allocObject();
  swift_weakInit();
  sub_1D334CB54(&qword_1EC7614E8, &qword_1EC7614D0, &qword_1D33E2C08);
  v24 = v33;
  v25 = sub_1D33DE644();

  (*(v32 + 8))(v13, v24);
  v26 = *(v1 + v29);
  *(v1 + v29) = v25;

  return v1;
}

uint64_t sub_1D3370E38(uint64_t *a1)
{
  v1 = *a1;
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v2 = sub_1D33DEB94();
  sub_1D33DEBC4();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem);
    *(result + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem) = 0;
  }

  return result;
}

uint64_t sub_1D3370ED8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem;
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem))
  {
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D331A000, v5, v6, "SearchViewController: Throttling Search", v7, 2u);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }
  }

  else
  {
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v5 = sub_1D33DEB94();
    sub_1D33DEBC4();
  }

  v8 = *(v2 + v4);
  *(v2 + v4) = a1;

  v9 = *(v2 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_subject);
  return sub_1D33DE4C4();
}

uint64_t sub_1D3370FFC()
{
  v1 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_logger;
  v2 = sub_1D33DE464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_subject);

  v4 = *(v0 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_inputCancellable);

  v5 = *(v0 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33710C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D33DEFD4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D33711C8, 0, 0);
}

uint64_t sub_1D33711C8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D33DEFE4();
  v7 = sub_1D3372394(&qword_1EDEBEE38, MEMORY[0x1E69E8820]);
  sub_1D33DF1F4();
  sub_1D3372394(&unk_1EDEBEE40, MEMORY[0x1E69E87E8]);
  sub_1D33DEFF4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D3371358;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D3371358()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D3371514, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D3371514()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

char *sub_1D3371580(void *a1)
{
  v2 = v1;
  type metadata accessor for ContactSearchManager();
  swift_allocObject();
  *(v1 + 5) = sub_1D33C6344(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 6) = sub_1D33DE4D4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614C8, &unk_1D33E2BF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1D33DE504();
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 7) = v10;
  *(v1 + 8) = v11;
  v12 = type metadata accessor for Throttle(0);
  *(v1 + 10) = 0;
  *(v1 + 11) = 0;
  *(v1 + 9) = 0;
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + 12) = sub_1D33709DC();
  *(v1 + 13) = 0;
  v15 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime;
  v16 = sub_1D33DDD34();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_logger;
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v18 = sub_1D33DE464();
  v19 = __swift_project_value_buffer(v18, qword_1EC762148);
  (*(*(v18 - 8) + 16))(&v2[v17], v19, v18);
  *(v2 + 2) = a1;
  v20 = objc_allocWithZone(type metadata accessor for CallsSearchManager());
  v21 = a1;
  *(v2 + 3) = sub_1D33726D4(v21);
  v22 = [v21 callProviderManager];
  v23 = objc_allocWithZone(type metadata accessor for VoicemailSearchManager());
  *(v2 + 4) = sub_1D337EF48(v22);
  return v2;
}

uint64_t sub_1D33717A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of SearchResultsProviding.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D334D4B4;

  return v15(a1, a2, a3, a4, a5);
}