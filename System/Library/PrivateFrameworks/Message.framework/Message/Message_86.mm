uint64_t _s13IMAP2Protocol9NamespaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a2 == a5 && a3 == a6)
    {
      return 1;
    }

    else
    {
      return sub_1B0E46A78();
    }
  }

  else
  {
    v8 = (result + 32);
    v9 = (a4 + 32);
    while (v6)
    {
      if (*v8 != *v9)
      {
        return 0;
      }

      ++v8;
      ++v9;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (!*(a1 + 16))
  {
    return v5;
  }

  if (a2 == 2573 && a3 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = 10;
    goto LABEL_11;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((sub_1B0E44818() & 1) == 0)
  {
    goto LABEL_20;
  }

  result = sub_1B0C04CF0(a2, a3);
  if ((result & 0x100000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_20:

    return v5;
  }

  result = sub_1B0C04CF0(a2, a3);
  if ((result & 0x100000000) == 0)
  {
    v6 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_11:
      v8 = *(v5 + 2);
      if (v8)
      {
        v9 = v5[v8 + 31];

        if (v9 == v6)
        {
          return v5;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B0C0C114(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1B0C0C114((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v6;
      return v5;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B0CF9928()
{
  result = qword_1EB6E64C8;
  if (!qword_1EB6E64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64C8);
  }

  return result;
}

unint64_t sub_1B0CF997C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = a5 >> 1;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v9;
  v10 = 4 * v9;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v31 = 4 << v11;
  while (1)
  {
    if (v5 == v8)
    {
      v14 = 0;
      v15 = v8;
      goto LABEL_11;
    }

    if (v5 < a4 || v5 >= v8)
    {
      break;
    }

    v14 = *(a3 + v5);
    v15 = v5 + 1;
LABEL_11:
    v16 = result >> 14;
    v17 = result >> 14 == v10;
    if (result >> 14 == v10)
    {
      v18 = 0;
      if (v5 == v8)
      {
        return v17;
      }

      goto LABEL_30;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v12)
    {
      v24 = result;
      v25 = sub_1B0A6D6C4(result, a1, a2);
      v12 = v31;
      v7 = a1;
      v20 = v25;
      result = v24;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v35)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v26 = sub_1B0E44E08();
      v12 = v31;
      v7 = a1;
      v18 = v26;
      result = v28;
      if (v19 == v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v36[0] = v7;
        v36[1] = v30;
        v22 = v36;
      }

      else
      {
        v22 = v29;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v23 = sub_1B0E46368();
          v12 = v31;
          v7 = a1;
          v22 = v23;
          result = v27;
        }
      }

      v18 = *(v22 + v21);
      if (v19 == v12)
      {
LABEL_27:
        result = sub_1B0A6D6C4(result, a1, a2);
        v12 = v31;
        v7 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v8)
          {
            return v17;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v35 <= result >> 16)
    {
      goto LABEL_35;
    }

    result = sub_1B0E44DD8();
    v12 = v31;
    v7 = a1;
    if (v5 == v8)
    {
      return v17;
    }

LABEL_30:
    v17 = 0;
    if (v16 != v10)
    {
      v5 = v15;
      if (v14 == v18)
      {
        continue;
      }
    }

    return v17;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1B0CF9BB8()
{
  result = qword_1EB6E64D0;
  if (!qword_1EB6E64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64D0);
  }

  return result;
}

uint64_t sub_1B0CF9C1C(uint64_t a1)
{
  v3 = type metadata accessor for SelectParameter(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30 = v1;
  v38 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  sub_1B0CEF5DC(0, v8, 0);
  v9 = v38;
  v10 = v32 + 56;
  v11 = -1 << *(v32 + 32);
  result = sub_1B0E460B8();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 64;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v37 = *(v14 + 36);
    v19 = v14;
    swift_storeEnumTagMultiPayload();
    v38 = v9;
    v20 = v7;
    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1B0CEF5DC(v21 > 1, v22 + 1, 1);
      v9 = v38;
    }

    *(v9 + 16) = v22 + 1;
    result = sub_1B0CFD0B8(v20, v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22, type metadata accessor for SelectParameter);
    v16 = 1 << *(v19 + 32);
    if (v13 >= v16)
    {
      goto LABEL_22;
    }

    v14 = v19;
    v10 = v34;
    v23 = *(v34 + 8 * v18);
    if ((v23 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_24;
    }

    v7 = v20;
    v24 = v23 & (-2 << (v13 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
    }

    else
    {
      v25 = v18 << 6;
      v26 = v18 + 1;
      v27 = (v31 + 8 * v18);
      v17 = v33;
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1B0425168(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v13, v37, 0);
      v14 = v32;
    }

LABEL_4:
    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v9;
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

uint64_t ClientCommandEncoder.encode(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(__int128 *)@<X8>)
{
  v5[16] = a1;
  v6 = HIDWORD(a1);
  v7 = a2;
  return sub_1B0CFA5E8(sub_1B0CF244C, v5, a3 & 0x101FF, a4);
}

uint64_t ClientCommandEncoder.idle(tag:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v61 = a3;
  v62 = a1;
  v4 = a2 & 0x100;
  v5 = HIWORD(a2) & 1;
  v55 = type metadata accessor for CommandStreamPart();
  v6 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E44B68();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = type metadata accessor for TaggedCommand();
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1B0E443C8();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v52 - v17;
  v18 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = qword_1B0EE7350[v3];
  v22 = *(v18 + 4) | (*(v18 + 10) << 32) | (*(v18 + 22) << 48);
  v54 = v4 << 24;
  v23 = v54 | v21;

  v56 = v5;
  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v24, v20, v22, v23 | 1, 0, v5, v69);
  *&v67[0] = sub_1B0D0D4B0(v62 & 0xFFFFFFFF000000FFLL);
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v25 = sub_1B0E44B08();
  v27 = v26;

  if (v27)
  {
    v29 = v3;
    v30 = *(v53 + 20);
    type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    v12->_countAndFlagsBits = v25;
    v12->_object = v27;
    CommandEncodeBuffer.writeCommand(_:)(v12);
    sub_1B0CFD058(v12, type metadata accessor for TaggedCommand);
    v31 = EncodeBuffer.nextChunk()();
    v33 = v32;
    swift_beginAccess();
    v34 = *(v31 + 24) + ((v33 >> 24) & 0xFFFF00 | BYTE6(v33));
    v35 = v58;
    sub_1B0E44358();

    v67[0] = v69[0];
    v67[1] = v69[1];
    v68[0] = v70[0];
    *(v68 + 9) = *(v70 + 9);
    sub_1B0CFBECC(v67);
    v36 = *v18;
    v37 = v18[1];
    v38 = *(v18 + 4) | (*(v18 + 10) << 32) | (*(v18 + 22) << 48);
    v39 = v54 | qword_1B0EE7350[v29];

    CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v40, v37, v38, v39 | 1, 0, v56, v65);
    v41 = v57;
    swift_storeEnumTagMultiPayload();
    CommandEncodeBuffer.writeCommandStream(_:)(v41);
    sub_1B0CFD058(v41, type metadata accessor for CommandStreamPart);
    v42 = EncodeBuffer.nextChunk()();
    v44 = v43;
    swift_beginAccess();
    v45 = *(v42 + 24) + ((v44 >> 24) & 0xFFFF00 | BYTE6(v44));
    v46 = v59;
    sub_1B0E44358();

    v63[0] = v65[0];
    v63[1] = v65[1];
    v64[0] = v66[0];
    *(v64 + 9) = *(v66 + 9);
    sub_1B0CFBECC(v63);
    v48 = v60;
    v47 = v61;
    (*(v13 + 16))(v61, v35, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E63C0, &qword_1B0EE61E8);
    v49 = *(v13 + 72);
    v50 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1B0EC1E70;
    (*(v13 + 32))(v51 + v50, v46, v48);
    (*(v13 + 8))(v35, v48);
    result = type metadata accessor for ClientCommand.Encoded();
    *(v47 + *(result + 20)) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CFA488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CommandStreamPart();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0CFC5A8(a2 & 0xFFFFFFFF000000FFLL, a3);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1B0CFD120(v12, v9, type metadata accessor for CommandStreamPart);
      CommandEncodeBuffer.writeCommandStream(_:)(v9);
      sub_1B0CFD058(v9, type metadata accessor for CommandStreamPart);
      v12 += v13;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1B0CFA5E8@<X0>(void (*a1)(__int128 *)@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(__int128 *)@<X8>)
{
  v4 = a3;
  v37 = a2;
  v38 = a1;
  v6 = HIWORD(a3) & 1;
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v13 = v12[1];
  v14 = qword_1B0EE7380[v4];
  v15 = qword_1B0EE7398[v4];
  v16 = *(v12 + 4) | (*(v12 + 10) << 32) | (*(v12 + 22) << 48);
  v17 = 0x100000001;
  if ((v4 & 0x100) == 0)
  {
    v17 = 1;
  }

  v18 = v17 | qword_1B0EE7368[v4];
  v19 = v14 | v15;
  v20 = *v12;

  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v21, v13, v16, v18 | v19, 0, v6, &v42);
  v38(&v42);
  v22 = EncodeBuffer.nextChunk()();
  v24 = v23;
  swift_beginAccess();
  v25 = *(v22 + 24) + ((v24 >> 24) & 0xFFFF00 | BYTE6(v24));
  sub_1B0E44358();
  v26 = *(type metadata accessor for ClientCommand.Encoded() + 20);
  v38 = a4;
  *(a4 + v26) = MEMORY[0x1E69E7CC0];
  if ((v24 & 0x100000000000000) != 0)
  {
    v27 = v26;
    v37 = v22;
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = EncodeBuffer.nextChunk()();
      v31 = v30;
      swift_beginAccess();
      v32 = *(v29 + 24) + ((v31 >> 24) & 0xFFFF00 | BYTE6(v31));
      sub_1B0E44358();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1B0D05474(0, v28[2] + 1, 1, v28);
      }

      v34 = v28[2];
      v33 = v28[3];
      if (v34 >= v33 >> 1)
      {
        v28 = sub_1B0D05474(v33 > 1, v34 + 1, 1, v28);
      }

      v28[2] = v34 + 1;
      (*(v8 + 32))(v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v11, v7);
    }

    while ((v31 & 0x100000000000000) != 0);
    *(v38 + v27) = v28;
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1B0CFBECC(&v39);
  }

  else
  {
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1B0CFBECC(&v39);
  }
}

uint64_t sub_1B0CFA934()
{
  result = Capability.init(_:)(0xD000000000000011, 0x80000001B0F2D460);
  static Capability.applePushService = result;
  *algn_1EB7380E8 = v1;
  qword_1EB7380F0 = v2;
  byte_1EB7380F8 = v3 & 1;
  return result;
}

uint64_t *Capability.applePushService.unsafeMutableAddressor()
{
  if (qword_1EB6DEA50 != -1)
  {
    swift_once();
  }

  return &static Capability.applePushService;
}

uint64_t static Capability.applePushService.getter()
{
  if (qword_1EB6DEA50 != -1)
  {
    swift_once();
  }

  v0 = static Capability.applePushService;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0CFAA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v92[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v92[-v9];
  v11 = type metadata accessor for ClientCommand(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v92[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0CFD120(a1, v14, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *(v14 + 2);
      v54 = *(v14 + 3);
      *a2 = *v14;
      *(a2 + 16) = v53;
      *(a2 + 24) = v54;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 2u:
      *a2 = *v14;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 3u:
      v43 = *v14;
      v44 = *(v14 + 2);
      v45 = sub_1B0CF9C1C(*(v14 + 2));

      *a2 = v43;
      *(a2 + 8) = v44;
      *(a2 + 16) = v45;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 4u:
    case 5u:
      v30 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v30;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 6u:
      v61 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v61;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 7u:
      v46 = *v14;
      v47 = *(v14 + 2);
      v48 = *(v14 + 2);
      v49 = *(v14 + 6);
      v50 = sub_1B0D05B20(MEMORY[0x1E69E7CC0]);
      *a2 = v46;
      *(a2 + 8) = v47;
      *(a2 + 16) = v48;
      *(a2 + 24) = v49;
      *(a2 + 32) = v50;
      *(a2 + 40) = v51;
      *(a2 + 48) = v52;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 8u:
      v70 = *v14;
      v71 = *(v14 + 2);
      v72 = *(v14 + 4);
      if (*v14)
      {
        v73 = *(v14 + 2);
      }

      else
      {
        v82 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
        v70 = MailboxName.init(_:)(v82, v84, v83 & 0xFFFFFFFFFFFFFFLL);
        v73 = v85;
      }

      if (!v71)
      {
        v71 = MEMORY[0x1E69E7CC0];
      }

      sub_1B0CFC440(v71);
      v87 = v86;
      v89 = v88;
      v91 = v90;

      LOBYTE(v93[0]) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0;
      *(a2 + 72) = v70;
      *(a2 + 80) = v73;
      *(a2 + 88) = v87;
      *(a2 + 96) = v89;
      *(a2 + 110) = BYTE6(v91);
      *(a2 + 108) = WORD2(v91);
      *(a2 + 104) = v91;
      *(a2 + 111) = 0;
      *(a2 + 112) = v72;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 9u:
      v36 = *(v14 + 2);
      v37 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v36;
      *(a2 + 16) = v37;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0xAu:
      v65 = *v14;

      v66 = *(v14 + 2);

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v68 = *(v67 + 64);
      sub_1B0391D50(*&v14[*(v67 + 80)], *&v14[*(v67 + 80) + 8]);
      v69 = type metadata accessor for Command();
      (*(*(v69 - 8) + 56))(a2, 1, 1, v69);
      return sub_1B0398EFC(&v14[v68], &unk_1EB6E2990, &qword_1B0E9B060);
    case 0xBu:
      *a2 = *v14;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    case 0xCu:
      v32 = *v14;
      v31 = *(v14 + 1);
      if (!*(v31 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
        v33 = *(type metadata accessor for SearchReturnOption() - 8);
        v34 = *(v33 + 72);
        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1B0EC1E70;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v32;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = v31;
      goto LABEL_26;
    case 0xDu:
      *a2 = *v14;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    case 0xEu:
      v26 = *v14;
      v25 = *(v14 + 1);
      if (!*(v25 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
        v27 = *(type metadata accessor for SearchReturnOption() - 8);
        v28 = *(v27 + 72);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1B0EC1E70;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v26;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = v25;
      goto LABEL_26;
    case 0xFu:
      v38 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48)];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = v38[16];
      sub_1B03C60A4(v14, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v41)
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64E0, &unk_1B0EE7330);
        v79 = *(type metadata accessor for FetchModifier() - 8);
        v80 = *(v79 + 72);
        v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1B0EC1E70;
        *(v42 + v81) = v40;
        swift_storeEnumTagMultiPayload();
      }

      static Command.uidFetch(messages:attributes:modifiers:)(v10, v39, v42, a2);

      return sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x10u:
      v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 1);
      sub_1B03C60A4(v14, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v23 = 256;
      if (!v21)
      {
        v23 = 0;
      }

      static Command.uidStore(messages:modifiers:data:)(v8, MEMORY[0x1E69E7CC0], v23 | v20, v22, a2);

      return sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x11u:
      v55 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v56 = *v55;
      v57 = *(v55 + 2);
      sub_1B03C60A4(v14, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      static Command.uidCopy(messages:mailbox:)(v8, v56, v57, a2);
      goto LABEL_29;
    case 0x12u:
      v62 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v63 = *v62;
      v64 = *(v62 + 2);
      sub_1B03C60A4(v14, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      static Command.uidMove(messages:mailbox:)(v8, v63, v64, a2);
LABEL_29:

      return sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x13u:
      v74 = *(v14 + 2);
      v75 = v14[24];
      *a2 = *v14;
      *(a2 + 16) = v74;
      *(a2 + 24) = v75;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x14u:
      *a2 = *v14;
      *(a2 + 8) = *(v14 + 8);
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x15u:
      v58 = *(v14 + 1);
      v93[0] = *v14;
      v93[1] = v58;
      v59 = *(v14 + 3);
      v93[2] = *(v14 + 2);
      v93[3] = v59;
      v60 = sub_1B0CFB608();
      sub_1B0A1C37C(v93);
      *a2 = 0xD000000000000011;
      *(a2 + 8) = 0x80000001B0F2D460;
      *(a2 + 16) = v60;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
LABEL_26:
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x1Du:
      v76 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v77 = *(v76 + 1);
      *a2 = *v76;
      *(a2 + 8) = v77;
      v78 = type metadata accessor for Command();
      swift_storeEnumTagMultiPayload();
      (*(*(v78 - 8) + 56))(a2, 0, 1, v78);
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    default:
      v15 = *(v14 + 1);
      v16 = *(v14 + 8);
      v17 = *(v14 + 18);
      *a2 = *v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = *(v14 + 1);
      *(a2 + 32) = v16;
      *(a2 + 36) = v17;
      *(a2 + 38) = v14[38];
      v18 = type metadata accessor for Command();
LABEL_41:
      swift_storeEnumTagMultiPayload();
      return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }
}

uint64_t *sub_1B0CFB608()
{
  v1 = v0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x737265762D737061, 0xEC000000206E6F69);
  LODWORD(v77) = *v0;
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  MEMORY[0x1B2726E80](0xD000000000000010, 0x80000001B0F2F440);
  v3 = *(v0 + 16);
  v4 = sub_1B0CFBCD8(*(v0 + 8));
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2F460);
  v5 = *(v0 + 32);
  v6 = sub_1B0CFBCD8(*(v0 + 24));
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](0x6275732D73706120, 0xEE00206369706F74);
  v7 = *(v0 + 48);
  v8 = sub_1B0CFBCD8(*(v0 + 40));
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](0x786F626C69616D20, 0xEC00000028207365);
  v9 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v11 = v10;
  v13 = v12;

  v14 = sub_1B0D054C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
LABEL_44:
    v14 = sub_1B0D054C4((v15 > 1), v17, 1, v14);
  }

  *(v14 + 2) = v17;
  v18 = &v14[24 * v16];
  *(v18 + 4) = v9 | 0x8000000000000000;
  *(v18 + 5) = v11;
  v18[54] = BYTE6(v13);
  *(v18 + 26) = WORD2(v13);
  *(v18 + 12) = v13;
  v19 = *(v1 + 56);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_37:
    v61 = v14;
    v62 = ByteBufferAllocator.buffer(string:)(41, 0xE100000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v65 = v61;
    v66 = *(v61 + 2);
    v67 = *(v65 + 3);
    if (v66 >= v67 >> 1)
    {
      v69 = v62;
      v70 = v63;
      v71 = v64;
      v72 = sub_1B0D054C4((v67 > 1), v66 + 1, 1, v65);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v62 = v69;
    }

    *(v65 + 2) = v66 + 1;
    v68 = &v65[24 * v66];
    *(v68 + 4) = v62 | 0x8000000000000000;
    *(v68 + 5) = v63;
    *(v68 + 12) = v64;
    v68[54] = BYTE6(v64);
    *(v68 + 26) = WORD2(v64);
    return v65;
  }

  v21 = 0;
  v1 = 0;
  v73 = v19 + 32;
  while (1)
  {
    v75 = v20;
    v76 = v14;
    v11 = *(v73 + v21);
    if (!v21)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v39 = *(v11 + 16);
      if (!v39)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = malloc(1uLL);
    if (!result)
    {
      break;
    }

    v13 = result;
    type metadata accessor for ByteBuffer._Storage();
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    *(v23 + 24) = v13;
    *(v23 + 32) = j__malloc;
    *(v23 + 40) = j__realloc;
    *(v23 + 48) = sub_1B0B815B8;
    *(v23 + 56) = sub_1B0439080;
    v77 = v23;
    v78 = 0;
    v79 = 1;
    v80 = 0;
    v81 = 0;
    v24 = sub_1B0CFC1B0(32, 0xE100000000000000, &v77, 0);
    if (v25)
    {
      v13 = &v77;
      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, 0);
    }

    v27 = v76;
    v15 = HIDWORD(v78);
    v28 = (HIDWORD(v78) + v24);
    if (__CFADD__(HIDWORD(v78), v24))
    {
      goto LABEL_43;
    }

    v74 = v1;
    v29 = v21;
    v30 = v11;
    v31 = v77;
    v32 = v78;
    v33 = v79;
    v34 = v80;
    v35 = v81;
    v37 = *(v76 + 2);
    v36 = *(v76 + 3);
    v13 = (v37 + 1);
    if (v37 >= v36 >> 1)
    {
      v27 = sub_1B0D054C4((v36 > 1), v37 + 1, 1, v76);
    }

    *(v27 + 2) = v13;
    v76 = v27;
    v38 = &v27[24 * v37];
    *(v38 + 4) = v31 | 0x8000000000000000;
    *(v38 + 5) = v32 | (v28 << 32);
    v38[54] = v35;
    *(v38 + 26) = v34;
    *(v38 + 12) = v33;
    v11 = v30;
    v21 = v29;
    v1 = v74;
    v39 = *(v11 + 16);
    if (!v39)
    {
LABEL_17:
      v46 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v47 = *v46;
      v48 = *(v46 + 2);
      v9 = *(v46 + 3);
      v45 = *(v46 + 4);
      v49 = *(v46 + 10);
      v50 = *(v46 + 22);

      goto LABEL_21;
    }

LABEL_12:
    if (v39)
    {
      v40 = (v39 - 1) | ((v39 - 1) >> 1) | (((v39 - 1) | ((v39 - 1) >> 1)) >> 2);
      v41 = v40 | (v40 >> 4) | ((v40 | (v40 >> 4)) >> 8);
      v42 = v41 | HIWORD(v41);
      v43 = __CFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        v45 = -1;
      }

      else
      {
        v45 = v44;
      }
    }

    else
    {
      v45 = 0;
    }

    result = malloc(v45);
    if (!result)
    {
      goto LABEL_46;
    }

    v13 = result;
    type metadata accessor for ByteBuffer._Storage();
    v51 = swift_allocObject();
    v48 = 0;
    v9 = 0;
    v49 = 0;
    v50 = 0;
    *(v51 + 16) = v45;
    *(v51 + 24) = v13;
    *(v51 + 32) = j__malloc;
    *(v51 + 40) = j__realloc;
    *(v51 + 48) = sub_1B0B815B8;
    *(v51 + 56) = sub_1B0439080;
LABEL_21:
    v77 = v51;
    v78 = __PAIR64__(v9, v48);
    v79 = v45;
    v80 = v49;
    v81 = v50;
    v17 = *(v11 + 16);
    v16 = (v9 + v17);
    if (__CFADD__(v9, v17))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v16 >= v45)
      {
        v52 = v16 - v45;
      }

      else
      {
        v52 = 0;
      }

      v53 = sub_1B03904C0();
      v13 = &v77;
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v52, v53 & 1);
    }

    v15 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      goto LABEL_41;
    }

    v13 = &v77;
    ByteBuffer._ensureAvailableCapacity(_:at:)(v17, v9);
    v16 = v77;
    v54 = v79;
    v55 = v80;
    v56 = v81;
    swift_beginAccess();
    v57 = v56 | (v55 << 8);
    LODWORD(v58) = v54 - v57;
    if (v54 - v57 >= v9)
    {
      LODWORD(v58) = v9;
    }

    if (v9)
    {
      v58 = v58;
    }

    else
    {
      v58 = 0;
    }

    memmove((*(v16 + 24) + v57 + v58), (v11 + 32), v17);

    v15 = HIDWORD(v78);
    v11 = (HIDWORD(v78) + v17);
    if (__CFADD__(HIDWORD(v78), v17))
    {
      goto LABEL_42;
    }

    v17 = v78;
    v14 = v76;
    v9 = *(v76 + 2);
    v59 = *(v76 + 3);
    v13 = (v9 + 1);
    if (v9 >= v59 >> 1)
    {
      v14 = sub_1B0D054C4((v59 > 1), v9 + 1, 1, v76);
    }

    *(v14 + 2) = v13;
    v60 = &v14[24 * v9];
    *(v60 + 4) = v16;
    *(v60 + 5) = v17 | (v11 << 32);
    v60[54] = v56;
    *(v60 + 26) = v55;
    *(v60 + 12) = v54;
    v21 += 16;
    v20 = v75 - 1;
    if (v75 == 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B0CFBCD8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  while (1)
  {
    v2 = sub_1B0E44DB8();
    if (!v3)
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return a1;
    }

    v4 = v2;
    v5 = v3;
    if (v2 == 2573 && v3 == 0xE200000000000000)
    {
      goto LABEL_30;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      goto LABEL_30;
    }

    v7 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v12 = sub_1B0E44C18();
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v9 = v4;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_1B0E46368();
        }

        v9 = *v8;
      }

      v10 = v9;
      v11 = (__clz(~v9) - 24) << 16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 65541;
      }
    }

    if (v12 >> 14 != 4 * v7)
    {
      goto LABEL_30;
    }

    result = sub_1B0C04CF0(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_35;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_30:

LABEL_31:

      return 120;
    }

    result = sub_1B0C04CF0(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

    v13 = result;

    if ((v13 & 0xFFFFFF00) != 0)
    {
      goto LABEL_34;
    }

    if (v13 - 47 <= 0xFFFFFFFD && v13 - 58 <= 0xFFFFFFF5 && (v13 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1B0CFBF20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64E8, &unk_1B0EE7340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1B0CFBFB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CFC42C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0CFC0B8(v5);
  *a1 = v2;
  return result;
}

void sub_1B0CFC01C(uint64_t a1, Swift::UInt32 a2)
{
  v3 = *(a1 + 16);
  v4 = a2 + v3;
  if (__CFADD__(a2, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v2 + 4);
      v9 = v4 >= v8;
      v10 = v4 - v8;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v11, v12 & 1);
    }

    if (!HIDWORD(v3))
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, a2);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, a2);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B0CFC0B8(uint64_t *a1)
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

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C2C134(v7, v8, a1, v4);
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
    return sub_1B0C2C064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0CFC1B0(uint64_t result, unint64_t a2, uint64_t *a3, Swift::UInt32 a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1B0E46368();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    v14 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(a3 + 4);
      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v20, v20 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

void *sub_1B0CFC2B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *(v18 + 16);
      v20 = *(v18 + 20);
      v21 = *(v18 + 22);
      v22 = *(v18 + 8);
      *v11 = *v18;
      *(v11 + 8) = v22;
      *(v11 + 16) = v19;
      *(v11 + 20) = v20;
      *(v11 + 22) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1B0CFC440(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2)
    {
      v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v5 = v4 | HIWORD(v4);
      v6 = __CFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        v8 = -1;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = malloc(v8);
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
    type metadata accessor for ByteBuffer._Storage();
    v18 = swift_allocObject();
    v11 = 0;
    *(v18 + 16) = v8;
    *(v18 + 24) = v17;
    *(v18 + 32) = j__malloc;
    *(v18 + 40) = j__realloc;
    *(v18 + 48) = sub_1B0B815B8;
    *(v18 + 56) = sub_1B0439080;
  }

  else
  {
    v9 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v10 = *v9;
    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = *(v9 + 4);
    v14 = *(v9 + 10);
    v15 = *(v9 + 22);
  }

  sub_1B0CFC01C(a1, v11);
  if (__CFADD__(v11, v19))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1B0CFC5A8(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v91 = type metadata accessor for CommandStreamPart();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v6 = (v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B0E43108();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v83 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = v79 - v11;
  v90 = type metadata accessor for ClientCommand(0);
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v87 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = v79 - v19;
  v20 = sub_1B0E44B68();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64D8, &unk_1B0EE7310);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (v79 - v26);
  v28 = type metadata accessor for Command();
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0CFAA4C(a2, v27);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
LABEL_6:
    sub_1B0CFD0B8(v27, v32, type metadata accessor for Command);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6420, &unk_1B0EE7320);
    v41 = *(v3 + 72);
    v42 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B0EC1E70;
    *&v95 = sub_1B0D0D4B0(v92 & 0xFFFFFFFF000000FFLL);
    sub_1B0E44B48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B07B517C();
    v28 = sub_1B0E44B08();
    v45 = v44;

    if (v45)
    {
      v46 = (v43 + v42);
      v47 = type metadata accessor for TaggedCommand();
      sub_1B0CFD120(v32, v43 + v42 + *(v47 + 20), type metadata accessor for Command);
      *v46 = v28;
      v46[1] = v45;
      swift_storeEnumTagMultiPayload();
      sub_1B0CFD058(v32, type metadata accessor for Command);
      return v43;
    }

    goto LABEL_31;
  }

  v82 = v23;
  sub_1B0398EFC(v27, &qword_1EB6E64D8, &unk_1B0EE7310);
  sub_1B0CFD120(a2, v14, type metadata accessor for ClientCommand);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v33 = *(v14 + 2);
    v80 = *v14;
    v81 = v33;
    v34 = *(v14 + 2);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
    v36 = *(v35 + 64);
    v37 = &v14[*(v35 + 80)];
    v39 = *v37;
    v38 = v37[1];
    v90 = v39;
    v86 = v38;
    sub_1B03C60A4(&v14[v36], v93, &unk_1EB6E2990, &qword_1B0E9B060);
    v40 = *(v34 + 16);
    if (v40)
    {
      v27 = sub_1B0B88FB4(*(v34 + 16), 0);
      v32 = sub_1B0B8C5CC(&v95, v27 + 4, v40, v34);
      v85 = *(&v96 + 1);
      v14 = v96;
      v79[1] = *&v97[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D91F8();
      if (v32 != v40)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    *&v95 = v27;
    sub_1B0CFBFB0(&v95);
    v48 = v87;

    v85 = v95;
    sub_1B06BC2F4(v93, v48);
    v49 = v88;
    v28 = v89;
    v14 = (*(v88 + 48))(v48, 1, v89);
    v50 = v86;
    if (v14 == 1)
    {
      v51 = 0;
    }

    else
    {
      v52 = v84;
      (*(v49 + 32))(v84, v48, v28);
      v53 = v83;
      (*(v49 + 16))(v83, v52, v28);
      ServerMessageDate.init(_:)(v53);
      v51 = v54;
      (*(v49 + 8))(v52, v28);
    }

    v55 = sub_1B0D05E68(MEMORY[0x1E69E7CC0]);
    v88 = v56;
    v89 = v55;
    v87 = v57;
    v58 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      if (v58 != 2)
      {
        v59 = 0;
        goto LABEL_22;
      }

      v61 = *(v90 + 16);
      v60 = *(v90 + 24);
      v59 = v60 - v61;
      if (!__OFSUB__(v60, v61))
      {
LABEL_22:
        v28 = sub_1B0D0D4B0(v92 & 0xFFFFFFFF000000FFLL);
        *&v95 = v28;
        sub_1B0E44B48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
        sub_1B07B517C();
        v62 = sub_1B0E44B08();
        v64 = v63;

        if (v64)
        {
          v100 = v62;
          v101[0] = v64;
          v101[1] = v80;
          v101[2] = v81;
          v102 = 0;
          v101[3] = 0;
          v101[4] = 0;
          LOBYTE(v95) = v14 == 1;
          v103 = v85;
          v104 = v51;
          v105 = v14 == 1;
          v106 = v89;
          v107 = v88 & 0xFFFFFFFFFFFFFF8;
          v108 = v87 & 0xFFFFFFFFFFFFFF8;
          v109 = v59;
          v65 = 4;
          v110 = 32;

          v66 = v90;
          v67 = v86;
          sub_1B03B2000(v90, v86);
          v68 = sub_1B0BD09D4(v66, v67, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
          v70 = v69;
          v72 = v71;
          sub_1B0391D50(v66, v67);
          v111 = v68;
          v112 = v70;
          v114 = 0;
          v115 = 0;
          v113 = v72 & 0xFFFFFFFFFFFFFFLL;
          v116 = 64;
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v120 = 0;
          v121 = -64;
          v122 = 2;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = -64;
          v98 = MEMORY[0x1E69E7CC0];
          sub_1B0CEF620(0, 5, 0);
          v43 = v98;
          while (1)
          {
            v73 = *&v99[v65 * 8 + 16];
            v95 = *&v99[v65 * 8];
            v96 = v73;
            v97[0] = *&v99[v65 * 8 + 32];
            v74 = v97[0];
            *(v97 + 9) = *(&v101[v65] + 1);
            v75 = *(v97 + 9);
            *v6 = v95;
            v6[1] = v73;
            v6[2] = v74;
            *(v6 + 41) = v75;
            swift_storeEnumTagMultiPayload();
            sub_1B0CFCFFC(&v95, &v94);
            v98 = v43;
            v77 = *(v43 + 16);
            v76 = *(v43 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_1B0CEF620(v76 > 1, v77 + 1, 1);
              v43 = v98;
            }

            *(v43 + 16) = v77 + 1;
            sub_1B0CFD0B8(v6, v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v77, type metadata accessor for CommandStreamPart);
            if (v65 == 36)
            {
              break;
            }

            v65 += 8;
          }

          sub_1B0398EFC(v93, &unk_1EB6E2990, &qword_1B0E9B060);
          swift_arrayDestroy();

          sub_1B0391D50(v90, v67);
          return v43;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v58)
    {
      v59 = BYTE6(v50);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v90), v90))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v59 = HIDWORD(v90) - v90;
    goto LABEL_22;
  }

LABEL_33:
  sub_1B0CFD058(v14, type metadata accessor for ClientCommand);
  sub_1B0E465B8();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0CFD058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CFD0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFD120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFD188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  for (i = (v7 + 48); ; i += 3)
  {
    if (*i && *(i - 2) == a1)
    {
      if (*(i - 1) == a2 && *i == a3)
      {
        break;
      }

      v11 = *(i - 1);
      v12 = *i;
      if (sub_1B0E46A78())
      {
        break;
      }
    }

    if (!--v8)
    {
      return 0;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

uint64_t sub_1B0CFD270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(*(v3 + 32) + 16);
  swift_beginAccess();
  if (v8)
  {
    v3 = sub_1B0441754(v8);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v4 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v8;
    if (result)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B0CFD418(v8);
  v8 = result;
  *(v4 + 32) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < v8[2])
  {
    v10 = &v8[3 * v3];
    v11 = v10[6];
    v10[4] = a1;
    v10[5] = a2;
    v10[6] = a3;
    *(v4 + 32) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B0CFD388()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0CFD3D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((v6[2] | (v6[2] << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(*v6 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CFD500(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10 = *v3;
        v11[0] = v5;
        *(v11 + 13) = *(v3 + 29);
        v6 = v4[1];
        v12 = *v4;
        v13[0] = v6;
        *(v13 + 13) = *(v4 + 29);
        sub_1B0CF21A0(&v10, v9);
        sub_1B0CF21A0(&v12, v9);
        v7 = static FetchAttribute.__derived_enum_equals(_:_:)(&v10, &v12);
        sub_1B0CF21FC(&v12);
        sub_1B0CF21FC(&v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v4 = (v4 + 40);
        v3 = (v3 + 40);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1B0CFD5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64C0, &qword_1B0EE71D0);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v45 - v13;
  v51 = type metadata accessor for MessageData.BodySection();
  v15 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (v22 && a1 != a2)
  {
    v49 = v4;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v26 = (v5 + 48);
    v27 = *(v19 + 72);
    v47 = 0;
    v48 = v27;
    v46 = (v5 + 48);
    while (1)
    {
      sub_1B0CFE9F4(v24, v21, type metadata accessor for MessageData.BodySection);
      sub_1B0CFE9F4(v25, v17, type metadata accessor for MessageData.BodySection);
      if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*v21, *(v21 + 1), v21[16], *v17, *(v17 + 1), v17[16]) & 1) == 0)
      {
LABEL_27:
        sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
        sub_1B0CFEA5C(v21, type metadata accessor for MessageData.BodySection);
        return 0;
      }

      v30 = v17[24];
      if (v21[24])
      {
        if (!v17[24])
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (*(v21 + 5) != *(v17 + 5))
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_27;
        }
      }

      v53 = v24;
      v31 = *(v51 + 24);
      v32 = *(v52 + 48);
      sub_1B0CFE984(&v21[v31], v14);
      sub_1B0CFE984(&v17[v31], &v14[v32]);
      v33 = *v26;
      v34 = v14;
      v35 = v14;
      v36 = v49;
      if ((*v26)(v34, 1, v49) == 1)
      {
        break;
      }

      sub_1B0CFE984(v35, v11);
      if (v33((v35 + v32), 1, v36) == 1)
      {
        sub_1B0CFEA5C(v11, type metadata accessor for MessageData.BodyData);
        v14 = v35;
LABEL_24:
        v43 = &qword_1EB6E64C0;
        v44 = &qword_1B0EE71D0;
LABEL_26:
        sub_1B0398EFC(v14, v43, v44);
        goto LABEL_27;
      }

      v37 = v11;
      sub_1B0CF83C0(v35 + v32, v50);
      v38 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v14 = v35;
      if (v38 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
      {
        sub_1B0CFEA5C(v50, type metadata accessor for MessageData.BodyData);
        sub_1B0CFEA5C(v11, type metadata accessor for MessageData.BodyData);
        v43 = &qword_1EB6E4178;
        v44 = &unk_1B0EE7570;
        goto LABEL_26;
      }

      sub_1B0E443C8();
      sub_1B075CEE0();
      sub_1B0E45668();
      v39 = sub_1B0E456C8();
      if (v55 == v54)
      {
        sub_1B0CFEA5C(v50, type metadata accessor for MessageData.BodyData);
        sub_1B0CFEA5C(v11, type metadata accessor for MessageData.BodyData);
        v26 = v46;
        v29 = v53;
LABEL_6:
        sub_1B0398EFC(v14, &qword_1EB6E4178, &unk_1B0EE7570);
        sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
        sub_1B0CFEA5C(v21, type metadata accessor for MessageData.BodySection);
        goto LABEL_7;
      }

      MEMORY[0x1EEE9AC00](v39);
      v40 = v50;
      *(&v45 - 2) = v50;
      *(&v45 - 1) = v37;
      v41 = v47;
      sub_1B0E44328();
      v47 = v41;
      LOBYTE(v41) = v55;
      sub_1B0CFEA5C(v40, type metadata accessor for MessageData.BodyData);
      sub_1B0CFEA5C(v37, type metadata accessor for MessageData.BodyData);
      sub_1B0398EFC(v35, &qword_1EB6E4178, &unk_1B0EE7570);
      sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
      sub_1B0CFEA5C(v21, type metadata accessor for MessageData.BodySection);
      v29 = v53;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      v11 = v37;
      v26 = v46;
LABEL_7:
      v25 += v48;
      v24 = v29 + v48;
      if (!--v22)
      {
        return 1;
      }
    }

    v28 = v33((v35 + v32), 1, v36);
    v14 = v35;
    v29 = v53;
    if (v28 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1B0CFDC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v12[0] = *v3;
        v12[1] = v5;
        v6 = v3[3];
        v12[2] = v3[2];
        v12[3] = v6;
        v7 = v4[1];
        v13[0] = *v4;
        v13[1] = v7;
        v8 = v4[3];
        v13[2] = v4[2];
        v13[3] = v8;
        sub_1B0CF22B8(v12, v11);
        sub_1B0CF22B8(v13, v11);
        v9 = static ReturnOption.__derived_enum_equals(_:_:)(v12, v13);
        sub_1B0CF2314(v13);
        sub_1B0CF2314(v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B0CFDCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      if (v6 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v6 == 2)
          {
            v8 = 0xE700000000000000;
            v7 = 0x5458454E444955;
          }

          else
          {
            v7 = 0x44494C4156444955;
            v8 = 0xEB00000000595449;
          }
        }

        else
        {
          v7 = *v3 ? 0x544E45434552 : 0x534547415353454DLL;
          v8 = *v3 ? 0xE600000000000000 : 0xE800000000000000;
        }
      }

      else if (*v3 <= 5u)
      {
        v7 = v6 == 4 ? 0x4E4545534E55 : 1163544915;
        v8 = v6 == 4 ? 0xE600000000000000 : 0xE400000000000000;
      }

      else if (v6 == 6)
      {
        v7 = 0x4D54534548474948;
        v8 = 0xED0000514553444FLL;
      }

      else if (v6 == 7)
      {
        v7 = 0x494C444E45505041;
        v8 = 0xEB0000000054494DLL;
      }

      else
      {
        v7 = 0x49584F424C49414DLL;
        v8 = 0xE900000000000044;
      }

      v9 = *i;
      if (v9 <= 3)
      {
        break;
      }

      if (*i <= 5u)
      {
        if (v9 == 4)
        {
          v12 = 0xE600000000000000;
          if (v7 != 0x4E4545534E55)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          if (v7 != 1163544915)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_55;
      }

      if (v9 == 6)
      {
        v12 = 0xED0000514553444FLL;
        if (v7 != 0x4D54534548474948)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      if (v9 == 7)
      {
        v10 = 0x494C444E45505041;
        v11 = 5523789;
LABEL_50:
        v12 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v7 != v10)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      v12 = 0xE900000000000044;
      if (v7 != 0x49584F424C49414DLL)
      {
        goto LABEL_5;
      }

LABEL_55:
      if (v8 != v12)
      {
LABEL_5:
        v5 = sub_1B0E46A78();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i <= 1u)
    {
      if (*i)
      {
        v12 = 0xE600000000000000;
        if (v7 != 0x544E45434552)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v7 != 0x534547415353454DLL)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_55;
    }

    if (v9 == 2)
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x5458454E444955)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

    v10 = 0x44494C4156444955;
    v11 = 5854281;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_1B0CFE01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1B0CFE9F4(v14, v11, type metadata accessor for SearchReturnOption);
        sub_1B0CFE9F4(v15, v7, type metadata accessor for SearchReturnOption);
        v17 = static SearchReturnOption.__derived_enum_equals(_:_:)(v11, v7);
        sub_1B0CFEA5C(v7, type metadata accessor for SearchReturnOption);
        sub_1B0CFEA5C(v11, type metadata accessor for SearchReturnOption);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t PushRegistrationInfo.accountID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.accountID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PushRegistrationInfo.deviceToken.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.deviceToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PushRegistrationInfo.subtopic.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.subtopic.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PushRegistrationInfo.mailboxes.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t PushRegistrationInfo.hash(into:)()
{
  v1 = *v0;
  sub_1B0E46C88();
  v2 = v0[1];
  v3 = v0[2];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v4 = v0[3];
  v5 = v0[4];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = v0[5];
  v7 = v0[6];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v8 = v0[7];
  v9 = *(v8 + 16);
  result = MEMORY[0x1B2728D70](v9);
  if (v9)
  {
    v11 = (v8 + 40);
    do
    {
      v12 = *v11;
      v11 += 4;
      result = MEMORY[0x1B2728D70](v12 | (v12 << 32));
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t PushRegistrationInfo.hashValue.getter()
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE4D0()
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE514()
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE550(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t PushRegistrationResponse.topic.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PushRegistrationResponse.mailboxes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static PushRegistrationResponse.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 != a6 || a3 != a7)
  {
    v9 = a4;
    v10 = a8;
    v11 = sub_1B0E46A78();
    a4 = v9;
    a8 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_1B0CFE72C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3);
}

uint64_t _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1B0E46A78() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

unint64_t sub_1B0CFE878()
{
  result = qword_1EB6E64F0;
  if (!qword_1EB6E64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64F0);
  }

  return result;
}

uint64_t sub_1B0CFE8CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0CFE914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CFE984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CFE9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFEA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0CFEABC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1B0D02788(a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1B0CEF59C(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v41;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v35 = 4 << v9;
    v12 = 15;
    v36 = v6;
    v37 = v3;
    v38 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v32 = v16;
          result = sub_1B0A6D6C4(v12, v3, a2);
          v16 = v32;
          v11 = v38;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_64;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          v19 = sub_1B0C04F4C(result, v3, a2);
          v16 = v18;
          v11 = v38;
          v17 = v19 >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_65;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_1B0E46288();
        v16 = v22;
        v11 = v38;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v21 = &v39 + v17;
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v33 = v16;
            v20 = sub_1B0E46368();
            v16 = v33;
            v11 = v38;
          }

          v21 = (v20 + v17);
        }

        result = *v21;
        if (*v21 < 0)
        {
          v31 = (__clz(result ^ 0xFF) - 24);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              result = ((result & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
            }

            else
            {
              result = ((result & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
            }
          }

          else if (v31 != 1)
          {
            result = v21[1] & 0x3F | ((result & 0x1F) << 6);
          }
        }
      }

      if (result >= 0x20)
      {
        v23 = result;
      }

      else
      {
        v23 = result | 0x2400;
      }

      v41 = v5;
      v25 = *(v5 + 16);
      v24 = *(v5 + 24);
      if (v25 >= v24 >> 1)
      {
        v34 = v16;
        result = sub_1B0CEF59C((v24 > 1), v25 + 1, 1);
        v16 = v34;
        v11 = v38;
        v5 = v41;
      }

      *(v5 + 16) = v25 + 1;
      *(v5 + 4 * v25 + 32) = v23;
      if (v16)
      {
        v10 = v35;
        v26 = v36;
        v3 = v37;
        if (v14 == v35)
        {
          result = sub_1B0A6D6C4(v12, v37, a2);
          v11 = v38;
          v12 = result;
          if (v38 <= result >> 16)
          {
            goto LABEL_66;
          }
        }

        else if (v11 <= v12 >> 16)
        {
          goto LABEL_66;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_1B0C04F4C(v12, v37, a2);
          v11 = v38;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v26 = v36;
        v3 = v37;
        v10 = v35;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_67;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1B0E44C18();
        v11 = v38;
        v12 = result;
      }

      else
      {
        v27 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v28 = *(&v39 + v27);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_1B0E46368();
            v11 = v38;
          }

          v28 = *(result + v27);
        }

        v29 = v28;
        v30 = __clz(v28 ^ 0xFF) - 24;
        if (v29 >= 0)
        {
          LOBYTE(v30) = 1;
        }

        v12 = ((v27 + v30) << 16) | 5;
      }

      ++v8;
      if (v13 == v26)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall UntaggedResponse.makeDescriptionWithoutPII()()
{
  sub_1B0CFEFA4(&v9);
  __swift_project_boxed_opaque_existential_0(&v9, v11);
  v0 = static Response.descriptionWithoutPII<A>(_:)();
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_0(&v9);
  v3 = sub_1B0E44CF8();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1B2726D50](v3);
  v4 = v9;
  v5 = v10;
  sub_1B0CFEABC(v0, v2);

  v9 = v4;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64F8, &qword_1B0EE7580);
  sub_1B039E3F8(&qword_1EB6DADD8, &qword_1EB6E64F8, &qword_1B0EE7580);
  sub_1B0E44C48();

  v6 = v9;
  v7 = v10;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1B0CFEFA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v88.i8[-v6];
  v8 = type metadata accessor for UntaggedResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v88.i64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D04274(v2, v11, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = *v11;
      v40 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v89;
      boxed_opaque_existential_1[2] = v40;
      v22 = 1;
      goto LABEL_14;
    case 2u:
      v89 = *v11;
      v33 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v89;
      boxed_opaque_existential_1[2] = v33;
      v22 = 2;
      goto LABEL_14;
    case 3u:
      v89 = *v11;
      v35 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v89;
      boxed_opaque_existential_1[2] = v35;
      v22 = 3;
      goto LABEL_14;
    case 4u:
      v89 = *v11;
      v20 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v89;
      boxed_opaque_existential_1[2] = v20;
      v22 = 4;
LABEL_14:
      *(boxed_opaque_existential_1 + 24) = v22;
      goto LABEL_15;
    case 5u:
    case 6u:
      goto LABEL_24;
    case 7u:
      v36 = *(v11 + 4);
      v37 = *(v11 + 20);
      v38 = v11[3];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v39 = *(v11 + 2);
      v88 = *v11;
      v89 = v39;
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v88;
      v102[1].i32[0] = v36;
      v102[1].i8[4] = v37;
      v102[1].i64[1] = v38;
      v102[2] = v89;
      sub_1B0D0464C(v102);
      goto LABEL_32;
    case 8u:
      v50 = *(v11 + 4);
      v51 = *(v11 + 20);
      v52 = v11[3];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v53 = *(v11 + 2);
      v88 = *v11;
      v89 = v53;
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v88;
      v102[1].i32[0] = v50;
      v102[1].i8[4] = v51;
      v102[1].i64[1] = v52;
      v102[2] = v89;
      sub_1B0D04600(v102);
      goto LABEL_32;
    case 9u:
      v27 = *v11;
      v28 = *(v11 + 2);
      v29 = *(v11 + 6);
      v94 = *(v11 + 5);
      v95 = v29;
      v30 = *(v11 + 8);
      v96 = *(v11 + 7);
      v97 = v30;
      v31 = *(v11 + 2);
      v90 = *(v11 + 1);
      v91 = v31;
      v32 = *(v11 + 4);
      v92 = *(v11 + 3);
      v93 = v32;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      *(&v98[7] + 4) = v97;
      *(&v98[6] + 4) = v96;
      *(&v98[5] + 4) = v95;
      *(&v98[4] + 4) = v94;
      *(v98 + 4) = v90;
      *(&v98[1] + 4) = v91;
      *(&v98[2] + 4) = v92;
      *(&v98[3] + 4) = v93;
      v102[0].i64[0] = v27;
      *(v102 + 12) = v98[0];
      *(&v102[4] + 12) = v98[4];
      *(&v102[3] + 12) = v98[3];
      *(&v102[2] + 12) = v98[2];
      *(&v102[1] + 12) = v98[1];
      v102[0].i32[2] = v28;
      v102[8].i32[3] = HIDWORD(v97);
      *(&v102[7] + 12) = v98[7];
      *(&v102[6] + 12) = v98[6];
      *(&v102[5] + 12) = v98[5];
      sub_1B0D045B4(v102);
      goto LABEL_32;
    case 0xAu:
      v49 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v89 = *v11;
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v89;
      v102[1].i64[0] = v49;
      sub_1B0D04568(v102);
      goto LABEL_32;
    case 0xBu:
      v19 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v19;
      v102[1].i8[0] = 1;
      sub_1B0D0451C(v102);
      goto LABEL_32;
    case 0xCu:
      v23 = *(v11 + 32);
      v24 = *(v11 + 33);
      v25 = v11[5];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v26 = *v11;
      v88 = *(v11 + 1);
      v89 = v26;
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v89;
      v102[1] = v88;
      v102[2].i8[0] = v23;
      v102[2].i8[1] = v24;
      v102[2].i64[1] = v25;
      sub_1B0D044D0(v102);
      goto LABEL_32;
    case 0xDu:
      v45 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v46 = *(v45 + 16);
      if (v46)
      {
        a1 = sub_1B0B88FB4(*(v45 + 16), 0);
        v47 = sub_1B0B8C5CC(v102, a1 + 4, v46, v45);
        sub_1B03D91F8();
        if (v47 != v46)
        {
          __break(1u);
LABEL_24:
          v48 = *v11;
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
          a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
          *__swift_allocate_boxed_opaque_existential_1(a1) = v48;
          type metadata accessor for ResponsePayload();
          goto LABEL_33;
        }
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      v102[0].i64[0] = a1;
      sub_1B0D04488(v102);
LABEL_32:
      *v11 = v102[0];
      v70 = v102[1];
      v71 = v102[2];
      v72 = v102[4];
      *(v11 + 3) = v102[3];
      *(v11 + 4) = v72;
      *(v11 + 1) = v70;
      *(v11 + 2) = v71;
      v73 = v102[5];
      v74 = v102[6];
      v75 = v102[8];
      *(v11 + 7) = v102[7];
      *(v11 + 8) = v75;
      *(v11 + 5) = v73;
      *(v11 + 6) = v74;
      type metadata accessor for ResponsePayload();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v89 = *v11;
      v15 = v11[2];
      v16 = *(v11 + 32);
      v17 = v11[5];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v18 = v11[3];
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0] = v89;
      v102[1].i64[0] = v15;
      v102[1].i64[1] = v18;
      v102[2].i8[0] = v16;
      v102[2].i64[1] = v17;
      sub_1B0D04390(v102);
      goto LABEL_32;
    case 0xFu:
      v34 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0].i64[0] = v34;
      sub_1B0D0443C(v102);
      goto LABEL_32;
    case 0x10u:
      v14 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102[0].i64[0] = v14;
      sub_1B0D043F0(v102);
      goto LABEL_32;
    case 0x11u:
      v41 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      *__swift_allocate_boxed_opaque_existential_1(a1) = v41;
      type metadata accessor for MessageData();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    case 0x12u:
    case 0x13u:
      sub_1B074BA2C(v11, v7);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v57 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_1B03B5C80(v7, v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      type metadata accessor for MessageData();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      return sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x14u:
      memcpy(v102, v11, 0x268uLL);
      if (v102[0].i8[4])
      {
        if (v102[0].i8[12])
        {
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6520, &qword_1B0EE7CB8);
          a1[4] = sub_1B039E3F8(&qword_1EB6E6528, &qword_1EB6E6520, &qword_1B0EE7CB8);
          result = sub_1B0AA4C0C(v102);
          *a1 = MEMORY[0x1E69E7CC0];
          return result;
        }

        v76 = v102[0].i32[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6530, &unk_1B0EE7CC0);
        v77 = *(type metadata accessor for Response(0) - 8);
        v78 = *(v77 + 72);
        v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B0EC1E70;
        v80 = v62 + v79;
        LODWORD(v98[0]) = v76;
        sub_1B0D043DC(v98);
        v81 = v99;
        *(v80 + 128) = v98[8];
        *(v80 + 144) = v81;
        *(v80 + 160) = v100;
        *(v80 + 176) = v101;
        v82 = v98[5];
        *(v80 + 64) = v98[4];
        *(v80 + 80) = v82;
        v83 = v98[7];
        *(v80 + 96) = v98[6];
        *(v80 + 112) = v83;
        v84 = v98[1];
        *v80 = v98[0];
        *(v80 + 16) = v84;
        v85 = v98[3];
        *(v80 + 32) = v98[2];
        *(v80 + 48) = v85;
        swift_storeEnumTagMultiPayload();
        v69 = 0;
      }

      else
      {
        v58 = v102[0].i32[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6530, &unk_1B0EE7CC0);
        v59 = *(type metadata accessor for Response(0) - 8);
        v60 = *(v59 + 72);
        v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B0EC1E70;
        v63 = v62 + v61;
        LODWORD(v98[0]) = v58;
        sub_1B041BA38(v98);
        v64 = v99;
        *(v63 + 128) = v98[8];
        *(v63 + 144) = v64;
        *(v63 + 160) = v100;
        *(v63 + 176) = v101;
        v65 = v98[5];
        *(v63 + 64) = v98[4];
        *(v63 + 80) = v65;
        v66 = v98[7];
        *(v63 + 96) = v98[6];
        *(v63 + 112) = v66;
        v67 = v98[1];
        *v63 = v98[0];
        *(v63 + 16) = v67;
        v68 = v98[3];
        *(v63 + 32) = v98[2];
        *(v63 + 48) = v68;
        swift_storeEnumTagMultiPayload();
        v69 = 1;
      }

      v86 = sub_1B0D00088(v69);
      *&v90 = v62;
      sub_1B0CEF42C(v86);
      v87 = v90;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6520, &qword_1B0EE7CB8);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6528, &qword_1EB6E6520, &qword_1B0EE7CB8);
      result = sub_1B0AA4C0C(v102);
      *a1 = v87;
      return result;
    case 0x15u:
      v43 = *v11;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v89 = *(v11 + 1);
      v44 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v44 = v43;
      *(v44 + 1) = v89;
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    case 0x16u:
      v89 = *v11;
      v54 = v11[2];
      v55 = *(v11 + 24);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v56 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v56 = v89;
      v56[2] = v54;
      *(v56 + 24) = v55;
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    default:
      v89 = *v11;
      v12 = v11[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0);
      v13 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v13 = v89;
      v13[2] = v12;
      *(v13 + 24) = 0;
LABEL_15:
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
  }
}

void *sub_1B0D00088(int a1)
{
  LODWORD(v270) = a1;
  v281 = sub_1B0E443C8();
  v261 = *(v281 - 8);
  v2 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v280 = v257 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v257 - v6;
  v284 = type metadata accessor for MessageData.BodyData();
  v269 = *(v284 - 8);
  v8 = *(v269 + 64);
  v9 = MEMORY[0x1EEE9AC00](v284);
  v279 = v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v285 = v257 - v11;
  v283 = type metadata accessor for MessageData.BodySection();
  v262 = *(v283 - 8);
  v12 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v272 = v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Response(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v266 = v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v265 = v257 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v264 = v257 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v263 = v257 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v282 = v257 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v278 = v257 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v277 = v257 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v271 = v257 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v287 = v257 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v276 = v257 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v274 = v257 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v273 = v257 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = v257 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v257 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = v257 - v48;
  v50 = *(v1 + 472);
  v369 = *(v1 + 456);
  v370 = v50;
  v371 = *(v1 + 488);
  v372 = *(v1 + 504);
  v51 = *(v1 + 408);
  v365 = *(v1 + 392);
  v366 = v51;
  v52 = *(v1 + 440);
  v367 = *(v1 + 424);
  v368 = v52;
  v267 = v1;
  v286 = v47;
  if (*(&v367 + 1))
  {
    v53 = *(v1 + 408);
    v339 = *(v1 + 392);
    v340 = v53;
    *&v341 = *(v1 + 424);
    *(&v341 + 1) = *(&v367 + 1);
    v54 = *(v1 + 488);
    v344 = *(v1 + 472);
    v345 = v54;
    *&v346 = *(v1 + 504);
    v55 = *(v1 + 440);
    v343 = *(v1 + 456);
    v342 = v55;
    sub_1B0D04858(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v56 = v360;
    *(v49 + 8) = v359;
    *(v49 + 9) = v56;
    *(v49 + 10) = v361;
    *(v49 + 88) = v362;
    v57 = v356;
    *(v49 + 4) = v355;
    *(v49 + 5) = v57;
    v58 = v358;
    *(v49 + 6) = v357;
    *(v49 + 7) = v58;
    v59 = v352;
    *v49 = v351;
    *(v49 + 1) = v59;
    v60 = v354;
    *(v49 + 2) = v353;
    *(v49 + 3) = v60;
    swift_storeEnumTagMultiPayload();
    v292 = v369;
    v293 = v370;
    v294 = v371;
    *&v295 = v372;
    v288 = v365;
    v289 = v366;
    v290 = v367;
    v291 = v368;
    sub_1B03B5C80(&v365, &v327, &qword_1EB6E64B0, &unk_1B0EE81A0);
    sub_1B0D0486C(&v288, &v327);
    v61 = sub_1B0D0549C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v63 = v61[2];
    v62 = v61[3];
    v64 = v61;
    if (v63 >= v62 >> 1)
    {
      v64 = sub_1B0D0549C(v62 > 1, v63 + 1, 1, v61);
    }

    sub_1B0398EFC(&v365, &qword_1EB6E64B0, &unk_1B0EE81A0);
    *(v64 + 16) = v63 + 1;
    v65 = v64;
    sub_1B0D046C0(v49, v64 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v63, type metadata accessor for Response);
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = v267;
  v67 = *(v267 + 512);
  v364 = v67;
  if (v67)
  {
    v68 = v65;
    v69 = *(v67 + 16);
    if (v69)
    {
      v70 = sub_1B0B88FB4(*(v67 + 16), 0);
      v71 = sub_1B0B8C5CC(&v351, v70 + 4, v69, v67);
      v259 = v352;
      v260 = *(&v351 + 1);
      v257[1] = v353;
      v258 = *(&v352 + 1);
      sub_1B03B5C80(&v364, &v339, &qword_1EB6E6538, &qword_1B0EE7CD0);
      sub_1B03D91F8();
      if (v71 == v69)
      {
LABEL_11:
        *&v339 = v70;
        sub_1B0D04848(&v339);
        v359 = v347;
        v360 = v348;
        v361 = v349;
        v362 = v350;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v358 = v346;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v354 = v342;
        sub_1B0D046AC(&v351);
        v72 = v360;
        *(v46 + 8) = v359;
        *(v46 + 9) = v72;
        *(v46 + 10) = v361;
        *(v46 + 88) = v362;
        v73 = v356;
        *(v46 + 4) = v355;
        *(v46 + 5) = v73;
        v74 = v358;
        *(v46 + 6) = v357;
        *(v46 + 7) = v74;
        v75 = v352;
        *v46 = v351;
        *(v46 + 1) = v75;
        v76 = v354;
        *(v46 + 2) = v353;
        *(v46 + 3) = v76;
        swift_storeEnumTagMultiPayload();
        v77 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v267;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_1B0D0549C(0, v77[2] + 1, 1, v77);
        }

        v80 = v77[2];
        v79 = v77[3];
        v81 = v77;
        if (v80 >= v79 >> 1)
        {
          v81 = sub_1B0D0549C(v79 > 1, v80 + 1, 1, v77);
        }

        *(v81 + 16) = v80 + 1;
        v65 = v81;
        sub_1B0D046C0(v46, v81 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v80, type metadata accessor for Response);
        goto LABEL_16;
      }

      __break(1u);
    }

    v70 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

LABEL_16:
  v82 = *(v66 + 520);
  v363 = v82;
  if (!v82)
  {
    goto LABEL_20;
  }

  v83 = v65;
  v65 = *(v82 + 16);
  if (v65)
  {
    v84 = sub_1B0CFBF20(*(v82 + 16), 0);
    v85 = sub_1B0CFC2B4(&v351, (v84 + 4), v65, v82);
    v259 = *(&v352 + 1);
    v260 = v352;
    v258 = v353;
    sub_1B03B5C80(&v363, &v339, &qword_1EB6E4898, &qword_1B0EC6340);
    sub_1B03D91F8();
    if (v85 != v65)
    {
      __break(1u);
LABEL_20:
      v86 = v267;
      if (*(v267 + 536))
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  *&v339 = v84;
  sub_1B0D04834(&v339);
  v359 = v347;
  v360 = v348;
  v361 = v349;
  v362 = v350;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v358 = v346;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v354 = v342;
  sub_1B0D046AC(&v351);
  v87 = v360;
  *(v43 + 8) = v359;
  *(v43 + 9) = v87;
  *(v43 + 10) = v361;
  *(v43 + 88) = v362;
  v88 = v356;
  *(v43 + 4) = v355;
  *(v43 + 5) = v88;
  v89 = v358;
  *(v43 + 6) = v357;
  *(v43 + 7) = v89;
  v90 = v352;
  *v43 = v351;
  *(v43 + 1) = v90;
  v91 = v354;
  *(v43 + 2) = v353;
  *(v43 + 3) = v91;
  swift_storeEnumTagMultiPayload();
  v65 = v83;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v267;
  if ((v92 & 1) == 0)
  {
    v65 = sub_1B0D0549C(0, v83[2] + 1, 1, v83);
  }

  v94 = v65[2];
  v93 = v65[3];
  if (v94 >= v93 >> 1)
  {
    v65 = sub_1B0D0549C(v93 > 1, v94 + 1, 1, v65);
  }

  v65[2] = v94 + 1;
  sub_1B0D046C0(v43, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v94, type metadata accessor for Response);
  if ((*(v86 + 536) & 1) == 0)
  {
LABEL_28:
    *&v339 = *(v86 + 528);
    sub_1B0D04820(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v95 = v360;
    v96 = v273;
    *(v273 + 128) = v359;
    *(v96 + 144) = v95;
    *(v96 + 160) = v361;
    *(v96 + 176) = v362;
    v97 = v356;
    *(v96 + 64) = v355;
    *(v96 + 80) = v97;
    v98 = v358;
    *(v96 + 96) = v357;
    *(v96 + 112) = v98;
    v99 = v352;
    *v96 = v351;
    *(v96 + 16) = v99;
    v100 = v354;
    *(v96 + 32) = v353;
    *(v96 + 48) = v100;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1B0D0549C(0, v65[2] + 1, 1, v65);
    }

    v102 = v65[2];
    v101 = v65[3];
    if (v102 >= v101 >> 1)
    {
      v65 = sub_1B0D0549C(v101 > 1, v102 + 1, 1, v65);
    }

    v65[2] = v102 + 1;
    sub_1B0D046C0(v273, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v102, type metadata accessor for Response);
  }

LABEL_33:
  if (*(v86 + 544))
  {
    if (*(v86 + 12))
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  *&v339 = *(v86 + 540);
  sub_1B0D0480C(&v339);
  v359 = v347;
  v360 = v348;
  v361 = v349;
  v362 = v350;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v358 = v346;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v354 = v342;
  sub_1B0D046AC(&v351);
  v103 = v360;
  v104 = v274;
  *(v274 + 128) = v359;
  *(v104 + 144) = v103;
  *(v104 + 160) = v361;
  *(v104 + 176) = v362;
  v105 = v356;
  *(v104 + 64) = v355;
  *(v104 + 80) = v105;
  v106 = v358;
  *(v104 + 96) = v357;
  *(v104 + 112) = v106;
  v107 = v352;
  *v104 = v351;
  *(v104 + 16) = v107;
  v108 = v354;
  *(v104 + 32) = v353;
  *(v104 + 48) = v108;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1B0D0549C(0, v65[2] + 1, 1, v65);
  }

  v110 = v65[2];
  v109 = v65[3];
  if (v110 >= v109 >> 1)
  {
    v65 = sub_1B0D0549C(v109 > 1, v110 + 1, 1, v65);
  }

  v65[2] = v110 + 1;
  sub_1B0D046C0(v274, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v110, type metadata accessor for Response);
  if ((*(v86 + 12) & 1) == 0)
  {
LABEL_41:
    if (v270)
    {
      LODWORD(v339) = *(v86 + 8);
      sub_1B0D047F8(&v339);
      v359 = v347;
      v360 = v348;
      v361 = v349;
      v362 = v350;
      v355 = v343;
      v356 = v344;
      v357 = v345;
      v358 = v346;
      v351 = v339;
      v352 = v340;
      v353 = v341;
      v354 = v342;
      sub_1B0D046AC(&v351);
      v111 = v360;
      v112 = v276;
      *(v276 + 128) = v359;
      *(v112 + 144) = v111;
      *(v112 + 160) = v361;
      *(v112 + 176) = v362;
      v113 = v356;
      *(v112 + 64) = v355;
      *(v112 + 80) = v113;
      v114 = v358;
      *(v112 + 96) = v357;
      *(v112 + 112) = v114;
      v115 = v352;
      *v112 = v351;
      *(v112 + 16) = v115;
      v116 = v354;
      *(v112 + 32) = v353;
      *(v112 + 48) = v116;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1B0D0549C(0, v65[2] + 1, 1, v65);
      }

      v118 = v65[2];
      v117 = v65[3];
      if (v118 >= v117 >> 1)
      {
        v65 = sub_1B0D0549C(v117 > 1, v118 + 1, 1, v65);
      }

      v65[2] = v118 + 1;
      sub_1B0D046C0(v276, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v118, type metadata accessor for Response);
    }
  }

LABEL_47:
  if ((*(v86 + 560) & 1) == 0)
  {
    *&v339 = *(v86 + 552);
    sub_1B0D047E4(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v119 = v360;
    v120 = v287;
    *(v287 + 128) = v359;
    *(v120 + 144) = v119;
    *(v120 + 160) = v361;
    *(v120 + 176) = v362;
    v121 = v356;
    *(v120 + 64) = v355;
    *(v120 + 80) = v121;
    v122 = v358;
    *(v120 + 96) = v357;
    *(v120 + 112) = v122;
    v123 = v352;
    *v120 = v351;
    *(v120 + 16) = v123;
    v124 = v354;
    *(v120 + 32) = v353;
    *(v120 + 48) = v124;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1B0D0549C(0, v65[2] + 1, 1, v65);
    }

    v126 = v65[2];
    v125 = v65[3];
    if (v126 >= v125 >> 1)
    {
      v65 = sub_1B0D0549C(v125 > 1, v126 + 1, 1, v65);
    }

    v65[2] = v126 + 1;
    sub_1B0D046C0(v287, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v126, type metadata accessor for Response);
  }

  v127 = *(v86 + 200);
  v128 = *(v127 + 16);
  if (v128)
  {
    v129 = (v127 + ((*(v262 + 80) + 32) & ~*(v262 + 80)));
    v275 = v15;
    v276 = v269 + 48;
    v269 = v261 + 8;
    v270 = (v261 + 16);
    v274 = *(v262 + 72);
    v130 = v272;
    v268 = v7;
    do
    {
      v287 = v128;
      v131 = v65;
      sub_1B0D04274(v129, v130, type metadata accessor for MessageData.BodySection);
      sub_1B03B5C80(v130 + *(v283 + 24), v7, &qword_1EB6E4178, &unk_1B0EE7570);
      if ((*v276)(v7, 1, v284) == 1)
      {
        sub_1B0398EFC(v7, &qword_1EB6E4178, &unk_1B0EE7570);
        v133 = *v130;
        v132 = *(v130 + 8);
        v134 = *(v130 + 20);
        v135 = *(v130 + 24);
        if (v135)
        {
          v134 = 0;
        }

        v136 = *(v130 + 16);
        *&v339 = *v130;
        *(&v339 + 1) = v132;
        *&v340 = v136;
        *(&v340 + 1) = v134;
        LOBYTE(v341) = v135 | 0x40;
        sub_1B0D04698(&v339);
        v359 = v347;
        v360 = v348;
        v361 = v349;
        v362 = v350;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v358 = v346;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v354 = v342;
        sub_1B0D046AC(&v351);
        v137 = v360;
        v138 = v282;
        *(v282 + 128) = v359;
        *(v138 + 144) = v137;
        *(v138 + 160) = v361;
        *(v138 + 176) = v362;
        v139 = v356;
        *(v138 + 64) = v355;
        *(v138 + 80) = v139;
        v140 = v358;
        *(v138 + 96) = v357;
        *(v138 + 112) = v140;
        v141 = v352;
        *v138 = v351;
        *(v138 + 16) = v141;
        v142 = v354;
        *(v138 + 32) = v353;
        *(v138 + 48) = v142;
        swift_storeEnumTagMultiPayload();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v132, v136);
        v65 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1B0D0549C(0, v131[2] + 1, 1, v131);
        }

        v144 = v65[2];
        v143 = v65[3];
        if (v144 >= v143 >> 1)
        {
          v65 = sub_1B0D0549C(v143 > 1, v144 + 1, 1, v65);
        }

        sub_1B0D042DC(v130, type metadata accessor for MessageData.BodySection);
        v65[2] = v144 + 1;
        sub_1B0D046C0(v282, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v144, type metadata accessor for Response);
      }

      else
      {
        sub_1B0D046C0(v7, v285, type metadata accessor for MessageData.BodyData);
        v145 = *v130;
        v146 = *(v130 + 8);
        v147 = *(v130 + 20);
        v148 = *(v130 + 24);
        if (v148)
        {
          v149 = 0;
        }

        else
        {
          v149 = *(v130 + 20);
        }

        v150 = *(v130 + 16);
        v151 = v148 | 0x40;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v146, v150);
        v152 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        *&v351 = v145;
        *(&v351 + 1) = v146;
        *&v352 = v150;
        *(&v352 + 1) = v149;
        LOBYTE(v353) = v151;
        *(&v353 + 1) = v152;
        sub_1B0D04794(&v351);
        v153 = v360;
        v15 = v271;
        *(v271 + 8) = v359;
        *(v15 + 144) = v153;
        *(v15 + 160) = v361;
        *(v15 + 176) = v362;
        v154 = v356;
        *(v15 + 64) = v355;
        *(v15 + 80) = v154;
        v155 = v358;
        *(v15 + 96) = v357;
        *(v15 + 112) = v155;
        v156 = v352;
        *v15 = v351;
        *(v15 + 16) = v156;
        v157 = v354;
        *(v15 + 32) = v353;
        *(v15 + 48) = v157;
        swift_storeEnumTagMultiPayload();
        v158 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_1B0D0549C(0, v131[2] + 1, 1, v131);
        }

        v160 = v158[2];
        v159 = v158[3];
        v161 = v275;
        if (v160 >= v159 >> 1)
        {
          v158 = sub_1B0D0549C(v159 > 1, v160 + 1, 1, v158);
        }

        v158[2] = v160 + 1;
        v162 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v163 = *(v161 + 72);
        sub_1B0D046C0(v15, v158 + v162 + v163 * v160, type metadata accessor for Response);
        v164 = v279;
        sub_1B0D04274(v285, v279, type metadata accessor for MessageData.BodyData);
        (*v270)(v280, v164, v281);
        v165 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        if (v165 < 0)
        {
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v273 = v162;
        if (v165)
        {
          if (v165)
          {
            v166 = (v165 - 1) | ((v165 - 1) >> 1) | (((v165 - 1) | ((v165 - 1) >> 1)) >> 2);
            v167 = v166 | (v166 >> 4) | ((v166 | (v166 >> 4)) >> 8);
            v168 = v167 | HIWORD(v167);
            v169 = __CFADD__(v168, 1);
            v170 = v168 + 1;
            if (v169)
            {
              v161 = 0xFFFFFFFFLL;
            }

            else
            {
              v161 = v170;
            }
          }

          else
          {
            v161 = 0;
          }

          result = malloc(v161);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v178 = result;
          type metadata accessor for ByteBuffer._Storage();
          v176 = swift_allocObject();
          v15 = 0;
          v173 = 0;
          v174 = 0;
          v175 = 0;
          *(v176 + 16) = v161;
          *(v176 + 24) = v178;
          *(v176 + 32) = j__malloc;
          *(v176 + 40) = j__realloc;
          *(v176 + 48) = sub_1B0B815B8;
          *(v176 + 56) = sub_1B0439080;
        }

        else
        {
          v171 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
          v172 = *v171;
          v15 = *(v171 + 2);
          v173 = *(v171 + 3);
          v161 = *(v171 + 4);
          v174 = *(v171 + 10);
          v175 = *(v171 + 22);
        }

        *&v327 = v176;
        *(&v327 + 1) = __PAIR64__(v173, v15);
        LODWORD(v328) = v161;
        WORD2(v328) = v174;
        BYTE6(v328) = v175;
        v179 = v280;
        v180 = ByteBuffer.setDispatchData(_:at:)(v280, v173);
        (*v269)(v179, v281);
        sub_1B0D042DC(v279, type metadata accessor for MessageData.BodyData);
        if (__CFADD__(HIDWORD(v327), v180))
        {
          goto LABEL_111;
        }

        *&v339 = v327;
        DWORD2(v339) = DWORD2(v327);
        HIDWORD(v339) = HIDWORD(v327) + v180;
        LODWORD(v340) = v328;
        WORD2(v340) = WORD2(v328);
        BYTE6(v340) = BYTE6(v328);
        sub_1B0D047A8(&v339);
        v181 = v348;
        v182 = v277;
        *(v277 + 128) = v347;
        *(v182 + 144) = v181;
        *(v182 + 160) = v349;
        *(v182 + 176) = v350;
        v183 = v344;
        *(v182 + 64) = v343;
        *(v182 + 80) = v183;
        v184 = v346;
        *(v182 + 96) = v345;
        *(v182 + 112) = v184;
        v185 = v340;
        *v182 = v339;
        *(v182 + 16) = v185;
        v186 = v342;
        *(v182 + 32) = v341;
        *(v182 + 48) = v186;
        swift_storeEnumTagMultiPayload();
        v187 = v158;
        v189 = v158[2];
        v188 = v158[3];
        v190 = v189 + 1;
        if (v189 >= v188 >> 1)
        {
          v187 = sub_1B0D0549C(v188 > 1, v189 + 1, 1, v158);
        }

        v15 = v275;
        v191 = v273;
        v187[2] = v190;
        sub_1B0D046C0(v277, v187 + v191 + v189 * v163, type metadata accessor for Response);
        sub_1B0D047BC(&v288);
        v192 = v297;
        v193 = v278;
        *(v278 + 128) = v296;
        *(v193 + 144) = v192;
        *(v193 + 160) = v298;
        *(v193 + 176) = v299;
        v194 = v293;
        *(v193 + 64) = v292;
        *(v193 + 80) = v194;
        v195 = v295;
        *(v193 + 96) = v294;
        *(v193 + 112) = v195;
        v196 = v289;
        *v193 = v288;
        *(v193 + 16) = v196;
        v197 = v291;
        *(v193 + 32) = v290;
        *(v193 + 48) = v197;
        swift_storeEnumTagMultiPayload();
        v198 = v187;
        v199 = v187[3];
        v200 = v189 + 2;
        if ((v189 + 2) > (v199 >> 1))
        {
          v198 = sub_1B0D0549C(v199 > 1, v189 + 2, 1, v187);
        }

        v130 = v272;
        sub_1B0D042DC(v285, type metadata accessor for MessageData.BodyData);
        sub_1B0D042DC(v130, type metadata accessor for MessageData.BodySection);
        *(v198 + 16) = v200;
        v65 = v198;
        sub_1B0D046C0(v278, v198 + v191 + v190 * v163, type metadata accessor for Response);
        v7 = v268;
      }

      v129 = (v129 + v274);
      v128 = v287 - 1;
    }

    while (v287 != 1);
  }

  v201 = v267;
  v202 = *(v267 + 160);
  v203 = *(v267 + 128);
  v335 = *(v267 + 144);
  v336 = v202;
  v204 = *(v267 + 160);
  v337 = *(v267 + 176);
  v205 = *(v267 + 96);
  v206 = *(v267 + 64);
  v331 = *(v267 + 80);
  v332 = v205;
  v207 = *(v267 + 96);
  v208 = *(v267 + 128);
  v333 = *(v267 + 112);
  v334 = v208;
  v209 = *(v267 + 32);
  v327 = *(v267 + 16);
  v328 = v209;
  v210 = *(v267 + 64);
  v212 = *(v267 + 16);
  v211 = *(v267 + 32);
  v329 = *(v267 + 48);
  v330 = v210;
  v296 = v335;
  v297 = v204;
  v298 = *(v267 + 176);
  v292 = v331;
  v293 = v207;
  v294 = v333;
  v295 = v203;
  v288 = v212;
  v289 = v211;
  v338 = *(v267 + 192);
  LOBYTE(v299) = *(v267 + 192);
  v290 = v329;
  v291 = v206;
  if (sub_1B07AB810(&v288) == 1)
  {
    v129 = v65;
    v213 = v265;
    v161 = v266;
  }

  else
  {
    v347 = v296;
    v348 = v297;
    v349 = v298;
    v350 = v299;
    v343 = v292;
    v344 = v293;
    v345 = v294;
    v346 = v295;
    v339 = v288;
    v340 = v289;
    v341 = v290;
    v342 = v291;
    sub_1B0D04780(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v214 = v360;
    v215 = v263;
    *(v263 + 128) = v359;
    *(v215 + 144) = v214;
    *(v215 + 160) = v361;
    *(v215 + 176) = v362;
    v216 = v356;
    *(v215 + 64) = v355;
    *(v215 + 80) = v216;
    v217 = v358;
    *(v215 + 96) = v357;
    *(v215 + 112) = v217;
    v218 = v352;
    *v215 = v351;
    *(v215 + 16) = v218;
    v219 = v354;
    *(v215 + 32) = v353;
    *(v215 + 48) = v219;
    swift_storeEnumTagMultiPayload();
    v323 = v335;
    v324 = v336;
    v325 = v337;
    v326 = v338;
    v319 = v331;
    v320 = v332;
    v321 = v333;
    v322 = v334;
    v315 = v327;
    v316 = v328;
    v317 = v329;
    v318 = v330;
    sub_1B03B5C80(&v327, &v303, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B075DC38(&v315, &v303);
    v129 = v65;
    v220 = swift_isUniquelyReferenced_nonNull_native();
    v213 = v265;
    v161 = v266;
    if ((v220 & 1) == 0)
    {
      v129 = sub_1B0D0549C(0, v129[2] + 1, 1, v129);
    }

    v222 = v129[2];
    v221 = v129[3];
    if (v222 >= v221 >> 1)
    {
      v129 = sub_1B0D0549C(v221 > 1, v222 + 1, 1, v129);
    }

    sub_1B0398EFC(&v327, &qword_1EB6E4148, &qword_1B0EE17F0);
    v129[2] = v222 + 1;
    sub_1B0D046C0(v263, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v222, type metadata accessor for Response);
  }

  v223 = *(v201 + 352);
  v224 = *(v201 + 320);
  v311 = *(v201 + 336);
  v312 = v223;
  v225 = *(v201 + 352);
  v313 = *(v201 + 368);
  v226 = *(v201 + 288);
  v227 = *(v201 + 256);
  v307 = *(v201 + 272);
  v308 = v226;
  v228 = *(v201 + 288);
  v229 = *(v201 + 320);
  v309 = *(v201 + 304);
  v310 = v229;
  v230 = *(v201 + 224);
  v303 = *(v201 + 208);
  v304 = v230;
  v231 = *(v201 + 256);
  v233 = *(v201 + 208);
  v232 = *(v201 + 224);
  v305 = *(v201 + 240);
  v306 = v231;
  v323 = v311;
  v324 = v225;
  v325 = *(v201 + 368);
  v319 = v307;
  v320 = v228;
  v321 = v309;
  v322 = v224;
  v315 = v233;
  v316 = v232;
  v314 = *(v201 + 384);
  v326 = *(v201 + 384);
  v317 = v305;
  v318 = v227;
  if (sub_1B07AB810(&v315) != 1)
  {
    v347 = v323;
    v348 = v324;
    v349 = v325;
    LOBYTE(v350) = v326;
    v343 = v319;
    v344 = v320;
    v345 = v321;
    v346 = v322;
    v339 = v315;
    v340 = v316;
    v341 = v317;
    v342 = v318;
    HIBYTE(v350) = 1;
    sub_1B0D04780(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v234 = v360;
    v235 = v264;
    *(v264 + 128) = v359;
    *(v235 + 144) = v234;
    *(v235 + 160) = v361;
    *(v235 + 176) = v362;
    v236 = v356;
    *(v235 + 64) = v355;
    *(v235 + 80) = v236;
    v237 = v358;
    *(v235 + 96) = v357;
    *(v235 + 112) = v237;
    v238 = v352;
    *v235 = v351;
    *(v235 + 16) = v238;
    v239 = v354;
    *(v235 + 32) = v353;
    *(v235 + 48) = v239;
    swift_storeEnumTagMultiPayload();
    v301[8] = v311;
    v301[9] = v312;
    v301[10] = v313;
    v302 = v314;
    v301[4] = v307;
    v301[5] = v308;
    v301[6] = v309;
    v301[7] = v310;
    v301[0] = v303;
    v301[1] = v304;
    v301[2] = v305;
    v301[3] = v306;
    sub_1B03B5C80(&v303, v300, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B075DC38(v301, v300);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1B0D0549C(0, v129[2] + 1, 1, v129);
    }

    v241 = v129[2];
    v240 = v129[3];
    if (v241 >= v240 >> 1)
    {
      v129 = sub_1B0D0549C(v240 > 1, v241 + 1, 1, v129);
    }

    sub_1B0398EFC(&v303, &qword_1EB6E4148, &qword_1B0EE17F0);
    v129[2] = v241 + 1;
    sub_1B0D046C0(v264, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v241, type metadata accessor for Response);
  }

  v242 = *(v201 + 576);
  if (v242)
  {
    *&v339 = *(v201 + 568);
    *(&v339 + 1) = v242;
    sub_1B0D0476C(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1B0D046AC(&v351);
    v243 = v360;
    *(v213 + 128) = v359;
    *(v213 + 144) = v243;
    *(v213 + 160) = v361;
    *(v213 + 176) = v362;
    v244 = v356;
    *(v213 + 64) = v355;
    *(v213 + 80) = v244;
    v245 = v358;
    *(v213 + 96) = v357;
    *(v213 + 112) = v245;
    v246 = v352;
    *v213 = v351;
    *(v213 + 16) = v246;
    v247 = v354;
    *(v213 + 32) = v353;
    *(v213 + 48) = v247;
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1B0D0549C(0, v129[2] + 1, 1, v129);
    }

    v249 = v129[2];
    v248 = v129[3];
    if (v249 >= v248 >> 1)
    {
      v129 = sub_1B0D0549C(v248 > 1, v249 + 1, 1, v129);
    }

    v129[2] = v249 + 1;
    sub_1B0D046C0(v213, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v249, type metadata accessor for Response);
  }

  sub_1B0D04728(&v351);
  v250 = v360;
  *(v161 + 128) = v359;
  *(v161 + 144) = v250;
  *(v161 + 160) = v361;
  *(v161 + 176) = v362;
  v251 = v356;
  *(v161 + 64) = v355;
  *(v161 + 80) = v251;
  v252 = v358;
  *(v161 + 96) = v357;
  *(v161 + 112) = v252;
  v253 = v352;
  *v161 = v351;
  *(v161 + 16) = v253;
  v254 = v354;
  *(v161 + 32) = v353;
  *(v161 + 48) = v254;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_112:
    v129 = sub_1B0D0549C(0, v129[2] + 1, 1, v129);
  }

  v256 = v129[2];
  v255 = v129[3];
  if (v256 >= v255 >> 1)
  {
    v129 = sub_1B0D0549C(v255 > 1, v256 + 1, 1, v129);
  }

  v129[2] = v256 + 1;
  sub_1B0D046C0(v161, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v256, type metadata accessor for Response);
  return v129;
}

uint64_t UntaggedResponse.logIdentifier.getter()
{
  type metadata accessor for UntaggedResponse(0);
  sub_1B0E46508();
  return 0;
}

unint64_t UntaggedResponse.name.getter()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D04274(v0, v4, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x535453495845;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 20302;
      break;
    case 2:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 4473154;
      break;
    case 3:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x48545541455250;
      break;
    case 4:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 4544834;
      break;
    case 5:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x494C494241504143;
      break;
    case 6:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x44454C42414E45;
      break;
    case 7:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 1414744396;
      break;
    case 8:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 1112888140;
      break;
    case 9:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x535554415453;
      break;
    case 10:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x43415053454D414ELL;
      break;
    case 11:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x484352414553;
      break;
    case 12:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x48435241455345;
      break;
    case 13:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x5347414C46;
      break;
    case 14:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x4843544142444955;
      break;
    case 15:
      return result;
    case 16:
      result = 0x544E45434552;
      break;
    case 17:
      result = 0x45474E55505845;
      break;
    case 18:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x44454853494E4156;
      break;
    case 19:
    case 22:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0xD000000000000011;
      break;
    case 20:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 0x4843544546;
      break;
    case 21:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 17481;
      break;
    default:
      sub_1B0D042DC(v4, type metadata accessor for UntaggedResponse);
      result = 19279;
      break;
  }

  return result;
}

uint64_t static CommandCompletionResponse.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
      }
    }

    else if (a8 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
    }
  }

  else if (!a8)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
  }

  return 0;
}

uint64_t sub_1B0D026E8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      if (v11 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
      }
    }

    else if (v11 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
    }
  }

  else if (!v11)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
  }

  return 0;
}

