BOOL sub_1B0BD61C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5400, &unk_1B0ECFFC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if ((sub_1B0BF7F80(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1B0BE5804(*(a1 + 16), *(a2 + 16));
  if ((v17 & 1) == 0 || (sub_1B0BE7524(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Authenticator() + 32);
  v19 = *(v13 + 48);
  sub_1B0BD6510(a1 + v18, v16);
  sub_1B0BD6510(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &qword_1EB6E53F8, &qword_1B0ECFF80);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1B0BD6510(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_1B044D7D0(v12, type metadata accessor for AuthenticationTask);
LABEL_10:
    v22 = &qword_1EB6E5400;
    v23 = &unk_1B0ECFFC0;
LABEL_11:
    sub_1B0398EFC(v16, v22, v23);
    return 0;
  }

  sub_1B0BD6580(&v16[v19], v8);
  if ((sub_1B0BD35D4(v12, v8) & 1) == 0)
  {
    sub_1B044D7D0(v8, type metadata accessor for AuthenticationTask);
    sub_1B044D7D0(v12, type metadata accessor for AuthenticationTask);
    v22 = &qword_1EB6E53F8;
    v23 = &qword_1B0ECFF80;
    goto LABEL_11;
  }

  v24 = *(v4 + 24);
  v25 = *(v12 + v24);
  v26 = *(v8 + v24);
  sub_1B044D7D0(v8, type metadata accessor for AuthenticationTask);
  sub_1B044D7D0(v12, type metadata accessor for AuthenticationTask);
  sub_1B0398EFC(v16, &qword_1EB6E53F8, &qword_1B0ECFF80);
  return v25 == v26;
}

uint64_t sub_1B0BD6510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1B0BD66A4(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1B0BE2F58(v7, *(v2 + 16));
  return (v5 & 1) == 0;
}

unint64_t sub_1B0BD675C()
{
  result = qword_1EB6E5408;
  if (!qword_1EB6E5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5408);
  }

  return result;
}

unint64_t sub_1B0BD67B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1B04420D8(result);

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BD6804(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B0BD684C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B0BD68AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD6A44(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    sub_1B074BA2C(v9, v5);
    v14 = MessageIdentifierSet.count.getter();
    v9 = sub_1B0BD6AA8(v11);

    result = sub_1B03D09B8(v5);
    v16 = v14 * v9;
    if ((v14 * v9) >> 64 == (v14 * v9) >> 63)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = sub_1B0BB439C(v9);
  v16 = 0;
LABEL_5:
  v17 = __OFADD__(v16, 5);
  v18 = v16 + 5;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = ((v18 - 1) * 0x6666666666666667) >> 64;
    return (v19 >> 1) + (v19 >> 63);
  }

  return result;
}

uint64_t sub_1B0BD6A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BD6AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 64;
  while (2)
  {
    v6 = (v5 + 40 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_38;
      }

      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6 | (*(v6 + 4) << 32);
      v11 = v10 >> 37;
      if (v10 >> 37 != 6)
      {
        break;
      }

      v12 = *(v6 - 4);
      v13 = v8 | *(v6 - 3) | v9;
      if (v10 == 0xC000000000 && v12 == 3 && v13 == 0)
      {
        goto LABEL_29;
      }

      v16 = v10 == 0xC000000000 && v12 == 6;
      if (v16 && v13 == 0)
      {
        goto LABEL_29;
      }

LABEL_4:
      v6 += 10;
      if (v4 == v1)
      {
        return result;
      }
    }

    if (v11 != 1)
    {
      if (v11 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if ((v9 & 0xFE) != 0 && (v8 - 1) >= 2)
    {
LABEL_29:
      v18 = __OFADD__(result, 5);
      result += 5;
      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v18 = __OFADD__(result++, 1);
    if (v18)
    {
      __break(1u);
      return result;
    }

LABEL_30:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

double sub_1B0BD6BB8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0BD6BD0@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *&v10 = 0;
    v9 = 7uLL;
    BYTE8(v10) = -64;
    sub_1B0BD6CF8(&v9);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v21);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
  }

  else
  {
    sub_1B04FAEB0(&v33);
  }

  v3 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v3;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v4 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v4;
  v5 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v5;
  v6 = v34;
  *a2 = v33;
  *(a2 + 16) = v6;
  result = *&v35;
  v8 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1B0BD6D08(uint64_t a1)
{
  result = sub_1B0E43BC8();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = _s6LoggerVMa_0();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v5 = *(a1 + 88);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B0BD6E20()
{
  v0 = sub_1B0E459C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E45988();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1B0E44288();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B0BD84D8(0, &qword_1EB6DEED0, 0x1E69E9610);
  sub_1B0E44258();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  sub_1B0E460A8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1B0E45A08();
  qword_1EB6DCDB8 = result;
  return result;
}

uint64_t *sub_1B0BD7038()
{
  v1 = *v0;
  v2 = qword_1EB737B78;
  v3 = sub_1B0E43BC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EB737B90 + 8);

  sub_1B041C9E0(v0 + qword_1EB737B88);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_1B0BD711C()
{
  sub_1B0BD7038();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1B0BD718C()
{
  type metadata accessor for CertUITrustManager();
  swift_allocObject();
  CertUITrustManager.init()();
  qword_1EB6DCDE0 = v0;
}

uint64_t sub_1B0BD71CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v67[1] = a6;
  v68 = a5;
  v9 = _s6LoggerVMa_0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v67 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v67 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v67 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v67 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v67 - v26;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1B041C97C(a2, v22);
      sub_1B041C97C(a2, v19);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v28 = sub_1B0E43988();
      v29 = sub_1B0E458E8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v69 = v31;
        *v30 = 68158210;
        *(v30 + 4) = 2;
        *(v30 + 8) = 256;
        v32 = v19[*(v9 + 20)];
        sub_1B041C9E0(v19);
        *(v30 + 10) = v32;
        *(v30 + 11) = 2082;
        v33 = *&v22[*(v9 + 20) + 4];
        sub_1B041C9E0(v22);
        v34 = ConnectionID.debugDescription.getter(v33);
        v36 = sub_1B0399D64(v34, v35, &v69);

        *(v30 + 13) = v36;
        _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) for session.", v30, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1B272C230](v31, -1, -1);
        MEMORY[0x1B272C230](v30, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v19);

        sub_1B041C9E0(v22);
      }
    }

    else
    {
      sub_1B041C97C(a2, v16);
      sub_1B041C97C(a2, v13);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v46 = sub_1B0E43988();
      v47 = sub_1B0E458E8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 68158210;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v50 = v13[*(v9 + 20)];
        sub_1B041C9E0(v13);
        *(v48 + 10) = v50;
        *(v48 + 11) = 2082;
        v51 = *&v16[*(v9 + 20) + 4];
        sub_1B041C9E0(v16);
        v52 = ConnectionID.debugDescription.getter(v51);
        v54 = sub_1B0399D64(v52, v53, &v69);

        *(v48 + 13) = v54;
        _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) permanently.", v48, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v13);

        sub_1B041C9E0(v16);
      }

      v61 = *(a3 + 16);
      v62 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v63 = v61;
      v64 = [v62 initWithBool_];
      v65 = sub_1B0E44AC8();
      [v63 setAccountProperty:v64 forKey:v65];
    }

    v60 = 1;
  }

  else
  {
    sub_1B041C97C(a2, v67 - v26);
    sub_1B041C97C(a2, v25);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v37 = sub_1B0E43988();
    v38 = sub_1B0E458E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = v40;
      *v39 = 68158210;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v41 = v25[*(v9 + 20)];
      sub_1B041C9E0(v25);
      *(v39 + 10) = v41;
      *(v39 + 11) = 2082;
      v42 = *&v27[*(v9 + 20) + 4];
      sub_1B041C9E0(v27);
      v43 = ConnectionID.debugDescription.getter(v42);
      v45 = sub_1B0399D64(v43, v44, &v69);

      *(v39 + 13) = v45;
      _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] [Prompt] User denied untrusted certificate(s).", v39, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B272C230](v40, -1, -1);
      MEMORY[0x1B272C230](v39, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v25);

      sub_1B041C9E0(v27);
    }

    v55 = *(a3 + 16);
    v56 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v57 = v55;
    v58 = [v56 initWithBool_];
    v59 = sub_1B0E44AC8();
    [v57 setAccountProperty:v58 forKey:v59];

    v60 = 0;
  }

  return v68(v60);
}

uint64_t sub_1B0BD77E4()
{
  v1 = _s6LoggerVMa_0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isDirty])
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_1B041C97C(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1B041ECBC(v4, v8 + v7);
    aBlock[4] = sub_1B0BD7F5C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0BD7D9C;
    aBlock[3] = &block_descriptor_24;
    v9 = _Block_copy(aBlock);
    v10 = v6;
    v11 = v5;

    [v10 saveVerifiedAccount:v11 withCompletionHandler:v9];
    _Block_release(v9);
  }

  sub_1B041C9E0(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
  return v0;
}

void sub_1B0BD79B4(char a1, void *a2, uint64_t a3)
{
  v6 = _s6LoggerVMa_0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      sub_1B041C97C(a3, &v42 - v17);
      sub_1B041C97C(a3, v15);
      v19 = a2;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v20 = a2;
      v21 = sub_1B0E43988();
      v22 = sub_1B0E458E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v25;
        *v23 = 68158466;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        v26 = v15[*(v6 + 20)];
        sub_1B041C9E0(v15);
        *(v23 + 10) = v26;
        *(v23 + 11) = 2082;
        v27 = *&v18[*(v6 + 20) + 4];
        sub_1B041C9E0(v18);
        v28 = ConnectionID.debugDescription.getter(v27);
        v30 = sub_1B0399D64(v28, v29, &v43);

        *(v23 + 13) = v30;
        *(v23 + 21) = 2112;
        v31 = sub_1B0E42CC8();
        *(v23 + 23) = v31;
        *v24 = v31;
        _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] Failed to save account: %@", v23, 0x1Fu);
        sub_1B0BD096C(v24);
        MEMORY[0x1B272C230](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1B272C230](v25, -1, -1);
        MEMORY[0x1B272C230](v23, -1, -1);

        return;
      }

      sub_1B041C9E0(v15);

      v41 = v18;
    }

    else
    {
      sub_1B041C97C(a3, v12);
      sub_1B041C97C(a3, v9);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v32 = sub_1B0E43988();
      v33 = sub_1B0E458E8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43 = v35;
        *v34 = 68158210;
        *(v34 + 4) = 2;
        *(v34 + 8) = 256;
        v36 = v9[*(v6 + 20)];
        sub_1B041C9E0(v9);
        *(v34 + 10) = v36;
        *(v34 + 11) = 2082;
        v37 = *&v12[*(v6 + 20) + 4];
        sub_1B041C9E0(v12);
        v38 = ConnectionID.debugDescription.getter(v37);
        v40 = sub_1B0399D64(v38, v39, &v43);

        *(v34 + 13) = v40;
        _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx-%{public}s] Failed to save account.", v34, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B272C230](v35, -1, -1);
        MEMORY[0x1B272C230](v34, -1, -1);

        return;
      }

      sub_1B041C9E0(v9);

      v41 = v12;
    }

    sub_1B041C9E0(v41);
  }
}

void sub_1B0BD7D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1B0BD7E14()
{
  v0 = *sub_1B0BD77E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s29DefaultVerifierImplementationV15AccountAndStoreCMa()
{
  result = qword_1EB6E5418;
  if (!qword_1EB6E5418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0BD7EBC()
{
  result = _s6LoggerVMa_0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B0BD7F5C(char a1, void *a2)
{
  v5 = *(_s6LoggerVMa_0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B0BD79B4(a1, a2, v6);
}

id sub_1B0BD7FDC()
{
  v1 = sub_1B0E44AC8();
  v2 = [v0 accountPropertyForKey_];

  if (!v2)
  {
    return 0;
  }

  sub_1B0E45FE8();
  swift_unknownObjectRelease();
  sub_1B0392800(v7, v6);
  sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_1B0BD80D4()
{
  v1 = sub_1B0E44AC8();
  v2 = [v0 accountPropertyForKey_];

  if (!v2)
  {
    return 1;
  }

  sub_1B0E45FE8();
  swift_unknownObjectRelease();
  sub_1B0392800(v7, v6);
  sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_1B0BD81CC(int a1, uint64_t (*a2)(uint64_t))
{
  if (a1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a1 == 2);
  }

  return a2(v2);
}

uint64_t sub_1B0BD8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s6LoggerVMa_0();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v34 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  if (a2)
  {
    v16 = v13;
    v17 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
    v18 = sub_1B0E44AC8();
    v19 = [v17 accountWithIdentifier_];

    if (v19)
    {
      sub_1B041C97C(a3, v15);
      v20 = _s29DefaultVerifierImplementationV15AccountAndStoreCMa();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v17;
      sub_1B041ECBC(v15, v23 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
      return v23;
    }

    sub_1B041C97C(a3, v12);
    sub_1B041C97C(a3, v9);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = sub_1B0E43988();
    v26 = sub_1B0E458E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v9[*(v16 + 20)];
      sub_1B041C9E0(v9);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v12[*(v16 + 20) + 4];
      sub_1B041C9E0(v12);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_1B0399D64(v31, v32, &v35);

      *(v27 + 13) = v33;
      _os_log_impl(&dword_1B0389000, v25, v26, "[%.*hhx-%{public}s] Unable to get account.", v27, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B272C230](v28, -1, -1);
      MEMORY[0x1B272C230](v27, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v9);

      sub_1B041C9E0(v12);
    }
  }

  return 0;
}

uint64_t sub_1B0BD84D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1B0BD8544()
{
  result = qword_1EB6E5430;
  if (!qword_1EB6E5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5430);
  }

  return result;
}

uint64_t sub_1B0BD85B8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1B038C9A4(a1, &v14[-v9], type metadata accessor for ConnectionState);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v11 + v12, v7, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v10, v11 + v12);
  swift_endAccess();
  sub_1B042D734(v7);
  sub_1B038D690(v7, type metadata accessor for ConnectionState);
  return sub_1B038D690(v10, type metadata accessor for ConnectionState);
}

uint64_t CommandConnection.connectionTraits.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B0BD87D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0BD8848(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t CommandConnection.__allocating_init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v18 = v17;
  v95 = a8;
  v88 = a7;
  v94 = a6;
  v86 = a5;
  v89 = a4;
  v92 = a23;
  v93 = a18;
  v87 = a17;
  v85 = a21;
  v80 = sub_1B0E44208();
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v77[-v26];
  v84 = sub_1B0E43DF8();
  v96 = *(v84 - 8);
  v27 = v96[8];
  MEMORY[0x1EEE9AC00](v84);
  v91 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v90 = &v77[-v30];
  v31 = type metadata accessor for ConnectionConfiguration(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v77[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v18 + 48);
  v36 = *(v18 + 52);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v39 = v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  v40 = MEMORY[0x1E69E7CC0];
  *v39 = MEMORY[0x1E69E7CC0];
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = v40;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = MEMORY[0x1E69E7CD0];
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v41 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v41 = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  *(v41 + 44) = 0u;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v37 + 24) = a19;
  v83 = a3;
  sub_1B038C9A4(a3, v34, type metadata accessor for ConnectionConfiguration);
  v42 = type metadata accessor for Connection(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = a19;
  v78 = a1;
  v46 = sub_1B04201EC(v34, v45, a2, a1);

  sub_1B038C9A4(v46 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  *(v38 + 8) = v85;
  v85 = a20;
  swift_unknownObjectWeakAssign();
  v47 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v47 = v86;
  v47[1] = a6;
  v48 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v49 = v95;
  *v48 = v88;
  v48[1] = v49;
  v50 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v51 = v93;
  *v50 = v87;
  v50[1] = v51;
  *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v89;
  LODWORD(v89) = *MEMORY[0x1E6977C08];
  v88 = v96[13];
  v52 = v84;
  v88(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state);
  type metadata accessor for ConnectionState();
  swift_storeEnumTagMultiPayload();
  *(v37 + 16) = v46;
  *(v46 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1F271C898;
  swift_unknownObjectWeakAssign();
  v53 = *(v46 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v54 = swift_allocObject();
  *(v54 + 56) = 0;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  v55 = v45;

  v87 = v46;

  v56 = v90;
  sub_1B0E43E18();
  v57 = v91;
  v58 = v52;
  (v88)(v91, v89, v52);
  v59 = v57;
  LOBYTE(v46) = MEMORY[0x1B2725F00](v56, v57);
  v60 = v96[1];
  v60(v59, v58);
  result = (v60)(v56, v58);
  if (v46)
  {
    *(v54 + 16) = v53;
    *(v54 + 24) = v78;
    *(v54 + 32) = v55;
    *(v54 + 40) = a22;
    *(v54 + 48) = v92;
    v62 = *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);
    *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v54;

    if (a25)
    {
      v63 = 285.0;
    }

    else
    {
      v63 = a24;
    }

    v64 = v55;

    sub_1B0421B80(v64, v98, v63);
    v65 = (v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v66 = v65[1];
    v100[0] = *v65;
    v100[1] = v66;
    *v101 = v65[2];
    *&v101[12] = *(v65 + 44);
    v67 = v98[1];
    *v65 = v98[0];
    v65[1] = v67;
    v65[2] = *v99;
    *(v65 + 44) = *&v99[12];
    sub_1B0398EFC(v100, &qword_1EB6E5438, &qword_1B0ED0350);
    v68 = v81;
    *v81 = 9;
    v69 = *MEMORY[0x1E69E7F48];
    v70 = *(v79 + 104);
    v71 = v80;
    v70(v68, v69, v80);
    v72 = v82;
    *v82 = 1;
    v70(v72, v69, v71);
    v73 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B038D2DC;
    aBlock[5] = v73;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_25;
    v74 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v75 = RestartableTimer.init(queue:repeating:leeway:closure:)(v64, v68, v72, v74);
    swift_unknownObjectRelease();

    sub_1B038D690(v83, type metadata accessor for ConnectionConfiguration);

    v76 = *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);
    *(v37 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v75;

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CommandConnection.cancel()()
{
  v1 = v0;
  v47 = type metadata accessor for ConnectionState();
  v2 = *(*(v47 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v44 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = _s6LoggerVMa_0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1B0E44488();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v15, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = sub_1B0E43988();
  v25 = sub_1B0E439A8();
  (*(*(v25 - 8) + 8))(v15, v25);
  v26 = sub_1B0E45908();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v54[0] = v28;
    *v27 = 68158210;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v29 = v23 + *(v12 + 20);
    *(v27 + 10) = *v29;

    *(v27 + 11) = 2082;
    v30 = ConnectionID.debugDescription.getter(*(v29 + 4));
    v32 = sub_1B0399D64(v30, v31, v54);

    *(v27 + 13) = v32;
    _os_log_impl(&dword_1B0389000, v24, v26, "[%.*hhx-%{public}s] Cancel.", v27, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1B272C230](v28, -1, -1);
    MEMORY[0x1B272C230](v27, -1, -1);
  }

  else
  {
  }

  v33 = *(*(v1 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  sub_1B0E43E28();
  v34 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v34, v11, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v11, v9, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038D690(v9, type metadata accessor for ConnectionState);
      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return;
    }
  }

  else
  {
    sub_1B038D690(v9, type metadata accessor for ConnectionState);
  }

  v36 = v45;
  swift_storeEnumTagMultiPayload();
  v37 = v46;
  sub_1B038C9A4(v1 + v34, v46, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v36, v1 + v34);
  swift_endAccess();
  sub_1B042D734(v37);
  sub_1B038D690(v37, type metadata accessor for ConnectionState);
  sub_1B038D690(v36, type metadata accessor for ConnectionState);
  v38 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer;
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {
    v39 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

    RestartableTimer.stop()();

    v40 = *(v1 + v38);
  }

  *(v1 + v38) = 0;

  v41 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  swift_beginAccess();
  *&v55[12] = *(v41 + 44);
  v42 = *(v41 + 32);
  v54[1] = *(v41 + 16);
  *v55 = v42;
  v54[0] = *v41;
  if (*(&v42 + 1))
  {
    v43 = *(v41 + 16);
    v49[0] = *v41;
    v49[1] = v43;
    v50 = *(v41 + 32);
    v51 = *(&v42 + 1);
    v52 = *(v41 + 48);
    v53 = *(v41 + 56);
    sub_1B03B5C80(v54, &v48, &qword_1EB6E5438, &qword_1B0ED0350);

    sub_1B0398EFC(v49, &qword_1EB6E5438, &qword_1B0ED0350);
    RestartableTimer.stop()();
  }
}

BOOL CommandConnection.isCancelledOrFailed.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v5, v4, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_1B038D690(v4, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload > 3;
}

uint64_t CommandConnection.canRunCommand(_:)()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = sub_1B0E44468();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + 24);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1B0E44488();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v0 + v17, v7, type metadata accessor for ConnectionState);
    sub_1B038CB4C(v7, v4, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1B038D690(v4, type metadata accessor for ConnectionState);
      v19 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = sub_1B0C1AD1C();
      sub_1B0C1B22C();
      v24 = sub_1B0BD68AC();
      sub_1B0C27278(v23, v24, v21);

      return 1;
    }

    sub_1B038D690(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t CommandConnection.send(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OutboundContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1B0E44488();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v17[-16] = v1;
    *&v17[-8] = a1;
    v15 = sub_1B0BD9F24(sub_1B0BE2764);
    v16 = *(v1 + 16);
    sub_1B038C9A4(a1, v6, type metadata accessor for ClientCommand);
    swift_storeEnumTagMultiPayload();
    sub_1B0BEAF64(v15, v6);
    sub_1B038D690(v6, type metadata accessor for OutboundContent);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BD9D58(uint64_t a1)
{
  swift_beginAccess();
  sub_1B0C26D98(a1);
  return swift_endAccess();
}

uint64_t CommandConnection.makeNextCommandID()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v11 = (*(v0 + v10) + 1) & 0xFFFFFF;
    *(v0 + v10) = v11;
    return *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v11 << 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BD9F24(void (*a1)(unint64_t))
{
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = (v13 + 1) & 0xFFFFFF;
    *(v1 + v12) = v14;
    v15 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v14 << 32);
    a1(v15);
    if (v2)
    {
      *(v1 + v12) = v13;
      swift_willThrow();
    }

    swift_endAccess();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.selectedMailbox.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v5, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038D690(v4, type metadata accessor for ConnectionState);
    return 0;
  }

  memcpy(v37, v4, sizeof(v37));
  v6 = *(v4 + 21);
  v38[8] = *(v4 + 20);
  v38[9] = v6;
  v39 = *(v4 + 176);
  v7 = *(v4 + 17);
  v38[4] = *(v4 + 16);
  v38[5] = v7;
  v8 = *(v4 + 19);
  v38[6] = *(v4 + 18);
  v38[7] = v8;
  v9 = *(v4 + 13);
  v38[0] = *(v4 + 12);
  v38[1] = v9;
  v10 = *(v4 + 15);
  v38[2] = *(v4 + 14);
  v38[3] = v10;
  v11 = sub_1B0BE2780(v38);
  if (!v11)
  {
    sub_1B03DB9A4(v38);
    sub_1B0BE278C(v37);
    return 0;
  }

  if (v11 == 1)
  {
    v12 = sub_1B03DB9A4(v38);
    v34 = *&v37[320];
    v35 = *&v37[336];
    v36 = *&v37[352];
    v30 = *&v37[256];
    v31 = *&v37[272];
    v32 = *&v37[288];
    v33 = *&v37[304];
    v26 = *&v37[192];
    v27 = *&v37[208];
    v28 = *&v37[224];
    v29 = *&v37[240];
    v13 = sub_1B03DB9A4(&v26);
    sub_1B0BE2834(v13, &v25);
    sub_1B0BE278C(v37);
    v14 = *v12;
    v15 = *(v12 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE27E0(&v37[192]);
    return v14;
  }

  else
  {
    v17 = sub_1B03DB9A4(v38);
    v18 = *v17;
    v19 = *(v17 + 8);
    v34 = *&v37[320];
    v35 = *&v37[336];
    v36 = *&v37[352];
    v30 = *&v37[256];
    v31 = *&v37[272];
    v32 = *&v37[288];
    v33 = *&v37[304];
    v26 = *&v37[192];
    v27 = *&v37[208];
    v28 = *&v37[224];
    v29 = *&v37[240];
    v20 = sub_1B03DB9A4(&v26);
    v21 = *v20;
    v22 = v20[2];
    v23 = v20[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE278C(v37);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE27E0(&v37[192]);
    return v18;
  }
}

uint64_t CommandConnection.selectMailbox(name:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v3 + v13, v12, type metadata accessor for ConnectionState);
  LOBYTE(a1) = ConnectionState.selectMailbox(name:)(a1, a2);
  sub_1B038C9A4(v3 + v13, v9, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v12, v3 + v13);
  swift_endAccess();
  sub_1B042D734(v9);
  sub_1B038D690(v9, type metadata accessor for ConnectionState);
  sub_1B038D690(v12, type metadata accessor for ConnectionState);
  v14 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v3 + v13, v12, type metadata accessor for ConnectionState);

  sub_1B0BF65A8(v3 + v14, v12, v3);

  sub_1B038C9A4(v3 + v13, v9, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v12, v3 + v13);
  swift_endAccess();
  sub_1B042D734(v9);
  sub_1B038D690(v9, type metadata accessor for ConnectionState);
  sub_1B038D690(v12, type metadata accessor for ConnectionState);
  return a1 & 1;
}

void CommandConnection.replaceDelegate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v59 - v10;
  v62 = _s6LoggerVMa_0();
  v12 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  v17 = sub_1B0E44468();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + 24);
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1B0E44488();
  (*(v18 + 8))(v22, v17);
  if (v23)
  {
    v63 = a1;
    v64 = v5;
    v25 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E439A8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 8);
    v59[1] = (v28 + 8);
    v29(v16, v27);
    v30 = sub_1B0E458D8();
    v31 = os_log_type_enabled(v26, v30);
    v60 = v25;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      v67 = v59[0];
      *v32 = 68158210;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v25 + *(v62 + 20);
      *(v32 + 10) = *v33;

      *(v32 + 11) = 2082;
      v34 = ConnectionID.debugDescription.getter(*(v33 + 4));
      v36 = v3;
      v37 = v11;
      v38 = v27;
      v39 = v8;
      v40 = v29;
      v41 = sub_1B0399D64(v34, v35, &v67);

      *(v32 + 13) = v41;
      v29 = v40;
      v8 = v39;
      v27 = v38;
      v11 = v37;
      v3 = v36;
      _os_log_impl(&dword_1B0389000, v26, v30, "[%.*hhx-%{public}s] Setting new delegate (better path available).", v32, 0x15u);
      v42 = v59[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v59[0]);
      MEMORY[0x1B272C230](v42, -1, -1);
      MEMORY[0x1B272C230](v32, -1, -1);
    }

    else
    {
    }

    *(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = v65;
    swift_unknownObjectWeakAssign();
    v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v3 + v43, v11, type metadata accessor for ConnectionState);
    LODWORD(v43) = swift_getEnumCaseMultiPayload();
    sub_1B038D690(v11, type metadata accessor for ConnectionState);
    if (v43 == 2)
    {
      v44 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
      swift_beginAccess();
      v45 = *(v3 + v44);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v46 = static MonotonicTime.now()();
      v47 = type metadata accessor for UnauthenticatedStateWithTasks();
      *(v8 + *(v47 + 28)) = MEMORY[0x1E69E7CC0];
      *v8 = v45;
      v8[1] = v46;
      v48 = *(v47 + 24);
      type metadata accessor for UnauthenticatedState();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1B042D734(v8);
      sub_1B038D690(v8, type metadata accessor for ConnectionState);
    }

    else
    {
      v50 = v60;
      v49 = v61;
      sub_1B038C9A4(v60, v61, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v51 = sub_1B0E43988();
      v29(v49, v27);
      v52 = sub_1B0E458E8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v66 = v54;
        *v53 = 68158210;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v55 = v50 + *(v62 + 20);
        *(v53 + 10) = *v55;

        *(v53 + 11) = 2082;
        v56 = ConnectionID.debugDescription.getter(*(v55 + 4));
        v58 = sub_1B0399D64(v56, v57, &v66);

        *(v53 + 13) = v58;
        _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] Trying to replace delegate on unauthenticated connection. Closing.", v53, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x1B272C230](v54, -1, -1);
        MEMORY[0x1B272C230](v53, -1, -1);
      }

      else
      {
      }

      CommandConnection.cancel()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CommandConnection.deinit()
{
  v1 = *(v0 + 16);

  sub_1B038D690(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  sub_1B0BE2890(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate);
  v2 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);

  sub_1B038D690(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, type metadata accessor for ConnectionState);
  v3 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits);

  v4 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors);

  v5 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents);

  v6 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials + 8);

  v7 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation + 8);

  v8 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration + 8);

  v9 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes);

  v10 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector);

  v11 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle + 40);

  v12 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer);

  return v0;
}

