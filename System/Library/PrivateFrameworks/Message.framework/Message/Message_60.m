uint64_t sub_1B0B7D8A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RunningTask();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v16 = a2 | (a2 << 32);
    v27 = a1;
    v26 = (a1 + 32);
    do
    {
      sub_1B0450D48(v14 + v15 * v13, v11, type metadata accessor for RunningTask);
      sub_1B0450DB0(v11, v28);
      if (v29 == 1)
      {
        sub_1B0450C74(v28, v30);
        v17 = v31;
        v18 = v32;
        __swift_project_boxed_opaque_existential_0(v30, v31);
        (*(v18 + 32))(&v33, v17, v18);
        v37 = v34;
        v38 = v35;
        *v36 = v33;
        sub_1B039E440(v36);
        if ((v38 | (v38 << 32)) != v16)
        {
          sub_1B0450ED8(v11, type metadata accessor for RunningTask);
          sub_1B039E440(&v37);
          goto LABEL_17;
        }

        v19 = *(v37 + 16);
        if (v19 != *(v27 + 16))
        {
          goto LABEL_16;
        }

        if (v19 && v37 != v27)
        {
          v20 = (v37 + 32);
          v21 = v26;
          while (*v20 == *v21)
          {
            ++v20;
            ++v21;
            if (!--v19)
            {
              goto LABEL_13;
            }
          }

LABEL_16:
          sub_1B039E440(&v37);
          sub_1B0450ED8(v11, type metadata accessor for RunningTask);
LABEL_17:
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          goto LABEL_4;
        }

LABEL_13:
        sub_1B039E440(&v37);
        v22 = v31;
        v23 = v32;
        __swift_project_boxed_opaque_existential_0(v30, v31);
        v24 = (*(v23 + 56))(v22, v23);
        sub_1B0450ED8(v11, type metadata accessor for RunningTask);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        if (v24)
        {
          return 1;
        }
      }

      else
      {
        sub_1B0450ED8(v11, type metadata accessor for RunningTask);
        sub_1B0B7ABB4(v28);
      }

LABEL_4:
      ++v13;
    }

    while (v13 != v12);
  }

  return 0;
}