unint64_t CommandCompletionResponse.responseText.getter(unint64_t a1)
{
  sub_1B04420D8(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

unint64_t sub_1B0D02788(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1B0D029C4(0xFuLL, a1, a2);
  v8 = sub_1B0D029C4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1B0E44C18();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_1B0E46368();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1B0E44C28();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1B0E46368();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_1B0D029C4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B0D02A5C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B0C04F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B0D02A5C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B0A6D6C4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t *a2)
{
  v194 = a1;
  v195 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v175 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v174 = &v174 - v6;
  v193 = type metadata accessor for UntaggedResponse(0);
  v7 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v190 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = (&v174 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v174 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v174 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v187 = (&v174 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v186 = (&v174 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v184 = (&v174 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v185 = (&v174 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v183 = (&v174 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v182 = (&v174 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v180 = (&v174 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v179 = (&v174 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v181 = &v174 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v178 = (&v174 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v177 = (&v174 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v176 = (&v174 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v174 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v174 - v45);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v174 - v48);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v174 - v51);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (&v174 - v54);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v174 - v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6508, &qword_1B0EE7C98);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v174 - v61;
  v64 = (&v174 + *(v63 + 56) - v61);
  sub_1B0D04274(v194, &v174 - v61, type metadata accessor for UntaggedResponse);
  v65 = v195;
  v195 = v64;
  sub_1B0D04274(v65, v64, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0D04274(v62, v55, type metadata accessor for UntaggedResponse);
      v81 = *v55;
      v121 = v55[2];
      v122 = v195;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v84 = v55[1];
      v66 = v62;
      v115 = *v122;
      v123 = v122[1];
      v124 = v122[2];
      goto LABEL_29;
    case 2u:
      sub_1B0D04274(v62, v52, type metadata accessor for UntaggedResponse);
      v66 = v62;
      v67 = *v52;
      v104 = v52[2];
      v105 = v195;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_3;
      }

      v106 = v52[1];
      v108 = *v105;
      v107 = v105[1];
      v109 = v105[2];
      v76 = static ResponseText.__derived_struct_equals(_:_:)(v67, v106);
      sub_1B0447F00(v108);

      v110 = v67;
      goto LABEL_30;
    case 3u:
      sub_1B0D04274(v62, v49, type metadata accessor for UntaggedResponse);
      v81 = *v49;
      v113 = v49[2];
      v83 = v195;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      v84 = v49[1];
      goto LABEL_24;
    case 4u:
      sub_1B0D04274(v62, v46, type metadata accessor for UntaggedResponse);
      v81 = *v46;
      v82 = v46[2];
      v83 = v195;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v84 = v46[1];
LABEL_24:
        v66 = v62;
        v115 = *v83;
        v114 = v83[1];
        v116 = v83[2];
LABEL_29:
        v76 = static ResponseText.__derived_struct_equals(_:_:)(v81, v84);
        sub_1B0447F00(v115);

        v110 = v81;
LABEL_30:
        sub_1B0447F00(v110);
        goto LABEL_31;
      }

LABEL_33:
      sub_1B0447F00(v81);
LABEL_50:

      goto LABEL_73;
    case 5u:
      sub_1B0D04274(v62, v43, type metadata accessor for UntaggedResponse);
      v129 = *v43;
      v130 = v195;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    case 6u:
      v144 = v176;
      sub_1B0D04274(v62, v176, type metadata accessor for UntaggedResponse);
      v129 = *v144;
      v130 = v195;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_50;
      }

LABEL_48:
      v80 = sub_1B044DA4C(v129, *v130);
      goto LABEL_49;
    case 7u:
      v117 = v177;
      sub_1B0D04274(v62, v177, type metadata accessor for UntaggedResponse);
      v118 = v117[1];
      v196[0] = *v117;
      v196[1] = v118;
      v196[2] = v117[2];
      v119 = v195;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    case 8u:
      v155 = v178;
      sub_1B0D04274(v62, v178, type metadata accessor for UntaggedResponse);
      v156 = v155[1];
      v196[0] = *v155;
      v196[1] = v156;
      v196[2] = v155[2];
      v119 = v195;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_26:
        v120 = *(v119 + 1);
        v197[0] = *v119;
        v197[1] = v120;
        v197[2] = *(v119 + 2);
        v76 = static MailboxInfo.__derived_struct_equals(_:_:)(v196, v197);
        sub_1B0D0433C(v197);
        sub_1B0D0433C(v196);
        goto LABEL_62;
      }

LABEL_56:
      sub_1B0D0433C(v196);
      goto LABEL_73;
    case 9u:
      v89 = v181;
      sub_1B0D04274(v62, v181, type metadata accessor for UntaggedResponse);
      v90 = *v89;
      v91 = *(v89 + 8);
      v92 = *(v89 + 96);
      v196[4] = *(v89 + 80);
      v196[5] = v92;
      v93 = *(v89 + 128);
      v196[6] = *(v89 + 112);
      v196[7] = v93;
      v94 = *(v89 + 32);
      v196[0] = *(v89 + 16);
      v196[1] = v94;
      v95 = *(v89 + 64);
      v196[2] = *(v89 + 48);
      v196[3] = v95;
      v96 = v195;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1B0B11B9C(v196);

        goto LABEL_73;
      }

      v97 = *v96;
      v98 = *(v96 + 2);
      v99 = *(v96 + 6);
      v197[4] = *(v96 + 5);
      v197[5] = v99;
      v100 = *(v96 + 8);
      v197[6] = *(v96 + 7);
      v197[7] = v100;
      v101 = *(v96 + 2);
      v197[0] = *(v96 + 1);
      v197[1] = v101;
      v102 = *(v96 + 4);
      v197[2] = *(v96 + 3);
      v197[3] = v102;
      if ((v91 | (v91 << 32)) == (v98 | (v98 << 32)))
      {
        v103 = sub_1B04520BC(v90, v97);

        if (v103)
        {
          v76 = static MailboxStatus.__derived_struct_equals(_:_:)(v196, v197);
          sub_1B0B11B9C(v196);
          sub_1B0B11B9C(v197);
          goto LABEL_62;
        }

        sub_1B0B11B9C(v196);
        sub_1B0B11B9C(v197);
      }

      else
      {
        sub_1B0B11B9C(v196);
        sub_1B0B11B9C(v197);
      }

      sub_1B0D042DC(v62, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0xAu:
      v149 = v179;
      sub_1B0D04274(v62, v179, type metadata accessor for UntaggedResponse);
      v150 = *v149;
      v151 = v149[1];
      v152 = v62;
      v153 = v149[2];
      v154 = v195;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v76 = static NamespaceResponse.__derived_struct_equals(_:_:)(v150, v151, v153, *v154, v154[1], v154[2]);

        sub_1B0D042DC(v152, type metadata accessor for UntaggedResponse);
        return v76 & 1;
      }

      v62 = v152;
      goto LABEL_73;
    case 0xBu:
      v77 = v180;
      sub_1B0D04274(v62, v180, type metadata accessor for UntaggedResponse);
      v78 = *v77;
      v79 = v195;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_50;
      }

      v80 = sub_1B03D2D0C(v78, *v79);
      goto LABEL_49;
    case 0xCu:
      v85 = v182;
      sub_1B0D04274(v62, v182, type metadata accessor for UntaggedResponse);
      v86 = v85[1];
      v196[0] = *v85;
      v196[1] = v86;
      v196[2] = v85[2];
      v87 = v195;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v88 = *(v87 + 1);
        v197[0] = *v87;
        v197[1] = v88;
        v197[2] = *(v87 + 2);
        v76 = static ExtendedSearchResponse.__derived_struct_equals(_:_:)(v196, v197);
        sub_1B0A96464(v196);
        sub_1B0A96464(v197);
        goto LABEL_62;
      }

      sub_1B0A96464(v196);
      goto LABEL_73;
    case 0xDu:
      v141 = v183;
      sub_1B0D04274(v62, v183, type metadata accessor for UntaggedResponse);
      v142 = *v141;
      v143 = v195;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_50;
      }

      v80 = sub_1B0AFE1EC(v142, *v143);
LABEL_49:
      v76 = v80;

      goto LABEL_62;
    case 0xEu:
      v72 = v185;
      sub_1B0D04274(v62, v185, type metadata accessor for UntaggedResponse);
      v73 = v72[1];
      v196[0] = *v72;
      v196[1] = v73;
      v196[2] = v72[2];
      v74 = v195;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v75 = *(v74 + 1);
        v197[0] = *v74;
        v197[1] = v75;
        v197[2] = *(v74 + 2);
        v76 = static UIDBatchesResponse.__derived_struct_equals(_:_:)(v196, v197);
        v205[0] = v196[0];
        sub_1B03B1198(v205);
        v202 = *&v196[1];
        v203 = DWORD2(v196[1]);
        sub_1B0398EFC(&v202, &qword_1EB6E63F0, &unk_1B0EE7CA0);
        v204 = *(&v196[2] + 1);
        v66 = v62;
        sub_1B0398EFC(&v204, &qword_1EB6E24F8, &qword_1B0E9CD00);
        v200 = v197[0];
        sub_1B03B1198(&v200);
        v198 = *&v197[1];
        v199 = DWORD2(v197[1]);
        sub_1B0398EFC(&v198, &qword_1EB6E63F0, &unk_1B0EE7CA0);
        v201 = *(&v197[2] + 1);
        sub_1B0398EFC(&v201, &qword_1EB6E24F8, &qword_1B0E9CD00);
        goto LABEL_32;
      }

      v168 = v72[1];
      v197[0] = *v72;
      v197[1] = v168;
      LOBYTE(v197[2]) = *(v72 + 32);
      v205[0] = v197[0];
      sub_1B03B1198(v205);
      *&v200 = *&v197[1];
      DWORD2(v200) = DWORD2(v197[1]);
      sub_1B0398EFC(&v200, &qword_1EB6E63F0, &unk_1B0EE7CA0);
      v202 = *(&v196[2] + 1);
      sub_1B0398EFC(&v202, &qword_1EB6E24F8, &qword_1B0E9CD00);
      goto LABEL_73;
    case 0xFu:
      v70 = v184;
      sub_1B0D04274(v62, v184, type metadata accessor for UntaggedResponse);
      v71 = v195;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
    case 0x10u:
      v70 = v186;
      sub_1B0D04274(v62, v186, type metadata accessor for UntaggedResponse);
      v71 = v195;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_73;
      }

LABEL_21:
      v111 = *v70;
      v112 = *v71;
      goto LABEL_36;
    case 0x11u:
      v125 = v187;
      sub_1B0D04274(v62, v187, type metadata accessor for UntaggedResponse);
      v126 = v195;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_73;
      }

      v111 = *v126;
      v112 = *v125;
LABEL_36:
      v76 = v111 == v112;
      goto LABEL_62;
    case 0x12u:
      v145 = v191;
      sub_1B0D04274(v62, v191, type metadata accessor for UntaggedResponse);
      v146 = v195;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_63;
      }

      v147 = v146;
      v148 = v174;
      goto LABEL_61;
    case 0x13u:
      v145 = v192;
      sub_1B0D04274(v62, v192, type metadata accessor for UntaggedResponse);
      v167 = v195;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_63:
        sub_1B0398EFC(v145, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_73;
      }

      v147 = v167;
      v148 = v175;