uint64_t CommandConnection.__deallocating_deinit()
{
  CommandConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Response.logIdentifier.getter()
{
  type metadata accessor for Response(0);
  sub_1B0E46508();
  return 0;
}

unint64_t sub_1B0BDAD70(unint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v189 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v188 = &v183 - v6;
  v187 = _s6LoggerVMa_0();
  v7 = *(*(v187 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v187);
  v10 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v183 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v183 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v183 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v183 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v183 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v183 - v26;
  v28 = type metadata accessor for UntaggedResponse(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v183 - v34);
  v191 = a1;
  if (a1 >> 60 != 4)
  {
    if (a1 >> 60 == 3)
    {
      v36 = v33;
      v37 = v32;
      v38 = v191;
      v39 = swift_projectBox();
      sub_1B038C9A4(v39, v35, type metadata accessor for UntaggedResponse);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v190;
      if (EnumCaseMultiPayload == 4)
      {
        v42 = *v35;
        v43 = v35[1];
        v44 = v35[2];
        v45 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v27, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(v42);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0E43988();
        v47 = sub_1B0E439A8();
        (*(*(v47 - 8) + 8))(v27, v47);
        v48 = sub_1B0E458E8();
        sub_1B0447F00(v42);

        if (os_log_type_enabled(v46, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v192[0] = v50;
          *v49 = 68158466;
          *(v49 + 4) = 2;
          *(v49 + 8) = 256;
          v51 = &v45[*(v187 + 20)];
          *(v49 + 10) = *v51;

          *(v49 + 11) = 2082;
          v52 = ConnectionID.debugDescription.getter(*(v51 + 1));
          v54 = sub_1B0399D64(v52, v53, v192);

          *(v49 + 13) = v54;
          *(v49 + 21) = 2082;
          v41 = v190;
          v55 = ResponseText.debugDescription.getter(v42, v43, v44);
          v57 = sub_1B0399D64(v55, v56, v192);

          *(v49 + 23) = v57;
          _os_log_impl(&dword_1B0389000, v46, v48, "[%.*hhx-%{public}s] Received BYE %{public}s", v49, 0x1Fu);
          swift_arrayDestroy();
          v58 = v50;
          v38 = v191;
          MEMORY[0x1B272C230](v58, -1, -1);
          MEMORY[0x1B272C230](v49, -1, -1);
          sub_1B0447F00(v42);
        }

        else
        {

          sub_1B0447F00(v42);
        }

        v115 = v188;
        v114 = v189;
      }

      else
      {
        sub_1B038D690(v35, type metadata accessor for UntaggedResponse);
        v98 = swift_projectBox();
        v99 = v37;
        sub_1B038C9A4(v98, v37, type metadata accessor for UntaggedResponse);
        v100 = v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v25, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v101 = v37;
        v102 = v36;
        sub_1B038C9A4(v101, v36, type metadata accessor for UntaggedResponse);
        v103 = sub_1B0E43988();
        v104 = sub_1B0E439A8();
        (*(*(v104 - 8) + 8))(v25, v104);
        v105 = sub_1B0E458D8();
        if (os_log_type_enabled(v103, v105))
        {
          v106 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v192[0] = v186;
          *v106 = 68158466;
          *(v106 + 4) = 2;
          *(v106 + 8) = 256;
          v107 = &v100[*(v187 + 20)];
          *(v106 + 10) = *v107;

          *(v106 + 11) = 2082;
          v108 = ConnectionID.debugDescription.getter(*(v107 + 1));
          v110 = sub_1B0399D64(v108, v109, v192);

          *(v106 + 13) = v110;
          *(v106 + 21) = 2082;
          v111 = UntaggedResponse.makeDescriptionWithoutPII()();
          sub_1B038D690(v102, type metadata accessor for UntaggedResponse);
          v112 = sub_1B0399D64(v111._countAndFlagsBits, v111._object, v192);

          *(v106 + 23) = v112;
          _os_log_impl(&dword_1B0389000, v103, v105, "[%.*hhx-%{public}s] Received 'S: %{public}s' from network.", v106, 0x1Fu);
          v113 = v186;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v113, -1, -1);
          MEMORY[0x1B272C230](v106, -1, -1);
        }

        else
        {

          sub_1B038D690(v36, type metadata accessor for UntaggedResponse);
        }

        sub_1B038D690(v99, type metadata accessor for UntaggedResponse);
        v115 = v188;
        v114 = v189;
        v38 = v191;
      }
    }

    else
    {
      v41 = v190;
      v85 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v38 = v191;
      sub_1B044CD04(v191);
      v86 = sub_1B0E43988();
      v87 = sub_1B0E439A8();
      (*(*(v87 - 8) + 8))(v10, v87);
      v88 = sub_1B0E458D8();
      sub_1B044CEF8(v38);
      if (os_log_type_enabled(v86, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v192[0] = v90;
        *v89 = 68158466;
        *(v89 + 4) = 2;
        *(v89 + 8) = 256;
        v91 = &v85[*(v187 + 20)];
        *(v89 + 10) = *v91;

        *(v89 + 11) = 2082;
        v92 = ConnectionID.debugDescription.getter(*(v91 + 1));
        v94 = sub_1B0399D64(v92, v93, v192);

        *(v89 + 13) = v94;
        *(v89 + 21) = 2080;
        v95 = Event.Payload.shortLogIdentifier.getter(v38);
        v97 = sub_1B0399D64(v95, v96, v192);

        *(v89 + 23) = v97;
        _os_log_impl(&dword_1B0389000, v86, v88, "[%.*hhx-%{public}s] Received '%s' from network.", v89, 0x1Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v90, -1, -1);
        MEMORY[0x1B272C230](v89, -1, -1);
      }

      else
      {
      }

      v115 = v188;
      v114 = v189;
    }

    goto LABEL_34;
  }

  v59 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v61 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v60 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v62 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v63 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v186 = *((v191 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  if (!v63)
  {
    v116 = v190;
    v117 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);

    sub_1B0A91FD0(v61, v60, v62, 0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v61);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v118 = sub_1B0E43988();
    v119 = sub_1B0E439A8();
    (*(*(v119 - 8) + 8))(v13, v119);
    v120 = sub_1B0E458D8();
    if (os_log_type_enabled(v118, v120))
    {
      v121 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v185 = v60;
      v192[0] = v184;
      *v121 = 68158978;
      *(v121 + 4) = 2;
      *(v121 + 8) = 256;
      v122 = v59;
      v123 = &v117[*(v187 + 20)];
      *(v121 + 10) = *v123;

      *(v121 + 11) = 2082;
      v124 = ConnectionID.debugDescription.getter(*(v123 + 1));
      v126 = sub_1B0399D64(v124, v125, v192);

      *(v121 + 13) = v126;
      *(v121 + 21) = 2082;
      v127 = Tag.debugDescription.getter(v186 | (v122 << 32));
      v129 = sub_1B0399D64(v127, v128, v192);

      *(v121 + 23) = v129;
      *(v121 + 31) = 2082;
      *(v121 + 33) = sub_1B0399D64(19279, 0xE200000000000000, v192);
      *(v121 + 41) = 2082;
      v130 = v185;
      v131 = ResponseText.debugDescription.getter(v61, v185, v62);
      v133 = v132;
      sub_1B0447F00(v61);

      v134 = sub_1B0399D64(v131, v133, v192);

      *(v121 + 43) = v134;
      _os_log_impl(&dword_1B0389000, v118, v120, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v121, 0x33u);
      v135 = v184;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v135, -1, -1);
      MEMORY[0x1B272C230](v121, -1, -1);

      sub_1B0BB6FE0(v61, v130, v62, 0);
    }

    else
    {

      sub_1B0BB6FE0(v61, v60, v62, 0);
      sub_1B0447F00(v61);
    }

    v41 = v116;
    goto LABEL_33;
  }

  if (v63 != 1)
  {
    v184 = v59;
    v41 = v190;
    v136 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v22, _s6LoggerVMa_0);

    sub_1B0A91FD0(v61, v60, v62, 2u);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v61);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v137 = sub_1B0E43988();
    v138 = sub_1B0E439A8();
    (*(*(v138 - 8) + 8))(v22, v138);
    v139 = sub_1B0E458E8();
    if (os_log_type_enabled(v137, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v185 = v60;
      v142 = v141;
      v192[0] = v141;
      *v140 = 68158978;
      *(v140 + 4) = 2;
      *(v140 + 8) = 256;
      v143 = &v136[*(v187 + 20)];
      *(v140 + 10) = *v143;

      *(v140 + 11) = 2082;
      v144 = ConnectionID.debugDescription.getter(*(v143 + 1));
      v146 = sub_1B0399D64(v144, v145, v192);

      *(v140 + 13) = v146;
      *(v140 + 21) = 2082;
      v147 = Tag.debugDescription.getter(v186 | (v184 << 32));
      v149 = sub_1B0399D64(v147, v148, v192);

      *(v140 + 23) = v149;
      *(v140 + 31) = 2082;
      *(v140 + 33) = sub_1B0399D64(4473154, 0xE300000000000000, v192);
      *(v140 + 41) = 2082;
      v150 = v185;
      v151 = ResponseText.debugDescription.getter(v61, v185, v62);
      v153 = v152;
      sub_1B0447F00(v61);

      v154 = sub_1B0399D64(v151, v153, v192);

      *(v140 + 43) = v154;
      _os_log_impl(&dword_1B0389000, v137, v139, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v140, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v142, -1, -1);
      MEMORY[0x1B272C230](v140, -1, -1);

      sub_1B0BB6FE0(v61, v150, v62, 2u);
    }

    else
    {

      sub_1B0BB6FE0(v61, v60, v62, 2u);
      sub_1B0447F00(v61);
    }

LABEL_33:
    v115 = v188;
    v114 = v189;
    v38 = v191;
LABEL_34:
    sub_1B0446050(v38);
    v175 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
    swift_beginAccess();
    v176 = *(v41 + v175);
    v177 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v178 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v41 + v178, v115, type metadata accessor for ConnectionState);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0446DE4(v38, v176, sub_1B0BE2D10, v41, sub_1B0BE2D2C, v41, v41 + v177);

    sub_1B038C9A4(v41 + v178, v114, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1B044B474(v115, v41 + v178);
    swift_endAccess();
    sub_1B042D734(v114);
    sub_1B038D690(v114, type metadata accessor for ConnectionState);
    sub_1B038D690(v115, type metadata accessor for ConnectionState);

    return sub_1B0BDE9C8();
  }

  if ((~v61 & 0xF000000000000007) == 0 || v61 != 0x800000000000006CLL)
  {
    v64 = v60;
    v65 = v190;
    v66 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa_0);

    sub_1B0A91FD0(v61, v64, v62, 1u);
    sub_1B04420D8(v61);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v61);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = sub_1B0E43988();
    v68 = sub_1B0E439A8();
    (*(*(v68 - 8) + 8))(v16, v68);
    v69 = sub_1B0E458E8();
    if (os_log_type_enabled(v67, v69))
    {
      v70 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v192[0] = v184;
      *v70 = 68158978;
      *(v70 + 4) = 2;
      *(v70 + 8) = 256;
      v71 = v59;
      v72 = &v66[*(v187 + 20)];
      *(v70 + 10) = *v72;

      v185 = v64;
      *(v70 + 11) = 2082;
      v73 = ConnectionID.debugDescription.getter(*(v72 + 1));
      v75 = sub_1B0399D64(v73, v74, v192);

      *(v70 + 13) = v75;
      *(v70 + 21) = 2082;
      v76 = Tag.debugDescription.getter(v186 | (v71 << 32));
      v78 = sub_1B0399D64(v76, v77, v192);

      *(v70 + 23) = v78;
      *(v70 + 31) = 2082;
      *(v70 + 33) = sub_1B0399D64(20302, 0xE200000000000000, v192);
      *(v70 + 41) = 2082;
      v79 = v185;
      v80 = ResponseText.debugDescription.getter(v61, v185, v62);
      v82 = v81;
      sub_1B0447F00(v61);

      v83 = sub_1B0399D64(v80, v82, v192);

      *(v70 + 43) = v83;
      _os_log_impl(&dword_1B0389000, v67, v69, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v70, 0x33u);
      v84 = v184;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v84, -1, -1);
      MEMORY[0x1B272C230](v70, -1, -1);

      sub_1B0447F00(v61);

      sub_1B0BB6FE0(v61, v79, v62, 1u);
    }

    else
    {

      sub_1B0447F00(v61);

      sub_1B0BB6FE0(v61, v64, v62, 1u);
      sub_1B0447F00(v61);
    }

    v41 = v65;
    goto LABEL_33;
  }

  v155 = v190;
  v156 = v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v190 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa_0);
  sub_1B04420D8(0x800000000000006CLL);

  sub_1B0A91FD0(0x800000000000006CLL, v60, v62, 1u);
  sub_1B04420D8(0x800000000000006CLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B04420D8(0x800000000000006CLL);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v157 = v60;
  v158 = sub_1B0E43988();
  v159 = sub_1B0E439A8();
  (*(*(v159 - 8) + 8))(v19, v159);
  v160 = sub_1B0E458E8();
  if (os_log_type_enabled(v158, v160))
  {
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v192[0] = v162;
    *v161 = 68158978;
    *(v161 + 4) = 2;
    *(v161 + 8) = 256;
    v163 = v59;
    v164 = &v156[*(v187 + 20)];
    *(v161 + 10) = *v164;

    v185 = v157;
    *(v161 + 11) = 2082;
    v165 = ConnectionID.debugDescription.getter(*(v164 + 1));
    v167 = sub_1B0399D64(v165, v166, v192);

    *(v161 + 13) = v167;
    *(v161 + 21) = 2082;
    v168 = Tag.debugDescription.getter(v186 | (v163 << 32));
    v170 = sub_1B0399D64(v168, v169, v192);

    *(v161 + 23) = v170;
    *(v161 + 31) = 2082;
    *(v161 + 33) = sub_1B0399D64(20302, 0xE200000000000000, v192);
    *(v161 + 41) = 2082;
    v157 = v185;
    v171 = ResponseText.debugDescription.getter(0x800000000000006CLL, v185, v62);
    v173 = v172;
    sub_1B0447F00(0x800000000000006CLL);

    v174 = sub_1B0399D64(v171, v173, v192);

    *(v161 + 43) = v174;
    _os_log_impl(&dword_1B0389000, v158, v160, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network. Server is temporarily unavailable.", v161, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v162, -1, -1);
    MEMORY[0x1B272C230](v161, -1, -1);
  }

  else
  {

    sub_1B0447F00(0x800000000000006CLL);
  }

  v180 = swift_allocObject();
  v181 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *(v180 + 16) = *(v155 + v181);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v180 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
  v182 = MEMORY[0x1E69E7CD0];
  *(v180 + 32) = MEMORY[0x1E69E7CD0];
  *(v180 + 40) = v182;
  sub_1B0446050(v180 | 0x1000000000000000);

  CommandConnection.cancel()();
  sub_1B0447F00(0x800000000000006CLL);

  return sub_1B0BB6FE0(0x800000000000006CLL, v157, v62, 1u);
}

uint64_t sub_1B0BDC398()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v8, v7, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v7, v5, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      return result;
    }
  }

  else if (result >= 2)
  {
    sub_1B038D690(v5, type metadata accessor for ConnectionState);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
    swift_beginAccess();
    *(v10 + 16) = *(v0 + v11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0446050(v10 | 0x6000000000000000);
  }

  return sub_1B038D690(v5, type metadata accessor for ConnectionState);
}