unint64_t sub_1B0B7DBA8()
{
  v1 = v0;
  v31 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C10, &qword_1B0EC9630);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  v32 = *v1;
  v14 = (v2 + 56);
  v15 = (v2 + 48);
  v16 = v1[3];
  v30 = v1[2];
  v28 = v2;
  v29 = v16;
  while (1)
  {
    v17 = *(v32 + 16);
    v18 = v1[1];
    if (v18 == v17)
    {
      v19 = 1;
      goto LABEL_6;
    }

    if (v18 >= v17)
    {
      break;
    }

    sub_1B0450D48(v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v18, v13, type metadata accessor for TaskHistory.Running);
    v19 = 0;
    v1[1] = v18 + 1;
LABEL_6:
    v20 = v31;
    (*v14)(v13, v19, 1, v31);
    sub_1B0B7E9A4(v13, v10);
    v21 = (*v15)(v10, 1, v20);
    if (v21 == 1)
    {
      v26 = 0;
LABEL_12:
      HIBYTE(v33) = v21 == 1;
      return v26 | ((v21 == 1) << 40);
    }

    sub_1B0B7EA14(v10, v5, type metadata accessor for TaskHistory.Running);
    v30(&v33, v5);
    v22 = v33;
    v23 = BYTE4(v33);
    sub_1B0450ED8(v5, type metadata accessor for TaskHistory.Running);
    v34 = v22;
    v35 = v23;
    v24 = v1[5];
    result = (v1[4])(&v34);
    if (result)
    {
      v25 = 0x100000000;
      if (!v23)
      {
        v25 = 0;
      }

      v26 = v25 | v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B7DE64@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1B0B7DE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningTask();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0B7DEE0(unsigned int *a1, uint64_t a2)
{
  v88 = a2;
  v86 = type metadata accessor for State.Logger();
  v3 = *(*(v86 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v86);
  v84 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v82 = &v82 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v82 - v10;
  v11 = a1[6];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  v89 = a1;
  v14 = *(v12 + 16);
  v96 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v14, 0);
  v15 = v96;
  LODWORD(v87) = v11;
  v90 = v13;
  v91 = v12;
  ConnectionCommandIDSet.makeIterator()(v11, v12, v13);
  if (!v14)
  {
LABEL_6:
    sub_1B0E466E8();
    if ((v95 & 1) == 0)
    {
      v50 = v94;
      do
      {
        v94 = 0;
        v95 = 0xE000000000000000;
        v92 = v50;
        v93 = HIDWORD(v50);
        sub_1B0E46508();
        v51 = v94;
        v52 = v95;
        v96 = v15;
        v54 = *(v15 + 16);
        v53 = *(v15 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1B041D32C((v53 > 1), v54 + 1, 1);
          v15 = v96;
        }

        *(v15 + 16) = v54 + 1;
        v55 = v15 + 16 * v54;
        *(v55 + 32) = v51;
        *(v55 + 40) = v52;
        sub_1B0E466E8();
        v50 = v94;
      }

      while (v95 != 1);
    }

    v94 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v22 = sub_1B0E448E8();
    v24 = v23;

    v25 = v91;
    v26 = ConnectionCommandIDSet.normalCommandCount.getter(v87, v91, v90);
    v27 = v89;
    v28 = *(v89 + 1);
    if (v28)
    {
      v29 = v89[4];
      if (v26)
      {
        v30 = v85;
        sub_1B0450D48(v88, v85, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0E43988();
        v32 = sub_1B0E458E8();

        LODWORD(v84) = v32;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          LODWORD(v88) = v29;
          v34 = v30;
          v35 = v33;
          v36 = swift_slowAlloc();
          v87 = v22;
          v37 = v25;
          v38 = v36;
          v96 = v36;
          *v35 = 68159235;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v39 = *(v34 + *(v86 + 20));
          sub_1B0450ED8(v34, type metadata accessor for State.Logger);
          *(v35 + 10) = v39;
          *(v35 + 11) = 2082;
          v40 = ConnectionID.debugDescription.getter(*v27);
          v42 = sub_1B0399D64(v40, v41, &v96);

          *(v35 + 13) = v42;
          *(v35 + 21) = 2048;
          v43 = *(v37 + 16);

          *(v35 + 23) = v43;

          *(v35 + 31) = 2082;
          v44 = sub_1B0399D64(v87, v24, &v96);

          *(v35 + 33) = v44;
          *(v35 + 41) = 2160;
          *(v35 + 43) = 0x786F626C69616DLL;
          *(v35 + 51) = 2085;
          v94 = v28;
          LODWORD(v95) = v88;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v45 = sub_1B0E44BA8();
          v47 = sub_1B0399D64(v45, v46, &v96);

          *(v35 + 53) = v47;
          v48 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s were running and '%{sensitive,mask.mailbox}s' was selected.";
          v49 = v84;
LABEL_20:
          _os_log_impl(&dword_1B0389000, v31, v49, v48, v35, 0x3Du);
          swift_arrayDestroy();
          v72 = v38;
LABEL_25:
          MEMORY[0x1B272C230](v72, -1, -1);
          MEMORY[0x1B272C230](v35, -1, -1);

          return;
        }
      }

      else
      {
        v87 = v22;
        v30 = v83;
        sub_1B0450D48(v88, v83, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0E43988();
        v58 = sub_1B0E45908();

        if (os_log_type_enabled(v31, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v85) = v58;
          v60 = v30;
          v35 = v59;
          v61 = swift_slowAlloc();
          LODWORD(v88) = v29;
          v62 = v25;
          v38 = v61;
          v96 = v61;
          *v35 = 68159235;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v63 = *(v60 + *(v86 + 20));
          sub_1B0450ED8(v60, type metadata accessor for State.Logger);
          *(v35 + 10) = v63;
          *(v35 + 11) = 2082;
          v64 = ConnectionID.debugDescription.getter(*v27);
          v66 = sub_1B0399D64(v64, v65, &v96);

          *(v35 + 13) = v66;
          *(v35 + 21) = 2048;
          v67 = *(v62 + 16);

          *(v35 + 23) = v67;

          *(v35 + 31) = 2082;
          v68 = sub_1B0399D64(v87, v24, &v96);

          *(v35 + 33) = v68;
          *(v35 + 41) = 2160;
          *(v35 + 43) = 0x786F626C69616DLL;
          *(v35 + 51) = 2085;
          v94 = v28;
          LODWORD(v95) = v88;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v69 = sub_1B0E44BA8();
          v71 = sub_1B0399D64(v69, v70, &v96);

          *(v35 + 53) = v71;
          v48 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running and '%{sensitive,mask.mailbox}s' was selected.";
          v49 = v85;
          goto LABEL_20;
        }
      }

      sub_1B0450ED8(v30, type metadata accessor for State.Logger);
    }

    else
    {
      if (v26)
      {
        v56 = v84;
        sub_1B0450D48(v88, v84, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0E43988();
        v57 = sub_1B0E458E8();
      }

      else
      {
        v56 = v82;
        sub_1B0450D48(v88, v82, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0E43988();
        v57 = sub_1B0E45908();
      }

      v73 = v57;

      if (os_log_type_enabled(v31, v73))
      {
        v35 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v87 = v22;
        v75 = v74;
        v94 = v74;
        *v35 = 68158722;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        v76 = *(v56 + *(v86 + 20));
        sub_1B0450ED8(v56, type metadata accessor for State.Logger);
        *(v35 + 10) = v76;
        *(v35 + 11) = 2082;
        v77 = ConnectionID.debugDescription.getter(*v27);
        v79 = sub_1B0399D64(v77, v78, &v94);

        *(v35 + 13) = v79;
        *(v35 + 21) = 2048;
        v80 = *(v25 + 16);

        *(v35 + 23) = v80;

        *(v35 + 31) = 2082;
        v81 = sub_1B0399D64(v87, v24, &v94);

        *(v35 + 33) = v81;
        _os_log_impl(&dword_1B0389000, v31, v73, "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running. No mailbox selected.", v35, 0x29u);
        swift_arrayDestroy();
        v72 = v75;
        goto LABEL_25;
      }

      sub_1B0450ED8(v56, type metadata accessor for State.Logger);
    }

    return;
  }

  while (1)
  {
    sub_1B0E466E8();
    if (v95)
    {
      break;
    }

    v16 = v94;
    v94 = 0;
    v95 = 0xE000000000000000;
    v92 = v16;
    v93 = HIDWORD(v16);
    sub_1B0E46508();
    v18 = v94;
    v17 = v95;
    v96 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1B041D32C((v19 > 1), v20 + 1, 1);
      v15 = v96;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B7E9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C10, &qword_1B0EC9630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7EA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B7EAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7EB08(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B7EB8C@<X0>(__int16 a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v29[*(v20 + 56) - v19];
  sub_1B0B7EAA4(v9, v21);
  type metadata accessor for UntaggedResponse(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((a1 & 0x100) == 0)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v23 = v21[1];
      v31[0] = *v21;
      v31[1] = v23;
      v31[2] = v21[2];
      a4();
      return sub_1B0A96464(v31);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 11)
  {
LABEL_9:
    sub_1B0B7EB08(v21);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v25 = *v21;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    do
    {
      v28 = *v27++;
      v30 = v28;
      MessageIdentifierSet.insert(_:)(v31, &v30, v12);
      --v26;
    }

    while (v26);
  }

  sub_1B03C60A4(v16, a5, a2, a3);
  return (*(v13 + 56))(a5, 0, 1, v12);
}

uint64_t sub_1B0B7EDB0()
{
  result = sub_1B03D0770(&unk_1F2710F48);
  qword_1EB737DA8 = result;
  return result;
}

void sub_1B0B7EDD8(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = *(v1 + 8);
  sub_1B0A92638(a1, v22 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v6[*(v3 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v9[*(v3 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v24);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0A9269C(v6);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v22[1] = v18;
    v23 = v16;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v24);

    *(v13 + 43) = v21;
    *(v13 + 51) = 1024;
    *(v13 + 53) = v10;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for search #%u.", v13, 0x39u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v6);

    sub_1B0A9269C(v9);
  }
}

unint64_t sub_1B0B7F06C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if ((sub_1B0B7134C(a1, a2) & 1) != 0 || (result = sub_1B0B7F38C(), (~result & 0xF000000000000007) == 0))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C20, &qword_1B0EC9758);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }

  v8 = *v3 - 1;
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v3 - 0x100000000 < 0;
  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v3 - 0x7FFFFFFFFFFFFFFFLL < 0;
  if (v8 > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(*v3))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (*(v3 + 146))
  {
    *a3 = result;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v10 = result;
    if (*(v3 + 145))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v11 = *(type metadata accessor for SearchReturnOption() - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B0EC1E70;
    }

    else
    {
      v22 = *v3;
      v23 = 1;
      v15 = sub_1B041B7F0();
      static MessageIdentifier.... infix(_:_:)(&v23, &v22, &type metadata for SequenceNumber, v15, &v24);
      v16 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v17 = *(type metadata accessor for SearchReturnOption() - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B0EC1E70;
      v20 = v14 + v19;
      *v20 = v16;
      *(v20 + 8) = 0;
    }

    swift_storeEnumTagMultiPayload();
    *a3 = v10;
    a3[1] = v14;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C20, &qword_1B0EC9758);
  return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
}

unint64_t sub_1B0B7F38C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v22 = *(v0 + 128);
  if (!*(v22 + 16))
  {
    v34 = *(v0 + 120);
    sub_1B0B23938(v34);
    return v34;
  }

  v46 = v0;
  v47 = v21;
  v49 = v10;
  v50 = v20;
  v51 = v1;
  v52 = v14;
  v45 = &v44 - v19;
  v53 = v18;
  v23 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v23, v54);
  v55 = v54[0];
  v54[4] = Range<>.init<A>(_:)(&v55, &type metadata for UID, v23);
  sub_1B03D06F8();
  v48 = v7;
  sub_1B0E46F08();
  result = sub_1B0E46EE8();
  v25 = *(v22 + 16);
  if (!v25)
  {
LABEL_8:
    v29 = v48;
    v28 = v49;
    MessageIdentifierSet.subtracting(_:)(v4, v49);
    sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = 1;
      v31 = v52;
    }

    else
    {
      v30 = v47;
      sub_1B03C60A4(v28, v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v31 = v52;
      sub_1B03C60A4(v30, v52, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v32 = 0;
    }

    v33 = v53;
    v35 = v50;
    v36 = *(v50 + 56);
    v36(v31, v32, 1, v53);
    if ((*(v35 + 48))(v31, 1, v33) == 1)
    {
      sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
      return 0xF000000000000007;
    }

    else
    {
      v37 = v45;
      sub_1B03C60A4(v31, v45, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v38 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1B0EC3500;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
      v40 = swift_allocBox();
      v42 = v41;
      sub_1B03B5C80(v37, v41, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v36(v42, 0, 1, v33);
      v43 = *(v46 + 120);
      *(v39 + 32) = v40 | 0xA000000000000000;
      *(v39 + 40) = v43;
      sub_1B0B23938(v43);
      sub_1B0398EFC(v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v38 + 16) = v39;
      return v38 | 0xC000000000000000;
    }
  }

  v26 = 0;
  while (v26 < *(v22 + 16))
  {
    v54[0] = *(v22 + 32 + 8 * v26);
    result = Range<>.init<A>(_:)(v54, &type metadata for UID, v23);
    v55 = result;
    if (HIDWORD(result) != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v27 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      result = v27(v54, 0);
    }

    if (v25 == ++v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B7F8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  sub_1B0A92638(a2, v29 - v11);
  sub_1B0A92638(a2, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E458E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 68159235;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v17 = *(v6 + 20);
    v29[0] = a1;
    v18 = &v9[v17];
    *(v15 + 10) = v9[v17];
    *(v15 + 11) = 2082;
    v19 = &v12[*(v6 + 20)];
    *(v15 + 13) = sub_1B0399D64(*(v19 + 1), *(v19 + 2), &v31);
    *(v15 + 21) = 1040;
    *(v15 + 23) = 2;
    *(v15 + 27) = 512;
    LOWORD(v18) = *(v18 + 12);
    sub_1B0A9269C(v9);
    *(v15 + 29) = v18;
    *(v15 + 31) = 2160;
    *(v15 + 33) = 0x786F626C69616DLL;
    *(v15 + 41) = 2085;
    v20 = *(v19 + 4);
    LODWORD(v18) = *(v19 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v12);
    v29[1] = v20;
    v30 = v18;
    v21 = sub_1B0E44BA8();
    v23 = sub_1B0399D64(v21, v22, &v31);

    *(v15 + 43) = v23;
    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search did fail.", v15, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v16, -1, -1);
    MEMORY[0x1B272C230](v15, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v9);

    sub_1B0A9269C(v12);
  }

  v24 = *(v3 + 8);
  v25 = *(v3 + 16);
  v26 = *(v3 + 24);
  v27 = type metadata accessor for SearchMailbox();
  return sub_1B0B29950(v24, v25, v26, v3 + *(v27 + 52));
}

uint64_t sub_1B0B7FBA4()
{
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0B7FCA8()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B7FD08()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1B0E46C88();
  return MEMORY[0x1B2728D70](v2 | (v2 << 32));
}

uint64_t sub_1B0B7FD48()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

void sub_1B0B7FE38()
{
  sub_1B0AA95BC();
  if (v0 <= 0x3F)
  {
    sub_1B0B7FF14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B7FF14()
{
  if (!qword_1EB6DE248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DE248);
    }
  }
}

unint64_t sub_1B0B7FF78()
{
  result = qword_1EB6DDF08;
  if (!qword_1EB6DDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF08);
  }

  return result;
}

unint64_t sub_1B0B7FFCC(uint64_t a1)
{
  result = sub_1B0B7FFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B7FFF4()
{
  result = qword_1EB6DDF00;
  if (!qword_1EB6DDF00)
  {
    type metadata accessor for SearchMailbox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF00);
  }

  return result;
}

unint64_t sub_1B0B80050()
{
  result = qword_1EB6E4C18;
  if (!qword_1EB6E4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C18);
  }

  return result;
}

uint64_t sub_1B0B800A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v73 = a6;
  v78 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v68[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v68[-v16];
  v71 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v68[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v74 = &v68[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v79 = &v68[-v35];
  result = sub_1B0AD53E8(a2, a3, a4);
  if (result)
  {
    if (*(v7 + 146))
    {
      v37 = 256;
    }

    else
    {
      v37 = 0;
    }

    sub_1B0B7EA7C(v37 | *(v7 + 145), v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      return sub_1B0398EFC(v26, &qword_1EB6E3920, &qword_1B0E9B070);
    }

    else
    {
      v38 = v79;
      sub_1B03C60A4(v26, v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v39 = *(v7 + 8);
      v40 = v73;
      sub_1B0A92638(v73, v22);
      sub_1B0A92638(v40, v19);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v38, v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v41 = sub_1B0E43988();
      v42 = sub_1B0E45908();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v73 = v7;
        v44 = v43;
        v45 = swift_slowAlloc();
        v78 = v27;
        v46 = v45;
        v82 = v45;
        *v44 = 68159747;
        v70 = v41;
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v47 = v71;
        v48 = *(v71 + 20);
        v69 = v39;
        v49 = &v19[v48];
        *(v44 + 10) = v19[v48];
        *(v44 + 11) = 2082;
        v50 = &v22[*(v47 + 20)];
        *(v44 + 13) = sub_1B0399D64(*(v50 + 1), *(v50 + 2), &v82);
        *(v44 + 21) = 1040;
        *(v44 + 23) = 2;
        *(v44 + 27) = 512;
        v51 = *(v49 + 12);
        sub_1B0A9269C(v19);
        *(v44 + 29) = v51;
        *(v44 + 31) = 2160;
        *(v44 + 33) = 0x786F626C69616DLL;
        *(v44 + 41) = 2085;
        v52 = *(v50 + 4);
        v53 = *(v50 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v22);
        v80 = v52;
        v81 = v53;
        v54 = sub_1B0E44BA8();
        v56 = sub_1B0399D64(v54, v55, &v82);

        *(v44 + 43) = v56;
        *(v44 + 51) = 2048;
        v57 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v44 + 53) = v57;
        *(v44 + 61) = 1024;
        *(v44 + 63) = v69;
        v58 = v70;
        _os_log_impl(&dword_1B0389000, v70, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search returned %ld UIDs for search #%u.", v44, 0x43u);
        swift_arrayDestroy();
        v27 = v78;
        MEMORY[0x1B272C230](v46, -1, -1);
        v59 = v44;
        v7 = v73;
        MEMORY[0x1B272C230](v59, -1, -1);
      }

      else
      {
        sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0A9269C(v19);

        sub_1B0A9269C(v22);
      }

      v60 = v74;
      v61 = v79;
      MessageIdentifierSet.suffix(_:)(*v7, v27, v74);
      v62 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v62 < 1)
      {
        sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v66 = 1;
        v65 = v75;
      }

      else
      {
        v63 = v72;
        sub_1B03C60A4(v60, v72, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v64 = v63;
        v65 = v75;
        sub_1B03C60A4(v64, v75, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v66 = 0;
      }

      (*(v76 + 56))(v65, v66, 1, v77);
      v67 = type metadata accessor for SearchMailbox();
      return sub_1B0B41460(v65, v7 + *(v67 + 52));
    }
  }

  return result;
}

void sub_1B0B80744(unint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v54 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51[-v21];
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1B0A92638(a6, &v51[-v21]);
      sub_1B0A92638(a6, v19);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = sub_1B0E43988();
      v24 = sub_1B0E458E8();
      sub_1B0447F00(a1);

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v25 = 68159491;
        *(v25 + 4) = 2;
        *(v25 + 8) = 256;
        v26 = &v19[*(v10 + 20)];
        *(v25 + 10) = *v26;
        *(v25 + 11) = 2082;
        v27 = &v22[*(v10 + 20)];
        *(v25 + 13) = sub_1B0399D64(*(v27 + 1), *(v27 + 2), &v57);
        *(v25 + 21) = 1040;
        *(v25 + 23) = 2;
        *(v25 + 27) = 512;
        LOWORD(v26) = *(v26 + 12);
        sub_1B0A9269C(v19);
        *(v25 + 29) = v26;
        *(v25 + 31) = 2160;
        *(v25 + 33) = 0x786F626C69616DLL;
        *(v25 + 41) = 2085;
        v28 = *(v27 + 4);
        LODWORD(v27) = *(v27 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v22);
        v55 = v28;
        v56 = v27;
        v29 = sub_1B0E44BA8();
        v31 = sub_1B0399D64(v29, v30, &v57);

        *(v25 + 43) = v31;
        *(v25 + 51) = 2082;
        v32 = ResponseText.debugDescription.getter(a1, v54, a3);
        v34 = sub_1B0399D64(v32, v33, &v57);

        *(v25 + 53) = v34;
        _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with NO %{public}s.", v25, 0x3Du);
        v35 = v53;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v35, -1, -1);
        v36 = v25;
LABEL_7:
        MEMORY[0x1B272C230](v36, -1, -1);

        return;
      }

      sub_1B0A9269C(v19);

      v50 = v22;
    }

    else
    {
      sub_1B0A92638(a6, v16);
      sub_1B0A92638(a6, v13);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = sub_1B0E43988();
      v37 = sub_1B0E458E8();
      sub_1B0447F00(a1);

      if (os_log_type_enabled(v23, v37))
      {
        v38 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v38 = 68159491;
        *(v38 + 4) = 2;
        *(v38 + 8) = 256;
        v39 = *(v10 + 20);
        v52 = v37;
        v40 = &v13[v39];
        *(v38 + 10) = v13[v39];
        *(v38 + 11) = 2082;
        v41 = &v16[*(v10 + 20)];
        *(v38 + 13) = sub_1B0399D64(*(v41 + 1), *(v41 + 2), &v57);
        *(v38 + 21) = 1040;
        *(v38 + 23) = 2;
        *(v38 + 27) = 512;
        LOWORD(v40) = *(v40 + 12);
        sub_1B0A9269C(v13);
        *(v38 + 29) = v40;
        *(v38 + 31) = 2160;
        *(v38 + 33) = 0x786F626C69616DLL;
        *(v38 + 41) = 2085;
        v42 = *(v41 + 4);
        LODWORD(v40) = *(v41 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v16);
        v55 = v42;
        v56 = v40;
        v43 = sub_1B0E44BA8();
        v45 = sub_1B0399D64(v43, v44, &v57);

        *(v38 + 43) = v45;
        *(v38 + 51) = 2082;
        v46 = ResponseText.debugDescription.getter(a1, v54, a3);
        v48 = sub_1B0399D64(v46, v47, &v57);

        *(v38 + 53) = v48;
        _os_log_impl(&dword_1B0389000, v23, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with BAD %{public}s.", v38, 0x3Du);
        v49 = v53;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v49, -1, -1);
        v36 = v38;
        goto LABEL_7;
      }

      sub_1B0A9269C(v13);

      v50 = v16;
    }

    sub_1B0A9269C(v50);
  }
}

uint64_t sub_1B0B80CB4(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v56 = swift_allocObject();
      result = sub_1B09AEA14(a1);
      if ((v52 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v53 - 13) < 0xFFFFFFFFFFFFFFF4 || (v54 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        goto LABEL_39;
      }

      *(v56 + 16) = v52;
      *(v56 + 24) = v53;
      result = v56 | 4;
      *(v56 + 32) = v54;
      return result;
    case 2uLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = ByteBufferAllocator.buffer(string:)(v30, v31, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v36 = v35;
      v38 = v37;

      sub_1B09AEA14(a1);
      *(v33 + 16) = v34;
      *(v33 + 24) = v36;
      *(v33 + 32) = v38;
      *(v33 + 36) = WORD2(v38);
      result = v33 | 0x1000000000000000;
      *(v33 + 38) = BYTE6(v38);
      return result;
    case 3uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = ByteBufferAllocator.buffer(string:)(v39, v40, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v45 = v44;
      v47 = v46;

      sub_1B09AEA14(a1);
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      *(v42 + 32) = v47;
      *(v42 + 36) = WORD2(v47);
      *(v42 + 38) = BYTE6(v47);
      return v42 | 0x1000000000000004;
    case 4uLL:
      v22 = sub_1B0AFCB98(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 1);
      sub_1B09AEA14(a1);
      return v22;
    case 5uLL:
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v63 = ByteBufferAllocator.buffer(string:)(v59, v60, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v65 = v64;
      v67 = v66;

      sub_1B09AEA14(a1);
      *(v62 + 16) = v63;
      *(v62 + 24) = v65;
      *(v62 + 32) = v67;
      *(v62 + 36) = WORD2(v67);
      result = v62 | 0x2000000000000000;
      *(v62 + 38) = BYTE6(v67);
      return result;
    case 6uLL:
      v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v73 = swift_allocObject();
      *(v73 + 16) = v69;
      *(v73 + 24) = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v74 = ByteBufferAllocator.buffer(string:)(v70, v71, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      LODWORD(v70) = v75;
      LODWORD(v71) = v76;
      v77 = HIDWORD(v75);
      v78 = HIDWORD(v76);
      v79 = HIWORD(v76);
      sub_1B09AEA14(a1);
      *(v73 + 32) = v74;
      *(v73 + 40) = v70;
      *(v73 + 44) = v77;
      *(v73 + 48) = v71;
      *(v73 + 52) = v78;
      result = v73 | 0x6000000000000000;
      *(v73 + 54) = v79;
      return result;
    case 7uLL:
      v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = swift_allocObject();
      sub_1B09AE83C(v48);
      v51 = sub_1B0B80CB4(v48);
      sub_1B09AEA14(a1);
      *(v50 + 16) = v51;
      return v50 | 0x7000000000000000;
    case 8uLL:
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v90 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v92 = swift_allocObject();
      sub_1B09AE83C(v90);
      sub_1B09AE83C(v89);
      *(v92 + 16) = sub_1B0B80CB4(v89);
      v93 = sub_1B0B80CB4(v90);
      sub_1B09AEA14(a1);
      *(v92 + 24) = v93;
      return v92 | 0x7000000000000004;
    case 9uLL:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = swift_allocObject();
      result = sub_1B09AEA14(a1);
      if ((v23 - 2501) >= 0xFFFFFFFFFFFFFDA7 && (v24 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v25 - 32) >= 0xFFFFFFFFFFFFFFE1)
      {
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
        *(v27 + 32) = v25;
        return v27 | 0x3000000000000004;
      }

      else
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      return result;
    case 0xAuLL:
      v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v83 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v84 = ByteBufferAllocator.buffer(string:)(v80, v81, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v86 = v85;
      v88 = v87;

      sub_1B09AEA14(a1);
      *(v83 + 16) = v84;
      *(v83 + 24) = v86;
      *(v83 + 32) = v88;
      *(v83 + 36) = WORD2(v88);
      result = v83 | 0x4000000000000000;
      *(v83 + 38) = BYTE6(v88);
      return result;
    case 0xBuLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = ByteBufferAllocator.buffer(string:)(v11, v12, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v17 = v16;
      v19 = v18;

      sub_1B09AEA14(a1);
      *(v14 + 16) = v15;
      *(v14 + 24) = v17;
      *(v14 + 32) = v19;
      *(v14 + 36) = WORD2(v19);
      result = v14 | 0x5000000000000000;
      *(v14 + 38) = BYTE6(v19);
      return result;
    case 0xCuLL:
      return *(&unk_1B0EC97B0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    default:
      v1 = *(a1 + 16);
      v2 = *(a1 + 24);
      sub_1B09AE83C(v1);
      v4 = sub_1B0B80CB4(v1);
      sub_1B09AE83C(v2);
      v5 = sub_1B0B80CB4(v2);
      v6 = v5;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0x18)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          v101 = v7;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AFC914(v8);
          sub_1B0B239C8(v6);
          v10 = v4;
LABEL_35:
          sub_1B0B239C8(v10);
          sub_1B09AEA14(a1);
          *(v9 + 16) = v101;
          return v9 | 0xC000000000000000;
        }

        v97 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B0EC1E70;
        *(inited + 32) = v6;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B23938(v6);
        sub_1B0AFC914(inited);
        sub_1B0B239C8(v6);
        sub_1B0B239C8(v4);
        sub_1B09AEA14(a1);
        *(v97 + 16) = v7;
        return v97 | 0xC000000000000000;
      }

      else
      {
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v94 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_1B0EC1E70;
          *(v95 + 32) = v4;
          v101 = v95;
          v96 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AFC914(v96);
          v10 = v6;
          goto LABEL_35;
        }

        v99 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1B0EC3500;
        *(v100 + 32) = v4;
        *(v100 + 40) = v6;
        sub_1B09AEA14(a1);
        *(v99 + 16) = v100;
        return v99 | 0xC000000000000000;
      }
  }
}

uint64_t sub_1B0B815D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 1;
  }

  v13 = 0;
  v19 = a3;
  v21 = a3 & 0xFE00000000;
  v22 = a1 + 32;
  while (1)
  {
    v23 = v13;
    v14 = *(v22 + 8 * v13);
    if (v21 || v14 < v19)
    {
      break;
    }

LABEL_3:
    v13 = v23 + 1;
    if (v23 + 1 == v20)
    {
      return 1;
    }
  }

  v15 = 0;
  v16 = *(v24 + 16);
  while (v16 != v15)
  {
    sub_1B03B5C80(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v12, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v12, v9, &qword_1EB6E41B8, &qword_1B0EC4100);
    v17 = *v9;
    sub_1B0398EFC(v9 + *(v5 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    if (v17 == v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1B0B817C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v202 = a3;
  v203 = a1;
  v4 = sub_1B0E443C8();
  v199 = *(v4 - 8);
  v200 = v4;
  isa = v199[8].isa;
  MEMORY[0x1EEE9AC00](v4);
  v197 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v195 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v196 = &v174 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v190 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v174 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v192 = *(v15 - 8);
  v193 = v15;
  v16 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v174 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v174 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v174 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v174 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v174 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = (&v174 - v39);
  v41 = sub_1B0E43308();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v174 - v44;
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  HIDWORD(v53) = -1431655765 * a2;
  LODWORD(v53) = -1431655765 * a2;
  if ((v53 >> 17) > 0x2AAA)
  {
    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    *v54 = a2;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v180 = v45;
  v181 = v40;
  v182 = v36;
  v185 = v30;
  v179 = v33;
  v183 = v52;
  v55 = v202;
  v177 = v27;
  v178 = v24;
  v184 = v51;
  v175 = v21;
  v176 = v18;
  v189 = &v174 - v49;
  v186 = v48;
  v187 = v50;
  v188 = a2;
  v56 = v203;
  if (_s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0() > 393216)
  {
    v57 = v196;
    sub_1B0A92638(v55, v196);
    v58 = v195;
    sub_1B0A92638(v55, v195);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v60 = v199;
    v59 = v200;
    v61 = v197;
    (v199[2].isa)(v197, v56, v200);
    v62 = sub_1B0E43988();
    v63 = sub_1B0E458E8();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v198;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v201 = v62;
      v67 = v57;
      v68 = v66;
      v202 = swift_slowAlloc();
      v208 = v202;
      *v68 = 68159747;
      LODWORD(v194) = v63;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v58 + *(v65 + 20);
      *(v68 + 10) = *v69;
      *(v68 + 11) = 2082;
      v70 = v67 + *(v65 + 20);
      *(v68 + 13) = sub_1B0399D64(*(v70 + 8), *(v70 + 16), &v208);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      v71 = *(v69 + 24);
      sub_1B0A9269C(v58);
      *(v68 + 29) = v71;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v72 = *(v70 + 32);
      LODWORD(v70) = *(v70 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v67);
      v204 = v72;
      LODWORD(v205) = v70;
      v73 = sub_1B0E44BA8();
      v75 = sub_1B0399D64(v73, v74, &v208);

      *(v68 + 43) = v75;
      *(v68 + 51) = 2048;
      v76 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (v60[1].isa)(v61, v59);
      *(v68 + 53) = v76;
      *(v68 + 61) = 1024;
      *(v68 + 63) = 393216;
      v77 = v201;
      _os_log_impl(&dword_1B0389000, v201, v194, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Data length %ld > %u (segment length).", v68, 0x43u);
      v78 = v202;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v78, -1, -1);
      MEMORY[0x1B272C230](v68, -1, -1);
    }

    else
    {
      (v60[1].isa)(v61, v59);
      sub_1B0A9269C(v58);

      sub_1B0A9269C(v57);
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    *v88 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    goto LABEL_17;
  }

  v79 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if ((v79 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v80 = v79;
  v40 = v201;
  a2 = v185;
  if (HIDWORD(v79))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v82 = v188;
  if (result >= 393216)
  {
    goto LABEL_32;
  }

  v83 = v40[1].isa;
  if (!BYTE4(v40[1].isa))
  {
    if (!v80)
    {
      goto LABEL_32;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    v90 = v89;
    if (v83 <= v82)
    {
      *v89 = v83;
      v89[1] = v82;
      goto LABEL_17;
    }

    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C30, &qword_1B0EC9898) + 48);
    result = sub_1B0B82A64(v201->isa);
    if (!__CFADD__(v82, v80))
    {
      v92 = (v90 + v91);
      *v92 = v82;
      v92[1] = v82 + v80;
      goto LABEL_17;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  if (BYTE4(v40[1].isa) == 1)
  {
    if (v80)
    {
      v84 = v188 + v80;
      if (!__CFADD__(v188, v80))
      {
        if (v83 < v84)
        {
          type metadata accessor for SegmentResequencer.Error(0);
          sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
          swift_allocError();
          v86 = v85;
          v87 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          *v86 = v83;
          *(v86 + 4) = v82;
          *(v86 + 8) = v87;
          goto LABEL_17;
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_74;
    }

    if (v83 <= v188)
    {
      goto LABEL_32;
    }

    v93 = 1;
LABEL_30:
    v84 = v188;
    goto LABEL_31;
  }

  if (!v80)
  {
    v93 = v188 != 0;
    goto LABEL_30;
  }

  v84 = v188 + v80;
  if (__CFADD__(v188, v80))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_26:
  v93 = 0;
LABEL_31:
  LODWORD(v40[1].isa) = v84;
  BYTE4(v40[1].isa) = v93;
LABEL_32:
  v94 = v82 + v80;
  if (__CFADD__(v82, v80))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v36 = sub_1B0AFFD78(0, *(v36 + 2) + 1, 1, v36);
    goto LABEL_38;
  }

  if (!v80)
  {
    goto LABEL_41;
  }

  v36 = v40->isa;
  sub_1B0B82A64(v40->isa);
  v95 = v82 + v80;
  if (sub_1B0E432C8())
  {
    v96 = v180;
    sub_1B0E43238();
    v97 = v184;
    sub_1B0E43248();
    v98 = v187;
    v203 = v94;
    v99 = *(v187 + 8);
    v100 = v96;
    v101 = v186;
    v99(v100, v186);
    v102 = v191;
    sub_1B0A92638(v55, v191);
    v103 = v190;
    sub_1B0A92638(v55, v190);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v104 = *(v98 + 16);
    v105 = v183;
    v187 = v98 + 16;
    v201 = v104;
    (v104)(v183, v97, v101);
    v106 = sub_1B0E43988();
    v107 = sub_1B0E458E8();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v208 = v202;
      *v108 = 68159747;
      LODWORD(v200) = v107;
      *(v108 + 4) = 2;
      *(v108 + 8) = 256;
      v109 = v198;
      v110 = v105;
      v111 = v103 + *(v198 + 20);
      *(v108 + 10) = *v111;
      *(v108 + 11) = 2082;
      v112 = *(v109 + 20);
      v199 = v106;
      v113 = v99;
      v114 = v103;
      v115 = v102;
      v116 = v102 + v112;
      *(v108 + 13) = sub_1B0399D64(*(v116 + 8), *(v116 + 16), &v208);
      *(v108 + 21) = 1040;
      *(v108 + 23) = 2;
      *(v108 + 27) = 512;
      v117 = *(v111 + 24);
      v118 = v114;
      v99 = v113;
      sub_1B0A9269C(v118);
      *(v108 + 29) = v117;
      *(v108 + 31) = 2160;
      *(v108 + 33) = 0x786F626C69616DLL;
      *(v108 + 41) = 2085;
      v119 = *(v116 + 32);
      LODWORD(v111) = *(v116 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v115);
      v204 = v119;
      LODWORD(v205) = v111;
      v120 = sub_1B0E44BA8();
      v122 = sub_1B0399D64(v120, v121, &v208);

      *(v108 + 43) = v122;
      *(v108 + 51) = 2080;
      LODWORD(v113) = v188;
      v206 = v203;
      v207 = v188;
      v204 = 0;
      v205 = 0xE000000000000000;
      sub_1B0E46508();
      MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
      v123 = v113;
      sub_1B0E46508();
      v124 = sub_1B0399D64(v204, v205, &v208);

      *(v108 + 53) = v124;
      *(v108 + 61) = 2080;
      sub_1B0B83D74(&qword_1EB6E4C38, MEMORY[0x1E6969B50]);
      v125 = v186;
      v126 = sub_1B0E469C8();
      v128 = v127;
      v99(v110, v125);
      v129 = sub_1B0399D64(v126, v128, &v208);

      *(v108 + 63) = v129;
      v130 = v199;
      _os_log_impl(&dword_1B0389000, v199, v200, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received bytes in range %s -- some of which have previously been received: %s", v108, 0x47u);
      v131 = v202;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v131, -1, -1);
      MEMORY[0x1B272C230](v108, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v103);

      v99(v105, v186);
      sub_1B0A9269C(v102);
      v123 = v188;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
    swift_allocError();
    v158 = v157;
    v159 = (v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C30, &qword_1B0EC9898) + 48));
    v160 = v189;
    v161 = v186;
    (v201)(v158, v189, v186);
    v162 = v203;
    *v159 = v123;
    v159[1] = v162;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v99(v184, v161);
    return (v99)(v160, v161);
  }

  v133 = v199;
  v132 = v200;
  v134 = v181;
  (v199[2].isa)(v181, v203, v200);
  (v133[7].isa)(v134, 0, 1, v132);
  v135 = *(v193 + 48);
  v55 = v182;
  *v182 = v82;
  *(v55 + 4) = v95;
  sub_1B03C60A4(v134, v55 + v135, &qword_1EB6E2070, &qword_1B0E9F040);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_38:
  v136 = v187;
  v137 = v192;
  v139 = *(v36 + 2);
  v138 = *(v36 + 3);
  if (v139 >= v138 >> 1)
  {
    v173 = sub_1B0AFFD78(v138 > 1, v139 + 1, 1, v36);
    v136 = v187;
    v36 = v173;
  }

  (*(v136 + 8))();
  *(v36 + 2) = v139 + 1;
  result = sub_1B03C60A4(v55, v36 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v139, &qword_1EB6E41B8, &qword_1B0EC4100);
  v40->isa = v36;
LABEL_41:
  if (BYTE4(v40[1].isa) != 1)
  {
    return result;
  }

  v140 = v40[1].isa;
  v141 = v40->isa;
  v142 = *(v40->isa + 2);
  if (!v142)
  {
    v150 = v201;
    if (v140)
    {
      return result;
    }

LABEL_58:
    LODWORD(v150[1].isa) = v140;
    BYTE4(v150[1].isa) = 0;
    return result;
  }

  LODWORD(v203) = v140;
  v143 = 0;
  v144 = v193;
  v145 = (*(v192 + 80) + 32) & ~*(v192 + 80);
  v202 = v141;
  v146 = v141 + v145;
  v147 = *(v192 + 72);
  v200 = v146;
  v148 = v179;
  do
  {
    v149 = v147;
    sub_1B03B5C80(v146, v148, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v148, a2, &qword_1EB6E41B8, &qword_1B0EC4100);
    if (*(a2 + 4) > v143)
    {
      v143 = *(a2 + 4);
    }

    result = sub_1B0398EFC(a2 + *(v144 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    v147 = v149;
    v146 += v149;
    --v142;
  }

  while (v142);
  v140 = v203;
  v150 = v201;
  if (v143 == v203)
  {
    goto LABEL_58;
  }

  v151 = *(v202 + 16);
  if (!v151)
  {
    if (v203)
    {
      return result;
    }

LABEL_61:
    v163 = type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error);
    v201 = v163;
    v194 = swift_allocError();
    v199 = v164;
    v165 = *(v202 + 16);
    if (v165)
    {
      v166 = 0;
      v167 = v193;
      v168 = v176;
      v169 = v175;
      v170 = v200;
      do
      {
        sub_1B03B5C80(v170, v169, &qword_1EB6E41B8, &qword_1B0EC4100);
        sub_1B03C60A4(v169, v168, &qword_1EB6E41B8, &qword_1B0EC4100);
        if (*(v168 + 4) > v166)
        {
          v166 = *(v168 + 4);
        }

        sub_1B0398EFC(v168 + *(v167 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        v170 += v149;
        --v165;
      }

      while (v165);
    }

    else
    {
      v166 = 0;
    }

    v171 = v199;
    v172 = v203;
    LODWORD(v199->isa) = v166;
    HIDWORD(v171->isa) = v172;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v152 = 0;
  v153 = v200;
  v154 = v193;
  v155 = v178;
  v156 = v177;
  do
  {
    sub_1B03B5C80(v153, v156, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v156, v155, &qword_1EB6E41B8, &qword_1B0EC4100);
    if (*(v155 + 4) > v152)
    {
      v152 = *(v155 + 4);
    }

    result = sub_1B0398EFC(v155 + *(v154 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    v153 += v149;
    --v151;
  }

  while (v151);
  if (v152 >= v203)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_1B0B82A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v11 - v5);
  result = sub_1B0E432F8();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1B03B5C80(v9, v6, &qword_1EB6E41B8, &qword_1B0EC4100);
      result = *v6;
      if (v6[1] < result)
      {
        break;
      }

      sub_1B0E43298();
      result = sub_1B0398EFC(v6, &qword_1EB6E41B8, &qword_1B0EC4100);
      v9 += v10;
      if (!--v8)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B82B94@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = (&v82 - v11);
  v12 = sub_1B0E443C8();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v82 - v18);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v103 = *(v108 - 8);
  v20 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v105 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v96 = (&v82 - v23);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v101 = *(v107 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v94 = (&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v82 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v98 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v95 = (&v82 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v82 - v36);
  v38 = *v1;
  v97 = sub_1B0B83818(*v1, *(v1 + 8) | (*(v1 + 12) << 32));
  v90 = v39;
  if (v40 == 1)
  {
    v86 = v30;
    v83 = v1;
    v87 = v19;
    v85 = v7;
    v99 = v12;
    v84 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v38;
    v91 = *(v38 + 16);
    v106 = v38;
    if (v91)
    {
      v43 = 0;
      v44 = &qword_1EB6E4C40;
      while (v43 < v42[2])
      {
        v102 = v41;
        v45 = v42 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v43;
        v46 = v107;
        v47 = *(v107 + 48);
        v48 = v95;
        *v95 = v43;
        sub_1B03B5C80(v45, v48 + v47, &qword_1EB6E41B8, &qword_1B0EC4100);
        v2 = v44;
        sub_1B03C60A4(v48, v37, v44, &qword_1B0EC98A0);
        v49 = (v37 + *(v46 + 48));
        v50 = v108;
        v51 = *(v108 + 48);
        v52 = v96;
        *v96 = *v49;
        sub_1B03B5C80(v49 + v51, v52 + v51, &qword_1EB6E2070, &qword_1B0E9F040);
        v53 = v105;
        sub_1B03C60A4(v52, v105, &qword_1EB6E41B8, &qword_1B0EC4100);
        a1 = *v53;
        sub_1B0398EFC(v53 + *(v50 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        if (v97 > a1 || v90 <= a1)
        {
          v44 = v2;
          sub_1B0398EFC(v37, v2, &qword_1B0EC98A0);
          v42 = v106;
          v41 = v102;
        }

        else
        {
          v44 = v2;
          sub_1B03C60A4(v37, v98, v2, &qword_1B0EC98A0);
          v41 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B0A104(0, *(v41 + 16) + 1, 1);
            v41 = v109;
          }

          v42 = v106;
          v56 = *(v41 + 16);
          v55 = *(v41 + 24);
          a1 = (v56 + 1);
          if (v56 >= v55 >> 1)
          {
            sub_1B0B0A104(v55 > 1, v56 + 1, 1);
            v41 = v109;
          }

          *(v41 + 16) = a1;
          sub_1B03C60A4(v98, v41 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v56, v2, &qword_1B0EC98A0);
        }

        v43 = (v43 + 1);
        if (v91 == v43)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v109 = v41;

      sub_1B0B83CC0(&v109);

      v37 = v109;
      sub_1B0E44378();
      v2 = v88;
      v59 = v86;
      v98 = v37[2];
      if (!v98)
      {
        v69 = *(v89 + 32);
        v68 = (v89 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
LABEL_24:
        v43 = v87;
        v2 = v99;
        v90 = v68;
        v102 = v69;
        v69(v87, v100, v99);
        v70 = v37[2];
        if (v70)
        {
          v109 = MEMORY[0x1E69E7CC0];
          sub_1B0452620(0, v70, 0);
          v41 = v109;
          v71 = v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
          v72 = *(v101 + 72);
          do
          {
            v73 = v104;
            sub_1B03B5C80(v71, v104, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v74 = v94;
            sub_1B03C60A4(v73, v94, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v75 = *v74;
            sub_1B0398EFC(v74 + *(v107 + 48) + *(v108 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
            v109 = v41;
            v77 = *(v41 + 16);
            v76 = *(v41 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_1B0452620((v76 > 1), v77 + 1, 1);
              v41 = v109;
            }

            *(v41 + 16) = v77 + 1;
            *(v41 + 8 * v77 + 32) = v75;
            v71 += v72;
            --v70;
          }

          while (v70);

          v2 = v99;
          v43 = v87;
          v42 = v106;
        }

        else
        {

          v41 = MEMORY[0x1E69E7CC0];
        }

        a1 = *(v41 + 16);
        v37 = v85;
        if (!a1)
        {

LABEL_39:
          v81 = v84;
          v102(v84, v43, v2);
          return (*(v89 + 56))(v81, 0, 1, v2);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v78 = *(v89 + 56);
          v79 = 32;
          do
          {
            v80 = *(v41 + v79);
            v78(v37, 1, 1, v2);
            if ((v80 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v80 >= *(v106 + 16))
            {
              goto LABEL_43;
            }

            sub_1B075F6A0(v37, (v106 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v80 + *(v108 + 48)));
            v79 += 8;
            a1 = (a1 - 1);
          }

          while (a1);

          *v83 = v106;
          goto LABEL_39;
        }

LABEL_44:
        v106 = sub_1B0B8C914(v42);
        goto LABEL_33;
      }

      v41 = 0;
      v95 = (v89 + 8);
      v43 = &qword_1EB6E4C40;
      a1 = &qword_1B0EC98A0;
      v96 = (v89 + 32);
      v97 = (v89 + 48);
      v90 = (v89 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v91 = v37;
      while (v41 < v37[2])
      {
        v60 = v41;
        sub_1B03B5C80(v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v41, v59, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v61 = v104;
        sub_1B03B5C80(v59, v104, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v62 = v61 + *(v107 + 48);
        v63 = *(v108 + 48);
        v64 = v105;
        sub_1B03C60A4(v62 + v63, v105 + v63, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B03C60A4(v64 + v63, v2, &qword_1EB6E2070, &qword_1B0E9F040);
        v65 = v93;
        sub_1B03B5C80(v2, v93, &qword_1EB6E2070, &qword_1B0E9F040);
        v66 = v2;
        v67 = v99;
        if ((*v97)(v65, 1, v99) == 1)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v42 = v92;
        v102 = *v96;
        v102(v92, v65, v67);
        sub_1B0E44388();
        v41 = v60 + 1;
        (*v95)(v42, v67);
        sub_1B0398EFC(v66, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v59, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v2 = v66;
        v37 = v91;
        if (v98 == v60 + 1)
        {
          v42 = v106;
          v68 = v90;
          v69 = v102;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v57 = *(v89 + 56);

  return v57(a1, 1, 1, v12);
}

uint64_t sub_1B0B83690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  result = sub_1B0E432F8();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v10, v6, &qword_1EB6E41B8, &qword_1B0EC4100);
      v12 = sub_1B0E443C8();
      if ((*(*(v12 - 8) + 48))(&v6[v9], 1, v12) != 1)
      {
        result = *v6;
        if (*(v6 + 1) < result)
        {
          __break(1u);
          return result;
        }

        sub_1B0E43298();
      }

      result = sub_1B0398EFC(v6, &qword_1EB6E41B8, &qword_1B0EC4100);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1B0B83818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E432D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = sub_1B0E43308();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  if ((a2 & 0xFFFFFFFFFFLL) != 0)
  {
    v46 = a2 & 0xFFFFFFFFFFLL;
    v47 = v21;
    v45 = a2;
    v48 = a1;
    sub_1B0B82A64(a1);
    sub_1B0E432E8();
    v24 = *(v12 + 8);
    v24(v23, v11);
    sub_1B0B83D74(&qword_1EB6DECC0, MEMORY[0x1E6969B30]);
    sub_1B0E45668();
    sub_1B0E456C8();
    if (v51 == v50[0])
    {
      (*(v5 + 8))(v10, v4);
      return 0;
    }

    v25 = sub_1B0E457B8();
    v27 = *v26;
    v44 = v26[1];
    v25(v50, 0);
    v29 = *(v5 + 8);
    v28 = v5 + 8;
    v30 = v10;
    v31 = v29;
    v29(v30, v4);
    if (v27)
    {
      return 0;
    }

    v42 = v31;
    v43 = v28;
    sub_1B0B83690(v48);
    sub_1B0E43238();
    v33 = v24;
    v34 = v47;
    sub_1B0E43248();
    v33(v15, v11);
    v33(v18, v11);
    v35 = v49;
    sub_1B0E432E8();
    v33(v34, v11);
    sub_1B0E45668();
    sub_1B0E456C8();
    if (v51 != v50[0])
    {
      v37 = sub_1B0E457B8();
      v39 = *v38;
      v40 = v38[1];
      v37(v50, 0);
      v42(v35, v4);
      return v39;
    }

    v36 = v45;
    v42(v35, v4);
    result = v44;
    if ((v36 & 0xFF00000000) != 0 || v44 != v36)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v44))
        {
          return result;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  return 0;
}

double sub_1B0B83C94@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_1B0B83CC0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0B945EC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B0B83DBC(v5);
  *a1 = v3;
}

uint64_t sub_1B0B83D74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B0B83DBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B0E469A8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1B0B8426C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1B0B83F00(0, v2, 1, a1);
  }
}

void sub_1B0B83F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v8 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v47 = -v20;
    v48 = v19;
    v22 = &qword_1EB6E4C40;
    v23 = a1 - a3;
    v41 = v20;
    v24 = v19 + v20 * a3;
    v25 = &qword_1B0EC98A0;
LABEL_5:
    v45 = v21;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v54 = v23;
    v26 = v53;
    while (1)
    {
      v27 = v57;
      sub_1B03B5C80(v24, v57, v22, v25);
      v28 = v50;
      sub_1B03B5C80(v21, v50, v22, v25);
      v29 = v22;
      v30 = v51;
      sub_1B03B5C80(v27, v51, v29, v25);
      v31 = (v30 + *(v26 + 48));
      v56 = *v31;
      v32 = v25;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
      v55 = *(v33 + 48);
      v34 = v52;
      sub_1B03B5C80(v28, v52, v29, v32);
      v35 = (v34 + *(v26 + 48));
      v22 = v29;
      v36 = *v35;
      v37 = *(v33 + 48);
      v25 = v32;
      sub_1B0398EFC(v35 + v37, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v31 + v55, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v28, v29, v32);
      sub_1B0398EFC(v57, v29, v32);
      v38 = v56 >= v36;
      v26 = v53;
      if (v38)
      {
LABEL_4:
        a3 = v46 + 1;
        v21 = v45 + v41;
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v39 = v49;
      sub_1B03C60A4(v24, v49, v29, v32);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B03C60A4(v39, v21, v29, v32);
      v21 += v47;
      v24 += v47;
      v38 = __CFADD__(v54++, 1);
      if (v38)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B0B8426C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v129 - v21;
  v22 = a3[1];
  v137 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v23 = v24;
    v24 = *v133;
    if (!*v133)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v154 = v23;
      v125 = *(v23 + 16);
      if (v125 >= 2)
      {
        while (*a3)
        {
          v126 = *(v23 + 16 * v125);
          v127 = *(v23 + 16 * (v125 - 1) + 40);
          sub_1B0B84E7C(*a3 + *(v141 + 72) * v126, *a3 + *(v141 + 72) * *(v23 + 16 * (v125 - 1) + 32), *a3 + *(v141 + 72) * v127, v24);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v127 < v126)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1B0B9443C(v23);
          }

          if (v125 - 2 >= *(v23 + 16))
          {
            goto LABEL_124;
          }

          v128 = (v23 + 16 * v125);
          *v128 = v126;
          v128[1] = v127;
          v154 = v23;
          sub_1B0B943B0(v125 - 1);
          v23 = v154;
          v125 = *(v154 + 16);
          a3 = v137;
          if (v125 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v23 = sub_1B0B9443C(v23);
    goto LABEL_100;
  }

  v130 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v20;
  v151 = v20;
  while (1)
  {
    if (v23 + 1 >= v22)
    {
      v39 = v23 + 1;
    }

    else
    {
      v143 = v22;
      v131 = v24;
      v132 = v5;
      v26 = v23;
      v134 = v23;
      v153 = *a3;
      v27 = v153;
      v28 = *(v141 + 72);
      v29 = &v153[v28 * (v23 + 1)];
      v30 = v147;
      sub_1B03B5C80(v29, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v31 = v148;
      sub_1B03B5C80(v27 + v28 * v26, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v32 = v149;
      sub_1B03B5C80(v30, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v33 = (v32 + *(v25 + 48));
      LODWORD(v140) = *v33;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
      v152 = *(v34 + 48);
      v24 = &qword_1B0EC98A0;
      v35 = v150;
      sub_1B03B5C80(v31, v150, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v36 = (v35 + *(v25 + 48));
      LODWORD(v139) = *v36;
      v138 = v34;
      sub_1B0398EFC(v36 + *(v34 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v33 + v152, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v31, &qword_1EB6E4C40, &qword_1B0EC98A0);
      sub_1B0398EFC(v30, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v37 = v134 + 2;
      v142 = v28;
      v38 = &v153[v28 * (v134 + 2)];
      while (1)
      {
        v39 = v143;
        if (v143 == v37)
        {
          break;
        }

        LODWORD(v153) = v140 < v139;
        v40 = v147;
        sub_1B03B5C80(v38, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v41 = v29;
        v42 = v148;
        sub_1B03B5C80(v29, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v43 = v149;
        sub_1B03B5C80(v40, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v44 = v151;
        v45 = (v43 + *(v151 + 48));
        LODWORD(v152) = *v45;
        v46 = v138;
        v144 = *(v138 + 48);
        v47 = v150;
        sub_1B03B5C80(v42, v150, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v48 = (v47 + *(v44 + 48));
        LODWORD(v145) = *v48;
        sub_1B0398EFC(v48 + *(v46 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v45 + v144, &qword_1EB6E2070, &qword_1B0E9F040);
        v24 = &qword_1B0EC98A0;
        sub_1B0398EFC(v42, &qword_1EB6E4C40, &qword_1B0EC98A0);
        sub_1B0398EFC(v40, &qword_1EB6E4C40, &qword_1B0EC98A0);
        ++v37;
        v38 += v142;
        v29 = v41 + v142;
        if (((v153 ^ (v152 >= v145)) & 1) == 0)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v25 = v151;
      v5 = v132;
      a3 = v137;
      v23 = v134;
      if (v140 >= v139)
      {
        goto LABEL_24;
      }

      if (v39 < v134)
      {
        goto LABEL_127;
      }

      if (v134 >= v39)
      {
LABEL_24:
        v24 = v131;
      }

      else
      {
        v49 = v39;
        v50 = v142 * (v39 - 1);
        v51 = v39 * v142;
        v143 = v39;
        v52 = v134;
        v53 = v134 * v142;
        do
        {
          if (v52 != --v49)
          {
            v54 = *v137;
            if (!*v137)
            {
              goto LABEL_133;
            }

            sub_1B03C60A4(v54 + v53, v136, &qword_1EB6E4C40, &qword_1B0EC98A0);
            if (v53 < v50 || v54 + v53 >= (v54 + v51))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B03C60A4(v136, v54 + v50, &qword_1EB6E4C40, &qword_1B0EC98A0);
          }

          ++v52;
          v50 -= v142;
          v51 -= v142;
          v53 += v142;
        }

        while (v52 < v49);
        v5 = v132;
        v24 = v131;
        v25 = v151;
        a3 = v137;
        v23 = v134;
        v39 = v143;
      }
    }

    v55 = a3[1];
    if (v39 >= v55)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v39, v23))
    {
      goto LABEL_126;
    }

    if (v39 - v23 >= v130)
    {
LABEL_35:
      v57 = v39;
      if (v39 < v23)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v23, v130))
    {
      goto LABEL_128;
    }

    if (v23 + v130 >= v55)
    {
      v56 = a3[1];
    }

    else
    {
      v56 = v23 + v130;
    }

    if (v56 < v23)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v39 == v56)
    {
      goto LABEL_35;
    }

    v131 = v24;
    v132 = v5;
    v105 = *a3;
    v106 = *(v141 + 72);
    v107 = *a3 + v106 * (v39 - 1);
    v144 = -v106;
    v145 = v105;
    v134 = v23;
    v135 = v106;
    v108 = v23 - v39;
    v109 = v105 + v39 * v106;
    v110 = v25;
    v138 = v56;
LABEL_89:
    v142 = v107;
    v143 = v39;
    v139 = v109;
    v140 = v108;
    v111 = v109;
    v112 = v108;
LABEL_90:
    v152 = v112;
    v113 = v147;
    sub_1B03B5C80(v111, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v114 = v148;
    sub_1B03B5C80(v107, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v115 = v149;
    sub_1B03B5C80(v113, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v116 = (v115 + *(v110 + 48));
    LODWORD(v153) = *v116;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
    v118 = *(v117 + 48);
    v119 = v150;
    sub_1B03B5C80(v114, v150, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v120 = (v119 + *(v110 + 48));
    v121 = *v120;
    sub_1B0398EFC(v120 + *(v117 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    sub_1B0398EFC(v116 + v118, &qword_1EB6E2070, &qword_1B0E9F040);
    sub_1B0398EFC(v114, &qword_1EB6E4C40, &qword_1B0EC98A0);
    sub_1B0398EFC(v113, &qword_1EB6E4C40, &qword_1B0EC98A0);
    if (v153 < v121)
    {
      break;
    }

    v110 = v151;
LABEL_88:
    v39 = v143 + 1;
    v107 = v142 + v135;
    v108 = v140 - 1;
    v109 = v139 + v135;
    v57 = v138;
    if (v143 + 1 != v138)
    {
      goto LABEL_89;
    }

    v5 = v132;
    a3 = v137;
    v24 = v131;
    v23 = v134;
    if (v138 < v134)
    {
      goto LABEL_125;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B0AFF300(0, *(v24 + 2) + 1, 1, v24);
    }

    v60 = *(v24 + 2);
    v59 = *(v24 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v24 = sub_1B0AFF300((v59 > 1), v60 + 1, 1, v24);
    }

    *(v24 + 2) = v61;
    v62 = &v24[16 * v60];
    v63 = v138;
    *(v62 + 4) = v23;
    *(v62 + 5) = v63;
    v153 = *v133;
    if (!v153)
    {
      goto LABEL_135;
    }

    if (v60)
    {
      v25 = v151;
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v24 + 4);
          v66 = *(v24 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_56:
          if (v68)
          {
            goto LABEL_114;
          }

          v81 = &v24[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_117;
          }

          v87 = &v24[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_121;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v91 = &v24[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_70:
        if (v86)
        {
          goto LABEL_116;
        }

        v94 = &v24[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_119;
        }

        if (v97 < v85)
        {
          goto LABEL_4;
        }

LABEL_77:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v103 = *&v24[16 * v102 + 32];
        v23 = *&v24[16 * v64 + 40];
        sub_1B0B84E7C(*a3 + *(v141 + 72) * v103, *a3 + *(v141 + 72) * *&v24[16 * v64 + 32], *a3 + *(v141 + 72) * v23, v153);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v23 < v103)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B0B9443C(v24);
        }

        if (v102 >= *(v24 + 2))
        {
          goto LABEL_111;
        }

        v104 = &v24[16 * v102];
        *(v104 + 4) = v103;
        *(v104 + 5) = v23;
        v154 = v24;
        sub_1B0B943B0(v64);
        v24 = v154;
        v61 = *(v154 + 16);
        v25 = v151;
        if (v61 <= 1)
        {
          goto LABEL_4;
        }
      }

      v69 = &v24[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_112;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_113;
      }

      v76 = &v24[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_115;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_118;
      }

      if (v80 >= v72)
      {
        v98 = &v24[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_122;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v25 = v151;
LABEL_4:
    v22 = a3[1];
    v23 = v138;
    if (v138 >= v22)
    {
      goto LABEL_98;
    }
  }

  v122 = v152;
  if (v145)
  {
    v123 = v146;
    sub_1B03C60A4(v111, v146, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v110 = v151;
    swift_arrayInitWithTakeFrontToBack();
    sub_1B03C60A4(v123, v107, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v107 += v144;
    v111 += v144;
    v124 = __CFADD__(v122, 1);
    v112 = v122 + 1;
    if (v124)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
}

void sub_1B0B84E7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v8 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v53 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v70 = a1;
  v69 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v21;
    if (v21 >= 1)
    {
      v36 = -v17;
      v37 = v35;
      v65 = a4;
      v66 = a1;
      v55 = -v17;
      while (2)
      {
        while (1)
        {
          v53 = v35;
          v38 = a2 + v36;
          v56 = a2;
          v57 = a2 + v36;
          while (1)
          {
            if (a2 <= a1)
            {
              v70 = a2;
              v68 = v53;
              goto LABEL_59;
            }

            v40 = a3;
            v54 = v35;
            v64 = a3 + v36;
            v41 = v37 + v36;
            v42 = v37 + v36;
            v43 = v59;
            sub_1B03B5C80(v42, v59, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v44 = v60;
            sub_1B03B5C80(v38, v60, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v45 = v61;
            sub_1B03B5C80(v43, v61, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v46 = v67;
            v47 = (v45 + *(v67 + 48));
            v63 = *v47;
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
            v58 = *(v48 + 48);
            v49 = v62;
            sub_1B03B5C80(v44, v62, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v50 = (v49 + *(v46 + 48));
            LODWORD(v46) = *v50;
            sub_1B0398EFC(v50 + *(v48 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
            sub_1B0398EFC(v47 + v58, &qword_1EB6E2070, &qword_1B0E9F040);
            sub_1B0398EFC(v44, &qword_1EB6E4C40, &qword_1B0EC98A0);
            sub_1B0398EFC(v43, &qword_1EB6E4C40, &qword_1B0EC98A0);
            if (v63 < v46)
            {
              break;
            }

            v35 = v41;
            a3 = v64;
            v51 = v65;
            if (v40 < v37 || v64 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v57;
              a1 = v66;
              v36 = v55;
            }

            else
            {
              v38 = v57;
              a1 = v66;
              v36 = v55;
              if (v40 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v41;
            v39 = v41 > v51;
            a2 = v56;
            if (!v39)
            {
              goto LABEL_57;
            }
          }

          a3 = v64;
          v52 = v65;
          if (v40 < v56 || v64 >= v56)
          {
            break;
          }

          a2 = v57;
          a1 = v66;
          v35 = v54;
          v36 = v55;
          if (v40 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v37 <= v52)
          {
            goto LABEL_57;
          }
        }

        a2 = v57;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v66;
        v35 = v54;
        v36 = v55;
        if (v37 > v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v70 = a2;
    v68 = v35;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v20;
    v68 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v64 = a3;
      v57 = v17;
      v23 = v59;
      do
      {
        v65 = a4;
        v66 = a1;
        sub_1B03B5C80(a2, v23, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v24 = v60;
        sub_1B03B5C80(a4, v60, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v25 = v61;
        sub_1B03B5C80(v23, v61, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v26 = v67;
        v27 = (v25 + *(v67 + 48));
        v63 = *v27;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
        v29 = *(v28 + 48);
        v30 = v62;
        sub_1B03B5C80(v24, v62, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v31 = (v30 + *(v26 + 48));
        LODWORD(v26) = *v31;
        sub_1B0398EFC(v31 + *(v28 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v27 + v29, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v24, &qword_1EB6E4C40, &qword_1B0EC98A0);
        sub_1B0398EFC(v23, &qword_1EB6E4C40, &qword_1B0EC98A0);
        if (v63 >= v26)
        {
          v32 = v57;
          v33 = v66;
          a4 = v65 + v57;
          if (v66 < v65 || v66 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v64;
          }

          else
          {
            v34 = v64;
            if (v66 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = a4;
        }

        else
        {
          v32 = v57;
          a4 = v65;
          v33 = v66;
          if (v66 < a2 || v66 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v32;
            v34 = v64;
          }

          else
          {
            v34 = v64;
            if (v66 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v32;
          }
        }

        a1 = v33 + v32;
        v70 = a1;
      }

      while (a4 < v58 && a2 < v34);
    }
  }

LABEL_59:
  sub_1B0BC10E4(&v70, &v69, &v68);
}

uint64_t sub_1B0B85580()
{
  v0 = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1B0B855D8()
{
  sub_1B0B856D0();
  if (v0 <= 0x3F)
  {
    sub_1B0B85700();
    if (v1 <= 0x3F)
    {
      sub_1B0B85730();
      if (v2 <= 0x3F)
      {
        sub_1B0B857B0();
        if (v3 <= 0x3F)
        {
          sub_1B0B85884(319, &qword_1EB6E4C80);
          if (v4 <= 0x3F)
          {
            sub_1B0B8581C();
            if (v5 <= 0x3F)
            {
              sub_1B0B85884(319, &qword_1EB6E4C90);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B0B856D0()
{
  result = qword_1EB6E4C58;
  if (!qword_1EB6E4C58)
  {
    result = MEMORY[0x1E69E7668];
    atomic_store(MEMORY[0x1E69E7668], &qword_1EB6E4C58);
  }

  return result;
}

uint64_t sub_1B0B85700()
{
  result = qword_1EB6E4C60;
  if (!qword_1EB6E4C60)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB6E4C60);
  }

  return result;
}

void sub_1B0B85730()
{
  if (!qword_1EB6E4C68)
  {
    sub_1B0E43308();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4C70, "X{\t");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6E4C68);
    }
  }
}

void sub_1B0B857B0()
{
  if (!qword_1EB6E4C78)
  {
    sub_1B0E43308();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6E4C78);
    }
  }
}

void sub_1B0B8581C()
{
  if (!qword_1EB6E4C88)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6E4C88);
    }
  }
}

void sub_1B0B85884(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentResequencer.ByteCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B8597C(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0B85994(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_1B0B859BC(uint64_t *a1, uint64_t *a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B0B85D10(v11 + v13, v10);
  v14 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B0B85D10(v12 + v14, v7);
  LOBYTE(v12) = sub_1B0B85D74(v10, v7);
  sub_1B0B85E18(v7);
  sub_1B0B85E18(v10);
  return v12 & 1;
}

uint64_t sub_1B0B85AD8()
{
  sub_1B0B85E18(v0 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0B85B64()
{
  result = _s13SelectedStateV7WrappedVMa(319);
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

void sub_1B0B85C2C()
{
  type metadata accessor for MailboxSyncState();
  if (v0 <= 0x3F)
  {
    sub_1B0B85CC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B85CC0()
{
  if (!qword_1EB6DC970)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DC970);
    }
  }
}

uint64_t sub_1B0B85D10(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B85D74(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s13SelectedStateV7WrappedVMa(0);
  if ((sub_1B03D0ED0(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0B85E18(uint64_t a1)
{
  v2 = _s13SelectedStateV7WrappedVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B85E9C()
{
  result = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B85F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1B0B85F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B86000(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 16);
  result = swift_beginAccess();
  if (v6)
  {
    v8 = 0;
    v9 = a2 + 32;
LABEL_3:
    v10 = (v9 + 176 * v8);
    while (v8 < v6)
    {
      v11 = v10[9];
      v23 = v10[8];
      v24 = v11;
      v25 = v10[10];
      v12 = v10[5];
      v22[4] = v10[4];
      v22[5] = v12;
      v13 = v10[7];
      v22[6] = v10[6];
      v22[7] = v13;
      v14 = v10[1];
      v22[0] = *v10;
      v22[1] = v14;
      v15 = v10[3];
      v22[2] = v10[2];
      v22[3] = v15;
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_13;
      }

      v17 = *(&v23 + 1);
      v18 = *a3;
      sub_1B03A35B8(v22, &v21);
      v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v17) = sub_1B0B8715C(v19, v17);

      result = sub_1B03A3614(v22);
      if ((v17 & 1) == 0)
      {
        if (!__OFADD__(a1++, 1))
        {
          ++v8;
          if (v16 != v6)
          {
            goto LABEL_3;
          }

          return a1;
        }

LABEL_14:
        __break(1u);
        return result;
      }

      ++v8;
      v10 += 11;
      if (v16 == v6)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_1B0B86138(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1B03D0E54(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return sub_1B0B861CC;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B0B861D8(uint64_t a1, unsigned int a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = BYTE1(__dst[3]);
  v6 = __dst[4];
  v7 = BYTE2(__dst[2]);
  v8 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0397D14();
  v10 = v9;
  v21 = v7;
  if (v6 == 3 || v6 == 2)
  {

    if ((__dst[24] & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  sub_1B0BAE1A4(v9);
  sub_1B0397E04(&unk_1F2710548, v8);
  sub_1B0BAE1A4(v10);
  v16 = sub_1B039109C(v8);

  v17 = a2;
  if (v16 & 1) == 0 && (v5)
  {
    sub_1B0BAE1A4(v10);
  }

  v18 = *(v10 + 16);

  a2 = v17;
  if (__dst[24])
  {
LABEL_4:
    v13 = __dst[22];
    v12 = __dst[23];
    v14 = __dst[21];
    v20 = __dst[21];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2AE44(&v20, a1, a2, 0);
    result = sub_1B03BB638(v14, v13, v12, 1);
    v15 = v20;
    *(__src + 22) = 0;
    *(__src + 23) = 0;
    *(__src + 21) = v15;
    *(__src + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0B86564(uint64_t a1, unsigned int a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  v7 = LOBYTE(__dst[3]);
  v8 = BYTE1(__dst[3]);
  v9 = __dst[4];
  v10 = LOBYTE(__dst[5]);
  v11 = BYTE2(__dst[2]);
  v12 = __dst[6];
  v13 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0397D14();
  v15 = v14;
  v49 = v11;
  v46 = a4;
  if (v9 == 3 || v9 == 2)
  {

    v16 = 0;
    v17 = 0;
    v18 = 0x100000000000000;
    v19 = 0x100000000;
    v20 = 0x1000000;
    v21 = 512;
    v22 = 1;
    goto LABEL_71;
  }

  v23 = sub_1B0BAE1A4(v14);
  if ((v8 & 1) == 0)
  {
    if (v9 == 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v24 = 0;
          v19 = 0x100000000;
          v25 = 512;
LABEL_77:
          v41 = v25;
          goto LABEL_19;
        }

LABEL_76:
        v24 = 0;
        v19 = 0;
        v7 = 1;
        v25 = 256;
        goto LABEL_77;
      }
    }

    else if (!v9 && v7)
    {
      if (v7 != 1)
      {
        v7 = 0;
        v41 = 0;
        v24 = 0;
        v19 = 0;
        goto LABEL_19;
      }

      goto LABEL_76;
    }
  }

  v7 = (v23 & 1) == 0;
  if (v23)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x100000000;
  }

  v26 = 512;
  if (v23)
  {
    v26 = 0;
  }

  v41 = v26;
  v24 = (v23 & 1) == 0;
LABEL_19:
  v27 = sub_1B0397E04(&unk_1F2710548, v13);
  if (v27)
  {
    v28 = v7;
  }

  else
  {
    v28 = 1;
  }

  v42 = v28;
  v29 = (v27 & 1) == 0 || v24;
  v40 = v29;
  v30 = sub_1B0BAE1A4(v15);
  v31 = sub_1B039109C(v13);

  v32 = v31 ^ 1;
  if (v31 & 1) == 0 && (v8)
  {
    v32 = sub_1B0BAE1A4(v15);
    v31 = v32 ^ 1;
  }

  v33 = *(v15 + 16);

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v35 = 0x10000;
      if ((v32 & 1) == 0)
      {
        v35 = 0;
      }

      if (v31)
      {
        v16 = v35;
      }

      else
      {
        v16 = 0x20000;
      }
    }

    else if (v32)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= 3989)
    {
      v21 = 512;
    }

    else
    {
      v21 = v41;
    }

    if (((v33 == 0) & v8) != 0)
    {
      v18 = 0x100000000000000;
    }

    else
    {
      v18 = 0;
    }

    if (v30)
    {
      v17 = 0x10000000000;
    }

    else
    {
      v17 = 0;
    }

    if ((v40 & 1) == 0)
    {
      v20 = 0;
      v34 = v42;
      goto LABEL_70;
    }

    v34 = v42;
  }

  else
  {
    v16 = 0;
    if (v10)
    {
      v20 = 0;
      if (v12 >= 3989)
      {
        v21 = 512;
      }

      else
      {
        v21 = v41;
      }

      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = v42;
      if ((v40 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (((v33 == 0) & v8) != 0)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        v17 = 0x10000000000;
      }

      else
      {
        v17 = 0;
      }

      v34 = 1;
      v21 = 512;
    }
  }

  v20 = 0x1000000;
LABEL_70:
  v22 = v34;
LABEL_71:
  *v51 = *&__dst[21];
  *&v51[9] = *(&__dst[22] + 1);
  if (__dst[24])
  {
    v36 = v49;
    v48 = *v51;
    sub_1B0B94FFC(v51, v47);
    v37 = 0x1000000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    sub_1B0B2B14C(&v48, a1, a2, 0, a3, v46, v16 | v21 | v22 | v20 | v19 | v17 | v18 | v37);
    result = sub_1B0B95058(v51);
    v39 = v48;
    v5[22] = 0;
    v5[23] = 0;
    v5[21] = v39;
    *(v5 + 192) = 1;
  }

  else
  {
    sub_1B0B94FFC(v51, v47);
  }

  return result;
}

uint64_t sub_1B0B86910(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B0E460B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B0A9CD58(&v5, v3, *(a1 + 36), 0, a1);
  }
}

_BYTE *sub_1B0B86998(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B0E460B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B0A9CDFC(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1B0B86A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1B0E460B8();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    result = sub_1B0A9CE80(&v12, v5, *(a1 + 36), 0, a1);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_1B0B86AC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B0E460B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1B0B94D00(v3, *(a1 + 36), 0, a1);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0B86B3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for State.Logger();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56[-v9];
  memcpy(v70, v1, sizeof(v70));
  v11 = sub_1B03B9A74();
  memcpy(v69, v1, sizeof(v69));
  v12 = sub_1B0B87F18(v11);
  v13 = v12;
  if (!*(v12 + 16))
  {
LABEL_11:

    goto LABEL_14;
  }

  v14 = sub_1B0B86AC8(v12);
  if (!v14)
  {
LABEL_8:
    sub_1B03906B8(a1, v8, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = sub_1B0E43988();
    v34 = sub_1B0E45908();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v61 = a1;
      v36 = v35;
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v36 = 68158466;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v38 = v8[*(v4 + 20)];
      sub_1B0390514(v8, type metadata accessor for State.Logger);
      *(v36 + 10) = v38;
      *(v36 + 11) = 2082;
      v39 = sub_1B0B88A40(v11);
      v41 = v40;

      v42 = sub_1B0399D64(v39, v41, v64);

      *(v36 + 13) = v42;
      *(v36 + 21) = 2048;
      v43 = *(v13 + 16);

      *(v36 + 23) = v43;

      _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx] Push sync %{public}s for %ld mailbox(es)", v36, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1B272C230](v37, -1, -1);
      v44 = v36;
      a1 = v61;
      MEMORY[0x1B272C230](v44, -1, -1);

      goto LABEL_14;
    }

    sub_1B0390514(v8, type metadata accessor for State.Logger);

    goto LABEL_11;
  }

  if (*(v13 + 16) != 1)
  {

    goto LABEL_8;
  }

  v16 = *(v1 + 184);
  v17 = *(v1 + 216);
  v67 = *(v1 + 200);
  v68[0] = v17;
  *(v68 + 12) = *(v1 + 228);
  v65 = *(v1 + 168);
  v66 = v16;
  v18 = v14;
  v59 = v15;
  v19 = sub_1B0B29590(v14, v15);
  sub_1B03906B8(a1, v10, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61 = a1;
  v20 = sub_1B0E43988();
  v21 = sub_1B0E45908();
  v60 = v18;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = v19;
    v23 = v22;
    v58 = swift_slowAlloc();
    v63[0] = v58;
    *v23 = 68159235;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = v10[*(v4 + 20)];
    sub_1B0390514(v10, type metadata accessor for State.Logger);
    *(v23 + 10) = v24;
    *(v23 + 11) = 2082;
    v25 = sub_1B0B88A40(v11);
    v27 = v26;

    v28 = sub_1B0399D64(v25, v27, v63);

    *(v23 + 13) = v28;
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    *(v23 + 29) = v57;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v64[0] = v60;
    LODWORD(v64[1]) = v59;
    v29 = sub_1B0E44BA8();
    v31 = sub_1B0399D64(v29, v30, v63);

    *(v23 + 43) = v31;
    _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx] Push sync %{public}s for mailbox {%.*hx} '%{sensitive,mask.mailbox}s'", v23, 0x33u);
    v32 = v58;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v32, -1, -1);
    MEMORY[0x1B272C230](v23, -1, -1);
  }

  else
  {
    sub_1B0390514(v10, type metadata accessor for State.Logger);
  }

  a1 = v61;
LABEL_14:
  memcpy(v64, v2, sizeof(v64));
  v45 = sub_1B03C5290();
  memcpy(v63, v2, sizeof(v63));
  v46 = v63[21];
  v47 = v63[22];
  v48 = v63[23];
  v49 = v63[24];
  v50 = sub_1B0B88020();
  v51 = sub_1B0BA73DC(v50, v45);
  v52 = sub_1B0BA73DC(v13, v51);
  if ((v49 & 1) == 0)
  {
  }

  v62 = v46;
  v53 = v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B28FD0(&v62, v53, a1);

  result = sub_1B03BB638(v46, v47, v48, 1);
  v55 = v62;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = v55;
  *(v2 + 192) = 1;
  return result;
}

uint64_t sub_1B0B8715C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 4 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B872CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      v15 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v14);
      result = sub_1B0E46CB8();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B87438(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (v14 != *(*(v6 + 48) + 4 * v17))
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B875A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v6, v4, v1);
  MEMORY[0x1B2728DB0](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B87618(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  SyncRequest.hash(into:)(a1, *v1, *(v1 + 8));
  return MEMORY[0x1B2728DB0](v3);
}

uint64_t sub_1B0B87660()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v6, v4, v1);
  MEMORY[0x1B2728DB0](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B876CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  return static SyncRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 1), a1[16], *a2, *(a2 + 1), a2[16]) & (v2 == v3);
}

uint64_t sub_1B0B8771C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1B0B94B10(v4, __dst) & 1;
}

unint64_t sub_1B0B87778()
{
  result = qword_1EB6E4C98;
  if (!qword_1EB6E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C98);
  }

  return result;
}

uint64_t sub_1B0B877CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 168);
  v8 = *(v2 + 176);
  v6 = v2 + 168;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  sub_1B03B9A2C(v7, v8, v9, *(v6 + 24));
  v55 = a2;
  v11 = sub_1B0B2648C(a1, a2);
  v12 = v11;
  if (v10 == 1)
  {
    v50 = v9;
    v51 = v8;
    v53 = v11;
    v13 = *(v7 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    v52 = v7;
    if (v13)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A5C4(0, v13, 0);
      v14 = v56;
      v15 = (v7 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v18 = *(v56 + 16);
        v19 = *(v56 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v18 >= v19 >> 1)
        {
          sub_1B0B0A5C4((v19 > 1), v18 + 1, 1);
        }

        v15 += 22;
        *(v56 + 16) = v18 + 1;
        v20 = v56 + 16 * v18;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        --v13;
      }

      while (v13);
    }

    v22 = sub_1B0B388CC(v14);

    v23 = *(a1 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    v54 = v3;
    if (v23)
    {
      v57 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A5C4(0, v23, 0);
      v24 = v57;
      v25 = (a1 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v28 = *(v57 + 16);
        v29 = *(v57 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v28 >= v29 >> 1)
        {
          sub_1B0B0A5C4((v29 > 1), v28 + 1, 1);
        }

        v25 += 12;
        *(v57 + 16) = v28 + 1;
        v30 = v57 + 16 * v28;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        --v23;
      }

      while (v23);
      v3 = v54;
    }

    v31 = sub_1B0B388CC(v24);

    if (*(v22 + 16) <= *(v31 + 16) >> 3)
    {
      sub_1B0BA8288(v22);
    }

    else
    {
      sub_1B0BA9058(v22, v31);
    }

    v32 = *(v3 + 64);
    v33 = 1 << *(v32 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v32 + 64);
    v36 = (v33 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = 0;
    while (v35)
    {
LABEL_29:
      v41 = __clz(__rbit64(v35)) | (v38 << 6);
      v42 = *(*(v32 + 48) + 4 * v41);
      v43 = (*(v32 + 56) + 32 * v41);
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v43[16];
      if (v45)
      {
        v47 = *(v43 + 1);
        swift_bridgeObjectRetain_n();
        v48 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v39 = sub_1B0BA74E4(v48, v45);
      }

      else
      {
        v39 = 0;
      }

      v35 &= v35 - 1;
      sub_1B03FE6A0(v42, v44, v45, v46, v39, v55);
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return result;
      }

      if (v40 >= v36)
      {
        break;
      }

      v35 = *(v32 + 64 + 8 * v40);
      ++v38;
      if (v35)
      {
        v38 = v40;
        goto LABEL_29;
      }
    }

    sub_1B03BB638(v52, v51, v50, 1);

    v12 = v53;
    v3 = v54;
    v21 = *(v54 + 120);
    if (!v21)
    {
      return v12;
    }

    goto LABEL_32;
  }

  sub_1B03BB638(v7, v8, v9, 0);
  v21 = *(v3 + 120);
  if (v21)
  {
LABEL_32:
    if (*(v3 + 192) == 1)
    {
      v49 = sub_1B0B87B60(v21);
      sub_1B0B2E008(v49);
    }
  }

  return v12;
}

uint64_t sub_1B0B87B60(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v56 = MEMORY[0x1E69E7CC8];
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 48) + 16 * v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(a1 + 56) + 72 * v15;
    LOWORD(v16) = *(v19 + 64);
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v52 = *(v19 + 16);
    v53 = v21;
    v54 = v20;
    v55 = v16;
    v51 = *v19;
    if ((v16 & 0x100) != 0)
    {
      v44 = v17;
      v45 = v18;
      v48 = v53;
      v49 = v54;
      v50 = v55;
      v46 = v51;
      v47 = v52;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03BB0B4(&v51, v42);
      result = sub_1B0398EFC(&v44, &qword_1EB6E4CD8, &qword_1B0EC9BC0);
    }

    else
    {
      v37 = *(&v52 + 1);
      v38 = v53;
      v22 = v54;
      v40 = v2;
      v39 = v55;
      v46 = *v19;
      v50 = *(v19 + 64);
      v49 = *(v19 + 48);
      v48 = *(v19 + 32);
      v47 = *(v19 + 16);
      v23 = *(v4 + 16);
      v41 = v17;
      if (*(v4 + 24) <= v23)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(&v51, v42);
        sub_1B0B34270(v23 + 1, 1);
        v4 = v56;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(&v51, v42);
      }

      v24 = *(v4 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18 | (v18 << 32));
      result = sub_1B0E46CB8();
      v25 = v4 + 64;
      v26 = -1 << *(v4 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v4 + 64 + 8 * (v27 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v26) >> 6;
        v2 = v40;
        v30 = v41;
        while (++v28 != v32 || (v31 & 1) == 0)
        {
          v33 = v28 == v32;
          if (v28 == v32)
          {
            v28 = 0;
          }

          v31 |= v33;
          v34 = *(v25 + 8 * v28);
          if (v34 != -1)
          {
            v29 = __clz(__rbit64(~v34)) + (v28 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v4 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v2 = v40;
      v30 = v41;
LABEL_24:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v35 = *(v4 + 48) + 16 * v29;
      *v35 = v30;
      *(v35 + 8) = v18;
      v36 = *(v4 + 56) + 48 * v29;
      *v36 = v37;
      *(v36 + 8) = v38;
      *(v36 + 24) = v22 & 1;
      *(v36 + 32) = *(&v22 + 1);
      *(v36 + 40) = v39 & 1;
      ++*(v4 + 16);
      v42[2] = v48;
      v42[3] = v49;
      v43 = v50;
      v42[0] = v46;
      v42[1] = v47;
      result = sub_1B039E440(v42);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v4;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0B87EC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 81))
  {
    result = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a1[5];
    v4 = *(a1 + 2);
    v6 = *a1;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_1B0B87F18(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v1 + 192))
  {
    v4 = *(v1 + 168);
    v30 = MEMORY[0x1E69E7CD0];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      do
      {
        v7 = *v6;
        v8 = v6[2];
        v20 = v6[1];
        v21 = v8;
        v19 = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v24 = v6[5];
        v25 = v11;
        v22 = v9;
        v23 = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v28 = v6[9];
        v29 = v14;
        v26 = v12;
        v27 = v13;
        v15 = *(&v13 + 1);
        sub_1B03A35B8(&v19, v18);
        if (sub_1B0B8715C(a1, v15))
        {
          sub_1B03A3614(&v19);
        }

        else
        {
          v16 = v20;
          v17 = DWORD2(v20);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(v18, v16, v17);
          sub_1B03A3614(&v19);
        }

        v6 += 11;
        --v5;
      }

      while (v5);
      return v30;
    }
  }

  return result;
}

uint64_t sub_1B0B88020()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v29 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *v4;
        v6 = v4[2];
        v19 = v4[1];
        v20 = v6;
        v18 = v5;
        v7 = v4[3];
        v8 = v4[4];
        v9 = v4[6];
        v23 = v4[5];
        v24 = v9;
        v21 = v7;
        v22 = v8;
        v10 = v4[7];
        v11 = v4[8];
        v12 = v4[10];
        v27 = v4[9];
        v28 = v12;
        v25 = v10;
        v26 = v11;
        v13 = v19;
        v14 = DWORD2(v19);
        v15 = v23;
        v16 = *(&v22 + 1);
        sub_1B03A35B8(&v18, v17);
        if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v16, v15, 0, 0))
        {
          sub_1B03A3614(&v18);
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(v17, v13, v14);
          sub_1B03A3614(&v18);
        }

        v4 += 11;
        --v3;
      }

      while (v3);
      return v29;
    }
  }

  return result;
}

BOOL sub_1B0B88130(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0xFE) != 2)
  {
    return 0;
  }

  v6 = a6 - a5;
  if (a6 >= a5)
  {
    if (!__OFSUB__(a6, a5))
    {
      return v6 / 1000000000.0 > 60.0;
    }
  }

  else
  {
    if (!__OFSUB__(a5, a6))
    {
      v6 = a6 - a5;
      if (!__OFSUB__(0, a5 - a6))
      {
        return v6 / 1000000000.0 > 60.0;
      }

      __break(1u);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B88194(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for State.Logger();
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 64);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v2 + 64) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = 0;
  *&v18 = 68158722;
  v42 = v18;
  v44 = a2;
  v46 = result;
  v47 = a1;
  v41 = v7;
  while (v14)
  {
LABEL_11:
    v20 = __clz(__rbit64(v14)) | (v17 << 6);
    v21 = *(*(result + 48) + 4 * v20);
    v22 = (*(result + 56) + 32 * v20);
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 3);
    if (v25 <= a1)
    {
      v26 = a1 - v25;
      if (__OFSUB__(a1, v25))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (__OFSUB__(v25, a1))
      {
        goto LABEL_29;
      }

      v26 = a1 - v25;
      if (__OFSUB__(0, v25 - a1))
      {
        goto LABEL_30;
      }
    }

    v27 = v26 / 1000000000.0;
    if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    v14 &= v14 - 1;
    v28 = v27;
    if (v27 >= 301)
    {
      v48 = v21;
      v49 = v23;
      sub_1B03906B8(a2, v7, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = sub_1B0E43988();
      v30 = v7;
      v31 = sub_1B0E45908();

      if (os_log_type_enabled(v29, v31))
      {
        v32 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v32 = v42;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v33 = v30;
        v34 = *(v30 + *(v43 + 20));
        sub_1B0390514(v33, type metadata accessor for State.Logger);
        *(v32 + 10) = v34;
        *(v32 + 11) = 1024;
        *(v32 + 13) = v48;
        *(v32 + 17) = 2082;

        v35 = sub_1B0E462C8();
        v37 = sub_1B0399D64(v35, v36, &v50);

        *(v32 + 19) = v37;
        *(v32 + 27) = 2048;
        *(v32 + 29) = v28;
        _os_log_impl(&dword_1B0389000, v29, v31, "[%.*hhx] Sync #%u (%{public}s) still running after %ld seconds.", v32, 0x25u);
        v38 = v45;
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x1B272C230](v38, -1, -1);
        v39 = v32;
        a2 = v44;
        MEMORY[0x1B272C230](v39, -1, -1);

        a1 = v47;
        v7 = v41;
      }

      else
      {
        sub_1B0390514(v30, type metadata accessor for State.Logger);

        a1 = v47;
        v7 = v30;
      }

      result = v46;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v10 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B0B88598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46298();
  sub_1B0E46508();
  MEMORY[0x1B2726E80](0x6E616D6D6F63202CLL, 0xED00007B203A7364);
  v6 = *(a3 + 16);
  if (v6)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v6, 0);
    v7 = (a3 + 36);
    do
    {
      v29 = *(v7 - 1);
      v30 = *v7;
      sub_1B0E46508();
      v9 = *(v31 + 16);
      v8 = *(v31 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B041D32C((v8 > 1), v9 + 1, 1);
      }

      v7 += 2;
      *(v31 + 16) = v9 + 1;
      v10 = v31 + 16 * v9;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v11 = sub_1B0E448E8();
  v13 = v12;

  MEMORY[0x1B2726E80](v11, v13);

  MEMORY[0x1B2726E80](0x6F69746361202C7DLL, 0xED00007B203A736ELL);
  v14 = *(a4 + 16);
  if (v14)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v14, 0);
    v15 = v32;
    v16 = (a4 + 32);
    sub_1B07467B8();
    do
    {
      v17 = *v16++;
      v18 = sub_1B0E44E98();
      v33 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v28 = v18;
        v23 = v19;
        sub_1B041D32C((v20 > 1), v21 + 1, 1);
        v19 = v23;
        v18 = v28;
        v15 = v33;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v14;
    }

    while (v14);
  }

  v24 = sub_1B0E448E8();
  v26 = v25;

  MEMORY[0x1B2726E80](v24, v26);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B0B8890C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B94554(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B93C70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B88A40(unint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1B0B88FC8(*(a1 + 16), 0);
    v6 = sub_1B0B8C130(&v51, v5 + 8, v4, v3);
    v1 = v52;
    v2 = v53;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v51 = v5;
  v7 = 0;
  sub_1B0B8890C(&v51);
  v8 = v51;
  v9 = *(v3 + 16);
  if (v9)
  {
    v48 = v51;
    v10 = sub_1B0B88FC8(v9, 0);
    v1 = sub_1B0B8C130(&v51, v10 + 8, v9, v3);
    v2 = v51;
    v11 = v52;
    v8 = v53;
    v12 = v54;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D91F8();
    if (v1 != v9)
    {
      __break(1u);
      goto LABEL_38;
    }

    v8 = v48;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v51 = v10;
  sub_1B0B8890C(&v51);
  v11 = v51;
  v12 = *(v51 + 16);
  if (v12 >= 7)
  {
    v14 = 7;
  }

  else
  {
    v14 = *(v51 + 16);
  }

  if (v14 >= *(v8 + 16))
  {

    v37 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v38 = (v11 + 8);
      v50 = MEMORY[0x1E69E7CC0];
      sub_1B0A18B88(0, v14, 0);
      v37 = v50;
      do
      {
        v39 = *v38++;
        v51 = 35;
        v52 = 0xE100000000000000;
        v40 = String.init(_:)();
        MEMORY[0x1B2726E80](v40);

        v41 = v51;
        v42 = v52;
        v44 = *(v50 + 16);
        v43 = *(v50 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1B0A18B88(v43 > 1, v44 + 1, 1);
        }

        *(v50 + 16) = v44 + 1;
        v45 = v50 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      goto LABEL_29;
    }

    if (v12 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(v51 + 16);
    }

    v49 = MEMORY[0x1E69E7CC0];

    sub_1B0A18B88(0, v16, 0);
    v15 = v49;
    v17 = v11[8];
    v51 = 35;
    v52 = 0xE100000000000000;
    v18 = String.init(_:)();
    MEMORY[0x1B2726E80](v18);

    v1 = v51;
    v2 = v52;
    v3 = *(v49 + 16);
    v13 = *(v49 + 24);
    v7 = v3 + 1;
    if (v3 >= v13 >> 1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      *(v15 + 16) = v7;
      v19 = v15 + 16 * v3;
      *(v19 + 32) = v1;
      *(v19 + 40) = v2;
      if (v12 != 1)
      {
        v20 = v11[9];
        v51 = 35;
        v52 = 0xE100000000000000;
        v21 = String.init(_:)();
        MEMORY[0x1B2726E80](v21);

        v1 = v51;
        v2 = v52;
        v49 = v15;
        v3 = *(v15 + 16);
        v22 = *(v15 + 24);
        v7 = v3 + 1;
        if (v3 >= v22 >> 1)
        {
          sub_1B0A18B88(v22 > 1, v3 + 1, 1);
        }

        *(v15 + 16) = v7;
        v23 = v15 + 16 * v3;
        *(v23 + 32) = v1;
        *(v23 + 40) = v2;
        if (v12 != 2)
        {
          v24 = v11[10];
          v51 = 35;
          v52 = 0xE100000000000000;
          v25 = String.init(_:)();
          MEMORY[0x1B2726E80](v25);

          v1 = v51;
          v2 = v52;
          v49 = v15;
          v3 = *(v15 + 16);
          v26 = *(v15 + 24);
          v7 = v3 + 1;
          if (v3 >= v26 >> 1)
          {
            sub_1B0A18B88(v26 > 1, v3 + 1, 1);
          }

          *(v15 + 16) = v7;
          v27 = v15 + 16 * v3;
          *(v27 + 32) = v1;
          *(v27 + 40) = v2;
          if (v12 != 3)
          {
            v28 = v11[11];
            v51 = 35;
            v52 = 0xE100000000000000;
            v29 = String.init(_:)();
            MEMORY[0x1B2726E80](v29);

            v12 = v51;
            v1 = v52;
            v49 = v15;
            v3 = *(v15 + 16);
            v30 = *(v15 + 24);
            v7 = v3 + 1;
            if (v3 >= v30 >> 1)
            {
              sub_1B0A18B88(v30 > 1, v3 + 1, 1);
            }

            *(v15 + 16) = v7;
            v31 = v15 + 16 * v3;
            *(v31 + 32) = v12;
            *(v31 + 40) = v1;
          }
        }
      }

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC3500;
      *(inited + 32) = 10911970;
      *(inited + 40) = 0xA300000000000000;
      v51 = 35;
      v52 = 0xE100000000000000;
      v13 = *(v8 + 16);
      if (v13)
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      sub_1B0A18B88(v13 > 1, v7, 1);
      v15 = v49;
    }

    v33 = inited;
    v34 = *(v8 + 4 * v13 + 28);

    v35 = String.init(_:)();
    MEMORY[0x1B2726E80](v35);

    v36 = v52;
    *(v33 + 48) = v51;
    *(v33 + 56) = v36;
    v51 = v15;
    sub_1B0A19AA0(v33);
    v37 = v51;
  }

  v51 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v46 = sub_1B0E448E8();

  return v46;
}

void *sub_1B0B88FC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CA0, &qword_1B0EDC600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1B0B8904C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1B0B890F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4388, &qword_1B0EC50D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1B0B8919C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

char *sub_1B0B89218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4328, &unk_1B0EC5070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8937C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E50, &qword_1B0EC9E88);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E58, &qword_1B0EC9E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B894C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E18, &qword_1B0EC9E50);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E20, &qword_1B0EC9E58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B89654(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E60, &qword_1B0EC9E98);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E68, &qword_1B0EC9EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B897EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E40, &qword_1B0EC9E78);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E48, &qword_1B0EC9E80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B89934(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D68, &qword_1B0EC9C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D70, &qword_1B0EC9C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B89A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B89BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4EC0, &qword_1B0EC9EF8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B0B89CD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E08, &qword_1B0EC9E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A50, &qword_1B0EC77A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B89E04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F10, &qword_1B0EC9F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B0B89F40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D00, &qword_1B0EC9BE0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B0B8A0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8A1BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F40, &qword_1B0EC9F78);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B8A370(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

size_t sub_1B0B8A4C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B0B8A6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D90, &qword_1B0EC9C58);
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

char *sub_1B0B8A81C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D98, &unk_1B0EF9F00);
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

char *sub_1B0B8A928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4E00, &qword_1B0EC9E38);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0B8AA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4500, &qword_1B0EC5280);
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

void *sub_1B0B8AB68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D78, &qword_1B0EC9C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47B0, &qword_1B0EC5E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B8ACB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D80, &qword_1B0EC9C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47B8, &qword_1B0EC5E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8AE24(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_1B0B8AF7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1B0B8B128(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B0B8B368(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_1B0B8B460(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4F88, &qword_1B0EC9FC0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49D8, &unk_1B0EC6FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8B60C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1B0B8B734(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 96);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[96 * v10])
    {
      memmove(v14, v15, 96 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1B0B8B850(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DC8, &qword_1B0EC9C88);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DD0, &qword_1B0EC9C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8B998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DD8, &qword_1B0EC9C98);
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

char *sub_1B0B8BAB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4440, &qword_1B0EC51B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1B0B8BBBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BCF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB8, &qword_1B0EC9C78);
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

char *sub_1B0B8BE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DA0, &qword_1B0EC9C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8BF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DA8, &qword_1B0EC9C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B8C024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
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

void *sub_1B0B8C130(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B0B8C230(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_24;
      }

      v11 += 16;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B0B8C390(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 56) + 24 * (v14 | (v9 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 17);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      *(a2 + 17) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B0B8C4AC(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!__dst)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v12 = __dst;
      v13 = 0;
      v14 = (a6 + 32);
      v15 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        v16 = v14[9];
        v22[8] = v14[8];
        v22[9] = v16;
        v22[10] = v14[10];
        v17 = v14[5];
        v22[4] = v14[4];
        v22[5] = v17;
        v18 = v14[7];
        v22[6] = v14[6];
        v22[7] = v18;
        v19 = v14[1];
        v22[0] = *v14;
        v22[1] = v19;
        v20 = v14[3];
        v22[2] = v14[2];
        v22[3] = v20;
        memmove(v12, v14, 0xB0uLL);
        if (v15 == v13)
        {
          sub_1B03A35B8(v22, v21);
          goto LABEL_12;
        }

        v12 += 176;
        result = sub_1B03A35B8(v22, v21);
        ++v13;
        v14 += 11;
        if (v11 == v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}