LABEL_61:
      sub_1B074BA2C(v147, v148);
      sub_1B03D06F8();
      v76 = sub_1B0E46E08();
      sub_1B0398EFC(v148, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v145, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_62;
    case 0x14u:
      v127 = v188;
      sub_1B0D04274(v62, v188, type metadata accessor for UntaggedResponse);
      memcpy(v196, v127, 0x268uLL);
      v128 = v195;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        sub_1B0AA4C0C(v196);
        goto LABEL_73;
      }

      memcpy(v197, v128, 0x268uLL);
      v76 = _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v196);
      sub_1B0AA4C0C(v197);
      sub_1B0AA4C0C(v196);
LABEL_62:
      sub_1B0D042DC(v62, type metadata accessor for UntaggedResponse);
      return v76 & 1;
    case 0x15u:
      v131 = v189;
      sub_1B0D04274(v62, v189, type metadata accessor for UntaggedResponse);
      v132 = *v131;
      v133 = v131[1];
      v134 = v131[2];
      v135 = v195;
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_73;
      }

      v136 = v62;
      v137 = *v135;
      v138 = v135[1];
      v139 = v135[2];
      if (sub_1B045202C(v133, v138))
      {
        v140 = sub_1B0C2DAB0(v134, v139);

        if (v140)
        {
          sub_1B0D042DC(v136, type metadata accessor for UntaggedResponse);
          v76 = 1;
          return v76 & 1;
        }
      }

      else
      {
      }

      sub_1B0D042DC(v136, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0x16u:
      v157 = v190;
      sub_1B0D04274(v62, v190, type metadata accessor for UntaggedResponse);
      v158 = *v157;
      v159 = *(v157 + 8);
      v66 = v62;
      v160 = *(v157 + 16);
      v161 = *(v157 + 24);
      v162 = v195;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v194 = v66;
        v163 = *v162;
        v164 = v162[1];
        v165 = v162[2];
        v166 = *(v162 + 24);
        v76 = static ApplePushService.__derived_enum_equals(_:_:)(v158, v159, v160, v161, *v162, v164, v165, v166);
        sub_1B0C26CD4(v163, v164, v165, v166);
        sub_1B0C26CD4(v158, v159, v160, v161);
        sub_1B0D042DC(v194, type metadata accessor for UntaggedResponse);
        return v76 & 1;
      }

      sub_1B0C26CD4(v158, v159, v160, v161);
      goto LABEL_72;
    default:
      sub_1B0D04274(v62, v58, type metadata accessor for UntaggedResponse);
      v66 = v62;
      v67 = *v58;
      v68 = v58[2];
      v69 = v195;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        sub_1B0447F00(v67);