Swift::Void __swiftcall CommandConnection.logState()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E428D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = _s6LoggerVMa_0();
  v9 = *(*(v50 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v50);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v50 - v14;
  sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, &v50 - v14, _s6LoggerVMa_0);
  v15 = sub_1B0E42928();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1B0E42918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5440, &qword_1B0ED0358);
  v19 = *(v7 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B0EC3500;
  sub_1B0E428C8();
  sub_1B0E428B8();
  *&v71[0] = v21;
  sub_1B0BE2B48(&qword_1EB6DED40, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5448, &qword_1B0ED0360);
  sub_1B0BE28B8();
  sub_1B0E460A8();
  sub_1B0E428E8();
  v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v55 = v1;
  sub_1B038C9A4(v1 + v22, v5, type metadata accessor for ConnectionState);
  sub_1B0C28818(v71);
  sub_1B038D690(v5, type metadata accessor for ConnectionState);
  v68 = v71[4];
  v69 = v71[5];
  v70[0] = v72[0];
  *(v70 + 15) = *(v72 + 15);
  v64 = v71[0];
  v65 = v71[1];
  v66 = v71[2];
  v67 = v71[3];
  sub_1B0BE291C();
  v53 = v18;
  v23 = sub_1B0E428F8();
  v25 = v24;
  v62[4] = v68;
  v62[5] = v69;
  v63[0] = v70[0];
  *(v63 + 15) = *(v70 + 15);
  v62[0] = v64;
  v62[1] = v65;
  v62[2] = v66;
  v62[3] = v67;
  sub_1B0BE2970(v62);
  sub_1B03B2000(v23, v25);
  sub_1B03B2000(v23, v25);
  v26 = sub_1B0BE1FC4(v23, v25);
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    sub_1B0391D50(v23, v25);
    sub_1B0391D50(v23, v25);
    sub_1B0391D50(v23, v25);
    v30 = v54;
    v31 = v52;
    goto LABEL_3;
  }

  v58 = v23;
  v59 = v25;
  sub_1B03B2000(v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5450, &qword_1B0ED0368);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(v56, v60);
    __swift_project_boxed_opaque_existential_0(v60, v61);
    v48 = sub_1B0E46708();
    sub_1B0391D50(v23, v25);
    v31 = v52;
    if (v48)
    {
      __swift_project_boxed_opaque_existential_0(v60, v61);
      sub_1B0E466F8();
      sub_1B0391D50(v23, v25);
      sub_1B0391D50(v23, v25);
      v29 = *(&v56[0] + 1);
      v28 = *&v56[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v30 = v54;
      goto LABEL_3;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    v30 = v54;
  }

  else
  {
    sub_1B0391D50(v23, v25);
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_1B0398EFC(v56, &qword_1EB6E5458, &qword_1B0ED0370);
    v30 = v54;
    v31 = v52;
  }

  v28 = sub_1B0BE1D00(v23, v25);
  v29 = v49;
  sub_1B0391D50(v23, v25);
  sub_1B0391D50(v23, v25);
LABEL_3:
  sub_1B038C9A4(v30, v31, _s6LoggerVMa_0);
  v32 = v51;
  sub_1B038C9A4(v30, v51, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = sub_1B0E43988();
  v34 = sub_1B0E45908();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v64 = v36;
    *v35 = 68158722;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    v52 = v28;
    v37 = v50;
    v38 = *(v32 + *(v50 + 20));
    sub_1B038D690(v32, _s6LoggerVMa_0);
    *(v35 + 10) = v38;
    v39 = v31;
    v40 = v55;
    *(v35 + 11) = 2082;
    v41 = *(v39 + *(v37 + 20) + 4);
    sub_1B038D690(v39, _s6LoggerVMa_0);
    v42 = ConnectionID.debugDescription.getter(v41);
    v44 = sub_1B0399D64(v42, v43, &v64);

    *(v35 + 13) = v44;
    *(v35 + 21) = 2048;
    v45 = *(*(v40 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

    *(v35 + 23) = v45;

    *(v35 + 31) = 2082;
    v46 = sub_1B0399D64(v52, v29, &v64);

    *(v35 + 33) = v46;
    _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx-%{public}s] C%llu %{public}s", v35, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v36, -1, -1);
    MEMORY[0x1B272C230](v35, -1, -1);

    v47 = v54;
  }

  else
  {

    sub_1B038D690(v32, _s6LoggerVMa_0);

    sub_1B038D690(v31, _s6LoggerVMa_0);
    v47 = v30;
  }

  sub_1B038D690(v47, _s6LoggerVMa_0);
}

uint64_t sub_1B0BDCD94(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v47 = a3;
  v48 = a2;
  v49 = type metadata accessor for ConnectionEvent(0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s6LoggerVMa_0();
  v9 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OutboundContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1B0E44488();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = sub_1B0C26F08(*v24);
    if (v28)
    {
      v29 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v30 = sub_1B0E43988();
      v31 = sub_1B0E439A8();
      (*(*(v31 - 8) + 8))(v11, v31);
      v32 = sub_1B0E458D8();
      if (os_log_type_enabled(v30, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50 = v34;
        *v33 = 68158210;
        *(v33 + 4) = 2;
        *(v33 + 8) = 256;
        v35 = v29 + *(v46 + 20);
        *(v33 + 10) = *v35;

        *(v33 + 11) = 2082;
        v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
        v38 = sub_1B0399D64(v36, v37, &v50);

        *(v33 + 13) = v38;
        _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx-%{public}s] Trying to send handshake reply, but no barrier command is running.", v33, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x1B272C230](v34, -1, -1);
        MEMORY[0x1B272C230](v33, -1, -1);
      }

      else
      {
      }

      v45 = *(*(v4 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
      sub_1B0E43E28();
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1B0426594(v8);
      v43 = type metadata accessor for ConnectionEvent;
      v44 = v8;
    }

    else
    {
      v39 = v27;
      v40 = *(v4 + 16);
      v41 = v48;
      *v15 = a1;
      *(v15 + 1) = v41;
      v42 = v47 & 1;
      v15[16] = v47 & 1;
      swift_storeEnumTagMultiPayload();
      sub_1B0BD30C8(a1, v41, v42);
      sub_1B0BEAF64(v39, v15);
      v43 = type metadata accessor for OutboundContent;
      v44 = v15;
    }

    return sub_1B038D690(v44, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0BDD224(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v106 = a2;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v90 - v5;
  v97 = type metadata accessor for ConnectionEvent(0);
  v108 = *(v97 - 8);
  v7 = *(v108 + 64);
  v8 = MEMORY[0x1EEE9AC00](v97);
  v104 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v90 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = (&v90 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5488, &qword_1B0ED0478);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v107 = (&v90 - v23);
  v109 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v24 = *(*(v109 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v109);
  v96 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v90 - v27;
  v29 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v92 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v91 = &v90 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v99 = (&v90 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v100 = &v90 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v93 = &v90 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v101 = &v90 - v43;
  result = MEMORY[0x1EEE9AC00](v42);
  v46 = &v90 - v45;
  v90 = v2;
  v47 = *v2;
  v48 = (*v2 + 16);
  v49 = *v48;
  v105 = *v2;
  if (v49)
  {
    v50 = 0;
    while (v50 < *v48)
    {
      sub_1B038C9A4(v47 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038CB4C(&v46[*(v29 + 20)], v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 5)
      {
        result = sub_1B038D690(v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (result != 6)
      {
        sub_1B038D690(v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v95 = 0;
        goto LABEL_10;
      }

      ++v50;
      v47 = v105;
      if (v49 == v50)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  v95 = 1;
LABEL_10:
  v51 = v103;
  sub_1B03B5C80(v106, v103, &qword_1EB6E5470, &unk_1B0ED0460);
  v52 = v110;
  sub_1B038CB4C(v51, v110, type metadata accessor for ConnectionEvent);
  v53 = v108;
  v54 = v108 + 56;
  v106 = *(v108 + 56);
  v55 = v97;
  v106(v52, 0, 1, v97);
  v56 = v107;
  v106(v107, 1, 1, v55);
  sub_1B0BE2E5C(v110, v56);
  sub_1B0BE2ECC(v56, v16);
  v103 = v54;
  v106(v56, 1, 1, v55);
  v57 = *(v53 + 48);
  v108 = v53 + 48;
  v102 = v57;
  v58 = v57(v16, 1, v55);
  v59 = v98;
  if (v58 != 1)
  {
    v110 = MEMORY[0x1E69E7CC0];
    v94 = v16;
    while (1)
    {
      sub_1B038CB4C(v16, v11, type metadata accessor for ConnectionEvent);
      v70 = v104;
      sub_1B038C9A4(v11, v104, type metadata accessor for ConnectionEvent);
      sub_1B04380C8(v59, v70, v6);
      sub_1B038D690(v11, type metadata accessor for ConnectionEvent);
      if ((*(v30 + 48))(v6, 1, v29) != 1)
      {
        break;
      }

      sub_1B0398EFC(v6, &qword_1EB6E5468, &qword_1B0ED0458);
LABEL_25:
      v69 = v107;
      sub_1B0BE2ECC(v107, v16);
      v106(v69, 1, 1, v55);
      if (v102(v16, 1, v55) == 1)
      {
        goto LABEL_12;
      }
    }

    v71 = v11;
    v72 = v6;
    v73 = v29;
    v74 = v72;
    v75 = v100;
    sub_1B038CB4C(v72, v100, type metadata accessor for CommandConnection.RecentErrors.Error);
    v76 = v96;
    if ((v95 & 1) == 0)
    {
      sub_1B038C9A4(v75 + *(v73 + 20), v96, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) >= 5)
      {
        v75 = v100;
        if (!EnumCaseMultiPayload)
        {
          sub_1B038D690(v76, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          sub_1B038D690(v75, type metadata accessor for CommandConnection.RecentErrors.Error);
          v29 = v73;
          v6 = v74;
          v11 = v71;
LABEL_35:
          v16 = v94;
          goto LABEL_25;
        }
      }

      else
      {
        sub_1B038D690(v76, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v75 = v100;
      }
    }

    v78 = v93;
    sub_1B038CB4C(v75, v93, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B038CB4C(v78, v101, type metadata accessor for CommandConnection.RecentErrors.Error);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_1B0446C54(0, v110[2] + 1, 1, v110);
    }

    v29 = v73;
    v80 = v110[2];
    v79 = v110[3];
    v6 = v74;
    if (v80 >= v79 >> 1)
    {
      v110 = sub_1B0446C54(v79 > 1, v80 + 1, 1, v110);
    }

    v11 = v71;
    v81 = v110;
    v110[2] = v80 + 1;
    sub_1B038CB4C(v101, v81 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v80, type metadata accessor for CommandConnection.RecentErrors.Error);
    v55 = v97;
    v59 = v98;
    goto LABEL_35;
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_12:
  sub_1B0398EFC(v107, &qword_1EB6E5488, &qword_1B0ED0478);
  v60 = MonotonicTime.init(seconds:since:)(v59, -4.0);
  result = *v48;
  if (!*v48)
  {
    v68 = 0;
    goto LABEL_43;
  }

  v61 = 0;
  v62 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v63 = *(v30 + 72);
  v109 = v62;
  v64 = v90;
  v65 = v105;
  while (1)
  {
    v66 = *(v105 + v62);
    v67 = v60 - v66;
    if (v60 >= v66)
    {
      if (__OFSUB__(v60, v66))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (__OFSUB__(v66, v60))
      {
        goto LABEL_67;
      }

      v67 = v60 - v66;
      if (__OFSUB__(0, v66 - v60))
      {
        goto LABEL_68;
      }
    }

    if (v67 > 0)
    {
      break;
    }

    ++v61;
    v62 += v63;
    if (result == v61)
    {
      v68 = result;
      goto LABEL_43;
    }
  }

  v68 = v61 + 1;
  if (__OFADD__(v61, 1))
  {
    goto LABEL_78;
  }

  if (v68 != result)
  {
    v82 = v63 + v62;
    while (v68 < result)
    {
      v83 = v65;
      v84 = v99;
      result = sub_1B038C9A4(v65 + v82, v99, type metadata accessor for CommandConnection.RecentErrors.Error);
      v85 = *v84;
      v86 = __OFSUB__(v60, *v84);
      v87 = v60 - *v84;
      if (v87 < 0 != v86)
      {
        v86 = __OFSUB__(v85, v60);
        v88 = v85 - v60;
        if (v86)
        {
          goto LABEL_71;
        }

        v87 = -v88;
        if (__OFSUB__(0, v88))
        {
          goto LABEL_72;
        }
      }

      else if (v86)
      {
        goto LABEL_70;
      }

      result = sub_1B038D690(v99, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v87 > 0)
      {
        v65 = v83;
      }

      else
      {
        v65 = v83;
        if (v68 != v61)
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v89 = *v48;
          if (v61 >= *v48)
          {
            goto LABEL_74;
          }

          result = sub_1B038C9A4(v83 + v109 + v61 * v63, v91, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v68 >= v89)
          {
            goto LABEL_75;
          }

          sub_1B038C9A4(v83 + v82, v92, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1B0C0DF7C(v83);
          }

          result = sub_1B0BE2D30(v92, v83 + v109 + v61 * v63);
          if (v68 >= v83[2])
          {
            goto LABEL_76;
          }

          sub_1B0BE2D30(v91, v83 + v82);
          v65 = v83;
          *v64 = v83;
        }

        ++v61;
      }

      ++v68;
      v48 = v65 + 2;
      result = v65[2];
      v82 += v63;
      if (v68 == result)
      {
        goto LABEL_42;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v68 = result;
LABEL_42:
  result = v61;
  if (v68 >= v61)
  {
LABEL_43:
    sub_1B0445E64(result, v68);
    return sub_1B0445F24(v110);
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1B0BDDD9C(uint64_t a1)
{
  v2 = v1;
  v110 = type metadata accessor for ConnectionState();
  v4 = *(*(v110 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v110);
  v111 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v109 = &v96[-v8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v108 = &v96[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v96[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v105 = &v96[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v96[-v15];
  v101 = _s6LoggerVMa_0();
  v16 = *(*(v101 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v101);
  v19 = &v96[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v96[-v20];
  v22 = sub_1B0E441D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v100 = &v96[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v103 = &v96[-v28];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v102 = &v96[-v30];
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v96[-v31];
  v33 = sub_1B0E43DF8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v96[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v34 + 16);
  v106 = a1;
  v38(v37, a1, v33);
  if ((*(v34 + 88))(v37, v33) == *MEMORY[0x1E6977C10])
  {
    (*(v34 + 96))(v37, v33);
    if ((*(v23 + 88))(v37, v22) == *MEMORY[0x1E6977D68] && ((*(v23 + 16))(v32, v37, v22), (*(v23 + 96))(v32, v22), *v32 == 89))
    {
      v103 = v22;
      v39 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v21, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v40 = sub_1B0E43988();
      v41 = sub_1B0E439A8();
      (*(*(v41 - 8) + 8))(v21, v41);
      v42 = sub_1B0E45908();
      if (os_log_type_enabled(v40, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v112[0] = v44;
        *v43 = 68158466;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v45 = v39 + *(v101 + 20);
        *(v43 + 10) = *v45;

        *(v43 + 11) = 2082;
        v46 = ConnectionID.debugDescription.getter(*(v45 + 4));
        v48 = sub_1B0399D64(v46, v47, v112);

        *(v43 + 13) = v48;
        *(v43 + 21) = 2048;
        v49 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v43 + 23) = v49;

        _os_log_impl(&dword_1B0389000, v40, v42, "[%.*hhx-%{public}s] [C%llu] Connection did fail: Operation canceled", v43, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x1B272C230](v44, -1, -1);
        MEMORY[0x1B272C230](v43, -1, -1);
      }

      else
      {
      }

      (*(v23 + 8))(v37, v103);
    }

    else
    {
      v50 = v102;
      (*(v23 + 32))(v102, v37, v22);
      v51 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v52 = v103;
      v99 = *(v23 + 16);
      v99(v103, v50, v22);

      v53 = sub_1B0E43988();
      v54 = sub_1B0E439A8();
      (*(*(v54 - 8) + 8))(v19, v54);
      v55 = sub_1B0E458E8();
      if (os_log_type_enabled(v53, v55))
      {
        v56 = swift_slowAlloc();
        v97 = v55;
        v57 = v56;
        v98 = swift_slowAlloc();
        v112[0] = v98;
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v51 + *(v101 + 20);
        *(v57 + 10) = *v58;

        *(v57 + 11) = 2082;
        v59 = ConnectionID.debugDescription.getter(*(v58 + 4));
        v61 = v53;
        v62 = sub_1B0399D64(v59, v60, v112);

        *(v57 + 13) = v62;
        *(v57 + 21) = 2048;
        v63 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v57 + 23) = v63;

        *(v57 + 31) = 2080;
        v64 = v103;
        v99(v100, v103, v22);
        v65 = sub_1B0E44BA8();
        v67 = v66;
        v68 = *(v23 + 8);
        v68(v64, v22);
        v69 = sub_1B0399D64(v65, v67, v112);
        v70 = v50;
        v71 = v69;

        *(v57 + 33) = v71;
        _os_log_impl(&dword_1B0389000, v61, v97, "[%.*hhx-%{public}s] [C%llu] Connection did fail: %s", v57, 0x29u);
        v72 = v98;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v72, -1, -1);
        MEMORY[0x1B272C230](v57, -1, -1);

        v68(v70, v22);
      }

      else
      {

        v73 = *(v23 + 8);
        v73(v52, v22);
        v73(v50, v22);
      }
    }
  }

  else
  {
    (*(v34 + 8))(v37, v33);
  }

  v74 = v105;
  v75 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v76 = v104;
  sub_1B038C9A4(v2 + v75, v104, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v76, v74, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038D690(v74, type metadata accessor for ConnectionState);
LABEL_14:
    v78 = 0;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038D690(v74, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_14;
  }

  v78 = 1;
LABEL_17:
  v79 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v80 = *(v2 + v79);
  v81 = v107;
  sub_1B038C9A4(v2 + v75, v107, type metadata accessor for ConnectionState);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B042D344(v106, v80);

  v82 = v108;
  sub_1B038C9A4(v2 + v75, v108, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v81, v2 + v75);
  swift_endAccess();
  sub_1B042D734(v82);
  sub_1B038D690(v82, type metadata accessor for ConnectionState);
  sub_1B038D690(v81, type metadata accessor for ConnectionState);
  v83 = v109;
  sub_1B038C9A4(v2 + v75, v109, type metadata accessor for ConnectionState);
  v84 = v83;
  v85 = v111;
  sub_1B038CB4C(v84, v111, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    sub_1B038D690(v85, type metadata accessor for ConnectionState);
    return sub_1B0BDE9C8();
  }

  if (result == 3)
  {
    result = sub_1B038D690(v85, type metadata accessor for ConnectionState);
  }

  else if (result != 4)
  {
    return sub_1B0BDE9C8();
  }

  if ((v78 & 1) == 0)
  {
    v87 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v88 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v89 = *(v2 + v88);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v87) = sub_1B044CC18(v87, v89);
    v91 = v90;
    v93 = v92;

    v94 = swift_allocObject();
    v95 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
    swift_beginAccess();
    *(v94 + 16) = *(v2 + v95);
    *(v94 + 24) = v87;
    *(v94 + 32) = v91;
    *(v94 + 40) = v93;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BDAD70(v94 | 0x1000000000000000);
  }

  return result;
}

uint64_t sub_1B0BDE9C8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v12, v8, type metadata accessor for ConnectionState);
  v15 = sub_1B0BE2F54;
  v16 = v1;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B042E7B4(sub_1B0447A6C, v14, sub_1B0BE2C90, v1, v1 + v11);
  sub_1B0BF4820(v10, v1 + v11, v8, v1);

  sub_1B0BF58B0(v1 + v11, v8, v1);
  sub_1B038C9A4(v1 + v12, v6, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1B044B474(v8, v1 + v12);
  swift_endAccess();
  sub_1B042D734(v6);
  sub_1B038D690(v6, type metadata accessor for ConnectionState);
  sub_1B038D690(v8, type metadata accessor for ConnectionState);
}

uint64_t sub_1B0BDEBD8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v44 = type metadata accessor for UnauthenticatedStateWithTasks();
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E44468();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1B0E44488();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v1 + v22, v11, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v22;
      v41 = v2;
      v42 = v9;
      v43 = v6;
      v23 = v45;
      sub_1B038CB4C(v11, v45, type metadata accessor for UnauthenticatedStateWithTasks);
      v24 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1B0BE2CCC(v46);
      v48[8] = v46[8];
      v48[9] = v46[9];
      v48[10] = v46[10];
      v49 = v47;
      v48[4] = v46[4];
      v48[5] = v46[5];
      v48[6] = v46[6];
      v48[7] = v46[7];
      v48[2] = v46[2];
      v48[3] = v46[3];
      v48[0] = v46[0];
      v48[1] = v46[1];
      v25 = v23 + *(v44 + 24);
      v26 = sub_1B0C33814(v48, v1 + v24);
      v27 = *(v26 + 2);
      if (v27)
      {
        v28 = v26 + 7;
        do
        {
          v29 = *(v28 - 3);
          v30 = *(v28 - 2);
          v32 = *(v28 - 1);
          v31 = *v28;
          sub_1B0BE2C30(v29);
          sub_1B044A72C(v29, v30, v32, v31);
          sub_1B044B428(v29);
          v28 += 4;
          --v27;
        }

        while (v27);
      }

      v33 = v45;
      v34 = v42;
      sub_1B038C9A4(v45, v42, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v35 = v40;
      v36 = v43;
      sub_1B038C9A4(v1 + v40, v43, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v34, v1 + v35);
      swift_endAccess();
      sub_1B042D734(v36);
      sub_1B038D690(v36, type metadata accessor for ConnectionState);
      sub_1B038D690(v34, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v37 = type metadata accessor for UnauthenticatedStateWithTasks;
      v38 = v33;
    }

    else
    {
      v37 = type metadata accessor for ConnectionState;
      v38 = v11;
    }

    return sub_1B038D690(v38, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BDF024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConnectionConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = sub_1B0447ABC();
  if (v11 == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0x8000000000000000;
  }

  else
  {
    v12 = v10;
    v13 = v11;
    if (*(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v4 + 28)) >= 0)
    {
      v14 = v9 | 0x4000000000000000;
    }

    else
    {
      v14 = v9;
    }
  }

  sub_1B038C9A4(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v7, type metadata accessor for ConnectionConfiguration);
  v15 = sub_1B0447BC4();
  v17 = v16;
  v19 = v18;
  result = sub_1B038D690(v7, type metadata accessor for ConnectionConfiguration);
  *a2 = v14;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v19;
  return result;
}

uint64_t sub_1B0BDF160(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BDF1C0(a1);
  }

  return result;
}

uint64_t sub_1B0BDF1C0(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v60 = type metadata accessor for ConnectionConfiguration(0);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionState();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v61 = type metadata accessor for UnauthenticatedStateWithTasks();
  v14 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  v23 = sub_1B0E44488();
  result = (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v25 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v2 + v25, v13, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B038CB4C(v13, v65, type metadata accessor for UnauthenticatedStateWithTasks);
      v26 = *(v2 + 16);
      v27 = sub_1B0447ABC();
      v58 = v25;
      v59 = v6;
      v56 = v28;
      v57 = v27;
      v55 = v29;
      if (v29 == 1)
      {
        v60 = 0;
        v30 = 0;
        v31 = 0x8000000000000000;
      }

      else
      {
        if (*(v26 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v60 + 28)) >= 0)
        {
          v31 = v27 | 0x4000000000000000;
        }

        else
        {
          v31 = v27;
        }

        v60 = v28;
        v30 = v29;
      }

      v34 = v62;
      sub_1B038C9A4(v26 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v5, type metadata accessor for ConnectionConfiguration);
      v35 = sub_1B0447BC4();
      v37 = v36;
      v39 = v38;
      sub_1B038D690(v5, type metadata accessor for ConnectionConfiguration);
      v40 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      *&v66 = v34;
      *(&v66 + 1) = v31;
      *&v67 = v60;
      *(&v67 + 1) = v30;
      v62 = v35;
      *&v68 = v35;
      *(&v68 + 1) = v37;
      v60 = v37;
      v54 = v39;
      *&v69 = v39;
      sub_1B0BE2C24(&v66);
      v78[8] = v74;
      v78[9] = v75;
      v78[10] = v76;
      v79 = v77;
      v78[4] = v70;
      v78[5] = v71;
      v78[6] = v72;
      v78[7] = v73;
      v78[2] = v68;
      v78[3] = v69;
      v78[0] = v66;
      v78[1] = v67;
      v41 = v65 + *(v61 + 24);
      v42 = sub_1B0C33814(v78, v2 + v40);
      v43 = *(v42 + 2);
      if (v43)
      {
        v44 = v42 + 7;
        do
        {
          v46 = *(v44 - 3);
          v45 = *(v44 - 2);
          v47 = *(v44 - 1);
          v48 = *v44;
          sub_1B0BE2C30(v46);
          sub_1B044A72C(v46, v45, v47, v48);
          sub_1B044B428(v46);
          v44 += 4;
          --v43;
        }

        while (v43);
      }

      sub_1B0429C7C(v57, v56, v55);
      sub_1B0429C7C(v62, v60, v54);
      v49 = v65;
      v50 = v63;
      sub_1B038C9A4(v65, v63, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v51 = v58;
      v52 = v64;
      sub_1B038C9A4(v2 + v58, v64, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v50, v2 + v51);
      swift_endAccess();
      sub_1B042D734(v52);
      sub_1B038D690(v52, type metadata accessor for ConnectionState);
      sub_1B038D690(v50, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v32 = type metadata accessor for UnauthenticatedStateWithTasks;
      v33 = v49;
    }

    else
    {
      v32 = type metadata accessor for ConnectionState;
      v33 = v13;
    }

    return sub_1B038D690(v33, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BDF750(__int128 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BDF7B0(a1);
  }

  return result;
}

uint64_t sub_1B0BDF7B0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v62 = *a1;
  v63 = v3;
  v4 = a1[3];
  v64 = a1[2];
  v65 = v4;
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v45 = type metadata accessor for UnauthenticatedStateWithTasks();
  v14 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1B0E44488();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v2 + v24, v13, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v24;
      v43 = v5;
      v44 = v9;
      v25 = v47;
      sub_1B038CB4C(v13, v47, type metadata accessor for UnauthenticatedStateWithTasks);
      v26 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      sub_1B0BE2C84(&v48);
      v60[8] = v56;
      v60[9] = v57;
      v60[10] = v58;
      v61 = v59;
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v54;
      v60[7] = v55;
      v60[2] = v50;
      v60[3] = v51;
      v60[0] = v48;
      v60[1] = v49;
      v27 = v25 + *(v45 + 24);
      v28 = sub_1B0C33814(v60, v2 + v26);
      v29 = *(v28 + 2);
      if (v29)
      {
        v30 = v28 + 7;
        do
        {
          v31 = *(v30 - 3);
          v32 = *(v30 - 2);
          v34 = *(v30 - 1);
          v33 = *v30;
          sub_1B0BE2C30(v31);
          sub_1B044A72C(v31, v32, v34, v33);
          sub_1B044B428(v31);
          v30 += 4;
          --v29;
        }

        while (v29);
      }

      v35 = v46;
      v36 = v47;
      sub_1B038C9A4(v47, v46, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v37 = v42;
      v38 = v44;
      sub_1B038C9A4(v2 + v42, v44, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v35, v2 + v37);
      swift_endAccess();
      sub_1B042D734(v38);
      sub_1B038D690(v38, type metadata accessor for ConnectionState);
      sub_1B038D690(v35, type metadata accessor for ConnectionState);
      sub_1B0BDE9C8();
      v39 = type metadata accessor for UnauthenticatedStateWithTasks;
      v40 = v36;
    }

    else
    {
      v39 = type metadata accessor for ConnectionState;
      v40 = v13;
    }

    return sub_1B038D690(v40, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0BDFC1C(uint64_t a1)
{
  v3 = _s6LoggerVMa_0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v19 = static MonotonicTime.now()();
  v20 = sub_1B0BE07D8(v19);
  if ((v21 & 1) == 0 || v20)
  {
    return;
  }

  v100 = v1;
  v22 = (v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v23 = 0;
  v24 = *v22;
  v25 = *(*v22 + 16);
  v26 = v25 + 1;
  v27 = 56;
  while (--v26)
  {
    v28 = *(v24 + v27);
    v27 += 40;
    v29 = v28 == 2;
    v30 = __OFADD__(v23, v29);
    v23 += v29;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  if (v23 > 2)
  {
    v31 = v100 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v100 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v6, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E439A8();
    (*(*(v33 - 8) + 8))(v6, v33);
    v34 = sub_1B0E458E8();
    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102[0] = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = v31 + *(v3 + 20);
      *(v35 + 10) = *v37;

      *(v35 + 11) = 2082;
      v38 = ConnectionID.debugDescription.getter(*(v37 + 4));
      v40 = sub_1B0399D64(v38, v39, v102);

      *(v35 + 13) = v40;
      *(v35 + 21) = 2048;
      *(v35 + 23) = v23;
      _os_log_impl(&dword_1B0389000, v32, v34, "[%.*hhx-%{public}s] Connection has %ld IDLE running.", v35, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x1B272C230](v36, -1, -1);
      MEMORY[0x1B272C230](v35, -1, -1);

LABEL_31:
      CommandConnection.cancel()();
      return;
    }

LABEL_30:

    goto LABEL_31;
  }

  v41 = a1;
  if (!v25)
  {
    goto LABEL_23;
  }

  v42 = (v24 + 64);
  v41 = a1;
  do
  {
    v43 = *v42;
    if (*v42 >= v41)
    {
      v43 = v41;
    }

    if (*(v42 - 8) == 2)
    {
      v41 = v43;
    }

    v42 += 5;
    --v25;
  }

  while (v25);
  if (v41 <= a1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(v41, a1))
  {
    goto LABEL_53;
  }

  v44 = a1 - v41;
  if (__OFSUB__(0, v41 - a1))
  {
    __break(1u);
LABEL_23:
    v44 = a1 - v41;
    if (!__OFSUB__(a1, v41))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_24:
  v45 = v44 / 1000000000.0;
  if (v45 >= 570.0)
  {
    v61 = v100 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v100 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v9, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v62 = sub_1B0E439A8();
    (*(*(v62 - 8) + 8))(v9, v62);
    v63 = sub_1B0E458E8();
    if (os_log_type_enabled(v32, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v102[0] = v65;
      *v64 = 68158466;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v66 = v61 + *(v3 + 20);
      *(v64 + 10) = *v66;

      *(v64 + 11) = 2082;
      v67 = ConnectionID.debugDescription.getter(*(v66 + 4));
      v69 = sub_1B0399D64(v67, v68, v102);

      *(v64 + 13) = v69;
      *(v64 + 21) = 2048;
      *(v64 + 23) = v45;
      _os_log_impl(&dword_1B0389000, v32, v63, "[%.*hhx-%{public}s] Connection has IDLE that has been running for %f s.", v64, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x1B272C230](v65, -1, -1);
      MEMORY[0x1B272C230](v64, -1, -1);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v46 = v22[1];
  v47 = *(v22 + 16);
  v48 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C27108(v48, v102);

  if (v102[1])
  {
    sub_1B0398EFC(v102, &qword_1EB6E5490, &unk_1B0ED0480);
    v49 = v100;
    goto LABEL_27;
  }

  v70 = *v22;
  v49 = v100;
  if (!*(v70 + 16))
  {
LABEL_27:
    v50 = v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v12, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v51 = sub_1B0E43988();
    v52 = sub_1B0E439A8();
    (*(*(v52 - 8) + 8))(v12, v52);
    v53 = sub_1B0E458D8();
    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v101 = v55;
      *v54 = 68158210;
      *(v54 + 4) = 2;
      *(v54 + 8) = 256;
      v56 = v50 + *(v3 + 20);
      *(v54 + 10) = *v56;

      *(v54 + 11) = 2082;
      v57 = ConnectionID.debugDescription.getter(*(v56 + 4));
      v59 = sub_1B0399D64(v57, v58, &v101);

      *(v54 + 13) = v59;
      _os_log_impl(&dword_1B0389000, v51, v53, "[%.*hhx-%{public}s] Stuck check: no (non-IDLE) commands are currently running.", v54, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x1B272C230](v55, -1, -1);
      v60 = v54;
LABEL_29:
      MEMORY[0x1B272C230](v60, -1, -1);

      return;
    }

    goto LABEL_50;
  }

  v71 = *(*(v100 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime);
  if (v71 <= a1)
  {
LABEL_42:
    v72 = a1 - v71;
    if (!__OFSUB__(a1, v71))
    {
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
    return;
  }

  if (__OFSUB__(v71, a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v72 = a1 - v71;
  if (__OFSUB__(0, v71 - a1))
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  v73 = v72 / 1000000000.0;
  if (v73 >= 2.0)
  {
    v74 = *(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v74) = sub_1B044CC18(v74, v70);
    v76 = v75;

    v77 = sub_1B0BE4C1C(v74, v76);
    v79 = v78;

    v80 = v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v73 >= 87.0)
    {
      sub_1B038C9A4(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v15, _s6LoggerVMa_0);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v90 = sub_1B0E43988();
      v91 = sub_1B0E439A8();
      (*(*(v91 - 8) + 8))(v15, v91);
      v92 = sub_1B0E458E8();

      if (os_log_type_enabled(v90, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v101 = v94;
        *v93 = 68158978;
        *(v93 + 4) = 2;
        *(v93 + 8) = 256;
        v95 = v80 + *(v3 + 20);
        *(v93 + 10) = *v95;

        *(v93 + 11) = 2082;
        v96 = ConnectionID.debugDescription.getter(*(v95 + 4));
        v98 = sub_1B0399D64(v96, v97, &v101);

        *(v93 + 13) = v98;
        *(v93 + 21) = 1040;
        *(v93 + 23) = 1;
        *(v93 + 27) = 2048;
        *(v93 + 29) = v73;
        *(v93 + 37) = 2082;
        v99 = sub_1B0399D64(v77, v79, &v101);

        *(v93 + 39) = v99;
        _os_log_impl(&dword_1B0389000, v90, v92, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s. Cancelling.", v93, 0x2Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v94, -1, -1);
        MEMORY[0x1B272C230](v93, -1, -1);
      }

      else
      {
      }

      goto LABEL_31;
    }

    sub_1B038C9A4(v49 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v18, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v51 = sub_1B0E43988();
    v81 = sub_1B0E439A8();
    (*(*(v81 - 8) + 8))(v18, v81);
    v82 = sub_1B0E458E8();

    if (os_log_type_enabled(v51, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v101 = v84;
      *v83 = 68158978;
      *(v83 + 4) = 2;
      *(v83 + 8) = 256;
      v85 = v80 + *(v3 + 20);
      *(v83 + 10) = *v85;

      *(v83 + 11) = 2082;
      v86 = ConnectionID.debugDescription.getter(*(v85 + 4));
      v88 = sub_1B0399D64(v86, v87, &v101);

      *(v83 + 13) = v88;
      *(v83 + 21) = 1040;
      *(v83 + 23) = 1;
      *(v83 + 27) = 2048;
      *(v83 + 29) = v73;
      *(v83 + 37) = 2082;
      v89 = sub_1B0399D64(v77, v79, &v101);

      *(v83 + 39) = v89;
      _os_log_impl(&dword_1B0389000, v51, v82, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s.", v83, 0x2Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v84, -1, -1);
      v60 = v83;
      goto LABEL_29;
    }

LABEL_50:
  }
}

uint64_t sub_1B0BE07D8(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnauthenticatedStateWithTasks();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v11, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_7;
  }

  sub_1B038CB4C(v6, v10, type metadata accessor for UnauthenticatedStateWithTasks);
  v12 = *(v10 + 1);
  *&result = COERCE_DOUBLE(sub_1B038D690(v10, type metadata accessor for UnauthenticatedStateWithTasks));
  if (v12 <= a1)
  {
    v14 = a1 - v12;
    if (!__OFSUB__(a1, v12))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v12, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = a1 - v12;
  if (__OFSUB__(0, v12 - a1))
  {
    __break(1u);
LABEL_7:
    sub_1B038D690(v6, type metadata accessor for ConnectionState);
    *&result = 0.0;
    return result;
  }

LABEL_9:
  if (v14 / 1000000000.0 <= 180.0)
  {
    return 1;
  }

  *&result = v14 / 1000000000.0;
  return result;
}

uint64_t sub_1B0BE09B8(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(a1 + v9, v8, type metadata accessor for ConnectionState);
  sub_1B038CB4C(v8, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v17, v6, 0x162uLL);
    v10 = *(v6 + 21);
    v18[8] = *(v6 + 20);
    v18[9] = v10;
    v19 = *(v6 + 176);
    v11 = *(v6 + 17);
    v18[4] = *(v6 + 16);
    v18[5] = v11;
    v12 = *(v6 + 19);
    v18[6] = *(v6 + 18);
    v18[7] = v12;
    v13 = *(v6 + 13);
    v18[0] = *(v6 + 12);
    v18[1] = v13;
    v14 = *(v6 + 15);
    v18[2] = *(v6 + 14);
    v18[3] = v14;
    if (sub_1B0BE2780(v18) == 2)
    {
      sub_1B03DB9A4(v18);
      sub_1B0BE278C(v17);
      return 1;
    }

    sub_1B0BE278C(v17);
  }

  else
  {
    sub_1B038D690(v6, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1B0BE0B70()
{
  v1 = sub_1B0E43828();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OutboundContent(0);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s6LoggerVMa_0();
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v66);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = sub_1B0E44468();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v0[3];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  v21 = sub_1B0E44488();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v65 = v13;
    v59 = v11;
    v60 = v5;
    v61 = v2;
    v62 = v1;
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v11 = (*(v0 + v22) + 1) & 0xFFFFFF;
    *(v0 + v22) = v11;
    v5 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v18 = v0;
    v13 = static MonotonicTime.now()();
    v2 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v0 = MEMORY[0x1E69E7CD0];
    sub_1B0C27278(MEMORY[0x1E69E7CD0], 0, *v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v2 = sub_1B0C0C57C(0, *(v2 + 16) + 1, 1, v2);
  *v21 = v2;
LABEL_3:
  v26 = v5;
  v28 = *(v2 + 16);
  v27 = *(v2 + 24);
  if (v28 >= v27 >> 1)
  {
    v57 = sub_1B0C0C57C((v27 > 1), v28 + 1, 1, v2);
    v29 = v11;
    v2 = v57;
  }

  else
  {
    v29 = v11;
  }

  *(v2 + 16) = v28 + 1;
  v30 = v2 + 40 * v28;
  *(v30 + 32) = v5;
  *(v30 + 36) = v29;
  *(v30 + 40) = v0;
  *(v30 + 48) = 0;
  *(v30 + 56) = 2;
  *(v30 + 64) = v13;
  *v21 = v2;
  v31 = v29;
  swift_endAccess();
  swift_endAccess();
  v32 = v18;
  v33 = v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v34 = v59;
  sub_1B038C9A4(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v59, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v35 = sub_1B0E43988();
  v36 = sub_1B0E439A8();
  (*(*(v36 - 8) + 8))(v34, v36);
  v37 = sub_1B0E458D8();
  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v38 = 68158466;
    *(v38 + 4) = 2;
    *(v38 + 8) = 256;
    v39 = v66;
    v40 = &v33[*(v66 + 20)];
    *(v38 + 10) = *v40;

    *(v38 + 11) = 2082;
    v41 = ConnectionID.debugDescription.getter(*(v40 + 1));
    v43 = sub_1B0399D64(v41, v42, v67);

    *(v38 + 13) = v43;
    *(v38 + 21) = 2082;
    v26 = v5;
    v44 = v31 << 32;
    v45 = Tag.debugDescription.getter(v26 | ((v31 & 0xFFFFFF) << 32));
    v47 = sub_1B0399D64(v45, v46, v67);

    *(v38 + 23) = v47;
    _os_log_impl(&dword_1B0389000, v35, v37, "[%.*hhx-%{public}s] Sending IDLE as %{public}s", v38, 0x1Fu);
    v48 = v65;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v48, -1, -1);
    MEMORY[0x1B272C230](v38, -1, -1);

    v49 = v62;
  }

  else
  {

    v44 = v31 << 32;
    v49 = v62;
    v39 = v66;
  }

  v50 = v32[2];
  v51 = v64;
  swift_storeEnumTagMultiPayload();
  sub_1B0BEAF64(v44 | v26, v51);
  sub_1B038D690(v51, type metadata accessor for OutboundContent);
  v52 = *(v50 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v53 = (v50 + *(v39 + 20) + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
  v54 = (*(v53 + 1) << 27) | (*v53 << 59) | 0x800000;
  v55 = v60;
  sub_1B0E43838();
  sub_1B03CE2E0(v55);
  return (*(v61 + 8))(v55, v49);
}

uint64_t sub_1B0BE1334()
{
  v1 = sub_1B0E43828();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OutboundContent(0);
  v4 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = _s6LoggerVMa_0();
  v6 = *(*(v80 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - v9;
  v81 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v81 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v81);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v70 - v15;
  v17 = sub_1B0E44468();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ConnectionState();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v26, v25, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1B038D690(v25, type metadata accessor for ConnectionState);
  if (EnumCaseMultiPayload != 2)
  {
    return result;
  }

  v29 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  result = swift_beginAccess();
  if (*(*v29 + 16))
  {
    return result;
  }

  v30 = *(v0 + 24);
  *v21 = v30;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v31 = v30;
  LOBYTE(v30) = sub_1B0E44488();
  v33 = *(v18 + 8);
  v32 = v18 + 8;
  v33(v21, v17);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
  swift_beginAccess();
  LODWORD(v72) = *(v0 + v34);
  v35 = (v72 + 1) & 0xFFFFFF;
  *(v0 + v34) = v35;
  v73 = v0;
  v71 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v36 = sub_1B0C1AD1C();
  sub_1B038D690(v16, type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v0 = sub_1B0C1B22C();
  sub_1B038D690(v14, type metadata accessor for ClientCommand);
  v37 = static MonotonicTime.now()();
  v21 = *v29;
  v38 = v29[1];
  v39 = *(v29 + 16);
  sub_1B0C27278(v36, 0, *v29);
  v72 = v37;
  v32 = v35;
  v10 = v71;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v21 = sub_1B0C0C57C(0, *(v21 + 2) + 1, 1, v21);
    *v29 = v21;
  }

  v41 = v73;
  v42 = v79;
  v43 = v80;
  v45 = *(v21 + 2);
  v44 = *(v21 + 3);
  if (v45 >= v44 >> 1)
  {
    v21 = sub_1B0C0C57C((v44 > 1), v45 + 1, 1, v21);
  }

  *(v21 + 2) = v45 + 1;
  v46 = &v21[40 * v45];
  *(v46 + 8) = v10;
  *(v46 + 9) = v32;
  *(v46 + 5) = v0;
  *(v46 + 6) = 0;
  v46[56] = 1;
  *(v46 + 8) = v72;
  *v29 = v21;
  swift_endAccess();
  swift_endAccess();
  v47 = v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v42, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v48 = sub_1B0E43988();
  v49 = sub_1B0E439A8();
  (*(*(v49 - 8) + 8))(v42, v49);
  v50 = sub_1B0E458D8();
  if (os_log_type_enabled(v48, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v82[0] = v52;
    *v51 = 68158466;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v53 = v47 + *(v43 + 20);
    *(v51 + 10) = *v53;
    v54 = v73;

    *(v51 + 11) = 2082;
    v55 = ConnectionID.debugDescription.getter(*(v53 + 4));
    v57 = sub_1B0399D64(v55, v56, v82);

    *(v51 + 13) = v57;
    *(v51 + 21) = 2082;
    v58 = v32 << 32;
    v59 = Tag.debugDescription.getter(v10 | ((v32 & 0xFFFFFF) << 32));
    v61 = sub_1B0399D64(v59, v60, v82);

    *(v51 + 23) = v61;
    v62 = v50;
    v63 = v80;
    _os_log_impl(&dword_1B0389000, v48, v62, "[%.*hhx-%{public}s] Sending NOOP as %{public}s", v51, 0x1Fu);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v52, -1, -1);
    MEMORY[0x1B272C230](v51, -1, -1);
  }

  else
  {

    v54 = v73;

    v63 = v43;
    v58 = v32 << 32;
  }

  v64 = *(v54 + 16);
  v65 = v75;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1B0BEAF64(v58 | v10, v65);
  sub_1B038D690(v65, type metadata accessor for OutboundContent);
  v66 = *(v64 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  v67 = (v64 + *(v63 + 20) + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
  v68 = (*(v67 + 1) << 27) | (*v67 << 59) | 0x800000;
  v69 = v76;
  sub_1B0E43838();
  sub_1B03CE2E0(v69);
  return (*(v77 + 8))(v69, v78);
}

uint64_t sub_1B0BE1D00(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v4 = *(sub_1B0BE1E48(a1, a2) + 16);
  v5 = sub_1B0E44C68();

  return v5;
}

uint64_t sub_1B0BE1D6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0E44C68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B0BE1DA8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B0E46138();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B0E46308();
  *v1 = result;
  return result;
}

uint64_t sub_1B0BE1E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B0E42FC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1B0391D50(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1B03B7A3C(v11, 0);
      v15 = sub_1B0E42EB8();
      sub_1B0391D50(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1B0BE1FC4(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1B0E42A98();
  if (a1)
  {
    a1 = sub_1B0E42AC8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1B0E42A98() || !__OFSUB__(v5, sub_1B0E42AC8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1B0E42AB8();
LABEL_16:
  result = sub_1B0E44C68();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0BE2170()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v49[-1] - v4);
  v6 = type metadata accessor for ConnectionEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v49[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s6LoggerVMa_0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-1] - v15;
  v17 = static MonotonicTime.now()();
  v18 = sub_1B0BE07D8(v17);
  v19 = *&v18;
  if ((v20 & 1) == 0)
  {
    v31 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E439A8();
    (*(*(v33 - 8) + 8))(v13, v33);
    v34 = sub_1B0E458E8();
    if (!os_log_type_enabled(v32, v34))
    {

      goto LABEL_11;
    }

    v35 = v19;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v49[0] = v37;
    *v36 = 68158466;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = v31 + *(v10 + 20);
    *(v36 + 10) = *v38;

    *(v36 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(*(v38 + 4));
    v41 = sub_1B0399D64(v39, v40, v49);

    *(v36 + 13) = v41;
    *(v36 + 21) = 2048;
    v42 = round(v35);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        *(v36 + 23) = v42;
        _os_log_impl(&dword_1B0389000, v32, v34, "[%.*hhx-%{public}s] Stuck for %ld seconds trying in unauthenticated state. Closing connection.", v36, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x1B272C230](v37, -1, -1);
        MEMORY[0x1B272C230](v36, -1, -1);

LABEL_11:
        v43 = static MonotonicTime.now()();
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 2;
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v44 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
        swift_beginAccess();
        sub_1B038C9A4(v9, v5, type metadata accessor for ConnectionEvent);
        sub_1B0BDD224(v43, v5);
        sub_1B0398EFC(v5, &qword_1EB6E5470, &unk_1B0ED0460);
        sub_1B038D690(v9, type metadata accessor for ConnectionEvent);
        swift_endAccess();
        v45 = swift_allocObject();
        *(v45 + 16) = *(v1 + v44);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *(v45 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
        v46 = MEMORY[0x1E69E7CD0];
        *(v45 + 32) = MEMORY[0x1E69E7CD0];
        *(v45 + 40) = v46;
        sub_1B0BDAD70(v45 | 0x1000000000000000);

        v47 = *(*(v1 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
        sub_1B0E43E28();
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v18)
  {
    v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v23 = sub_1B0E439A8();
    (*(*(v23 - 8) + 8))(v16, v23);
    v24 = sub_1B0E45908();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49[0] = v26;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v27 = v21 + *(v10 + 20);
      *(v25 + 10) = *v27;

      *(v25 + 11) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v27 + 4));
      v30 = sub_1B0399D64(v28, v29, v49);

      *(v25 + 13) = v30;
      _os_log_impl(&dword_1B0389000, v22, v24, "[%.*hhx-%{public}s] Checking stuck: waiting", v25, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1B272C230](v26, -1, -1);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B0BE2764(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B0BD9D58(a1);
}

unint64_t sub_1B0BE28B8()
{
  result = qword_1EB6DB6A0;
  if (!qword_1EB6DB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5448, &qword_1B0ED0360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB6A0);
  }

  return result;
}

unint64_t sub_1B0BE291C()
{
  result = qword_1EB6DCF00;
  if (!qword_1EB6DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF00);
  }

  return result;
}

uint64_t sub_1B0BE29CC()
{
  result = _s6LoggerVMa_0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ConnectionState();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1B0BE2B1C(uint64_t a1, unint64_t a2, char a3)
{
  sub_1B0BDCD94(a1, a2, a3 & 1);

  CommandConnection.flush()();
}

uint64_t sub_1B0BE2B48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B0BE2BA8(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_1B0BEDDD0(a1, v4, v5);
}

unint64_t sub_1B0BE2C30(unint64_t result)
{
  if (result >> 62 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BE2C90(uint64_t a1)
{
  v1 = CommandConnection.send(_:)(a1);
  CommandConnection.flush()();
  return v1;
}

double sub_1B0BE2CCC(uint64_t a1)
{
  *a1 = 3;
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
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BE2D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0BE2D94(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B044CEF8(result);
  }

  return result;
}

unint64_t sub_1B0BE2DA8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0B6DCB0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B0BE2E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BE2ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B0BE2F58(uint64_t a1, uint64_t a2)
{
  v270 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v267 = *(a1 + 32);
  v268 = v2;
  v269 = *(a1 + 64);
  v3 = *(a1 + 16);
  v265 = *a1;
  v266 = v3;
  if (!*(a2 + 16))
  {
    goto LABEL_400;
  }

  v5 = *(a2 + 40);
  sub_1B0E46C28();
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 56);
  if ((v10 & 0x1000000000000000) != 0)
  {
    v11 = *(a1 + 48);
    v257 = *a1;
    v258 = v6;
    v259 = v9;
    v260 = v8;
    v261 = *(a1 + 32);
    v262 = v11;
    v263 = v10 & 0xEFFFFFFFFFFFFFFFLL;
    v264 = *(a1 + 64);
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v12 = sub_1B0E46CB8();
  v13 = a2;
  v14 = a2 + 56;
  v15 = -1 << *(a2 + 32);
  v16 = v12 & ~v15;
  if (((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_400:
    v215 = *MEMORY[0x1E69E9840];
    return;
  }

  v17 = ~v15;
  v244 = ~v15;
  while (1)
  {
    v19 = (*(v13 + 48) + 80 * v16);
    v252 = *v19;
    v21 = v19[3];
    v20 = v19[4];
    v22 = v19[2];
    v253 = v19[1];
    v254 = v22;
    v255 = v21;
    v256 = v20;
    v23 = *(&v252 + 1);
    v24 = *(&v253 + 1);
    v25 = v253;
    v26 = *(&v21 + 1);
    if ((*(&v21 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(a1 + 63) & 0x10) == 0)
      {
        v27 = *(a1 + 16);
        v28 = *(a1 + 24);
        if (v252 == *a1 || (v29 = sub_1B0E46A78(), v17 = v244, v14 = a2 + 56, (v29 & 1) != 0))
        {
          if (v25 == v27 && v24 == v28)
          {
            goto LABEL_400;
          }

LABEL_7:
          v18 = sub_1B0E46A78();
          v17 = v244;
          v14 = a2 + 56;
          if (v18)
          {
            goto LABEL_400;
          }

          goto LABEL_8;
        }
      }

      goto LABEL_8;
    }

    v30 = *(a1 + 56);
    if ((v30 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

    v32 = *a1;
    v31 = *(a1 + 8);
    v33 = *(a1 + 16);
    v34 = *(a1 + 24);
    v35 = *(a1 + 72);
    v36 = (*(&v256 + 1) >> 59) & 6 | ((*(&v255 + 1) & 0x2000000000000000) != 0);
    if (v36 <= 2)
    {
      break;
    }

    if (v36 > 4)
    {
      v40 = (v30 >> 61) & 1;
      v41 = v35 >> 59;
      if (v36 == 5)
      {
        if ((v41 & 6 | v40) != 5)
        {
          goto LABEL_8;
        }
      }

      else if ((v41 & 6 | v40) != 6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v36 != 3)
      {
        if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_8;
        }

        v46 = *(&v252 + 1) >> 62;
        v47 = v31 >> 62;
        v242 = *(a1 + 24);
        if (*(&v252 + 1) >> 62 == 3)
        {
          v48 = 0;
          if (v252 != __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_142;
          }

          if (v31 >> 62 != 3)
          {
            goto LABEL_142;
          }

          v48 = 0;
          if (v32 || v31 != 0xC000000000000000)
          {
            goto LABEL_142;
          }

          goto LABEL_157;
        }

        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v58 = *(v252 + 16);
            v57 = *(v252 + 24);
            v54 = __OFSUB__(v57, v58);
            v48 = v57 - v58;
            if (v54)
            {
              goto LABEL_411;
            }
          }

          else
          {
            v48 = 0;
          }
        }

        else if (v46)
        {
          LODWORD(v48) = DWORD1(v252) - v252;
          if (__OFSUB__(DWORD1(v252), v252))
          {
            goto LABEL_413;
          }

          v48 = v48;
        }

        else
        {
          v48 = BYTE14(v252);
        }

LABEL_142:
        if (v47 > 1)
        {
          if (v47 != 2)
          {
            if (v48)
            {
              goto LABEL_8;
            }

            goto LABEL_157;
          }

          v91 = *(v32 + 16);
          v90 = *(v32 + 24);
          v54 = __OFSUB__(v90, v91);
          v89 = v90 - v91;
          if (v54)
          {
            goto LABEL_407;
          }
        }

        else if (v47)
        {
          LODWORD(v89) = HIDWORD(v32) - v32;
          if (__OFSUB__(HIDWORD(v32), v32))
          {
            goto LABEL_405;
          }

          v89 = v89;
        }

        else
        {
          v89 = BYTE6(v31);
        }

        if (v48 != v89)
        {
          goto LABEL_8;
        }

        if (v48 >= 1)
        {
          v229 = *(a1 + 16);
          if (v46 > 1)
          {
            if (v46 != 2)
            {
              *&v245[6] = 0;
              *v245 = 0;
              v149 = v31;
              v150 = v32;
              sub_1B03B2000(v32, v31);
              sub_1B0BD6700(&v252, &v246);
              sub_1B03B2000(v150, v149);
              sub_1B0AE2440(v245, v150, v149, &v246);
              sub_1B0391D50(v150, v149);
              v94 = v150;
              v95 = v149;
              goto LABEL_248;
            }

            v112 = *(v252 + 16);
            v113 = *(v252 + 24);
          }

          else
          {
            if (!v46)
            {
              *v245 = v252;
              *&v245[8] = WORD4(v252);
              *&v245[10] = *(&v252 + 10);
              v92 = v31;
              v93 = v32;
              sub_1B03B2000(v32, v31);
              sub_1B0BD6700(&v252, &v246);
              sub_1B03B2000(v93, v92);
              sub_1B0AE2440(v245, v93, v92, &v246);
              sub_1B0391D50(v93, v92);
              v94 = v93;
              v95 = v92;
LABEL_248:
              sub_1B0391D50(v94, v95);
              v13 = a2;
              v97 = v229;
              if ((v246 & 1) == 0)
              {
                goto LABEL_394;
              }

LABEL_158:
              v98 = v24 >> 62;
              v99 = v242 >> 62;
              if (v24 >> 62 == 3)
              {
                v100 = 0;
                v101 = v242;
                if (!v25 && v24 == 0xC000000000000000 && v242 >> 62 == 3)
                {
                  v100 = 0;
                  if (!v97 && v242 == 0xC000000000000000)
                  {
                    goto LABEL_402;
                  }
                }
              }

              else if (v98 == 2)
              {
                v135 = *(v25 + 16);
                v134 = *(v25 + 24);
                v54 = __OFSUB__(v134, v135);
                v100 = v134 - v135;
                if (v54)
                {
                  goto LABEL_427;
                }

                v101 = v242;
              }

              else
              {
                v101 = v242;
                if (v98 == 1)
                {
                  LODWORD(v100) = HIDWORD(v25) - v25;
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_426;
                  }

                  v100 = v100;
                }

                else
                {
                  v100 = BYTE6(v24);
                }
              }

              if (v99 > 1)
              {
                if (v99 != 2)
                {
                  goto LABEL_393;
                }

                v138 = *(v97 + 16);
                v137 = *(v97 + 24);
                v54 = __OFSUB__(v137, v138);
                v136 = v137 - v138;
                if (v54)
                {
                  goto LABEL_418;
                }
              }

              else if (v99)
              {
                LODWORD(v136) = HIDWORD(v97) - v97;
                if (__OFSUB__(HIDWORD(v97), v97))
                {
                  goto LABEL_417;
                }

                v136 = v136;
              }

              else
              {
                v136 = BYTE6(v101);
              }

              if (v100 != v136)
              {
                goto LABEL_394;
              }

              if (v100 < 1)
              {
                goto LABEL_402;
              }

              v139 = v101;
              v140 = v97;
              sub_1B03B2000(v97, v101);
              v141 = v25;
              v142 = v24;
              goto LABEL_233;
            }

            v112 = v252;
            v113 = v252 >> 32;
            if (v252 >> 32 < v252)
            {
              goto LABEL_431;
            }
          }

          v146 = *(a1 + 8);
          v147 = *a1;
          sub_1B03B2000(v32, v31);
          sub_1B03B2000(v147, v146);
          sub_1B0BD6700(&v252, &v246);
          sub_1B03B2000(v147, v146);
          v148 = sub_1B0AB87A0(v112, v113, v23 & 0x3FFFFFFFFFFFFFFFLL, v147, v146);
          sub_1B0391D50(v147, v146);
          sub_1B0391D50(v147, v146);
          sub_1B0391D50(v147, v146);
          v13 = a2;
          v97 = v229;
          if ((v148 & 1) == 0)
          {
            goto LABEL_394;
          }

          goto LABEL_158;
        }

LABEL_157:
        v249 = v255;
        v251 = v256;
        v247 = v253;
        v248 = v254;
        v246 = v252;
        v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v96 = v33;
        sub_1B0BD1224(&v246, v245);
        v97 = v96;
        goto LABEL_158;
      }

      if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_8;
      }
    }

    if (v252 == __PAIR128__(v31, v32) || (v49 = *(a1 + 16), v50 = *a1, v51 = sub_1B0E46A78(), v33 = v49, v17 = v244, v14 = a2 + 56, (v51 & 1) != 0))
    {
      if (v25 == v33 && v24 == v34)
      {
        goto LABEL_400;
      }

      goto LABEL_7;
    }

LABEL_8:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_400;
    }
  }

  if (!v36)
  {
    if ((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0))
    {
      goto LABEL_8;
    }

    v42 = *(&v252 + 1) >> 62;
    v241 = *(a1 + 24);
    if (*(&v252 + 1) >> 62 == 3)
    {
      v43 = 0;
      if (v252 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
      {
        v43 = 0;
        if (!v32 && v31 == 0xC000000000000000)
        {
          goto LABEL_195;
        }
      }
    }

    else if (v42 > 1)
    {
      if (v42 == 2)
      {
        v60 = *(v252 + 16);
        v59 = *(v252 + 24);
        v54 = __OFSUB__(v59, v60);
        v43 = v59 - v60;
        if (v54)
        {
          goto LABEL_422;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v42)
    {
      LODWORD(v43) = DWORD1(v252) - v252;
      if (__OFSUB__(DWORD1(v252), v252))
      {
        goto LABEL_421;
      }

      v43 = v43;
    }

    else
    {
      v43 = BYTE14(v252);
    }

    v114 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v114 != 2)
      {
        if (v43)
        {
          goto LABEL_8;
        }

        goto LABEL_195;
      }

      v117 = *(v32 + 16);
      v116 = *(v32 + 24);
      v54 = __OFSUB__(v116, v117);
      v115 = v116 - v117;
      if (v54)
      {
        goto LABEL_409;
      }
    }

    else if (v114)
    {
      LODWORD(v115) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_410;
      }

      v115 = v115;
    }

    else
    {
      v115 = BYTE6(v31);
    }

    if (v43 != v115)
    {
      goto LABEL_8;
    }

    if (v43 >= 1)
    {
      v230 = *(a1 + 16);
      if (v42 <= 1)
      {
        if (!v42)
        {
          *v245 = v252;
          *&v245[8] = WORD4(v252);
          *&v245[10] = *(&v252 + 10);
          v118 = v31;
          v119 = v32;
          sub_1B0BD6700(&v252, &v246);
          sub_1B03B2000(v119, v118);
          sub_1B0AE2440(v245, v119, v118, &v246);
          v120 = v119;
          v121 = v118;
          goto LABEL_278;
        }

        v235 = *a1;
        v238 = *(a1 + 8);
        v161 = v252;
        if (v252 >> 32 < v252)
        {
          goto LABEL_436;
        }

        sub_1B0BD6700(&v252, &v246);
        sub_1B03B2000(v235, v238);
        v162 = sub_1B0E42A98();
        if (v162)
        {
          v163 = sub_1B0E42AC8();
          if (__OFSUB__(v161, v163))
          {
            goto LABEL_440;
          }

          v162 += v161 - v163;
        }

        sub_1B0E42AB8();
        v164 = v162;
        v166 = v235;
        v165 = v238;
LABEL_277:
        sub_1B0AE2440(v164, v166, v165, &v246);
        v120 = v166;
        v121 = v165;
LABEL_278:
        sub_1B0391D50(v120, v121);
        v13 = a2;
        v123 = v230;
        if ((v246 & 1) == 0)
        {
          goto LABEL_394;
        }

        goto LABEL_196;
      }

      if (v42 != 2)
      {
        *&v245[6] = 0;
        *v245 = 0;
        v165 = v31;
        v166 = v32;
        sub_1B0BD6700(&v252, &v246);
        sub_1B03B2000(v166, v165);
        v164 = v245;
        goto LABEL_277;
      }

      v130 = *(v252 + 16);
      v131 = *(v252 + 24);
      v132 = *(a1 + 8);
      v133 = *a1;
      sub_1B03B2000(v32, v31);
      sub_1B0BD6700(&v252, &v246);
      sub_1B03B2000(v133, v132);
      LOBYTE(v130) = sub_1B0AB87A0(v130, v131, v23 & 0x3FFFFFFFFFFFFFFFLL, v133, v132);
      sub_1B0391D50(v133, v132);
      sub_1B0391D50(v133, v132);
      v13 = a2;
      v123 = v230;
      if ((v130 & 1) == 0)
      {
        goto LABEL_394;
      }

LABEL_196:
      v124 = v24 >> 62;
      if (v24 >> 62 == 3)
      {
        v125 = 0;
        if (!v25 && v24 == 0xC000000000000000 && v241 >> 62 == 3)
        {
          v125 = 0;
          if (!v123 && v241 == 0xC000000000000000)
          {
LABEL_402:
            sub_1B0BD2F90(&v252);
            goto LABEL_400;
          }
        }
      }

      else if (v124 > 1)
      {
        if (v124 == 2)
        {
          v129 = *(v25 + 16);
          v128 = *(v25 + 24);
          v54 = __OFSUB__(v128, v129);
          v125 = v128 - v129;
          if (v54)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v125 = 0;
        }
      }

      else if (v124)
      {
        LODWORD(v125) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_435;
        }

        v125 = v125;
      }

      else
      {
        v125 = BYTE6(v24);
      }

      v151 = v241 >> 62;
      if ((v241 >> 62) > 1)
      {
        if (v151 != 2)
        {
          if (!v125)
          {
            goto LABEL_402;
          }

LABEL_394:
          sub_1B0BD2F90(&v252);
          v17 = v244;
          v14 = a2 + 56;
          goto LABEL_8;
        }

        v154 = *(v123 + 16);
        v153 = *(v123 + 24);
        v54 = __OFSUB__(v153, v154);
        v152 = v153 - v154;
        if (v54)
        {
          goto LABEL_425;
        }
      }

      else if (v151)
      {
        LODWORD(v152) = HIDWORD(v123) - v123;
        if (__OFSUB__(HIDWORD(v123), v123))
        {
          goto LABEL_424;
        }

        v152 = v152;
      }

      else
      {
        v152 = BYTE6(v241);
      }

      if (v125 != v152)
      {
        goto LABEL_394;
      }

      if (v125 < 1)
      {
        goto LABEL_402;
      }

      if (v124 > 1)
      {
        if (v124 == 2)
        {
          v159 = *(v25 + 16);
          v160 = *(v25 + 24);
          goto LABEL_281;
        }

        *(&v246 + 6) = 0;
        *&v246 = 0;
        v156 = v241;
        v155 = v123;
        sub_1B03B2000(v123, v241);
        sub_1B03B2000(v155, v241);
        v157 = v155;
        v158 = v241;
      }

      else
      {
        if (v124)
        {
          v159 = v25;
          v160 = v25 >> 32;
          if (v25 >> 32 < v25)
          {
            goto LABEL_439;
          }

LABEL_281:
          v167 = v123;
          sub_1B03B2000(v123, v241);
          sub_1B03B2000(v167, v241);
          sub_1B03B2000(v167, v241);
          v126 = sub_1B0AB87A0(v159, v160, v24 & 0x3FFFFFFFFFFFFFFFLL, v167, v241);
          sub_1B0391D50(v167, v241);
          sub_1B0BD2F90(&v252);
          sub_1B0391D50(v167, v241);
          sub_1B0391D50(v167, v241);
LABEL_282:
          v13 = a2;
LABEL_283:
          v17 = v244;
          v14 = a2 + 56;
          if (v126)
          {
            goto LABEL_400;
          }

          goto LABEL_8;
        }

        *&v246 = v25;
        WORD4(v246) = v24;
        BYTE10(v246) = BYTE2(v24);
        BYTE11(v246) = BYTE3(v24);
        BYTE12(v246) = BYTE4(v24);
        BYTE13(v246) = BYTE5(v24);
        v155 = v123;
        sub_1B03B2000(v123, v241);
        sub_1B03B2000(v155, v241);
        v156 = v241;
        v157 = v155;
        v158 = v241;
      }

      sub_1B0AE2440(&v246, v157, v158, v245);
      sub_1B0BD2F90(&v252);
      sub_1B0391D50(v155, v156);
      sub_1B0391D50(v155, v156);
      v127 = v245[0];
LABEL_287:
      v13 = a2;
      v17 = v244;
      v14 = a2 + 56;
      if (v127)
      {
        goto LABEL_400;
      }

      goto LABEL_8;
    }

LABEL_195:
    v249 = v255;
    v251 = v256;
    v247 = v253;
    v248 = v254;
    v246 = v252;
    v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v122 = v33;
    sub_1B0BD1224(&v246, v245);
    v123 = v122;
    goto LABEL_196;
  }

  if (v36 != 1)
  {
    if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 2)
    {
      goto LABEL_8;
    }

    v44 = *(&v252 + 1) >> 62;
    if (*(&v252 + 1) >> 62 == 3)
    {
      v45 = 0;
      if (v252 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
      {
        v45 = 0;
        if (!v32 && v31 == 0xC000000000000000)
        {
          goto LABEL_400;
        }
      }
    }

    else if (v44 > 1)
    {
      if (v44 == 2)
      {
        v56 = *(v252 + 16);
        v55 = *(v252 + 24);
        v54 = __OFSUB__(v55, v56);
        v45 = v55 - v56;
        if (v54)
        {
          goto LABEL_412;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v44)
    {
      LODWORD(v45) = DWORD1(v252) - v252;
      if (__OFSUB__(DWORD1(v252), v252))
      {
        goto LABEL_414;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE14(v252);
    }

    v77 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v77 != 2)
      {
        if (!v45)
        {
          goto LABEL_400;
        }

        goto LABEL_8;
      }

      v80 = *(v32 + 16);
      v79 = *(v32 + 24);
      v54 = __OFSUB__(v79, v80);
      v78 = v79 - v80;
      if (v54)
      {
        goto LABEL_404;
      }
    }

    else if (v77)
    {
      LODWORD(v78) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
      }

      v78 = v78;
    }

    else
    {
      v78 = BYTE6(v31);
    }

    if (v45 != v78)
    {
      goto LABEL_8;
    }

    if (v45 < 1)
    {
      goto LABEL_400;
    }

    if (v44 > 1)
    {
      v85 = *a1;
      v86 = *(a1 + 8);
      if (v44 == 2)
      {
        v87 = *(v252 + 16);
        v88 = *(v252 + 24);
LABEL_208:
        sub_1B0BD6700(a1, &v246);
        sub_1B0BD6700(a1, &v246);
        sub_1B0BD6700(&v252, &v246);
        sub_1B0BD6700(a1, &v246);
        v126 = sub_1B0AB87A0(v87, v88, v23 & 0x3FFFFFFFFFFFFFFFLL, v85, v86);
        sub_1B0BD2F90(a1);
        sub_1B0BD2F90(&v252);
        sub_1B0BD2F90(a1);
        sub_1B0BD2F90(a1);
        goto LABEL_282;
      }

      *&v245[6] = 0;
      *v245 = 0;
      sub_1B0BD6700(a1, &v246);
      sub_1B0BD6700(&v252, &v246);
      sub_1B0BD6700(a1, &v246);
      v83 = v85;
      v84 = v86;
    }

    else
    {
      if (v44)
      {
        v87 = v252;
        v88 = v252 >> 32;
        if (v252 >> 32 < v252)
        {
          goto LABEL_423;
        }

        v85 = *a1;
        v86 = *(a1 + 8);
        goto LABEL_208;
      }

      *v245 = v252;
      *&v245[8] = DWORD2(v252);
      *&v245[12] = WORD6(v252);
      v81 = v31;
      v82 = v32;
      sub_1B0BD6700(a1, &v246);
      sub_1B0BD6700(&v252, &v246);
      sub_1B0BD6700(a1, &v246);
      v83 = v82;
      v84 = v81;
    }

    sub_1B0AE2440(v245, v83, v84, &v246);
    sub_1B0BD2F90(&v252);
    sub_1B0BD2F90(a1);
    sub_1B0BD2F90(a1);
    v127 = v246;
    goto LABEL_287;
  }

  if (((v35 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 1)
  {
    goto LABEL_8;
  }

  v233 = *(&v254 + 1);
  v234 = v254;
  v226 = v256;
  v227 = v255;
  v231 = *(a1 + 32);
  v232 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(&v252 + 1) >> 62;
  v225 = *(a1 + 64);
  v240 = *(a1 + 24);
  if (*(&v252 + 1) >> 62 == 3)
  {
    v39 = 0;
    if (v252 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_94;
    }

    if (v31 >> 62 != 3)
    {
      goto LABEL_94;
    }

    v39 = 0;
    if (v32 || v31 != 0xC000000000000000)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v53 = *(v252 + 16);
      v52 = *(v252 + 24);
      v54 = __OFSUB__(v52, v53);
      v39 = v52 - v53;
      if (v54)
      {
        goto LABEL_415;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v38)
  {
    LODWORD(v39) = DWORD1(v252) - v252;
    if (__OFSUB__(DWORD1(v252), v252))
    {
      goto LABEL_416;
    }

    v39 = v39;
  }

  else
  {
    v39 = BYTE14(v252);
  }

LABEL_94:
  v61 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v61 != 2)
    {
      if (v39)
      {
        goto LABEL_8;
      }

      goto LABEL_109;
    }

    v64 = *(v32 + 16);
    v63 = *(v32 + 24);
    v54 = __OFSUB__(v63, v64);
    v62 = v63 - v64;
    if (v54)
    {
      goto LABEL_408;
    }
  }

  else if (v61)
  {
    LODWORD(v62) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_406;
    }

    v62 = v62;
  }

  else
  {
    v62 = BYTE6(v31);
  }

  if (v39 != v62)
  {
    goto LABEL_8;
  }

  if (v39 < 1)
  {
LABEL_109:
    v221 = *(a1 + 48);
    v249 = v255;
    v251 = v256;
    v247 = v253;
    v248 = v254;
    v246 = v252;
    v250 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v69 = v33;
    v70 = v35;
    v237 = *(&v256 + 1);
    sub_1B0BD1224(&v246, v245);
    v71 = v237;
    v72 = v70;
    v73 = v69;
    goto LABEL_110;
  }

  v228 = *(a1 + 16);
  v221 = *(a1 + 48);
  v222 = *(a1 + 72);
  v236 = *(&v256 + 1);
  if (v38 > 1)
  {
    if (v38 != 2)
    {
      *&v245[6] = 0;
      *v245 = 0;
      v144 = v31;
      v145 = v32;
      sub_1B03B2000(v32, v31);
      sub_1B0BD6700(&v252, &v246);
      sub_1B03B2000(v145, v144);
      sub_1B0AE2440(v245, v145, v144, &v246);
      sub_1B0391D50(v145, v144);
      v67 = v145;
      v68 = v144;
      goto LABEL_242;
    }

    v216 = *(v252 + 24);
    v218 = *(v252 + 16);
    v104 = *(a1 + 8);
    v105 = *a1;
    sub_1B03B2000(v32, v31);
    sub_1B03B2000(v105, v104);
    sub_1B0BD6700(&v252, &v246);
    sub_1B03B2000(v105, v104);
    v106 = v23 & 0x3FFFFFFFFFFFFFFFLL;
    v108 = v216;
    v107 = v218;
    v109 = v105;
    v110 = v104;
    v111 = v104;
    goto LABEL_239;
  }

  if (v38)
  {
    v217 = v252;
    v219 = v252 >> 32;
    if (v252 >> 32 < v252)
    {
      goto LABEL_430;
    }

    v143 = *(a1 + 8);
    v105 = *a1;
    sub_1B03B2000(v32, v31);
    sub_1B03B2000(v105, v143);
    sub_1B0BD6700(&v252, &v246);
    sub_1B03B2000(v105, v143);
    v106 = v23 & 0x3FFFFFFFFFFFFFFFLL;
    v107 = v217;
    v108 = v219;
    v109 = v105;
    v111 = v143;
    v110 = v143;
LABEL_239:
    v220 = sub_1B0AB87A0(v107, v108, v106, v109, v110);
    sub_1B0391D50(v105, v111);
    sub_1B0391D50(v105, v111);
    sub_1B0391D50(v105, v111);
    v13 = a2;
    v73 = v228;
    v72 = v222;
    v71 = v236;
    if ((v220 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_110;
  }

  *v245 = v252;
  *&v245[8] = WORD4(v252);
  *&v245[10] = *(&v252 + 10);
  v65 = v31;
  v66 = v32;
  sub_1B03B2000(v32, v31);
  sub_1B0BD6700(&v252, &v246);
  sub_1B03B2000(v66, v65);
  sub_1B0AE2440(v245, v66, v65, &v246);
  sub_1B0391D50(v66, v65);
  v67 = v66;
  v68 = v65;
LABEL_242:
  sub_1B0391D50(v67, v68);
  v13 = a2;
  v73 = v228;
  v72 = v222;
  v71 = v236;
  if ((v246 & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_110:
  v74 = v24 >> 62;
  if (v24 >> 62 != 3)
  {
    if (v74 > 1)
    {
      v76 = v240;
      if (v74 == 2)
      {
        v103 = *(v25 + 16);
        v102 = *(v25 + 24);
        v54 = __OFSUB__(v102, v103);
        v75 = v102 - v103;
        if (v54)
        {
          goto LABEL_428;
        }
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v76 = v240;
      if (v74)
      {
        LODWORD(v75) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_429;
        }

        v75 = v75;
      }

      else
      {
        v75 = BYTE6(v24);
      }
    }

    goto LABEL_290;
  }

  v75 = 0;
  if (v25)
  {
    v76 = v240;
    goto LABEL_290;
  }

  v76 = v240;
  if (v24 == 0xC000000000000000 && v240 >> 62 == 3)
  {
    v75 = 0;
    if (!v73 && v240 == 0xC000000000000000)
    {
      goto LABEL_313;
    }
  }

LABEL_290:
  v168 = v76 >> 62;
  if ((v76 >> 62) > 1)
  {
    if (v168 == 2)
    {
      v171 = *(v73 + 16);
      v170 = *(v73 + 24);
      v54 = __OFSUB__(v170, v171);
      v169 = v170 - v171;
      if (v54)
      {
        goto LABEL_420;
      }

      goto LABEL_299;
    }

    if (v75)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  if (v168)
  {
    LODWORD(v169) = HIDWORD(v73) - v73;
    if (__OFSUB__(HIDWORD(v73), v73))
    {
      goto LABEL_419;
    }

    v169 = v169;
  }

  else
  {
    v169 = BYTE6(v76);
  }

LABEL_299:
  if (v75 != v169)
  {
    goto LABEL_394;
  }

  if (v75 < 1)
  {
    goto LABEL_313;
  }

  v223 = v72;
  v239 = v71;
  if (v74 > 1)
  {
    if (v74 != 2)
    {
      *(&v246 + 6) = 0;
      *&v246 = 0;
      v180 = v73;
      sub_1B03B2000(v73, v76);
      sub_1B03B2000(v180, v76);
      sub_1B0AE2440(&v246, v180, v76, v245);
      sub_1B0391D50(v180, v76);
      v174 = v180;
      v175 = v76;
      goto LABEL_312;
    }

    v172 = v76;
    v176 = *(v25 + 16);
    v177 = *(v25 + 24);
    goto LABEL_309;
  }

  v172 = v76;
  if (v74)
  {
    v176 = v25;
    v177 = v25 >> 32;
    if (v25 >> 32 < v25)
    {
      goto LABEL_441;
    }

LABEL_309:
    v178 = v73;
    sub_1B03B2000(v73, v172);
    sub_1B03B2000(v178, v172);
    sub_1B03B2000(v178, v172);
    v179 = sub_1B0AB87A0(v176, v177, v24 & 0x3FFFFFFFFFFFFFFFLL, v178, v172);
    sub_1B0391D50(v178, v172);
    sub_1B0391D50(v178, v172);
    sub_1B0391D50(v178, v172);
    v13 = a2;
    v72 = v223;
    v71 = v239;
    if ((v179 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  *&v246 = v25;
  WORD4(v246) = v24;
  BYTE10(v246) = BYTE2(v24);
  BYTE11(v246) = BYTE3(v24);
  BYTE12(v246) = BYTE4(v24);
  BYTE13(v246) = BYTE5(v24);
  v173 = v73;
  sub_1B03B2000(v73, v76);
  sub_1B03B2000(v173, v76);
  sub_1B0AE2440(&v246, v173, v76, v245);
  sub_1B0391D50(v173, v76);
  v174 = v173;
  v175 = v76;
LABEL_312:
  sub_1B0391D50(v174, v175);
  v13 = a2;
  v72 = v223;
  v71 = v239;
  if ((v245[0] & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_313:
  v181 = v233 >> 62;
  v182 = v232 >> 62;
  if (v233 >> 62 == 3)
  {
    v183 = 0;
    v184 = v234;
    if (v234)
    {
      goto LABEL_328;
    }

    if (v233 != 0xC000000000000000)
    {
      goto LABEL_328;
    }

    if (v232 >> 62 != 3)
    {
      goto LABEL_328;
    }

    v183 = 0;
    if (v231 || v232 != 0xC000000000000000)
    {
      goto LABEL_328;
    }
  }

  else
  {
    v184 = v234;
    if (v181 == 2)
    {
      v186 = *(v234 + 16);
      v185 = *(v234 + 24);
      v54 = __OFSUB__(v185, v186);
      v183 = v185 - v186;
      if (v54)
      {
        goto LABEL_438;
      }
    }

    else if (v181 == 1)
    {
      LODWORD(v183) = HIDWORD(v234) - v234;
      if (__OFSUB__(HIDWORD(v234), v234))
      {
        goto LABEL_437;
      }

      v183 = v183;
    }

    else
    {
      v183 = BYTE6(v233);
    }

LABEL_328:
    if (v182 > 1)
    {
      if (v182 != 2)
      {
        if (v183)
        {
          goto LABEL_394;
        }

        goto LABEL_342;
      }

      v189 = *(v231 + 16);
      v188 = *(v231 + 24);
      v54 = __OFSUB__(v188, v189);
      v187 = v188 - v189;
      if (v54)
      {
        goto LABEL_432;
      }
    }

    else if (v182)
    {
      LODWORD(v187) = HIDWORD(v231) - v231;
      if (__OFSUB__(HIDWORD(v231), v231))
      {
        goto LABEL_433;
      }

      v187 = v187;
    }

    else
    {
      v187 = BYTE6(v232);
    }

    if (v183 != v187)
    {
      goto LABEL_394;
    }

    if (v183 >= 1)
    {
      v224 = v72;
      v190 = v71;
      sub_1B03B2000(v231, v232);
      v191 = sub_1B0AB8610(v184, v233, v231, v232);
      v71 = v190;
      v72 = v224;
      v13 = a2;
      if ((v191 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_342:
  v192 = v26 & 0xCFFFFFFFFFFFFFFFLL;
  v193 = v30 & 0xCFFFFFFFFFFFFFFFLL;
  v194 = v26 >> 62;
  v195 = v30 >> 62;
  if (v26 >> 62 == 3)
  {
    v196 = 0;
    v197 = v227;
    if (v227)
    {
      goto LABEL_357;
    }

    if (v192 != 0xC000000000000000)
    {
      goto LABEL_357;
    }

    if (v30 >> 62 != 3)
    {
      goto LABEL_357;
    }

    v196 = 0;
    if (v221 || v193 != 0xC000000000000000)
    {
      goto LABEL_357;
    }
  }

  else
  {
    v197 = v227;
    if (v194 == 2)
    {
      v199 = *(v227 + 16);
      v198 = *(v227 + 24);
      v54 = __OFSUB__(v198, v199);
      v196 = v198 - v199;
      if (v54)
      {
        goto LABEL_445;
      }
    }

    else if (v194 == 1)
    {
      LODWORD(v196) = HIDWORD(v227) - v227;
      if (__OFSUB__(HIDWORD(v227), v227))
      {
        goto LABEL_444;
      }

      v196 = v196;
    }

    else
    {
      v196 = BYTE6(v26);
    }

LABEL_357:
    if (v195 > 1)
    {
      if (v195 != 2)
      {
        if (v196)
        {
          goto LABEL_394;
        }

        goto LABEL_371;
      }

      v202 = *(v221 + 16);
      v201 = *(v221 + 24);
      v54 = __OFSUB__(v201, v202);
      v200 = v201 - v202;
      if (v54)
      {
        goto LABEL_442;
      }
    }

    else if (v195)
    {
      LODWORD(v200) = HIDWORD(v221) - v221;
      if (__OFSUB__(HIDWORD(v221), v221))
      {
        goto LABEL_443;
      }

      v200 = v200;
    }

    else
    {
      v200 = BYTE6(v30);
    }

    if (v196 != v200)
    {
      goto LABEL_394;
    }

    if (v196 >= 1)
    {
      v203 = v30 & 0xCFFFFFFFFFFFFFFFLL;
      v204 = v72;
      v205 = v71;
      sub_1B03B2000(v221, v203);
      v206 = sub_1B0AB8610(v197, v192, v221, v193);
      v71 = v205;
      v72 = v204;
      v13 = a2;
      if ((v206 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_371:
  v207 = v71 & 0xCFFFFFFFFFFFFFFFLL;
  v139 = v72 & 0xCFFFFFFFFFFFFFFFLL;
  v208 = v71 >> 62;
  v209 = v72 >> 62;
  if (v71 >> 62 == 3)
  {
    v100 = 0;
    if (!v226 && v207 == 0xC000000000000000 && v72 >> 62 == 3)
    {
      v100 = 0;
      if (!v225 && v139 == 0xC000000000000000)
      {
        goto LABEL_402;
      }
    }
  }

  else if (v208 == 2)
  {
    v211 = *(v226 + 16);
    v210 = *(v226 + 24);
    v54 = __OFSUB__(v210, v211);
    v100 = v210 - v211;
    if (v54)
    {
      goto LABEL_448;
    }
  }

  else if (v208 == 1)
  {
    LODWORD(v100) = HIDWORD(v226) - v226;
    if (__OFSUB__(HIDWORD(v226), v226))
    {
      goto LABEL_447;
    }

    v100 = v100;
  }

  else
  {
    v100 = BYTE6(v71);
  }

  if (v209 <= 1)
  {
    if (v209)
    {
      LODWORD(v212) = HIDWORD(v225) - v225;
      if (__OFSUB__(HIDWORD(v225), v225))
      {
        goto LABEL_446;
      }

      v212 = v212;
    }

    else
    {
      v212 = BYTE6(v72);
    }

    goto LABEL_397;
  }

  if (v209 != 2)
  {
LABEL_393:
    if (!v100)
    {
      goto LABEL_402;
    }

    goto LABEL_394;
  }

  v214 = *(v225 + 16);
  v213 = *(v225 + 24);
  v54 = __OFSUB__(v213, v214);
  v212 = v213 - v214;
  if (!v54)
  {
LABEL_397:
    if (v100 != v212)
    {
      goto LABEL_394;
    }

    if (v100 < 1)
    {
      goto LABEL_402;
    }

    v140 = v225;
    sub_1B03B2000(v225, v72 & 0xCFFFFFFFFFFFFFFFLL);
    v141 = v226;
    v142 = v207;
LABEL_233:
    v126 = sub_1B0AB8610(v141, v142, v140, v139);
    v13 = a2;
    sub_1B0BD2F90(&v252);
    goto LABEL_283;
  }

  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
  sub_1B0BD2F90(a1);
  sub_1B0BD2F90(a1);
  v249 = v268;
  v251 = v269;
  v247 = v266;
  v248 = v267;
  v246 = v265;
  v250 = *(&v268 + 1) & 0xEFFFFFFFFFFFFFFFLL;
  sub_1B0BE8F74(&v246);

  __break(1u);
}

uint64_t CommandCounter.withNext<A>(_:)(uint64_t (*a1)(void))
{
  v3 = *v1;
  *v1 = (*v1 + 1) & 0xFFFFFF;
  result = a1();
  if (v2)
  {
    *v1 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0BE4C1C(char a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0C1AA74(v4, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v33 = v9;
    sub_1B0BE7CF8(&v33);

    v11 = v33;
    v12 = *(v33 + 2);
    if (v12)
    {
      v33 = v8;
      sub_1B0BFE5B4(0, v12, 0);
      v13 = v33;
      v14 = *(v33 + 2);
      v15 = 8 * v14;
      v16 = 32;
      do
      {
        v17 = *&v11[v16];
        v33 = v13;
        v18 = *(v13 + 3);
        v19 = v14 + 1;
        if (v14 >= v18 >> 1)
        {
          sub_1B0BFE5B4((v18 > 1), v14 + 1, 1);
          v13 = v33;
        }

        *(v13 + 2) = v19;
        v20 = &v13[v15];
        v20[32] = a1;
        *(v20 + 9) = v17;
        v15 += 8;
        v16 += 4;
        v14 = v19;
        --v12;
      }

      while (v12);

      v21 = *(v13 + 2);
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
      v21 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v21)
      {
LABEL_11:
        v33 = v8;
        sub_1B041D32C(0, v21, 0);
        v22 = v33;
        v23 = (v13 + 36);
        do
        {
          v24 = Tag.debugDescription.getter(*(v23 - 4) | (*v23 << 32));
          v33 = v22;
          v27 = *(v22 + 2);
          v26 = *(v22 + 3);
          if (v27 >= v26 >> 1)
          {
            v29 = v24;
            v30 = v25;
            sub_1B041D32C((v26 > 1), v27 + 1, 1);
            v25 = v30;
            v24 = v29;
            v22 = v33;
          }

          v23 += 2;
          *(v22 + 2) = v27 + 1;
          v28 = &v22[16 * v27];
          *(v28 + 4) = v24;
          *(v28 + 5) = v25;
          --v21;
        }

        while (v21);

        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v33 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    v31 = sub_1B0E448E8();

    return v31;
  }

  v9 = sub_1B0C0CA64(*(v5 + 16), 0);
  v10 = sub_1B0B8C130(&v33, v9 + 8, v7, v6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D91F8();
  if (v10 == v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t CommandID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BE4FF4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BE5050()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t sub_1B0BE508C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

BOOL sub_1B0BE5140(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_1B0BE5170(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_1B0BE51A0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_1B0BE51D0(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

uint64_t ConnectionCommandIDSet.commands.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ConnectionCommandIDSet.idleOrNoop.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (sub_1B03B6298(a2, a5))
  {
    v8 = sub_1B03B6298(a3, a6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B0BE5360(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 32 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = *(v2 + 40);
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v34 = v16;
    sub_1B0E46C68();
    if (v17 != 1)
    {
      MEMORY[0x1B2728DB0](v16 >> 14);
    }

    v19 = sub_1B0E46CB8();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_32:

      return 0;
    }

    v22 = ~v20;
    v23 = *(a2 + 48);
    while (1)
    {
      v25 = v23 + 32 * v21;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *v25 == v15 && *(v25 + 8) == v14;
      if (!v28 && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_21;
      }

      if ((v27 & 1) == 0)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_29;
      }

LABEL_21:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (((v26 ^ v34) & 0xFFFFFFFFFFFFC000) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = v17;
    }

    if (v24)
    {
      goto LABEL_21;
    }

LABEL_29:

    v4 = v30;
    result = v31;
    v7 = v32;
    v2 = a2;
    v8 = v29;
  }

  while (v32);
LABEL_8:
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
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BE5598(uint64_t result, uint64_t a2)
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
  v28 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v29 = v7;
  v30 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a2 + 40);
    sub_1B0E46C28();
    if (v13)
    {
      MEMORY[0x1B2728D70](0);
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    v16 = sub_1B0E46CB8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if (!v20[1])
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      v21 = *v20;
      v22 = sub_1B0E44BB8();
      v24 = v23;
      if (v22 == sub_1B0E44BB8() && v24 == v25)
      {
        break;
      }

      v27 = sub_1B0E46A78();

      if (v27)
      {
        goto LABEL_29;
      }

LABEL_19:
      v18 = (v18 + 1) & v19;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_29:

LABEL_30:
    v7 = v29;
    result = v30;
    v6 = v31;
  }

  while (v31);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v28 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0BE5804(uint64_t a1, uint64_t a2)
{
  v251 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v4 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;
      v226 = a2 + 56;
      v222 = a1 + 56;
      v223 = a1;
      v221 = v8;
      if (v7)
      {
LABEL_7:
        v9 = __clz(__rbit64(v7));
        v224 = (v7 - 1) & v7;
        goto LABEL_13;
      }

LABEL_8:
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
LABEL_416:
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
        }

        if (v3 >= v8)
        {
          goto LABEL_407;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v224 = (v11 - 1) & v11;
LABEL_13:
      v12 = (*(a1 + 48) + 80 * (v9 | (v3 << 6)));
      v240 = *v12;
      v13 = v12[4];
      v15 = v12[1];
      v14 = v12[2];
      v243 = v12[3];
      v244 = v13;
      v241 = v15;
      v242 = v14;
      v16 = *(v2 + 40);
      sub_1B0E46C28();
      if ((*(&v243 + 1) & 0x1000000000000000) != 0)
      {
        v245 = v240;
        v246 = v241;
        v247 = v242;
        v248 = v243;
        v249 = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v250 = v244;
        MEMORY[0x1B2728D70](1);
        v237 = v242;
        *&v238 = v243;
        v239 = v244;
        v235 = v240;
        v236 = v241;
        *(&v238 + 1) = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        sub_1B0BD1224(&v235, &v229);
        sub_1B0C0EF30();
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      v17 = sub_1B0E46CB8();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v226;
      if ((*(v226 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v21 = ~v18;
        v225 = ~v18;
        do
        {
          v22 = (*(v2 + 48) + 80 * v19);
          v235 = *v22;
          v24 = v22[3];
          v23 = v22[4];
          v25 = v22[2];
          v236 = v22[1];
          v237 = v25;
          v238 = v24;
          v239 = v23;
          v26 = *(&v236 + 1);
          v27 = v236;
          v28 = *(&v24 + 1);
          if ((*(&v24 + 1) & 0x1000000000000000) != 0)
          {
            v30 = *(&v243 + 1);
            if ((*(&v243 + 1) & 0x1000000000000000) == 0)
            {
              goto LABEL_19;
            }

            v31 = *(&v239 + 1);
            v33 = *(&v241 + 1);
            v32 = v241;
            v34 = *(&v244 + 1);
            v35 = (*(&v239 + 1) >> 59) & 6 | ((*(&v238 + 1) & 0x2000000000000000) != 0);
            if (v35 <= 2)
            {
              if (v35)
              {
                if (v35 == 1)
                {
                  if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 1)
                  {
                    v214 = *(&v237 + 1);
                    v215 = v237;
                    v208 = v239;
                    v209 = v238;
                    v213 = v242;
                    v36 = *(&v235 + 1) >> 62;
                    if (*(&v235 + 1) >> 62 == 3)
                    {
                      v37 = 0;
                      if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                      {
                        v37 = 0;
                        if (v240 == __PAIR128__(0xC000000000000000, 0))
                        {
                          goto LABEL_119;
                        }
                      }
                    }

                    else if (v36 > 1)
                    {
                      if (v36 == 2)
                      {
                        v50 = *(v235 + 16);
                        v49 = *(v235 + 24);
                        v51 = __OFSUB__(v49, v50);
                        v37 = v49 - v50;
                        if (v51)
                        {
                          goto LABEL_421;
                        }
                      }

                      else
                      {
                        v37 = 0;
                      }
                    }

                    else if (v36)
                    {
                      LODWORD(v37) = DWORD1(v235) - v235;
                      if (__OFSUB__(DWORD1(v235), v235))
                      {
                        goto LABEL_418;
                      }

                      v37 = v37;
                    }

                    else
                    {
                      v37 = BYTE14(v235);
                    }

                    v58 = *(&v240 + 1) >> 62;
                    if ((*(&v240 + 1) >> 62) > 1)
                    {
                      if (v58 == 2)
                      {
                        v60 = *(v240 + 16);
                        v59 = *(v240 + 24);
                        v51 = __OFSUB__(v59, v60);
                        v61 = v59 - v60;
                        if (v51)
                        {
                          goto LABEL_412;
                        }

                        if (v37 == v61)
                        {
                          goto LABEL_114;
                        }
                      }

                      else if (!v37)
                      {
                        goto LABEL_119;
                      }
                    }

                    else if (v58)
                    {
                      if (__OFSUB__(DWORD1(v240), v240))
                      {
                        goto LABEL_411;
                      }

                      if (v37 == DWORD1(v240) - v240)
                      {
LABEL_114:
                        if (v37 < 1)
                        {
LABEL_119:
                          v204 = v244;
                          v205 = v243;
                          v232 = v238;
                          v234 = v239;
                          v230 = v236;
                          v231 = v237;
                          v229 = v235;
                          v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                          v217 = *(&v241 + 1);
                          v63 = v241;
                          sub_1B0BD1224(&v229, v228);
                          v64 = v217;
                          goto LABEL_120;
                        }

                        v216 = *(&v241 + 1);
                        v210 = v241;
                        v206 = v240;
                        v204 = v244;
                        v205 = v243;
                        if (v36 > 1)
                        {
                          if (v36 == 2)
                          {
                            v197 = *(v235 + 24);
                            v199 = *(v235 + 16);
                            v201 = *(&v235 + 1);
                            v95 = v240;
                            sub_1B03B2000(v240, *(&v240 + 1));
                            sub_1B03B2000(v95, *(&v206 + 1));
                            sub_1B0BD6700(&v235, &v229);
                            sub_1B03B2000(v95, *(&v206 + 1));
                            v202 = sub_1B0AB87A0(v199, v197, v201 & 0x3FFFFFFFFFFFFFFFLL, v206, *(&v206 + 1));
                            sub_1B0391D50(v206, *(&v206 + 1));
                            v97 = *(&v206 + 1);
                            v96 = v206;
                            goto LABEL_255;
                          }

                          *&v228[6] = 0;
                          *v228 = 0;
                          v62 = v240;
                          sub_1B03B2000(v240, *(&v240 + 1));
                          sub_1B0BD6700(&v235, &v229);
                          sub_1B03B2000(v62, *(&v206 + 1));
LABEL_258:
                          sub_1B0AE2440(v228, v62, *(&v206 + 1), &v229);
                          sub_1B0391D50(v206, *(&v206 + 1));
                          sub_1B0391D50(v206, *(&v206 + 1));
                          v64 = v216;
                          v63 = v210;
                          if (v229)
                          {
                            goto LABEL_120;
                          }

LABEL_398:
                          sub_1B0BD2F90(&v235);
                          v2 = a2;
                        }

                        else
                        {
                          if (!v36)
                          {
                            *v228 = v235;
                            *&v228[8] = WORD4(v235);
                            *&v228[10] = *(&v235 + 10);
                            v62 = v240;
                            sub_1B03B2000(v240, *(&v240 + 1));
                            sub_1B0BD6700(&v235, &v229);
                            sub_1B03B2000(v62, *(&v206 + 1));
                            goto LABEL_258;
                          }

                          v200 = v235 >> 32;
                          v203 = *(&v235 + 1);
                          v198 = v235;
                          if (v235 >> 32 < v235)
                          {
                            goto LABEL_437;
                          }

                          v141 = v240;
                          sub_1B03B2000(v240, *(&v240 + 1));
                          sub_1B03B2000(v141, *(&v206 + 1));
                          sub_1B0BD6700(&v235, &v229);
                          sub_1B03B2000(v206, *(&v206 + 1));
                          v202 = sub_1B0AB87A0(v198, v200, v203 & 0x3FFFFFFFFFFFFFFFLL, v206, *(&v206 + 1));
                          v97 = *(&v206 + 1);
                          sub_1B0391D50(v206, *(&v206 + 1));
                          v96 = v206;
LABEL_255:
                          sub_1B0391D50(v96, v97);
                          sub_1B0391D50(v206, v97);
                          v64 = v216;
                          v63 = v210;
                          if ((v202 & 1) == 0)
                          {
                            goto LABEL_398;
                          }

LABEL_120:
                          v65 = v26 >> 62;
                          if (v26 >> 62 == 3)
                          {
                            v66 = 0;
                            if (v27)
                            {
                              goto LABEL_228;
                            }

                            if (v26 != 0xC000000000000000)
                            {
                              goto LABEL_228;
                            }

                            if (v64 >> 62 != 3)
                            {
                              goto LABEL_228;
                            }

                            v66 = 0;
                            if (v63 || v64 != 0xC000000000000000)
                            {
                              goto LABEL_228;
                            }
                          }

                          else
                          {
                            if (v65 == 2)
                            {
                              v131 = *(v27 + 16);
                              v130 = *(v27 + 24);
                              v51 = __OFSUB__(v130, v131);
                              v66 = v130 - v131;
                              if (v51)
                              {
                                goto LABEL_432;
                              }
                            }

                            else if (v65 == 1)
                            {
                              LODWORD(v66) = HIDWORD(v27) - v27;
                              if (__OFSUB__(HIDWORD(v27), v27))
                              {
                                goto LABEL_433;
                              }

                              v66 = v66;
                            }

                            else
                            {
                              v66 = BYTE6(v26);
                            }

LABEL_228:
                            v134 = v64 >> 62;
                            if ((v64 >> 62) > 1)
                            {
                              if (v134 != 2)
                              {
                                if (v66)
                                {
                                  goto LABEL_398;
                                }

                                goto LABEL_242;
                              }

                              v137 = *(v63 + 16);
                              v136 = *(v63 + 24);
                              v51 = __OFSUB__(v136, v137);
                              v135 = v136 - v137;
                              if (v51)
                              {
                                goto LABEL_426;
                              }
                            }

                            else if (v134)
                            {
                              LODWORD(v135) = HIDWORD(v63) - v63;
                              if (__OFSUB__(HIDWORD(v63), v63))
                              {
                                goto LABEL_425;
                              }

                              v135 = v135;
                            }

                            else
                            {
                              v135 = BYTE6(v64);
                            }

                            if (v66 != v135)
                            {
                              goto LABEL_398;
                            }

                            if (v66 >= 1)
                            {
                              v220 = v64;
                              sub_1B03B2000(v63, v64);
                              if ((sub_1B0AB8610(v27, v26, v63, v220) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

LABEL_242:
                          v138 = v214 >> 62;
                          v139 = *(&v213 + 1) >> 62;
                          if (v214 >> 62 == 3)
                          {
                            v140 = 0;
                            if (!v215 && v214 == 0xC000000000000000 && *(&v213 + 1) >> 62 == 3)
                            {
                              v140 = 0;
                              if (v213 == __PAIR128__(0xC000000000000000, 0))
                              {
                                goto LABEL_317;
                              }
                            }
                          }

                          else if (v138 == 2)
                          {
                            v162 = *(v215 + 16);
                            v161 = *(v215 + 24);
                            v51 = __OFSUB__(v161, v162);
                            v140 = v161 - v162;
                            if (v51)
                            {
                              goto LABEL_444;
                            }
                          }

                          else if (v138 == 1)
                          {
                            LODWORD(v140) = HIDWORD(v215) - v215;
                            if (__OFSUB__(HIDWORD(v215), v215))
                            {
                              goto LABEL_443;
                            }

                            v140 = v140;
                          }

                          else
                          {
                            v140 = BYTE6(v214);
                          }

                          if (v139 <= 1)
                          {
                            if (v139)
                            {
                              LODWORD(v163) = DWORD1(v213) - v213;
                              if (__OFSUB__(DWORD1(v213), v213))
                              {
                                goto LABEL_439;
                              }

                              v163 = v163;
                            }

                            else
                            {
                              v163 = BYTE14(v213);
                            }

                            goto LABEL_312;
                          }

                          if (v139 == 2)
                          {
                            v165 = *(v213 + 16);
                            v164 = *(v213 + 24);
                            v51 = __OFSUB__(v164, v165);
                            v163 = v164 - v165;
                            if (v51)
                            {
                              goto LABEL_438;
                            }

LABEL_312:
                            if (v140 != v163)
                            {
                              goto LABEL_398;
                            }

                            if (v140 >= 1)
                            {
                              sub_1B03B2000(v213, *(&v213 + 1));
                              if ((sub_1B0AB8610(v215, v214, v213, *(&v213 + 1)) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

                          else if (v140)
                          {
                            goto LABEL_398;
                          }

LABEL_317:
                          v166 = v28 & 0xCFFFFFFFFFFFFFFFLL;
                          v167 = v30 & 0xCFFFFFFFFFFFFFFFLL;
                          v168 = v28 >> 62;
                          v169 = v30 >> 62;
                          if (v28 >> 62 == 3)
                          {
                            v170 = 0;
                            v171 = v209;
                            if (v209)
                            {
                              goto LABEL_355;
                            }

                            if (v166 != 0xC000000000000000)
                            {
                              goto LABEL_355;
                            }

                            if (v30 >> 62 != 3)
                            {
                              goto LABEL_355;
                            }

                            v170 = 0;
                            if (v205 || v167 != 0xC000000000000000)
                            {
                              goto LABEL_355;
                            }
                          }

                          else
                          {
                            if (v168 == 2)
                            {
                              v171 = v209;
                              v179 = *(v209 + 16);
                              v178 = *(v209 + 24);
                              v51 = __OFSUB__(v178, v179);
                              v170 = v178 - v179;
                              if (v51)
                              {
                                goto LABEL_450;
                              }
                            }

                            else if (v168 == 1)
                            {
                              v171 = v209;
                              LODWORD(v170) = HIDWORD(v209) - v209;
                              if (__OFSUB__(HIDWORD(v209), v209))
                              {
                                __break(1u);
LABEL_450:
                                __break(1u);
LABEL_451:
                                __break(1u);
LABEL_452:
                                __break(1u);
LABEL_453:
                                __break(1u);
LABEL_454:
                                __break(1u);
                                sub_1B0BD2F90(&v240);
                                sub_1B0BD2F90(&v240);
                                v232 = v243;
                                v234 = v244;
                                v230 = v241;
                                v231 = v242;
                                v229 = v240;
                                v233 = *(&v243 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                                sub_1B0BE8F74(&v229);

                                __break(1u);
                                return;
                              }

                              v170 = v170;
                            }

                            else
                            {
                              v170 = BYTE6(v28);
                              v171 = v209;
                            }

LABEL_355:
                            if (v169 > 1)
                            {
                              if (v169 != 2)
                              {
                                if (v170)
                                {
                                  goto LABEL_398;
                                }

                                goto LABEL_369;
                              }

                              v182 = *(v205 + 16);
                              v181 = *(v205 + 24);
                              v51 = __OFSUB__(v181, v182);
                              v180 = v181 - v182;
                              if (v51)
                              {
                                goto LABEL_447;
                              }
                            }

                            else if (v169)
                            {
                              LODWORD(v180) = HIDWORD(v205) - v205;
                              if (__OFSUB__(HIDWORD(v205), v205))
                              {
                                goto LABEL_448;
                              }

                              v180 = v180;
                            }

                            else
                            {
                              v180 = BYTE6(v30);
                            }

                            if (v170 != v180)
                            {
                              goto LABEL_398;
                            }

                            if (v170 >= 1)
                            {
                              sub_1B03B2000(v205, v30 & 0xCFFFFFFFFFFFFFFFLL);
                              if ((sub_1B0AB8610(v171, v166, v205, v167) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

LABEL_369:
                          v183 = v31 & 0xCFFFFFFFFFFFFFFFLL;
                          v184 = v34 & 0xCFFFFFFFFFFFFFFFLL;
                          v185 = v31 >> 62;
                          v186 = v34 >> 62;
                          if (v31 >> 62 == 3)
                          {
                            v187 = 0;
                            v188 = v208;
                            if (!v208 && v183 == 0xC000000000000000 && v34 >> 62 == 3)
                            {
                              v187 = 0;
                              if (!v204 && v184 == 0xC000000000000000)
                              {
LABEL_404:
                                sub_1B0BD2F90(&v240);
                                sub_1B0BD2F90(&v235);
                                a1 = v223;
                                v2 = a2;
                                goto LABEL_401;
                              }
                            }
                          }

                          else if (v185 == 2)
                          {
                            v188 = v208;
                            v190 = *(v208 + 16);
                            v189 = *(v208 + 24);
                            v51 = __OFSUB__(v189, v190);
                            v187 = v189 - v190;
                            if (v51)
                            {
                              goto LABEL_454;
                            }
                          }

                          else if (v185 == 1)
                          {
                            v188 = v208;
                            LODWORD(v187) = HIDWORD(v208) - v208;
                            if (__OFSUB__(HIDWORD(v208), v208))
                            {
                              goto LABEL_453;
                            }

                            v187 = v187;
                          }

                          else
                          {
                            v187 = BYTE6(v31);
                            v188 = v208;
                          }

                          if (v186 > 1)
                          {
                            if (v186 != 2)
                            {
                              if (!v187)
                              {
                                goto LABEL_404;
                              }

                              goto LABEL_398;
                            }

                            v193 = *(v204 + 16);
                            v192 = *(v204 + 24);
                            v51 = __OFSUB__(v192, v193);
                            v191 = v192 - v193;
                            if (v51)
                            {
                              goto LABEL_451;
                            }
                          }

                          else if (v186)
                          {
                            LODWORD(v191) = HIDWORD(v204) - v204;
                            if (__OFSUB__(HIDWORD(v204), v204))
                            {
                              goto LABEL_452;
                            }

                            v191 = v191;
                          }

                          else
                          {
                            v191 = BYTE6(v34);
                          }

                          if (v187 != v191)
                          {
                            goto LABEL_398;
                          }

                          if (v187 < 1)
                          {
                            goto LABEL_404;
                          }

                          sub_1B03B2000(v204, v34 & 0xCFFFFFFFFFFFFFFFLL);
                          v194 = sub_1B0AB8610(v188, v183, v204, v184);
                          sub_1B0BD2F90(&v235);
                          v2 = a2;
                          if (v194)
                          {
LABEL_399:
                            v195 = &v240;
                            goto LABEL_400;
                          }
                        }

LABEL_27:
                        v20 = v226;
LABEL_47:
                        v21 = v225;
                        goto LABEL_20;
                      }
                    }

                    else if (v37 == BYTE14(v240))
                    {
                      goto LABEL_114;
                    }
                  }

LABEL_19:
                  v2 = a2;
                  goto LABEL_20;
                }

                if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) != 2)
                {
                  goto LABEL_19;
                }

                v40 = *(&v235 + 1) >> 62;
                v2 = a2;
                if (*(&v235 + 1) >> 62 == 3)
                {
                  v41 = 0;
                  if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                  {
                    v41 = 0;
                    if (v240 == __PAIR128__(0xC000000000000000, 0))
                    {
                      goto LABEL_399;
                    }
                  }
                }

                else if (v40 > 1)
                {
                  if (v40 == 2)
                  {
                    v53 = *(v235 + 16);
                    v52 = *(v235 + 24);
                    v51 = __OFSUB__(v52, v53);
                    v41 = v52 - v53;
                    if (v51)
                    {
                      goto LABEL_422;
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }
                }

                else if (v40)
                {
                  LODWORD(v41) = DWORD1(v235) - v235;
                  if (__OFSUB__(DWORD1(v235), v235))
                  {
                    goto LABEL_419;
                  }

                  v41 = v41;
                }

                else
                {
                  v41 = BYTE14(v235);
                }

                v67 = *(&v240 + 1) >> 62;
                if ((*(&v240 + 1) >> 62) > 1)
                {
                  if (v67 != 2)
                  {
                    if (!v41)
                    {
                      goto LABEL_399;
                    }

                    goto LABEL_20;
                  }

                  v70 = *(v240 + 16);
                  v69 = *(v240 + 24);
                  v51 = __OFSUB__(v69, v70);
                  v68 = v69 - v70;
                  if (v51)
                  {
                    goto LABEL_410;
                  }
                }

                else if (v67)
                {
                  LODWORD(v68) = DWORD1(v240) - v240;
                  if (__OFSUB__(DWORD1(v240), v240))
                  {
                    goto LABEL_409;
                  }

                  v68 = v68;
                }

                else
                {
                  v68 = BYTE14(v240);
                }

                if (v41 != v68)
                {
                  goto LABEL_20;
                }

                if (v41 < 1)
                {
                  goto LABEL_399;
                }

                if (v40 <= 1)
                {
                  if (!v40)
                  {
                    *v228 = v235;
                    *&v228[8] = WORD4(v235);
                    *&v228[10] = *(&v235 + 10);
                    v71 = *(&v240 + 1);
                    v72 = v240;
                    sub_1B0BD6700(&v240, &v229);
                    sub_1B0BD6700(&v240, &v229);
                    sub_1B0BD6700(&v235, &v229);
                    sub_1B0AE2440(v228, v72, v71, &v229);
                    sub_1B0BD2F90(&v235);
                    sub_1B0BD2F90(&v240);
                    sub_1B0BD2F90(&v240);
                    v73 = v229;
                    goto LABEL_284;
                  }

                  v117 = v235;
                  v118 = v235 >> 32;
                  if (v235 >> 32 < v235)
                  {
                    goto LABEL_429;
                  }

                  v119 = v240;
                  v120 = *(&v235 + 1);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v235, &v229);
                  v78 = v120 & 0x3FFFFFFFFFFFFFFFLL;
                  v79 = v117;
                  v80 = v118;
                  v82 = *(&v119 + 1);
                  v81 = v119;
LABEL_212:
                  v121 = sub_1B0AB87A0(v79, v80, v78, v81, v82);
                  sub_1B0BD2F90(&v240);
                  sub_1B0BD2F90(&v235);
                  sub_1B0BD2F90(&v240);
                  sub_1B0BD2F90(&v240);
LABEL_330:
                  v21 = v225;
                  v20 = v226;
                  if (v121)
                  {
                    goto LABEL_399;
                  }

                  goto LABEL_20;
                }

                v74 = v240;
                if (v40 == 2)
                {
                  v75 = *(v235 + 16);
                  v76 = *(v235 + 24);
                  v77 = *(&v235 + 1);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v240, &v229);
                  sub_1B0BD6700(&v235, &v229);
                  v78 = v77 & 0x3FFFFFFFFFFFFFFFLL;
                  v79 = v75;
                  v80 = v76;
                  v82 = *(&v74 + 1);
                  v81 = v74;
                  goto LABEL_212;
                }

                *&v228[6] = 0;
                *v228 = 0;
                sub_1B0BD6700(&v240, &v229);
                sub_1B0BD6700(&v240, &v229);
                sub_1B0BD6700(&v235, &v229);
                sub_1B0AE2440(v228, v74, *(&v74 + 1), &v229);
                sub_1B0BD2F90(&v235);
                sub_1B0BD2F90(&v240);
                sub_1B0BD2F90(&v240);
                v122 = v229;
LABEL_333:
                v21 = v225;
                v20 = v226;
                if (v122 == 1)
                {
                  goto LABEL_399;
                }

                goto LABEL_20;
              }

              if ((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0))
              {
                goto LABEL_19;
              }

              v47 = *(&v235 + 1) >> 62;
              if (*(&v235 + 1) >> 62 == 3)
              {
                v48 = 0;
                if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                {
                  v48 = 0;
                  if (v240 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_199;
                  }
                }
              }

              else if (v47 > 1)
              {
                if (v47 == 2)
                {
                  v57 = *(v235 + 16);
                  v56 = *(v235 + 24);
                  v51 = __OFSUB__(v56, v57);
                  v48 = v56 - v57;
                  if (v51)
                  {
                    goto LABEL_427;
                  }
                }

                else
                {
                  v48 = 0;
                }
              }

              else if (v47)
              {
                LODWORD(v48) = DWORD1(v235) - v235;
                if (__OFSUB__(DWORD1(v235), v235))
                {
                  goto LABEL_428;
                }

                v48 = v48;
              }

              else
              {
                v48 = BYTE14(v235);
              }

              v105 = *(&v240 + 1) >> 62;
              if ((*(&v240 + 1) >> 62) > 1)
              {
                v2 = a2;
                if (v105 == 2)
                {
                  v108 = *(v240 + 16);
                  v107 = *(v240 + 24);
                  v51 = __OFSUB__(v107, v108);
                  v106 = v107 - v108;
                  if (v51)
                  {
                    goto LABEL_416;
                  }

                  goto LABEL_193;
                }

                if (v48)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v2 = a2;
                if (v105)
                {
                  LODWORD(v106) = DWORD1(v240) - v240;
                  if (__OFSUB__(DWORD1(v240), v240))
                  {
                    goto LABEL_415;
                  }

                  v106 = v106;
                }

                else
                {
                  v106 = BYTE14(v240);
                }

LABEL_193:
                if (v48 != v106)
                {
                  goto LABEL_20;
                }

                if (v48 >= 1)
                {
                  v212 = v241;
                  if (v47 > 1)
                  {
                    v219 = *(&v241 + 1);
                    if (v47 == 2)
                    {
                      v125 = *(v235 + 16);
                      v126 = *(v235 + 24);
                      v127 = *(&v235 + 1);
                      v128 = *(&v240 + 1);
                      v129 = v240;
                      sub_1B03B2000(v240, *(&v240 + 1));
                      sub_1B0BD6700(&v235, &v229);
                      sub_1B03B2000(v129, v128);
                      LOBYTE(v125) = sub_1B0AB87A0(v125, v126, v127 & 0x3FFFFFFFFFFFFFFFLL, v129, v128);
                      sub_1B0391D50(v129, v128);
                      sub_1B0391D50(v129, v128);
                      v109 = v219;
                      v114 = v212;
                      if ((v125 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

                      goto LABEL_200;
                    }

                    *&v228[6] = 0;
                    *v228 = 0;
                    v159 = *(&v240 + 1);
                    v160 = v240;
                    sub_1B0BD6700(&v235, &v229);
                    sub_1B03B2000(v160, v159);
                    v158 = v228;
                  }

                  else
                  {
                    if (!v47)
                    {
                      v109 = *(&v241 + 1);
                      *v228 = v235;
                      *&v228[8] = WORD4(v235);
                      *&v228[10] = *(&v235 + 10);
                      v110 = *(&v240 + 1);
                      v111 = v240;
                      sub_1B0BD6700(&v235, &v229);
                      sub_1B03B2000(v111, v110);
                      sub_1B0AE2440(v228, v111, v110, &v229);
                      sub_1B0391D50(v111, v110);
                      v112 = v229;
LABEL_297:
                      v114 = v212;
                      if ((v112 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

LABEL_200:
                      v115 = v26 >> 62;
                      if (v26 >> 62 == 3)
                      {
                        v116 = 0;
                        v2 = a2;
                        if (!v27 && v26 == 0xC000000000000000 && v109 >> 62 == 3)
                        {
                          v116 = 0;
                          if (!v114 && v109 == 0xC000000000000000)
                          {
LABEL_403:
                            sub_1B0BD2F90(&v240);
                            v195 = &v235;
LABEL_400:
                            sub_1B0BD2F90(v195);
                            a1 = v223;
LABEL_401:
                            v8 = v221;
                            v4 = v222;
                            v7 = v224;
                            if (v224)
                            {
                              goto LABEL_7;
                            }

                            goto LABEL_8;
                          }
                        }
                      }

                      else if (v115 > 1)
                      {
                        v2 = a2;
                        if (v115 == 2)
                        {
                          v124 = *(v27 + 16);
                          v123 = *(v27 + 24);
                          v51 = __OFSUB__(v123, v124);
                          v116 = v123 - v124;
                          if (v51)
                          {
                            goto LABEL_441;
                          }
                        }

                        else
                        {
                          v116 = 0;
                        }
                      }

                      else
                      {
                        v2 = a2;
                        if (v115)
                        {
                          LODWORD(v116) = HIDWORD(v27) - v27;
                          if (__OFSUB__(HIDWORD(v27), v27))
                          {
                            goto LABEL_440;
                          }

                          v116 = v116;
                        }

                        else
                        {
                          v116 = BYTE6(v26);
                        }
                      }

                      v148 = v109 >> 62;
                      if ((v109 >> 62) > 1)
                      {
                        if (v148 != 2)
                        {
                          if (!v116)
                          {
                            goto LABEL_403;
                          }

                          goto LABEL_398;
                        }

                        v151 = *(v114 + 16);
                        v150 = *(v114 + 24);
                        v51 = __OFSUB__(v150, v151);
                        v149 = v150 - v151;
                        if (v51)
                        {
                          goto LABEL_430;
                        }
                      }

                      else if (v148)
                      {
                        LODWORD(v149) = HIDWORD(v114) - v114;
                        if (__OFSUB__(HIDWORD(v114), v114))
                        {
                          goto LABEL_431;
                        }

                        v149 = v149;
                      }

                      else
                      {
                        v149 = BYTE6(v109);
                      }

                      if (v116 != v149)
                      {
                        goto LABEL_398;
                      }

                      if (v116 < 1)
                      {
                        goto LABEL_403;
                      }

                      if (v115 <= 1)
                      {
                        if (!v115)
                        {
                          *&v229 = v27;
                          WORD4(v229) = v26;
                          BYTE10(v229) = BYTE2(v26);
                          BYTE11(v229) = BYTE3(v26);
                          BYTE12(v229) = BYTE4(v26);
                          BYTE13(v229) = BYTE5(v26);
                          v152 = v114;
                          sub_1B03B2000(v114, v109);
                          sub_1B03B2000(v152, v109);
                          sub_1B0AE2440(&v229, v152, v109, v228);
                          sub_1B0BD2F90(&v235);
                          sub_1B0391D50(v152, v109);
                          sub_1B0391D50(v152, v109);
                          v73 = v228[0];
LABEL_284:
                          v21 = v225;
                          v20 = v226;
                          if (v73)
                          {
                            goto LABEL_399;
                          }

                          goto LABEL_20;
                        }

                        v153 = v27;
                        v154 = v27 >> 32;
                        if (v154 < v153)
                        {
                          goto LABEL_445;
                        }

                        goto LABEL_329;
                      }

                      if (v115 == 2)
                      {
                        v153 = *(v27 + 16);
                        v154 = *(v27 + 24);
LABEL_329:
                        v172 = v114;
                        sub_1B03B2000(v114, v109);
                        sub_1B03B2000(v172, v109);
                        sub_1B03B2000(v172, v109);
                        v121 = sub_1B0AB87A0(v153, v154, v26 & 0x3FFFFFFFFFFFFFFFLL, v172, v109);
                        sub_1B0391D50(v172, v109);
                        sub_1B0BD2F90(&v235);
                        sub_1B0391D50(v172, v109);
                        sub_1B0391D50(v172, v109);
                        goto LABEL_330;
                      }

                      *(&v229 + 6) = 0;
                      *&v229 = 0;
                      v173 = v114;
                      sub_1B03B2000(v114, v109);
                      sub_1B03B2000(v173, v109);
                      sub_1B0AE2440(&v229, v173, v109, v228);
                      sub_1B0BD2F90(&v235);
                      sub_1B0391D50(v173, v109);
                      sub_1B0391D50(v173, v109);
                      v122 = v228[0];
                      goto LABEL_333;
                    }

                    v207 = v240;
                    v219 = *(&v241 + 1);
                    v155 = v235;
                    if (v235 >> 32 < v235)
                    {
                      goto LABEL_442;
                    }

                    sub_1B0BD6700(&v235, &v229);
                    sub_1B03B2000(v207, *(&v207 + 1));
                    v156 = sub_1B0E42A98();
                    if (v156)
                    {
                      v157 = sub_1B0E42AC8();
                      if (__OFSUB__(v155, v157))
                      {
                        goto LABEL_446;
                      }

                      v156 += v155 - v157;
                    }

                    sub_1B0E42AB8();
                    v158 = v156;
                    v159 = *(&v207 + 1);
                    v160 = v207;
                  }

                  sub_1B0AE2440(v158, v160, v159, &v229);
                  sub_1B0391D50(v160, v159);
                  v112 = v229;
                  v109 = v219;
                  goto LABEL_297;
                }
              }

LABEL_199:
              v232 = v238;
              v234 = v239;
              v230 = v236;
              v231 = v237;
              v229 = v235;
              v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              v109 = *(&v241 + 1);
              v113 = v241;
              sub_1B0BD1224(&v229, v228);
              v114 = v113;
              goto LABEL_200;
            }

            if (v35 <= 4)
            {
              if (v35 == 3)
              {
                if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 3)
                {
                  v2 = a2;
                  if (v235 == v240)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_63;
                }
              }

              else if (((*(&v244 + 1) >> 59) & 6 | ((*(&v243 + 1) & 0x2000000000000000) != 0)) == 4)
              {
                v42 = *(&v235 + 1) >> 62;
                v43 = *(&v240 + 1) >> 62;
                if (*(&v235 + 1) >> 62 == 3)
                {
                  v44 = 0;
                  if (v235 == __PAIR128__(0xC000000000000000, 0) && *(&v240 + 1) >> 62 == 3)
                  {
                    v44 = 0;
                    if (v240 == __PAIR128__(0xC000000000000000, 0))
                    {
                      goto LABEL_166;
                    }
                  }
                }

                else if (v42 > 1)
                {
                  if (v42 == 2)
                  {
                    v55 = *(v235 + 16);
                    v54 = *(v235 + 24);
                    v51 = __OFSUB__(v54, v55);
                    v44 = v54 - v55;
                    if (v51)
                    {
                      goto LABEL_420;
                    }
                  }

                  else
                  {
                    v44 = 0;
                  }
                }

                else if (v42)
                {
                  LODWORD(v44) = DWORD1(v235) - v235;
                  if (__OFSUB__(DWORD1(v235), v235))
                  {
                    goto LABEL_417;
                  }

                  v44 = v44;
                }

                else
                {
                  v44 = BYTE14(v235);
                }

                if (v43 > 1)
                {
                  v2 = a2;
                  if (v43 == 2)
                  {
                    v85 = *(v240 + 16);
                    v84 = *(v240 + 24);
                    v51 = __OFSUB__(v84, v85);
                    v83 = v84 - v85;
                    if (v51)
                    {
                      goto LABEL_414;
                    }

                    goto LABEL_160;
                  }

                  if (v44)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v2 = a2;
                  if (v43)
                  {
                    LODWORD(v83) = DWORD1(v240) - v240;
                    if (__OFSUB__(DWORD1(v240), v240))
                    {
                      goto LABEL_413;
                    }

                    v83 = v83;
                  }

                  else
                  {
                    v83 = BYTE14(v240);
                  }

LABEL_160:
                  if (v44 != v83)
                  {
                    goto LABEL_20;
                  }

                  if (v44 >= 1)
                  {
                    v211 = v241;
                    if (v42 > 1)
                    {
                      v218 = *(&v241 + 1);
                      if (v42 != 2)
                      {
                        *&v228[6] = 0;
                        *v228 = 0;
                        v146 = *(&v240 + 1);
                        v147 = v240;
                        sub_1B03B2000(v240, *(&v240 + 1));
                        sub_1B0BD6700(&v235, &v229);
                        sub_1B03B2000(v147, v146);
                        sub_1B0AE2440(v228, v147, v146, &v229);
                        sub_1B0391D50(v147, v146);
                        sub_1B0391D50(v147, v146);
                        v89 = v229;
                        v86 = v218;
                        goto LABEL_265;
                      }

                      v98 = *(v235 + 16);
                      v99 = *(v235 + 24);
                      v100 = *(&v235 + 1);
                      v101 = *(&v240 + 1);
                      v102 = v240;
                      sub_1B03B2000(v240, *(&v240 + 1));
                      sub_1B03B2000(v102, v101);
                      sub_1B0BD6700(&v235, &v229);
                      sub_1B03B2000(v102, v101);
                      v103 = sub_1B0AB87A0(v98, v99, v100 & 0x3FFFFFFFFFFFFFFFLL, v102, v101);
                      sub_1B0391D50(v102, v101);
                      sub_1B0391D50(v102, v101);
                      v104 = v102;
                    }

                    else
                    {
                      if (!v42)
                      {
                        v86 = *(&v241 + 1);
                        *v228 = v235;
                        *&v228[8] = WORD4(v235);
                        *&v228[10] = *(&v235 + 10);
                        v87 = *(&v240 + 1);
                        v88 = v240;
                        sub_1B03B2000(v240, *(&v240 + 1));
                        sub_1B0BD6700(&v235, &v229);
                        sub_1B03B2000(v88, v87);
                        sub_1B0AE2440(v228, v88, v87, &v229);
                        sub_1B0391D50(v88, v87);
                        sub_1B0391D50(v88, v87);
                        v89 = v229;
LABEL_265:
                        v91 = v211;
                        if ((v89 & 1) == 0)
                        {
                          goto LABEL_398;
                        }

LABEL_167:
                        v92 = v26 >> 62;
                        v93 = v86 >> 62;
                        if (v26 >> 62 == 3)
                        {
                          v94 = 0;
                          if (v27)
                          {
                            v2 = a2;
                          }

                          else
                          {
                            v2 = a2;
                            if (v26 == 0xC000000000000000 && v86 >> 62 == 3)
                            {
                              v94 = 0;
                              if (!v91 && v86 == 0xC000000000000000)
                              {
                                goto LABEL_403;
                              }
                            }
                          }
                        }

                        else if (v92 == 2)
                        {
                          v133 = *(v27 + 16);
                          v132 = *(v27 + 24);
                          v51 = __OFSUB__(v132, v133);
                          v94 = v132 - v133;
                          v2 = a2;
                          if (v51)
                          {
                            goto LABEL_434;
                          }
                        }

                        else
                        {
                          v2 = a2;
                          if (v92 == 1)
                          {
                            LODWORD(v94) = HIDWORD(v27) - v27;
                            if (__OFSUB__(HIDWORD(v27), v27))
                            {
                              goto LABEL_435;
                            }

                            v94 = v94;
                          }

                          else
                          {
                            v94 = BYTE6(v26);
                          }
                        }

                        if (v93 > 1)
                        {
                          if (v93 != 2)
                          {
                            if (!v94)
                            {
                              goto LABEL_403;
                            }

                            goto LABEL_398;
                          }

                          v176 = *(v91 + 16);
                          v175 = *(v91 + 24);
                          v51 = __OFSUB__(v175, v176);
                          v174 = v175 - v176;
                          if (v51)
                          {
                            goto LABEL_424;
                          }
                        }

                        else if (v93)
                        {
                          LODWORD(v174) = HIDWORD(v91) - v91;
                          if (__OFSUB__(HIDWORD(v91), v91))
                          {
                            goto LABEL_423;
                          }

                          v174 = v174;
                        }

                        else
                        {
                          v174 = BYTE6(v86);
                        }

                        if (v94 != v174)
                        {
                          goto LABEL_398;
                        }

                        if (v94 < 1)
                        {
                          goto LABEL_403;
                        }

                        v177 = v91;
                        sub_1B03B2000(v91, v86);
                        LOBYTE(v177) = sub_1B0AB8610(v27, v26, v177, v86);
                        sub_1B0BD2F90(&v235);
                        if (v177)
                        {
                          goto LABEL_399;
                        }

                        goto LABEL_27;
                      }

                      v218 = *(&v241 + 1);
                      v142 = v235;
                      v143 = v235 >> 32;
                      if (v235 >> 32 < v235)
                      {
                        goto LABEL_436;
                      }

                      v144 = *(&v235 + 1);
                      v101 = *(&v240 + 1);
                      v145 = v240;
                      sub_1B03B2000(v240, *(&v240 + 1));
                      sub_1B03B2000(v145, v101);
                      sub_1B0BD6700(&v235, &v229);
                      sub_1B03B2000(v145, v101);
                      v103 = sub_1B0AB87A0(v142, v143, v144 & 0x3FFFFFFFFFFFFFFFLL, v145, v101);
                      sub_1B0391D50(v145, v101);
                      sub_1B0391D50(v145, v101);
                      v104 = v145;
                    }

                    sub_1B0391D50(v104, v101);
                    v86 = v218;
                    v91 = v211;
                    if ((v103 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_167;
                  }
                }

LABEL_166:
                v232 = v238;
                v234 = v239;
                v230 = v236;
                v231 = v237;
                v229 = v235;
                v233 = *(&v238 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v86 = *(&v241 + 1);
                v90 = v241;
                sub_1B0BD1224(&v229, v228);
                v91 = v90;
                goto LABEL_167;
              }

              goto LABEL_19;
            }

            v38 = (*(&v243 + 1) >> 61) & 1;
            v39 = *(&v244 + 1) >> 59;
            if (v35 != 5)
            {
              v2 = a2;
              if ((v39 & 6 | v38) != 6)
              {
                goto LABEL_20;
              }

LABEL_61:
              if (v235 == v240)
              {
LABEL_62:
                if (*(&v235 + 1) != *(&v240 + 1))
                {
                  goto LABEL_63;
                }

LABEL_64:
                if (v27 == v32 && v26 == v33)
                {
                  goto LABEL_399;
                }

LABEL_26:
                if (sub_1B0E46A78())
                {
                  goto LABEL_399;
                }

                goto LABEL_27;
              }

LABEL_63:
              v45 = v241;
              v46 = sub_1B0E46A78();
              v33 = *(&v45 + 1);
              v32 = v45;
              v21 = v225;
              v20 = v226;
              if ((v46 & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_64;
            }

            v2 = a2;
            if ((v39 & 6 | v38) == 5)
            {
              goto LABEL_61;
            }
          }

          else if ((HIBYTE(v243) & 0x10) == 0)
          {
            v29 = v241;
            if (v235 != v240 && (sub_1B0E46A78() & 1) == 0)
            {
              v20 = v226;
              goto LABEL_47;
            }

            if (__PAIR128__(v26, v27) == v29)
            {
              goto LABEL_399;
            }

            goto LABEL_26;
          }

LABEL_20:
          v19 = (v19 + 1) & v21;
        }

        while (((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
      }

      sub_1B0BD2F90(&v240);
    }
  }

LABEL_407:
  v196 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0BE7524(uint64_t result, uint64_t a2)
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
  v4 = *(result + 56);
  v27 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v28 = v8;
  v29 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v14;
    v32 = v14[1];
    v16 = v14[2];
    v17 = *(a2 + 40);
    sub_1B0E46C28();
    v30 = v11;
    v31 = v15;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        MEMORY[0x1B2728D70](3);
        goto LABEL_26;
      }

      if (v16 == 3)
      {
        MEMORY[0x1B2728D70](4);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v16)
      {
        MEMORY[0x1B2728D70](1);
        goto LABEL_26;
      }

      if (v16 == 1)
      {
        MEMORY[0x1B2728D70](2);
        goto LABEL_26;
      }
    }

    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    sub_1B04420D8(v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((~v15 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v33, v15);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_26:
    v18 = sub_1B0E46CB8();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_46:
      sub_1B0BD1488(v31, v32, v16);
      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if (v25 > 1)
      {
        break;
      }

      if (v25)
      {
        if (v25 != 1)
        {
          goto LABEL_39;
        }

        if (v16 == 1)
        {
          goto LABEL_43;
        }
      }

      else if (!v16)
      {
        goto LABEL_43;
      }

LABEL_29:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (v25 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v25 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_39:
    if (v16 < 4)
    {
      goto LABEL_29;
    }

    sub_1B04420D8(*v22);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = static ResponseText.__derived_struct_equals(_:_:)(v23, v24);
    sub_1B0BD1488(v23, v24, v25);
    if ((v26 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_1B0BD1488(v31, v32, v16);
LABEL_43:
    v8 = v28;
    result = v29;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v27 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}