LABEL_72:
        v62 = v66;
LABEL_73:
        sub_1B0398EFC(v62, &qword_1EB6E6508, &qword_1B0EE7C98);
LABEL_74:
        v76 = 0;
      }

      else
      {
        v170 = v58[1];
        v172 = *v69;
        v171 = v69[1];
        v173 = v69[2];
        v76 = static ResponseText.__derived_struct_equals(_:_:)(v67, v170);
        sub_1B0447F00(v172);

        sub_1B0447F00(v67);
LABEL_31:

LABEL_32:
        sub_1B0D042DC(v66, type metadata accessor for UntaggedResponse);
      }

      return v76 & 1;
  }
}

uint64_t _s13IMAP2Protocol8ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Response(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6500, &unk_1B0EE7C88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  v20 = &v44 + *(v19 + 56) - v17;
  sub_1B0D04274(a1, &v44 - v17, type metadata accessor for Response);
  sub_1B0D04274(a2, v20, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D04274(v18, v11, type metadata accessor for Response);
    v21 = *(v11 + 1);
    v23 = *(v11 + 1);
    v22 = *(v11 + 2);
    v24 = *(v11 + 3);
    v25 = v11[32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *(v20 + 3);
      v27 = v20[32];
      if (*v11 != *v20 || v21 != *(v20 + 1))
      {
        goto LABEL_20;
      }

      if (v25)
      {
        if (v25 == 1)
        {
          if (v27 == 1)
          {
            v28 = *(v20 + 1);
            v29 = *(v20 + 2);
            v30 = v26;
            v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
            sub_1B0BB6FE0(v28, v29, v30, 1u);
            v32 = v23;
            v33 = v22;
            v34 = v24;
            v35 = 1;
            goto LABEL_18;
          }

LABEL_20:
          sub_1B0BB6FE0(*(v20 + 1), *(v20 + 2), v26, v27);
          sub_1B0BB6FE0(v23, v22, v24, v25);
LABEL_21:
          sub_1B0D042DC(v18, type metadata accessor for Response);
          goto LABEL_22;
        }

        if (v27 != 2)
        {
          goto LABEL_20;
        }

        v40 = *(v20 + 1);
        v41 = *(v20 + 2);
        v42 = v26;
        v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
        sub_1B0BB6FE0(v40, v41, v42, 2u);
        v32 = v23;
        v33 = v22;
        v34 = v24;
        v35 = 2;
      }

      else
      {
        if (v20[32])
        {
          goto LABEL_20;
        }

        v37 = *(v20 + 1);
        v38 = *(v20 + 2);
        v39 = v26;
        v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
        sub_1B0BB6FE0(v37, v38, v39, 0);
        v32 = v23;
        v33 = v22;
        v34 = v24;
        v35 = 0;
      }

LABEL_18:
      sub_1B0BB6FE0(v32, v33, v34, v35);
      if (v31)
      {
        sub_1B0D042DC(v18, type metadata accessor for Response);
        v36 = 1;
        return v36 & 1;
      }

      goto LABEL_21;
    }

    sub_1B0BB6FE0(v23, v22, v24, v25);
LABEL_12:
    sub_1B0398EFC(v18, &qword_1EB6E6500, &unk_1B0EE7C88);
LABEL_22:
    v36 = 0;
    return v36 & 1;
  }

  sub_1B0D04274(v18, v14, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D042DC(v14, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  sub_1B0D046C0(v20, v7, type metadata accessor for UntaggedResponse);
  v36 = _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v7);
  sub_1B0D042DC(v7, type metadata accessor for UntaggedResponse);
  sub_1B0D042DC(v14, type metadata accessor for UntaggedResponse);
  sub_1B0D042DC(v18, type metadata accessor for Response);
  return v36 & 1;
}

void sub_1B0D041E8()
{
  type metadata accessor for UntaggedResponse(319);
  if (v0 <= 0x3F)
  {
    sub_1B041C13C(319, &qword_1EB6DD0D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0D04274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D042DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int8x16_t sub_1B0D04390(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0xA000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D043F0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x7000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0443C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x6000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04488(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D044D0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x4000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0451C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x3000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04568(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x8000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D045B4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x5000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04600(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x2000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0464C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x1000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1B0D046C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1B0D04728(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 2560;
  return result;
}

double sub_1B0D047BC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 2560;
  return result;
}

__n128 ServerID.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B041DB30(a1, a2, a3, v10);
  v5 = v10[9];
  *(a4 + 128) = v10[8];
  *(a4 + 144) = v5;
  *(a4 + 160) = v10[10];
  v6 = v10[5];
  *(a4 + 64) = v10[4];
  *(a4 + 80) = v6;
  v7 = v10[7];
  *(a4 + 96) = v10[6];
  *(a4 + 112) = v7;
  v8 = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = v8;
  result = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t static ServerID.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB6DD0B8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1B039F420(&static ServerID.empty, v2);
}

uint64_t ServerID.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerID.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerID.os.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.os.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerID.osVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ServerID.vendor.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.vendor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ServerID.supportURL.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.supportURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ServerID.address.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ServerID.date.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.date.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ServerID.command.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.command.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ServerID.arguments.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.arguments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ServerID.environment.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.environment.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1B0D04F74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

uint64_t ServerID.logDescription.getter()
{
  v1 = v0;
  v36 = 1701667182;
  v37 = 0xE400000000000000;
  v38[0] = swift_getKeyPath();
  v38[1] = 0x6E6F6973726576;
  v38[2] = 0xE700000000000000;
  v38[3] = swift_getKeyPath();
  v38[4] = 29551;
  v38[5] = 0xE200000000000000;
  v38[6] = swift_getKeyPath();
  v38[7] = 0x6F6973726556736FLL;
  v38[8] = 0xE90000000000006ELL;
  v38[9] = swift_getKeyPath();
  v38[10] = 0x726F646E6576;
  v38[11] = 0xE600000000000000;
  v38[12] = swift_getKeyPath();
  v38[13] = 0x5574726F70707573;
  v38[14] = 0xEA00000000004C52;
  v38[15] = swift_getKeyPath();
  v38[16] = 0x73736572646461;
  v38[17] = 0xE700000000000000;
  v38[18] = swift_getKeyPath();
  v38[19] = 1702125924;
  v38[20] = 0xE400000000000000;
  v38[21] = swift_getKeyPath();
  v38[22] = 0x646E616D6D6F63;
  v38[23] = 0xE700000000000000;
  v38[24] = swift_getKeyPath();
  v38[25] = 0x746E656D75677261;
  v38[26] = 0xE900000000000073;
  v38[27] = swift_getKeyPath();
  v38[28] = 0x6D6E6F7269766E65;
  v38[29] = 0xEB00000000746E65;
  result = swift_getKeyPath();
  v3 = 0;
  v38[30] = result;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = 11;
    if (v3 > 0xB)
    {
      v5 = v3;
    }

    v6 = -v5;
    v7 = &v38[3 * v3++];
    while (1)
    {
      if (v6 + v3 == 1)
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v11 = v1[9];
      v32 = v1[8];
      v33 = v11;
      v34 = v1[10];
      v12 = v1[5];
      v28 = v1[4];
      v29 = v12;
      v13 = v1[7];
      v30 = v1[6];
      v31 = v13;
      v14 = v1[1];
      v24 = *v1;
      v25 = v14;
      v15 = v1[3];
      v26 = v1[2];
      v27 = v15;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B039F420(v1, v22);
      swift_getAtKeyPath();
      v35[8] = v32;
      v35[9] = v33;
      v35[10] = v34;
      v35[4] = v28;
      v35[5] = v29;
      v35[6] = v30;
      v35[7] = v31;
      v35[0] = v24;
      v35[1] = v25;
      v35[2] = v26;
      v35[3] = v27;
      sub_1B039FF14(v35);
      v16 = v23;
      if (v23)
      {
        break;
      }

      ++v3;
      v7 += 3;
      if (v3 == 12)
      {
        goto LABEL_14;
      }
    }

    v17 = v22[22];
    *&v24 = v9;
    *(&v24 + 1) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8250, 0xE200000000000000);
    MEMORY[0x1B2726E80](v17, v16);

    v18 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF0E8(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1B0AFF0E8((v19 > 1), v20 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v20 + 1;
    *(v4 + 16 * v20 + 32) = v18;
  }

  while (v3 != 11);
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6540, &qword_1B0EE7E38);
  swift_arrayDestroy();
  if (*(v4 + 16))
  {
    *&v35[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v21 = sub_1B0E448E8();
  }

  else
  {

    return 0;
  }

  return v21;
}

char *sub_1B0D054C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6578, &qword_1B0EE7F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0D055E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6550, &qword_1B0EE7EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6558, &qword_1B0EE8180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1B0E46A78();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1B0E46A78();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_1B0E46A78();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_1B0E46A78();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = sub_1B0E46A78();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    if (a1[10] != a2[10] || v38 != v39)
    {
      v40 = a1;
      v41 = a1[10];
      v42 = a2;
      v43 = sub_1B0E46A78();
      a2 = v42;
      v44 = v43;
      a1 = v40;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    return 0;
  }

  v45 = a1[13];
  v46 = a2[13];
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    if (a1[12] != a2[12] || v45 != v46)
    {
      v47 = a1;
      v48 = a1[12];
      v49 = a2;
      v50 = sub_1B0E46A78();
      a2 = v49;
      v51 = v50;
      a1 = v47;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v52 = a1[15];
  v53 = a2[15];
  if (v52)
  {
    if (!v53)
    {
      return 0;
    }

    if (a1[14] != a2[14] || v52 != v53)
    {
      v54 = a1;
      v55 = a1[14];
      v56 = a2;
      v57 = sub_1B0E46A78();
      a2 = v56;
      v58 = v57;
      a1 = v54;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v59 = a1[17];
  v60 = a2[17];
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    if (a1[16] != a2[16] || v59 != v60)
    {
      v61 = a1;
      v62 = a1[16];
      v63 = a2;
      v64 = sub_1B0E46A78();
      a2 = v63;
      v65 = v64;
      a1 = v61;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  v66 = a1[19];
  v67 = a2[19];
  if (v66)
  {
    if (!v67)
    {
      return 0;
    }

    if (a1[18] != a2[18] || v66 != v67)
    {
      v68 = a1;
      v69 = a1[18];
      v70 = a2;
      v71 = sub_1B0E46A78();
      a2 = v70;
      v72 = v71;
      a1 = v68;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v67)
  {
    return 0;
  }

  v73 = a1[21];
  v74 = a2[21];
  if (v73)
  {
    if (v74 && (a1[20] == a2[20] && v73 == v74 || (sub_1B0E46A78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v74)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0D05B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v12 = (&v29 - v11);
  v13 = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 16);
  sub_1B041C260(v14, 0);
  v34 = v13;
  sub_1B0CEF5BC(0, v14, 0);
  v15 = v34;
  v31 = v14;
  if (!v14)
  {
    return v35;
  }

  v16 = 0;
  v30 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v29 = *(v9 + 72);
  while (1)
  {
    sub_1B03B5C80(v30 + v29 * v16, v12, &qword_1EB6E6570, &unk_1B0EF3540);
    v18 = *v12;
    v17 = v12[1];
    sub_1B0D063A4(v12 + *(v33 + 48), v8);
    v19 = v35;
    v20 = v36;
    v21 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_1B0C08B5C(v18, v17, v20 + 32, v21, (v19 + 16));
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1B0C07E68(v18, v17);
    sub_1B03B5C80(v8, v6, &qword_1EB6E6440, &unk_1B0EF3530);
    v34 = v15;
    v28 = *(v15 + 16);
    v27 = *(v15 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B0CEF5BC(v27 > 1, v28 + 1, 1);

      v15 = v34;
    }

    else
    {
    }

    ++v16;
    sub_1B0D06414(v8);
    *(v15 + 16) = v28 + 1;
    sub_1B0D063A4(v6, v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v16 == v31)
    {
      return v35;
    }
  }

  if (!v21)
  {
    goto LABEL_14;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v18 && *v25 == v17)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0D05E68(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v12 = (&v29 - v11);
  v13 = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 16);
  sub_1B041C260(v14, 0);
  v34 = v13;
  sub_1B0CEF664(0, v14, 0);
  v15 = v34;
  v31 = v14;
  if (!v14)
  {
    return v35;
  }

  v16 = 0;
  v30 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v29 = *(v9 + 72);
  while (1)
  {
    sub_1B03B5C80(v30 + v29 * v16, v12, &qword_1EB6E6568, &qword_1B0EE7F08);
    v18 = *v12;
    v17 = v12[1];
    sub_1B0D06280(v12 + *(v33 + 48), v8);
    v19 = v35;
    v20 = v36;
    v21 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_1B0C08B5C(v18, v17, v20 + 32, v21, (v19 + 16));
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1B0C07E68(v18, v17);
    sub_1B0D062E4(v8, v6);
    v34 = v15;
    v28 = *(v15 + 16);
    v27 = *(v15 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B0CEF664(v27 > 1, v28 + 1, 1);

      v15 = v34;
    }

    else
    {
    }

    ++v16;
    sub_1B0D06348(v8);
    *(v15 + 16) = v28 + 1;
    sub_1B0D06280(v6, v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v16 == v31)
    {
      return v35;
    }
  }

  if (!v21)
  {
    goto LABEL_14;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v18 && *v25 == v17)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0D06194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B0D061F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0D06280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D062E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D06348(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0D063A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D06414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall ServerResponseTranscoder.makeParsingErrorDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for Response(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v24 = v1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v7 = v29;
      v9 = v24;
      v25 = v24 + ((*(v27 + 80) + 40) & ~*(v27 + 80));
      v26 = v5;
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v8 >= v9[3])
        {
          goto LABEL_14;
        }

        v11 = v9[4];
        if (v8 + v11 >= v9[2])
        {
          v12 = v9[2];
        }

        else
        {
          v12 = 0;
        }

        sub_1B0446A38(&v25[(v8 + v11 - v12) * *(v27 + 72)], v5, type metadata accessor for Response);
        sub_1B0D0ABA8(v5, v28);
        sub_1B0446AA0(v5, type metadata accessor for Response);
        v13 = v28[0];
        v14 = v28[1];
        v29 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1B041D32C((v15 > 1), v16 + 1, 1);
          v9 = v24;
          v7 = v29;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        ++v8;
        v5 = v26;
        if (v10 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
    sub_1B0446AA0(v5, type metadata accessor for Response);

    __break(1u);
  }

  else
  {
LABEL_12:
    v28[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v18 = sub_1B0E448E8();
    v20 = v19;

    v21 = v18;
    v22 = v20;
  }

  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1B0D066F4()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB7383B8);
  __swift_project_value_buffer(v0, qword_1EB7383B8);
  return sub_1B0E43998();
}

uint64_t sub_1B0D0677C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for ResponsePayload();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Response(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(v3, v12, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1B0446AA0(v12, type metadata accessor for Response);
        sub_1B0D0CB74();
        swift_allocError();
        v28 = 9;
      }

      else
      {
        sub_1B0D0CB74();
        swift_allocError();
        v28 = 10;
      }

      *v26 = v28;
      v27 = 256;
      goto LABEL_18;
    }

    v30 = *(v12 + 2);
    *a1 = *v12;
    *(a1 + 16) = v30;
    type metadata accessor for UntaggedResponse(0);
    swift_storeEnumTagMultiPayload();
LABEL_13:
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B044533C(v12, v8, type metadata accessor for ResponsePayload);
    sub_1B0D0A440(a1);
    result = sub_1B0446AA0(v8, type metadata accessor for ResponsePayload);
    if (v2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v12 + 9);
    v15 = *(v12 + 7);
    v43 = *(v12 + 8);
    v44 = v14;
    v16 = *(v12 + 9);
    v45 = *(v12 + 10);
    v17 = *(v12 + 5);
    v18 = *(v12 + 3);
    v39 = *(v12 + 4);
    v40 = v17;
    v19 = *(v12 + 5);
    v20 = *(v12 + 7);
    v41 = *(v12 + 6);
    v42 = v20;
    v21 = *(v12 + 1);
    v36[0] = *v12;
    v36[1] = v21;
    v22 = *(v12 + 3);
    v24 = *v12;
    v23 = *(v12 + 1);
    v37 = *(v12 + 2);
    v38 = v22;
    v47[8] = v43;
    v47[9] = v16;
    v47[10] = *(v12 + 10);
    v47[4] = v39;
    v47[5] = v19;
    v47[6] = v41;
    v47[7] = v15;
    v47[0] = v24;
    v47[1] = v23;
    v46 = *(v12 + 88);
    v48 = *(v12 + 88);
    v47[2] = v37;
    v47[3] = v18;
    v25 = sub_1B0D0CBC8(v47);
    if (v25 == 1)
    {
      v33 = *sub_1B041BA38(v47);
      sub_1B0D0CB74();
      swift_allocError();
      *v34 = v33;
      *(v34 + 4) = 0;
      return swift_willThrow();
    }

    if (!v25)
    {
      sub_1B041BA38(v47);
      sub_1B0D0CB74();
      swift_allocError();
      *v26 = 0;
      v27 = 1;
LABEL_18:
      *(v26 + 4) = v27;
      return swift_willThrow();
    }

    sub_1B0D0CB74();
    swift_allocError();
    *v35 = 1;
    *(v35 + 4) = 256;
    swift_willThrow();
    return sub_1B0D0CBE4(v36);
  }

  else
  {
    v31 = *(v12 + 1);
    v49 = *v12;
    v50[0] = v31;
    *(v50 + 9) = *(v12 + 25);
    sub_1B0D0AA68(a1);
    if (v2)
    {
      v53 = v49;
      sub_1B03B1198(&v53);
      v54[0] = v50[0];
      *(v54 + 9) = *(v50 + 9);
      v32 = v54;
    }

    else
    {
      v51 = v49;
      sub_1B03B1198(&v51);
      v52[0] = v50[0];
      *(v52 + 9) = *(v50 + 9);
      v32 = v52;
    }

    return sub_1B0D0CD48(v32);
  }
}

uint64_t sub_1B0D06B78@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B0D0703C(a1 | ((HIDWORD(a1) & 1) << 32));
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast() && v10 == 1 && ((v8 | (v9 << 32)) & 0xFFFFFFFFFFLL) == 0)
    {

      swift_beginAccess();
      sub_1B0D0A0C4(v11);
      v5 = type metadata accessor for Response(0);
      (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
    }
  }

  else
  {
    v7 = type metadata accessor for Response(0);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1B0D06D08@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  if (*(*a1 + 24) < 1)
  {
    v26 = *(v7 + 56);
    v26(v14, 1, 1, v6);
    sub_1B0398EFC(v14, &qword_1EB6E6580, &unk_1B0EE7F58);
    return (v26)(a3, 1, 1, v6);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B0D0B5C8();
  }

  v15 = *a1;
  v16 = *(v7 + 80);
  v17 = *(v7 + 72);
  sub_1B044533C(v15 + ((v16 + 40) & ~v16) + v17 * v15[4], v14, type metadata accessor for Response);
  v18 = v15[4];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v15[3];
  if (v20 >= v15[2])
  {
    v20 = 0;
  }

  v15[4] = v20;
  if (__OFSUB__(v21, 1))
  {
    goto LABEL_14;
  }

  v15[3] = v21 - 1;
  v28 = *(v7 + 56);
  v28(v14, 0, 1, v6);
  sub_1B044533C(v14, a3, type metadata accessor for Response);
  sub_1B0446A38(a3, v10, type metadata accessor for Response);
  swift_beginAccess();
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  v29 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v15 = sub_1B0D0549C(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v24 = v15[2];
  v23 = v15[3];
  if (v24 >= v23 >> 1)
  {
    v15 = sub_1B0D0549C(v23 > 1, v24 + 1, 1, v15);
  }

  v15[2] = v24 + 1;
  sub_1B044533C(v10, v15 + ((v16 + 32) & ~v16) + v24 * v17, type metadata accessor for Response);
  *a2 = v15;
  swift_endAccess();
  return (v28)(v29, 0, 1, v6);
}

uint64_t sub_1B0D0703C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v316 = v1;
  v363 = v3;
  v599 = v4;
  v353 = v2;
  v315 = v5;
  v339 = sub_1B0E443C8();
  v320 = *(v339 - 8);
  v6 = *(v320 + 8);
  MEMORY[0x1EEE9AC00](v339);
  v325 = &v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v329 = &v295 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v322 = &v295 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v319 = &v295 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v335 = &v295 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v330 = &v295 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v324 = &v295 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v317 = &v295 - v23;
  v24 = type metadata accessor for MessageData.BodySection();
  v331 = *(v24 - 8);
  v332 = v24;
  v25 = *(v331 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v334 = &v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v359 = &v295 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v318 = &v295 - v30;
  v341 = type metadata accessor for StreamedBodySection(0);
  v336 = *(v341 - 8);
  v31 = *(v336 + 64);
  v32 = MEMORY[0x1EEE9AC00](v341);
  v323 = &v295 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v333 = &v295 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v337 = &v295 - v36;
  v362 = type metadata accessor for Response(0);
  v360 = *(v362 - 8);
  v37 = *(v360 + 64);
  v38 = MEMORY[0x1EEE9AC00](v362);
  v340 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v356 = &v295 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v355 = &v295 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A8, &unk_1B0EE8190);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v321 = &v295 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v327 = &v295 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v328 = &v295 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v326 = &v295 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v352 = &v295 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v358 = &v295 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v357 = &v295 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v295 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v361 = &v295 - v63;
  sub_1B0ACEC5C(&v489);
  v374 = v498;
  v375 = v499;
  v369 = v493;
  v370 = v494;
  v371 = v495;
  v372 = v496;
  v373 = v497;
  v365 = v489;
  v366 = v490;
  v367 = v491;
  v368 = v492;
  v501[8] = v497;
  v501[9] = v498;
  v501[10] = v499;
  v501[4] = v493;
  v501[5] = v494;
  v501[6] = v495;
  v501[7] = v496;
  v501[0] = v489;
  v501[1] = v490;
  v376 = v500;
  LOBYTE(v394[0]) = 1;
  LOBYTE(v392[0]) = 1;
  v502 = v500;
  v501[2] = v491;
  v501[3] = v492;
  sub_1B0398EFC(v501, &qword_1EB6E4148, &qword_1B0EE17F0);
  *(&v377[8] + 3) = v497;
  *(&v377[9] + 3) = v498;
  *(&v377[10] + 3) = v499;
  BYTE3(v377[11]) = v500;
  *(&v377[4] + 3) = v493;
  *(&v377[5] + 3) = v494;
  *(&v377[6] + 3) = v495;
  *(&v377[7] + 3) = v496;
  *(v377 + 3) = v489;
  *(&v377[1] + 3) = v490;
  *(&v377[2] + 3) = v491;
  *(&v377[3] + 3) = v492;
  v503[8] = v373;
  v503[9] = v374;
  v503[10] = v375;
  v504 = v376;
  v503[4] = v369;
  v503[5] = v370;
  v503[6] = v371;
  v503[7] = v372;
  v503[0] = v365;
  v503[1] = v366;
  v503[2] = v367;
  v503[3] = v368;
  sub_1B0398EFC(v503, &qword_1EB6E4148, &qword_1B0EE17F0);
  v374 = v498;
  v375 = v499;
  v369 = v493;
  v370 = v494;
  v371 = v495;
  v376 = v500;
  v372 = v496;
  v373 = v497;
  v365 = v489;
  v366 = v490;
  v367 = v491;
  v368 = v492;
  v506 = 0;
  memset(v505, 0, sizeof(v505));
  sub_1B0398EFC(v505, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v521 = v377[8];
  v522 = v377[9];
  v523 = v377[10];
  v517 = v377[4];
  v518 = v377[5];
  v519 = v377[6];
  v520 = v377[7];
  v513 = v377[0];
  v514 = v377[1];
  v515 = v377[2];
  v516 = v377[3];
  v535 = v373;
  v536 = v374;
  v537 = v375;
  v531 = v369;
  v532 = v370;
  v533 = v371;
  v534 = v372;
  v527 = v365;
  v528 = v366;
  v529 = v367;
  v530 = v368;
  v565 = v377[8];
  v566 = v377[9];
  v567 = v377[10];
  v561 = v377[4];
  v562 = v377[5];
  v563 = v377[6];
  v564 = v377[7];
  v557 = v377[0];
  v558 = v377[1];
  v559 = v377[2];
  v560 = v377[3];
  v578 = v373;
  v579 = v374;
  v580 = v375;
  v574 = v369;
  v575 = v370;
  v576 = v371;
  v577 = v372;
  v570 = v365;
  v571 = v366;
  LOBYTE(v380) = 1;
  LOBYTE(v378[0]) = 1;
  v364 = 1;
  v508 = v394[0];
  v507 = 0;
  v511 = 0;
  v512 = v392[0];
  v524 = v377[11];
  v526 = MEMORY[0x1E69E7CC0];
  v538 = v376;
  v540 = 0u;
  memset(&v539[7], 0, 128);
  v541 = 1;
  v544 = 0;
  v545 = 1;
  v547 = 0;
  v548 = 1;
  v550 = 0u;
  v551 = 0u;
  v552 = 0u;
  v554 = v394[0];
  v553 = 0;
  v555 = 0;
  v556 = v392[0];
  v568 = v377[11];
  v569 = MEMORY[0x1E69E7CC0];
  v581 = v376;
  v572 = v367;
  v573 = v368;
  v589 = 0u;
  v590 = 0u;
  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v583 = 0u;
  v584 = 0u;
  v582 = 0u;
  v591 = 1;
  v592 = 0;
  v593 = 1;
  v594 = 0;
  v595 = 1;
  v596 = 0u;
  v597 = 0u;
  v598 = 0u;
  sub_1B0CF6930(&v507, v396);
  sub_1B0AA4C0C(&v553);
  v478 = v508;
  v476 = v509;
  v477 = v510;
  v351 = v507;
  v475 = v512;
  v465 = v515;
  v466 = v516;
  v463 = v513;
  v464 = v514;
  v469 = v519;
  v470 = v520;
  v467 = v517;
  v468 = v518;
  v474 = v524;
  v472 = v522;
  v473 = v523;
  v471 = v521;
  v462[0] = *v525;
  *(v462 + 3) = *&v525[3];
  v458 = v535;
  v459 = v536;
  v460 = v537;
  v461 = v538;
  v454 = v531;
  v455 = v532;
  v456 = v533;
  v457 = v534;
  v450 = v527;
  v451 = v528;
  v452 = v529;
  v453 = v530;
  v447 = *&v539[64];
  v448 = *&v539[80];
  v449[0] = *&v539[96];
  *(v449 + 15) = *&v539[111];
  v443 = *v539;
  v444 = *&v539[16];
  v445 = *&v539[32];
  v446 = *&v539[48];
  v354 = v526;
  *v347 = *&v539[127];
  *&v347[8] = v540;
  v442 = v541;
  v440 = v542;
  v441 = v543;
  v346 = v544;
  v439 = v545;
  v438[0] = *v546;
  *(v438 + 3) = *&v546[3];
  v437 = v548;
  v64 = v436;
  v436[0] = *v549;
  *(v436 + 3) = *&v549[3];
  v343 = v550;
  v348 = v547;
  v349 = *(&v550 + 1);
  v344 = *(&v551 + 1);
  v345 = v551;
  v350 = *(&v552 + 1);
  v65 = v552;
  if ((v353 & 0x100000000) != 0)
  {
    LODWORD(v353) = v511;
  }

  else
  {
    v475 = 0;
  }

  v66 = v361;
  sub_1B0D06D08(v599, v363, v361);
  v67 = v360;
  v68 = v362;
  if ((*(v360 + 48))(v66, 1, v362) == 1)
  {
    goto LABEL_14;
  }

  sub_1B03B5C80(v66, v62, &qword_1EB6E6580, &unk_1B0EE7F58);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0446AA0(v62, type metadata accessor for Response);
LABEL_14:
    sub_1B0D0CB74();
    swift_allocError();
    *v82 = 1;
    *(v82 + 4) = 256;
    swift_willThrow();
    v83 = &qword_1EB6E6580;
    v84 = &unk_1B0EE7F58;
    v85 = v66;
LABEL_15:
    sub_1B0398EFC(v85, v83, v84);
    goto LABEL_16;
  }

  v69 = *(v62 + 7);
  v392[8] = *(v62 + 8);
  v70 = *(v62 + 8);
  v392[9] = *(v62 + 9);
  v71 = *(v62 + 9);
  v392[10] = *(v62 + 10);
  v72 = *(v62 + 3);
  v392[4] = *(v62 + 4);
  v73 = *(v62 + 4);
  v392[5] = *(v62 + 5);
  v74 = *(v62 + 5);
  v392[6] = *(v62 + 6);
  v75 = *(v62 + 6);
  v392[7] = *(v62 + 7);
  v76 = *(v62 + 1);
  v392[0] = *v62;
  v392[1] = v76;
  v78 = *v62;
  v77 = *(v62 + 1);
  v392[2] = *(v62 + 2);
  v79 = *(v62 + 2);
  v392[3] = *(v62 + 3);
  v394[8] = v70;
  v394[9] = v71;
  v394[10] = *(v62 + 10);
  v394[4] = v73;
  v394[5] = v74;
  v394[6] = v75;
  v394[7] = v69;
  v394[0] = v78;
  v394[1] = v77;
  v394[2] = v79;
  v393 = *(v62 + 88);
  v395 = *(v62 + 88);
  v394[3] = v72;
  v80 = sub_1B0D0CBC8(v394);
  if (!v80)
  {
    v313 = v65;
    v351 = *sub_1B041BA38(v394);
    v478 = 0;
    goto LABEL_11;
  }

  if (v80 != 1)
  {
    sub_1B0D0CBE4(v392);
    goto LABEL_14;
  }

  v313 = v65;
  LODWORD(v353) = *sub_1B041BA38(v394);
  v475 = 0;
LABEL_11:
  v302 = *(&v551 + 1);
  v303 = *(&v552 + 1);
  v300 = v540;
  v301 = *(&v550 + 1);
  v314 = v526;
  v299 = *&v539[127];
  sub_1B0398EFC(v66, &qword_1EB6E6580, &unk_1B0EE7F58);
  v81 = v336;
  v310 = *(v336 + 56);
  v311 = v336 + 56;
  v310(v352, 1, 1, v341);
  if (*(*v599 + 24) <= 0)
  {
    v91 = *(v67 + 56);
LABEL_119:
    v269 = v358;
    v91(v358, 1, 1, v68);
    sub_1B0398EFC(v269, &qword_1EB6E6580, &unk_1B0EE7F58);
    v270 = v357;
    v91(v357, 1, 1, v68);
    sub_1B0398EFC(v270, &qword_1EB6E6580, &unk_1B0EE7F58);
    sub_1B0D0CB74();
    swift_allocError();
    *v271 = 0;
    *(v271 + 4) = 256;
    swift_willThrow();
    goto LABEL_124;
  }

  v342 = 0;
  v338 = (v67 + 56);
  v308 = 0;
  v309 = (v81 + 48);
  v312 = (v320 + 48);
  v306 = (v320 + 56);
  v307 = (v320 + 8);
  v296 = &v463 + 3;
  v297 = &v443 + 7;
  v298 = (v320 + 32);
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0D0B5C8();
    }

    v100 = *v599;
    v101 = *(v67 + 80);
    v102 = *(v67 + 72);
    result = sub_1B044533C(*v599 + ((v101 + 40) & ~v101) + v102 * *(*v599 + 32), v358, type metadata accessor for Response);
    v103 = v100[4];
    v104 = __OFADD__(v103, 1);
    v105 = v103 + 1;
    if (v104)
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      return result;
    }

    v106 = v100[3];
    if (v105 >= v100[2])
    {
      v105 = 0;
    }

    v100[4] = v105;
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_140;
    }

    v100[3] = v106 - 1;
    v107 = v358;
    v336 = *v338;
    (v336)(v358, 0, 1, v68);
    v108 = v107;
    v109 = v357;
    sub_1B044533C(v108, v357, type metadata accessor for Response);
    sub_1B0446A38(v109, v356, type metadata accessor for Response);
    v110 = v363;
    swift_beginAccess();
    v111 = *v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v110 = v111;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = sub_1B0D0549C(0, v111[2] + 1, 1, v111);
      *v363 = v111;
    }

    v114 = v111[2];
    v113 = v111[3];
    if (v114 >= v113 >> 1)
    {
      v111 = sub_1B0D0549C(v113 > 1, v114 + 1, 1, v111);
    }

    v111[2] = v114 + 1;
    sub_1B044533C(v356, v111 + ((v101 + 32) & ~v101) + v114 * v102, type metadata accessor for Response);
    *v363 = v111;
    swift_endAccess();
    v115 = v357;
    v68 = v362;
    (v336)(v357, 0, 1, v362);
    v116 = v115;
    v117 = v355;
    sub_1B044533C(v116, v355, type metadata accessor for Response);
    v118 = v340;
    sub_1B0446A38(v117, v340, type metadata accessor for Response);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0446AA0(v118, type metadata accessor for Response);
      sub_1B0D0CB74();
      swift_allocError();
      *v265 = 1;
      *(v265 + 4) = 256;
      swift_willThrow();
      v266 = v355;
      goto LABEL_123;
    }

    v119 = *(v118 + 144);
    v388 = *(v118 + 128);
    v389 = v119;
    v390 = *(v118 + 160);
    v391 = *(v118 + 176);
    v120 = *(v118 + 80);
    v384 = *(v118 + 64);
    v385 = v120;
    v121 = *(v118 + 112);
    v386 = *(v118 + 96);
    v387 = v121;
    v122 = *(v118 + 16);
    v380 = *v118;
    v381 = v122;
    v123 = *(v118 + 48);
    v382 = *(v118 + 32);
    v383 = v123;
    if (v342 == 99999)
    {
      sub_1B0D0CB74();
      swift_allocError();
      v268 = 2;
LABEL_121:
      *v267 = v268;
      *(v267 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v380);
      goto LABEL_122;
    }

    v124 = *(v118 + 144);
    v378[8] = *(v118 + 128);
    v378[9] = v124;
    v378[10] = *(v118 + 160);
    v379 = *(v118 + 176);
    v125 = *(v118 + 80);
    v378[4] = *(v118 + 64);
    v378[5] = v125;
    v126 = *(v118 + 112);
    v378[6] = *(v118 + 96);
    v378[7] = v126;
    v127 = *(v118 + 16);
    v378[0] = *v118;
    v378[1] = v127;
    v128 = *(v118 + 48);
    v378[2] = *(v118 + 32);
    v378[3] = v128;
    v129 = sub_1B0D0CBC8(v378);
    if (v129 > 3)
    {
      break;
    }

    if (v129 == 2)
    {
      result = sub_1B041BA38(v378);
      if (__OFADD__(v308, 1))
      {
        goto LABEL_141;
      }

      v65 = v313;
      v67 = v360;
      if (v308 + 1 >= 50)
      {
        sub_1B0D0CB74();
        swift_allocError();
        *v282 = 3;
        *(v282 + 4) = 256;
        swift_willThrow();
        sub_1B0D0CBE4(&v380);
LABEL_133:
        sub_1B0446AA0(v355, type metadata accessor for Response);
        v83 = &qword_1EB6E65A8;
        v84 = &unk_1B0EE8190;
        v85 = v352;
        goto LABEL_15;
      }

      ++v308;
      v177 = *result;
      v178 = *(result + 16);
      v179 = *(result + 48);
      *&v396[32] = *(result + 32);
      *&v396[48] = v179;
      *v396 = v177;
      *&v396[16] = v178;
      v180 = *(result + 64);
      v181 = *(result + 80);
      v182 = *(result + 112);
      *&v396[96] = *(result + 96);
      *&v396[112] = v182;
      *&v396[64] = v180;
      *&v396[80] = v181;
      v183 = *(result + 128);
      v184 = *(result + 144);
      v185 = *(result + 160);
      *&v396[176] = *(result + 176);
      *&v396[144] = v184;
      *&v396[160] = v185;
      *&v396[128] = v183;
      switch(sub_1B0D0CC38(v396))
      {
        case 1u:
          v224 = sub_1B0504D0C(v396);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v369 = *(v224 + 64);
          v370 = *(v224 + 80);
          v371 = *(v224 + 96);
          *&v372 = *(v224 + 112);
          v365 = *v224;
          v366 = *(v224 + 16);
          v367 = *(v224 + 32);
          v368 = *(v224 + 48);
          v225 = v297;
          v226 = *(v297 + 5);
          v377[4] = *(v297 + 4);
          v377[5] = v226;
          v377[6] = *(v297 + 6);
          *&v377[7] = *(v297 + 14);
          v227 = *(v297 + 1);
          v377[0] = *v297;
          v377[1] = v227;
          v228 = *(v297 + 3);
          v377[2] = *(v297 + 2);
          v377[3] = v228;
          sub_1B0398EFC(v377, &qword_1EB6E64B0, &unk_1B0EE81A0);
          v229 = v370;
          v225[4] = v369;
          v225[5] = v229;
          v225[6] = v371;
          *(v225 + 14) = v372;
          goto LABEL_109;
        case 2u:
          *&v347[16] = *sub_1B0504D0C(v396);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v442 = 0;
          goto LABEL_22;
        case 3u:
          LODWORD(v353) = *sub_1B0504D0C(v396);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v475 = 0;
          goto LABEL_22;
        case 4u:
          v198 = *sub_1B0504D0C(v396);
          if (HIDWORD(v198))
          {
            goto LABEL_138;
          }

          sub_1B0446AA0(v355, type metadata accessor for Response);
          v439 = 0;
          v346 = v198;
          goto LABEL_22;
        case 5u:
          v230 = sub_1B0504D0C(v396);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v231 = *v230;
          v232 = *(v230 + 16);
          v233 = *(v230 + 48);
          if (*(v230 + 177))
          {
            v367 = *(v230 + 32);
            v368 = v233;
            v365 = v231;
            v366 = v232;
            v234 = *(v230 + 64);
            v235 = *(v230 + 80);
            v236 = *(v230 + 96);
            v372 = *(v230 + 112);
            v370 = v235;
            v371 = v236;
            v369 = v234;
            v237 = *(v230 + 128);
            v238 = *(v230 + 144);
            v239 = *(v230 + 160);
            v376 = *(v230 + 176);
            v374 = v238;
            v375 = v239;
            v373 = v237;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v365);
            v225 = &v450;
            v377[8] = v458;
            v377[9] = v459;
            v377[10] = v460;
            LOBYTE(v377[11]) = v461;
            v377[4] = v454;
            v377[5] = v455;
            v377[6] = v456;
            v377[7] = v457;
            v377[0] = v450;
            v377[1] = v451;
            v377[2] = v452;
            v377[3] = v453;
            sub_1B0398EFC(v377, &qword_1EB6E4148, &qword_1B0EE17F0);
            v240 = v372;
            v458 = v373;
            v459 = v374;
            v460 = v375;
            v461 = v376;
          }

          else
          {
            v367 = *(v230 + 32);
            v368 = v233;
            v365 = v231;
            v366 = v232;
            v241 = *(v230 + 64);
            v242 = *(v230 + 80);
            v243 = *(v230 + 96);
            v372 = *(v230 + 112);
            v370 = v242;
            v371 = v243;
            v369 = v241;
            v244 = *(v230 + 128);
            v245 = *(v230 + 144);
            v246 = *(v230 + 160);
            v376 = *(v230 + 176);
            v374 = v245;
            v375 = v246;
            v373 = v244;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v365);
            v225 = v296;
            v247 = *(v296 + 9);
            v377[8] = *(v296 + 8);
            v377[9] = v247;
            v377[10] = *(v296 + 10);
            LOBYTE(v377[11]) = v296[176];
            v248 = *(v296 + 5);
            v377[4] = *(v296 + 4);
            v377[5] = v248;
            v249 = *(v296 + 7);
            v377[6] = *(v296 + 6);
            v377[7] = v249;
            v250 = *(v296 + 1);
            v377[0] = *v296;
            v377[1] = v250;
            v251 = *(v296 + 3);
            v377[2] = *(v296 + 2);
            v377[3] = v251;
            sub_1B0398EFC(v377, &qword_1EB6E4148, &qword_1B0EE17F0);
            v252 = v374;
            v253 = v375;
            v240 = v372;
            v225[8] = v373;
            v225[9] = v252;
            v225[10] = v253;
            *(v225 + 176) = v376;
          }

          v254 = v370;
          v225[4] = v369;
          v225[5] = v254;
          v225[6] = v371;
          v225[7] = v240;
LABEL_109:
          v255 = v366;
          *v225 = v365;
          v225[1] = v255;
          v256 = v368;
          v225[2] = v367;
          v225[3] = v256;
          goto LABEL_22;
        case 6u:
        case 9u:
        case 0xAu:
          sub_1B0504D0C(v396);
          v377[8] = v388;
          v377[9] = v389;
          v377[10] = v390;
          LOWORD(v377[11]) = v391;
          v377[4] = v384;
          v377[5] = v385;
          v377[6] = v386;
          v377[7] = v387;
          v377[0] = v380;
          v377[1] = v381;
          v377[2] = v382;
          v377[3] = v383;
          sub_1B0D0CCA0();
          swift_allocError();
          v284 = v377[3];
          v286 = v377[0];
          v285 = v377[1];
          *(v287 + 32) = v377[2];
          *(v287 + 48) = v284;
          *v287 = v286;
          *(v287 + 16) = v285;
          v288 = v377[7];
          v290 = v377[4];
          v289 = v377[5];
          *(v287 + 96) = v377[6];
          *(v287 + 112) = v288;
          *(v287 + 64) = v290;
          *(v287 + 80) = v289;
          v292 = v377[9];
          v291 = v377[10];
          v293 = v377[8];
          *(v287 + 176) = v377[11];
          *(v287 + 144) = v292;
          *(v287 + 160) = v291;
          *(v287 + 128) = v293;
          swift_willThrow();
          goto LABEL_133;
        case 7u:
          v212 = sub_1B0504D0C(v396);
          v213 = *(v212 + 8);
          v214 = *(v212 + 16);
          v215 = *(v212 + 24);
          v216 = *(v212 + 32);
          v479 = *v212;
          v480 = v213;
          v481 = v214;
          v482 = v215;
          v483 = v216;
          v377[8] = v388;
          v377[9] = v389;
          v377[10] = v390;
          LOWORD(v377[11]) = v391;
          v377[4] = v384;
          v377[5] = v385;
          v377[6] = v386;
          v377[7] = v387;
          v377[2] = v382;
          v377[3] = v383;
          v377[0] = v380;
          v377[1] = v381;
          v217 = sub_1B041BA38(v377);
          sub_1B0D0CC44(v217, &v365);
          v361 = StreamingKind.sectionSpecifier.getter();
          v354 = v218;
          LODWORD(v320) = v219;
          if (!(v216 >> 6))
          {
            goto LABEL_95;
          }

          if (v216 >> 6 == 1)
          {
            v213 = v215;
            LOBYTE(v214) = v216;
LABEL_95:
            v220 = v214 | (HIDWORD(v213) != 0);
            if (v220)
            {
              v221 = 0;
            }

            else
            {
              v221 = v213;
            }
          }

          else
          {
            v221 = 0;
            v220 = 1;
          }

          v257 = type metadata accessor for MessageData.BodyData();
          v258 = *(*(v257 - 8) + 56);
          v259 = v317;
          v258(v317, 1, 1, v257);
          v260 = *(v332 + 24);
          v261 = v318;
          v258(&v318[v260], 1, 1, v257);
          v262 = v354;
          *v261 = v361;
          *(v261 + 1) = v262;
          v261[16] = v320;
          *(v261 + 5) = v221;
          v261[24] = v220 & 1;
          sub_1B0C8C870(v259, &v261[v260], &qword_1EB6E4178, &unk_1B0EE7570);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v314 = sub_1B0D05728(0, v314[2] + 1, 1, v314);
          }

          v64 = v436;
          v68 = v362;
          v67 = v360;
          v264 = v314[2];
          v263 = v314[3];
          if (v264 >= v263 >> 1)
          {
            v314 = sub_1B0D05728(v263 > 1, v264 + 1, 1, v314);
          }

          sub_1B0D0CBE4(&v380);
          sub_1B0D0CBE4(&v380);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v160 = v314;
          v314[2] = v264 + 1;
          v161 = v160 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v264;
          v162 = v318;
          break;
        case 8u:
          v348 = *sub_1B0504D0C(v396);
          sub_1B0446AA0(v355, type metadata accessor for Response);
          v437 = 0;
          goto LABEL_22;
        case 0xBu:
          v206 = sub_1B0504D0C(v396);
          v207 = sub_1B0D0C6B0(*v206);
          sub_1B0D0CBE4(&v380);
          sub_1B0446AA0(v355, type metadata accessor for Response);

          *&v347[8] = v207;
          v300 = v207;
          goto LABEL_22;
        case 0xCu:
          v210 = sub_1B0504D0C(v396);
          v211 = v210[1];
          v343 = *v210;
          sub_1B0446AA0(v355, type metadata accessor for Response);

          v349 = v211;
          v301 = v211;
          goto LABEL_22;
        case 0xDu:
          v208 = sub_1B0504D0C(v396);
          v209 = v208[1];
          v345 = *v208;
          sub_1B0446AA0(v355, type metadata accessor for Response);

          v344 = v209;
          v302 = v209;
          goto LABEL_22;
        case 0xEu:
          v222 = sub_1B0504D0C(v396);
          v223 = v222[1];
          v313 = *v222;
          sub_1B0446AA0(v355, type metadata accessor for Response);

          v350 = v223;
          v303 = v223;
          goto LABEL_22;
        default:
          v186 = sub_1B0504D0C(v396);
          v187 = sub_1B0D0C618(*v186);
          sub_1B0D0CBE4(&v380);
          sub_1B0446AA0(v355, type metadata accessor for Response);

          *v347 = v187;
          v299 = v187;
          goto LABEL_22;
      }

      goto LABEL_56;
    }

    if (v129 != 3)
    {
      sub_1B041BA38(v378);
      sub_1B0D0CB74();
      swift_allocError();
      v268 = 1;
      goto LABEL_121;
    }

    v130 = sub_1B041BA38(v378);
    v131 = *(v130 + 8);
    v133 = *(v130 + 16);
    v132 = *(v130 + 24);
    v134 = *(v130 + 32);
    v484 = *v130;
    v485 = v131;
    v486 = v133;
    v487 = v132;
    v488 = v134;
    v135 = v326;
    sub_1B03B5C80(v352, v326, &qword_1EB6E65A8, &unk_1B0EE8190);
    v136 = (*v309)(v135, 1, v341);
    sub_1B0398EFC(v135, &qword_1EB6E65A8, &unk_1B0EE8190);
    if (v136 != 1)
    {
      sub_1B0D0CB74();
      swift_allocError();
      *v281 = 5;
      *(v281 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v380);
      sub_1B0446AA0(v355, type metadata accessor for Response);
      v279 = v352;
      goto LABEL_131;
    }

    if (v134 >> 6)
    {
      if (v134 >> 6 != 1)
      {
        LODWORD(v320) = 0;
        LODWORD(v361) = 1;
        goto LABEL_21;
      }

      v137 = HIDWORD(v132) != 0;
      if (v134 & 1 | (HIDWORD(v132) != 0))
      {
        v138 = 0;
      }

      else
      {
        v138 = v132;
      }

      if ((v134 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v137 = HIDWORD(v131) != 0;
      if (v133 & 1 | (HIDWORD(v131) != 0))
      {
        v138 = 0;
      }

      else
      {
        v138 = v131;
      }

      if ((v133 & 1) == 0)
      {
        v132 = v131;
LABEL_83:
        v64 = v436;
        v205 = v138;
        if (v137)
        {
          v205 = 0;
        }

        if (v137 || v132 != v205)
        {
          sub_1B0D0CB74();
          swift_allocError();
          v268 = 8;
          goto LABEL_121;
        }

        LODWORD(v361) = 0;
        goto LABEL_20;
      }
    }

    LODWORD(v361) = 1;
LABEL_20:
    LODWORD(v320) = v138;
LABEL_21:
    v92 = StreamingKind.sectionSpecifier.getter();
    v94 = v93;
    v96 = v95;
    sub_1B0D0CBE4(&v380);
    sub_1B0446AA0(v355, type metadata accessor for Response);
    v97 = v352;
    sub_1B0398EFC(v352, &qword_1EB6E65A8, &unk_1B0EE8190);
    v98 = v341;
    v99 = v321;
    (*v306)(&v321[*(v341 + 24)], 1, 1, v339);
    *v99 = v92;
    *(v99 + 8) = v94;
    *(v99 + 16) = v96;
    *(v99 + 20) = v320;
    *(v99 + 24) = v361;
    v310(v99, 0, 1, v98);
    sub_1B03C60A4(v99, v97, &qword_1EB6E65A8, &unk_1B0EE8190);
    v68 = v362;
    v67 = v360;
    v64 = v436;
LABEL_22:
    ++v342;
    if (*(*v599 + 24) <= 0)
    {
      v91 = v336;
      goto LABEL_119;
    }
  }

  v139 = v313;
  v140 = v335;
  if (v129 != 4)
  {
    if (v129 != 5)
    {
      sub_1B0446AA0(v355, type metadata accessor for Response);
      sub_1B0398EFC(v352, &qword_1EB6E65A8, &unk_1B0EE8190);
      LODWORD(v377[0]) = v351;
      BYTE4(v377[0]) = v478;
      *(v377 + 5) = v476;
      BYTE7(v377[0]) = v477;
      v273 = v353;
      DWORD2(v377[0]) = v353;
      BYTE12(v377[0]) = v475;
      *(&v377[8] + 13) = v471;
      *(&v377[9] + 13) = v472;
      *(&v377[10] + 13) = v473;
      *(&v377[11] + 13) = v474;
      *(&v377[4] + 13) = v467;
      *(&v377[5] + 13) = v468;
      *(&v377[6] + 13) = v469;
      *(&v377[7] + 13) = v470;
      *(v377 + 13) = v463;
      *(&v377[1] + 13) = v464;
      *(&v377[2] + 13) = v465;
      *(&v377[3] + 13) = v466;
      *(&v377[12] + 1) = v462[0];
      DWORD1(v377[12]) = *(v462 + 3);
      *(&v377[12] + 1) = v354;
      v377[21] = v458;
      v377[22] = v459;
      v377[23] = v460;
      LOBYTE(v377[24]) = v461;
      v377[17] = v454;
      v377[18] = v455;
      v377[19] = v456;
      v377[20] = v457;
      v377[13] = v450;
      v377[14] = v451;
      v377[15] = v452;
      v377[16] = v453;
      *(&v377[28] + 1) = v447;
      *(&v377[29] + 1) = v448;
      *(&v377[30] + 1) = v449[0];
      *(&v377[24] + 1) = v443;
      *(&v377[25] + 1) = v444;
      *(&v377[26] + 1) = v445;
      *(&v377[27] + 1) = v446;
      v377[31] = *(v449 + 15);
      v377[32] = *v347;
      *&v377[33] = *&v347[16];
      BYTE8(v377[33]) = v442;
      *(&v377[33] + 9) = v440;
      BYTE11(v377[33]) = v441;
      HIDWORD(v377[33]) = v346;
      LOBYTE(v377[34]) = v439;
      *(&v377[34] + 1) = v438[0];
      DWORD1(v377[34]) = *(v438 + 3);
      *(&v377[34] + 1) = v348;
      LOBYTE(v377[35]) = v437;
      *(&v377[35] + 1) = v436[0];
      DWORD1(v377[35]) = *(v436 + 3);
      v275 = v343;
      v274 = v344;
      *(&v377[35] + 1) = v343;
      *&v377[36] = v349;
      v276 = v345;
      *(&v377[36] + 1) = v345;
      *&v377[37] = v344;
      *(&v377[37] + 1) = v139;
      *&v377[38] = v350;
      memcpy(v315, v377, 0x268uLL);
      type metadata accessor for UntaggedResponse(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      *v396 = v351;
      v396[4] = v478;
      *&v396[5] = v476;
      v396[7] = v477;
      *&v396[8] = v273;
      v396[12] = v475;
      *&v396[141] = v471;
      *&v396[157] = v472;
      *&v396[173] = v473;
      v397 = v474;
      *&v396[77] = v467;
      *&v396[93] = v468;
      *&v396[109] = v469;
      *&v396[125] = v470;
      *&v396[13] = v463;
      *&v396[29] = v464;
      *&v396[45] = v465;
      *&v396[61] = v466;
      *v398 = v462[0];
      *&v398[3] = *(v462 + 3);
      v399 = v354;
      v408 = v458;
      v409 = v459;
      v410 = v460;
      v411 = v461;
      v404 = v454;
      v405 = v455;
      v406 = v456;
      v407 = v457;
      v400 = v450;
      v401 = v451;
      v402 = v452;
      v403 = v453;
      v416 = v447;
      v417 = v448;
      *v418 = v449[0];
      v412 = v443;
      v413 = v444;
      v414 = v445;
      v415 = v446;
      *&v418[15] = *(v449 + 15);
      v419 = *v347;
      v420 = *&v347[8];
      v421 = v442;
      v422 = v440;
      v423 = v441;
      v424 = v346;
      v425 = v439;
      *v426 = v438[0];
      *&v426[3] = *(v438 + 3);
      v427 = v348;
      v428 = v437;
      *v429 = v436[0];
      *&v429[3] = *(v436 + 3);
      v430 = v275;
      v431 = v349;
      v432 = v276;
      v433 = v274;
      v434 = v139;
      v435 = v350;
      sub_1B0CF6930(v377, &v365);
      return sub_1B0AA4C0C(v396);
    }

    v141 = v352;
    v142 = v327;
    sub_1B03B5C80(v352, v327, &qword_1EB6E65A8, &unk_1B0EE8190);
    v143 = v341;
    if ((*v309)(v142, 1, v341) == 1)
    {
      sub_1B0398EFC(v142, &qword_1EB6E65A8, &unk_1B0EE8190);
      sub_1B0D0CB74();
      swift_allocError();
      *v280 = 7;
      *(v280 + 4) = 256;
      swift_willThrow();
      sub_1B0446AA0(v355, type metadata accessor for Response);
      v272 = v141;
      goto LABEL_125;
    }

    sub_1B0398EFC(v141, &qword_1EB6E65A8, &unk_1B0EE8190);
    v144 = v333;
    sub_1B044533C(v142, v333, type metadata accessor for StreamedBodySection);
    v145 = 1;
    v310(v141, 1, 1, v143);
    v146 = v323;
    sub_1B0446A38(v144, v323, type metadata accessor for StreamedBodySection);
    v147 = *v146;
    v148 = *(v146 + 8);
    v149 = *(v146 + 16);
    LODWORD(v320) = *(v146 + 20);
    LODWORD(v305) = *(v146 + 24);
    v150 = v329;
    sub_1B03B5C80(v146 + *(v143 + 24), v329, &qword_1EB6E2070, &qword_1B0E9F040);
    v361 = v147;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v354 = v148;
    sub_1B0ACE964(v148, v149);
    sub_1B0446AA0(v146, type metadata accessor for StreamedBodySection);
    if ((*v312)(v150, 1, v339) != 1)
    {
      (*v298)(v330, v329, v339);
      v145 = 0;
    }

    v151 = type metadata accessor for MessageData.BodyData();
    v152 = *(*(v151 - 8) + 56);
    v153 = v330;
    v152(v330, v145, 1, v151);
    v154 = *(v332 + 24);
    v155 = v334;
    v152(&v334[v154], 1, 1, v151);
    v156 = v354;
    *v155 = v361;
    *(v155 + 1) = v156;
    v155[16] = v149;
    *(v155 + 5) = v320;
    v155[24] = v305;
    sub_1B0C8C870(v153, &v155[v154], &qword_1EB6E4178, &unk_1B0EE7570);
    v157 = v314;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v314 = sub_1B0D05728(0, v157[2] + 1, 1, v157);
    }

    v64 = v436;
    v68 = v362;
    v67 = v360;
    v159 = v314[2];
    v158 = v314[3];
    if (v159 >= v158 >> 1)
    {
      v314 = sub_1B0D05728(v158 > 1, v159 + 1, 1, v314);
    }

    sub_1B0446AA0(v333, type metadata accessor for StreamedBodySection);
    sub_1B0446AA0(v355, type metadata accessor for Response);
    v160 = v314;
    v314[2] = v159 + 1;
    v161 = v160 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v159;
    v162 = v334;
LABEL_56:
    sub_1B044533C(v162, v161, type metadata accessor for MessageData.BodySection);
    v354 = v160;
    goto LABEL_22;
  }

  v163 = sub_1B041BA38(v378);
  v164 = *v163;
  v165 = *(v163 + 8);
  v166 = *(v163 + 12);
  v167 = *(v163 + 20);
  v168 = *(v163 + 22);
  v169 = v328;
  sub_1B03B5C80(v352, v328, &qword_1EB6E65A8, &unk_1B0EE8190);
  v170 = v341;
  if ((*v309)(v169, 1, v341) == 1)
  {
    *&v396[128] = v388;
    *&v396[144] = v389;
    *&v396[160] = v390;
    *&v396[176] = v391;
    *&v396[64] = v384;
    *&v396[80] = v385;
    *&v396[96] = v386;
    *&v396[112] = v387;
    *v396 = v380;
    *&v396[16] = v381;
    *&v396[32] = v382;
    *&v396[48] = v383;
    v277 = *sub_1B041BA38(v396);

    sub_1B0398EFC(v169, &qword_1EB6E65A8, &unk_1B0EE8190);
    sub_1B0D0CB74();
    swift_allocError();
    *v278 = 6;
    *(v278 + 4) = 256;
    swift_willThrow();
    sub_1B0D0CBE4(&v380);
    sub_1B0D0CBE4(&v380);
    sub_1B0446AA0(v355, type metadata accessor for Response);
    v279 = v352;
LABEL_131:
    sub_1B0398EFC(v279, &qword_1EB6E65A8, &unk_1B0EE8190);
    v64 = v436;
    goto LABEL_126;
  }

  v305 = v166;
  v361 = v165;
  v171 = v169;
  v172 = v337;
  sub_1B044533C(v171, v337, type metadata accessor for StreamedBodySection);
  v173 = *(v170 + 24);
  sub_1B03B5C80(v172 + v173, v140, &qword_1EB6E2070, &qword_1B0E9F040);
  v174 = v339;
  v320 = *v312;
  if (v320(v140, 1, v339) == 1)
  {
    *&v396[128] = v388;
    *&v396[144] = v389;
    *&v396[160] = v390;
    *&v396[176] = v391;
    *&v396[64] = v384;
    *&v396[80] = v385;
    *&v396[96] = v386;
    *&v396[112] = v387;
    *v396 = v380;
    *&v396[16] = v381;
    *&v396[32] = v382;
    *&v396[48] = v383;
    v175 = *sub_1B041BA38(v396);

    sub_1B0398EFC(v140, &qword_1EB6E2070, &qword_1B0E9F040);
    v176 = v319;
    sub_1B0E44378();
    (*v306)(v176, 0, 1, v174);
    sub_1B0C8C870(v176, v172 + v173, &qword_1EB6E2070, &qword_1B0E9F040);
  }

  else
  {
    *&v396[128] = v388;
    *&v396[144] = v389;
    *&v396[160] = v390;
    *&v396[176] = v391;
    *&v396[64] = v384;
    *&v396[80] = v385;
    *&v396[96] = v386;
    *&v396[112] = v387;
    *v396 = v380;
    *&v396[16] = v381;
    *&v396[32] = v382;
    *&v396[48] = v383;
    v188 = *sub_1B041BA38(v396);

    sub_1B0398EFC(v140, &qword_1EB6E2070, &qword_1B0E9F040);
  }

  swift_beginAccess();
  v189 = *(v164 + 24) + (v168 | (v167 << 8));
  v190 = v325;
  sub_1B0E44358();
  result = (v320)(v172 + v173, 1, v174);
  v191 = v324;
  if (result == 1)
  {
    goto LABEL_143;
  }

  v305 = v173;
  sub_1B0E44388();
  v304 = *v307;
  v304(v190, v174);
  v192 = v314[2];
  if (!v192)
  {
    v193 = 0;
LABEL_74:
    v199 = v322;
    sub_1B03B5C80(v337 + v305, v322, &qword_1EB6E2070, &qword_1B0E9F040);
    v200 = v339;
    result = (v320)(v199, 1, v339);
    if (result == 1)
    {
      goto LABEL_144;
    }

    v201 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    result = (v304)(v199, v200);
    v202 = v193 + v201;
    v64 = v436;
    v67 = v360;
    if (__OFADD__(v193, v201))
    {
      goto LABEL_142;
    }

    v68 = v362;
    if (v202 > 999999)
    {
      sub_1B0D0CB74();
      swift_allocError();
      *v283 = 4;
      *(v283 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v380);
      sub_1B0D0CBE4(&v380);
      sub_1B0446AA0(v355, type metadata accessor for Response);
      sub_1B0398EFC(v352, &qword_1EB6E65A8, &unk_1B0EE8190);
      sub_1B0446AA0(v337, type metadata accessor for StreamedBodySection);
      goto LABEL_126;
    }

    sub_1B0D0CBE4(&v380);
    sub_1B0D0CBE4(&v380);
    sub_1B0446AA0(v355, type metadata accessor for Response);
    v203 = v352;
    sub_1B0398EFC(v352, &qword_1EB6E65A8, &unk_1B0EE8190);
    v204 = v337;
    sub_1B0446A38(v337, v203, type metadata accessor for StreamedBodySection);
    v310(v203, 0, 1, v341);
    sub_1B0446AA0(v204, type metadata accessor for StreamedBodySection);
    goto LABEL_22;
  }

  v193 = 0;
  v361 = *(v332 + 24);
  v64 = v314 + ((*(v331 + 80) + 32) & ~*(v331 + 80));
  v194 = *(v331 + 72);
  v195 = v359;
  while (2)
  {
    sub_1B0446A38(v64, v195, type metadata accessor for MessageData.BodySection);
    sub_1B03B5C80(v195 + v361, v191, &qword_1EB6E4178, &unk_1B0EE7570);
    v196 = type metadata accessor for MessageData.BodyData();
    if ((*(*(v196 - 8) + 48))(v191, 1, v196) == 1)
    {
      sub_1B0446AA0(v195, type metadata accessor for MessageData.BodySection);
      sub_1B0398EFC(v191, &qword_1EB6E4178, &unk_1B0EE7570);
      goto LABEL_69;
    }

    v197 = v195;
    v198 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0446AA0(v197, type metadata accessor for MessageData.BodySection);
    sub_1B0446AA0(v191, type metadata accessor for MessageData.BodyData);
    v104 = __OFADD__(v193, v198);
    v193 += v198;
    if (!v104)
    {
      v195 = v359;
LABEL_69:
      v64 += v194;
      if (!--v192)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_138:
  sub_1B0D0CB00();
  swift_allocError();
  *v294 = v198;
  *(v294 + 8) = 0;
  *(v294 + 16) = 2;
  swift_willThrow();
LABEL_122:
  v266 = v355;
LABEL_123:
  sub_1B0446AA0(v266, type metadata accessor for Response);
LABEL_124:
  v272 = v352;
LABEL_125:
  sub_1B0398EFC(v272, &qword_1EB6E65A8, &unk_1B0EE8190);
LABEL_126:
  v65 = v313;
LABEL_16:
  *v396 = v351;
  v396[4] = v478;
  *&v396[5] = v476;
  v396[7] = v477;
  *&v396[8] = v353;
  v396[12] = v475;
  *&v396[141] = v471;
  *&v396[157] = v472;
  *&v396[173] = v473;
  v397 = v474;
  *&v396[77] = v467;
  *&v396[93] = v468;
  *&v396[109] = v469;
  *&v396[125] = v470;
  *&v396[13] = v463;
  *&v396[29] = v464;
  *&v396[45] = v465;
  *&v396[61] = v466;
  *v398 = v462[0];
  *&v398[3] = *(v462 + 3);
  v399 = v354;
  v408 = v458;
  v409 = v459;
  v410 = v460;
  v411 = v461;
  v404 = v454;
  v405 = v455;
  v406 = v456;
  v407 = v457;
  v400 = v450;
  v401 = v451;
  v402 = v452;
  v403 = v453;
  v86 = *(v64 + 120);
  v416 = *(v64 + 104);
  v417 = v86;
  *v418 = *(v64 + 136);
  v87 = *(v64 + 56);
  v412 = *(v64 + 40);
  v413 = v87;
  v88 = *(v64 + 88);
  v414 = *(v64 + 72);
  v415 = v88;
  *&v418[15] = *(v64 + 151);
  v419 = *v347;
  v420 = *&v347[8];
  v421 = v442;
  v422 = v440;
  v423 = v441;
  v424 = v346;
  v425 = v439;
  *v426 = v438[0];
  *&v426[3] = *(v64 + 19);
  v427 = v348;
  v428 = v437;
  v89 = *(v64 + 3);
  *v429 = v436[0];
  *&v429[3] = v89;
  v430 = v343;
  v431 = v349;
  v432 = v345;
  v433 = v344;
  v434 = v65;
  v435 = v350;
  return sub_1B0AA4C0C(v396);
}

uint64_t sub_1B0D0A0C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = *v1;
  v5 = *(*v1 + 24);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*v1 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B04467C8(isUniquelyReferenced_nonNull_native, v6);
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_1B0D0B778(*v1 + 16, *v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3);
  }

  return result;
}

uint64_t ServerResponseFramingParser.byteCountNeededToCompleteFrame.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_1B0D0A25C(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (a1)
  {
    v6 = a1 + a2;
  }

  else
  {
    v6 = 0;
  }

  FramingParser.appendAndFrameBytes(_:)(a1, v6);
  sub_1B0434420(v7);
}

uint64_t sub_1B0D0A440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(v2, v7, type metadata accessor for ResponsePayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      *a1 = *v7;
      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(v7 + 8);
      }

LABEL_31:
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload > 8)
    {
      v12 = *(v7 + 2);
      v13 = v7[24];
      *a1 = *v7;
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v51 = type metadata accessor for ResponsePayload;
LABEL_46:
    sub_1B0446AA0(v7, v51);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *v7;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for MessageData();
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 < 1)
    {
      *a1 = *v7;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v11 <= 1 || v11 == 2)
    {
      sub_1B03C60A4(v7, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v51 = type metadata accessor for MessageData;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    v14 = *(v7 + 5);
    v15 = *(v7 + 7);
    v57 = *(v7 + 6);
    v58 = v15;
    v16 = *(v7 + 7);
    v59 = *(v7 + 8);
    v17 = *(v7 + 1);
    v18 = *(v7 + 3);
    v53 = *(v7 + 2);
    v54 = v18;
    v19 = *(v7 + 3);
    v20 = *(v7 + 5);
    v55 = *(v7 + 4);
    v56 = v20;
    v21 = *(v7 + 1);
    v52[0] = *v7;
    v52[1] = v21;
    v60[6] = v57;
    v60[7] = v16;
    v60[8] = *(v7 + 8);
    v60[2] = v53;
    v60[3] = v19;
    v60[4] = v55;
    v60[5] = v14;
    v60[0] = v52[0];
    v60[1] = v17;
    v22 = sub_1B0D0CD9C(v60);
    v23 = sub_1B0504D1C(v60);
    if (v22 <= 4)
    {
      if (v22 <= 1)
      {
        if (v22)
        {
          v43 = *(v23 + 16);
          v44 = *(v23 + 20);
          v45 = *(v23 + 24);
          v46 = *(v23 + 32);
          *a1 = *v23;
          *(a1 + 16) = v43;
          *(a1 + 20) = v44;
          *(a1 + 24) = v45;
          *(a1 + 32) = v46;
        }

        else
        {
          v25 = sub_1B0D0C618(*v23);
          sub_1B0D0CDA8(v52);
          *a1 = v25;
        }
      }

      else
      {
        if (v22 == 2)
        {
          v27 = *(v23 + 16);
          v28 = *(v23 + 20);
          v29 = *(v23 + 24);
          v30 = *(v23 + 32);
          *a1 = *v23;
          *(a1 + 16) = v27;
          *(a1 + 20) = v28;
          *(a1 + 24) = v29;
          *(a1 + 32) = v30;
          type metadata accessor for UntaggedResponse(0);
          return swift_storeEnumTagMultiPayload();
        }

        if (v22 == 3)
        {
          *a1 = *v23;
        }

        else
        {
          v37 = *(v23 + 32);
          v38 = *(v23 + 33);
          v39 = *(v23 + 40);
          v40 = *(v23 + 16);
          *a1 = *v23;
          *(a1 + 16) = v40;
          *(a1 + 32) = v37;
          *(a1 + 33) = v38;
          *(a1 + 40) = v39;
        }
      }

      goto LABEL_31;
    }

    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v26 = *(v23 + 16);
        *a1 = *v23;
        *(a1 + 16) = v26;
        type metadata accessor for UntaggedResponse(0);
      }

      else
      {
        if (v22 != 10)
        {
          while (1)
          {
            sub_1B0D0CDA8(v52);
LABEL_47:
            sub_1B0E465B8();
            __break(1u);
          }
        }

        v47 = *(v23 + 16);
        v48 = *(v23 + 32);
        v49 = *(v23 + 40);
        v50 = *(v23 + 24);
        *a1 = *v23;
        *(a1 + 16) = v47;
        *(a1 + 24) = v50;
        *(a1 + 32) = v48;
        *(a1 + 40) = v49;
        type metadata accessor for UntaggedResponse(0);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (v22 == 5)
    {
      *a1 = *v23;
      v31 = *(v23 + 16);
      v32 = *(v23 + 32);
      v33 = *(v23 + 64);
      *(a1 + 48) = *(v23 + 48);
      *(a1 + 64) = v33;
      *(a1 + 16) = v31;
      *(a1 + 32) = v32;
      v34 = *(v23 + 80);
      v35 = *(v23 + 96);
      v36 = *(v23 + 128);
      *(a1 + 112) = *(v23 + 112);
      *(a1 + 128) = v36;
      *(a1 + 80) = v34;
      *(a1 + 96) = v35;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v22 == 6)
    {
      v24 = *v23;
      if (!HIDWORD(*v23))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = *v23;
      if (!HIDWORD(*v23))
      {
LABEL_42:
        *a1 = v24;
        type metadata accessor for UntaggedResponse(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1B0D0CB00();
    swift_allocError();
    *v41 = v24;
    *(v41 + 8) = 0;
    *(v41 + 16) = 2;
    return swift_willThrow();
  }

  v9 = *(v7 + 2);
  v10 = v7[24];
  *a1 = *v7;
  *(a1 + 16) = v9;
  type metadata accessor for UntaggedResponse(0);
  return swift_storeEnumTagMultiPayload();
}