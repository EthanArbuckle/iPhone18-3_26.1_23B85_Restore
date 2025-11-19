uint64_t sub_1B0AC39A4(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(a1 + 56) + 16 * v13;
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *(*(a1 + 48) + 4 * v13);
      v16 = *v14;
      if (*(v14 + 9) == 1)
      {
        sub_1B04FAA88(&v84);
        goto LABEL_15;
      }

      v17 = *(v2 + 16);
      if (*(v17 + 16))
      {
        result = sub_1B03FE284(*(*(a1 + 48) + 4 * v13));
        if (v18)
        {
          v19 = *(v17 + 56) + 184 * result;
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = *(v19 + 16);
          v60 = *v19;
          v61 = v22;
          v62 = v21;
          v63 = v20;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 112);
          v66 = *(v19 + 96);
          v67 = v25;
          v64 = v23;
          v65 = v24;
          v26 = *(v19 + 128);
          v27 = *(v19 + 144);
          v28 = *(v19 + 160);
          v71 = *(v19 + 176);
          v69 = v27;
          v70 = v28;
          v68 = v26;
          LODWORD(v48) = v15;
          v29 = *(_s18InProgressMessagesVMa(0) + 24);
          sub_1B075DC38(&v60, &v72);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
          MessageIdentifierSet.insert(_:)(&v72, &v48, v30);
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v83 = v71;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v79 = v67;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          v75 = v63;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v72);
          v92 = v80;
          v93 = v81;
          v94 = v82;
          v95 = v83;
          v88 = v76;
          v89 = v77;
          v90 = v78;
          v91 = v79;
          v84 = v72;
          v85 = v73;
          v86 = v74;
          v87 = v75;
LABEL_15:
          v47 = v15;
          if (HIDWORD(v16))
          {
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v59 = v95;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v55 = v91;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v51 = v87;
            v31 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v32 = v2;
              LODWORD(v16) = 0;
              v83 = v59;
              v80 = v56;
              v81 = v57;
              v82 = v58;
LABEL_20:
              v76 = v52;
              v77 = v53;
              v78 = v54;
              v79 = v55;
              v72 = v48;
              v73 = v49;
              v33 = v50;
              v34 = v51;
              goto LABEL_21;
            }

            LODWORD(v16) = 0;
            v71 = v59;
            v68 = v56;
            v69 = v57;
            v70 = v58;
          }

          else
          {
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v59 = v95;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v55 = v91;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v51 = v87;
            v31 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v32 = v2;
              v80 = v56;
              v81 = v57;
              v82 = v58;
              v83 = v59;
              goto LABEL_20;
            }

            v68 = v56;
            v69 = v57;
            v70 = v58;
            v71 = v59;
          }

          v64 = v52;
          v65 = v53;
          v66 = v54;
          v67 = v55;
          v60 = v48;
          v61 = v49;
          v62 = v50;
          v63 = v51;
          v32 = v2;
          v31 = sub_1B0AFFAF8(0, *(v31 + 2) + 1, 1, v31);
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v83 = v71;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v79 = v67;
          v72 = v60;
          v73 = v61;
          v33 = v62;
          v34 = v63;
LABEL_21:
          v74 = v33;
          v75 = v34;
          v36 = *(v31 + 2);
          v35 = *(v31 + 3);
          if (v36 >= v35 >> 1)
          {
            v31 = sub_1B0AFFAF8((v35 > 1), v36 + 1, 1, v31);
          }

          *(v31 + 2) = v36 + 1;
          v37 = &v31[192 * v36];
          *(v37 + 8) = v47;
          *(v37 + 9) = v16;
          v38 = v72;
          v39 = v73;
          v40 = v74;
          *(v37 + 88) = v75;
          *(v37 + 72) = v40;
          *(v37 + 56) = v39;
          *(v37 + 40) = v38;
          v41 = v76;
          v42 = v77;
          v43 = v78;
          *(v37 + 152) = v79;
          *(v37 + 136) = v43;
          *(v37 + 120) = v42;
          *(v37 + 104) = v41;
          v44 = v80;
          v45 = v81;
          v46 = v82;
          v37[216] = v83;
          *(v37 + 200) = v46;
          *(v37 + 184) = v45;
          *(v37 + 168) = v44;
          result = _s18InProgressMessagesVMa(0);
          v2 = v32;
          *(v32 + *(result + 28)) = v31;
        }
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0AC3E24(int a1, uint64_t a2, uint64_t a3)
{
  v7 = _s25MessageSectionsToDownloadVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + *(_s18InProgressMessagesVMa(0) + 32));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      sub_1B0ACE73C(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, _s25MessageSectionsToDownloadVMa);
      v15 = *v11;
      sub_1B0ACE7A4(v11, _s25MessageSectionsToDownloadVMa);
      if (v15 == a1)
      {
        break;
      }

      if (v13 == ++v14)
      {
        return;
      }
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = *(type metadata accessor for MessageData.BodySection() - 8);
      v18 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v19 = *(v17 + 72);
      do
      {
        sub_1B0AC4000(v18, v3, v14, a3);
        v18 += v19;
        --v16;
      }

      while (v16);
    }
  }
}

void sub_1B0AC4000(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v90 = type metadata accessor for MessageData.BodySection();
  v8 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v86 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v89 = &v78 - v18;
  v19 = type metadata accessor for MessageData.BodyData();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s19MessageHeaderStatusOMa(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v31 = _s18InProgressMessagesVMa(0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v95 = *(v31 + 32);
  v96 = a2;
  a2 = *&v95[a2];
  if (*(a2 + 16) <= a3)
  {
    goto LABEL_24;
  }

  v83 = v15;
  v32 = _s25MessageSectionsToDownloadVMa(0);
  v33 = *(v32 - 8);
  v91 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v34 = *(v33 + 72);
  v93 = v32;
  v94 = a3;
  v35 = (a2 + v91 + *(v32 + 20));
  v92 = v34 * a3;
  sub_1B0ACE73C(&v35[v34 * a3], v30, _s19MessageHeaderStatusOMa);
  v36 = type metadata accessor for MessageHeader();
  v37 = *(v36 - 8);
  v81 = *(v37 + 56);
  v82 = v36;
  v80 = v37 + 56;
  v81(v27, 3, 3);
  v38 = sub_1B0ACAF84(v30, v27);
  sub_1B0ACE7A4(v27, _s19MessageHeaderStatusOMa);
  sub_1B0ACE7A4(v30, _s19MessageHeaderStatusOMa);
  if ((v38 & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = *a1;
  v30 = *(a1 + 8);
  v40 = *(a1 + 16);
  v41 = SectionSpecifier.header.unsafeMutableAddressor();
  v78 = v10;
  v43 = *v41;
  v42 = v41[1];
  v44 = *(v41 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v42, v44);
  LOBYTE(v39) = static SectionSpecifier.__derived_struct_equals(_:_:)(v39, v30, v40, v43, v42, v44);

  v45 = v78;
  sub_1B0ACE978(v42, v44);
  if ((v39 & 1) == 0)
  {
LABEL_8:
    v27 = v95;
    v10 = v96;
    a2 = *&v95[v96];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27[v10] = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(a2 + 16) <= v94)
      {
        __break(1u);
      }

      else
      {
        v27 = (a2 + v91 + v92);
        v30 = *(v93 + 24);
        a2 = *&v27[v30];
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v27[v30] = a2;
        if (v67)
        {
          goto LABEL_11;
        }
      }

      a2 = sub_1B0B8C900(a2);
LABEL_11:
      *&v27[v30] = a2;
      if (!*(a2 + 16))
      {
        return;
      }

      v68 = 0;
      for (i = 32; ; i += 240)
      {
        *&v27[v30] = a2;
        if (v68 >= *(a2 + 16))
        {
          break;
        }

        v10 = a2 + i;
        sub_1B0AC492C(a1, a4);
        ++v68;
        a2 = *&v27[v30];
        if (v68 == *(a2 + 16))
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      a2 = sub_1B0B8C8EC(a2);
      *&v27[v10] = a2;
    }
  }

  v46 = v89;
  sub_1B03B5C80(a1 + *(v90 + 24), v89, &qword_1EB6E4178, &unk_1B0EE7570);
  if ((*(v87 + 48))(v46, 1, v88) == 1)
  {
    sub_1B0398EFC(v46, &qword_1EB6E4178, &unk_1B0EE7570);
    v47 = v83;
    sub_1B0ACE73C(a4, v83, type metadata accessor for MailboxTaskLogger);
    v48 = v86;
    sub_1B0ACE73C(a4, v86, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ACE73C(a1, v45, type metadata accessor for MessageData.BodySection);
    v49 = sub_1B0E43988();
    v50 = sub_1B0E458E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v95) = v50;
      v52 = v51;
      v96 = swift_slowAlloc();
      v99 = v96;
      *v52 = 68159491;
      *(v52 + 4) = 2;
      *(v52 + 8) = 256;
      v53 = v79;
      v54 = v48 + *(v79 + 20);
      *(v52 + 10) = *v54;
      *(v52 + 11) = 2082;
      v55 = v47;
      v56 = v47 + *(v53 + 20);
      *(v52 + 13) = sub_1B0399D64(*(v56 + 8), *(v56 + 16), &v99);
      *(v52 + 21) = 1040;
      *(v52 + 23) = 2;
      *(v52 + 27) = 512;
      LOWORD(v54) = *(v54 + 24);
      sub_1B0ACE7A4(v48, type metadata accessor for MailboxTaskLogger);
      *(v52 + 29) = v54;
      *(v52 + 31) = 2160;
      *(v52 + 33) = 0x786F626C69616DLL;
      *(v52 + 41) = 2085;
      v57 = *(v56 + 32);
      LODWORD(v56) = *(v56 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v55, type metadata accessor for MailboxTaskLogger);
      v97 = v57;
      v98 = v56;
      v58 = sub_1B0E44BA8();
      v60 = sub_1B0399D64(v58, v59, &v99);

      *(v52 + 43) = v60;
      *(v52 + 51) = 2082;
      v61 = SectionSpecifier.debugDescription.getter(*v45, *(v45 + 8), *(v45 + 16));
      v63 = v62;
      sub_1B0ACE7A4(v45, type metadata accessor for MessageData.BodySection);
      v64 = sub_1B0399D64(v61, v63, &v99);

      *(v52 + 53) = v64;
      _os_log_impl(&dword_1B0389000, v49, v95, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No header data in response for '%{public}s'", v52, 0x3Du);
      v65 = v96;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v65, -1, -1);
      MEMORY[0x1B272C230](v52, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v48, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v47, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v45, type metadata accessor for MessageData.BodySection);
    }
  }

  else
  {
    v70 = v85;
    sub_1B0ACE804(v46, v85, type metadata accessor for MessageData.BodyData);
    v71 = sub_1B0E443C8();
    v72 = v84;
    (*(*(v71 - 8) + 16))(v84, v70, v71);
    (v81)(v72, 0, 3, v82);
    v74 = v95;
    v73 = v96;
    v75 = *&v95[v96];
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *&v74[v73] = v75;
    if ((v76 & 1) == 0)
    {
      *&v74[v73] = sub_1B0B8C8EC(v75);
    }

    sub_1B0ACE7A4(v70, type metadata accessor for MessageData.BodyData);
    v77 = *&v74[v73];
    if (*(v77 + 16) <= v94)
    {
      __break(1u);
    }

    else
    {
      sub_1B0ACE98C(v72, v77 + v91 + *(v93 + 20) + v92);
    }
  }
}

void sub_1B0AC492C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessageData.BodySection();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52[-v20];
  v22 = *(v2 + 20);
  sub_1B0ACE73C(a2, &v52[-v20], type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(a2, v18, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v60 = a1;
  sub_1B0ACE73C(a1, v9, type metadata accessor for MessageData.BodySection);
  v59 = a2;
  v23 = sub_1B0E43988();
  v24 = sub_1B0E458D8();
  v25 = os_log_type_enabled(v23, v24);
  v57 = v22;
  v56 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v55 = v15;
    v27 = v26;
    v54 = swift_slowAlloc();
    v63[0] = v54;
    *v27 = 68159747;
    v53 = v24;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v28 = v22;
    v29 = &v18[*(v10 + 20)];
    *(v27 + 10) = *v29;
    *(v27 + 11) = 2082;
    v30 = *(v10 + 20);
    v31 = v3;
    v32 = &v21[v30];
    *(v27 + 13) = sub_1B0399D64(*&v21[v30 + 8], *&v21[v30 + 16], v63);
    *(v27 + 21) = 1040;
    *(v27 + 23) = 2;
    *(v27 + 27) = 512;
    LOWORD(v29) = *(v29 + 12);
    sub_1B0ACE7A4(v18, type metadata accessor for MailboxTaskLogger);
    *(v27 + 29) = v29;
    *(v27 + 31) = 2160;
    *(v27 + 33) = 0x786F626C69616DLL;
    *(v27 + 41) = 2085;
    v33 = *(v32 + 4);
    LODWORD(v29) = *(v32 + 10);
    v3 = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v21, type metadata accessor for MailboxTaskLogger);
    v61 = v33;
    v62 = v29;
    v34 = sub_1B0E44BA8();
    v36 = sub_1B0399D64(v34, v35, v63);

    *(v27 + 43) = v36;
    *(v27 + 51) = 1024;
    *(v27 + 53) = v28;
    *(v27 + 57) = 2082;
    v37 = SectionSpecifier.debugDescription.getter(*v9, *(v9 + 1), v9[16]);
    v39 = v38;
    sub_1B0ACE7A4(v9, type metadata accessor for MessageData.BodySection);
    v40 = sub_1B0399D64(v37, v39, v63);

    *(v27 + 59) = v40;
    _os_log_impl(&dword_1B0389000, v23, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received body section data for section '%{public}s'", v27, 0x43u);
    v41 = v54;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v41, -1, -1);
    MEMORY[0x1B272C230](v27, -1, -1);

    if (*(v31 + 54))
    {
      return;
    }
  }

  else
  {
    sub_1B0ACE7A4(v18, type metadata accessor for MailboxTaskLogger);

    sub_1B0ACE7A4(v21, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE7A4(v9, type metadata accessor for MessageData.BodySection);
    if (*(v3 + 54))
    {
      return;
    }
  }

  v42 = *v60;
  v43 = v60[1];
  v44 = *(v3 + 24);
  v45 = *(v60 + 16);
  v46 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = SectionSpecifier.init(part:kind:)(v46, 0, 2u);
  v49 = v48;
  v51 = v50;
  LOBYTE(v42) = static SectionSpecifier.__derived_struct_equals(_:_:)(v42, v43, v45, v47, v48, v50);

  sub_1B0ACE978(v49, v51);
  if (v42)
  {
    sub_1B0AC8A34(v60, v59);
  }
}

uint64_t sub_1B0AC50B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + *(_s18SectionDataRequestVMa() + 20));
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4);

  return v5 & 1;
}

uint64_t sub_1B0AC5118(int a1)
{
  v3 = type metadata accessor for MessageHeader();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v41 - v8;
  v9 = _s19MessageHeaderStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v56 = _s25MessageSectionsToDownloadVMa(0);
  v54 = *(v56 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v41 - v21);
  result = _s18InProgressMessagesVMa(0);
  v24 = *(result + 32);
  v43 = v1;
  v41 = v24;
  v55 = *(v1 + v24);
  v53 = *(v55 + 16);
  if (v53)
  {
    v25 = 0;
    v52 = v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v26 = (v4 + 48);
    v47 = (v4 + 56);
    v48 = v3;
    v46 = a1;
    v45 = v12;
    do
    {
      if (v25 >= *(v55 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1B0ACE73C(v52 + *(v54 + 72) * v25, v22, _s25MessageSectionsToDownloadVMa);
      v27 = *(v56 + 20);
      sub_1B0ACE73C(v22 + v27, v17, _s19MessageHeaderStatusOMa);
      v28 = *v26;
      v29 = (*v26)(v17, 3, v3);
      sub_1B0ACE7A4(v17, _s19MessageHeaderStatusOMa);
      if (*v22 != a1 || *(*(v22 + *(v56 + 24)) + 16))
      {
        result = sub_1B0ACE7A4(v22, _s25MessageSectionsToDownloadVMa);
        goto LABEL_4;
      }

      v30 = v50;
      (*v47)(v50, 1, 3, v3);
      v31 = *(v49 + 48);
      v32 = v22 + v27;
      v33 = v51;
      sub_1B0ACE73C(v32, v51, _s19MessageHeaderStatusOMa);
      v3 = v48;
      sub_1B0ACE73C(v30, v33 + v31, _s19MessageHeaderStatusOMa);
      v34 = v28(v33, 3, v3);
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          sub_1B0ACE7A4(v50, _s19MessageHeaderStatusOMa);
          v35 = v51;
          if (v28((v51 + v31), 3, v3) == 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE7A4(v50, _s19MessageHeaderStatusOMa);
          v35 = v51;
          if (v28((v51 + v31), 3, v3) == 3)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v34)
      {
        sub_1B0ACE7A4(v50, _s19MessageHeaderStatusOMa);
        v35 = v51;
        if (v28((v51 + v31), 3, v3) == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v35 = v51;
        v36 = v45;
        sub_1B0ACE73C(v51, v45, _s19MessageHeaderStatusOMa);
        if (!v28((v35 + v31), 3, v3))
        {
          v37 = v35 + v31;
          v38 = v44;
          sub_1B0ACE804(v37, v44, type metadata accessor for MessageHeader);
          v39 = static MessageHeader.== infix(_:_:)();
          sub_1B0ACE7A4(v38, type metadata accessor for MessageHeader);
          sub_1B0ACE7A4(v50, _s19MessageHeaderStatusOMa);
          v3 = v48;
          sub_1B0ACE7A4(v36, type metadata accessor for MessageHeader);
          if (v39)
          {
LABEL_23:
            sub_1B0ACE7A4(v35, _s19MessageHeaderStatusOMa);
            sub_1B0ACE7A4(v22, _s25MessageSectionsToDownloadVMa);
LABEL_24:
            v40 = v42;
            sub_1B0BAFDD8(v25, v42);
            return sub_1B0ACE7A4(v40, _s25MessageSectionsToDownloadVMa);
          }

          sub_1B0ACE7A4(v35, _s19MessageHeaderStatusOMa);
          goto LABEL_19;
        }

        sub_1B0ACE7A4(v50, _s19MessageHeaderStatusOMa);
        sub_1B0ACE7A4(v36, type metadata accessor for MessageHeader);
      }

      sub_1B0398EFC(v35, &qword_1EB6E4160, &unk_1B0EC3C48);
LABEL_19:
      result = sub_1B0ACE7A4(v22, _s25MessageSectionsToDownloadVMa);
      a1 = v46;
      if (!v29)
      {
        goto LABEL_24;
      }

LABEL_4:
      ++v25;
    }

    while (v53 != v25);
  }

  return result;
}

double sub_1B0AC57D8@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 12;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v24[2] = v7[2];
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v24[6] = v7[6];
    v24[7] = v13;
    v24[4] = v11;
    v24[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[10];
    *(v25 + 9) = *(v7 + 169);
    v24[9] = v15;
    v25[0] = v16;
    v24[8] = v14;
    memmove(__dst, v7, 0xB9uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    sub_1B0ACE8D0(v24, &v23);
    v36 = __dst[8];
    v37 = __dst[9];
    v38[0] = v27[0];
    *(v38 + 9) = *(v27 + 9);
    v32 = __dst[4];
    v33 = __dst[5];
    v34 = __dst[6];
    v35 = __dst[7];
    v28 = __dst[0];
    v29 = __dst[1];
    v30 = __dst[2];
    v31 = __dst[3];
  }

  else
  {
LABEL_5:
    sub_1B0ACE938(&v28);
  }

  v17 = v37;
  a2[8] = v36;
  a2[9] = v17;
  a2[10] = v38[0];
  *(a2 + 169) = *(v38 + 9);
  v18 = v33;
  a2[4] = v32;
  a2[5] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  result = *&v30;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

__n128 sub_1B0AC5920@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AC59E4(v6, v7, v8, a3, v16);

  v9 = v17[0];
  *(a4 + 192) = v16[12];
  *(a4 + 208) = v9;
  *(a4 + 217) = *(v17 + 9);
  v10 = v16[9];
  *(a4 + 128) = v16[8];
  *(a4 + 144) = v10;
  v11 = v16[11];
  *(a4 + 160) = v16[10];
  *(a4 + 176) = v11;
  v12 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v12;
  v13 = v16[7];
  *(a4 + 96) = v16[6];
  *(a4 + 112) = v13;
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}

void sub_1B0AC59E4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v134 = a3;
  v133 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v132 = (&v120 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = (&v120 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v129 = (&v120 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v120 - v23;
  v282 = *(v5 + 136);
  v283 = *(v5 + 152);
  v284 = *(v5 + 168);
  v285 = *(v5 + 184);
  v278 = *(v5 + 72);
  v279 = *(v5 + 88);
  v280 = *(v5 + 104);
  v281 = *(v5 + 120);
  v274 = *(v5 + 8);
  v275 = *(v5 + 24);
  v276 = *(v5 + 40);
  v277 = *(v5 + 56);
  v294 = *(v5 + 136);
  v295 = *(v5 + 152);
  v296 = *(v5 + 168);
  v297 = *(v5 + 184);
  v290 = *(v5 + 72);
  v291 = *(v5 + 88);
  v292 = *(v5 + 104);
  v293 = *(v5 + 120);
  v286 = *(v5 + 8);
  v287 = *(v5 + 24);
  v288 = *(v5 + 40);
  v289 = *(v5 + 56);
  if (sub_1B04FAE9C(&v286) == 1)
  {
    sub_1B04FAA88(&v262);
  }

  else
  {
    v200 = v294;
    v201 = v295;
    v202 = v296;
    LOBYTE(v203) = v297;
    v196 = v290;
    v197 = v291;
    v198 = v292;
    v199 = v293;
    v192 = v286;
    v193 = v287;
    v194 = v288;
    v195 = v289;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v192);
    v270 = v200;
    v271 = v201;
    v272 = v202;
    v266 = v196;
    v267 = v197;
    v268 = v198;
    v269 = v199;
    v262 = v192;
    v263 = v193;
    v264 = v194;
    v273 = v203;
    v265 = v195;
  }

  sub_1B0ACE8D0(v5, &v192);
  sub_1B0ACE8D0(v5, &v192);
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1))
  {
    sub_1B0ACE908(v5);
    v24 = *(v5 + 4);
    v25 = v24 * 1.25;
    if (v25 != INFINITY)
    {
      if (v25 > -1.0)
      {
        if (v25 < 4294967300.0)
        {
          v26 = __CFADD__(v24, 0x4000);
          v27 = v24 + 0x4000;
          if (!v26)
          {
            v28 = a1;
            if (v27 <= v25)
            {
              v29 = v25;
            }

            else
            {
              v29 = v27;
            }

            v30 = *v6;
            sub_1B04FAA88(&v238);
            v258 = v246;
            v259 = v247;
            v260 = v248;
            v261 = v249;
            v254 = v242;
            v255 = v243;
            v256 = v244;
            v257 = v245;
            v250 = v238;
            v251 = v239;
            v252 = v240;
            v253 = v241;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v31 = v133;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0398EFC(&v250, &qword_1EB6E4148, &qword_1B0EE17F0);
            *(&v165[8] + 1) = v270;
            *(&v165[9] + 1) = v271;
            *(&v165[10] + 1) = v272;
            BYTE1(v165[11]) = v273;
            *(&v165[4] + 1) = v266;
            *(&v165[5] + 1) = v267;
            *(&v165[6] + 1) = v268;
            *(&v165[7] + 1) = v269;
            *(v165 + 1) = v262;
            *(&v165[1] + 1) = v263;
            *(&v165[2] + 1) = v264;
            *(&v165[3] + 1) = v265;
            *(&v142[8] + 7) = v165[8];
            *(&v142[9] + 7) = v165[9];
            *(&v142[10] + 7) = v165[10];
            *(&v142[4] + 7) = v165[4];
            *(&v142[5] + 7) = v165[5];
            *(&v142[6] + 7) = v165[6];
            *(&v142[7] + 7) = v165[7];
            *(v142 + 7) = v165[0];
            *(&v142[1] + 7) = v165[1];
            *(&v142[2] + 7) = v165[2];
            *(&v142[3] + 7) = v165[3];
            v161 = v165[8];
            v162 = v165[9];
            v163 = v165[10];
            v157 = v165[4];
            v158 = v165[5];
            v159 = v165[6];
            v160 = v165[7];
            v153 = v165[0];
            v154 = v165[1];
            v155 = v165[2];
            LOBYTE(v139) = 1;
            *(&v139 + 1) = v31;
            *&v140 = __PAIR64__(v30, v134);
            *(&v140 + 1) = v28;
            LODWORD(v141) = v29;
            *(&v141 + 1) = MEMORY[0x1E69E7CC0];
            LODWORD(v142[0]) = 0;
            WORD2(v142[0]) = 2;
            BYTE6(v142[0]) = 0;
            *(&v142[11] + 7) = v165[11];
            LOBYTE(v143) = 1;
            v144 = v31;
            v145 = v134;
            v146 = v30;
            v147 = v28;
            v148 = v29;
            v149 = MEMORY[0x1E69E7CC0];
            v150 = 0;
            v151 = 2;
            v152 = 0;
            v164 = v165[11];
            v156 = v165[3];
            sub_1B0ACE448(&v139, &v192);
            sub_1B0ACE480(&v143);
            v166 = v142[9];
            v167[0] = v142[10];
            *(v167 + 9) = *(&v142[10] + 9);
            v165[8] = v142[5];
            v165[9] = v142[6];
            v165[10] = v142[7];
            v165[11] = v142[8];
            v165[4] = v142[1];
            v165[5] = v142[2];
            v165[6] = v142[3];
            v165[7] = v142[4];
            v165[0] = v139;
            v165[1] = v140;
            v165[2] = v141;
            v165[3] = v142[0];
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v165);
            v204 = v166;
            v205[0] = v167[0];
            *(v205 + 9) = *(v167 + 9);
            v200 = v165[8];
            v201 = v165[9];
            v202 = v165[10];
            v203 = v165[11];
LABEL_44:
            v196 = v165[4];
            v197 = v165[5];
            v198 = v165[6];
            v199 = v165[7];
            v192 = v165[0];
            v193 = v165[1];
            v194 = v165[2];
            v195 = v165[3];
            v111 = v205[0];
            a5[12] = v204;
            a5[13] = v111;
            *(a5 + 217) = *(v205 + 9);
            v112 = v201;
            a5[8] = v200;
            a5[9] = v112;
            v113 = v203;
            a5[10] = v202;
            a5[11] = v113;
            v114 = v197;
            a5[4] = v196;
            a5[5] = v114;
            v115 = v199;
            a5[6] = v198;
            a5[7] = v115;
            v116 = v193;
            *a5 = v192;
            a5[1] = v116;
            v117 = v195;
            a5[2] = v194;
            a5[3] = v117;
            return;
          }

          goto LABEL_57;
        }

        goto LABEL_55;
      }

      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v188 = v282;
  v189 = v283;
  v190 = v284;
  v191 = v285;
  v184 = v278;
  v185 = v279;
  v186 = v280;
  v187 = v281;
  v180 = v274;
  v181 = v275;
  v182 = v276;
  v183 = v277;
  v32 = sub_1B04FAE9C(&v180);
  v131 = a1;
  v126 = a5;
  if (v32 == 1)
  {
    goto LABEL_18;
  }

  v125 = v10;
  v165[8] = v188;
  v165[9] = v189;
  v165[10] = v190;
  LOBYTE(v165[11]) = v191;
  v165[4] = v184;
  v165[5] = v185;
  v165[6] = v186;
  v165[7] = v187;
  v165[0] = v180;
  v165[1] = v181;
  v165[2] = v182;
  v165[3] = v183;
  if (sub_1B04FAE88(v165) != 1)
  {
    v258 = v165[8];
    v259 = v165[9];
    v260 = v165[10];
    v254 = v165[4];
    v255 = v165[5];
    v256 = v165[6];
    v257 = v165[7];
    v250 = v165[0];
    v251 = v165[1];
    v252 = v165[2];
    v261 = v165[11];
    v253 = v165[3];
    BodyStructure.find(_:)(a1, v206);
    v220 = v206[8];
    v221 = v206[9];
    v222 = v206[10];
    v223 = v207;
    v216 = v206[4];
    v217 = v206[5];
    v218 = v206[6];
    v219 = v206[7];
    v212 = v206[0];
    v213 = v206[1];
    v214 = v206[2];
    v215 = v206[3];
    if (sub_1B04FAE88(&v212) == 1)
    {
      sub_1B0ACE908(v5);
      goto LABEL_17;
    }

    v232 = v220;
    v233 = v221;
    v234 = v222;
    v228 = v216;
    v229 = v217;
    v230 = v218;
    v231 = v219;
    v224 = v212;
    v225 = v213;
    v226 = v214;
    v227 = v215;
    v236[8] = v220;
    v236[9] = v221;
    v236[10] = v222;
    v236[4] = v216;
    v236[5] = v217;
    v236[6] = v218;
    v236[7] = v219;
    v236[0] = v212;
    v236[1] = v213;
    v236[2] = v214;
    v235 = v223;
    v237 = v223;
    v236[3] = v215;
    if (sub_1B0717014(v236) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v236);
      v49 = v128;
      sub_1B0ACE73C(a4, v128, type metadata accessor for MailboxTaskLogger);
      v50 = v127;
      sub_1B0ACE73C(a4, v127, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0ACE8D0(v5, &v192);
      sub_1B03B5C80(v206, &v192, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE8D0(v5, &v192);
      sub_1B03B5C80(v206, &v192, &qword_1EB6E4170, &qword_1B0EC3C60);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B0E43988();
      v52 = sub_1B0E45908();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v143 = v132;
        *v53 = 68160259;
        LODWORD(v130) = v52;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v54 = v125;
        v55 = v50 + *(v125 + 20);
        *(v53 + 10) = *v55;
        *(v53 + 11) = 2082;
        v56 = *(v54 + 20);
        v129 = v51;
        v57 = v49;
        v58 = v49 + v56;
        *(v53 + 13) = sub_1B0399D64(*(v58 + 1), *(v58 + 2), &v143);
        *(v53 + 21) = 1040;
        *(v53 + 23) = 2;
        *(v53 + 27) = 512;
        LOWORD(v55) = *(v55 + 24);
        sub_1B0ACE7A4(v50, type metadata accessor for MailboxTaskLogger);
        *(v53 + 29) = v55;
        *(v53 + 31) = 2160;
        *(v53 + 33) = 0x786F626C69616DLL;
        *(v53 + 41) = 2085;
        v59 = *(v58 + 4);
        LODWORD(v55) = *(v58 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v57, type metadata accessor for MailboxTaskLogger);
        *&v192 = v59;
        DWORD2(v192) = v55;
        v60 = sub_1B0E44BA8();
        v62 = sub_1B0399D64(v60, v61, &v143);

        *(v53 + 43) = v62;
        *(v53 + 51) = 1024;
        sub_1B0ACE908(v6);
        *(v53 + 53) = *v6;
        sub_1B0ACE908(v6);
        *(v53 + 57) = 2080;
        BodyStructure.mediaType.getter();
        v64 = v63;
        v66 = v65;

        v67 = sub_1B0399D64(v64, v66, &v143);

        *(v53 + 59) = v67;
        *(v53 + 67) = 2082;
        v68 = SectionSpecifier.Part.debugDescription.getter(v131);
        v70 = sub_1B0399D64(v68, v69, &v143);

        *(v53 + 69) = v70;
        *(v53 + 77) = 2048;
        v71 = sub_1B0ACA1A0();
        sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
        *(v53 + 79) = v71;
        sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
        v72 = v129;
        _os_log_impl(&dword_1B0389000, v129, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding multi-part '%s' section '[%{public}s]' (approx. %{iec-bytes}ld)", v53, 0x57u);
        v73 = v132;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v73, -1, -1);
        MEMORY[0x1B272C230](v53, -1, -1);
        sub_1B0ACE908(v6);

LABEL_28:
        sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
LABEL_32:
        v176 = v282;
        v177 = v283;
        v178 = v284;
        v179 = v285;
        v172 = v278;
        v173 = v279;
        v174 = v280;
        v175 = v281;
        v168 = v274;
        v169 = v275;
        v170 = v276;
        v171 = v277;
        goto LABEL_33;
      }

      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);
      sub_1B0ACE7A4(v50, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE908(v6);
      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);

      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
      v104 = v49;
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v236);
      v127 = *(v74 + 80);
      sub_1B0ACE73C(a4, v130, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(a4, v129, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0ACE8D0(v5, &v192);
      sub_1B0ACE8D0(v5, &v192);
      v123 = BodyStructure.mediaType.getter();
      v124 = v75;
      v77 = v76;
      v79 = v78;
      sub_1B03B5C80(v206, &v192, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B03B5C80(v206, &v192, &qword_1EB6E4170, &qword_1B0EC3C60);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v80 = sub_1B0E43988();
      v81 = sub_1B0E45908();

      v128 = v79;

      v132 = v80;
      v82 = os_log_type_enabled(v80, v81);
      v83 = v125;
      if (v82)
      {
        v84 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v143 = v122;
        *v84 = 68160515;
        *(v84 + 4) = 2;
        *(v84 + 8) = 256;
        v85 = *(v83 + 20);
        v121 = v77;
        v86 = v129;
        v87 = v129 + v85;
        *(v84 + 10) = *(&v129->isa + v85);
        *(v84 + 11) = 2082;
        v88 = *(v83 + 20);
        LODWORD(v125) = v81;
        v89 = v130;
        v90 = v130 + v88;
        *(v84 + 13) = sub_1B0399D64(*(v130 + v88 + 8), *(v130 + v88 + 16), &v143);
        *(v84 + 21) = 1040;
        *(v84 + 23) = 2;
        *(v84 + 27) = 512;
        LOWORD(v87) = *(v87 + 12);
        sub_1B0ACE7A4(v86, type metadata accessor for MailboxTaskLogger);
        *(v84 + 29) = v87;
        *(v84 + 31) = 2160;
        *(v84 + 33) = 0x786F626C69616DLL;
        *(v84 + 41) = 2085;
        v91 = v89;
        v92 = *(v90 + 32);
        LODWORD(v90) = *(v90 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v91, type metadata accessor for MailboxTaskLogger);
        *&v192 = v92;
        DWORD2(v192) = v90;
        v93 = sub_1B0E44BA8();
        v95 = sub_1B0399D64(v93, v94, &v143);

        *(v84 + 43) = v95;
        *(v84 + 51) = 1024;
        sub_1B0ACE908(v6);
        *(v84 + 53) = *v6;
        sub_1B0ACE908(v6);
        *(v84 + 57) = 2082;
        v96 = v121;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v97 = sub_1B0399D64(v123, v96, &v143);

        *(v84 + 59) = v97;
        *(v84 + 67) = 2082;

        v98 = sub_1B0399D64(v124, v128, &v143);

        *(v84 + 69) = v98;
        *(v84 + 77) = 2082;
        v99 = SectionSpecifier.Part.debugDescription.getter(v131);
        v101 = sub_1B0399D64(v99, v100, &v143);

        *(v84 + 79) = v101;
        *(v84 + 87) = 2048;
        sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
        *(v84 + 89) = v127;
        sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
        v102 = v132;
        _os_log_impl(&dword_1B0389000, v132, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding '%{public}s/%{public}s' section '[%{public}s]' (%{iec-bytes}ld)", v84, 0x61u);
        v103 = v122;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v103, -1, -1);
        MEMORY[0x1B272C230](v84, -1, -1);
        sub_1B0ACE908(v6);

        goto LABEL_28;
      }

      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
      sub_1B0ACE908(v6);
      sub_1B0ACE7A4(v129, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE908(v6);
      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);

      sub_1B0ACE908(v6);

      sub_1B0398EFC(v206, &qword_1EB6E4170, &qword_1B0EC3C60);
      v104 = v130;
    }

    sub_1B0ACE7A4(v104, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

LABEL_17:
  v10 = v125;
LABEL_18:
  sub_1B0ACE73C(a4, v132, type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(a4, v13, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0ACE8D0(v5, &v192);
  sub_1B0ACE8D0(v5, &v192);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = sub_1B0E43988();
  v34 = sub_1B0E458E8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *&v165[0] = v130;
    *v35 = 68159747;
    LODWORD(v129) = v34;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    v36 = &v13[*(v10 + 20)];
    *(v35 + 10) = *v36;
    *(v35 + 11) = 2082;
    v37 = *(v10 + 20);
    v128 = v33;
    v38 = v132;
    v39 = v132 + v37;
    *(v35 + 13) = sub_1B0399D64(*(&v132[1].isa + v37), *(&v132[2].isa + v37), v165);
    *(v35 + 21) = 1040;
    *(v35 + 23) = 2;
    *(v35 + 27) = 512;
    LOWORD(v36) = *(v36 + 12);
    sub_1B0ACE7A4(v13, type metadata accessor for MailboxTaskLogger);
    *(v35 + 29) = v36;
    *(v35 + 31) = 2160;
    *(v35 + 33) = 0x786F626C69616DLL;
    *(v35 + 41) = 2085;
    v40 = *(v39 + 4);
    LODWORD(v39) = *(v39 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v38, type metadata accessor for MailboxTaskLogger);
    *&v192 = v40;
    DWORD2(v192) = v39;
    v41 = sub_1B0E44BA8();
    v43 = sub_1B0399D64(v41, v42, v165);

    *(v35 + 43) = v43;
    *(v35 + 51) = 1024;
    sub_1B0ACE908(v6);
    *(v35 + 53) = *v6;
    sub_1B0ACE908(v6);
    *(v35 + 57) = 2082;
    v44 = SectionSpecifier.Part.debugDescription.getter(v131);
    v46 = sub_1B0399D64(v44, v45, v165);

    *(v35 + 59) = v46;
    v47 = v128;
    _os_log_impl(&dword_1B0389000, v128, v129, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Section '[%{public}s]' not found in complete body structure.", v35, 0x43u);
    v48 = v130;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v48, -1, -1);
    MEMORY[0x1B272C230](v35, -1, -1);
  }

  else
  {
    sub_1B0ACE908(v6);
    sub_1B0ACE7A4(v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE908(v6);

    sub_1B0ACE7A4(v132, type metadata accessor for MailboxTaskLogger);
  }

  v200 = v282;
  v201 = v283;
  v202 = v284;
  LOBYTE(v203) = v285;
  v196 = v278;
  v197 = v279;
  v198 = v280;
  v199 = v281;
  v192 = v274;
  v193 = v275;
  v194 = v276;
  v195 = v277;
  if (sub_1B04FAE9C(&v192) == 1)
  {
    goto LABEL_34;
  }

  v176 = v200;
  v177 = v201;
  v178 = v202;
  v179 = v203;
  v172 = v196;
  v173 = v197;
  v174 = v198;
  v175 = v199;
  v168 = v192;
  v169 = v193;
  v170 = v194;
  v171 = v195;
LABEL_33:
  v200 = v176;
  v201 = v177;
  v202 = v178;
  LOBYTE(v203) = v179;
  v196 = v172;
  v197 = v173;
  v198 = v174;
  v199 = v175;
  v192 = v168;
  v193 = v169;
  v194 = v170;
  v195 = v171;
  if (sub_1B04FAE88(&v192) == 1)
  {
LABEL_34:
    a5 = v126;
LABEL_35:
    LODWORD(v105) = v6[1];
    goto LABEL_36;
  }

  v246 = v200;
  v247 = v201;
  v248 = v202;
  v249 = v203;
  v242 = v196;
  v243 = v197;
  v244 = v198;
  v245 = v199;
  v238 = v192;
  v239 = v193;
  v240 = v194;
  v241 = v195;
  v165[8] = v176;
  v165[9] = v177;
  v165[10] = v178;
  LOBYTE(v165[11]) = v179;
  v165[4] = v172;
  v165[5] = v173;
  v165[6] = v174;
  v165[7] = v175;
  v165[0] = v168;
  v165[1] = v169;
  v165[2] = v170;
  v165[3] = v171;
  sub_1B07169CC(v165, &v143);
  BodyStructure.subscript.getter(v131, v208);
  sub_1B0ACE908(v6);
  v210[8] = v208[8];
  v210[9] = v208[9];
  v210[10] = v208[10];
  v211 = v209;
  v210[4] = v208[4];
  v210[5] = v208[5];
  v210[6] = v208[6];
  v210[7] = v208[7];
  v210[0] = v208[0];
  v210[1] = v208[1];
  v210[2] = v208[2];
  v210[3] = v208[3];
  v118 = sub_1B0717014(v210) == 1;
  a5 = v126;
  if (v118)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v210);
    sub_1B075E648(v208);
    goto LABEL_35;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v210);
  v105 = *(v119 + 80);
  sub_1B075E648(v208);
  if ((v105 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!HIDWORD(v105))
  {
LABEL_36:
    v106 = v105 * 1.25;
    if (v106 != INFINITY)
    {
      if (v106 > -1.0)
      {
        if (v106 < 4294967300.0)
        {
          if (v105 < 0xFFFFC000)
          {
            if (v105 + 0x4000 <= v106)
            {
              v107 = v106;
            }

            else
            {
              v107 = v105 + 0x4000;
            }

            v108 = *v6;
            sub_1B04FAA88(v135);
            v137[8] = v135[8];
            v137[9] = v135[9];
            v137[10] = v135[10];
            v138 = v136;
            v137[4] = v135[4];
            v137[5] = v135[5];
            v137[6] = v135[6];
            v137[7] = v135[7];
            v137[0] = v135[0];
            v137[1] = v135[1];
            v137[2] = v135[2];
            v137[3] = v135[3];
            v109 = v131;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v110 = v133;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0398EFC(v137, &qword_1EB6E4148, &qword_1B0EE17F0);
            *(&v165[8] + 1) = v270;
            *(&v165[9] + 1) = v271;
            *(&v165[10] + 1) = v272;
            BYTE1(v165[11]) = v273;
            *(&v165[4] + 1) = v266;
            *(&v165[5] + 1) = v267;
            *(&v165[6] + 1) = v268;
            *(&v165[7] + 1) = v269;
            *(v165 + 1) = v262;
            *(&v165[1] + 1) = v263;
            *(&v165[2] + 1) = v264;
            *(&v165[3] + 1) = v265;
            *(&v142[8] + 7) = v165[8];
            *(&v142[9] + 7) = v165[9];
            *(&v142[10] + 7) = v165[10];
            *(&v142[4] + 7) = v165[4];
            *(&v142[5] + 7) = v165[5];
            *(&v142[6] + 7) = v165[6];
            *(&v142[7] + 7) = v165[7];
            *(v142 + 7) = v165[0];
            *(&v142[1] + 7) = v165[1];
            *(&v142[2] + 7) = v165[2];
            *(&v142[3] + 7) = v165[3];
            v161 = v165[8];
            v162 = v165[9];
            v163 = v165[10];
            v157 = v165[4];
            v158 = v165[5];
            v159 = v165[6];
            v160 = v165[7];
            v153 = v165[0];
            v154 = v165[1];
            v155 = v165[2];
            LOBYTE(v139) = 1;
            *(&v139 + 1) = v110;
            *&v140 = __PAIR64__(v108, v134);
            *(&v140 + 1) = v109;
            LODWORD(v141) = v107;
            *(&v141 + 1) = MEMORY[0x1E69E7CC0];
            LODWORD(v142[0]) = 0;
            WORD2(v142[0]) = 2;
            BYTE6(v142[0]) = 0;
            *(&v142[11] + 7) = v165[11];
            LOBYTE(v143) = 1;
            v144 = v110;
            v145 = v134;
            v146 = v108;
            v147 = v109;
            v148 = v107;
            v149 = MEMORY[0x1E69E7CC0];
            v150 = 0;
            v151 = 2;
            v152 = 0;
            v164 = v165[11];
            v156 = v165[3];
            sub_1B0ACE448(&v139, &v192);
            sub_1B0ACE480(&v143);
            v166 = v142[9];
            v167[0] = v142[10];
            *(v167 + 9) = *(&v142[10] + 9);
            v165[8] = v142[5];
            v165[9] = v142[6];
            v165[10] = v142[7];
            v165[11] = v142[8];
            v165[4] = v142[1];
            v165[5] = v142[2];
            v165[6] = v142[3];
            v165[7] = v142[4];
            v165[0] = v139;
            v165[1] = v140;
            v165[2] = v141;
            v165[3] = v142[0];
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v165);
            v203 = v165[11];
            v204 = v166;
            v205[0] = v167[0];
            *(v205 + 9) = *(v167 + 9);
            v200 = v165[8];
            v201 = v165[9];
            v202 = v165[10];
            goto LABEL_44;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

double sub_1B0AC72EC@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (1)
    {
      v9 = *v8;
      v8 += 48;
      if (v9 == a1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    sub_1B0BAFEE8(v7, v16);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v16);
    v26 = v16[8];
    v27 = v16[9];
    v28[0] = v17[0];
    *(v28 + 9) = *(v17 + 9);
    v22 = v16[4];
    v23 = v16[5];
    v24 = v16[6];
    v25 = v16[7];
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
  }

  else
  {
LABEL_5:
    sub_1B0ACE938(&v18);
  }

  v10 = v27;
  a2[8] = v26;
  a2[9] = v10;
  a2[10] = v28[0];
  *(a2 + 169) = *(v28 + 9);
  v11 = v23;
  a2[4] = v22;
  a2[5] = v11;
  v12 = v25;
  a2[6] = v24;
  a2[7] = v12;
  v13 = v19;
  *a2 = v18;
  a2[1] = v13;
  result = *&v20;
  v15 = v21;
  a2[2] = v20;
  a2[3] = v15;
  return result;
}

uint64_t sub_1B0AC73F4(uint64_t a1, int a2, uint64_t a3)
{
  v130 = a1;
  v131 = a3;
  v129 = a2;
  v128 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v132 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v124 - v7;
  v8 = type metadata accessor for MessageSectionData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v124 - v13;
  v15 = type metadata accessor for SegmentResequencer.PopResult(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_1B0E443C8();
  v141 = *(v137 - 8);
  v19 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v143 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4188, &qword_1B0EC3C68);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v124 - v23;
  v25 = type metadata accessor for MessageSectionData.Segment(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v135 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s25MessageSectionsToDownloadVMa(0);
  v144 = *(v29 + 24);
  v145 = v3;
  v30 = *(v3 + v144);
  v136 = *(v30 + 2);
  if (!v136)
  {
    return 0xF000000000000007;
  }

  v125 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = v11;
  v127 = v8;
  v134 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v30 = sub_1B0B8C900(v30);
  }

  v32 = 0;
  v33 = v30 + 88;
  v34 = v141;
  v141 += 32;
  v142 = (v34 + 48);
  v139 = (v26 + 48);
  v140 = (v26 + 56);
  v35 = v136;
  v26 = v137;
  while (1)
  {
    if (v35 == v32)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v32 >= *(v30 + 2))
    {
      goto LABEL_41;
    }

    v36 = v33 - 16;
    sub_1B0B82B94(v18);
    if ((*v142)(v18, 1, v26) == 1)
    {
      sub_1B0ACE7A4(v18, type metadata accessor for SegmentResequencer.PopResult);
      (*v140)(v24, 1, 1, v25);
    }

    else
    {
      v37 = *v141;
      (*v141)(v143, v18, v26);
      if (*(v33 - 3))
      {
        sub_1B04FAA88(&v206);
        v38 = v138;
      }

      else
      {
        *(v33 - 3) = 1;
        v39 = *v33;
        v40 = *(v33 + 1);
        v41 = *(v33 + 3);
        v184 = *(v33 + 2);
        v185 = v41;
        v182 = v39;
        v183 = v40;
        v42 = *(v33 + 4);
        v43 = *(v33 + 5);
        v44 = *(v33 + 7);
        v188 = *(v33 + 6);
        v189 = v44;
        v186 = v42;
        v187 = v43;
        v45 = *(v33 + 8);
        v46 = *(v33 + 9);
        v47 = *(v33 + 10);
        v193 = v33[176];
        v191 = v46;
        v192 = v47;
        v190 = v45;
        memmove(&v194, v33, 0xB1uLL);
        v48 = sub_1B04FAE9C(&v194);
        v38 = v138;
        if (v48 == 1)
        {
          goto LABEL_12;
        }

        v214 = v202;
        v215 = v203;
        v216 = v204;
        LOBYTE(v217) = v205;
        v210 = v198;
        v211 = v199;
        v212 = v200;
        v213 = v201;
        v206 = v194;
        v207 = v195;
        v208 = v196;
        v209 = v197;
        if (sub_1B04FAE88(&v206) == 1)
        {
LABEL_12:
          sub_1B04FAEB0(&v170);
        }

        else
        {
          v154 = v214;
          v155 = v215;
          v156 = v216;
          v157 = v217;
          v150 = v210;
          v151 = v211;
          v152 = v212;
          v153 = v213;
          v146 = v206;
          v147 = v207;
          v148 = v208;
          v149 = v209;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v146);
          v166 = v190;
          v167 = v191;
          v168 = v192;
          v169 = v193;
          v162 = v186;
          v163 = v187;
          v164 = v188;
          v165 = v189;
          v158 = v182;
          v159 = v183;
          v160 = v184;
          v161 = v185;
          sub_1B075DC38(&v158, &v170);
          v178 = v154;
          v179 = v155;
          v180 = v156;
          v181 = v157;
          v174 = v150;
          v175 = v151;
          v176 = v152;
          v177 = v153;
          v170 = v146;
          v171 = v147;
          v172 = v148;
          v173 = v149;
        }

        v166 = v178;
        v167 = v179;
        v168 = v180;
        v169 = v181;
        v162 = v174;
        v163 = v175;
        v164 = v176;
        v165 = v177;
        v158 = v170;
        v159 = v171;
        v160 = v172;
        v161 = v173;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v158);
        v214 = v166;
        v215 = v167;
        v216 = v168;
        LOBYTE(v217) = v169;
        v210 = v162;
        v211 = v163;
        v212 = v164;
        v213 = v165;
        v206 = v158;
        v207 = v159;
        v208 = v160;
        v209 = v161;
      }

      v49 = *(v33 - 2);
      v50 = *(v33 - 4);
      v138 = v38 & 0xFFFFFF0000000000 | *(v33 - 2) | (v50 << 32);
      v51 = sub_1B0B83818(v49, v138);
      v54 = !v50 && v53 == 2;
      v55 = v54 && (v51 | v52) == 0;
      v56 = v55;
      v26 = v137;
      v37(v24, v143, v137);
      v36 = &v24[*(v25 + 24)];
      sub_1B04FAA88(&v182);
      v57 = v189;
      *(v36 + 6) = v188;
      *(v36 + 7) = v57;
      v58 = v187;
      *(v36 + 4) = v186;
      *(v36 + 5) = v58;
      v36[176] = v193;
      v59 = v192;
      *(v36 + 9) = v191;
      *(v36 + 10) = v59;
      *(v36 + 8) = v190;
      v60 = v183;
      *v36 = v182;
      *(v36 + 1) = v60;
      v61 = v185;
      *(v36 + 2) = v184;
      *(v36 + 3) = v61;
      v24[*(v25 + 20)] = v56;
      v62 = *(v36 + 9);
      v202 = *(v36 + 8);
      v203 = v62;
      v204 = *(v36 + 10);
      v205 = v36[176];
      v63 = *(v36 + 5);
      v198 = *(v36 + 4);
      v199 = v63;
      v64 = *(v36 + 7);
      v200 = *(v36 + 6);
      v201 = v64;
      v65 = *(v36 + 1);
      v194 = *v36;
      v195 = v65;
      v66 = *(v36 + 3);
      v196 = *(v36 + 2);
      v197 = v66;
      v67 = v215;
      *(v36 + 8) = v214;
      *(v36 + 9) = v67;
      *(v36 + 10) = v216;
      v36[176] = v217;
      v68 = v211;
      *(v36 + 4) = v210;
      *(v36 + 5) = v68;
      v69 = v213;
      *(v36 + 6) = v212;
      *(v36 + 7) = v69;
      v70 = v207;
      *v36 = v206;
      *(v36 + 1) = v70;
      v71 = v209;
      *(v36 + 2) = v208;
      *(v36 + 3) = v71;
      sub_1B0398EFC(&v194, &qword_1EB6E4190, &unk_1B0EC3C70);
      (*v140)(v24, 0, 1, v25);
      v35 = v136;
    }

    *(v145 + v144) = v30;
    if ((*v139)(v24, 1, v25) != 1)
    {
      break;
    }

    ++v32;
    sub_1B0398EFC(v24, &qword_1EB6E4188, &qword_1B0EC3C68);
    v33 += 240;
    if (v35 == v32)
    {
      return 0xF000000000000007;
    }
  }

  v73 = v135;
  sub_1B0ACE804(v24, v135, type metadata accessor for MessageSectionData.Segment);
  if (v32 >= *(v30 + 2))
  {
    __break(1u);
    goto LABEL_44;
  }

  v30 = *(v33 - 4);
  LODWORD(v26) = *v145;
  v74 = v134;
  sub_1B0ACE73C(v73, &v134[*(v127 + 28)], type metadata accessor for MessageSectionData.Segment);
  *v74 = v130;
  *(v74 + 8) = v129;
  *(v74 + 12) = v26;
  *(v74 + 16) = v30;
  v76 = *(v33 - 40);
  v75 = *(v33 - 24);
  v206 = *(v33 - 56);
  v207 = v76;
  v208 = v75;
  v77 = *(v33 + 24);
  v79 = *(v33 - 8);
  v78 = *(v33 + 8);
  v212 = *(v33 + 40);
  v211 = v77;
  v209 = v79;
  v210 = v78;
  v80 = *(v33 + 88);
  v82 = *(v33 + 56);
  v81 = *(v33 + 72);
  v216 = *(v33 + 104);
  v215 = v80;
  v213 = v82;
  v214 = v81;
  v84 = *(v33 + 136);
  v83 = *(v33 + 152);
  v85 = *(v33 + 120);
  *(v219 + 9) = *(v33 + 161);
  v219[0] = v83;
  v217 = v85;
  v218 = v84;
  v86 = *(&v208 + 1);
  v87 = v209;
  v88 = BYTE4(v209);
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE448(&v206, &v194);
  v89 = sub_1B0B83818(v86, v87 | (v88 << 32));
  v91 = v90;
  v93 = v92;
  sub_1B0ACE480(&v206);
  if (!v88 && v93 == 2 && !(v89 | v91))
  {
    v94 = v145;
    sub_1B0BAFE18(v32, &v194);
    v36 = *(&v195 + 1);
    v73 = *(v125 + 28);
    v32 = *(v94 + v73);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v96 = *(v32 + 2);
      v95 = *(v32 + 3);
      if (v96 >= v95 >> 1)
      {
        v32 = sub_1B0AFFD9C((v95 > 1), v96 + 1, 1, v32);
      }

      sub_1B0ACE480(&v194);
      *(v32 + 2) = v96 + 1;
      *&v32[8 * v96 + 32] = v36;
      *(v145 + v73) = v32;
      goto LABEL_36;
    }

LABEL_44:
    v32 = sub_1B0AFFD9C(0, *(v32 + 2) + 1, 1, v32);
    goto LABEL_33;
  }

LABEL_36:
  v97 = v131;
  v98 = v133;
  sub_1B0ACE73C(v131, v133, type metadata accessor for MailboxTaskLogger);
  v99 = v132;
  sub_1B0ACE73C(v97, v132, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v100 = v134;
  v101 = v126;
  sub_1B0ACE73C(v134, v126, type metadata accessor for MessageSectionData);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v102 = sub_1B0E43988();
  v103 = sub_1B0E458D8();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = v98;
    v105 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *&v182 = v145;
    *v105 = 68160003;
    LODWORD(v144) = v103;
    *(v105 + 4) = 2;
    *(v105 + 8) = 256;
    v106 = v128;
    v107 = *(v128 + 20);
    LODWORD(v143) = v26;
    v108 = v99 + v107;
    *(v105 + 10) = *(v99 + v107);
    *(v105 + 11) = 2082;
    v109 = v104 + *(v106 + 20);
    *(v105 + 13) = sub_1B0399D64(*(v109 + 8), *(v109 + 16), &v182);
    *(v105 + 21) = 1040;
    *(v105 + 23) = 2;
    *(v105 + 27) = 512;
    LOWORD(v108) = *(v108 + 24);
    sub_1B0ACE7A4(v99, type metadata accessor for MailboxTaskLogger);
    *(v105 + 29) = v108;
    *(v105 + 31) = 2160;
    *(v105 + 33) = 0x786F626C69616DLL;
    *(v105 + 41) = 2085;
    v110 = *(v109 + 32);
    LODWORD(v109) = *(v109 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v104, type metadata accessor for MailboxTaskLogger);
    *&v194 = v110;
    DWORD2(v194) = v109;
    v111 = v127;
    v112 = sub_1B0E44BA8();
    v114 = sub_1B0399D64(v112, v113, &v182);

    *(v105 + 43) = v114;
    *(v105 + 51) = 1024;
    *(v105 + 53) = v143;
    *(v105 + 57) = 2048;
    v115 = v101 + *(v111 + 28);
    v116 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0ACE7A4(v101, type metadata accessor for MessageSectionData);
    *(v105 + 59) = v116;
    *(v105 + 67) = 2082;
    v117 = SectionSpecifier.Part.debugDescription.getter(v30);
    v119 = v118;

    v120 = sub_1B0399D64(v117, v119, &v182);

    *(v105 + 69) = v120;
    _os_log_impl(&dword_1B0389000, v102, v144, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Forwarding %ld bytes for section '[%{public}s]' to the persistence.", v105, 0x4Du);
    v121 = v145;
    swift_arrayDestroy();
    v100 = v134;
    MEMORY[0x1B272C230](v121, -1, -1);
    MEMORY[0x1B272C230](v105, -1, -1);
  }

  else
  {
    sub_1B0ACE7A4(v101, type metadata accessor for MessageSectionData);
    sub_1B0ACE7A4(v99, type metadata accessor for MailboxTaskLogger);

    sub_1B0ACE7A4(v98, type metadata accessor for MailboxTaskLogger);
  }

  sub_1B0ACE7A4(v135, type metadata accessor for MessageSectionData.Segment);
  v122 = swift_allocBox();
  sub_1B0ACE804(v100, v123, type metadata accessor for MessageSectionData);
  return v122 | 0x5000000000000004;
}

unint64_t sub_1B0AC8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v76 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v70 - v15;
  v75 = _s25MessageSectionsToDownloadVMa(0);
  v16 = *(v75 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v81 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v82 = (&v70 - v22);
  v23 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0ACB8B8(v24, v5, a2, a4);
  v27 = v26;

  v28 = v27;

  if (v27)
  {
    v30 = 0;
LABEL_15:
    LOBYTE(v88[0]) = v28 & 1;
    return v30 | ((v28 & 1) << 32);
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *(v23 + 16))
  {
    v31 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v25;
    v32 = v82;
    sub_1B0ACE73C(v31, v82, _s25MessageSectionsToDownloadVMa);
    v30 = *v32;
    sub_1B0AC72EC(*v32, v86);
    v88[8] = v86[8];
    v88[9] = v86[9];
    v89[0] = v87[0];
    *(v89 + 9) = *(v87 + 9);
    v88[4] = v86[4];
    v88[5] = v86[5];
    v88[6] = v86[6];
    v88[7] = v86[7];
    v88[0] = v86[0];
    v88[1] = v86[1];
    v88[2] = v86[2];
    v88[3] = v86[3];
    if (sub_1B0ACE88C(v88) == 1)
    {
      v72 = v27;
      v33 = v79;
      v34 = v74;
      sub_1B0ACE73C(v79, v74, type metadata accessor for MailboxTaskLogger);
      v35 = v73;
      sub_1B0ACE73C(v33, v73, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v36 = sub_1B0E43988();
      v37 = sub_1B0E458D8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v71 = v30;
        v40 = v39;
        v85[0] = v39;
        *v38 = 68159491;
        *(v38 + 4) = 2;
        *(v38 + 8) = 256;
        v41 = v76;
        v42 = v35 + *(v76 + 20);
        *(v38 + 10) = *v42;
        *(v38 + 11) = 2082;
        v43 = v34 + *(v41 + 20);
        *(v38 + 13) = sub_1B0399D64(*(v43 + 8), *(v43 + 16), v85);
        *(v38 + 21) = 1040;
        *(v38 + 23) = 2;
        *(v38 + 27) = 512;
        LOWORD(v42) = *(v42 + 24);
        sub_1B0ACE7A4(v35, type metadata accessor for MailboxTaskLogger);
        *(v38 + 29) = v42;
        *(v38 + 31) = 2160;
        *(v38 + 33) = 0x786F626C69616DLL;
        *(v38 + 41) = 2085;
        v44 = *(v43 + 32);
        v45 = *(v43 + 40);
        v33 = v79;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v34, type metadata accessor for MailboxTaskLogger);
        v83 = v44;
        v84 = v45;
        v46 = sub_1B0E44BA8();
        v48 = sub_1B0399D64(v46, v47, v85);

        *(v38 + 43) = v48;
        *(v38 + 51) = 1024;
        *(v38 + 53) = v71;
        _os_log_impl(&dword_1B0389000, v36, v37, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download for message %u, but we don’t have a body structure for this message.", v38, 0x39u);
        swift_arrayDestroy();
        v49 = v40;
        v30 = v71;
        v32 = v82;
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v38, -1, -1);
      }

      else
      {
        sub_1B0ACE7A4(v35, type metadata accessor for MailboxTaskLogger);

        sub_1B0ACE7A4(v34, type metadata accessor for MailboxTaskLogger);
      }

      v28 = v72;
      v50 = v77;
      v52 = v80;
      v51 = v81;
    }

    else
    {
      sub_1B0398EFC(v86, &qword_1EB6E4168, &qword_1B0EC3C58);
      v50 = v77;
      v52 = v80;
      v51 = v81;
      v33 = v79;
    }

    sub_1B0ACE73C(v33, v50, type metadata accessor for MailboxTaskLogger);
    v53 = v78;
    sub_1B0ACE73C(v33, v78, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ACE73C(v32, v52, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v32, v51, _s25MessageSectionsToDownloadVMa);
    v54 = sub_1B0E43988();
    LODWORD(v79) = sub_1B0E45908();
    if (os_log_type_enabled(v54, v79))
    {
      v55 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v85[0] = v77;
      *v55 = 68159747;
      *(v55 + 4) = 2;
      *(v55 + 8) = 256;
      v56 = v76;
      v57 = v53 + *(v76 + 20);
      *(v55 + 10) = *v57;
      *(v55 + 11) = 2082;
      v58 = v30;
      v59 = v53;
      v60 = v50;
      v61 = v50 + *(v56 + 20);
      *(v55 + 13) = sub_1B0399D64(*(v61 + 8), *(v61 + 16), v85);
      *(v55 + 21) = 1040;
      *(v55 + 23) = 2;
      *(v55 + 27) = 512;
      LOWORD(v57) = *(v57 + 24);
      v62 = v59;
      v30 = v58;
      sub_1B0ACE7A4(v62, type metadata accessor for MailboxTaskLogger);
      *(v55 + 29) = v57;
      *(v55 + 31) = 2160;
      *(v55 + 33) = 0x786F626C69616DLL;
      *(v55 + 41) = 2085;
      v63 = *(v61 + 32);
      LODWORD(v61) = *(v61 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v60, type metadata accessor for MailboxTaskLogger);
      v83 = v63;
      v84 = v61;
      v64 = sub_1B0E44BA8();
      v66 = sub_1B0399D64(v64, v65, v85);

      *(v55 + 43) = v66;
      *(v55 + 51) = 2048;
      v67 = *(*(v80 + *(v75 + 28)) + 16);
      sub_1B0ACE7A4(v80, _s25MessageSectionsToDownloadVMa);
      *(v55 + 53) = v67;
      *(v55 + 61) = 1024;
      LODWORD(v67) = *v81;
      sub_1B0ACE7A4(v81, _s25MessageSectionsToDownloadVMa);
      *(v55 + 63) = v67;
      _os_log_impl(&dword_1B0389000, v54, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download of %ld sections for message %u.", v55, 0x43u);
      v68 = v77;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v68, -1, -1);
      MEMORY[0x1B272C230](v55, -1, -1);

      v69 = v82;
    }

    else
    {
      sub_1B0ACE7A4(v51, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE7A4(v52, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE7A4(v53, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v50, type metadata accessor for MailboxTaskLogger);
      v69 = v32;
    }

    sub_1B0ACE7A4(v69, _s25MessageSectionsToDownloadVMa);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1B0AC8A34(uint64_t a1, uint64_t a2)
{
  v230 = a1;
  v3 = v2;
  v231 = a2;
  v4 = sub_1B0E43308();
  v220 = *(v4 - 8);
  v221 = v4;
  v5 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v218 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v219 = &v203 - v8;
  v9 = type metadata accessor for MessageData.BodySection();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v224 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v211 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v208 = &v203 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v203 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v216 = (&v203 - v20);
  v227 = type metadata accessor for MailboxTaskLogger(0);
  v21 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v222 = (&v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v223 = &v203 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v209 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v210 = &v203 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v206 = &v203 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v207 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v225 = &v203 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v215 = (&v203 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v214 = &v203 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v226 = (&v203 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v203 - v43;
  v45 = sub_1B0E443C8();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v213 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v212 = &v203 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v203 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v203 - v55;
  v228 = *(v3 + 20);
  v57 = *(v10 + 32);
  v58 = v230;
  sub_1B03B5C80(v230 + v57, v44, &qword_1EB6E4178, &unk_1B0EE7570);
  v59 = type metadata accessor for MessageData.BodyData();
  if ((*(*(v59 - 8) + 48))(v44, 1, v59) != 1)
  {
    v222 = *(v46 + 16);
    v223 = v3;
    v222(v53, v44, v45);
    sub_1B0ACE7A4(v44, type metadata accessor for MessageData.BodyData);
    v224 = v46;
    (*(v46 + 32))(v56, v53, v45);
    v87 = *(v58 + 24);
    v204 = v45;
    v205 = v56;
    if (v87)
    {
      v88 = v231;
      v89 = v215;
      sub_1B0ACE73C(v231, v215, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v88, v225, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v90 = v213;
      v222(v213, v56, v45);
      v91 = v217;
      sub_1B0ACE73C(v58, v217, type metadata accessor for MessageData.BodySection);
      v92 = sub_1B0E43988();
      v93 = sub_1B0E458D8();
      v94 = v45;
      if (os_log_type_enabled(v92, v93))
      {
        v95 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v234 = v226;
        *v95 = 68160003;
        LODWORD(v222) = v93;
        *(v95 + 4) = 2;
        *(v95 + 8) = 256;
        v96 = v227;
        v97 = *(v227 + 20);
        v98 = v89;
        v216 = v92;
        v99 = v225;
        v100 = v225 + v97;
        *(v95 + 10) = *(v225 + v97);
        *(v95 + 11) = 2082;
        v101 = v98 + *(v96 + 20);
        *(v95 + 13) = sub_1B0399D64(*(v101 + 8), *(v101 + 16), &v234);
        *(v95 + 21) = 1040;
        *(v95 + 23) = 2;
        *(v95 + 27) = 512;
        LOWORD(v100) = *(v100 + 24);
        sub_1B0ACE7A4(v99, type metadata accessor for MailboxTaskLogger);
        *(v95 + 29) = v100;
        *(v95 + 31) = 2160;
        *(v95 + 33) = 0x786F626C69616DLL;
        *(v95 + 41) = 2085;
        v102 = *(v101 + 32);
        LODWORD(v101) = *(v101 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v98, type metadata accessor for MailboxTaskLogger);
        v232 = v102;
        v233 = v101;
        v103 = sub_1B0E44BA8();
        v105 = sub_1B0399D64(v103, v104, &v234);

        *(v95 + 43) = v105;
        *(v95 + 51) = 1024;
        *(v95 + 53) = v228;
        *(v95 + 57) = 2048;
        v106 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v107 = v90;
        v108 = v224;
        v109 = *(v224 + 8);
        v109(v107, v94);
        *(v95 + 59) = v106;
        *(v95 + 67) = 2082;
        v88 = v231;
        v110 = SectionSpecifier.debugDescription.getter(*v91, *(v91 + 8), *(v91 + 16));
        v112 = v111;
        sub_1B0ACE7A4(v91, type metadata accessor for MessageData.BodySection);
        v113 = sub_1B0399D64(v110, v112, &v234);

        *(v95 + 69) = v113;
        v114 = v216;
        _os_log_impl(&dword_1B0389000, v216, v222, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes for section '%{public}s'", v95, 0x4Du);
        v115 = v226;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v115, -1, -1);
        v116 = v95;
        v56 = v205;
        MEMORY[0x1B272C230](v116, -1, -1);
      }

      else
      {
        v165 = v90;
        v108 = v224;
        v109 = *(v224 + 8);
        v109(v165, v94);
        sub_1B0ACE7A4(v225, type metadata accessor for MailboxTaskLogger);

        sub_1B0ACE7A4(v89, type metadata accessor for MailboxTaskLogger);
        sub_1B0ACE7A4(v91, type metadata accessor for MessageData.BodySection);
      }

      v161 = 0;
      v166 = v229;
    }

    else
    {
      LODWORD(v225) = *(v58 + 20);
      v88 = v231;
      sub_1B0ACE73C(v231, v226, type metadata accessor for MailboxTaskLogger);
      v138 = v214;
      sub_1B0ACE73C(v88, v214, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v139 = v212;
      v222(v212, v56, v45);
      v140 = v216;
      sub_1B0ACE73C(v58, v216, type metadata accessor for MessageData.BodySection);
      v141 = sub_1B0E43988();
      v142 = sub_1B0E458D8();
      v143 = v45;
      if (os_log_type_enabled(v141, v142))
      {
        v144 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v234 = v222;
        *v144 = 68160259;
        LODWORD(v217) = v142;
        *(v144 + 4) = 2;
        *(v144 + 8) = 256;
        v145 = v227;
        v146 = v138 + *(v227 + 20);
        *(v144 + 10) = *v146;
        *(v144 + 11) = 2082;
        v147 = *(v145 + 20);
        v215 = v141;
        v148 = v226;
        v149 = v226 + v147;
        *(v144 + 13) = sub_1B0399D64(*(v226 + v147 + 8), *(v226 + v147 + 16), &v234);
        *(v144 + 21) = 1040;
        *(v144 + 23) = 2;
        *(v144 + 27) = 512;
        LOWORD(v146) = *(v146 + 24);
        sub_1B0ACE7A4(v138, type metadata accessor for MailboxTaskLogger);
        *(v144 + 29) = v146;
        *(v144 + 31) = 2160;
        *(v144 + 33) = 0x786F626C69616DLL;
        *(v144 + 41) = 2085;
        v150 = *(v149 + 4);
        v151 = *(v149 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v148, type metadata accessor for MailboxTaskLogger);
        v232 = v150;
        v233 = v151;
        v152 = sub_1B0E44BA8();
        v154 = sub_1B0399D64(v152, v153, &v234);

        *(v144 + 43) = v154;
        *(v144 + 51) = 1024;
        *(v144 + 53) = v228;
        *(v144 + 57) = 2048;
        v155 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v108 = v224;
        v109 = *(v224 + 8);
        v109(v139, v143);
        *(v144 + 59) = v155;
        *(v144 + 67) = 1024;
        v156 = v225;
        *(v144 + 69) = v225;
        *(v144 + 73) = 2082;
        v157 = SectionSpecifier.debugDescription.getter(v140->isa, v140[1].isa, v140[2].isa);
        v159 = v158;
        sub_1B0ACE7A4(v140, type metadata accessor for MessageData.BodySection);
        v160 = sub_1B0399D64(v157, v159, &v234);

        *(v144 + 75) = v160;
        v161 = v156;
        v162 = v215;
        _os_log_impl(&dword_1B0389000, v215, v217, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes (offset %u) for section '%{public}s'", v144, 0x53u);
        v163 = v222;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v163, -1, -1);
        v164 = v144;
        v88 = v231;
        MEMORY[0x1B272C230](v164, -1, -1);
      }

      else
      {
        v167 = v224;
        v109 = *(v224 + 8);
        v109(v139, v143);
        v168 = v138;
        v108 = v167;
        sub_1B0ACE7A4(v168, type metadata accessor for MailboxTaskLogger);

        v161 = v225;
        sub_1B0ACE7A4(v226, type metadata accessor for MailboxTaskLogger);
        sub_1B0ACE7A4(v140, type metadata accessor for MessageData.BodySection);
      }

      v166 = v229;
      v56 = v205;
    }

    v169 = v223;
    sub_1B0B817C8(v56, v161, v88);
    v170 = v56;
    if (!v166)
    {
      if (!*(v169 + 52))
      {
        v171 = *(v169 + 48);
        v172 = *(v169 + 40);
        v173 = v219;
        sub_1B0B82A64(v172);
        v174 = v218;
        sub_1B0E43238();
        LOBYTE(v171) = MEMORY[0x1B2725380](v173, v174);
        v175 = *(v220 + 8);
        v176 = v174;
        v177 = v221;
        v175(v176, v221);
        v178 = v173;
        v179 = v206;
        v180 = v177;
        v181 = v208;
        v175(v178, v180);
        v182 = v207;
        if (v171)
        {
          sub_1B0ACE73C(v88, v207, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE73C(v88, v179, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE73C(v230, v181, type metadata accessor for MessageData.BodySection);
          v183 = sub_1B0E43988();
          v184 = sub_1B0E458D8();
          if (os_log_type_enabled(v183, v184))
          {
            v185 = swift_slowAlloc();
            LODWORD(v230) = v184;
            v186 = v185;
            v187 = swift_slowAlloc();
            v229 = 0;
            v231 = v187;
            v234 = v187;
            *v186 = 68159747;
            *(v186 + 4) = 2;
            *(v186 + 8) = 256;
            v188 = v227;
            v189 = v181;
            v190 = v179;
            v191 = v179 + *(v227 + 20);
            *(v186 + 10) = *v191;
            *(v186 + 11) = 2082;
            v192 = v108;
            v193 = v182 + *(v188 + 20);
            *(v186 + 13) = sub_1B0399D64(*(v193 + 8), *(v193 + 16), &v234);
            *(v186 + 21) = 1040;
            *(v186 + 23) = 2;
            *(v186 + 27) = 512;
            LOWORD(v191) = *(v191 + 24);
            sub_1B0ACE7A4(v190, type metadata accessor for MailboxTaskLogger);
            *(v186 + 29) = v191;
            *(v186 + 31) = 2160;
            *(v186 + 33) = 0x786F626C69616DLL;
            *(v186 + 41) = 2085;
            v194 = *(v193 + 32);
            LODWORD(v193) = *(v193 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v182, type metadata accessor for MailboxTaskLogger);
            v232 = v194;
            v233 = v193;
            v195 = sub_1B0E44BA8();
            v197 = sub_1B0399D64(v195, v196, &v234);

            *(v186 + 43) = v197;
            *(v186 + 51) = 1024;
            *(v186 + 53) = v228;
            *(v186 + 57) = 2082;
            v198 = SectionSpecifier.debugDescription.getter(*v189, *(v189 + 8), *(v189 + 16));
            v200 = v199;
            sub_1B0ACE7A4(v189, type metadata accessor for MessageData.BodySection);
            v201 = sub_1B0399D64(v198, v200, &v234);

            *(v186 + 59) = v201;
            _os_log_impl(&dword_1B0389000, v183, v230, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: All data for section '%{public}s' has been received.", v186, 0x43u);
            v202 = v231;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v202, -1, -1);
            MEMORY[0x1B272C230](v186, -1, -1);

            (*(v192 + 8))(v205, v204);
          }

          else
          {
            sub_1B0ACE7A4(v179, type metadata accessor for MailboxTaskLogger);

            sub_1B0ACE7A4(v182, type metadata accessor for MailboxTaskLogger);
            v109(v205, v204);
            sub_1B0ACE7A4(v181, type metadata accessor for MessageData.BodySection);
          }

          return;
        }
      }

      v170 = v205;
    }

    v109(v170, v204);
    return;
  }

  v60 = v58;
  sub_1B0398EFC(v44, &qword_1EB6E4178, &unk_1B0EE7570);
  if (*(v3 + 52))
  {
    goto LABEL_9;
  }

  v61 = *(v3 + 48);
  v62 = v219;
  sub_1B0B82A64(*(v3 + 40));
  v63 = v218;
  sub_1B0E43238();
  LOBYTE(v61) = MEMORY[0x1B2725380](v62, v63);
  v64 = *(v220 + 8);
  v65 = v63;
  v66 = v221;
  v64(v65, v221);
  v64(v62, v66);
  if ((v61 & 1) == 0)
  {
LABEL_9:
    v117 = v231;
    v118 = v223;
    sub_1B0ACE73C(v231, v223, type metadata accessor for MailboxTaskLogger);
    v119 = v222;
    sub_1B0ACE73C(v117, v222, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v120 = v224;
    sub_1B0ACE73C(v60, v224, type metadata accessor for MessageData.BodySection);
    v121 = sub_1B0E43988();
    v122 = sub_1B0E458E8();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v234 = v231;
      *v123 = 68159747;
      *(v123 + 4) = 2;
      *(v123 + 8) = 256;
      v124 = v227;
      v125 = v119 + *(v227 + 20);
      *(v123 + 10) = *v125;
      *(v123 + 11) = 2082;
      v126 = v118 + *(v124 + 20);
      *(v123 + 13) = sub_1B0399D64(*(v126 + 8), *(v126 + 16), &v234);
      *(v123 + 21) = 1040;
      *(v123 + 23) = 2;
      *(v123 + 27) = 512;
      LOWORD(v125) = *(v125 + 12);
      sub_1B0ACE7A4(v119, type metadata accessor for MailboxTaskLogger);
      *(v123 + 29) = v125;
      *(v123 + 31) = 2160;
      *(v123 + 33) = 0x786F626C69616DLL;
      *(v123 + 41) = 2085;
      v127 = v118;
      v128 = v120;
      v129 = *(v126 + 32);
      LODWORD(v125) = *(v126 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v127, type metadata accessor for MailboxTaskLogger);
      v232 = v129;
      v233 = v125;
      v130 = sub_1B0E44BA8();
      v132 = sub_1B0399D64(v130, v131, &v234);

      *(v123 + 43) = v132;
      *(v123 + 51) = 1024;
      *(v123 + 53) = v228;
      *(v123 + 57) = 2082;
      v133 = SectionSpecifier.debugDescription.getter(*v128, *(v128 + 8), *(v128 + 16));
      v135 = v134;
      sub_1B0ACE7A4(v128, type metadata accessor for MessageData.BodySection);
      v136 = sub_1B0399D64(v133, v135, &v234);

      *(v123 + 59) = v136;
      _os_log_impl(&dword_1B0389000, v121, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s'. Message may have been deleted.", v123, 0x43u);
      v137 = v231;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v137, -1, -1);
      MEMORY[0x1B272C230](v123, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v119, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v118, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v120, type metadata accessor for MessageData.BodySection);
    }

    sub_1B0ACE9F0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v67 = v231;
    v68 = v210;
    sub_1B0ACE73C(v231, v210, type metadata accessor for MailboxTaskLogger);
    v69 = v209;
    sub_1B0ACE73C(v67, v209, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v70 = v211;
    sub_1B0ACE73C(v60, v211, type metadata accessor for MessageData.BodySection);
    v71 = sub_1B0E43988();
    v72 = sub_1B0E45908();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v234 = v231;
      *v73 = 68159747;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v74 = v227;
      v75 = v69 + *(v227 + 20);
      *(v73 + 10) = *v75;
      *(v73 + 11) = 2082;
      v76 = v68;
      v77 = v68 + *(v74 + 20);
      *(v73 + 13) = sub_1B0399D64(*(v77 + 8), *(v77 + 16), &v234);
      *(v73 + 21) = 1040;
      *(v73 + 23) = 2;
      *(v73 + 27) = 512;
      LOWORD(v75) = *(v75 + 24);
      sub_1B0ACE7A4(v69, type metadata accessor for MailboxTaskLogger);
      *(v73 + 29) = v75;
      *(v73 + 31) = 2160;
      *(v73 + 33) = 0x786F626C69616DLL;
      *(v73 + 41) = 2085;
      v78 = *(v77 + 32);
      LODWORD(v77) = *(v77 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v76, type metadata accessor for MailboxTaskLogger);
      v232 = v78;
      v233 = v77;
      v79 = sub_1B0E44BA8();
      v81 = sub_1B0399D64(v79, v80, &v234);

      *(v73 + 43) = v81;
      *(v73 + 51) = 1024;
      *(v73 + 53) = v228;
      *(v73 + 57) = 2082;
      v82 = SectionSpecifier.debugDescription.getter(*v70, *(v70 + 8), *(v70 + 16));
      v84 = v83;
      sub_1B0ACE7A4(v70, type metadata accessor for MessageData.BodySection);
      v85 = sub_1B0399D64(v82, v84, &v234);

      *(v73 + 59) = v85;
      _os_log_impl(&dword_1B0389000, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s', but we already have all data. Ignoring.", v73, 0x43u);
      v86 = v231;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v86, -1, -1);
      MEMORY[0x1B272C230](v73, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v69, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v68, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v70, type metadata accessor for MessageData.BodySection);
    }
  }
}

uint64_t sub_1B0ACA1A0()
{
  v1 = *(v0 + 144);
  v26[8] = *(v0 + 128);
  v26[9] = v1;
  v26[10] = *(v0 + 160);
  v27 = *(v0 + 176);
  v2 = *(v0 + 80);
  v26[4] = *(v0 + 64);
  v26[5] = v2;
  v3 = *(v0 + 112);
  v26[6] = *(v0 + 96);
  v26[7] = v3;
  v4 = *(v0 + 16);
  v26[0] = *v0;
  v26[1] = v4;
  v5 = *(v0 + 48);
  v26[2] = *(v0 + 32);
  v26[3] = v5;
  if (sub_1B0717014(v26) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v26);
    v6 = 0;
    v8 = *v7 + 32;
    v9 = *(*v7 + 16) + 1;
    while (--v9)
    {
      v10 = v8 + 184;
      v11 = *v8;
      v12 = *(v8 + 16);
      v13 = *(v8 + 48);
      v28[2] = *(v8 + 32);
      v28[3] = v13;
      v28[0] = v11;
      v28[1] = v12;
      v14 = *(v8 + 64);
      v15 = *(v8 + 80);
      v16 = *(v8 + 112);
      v28[6] = *(v8 + 96);
      v28[7] = v16;
      v28[4] = v14;
      v28[5] = v15;
      v17 = *(v8 + 128);
      v18 = *(v8 + 144);
      v19 = *(v8 + 160);
      v29 = *(v8 + 176);
      v28[9] = v18;
      v28[10] = v19;
      v28[8] = v17;
      v20 = sub_1B07169CC(v28, v25);
      v21 = sub_1B0ACA1A0(v20);
      sub_1B075E648(v28);
      v8 = v10;
      v22 = __OFADD__(v6, v21);
      v6 += v21;
      if (v22)
      {
        __break(1u);
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v26);
    return *(v23 + 80);
  }

  return v6;
}

uint64_t sub_1B0ACA2C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B945B4(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (*(v12 - 2) >= v14)
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4158, &qword_1B0EC3518);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1B0ACA5B8(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0ACA438(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0BCACA8(v3, 0);
  result = sub_1B0B0A024(0, v3, 0);
  v5 = 0;
  v6 = v2;
  v23 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  if ((v11 & v7) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return 0;
    }

    v12 = *(v8 + 8 * v14);
    ++v5;
    if (v12)
    {
      v5 = v14;
      do
      {
LABEL_8:
        v15 = __clz(__rbit64(v12)) | (v5 << 6);
        v16 = *(*(v23 + 48) + 4 * v15);
        v17 = *(v23 + 56) + 16 * v15;
        v18 = *v17;
        v24 = *(v17 + 8);
        v19 = *(v17 + 9);
        result = sub_1B0ACADC0(v16);
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1B0B0A024((v20 > 1), v21 + 1, 1);
        }

        *(v6 + 16) = v21 + 1;
        v22 = v6 + 16 * v21;
        *(v22 + 32) = v18;
        v12 &= v12 - 1;
        *(v22 + 40) = v24;
        *(v22 + 41) = v19;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ACA5B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v89 = (v8 + 16);
    v90 = *(v8 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v8 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B0ACAB94((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v12 < v10 == v16 >= v17)
        {
          v7 = v15 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1B0AFF300((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 32;
    v45 = (v8 + 32 + 16 * v42);
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v44 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v44 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v44 + 16 * (v46 - 1));
        v85 = *v84;
        v86 = (v44 + 16 * v46);
        v87 = v86[1];
        sub_1B0ACAB94((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v8 + 16);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove((v44 + 16 * v46), v86 + 2, 16 * (v88 - 1 - v46));
        *(v8 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v44 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v44 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (*v34 >= v36)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0ACAB94(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_1B0ACADC0(int a1)
{
  v4 = v1 + 1;
  v3 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v3;
  if ((result & 1) == 0)
  {
    result = sub_1B0B0A044(0, *(v3 + 16) + 1, 1);
    v3 = *v4;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1B0B0A044((v6 > 1), v7 + 1, 1);
    v3 = *v4;
  }

  *(v3 + 16) = v7 + 1;
  *(v3 + 4 * v7 + 32) = a1;
  v1[1] = v3;
  v8 = *v1;
  if (!*v1)
  {
    if (v7 < 0xF)
    {
      return result;
    }

    return sub_1B0BCA0AC();
  }

  swift_beginAccess();
  if (MEMORY[0x1B2725670](*(v8 + 16) & 0x3FLL) <= v7)
  {
    return sub_1B0BCA0AC();
  }

  v9 = *v1;
  result = swift_isUniquelyReferenced_native();
  v10 = *v1;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v11 = *v1;
    v12 = sub_1B0E43578();

    *v1 = v12;
    v10 = v12;
  }

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v10 + 16);
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *(v10 + 16), 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (sub_1B0E434F8())
  {
    while (1)
    {
      sub_1B0E43548();
    }
  }

  v14 = *(v3 + 16);
  return sub_1B0E43538();
}

uint64_t sub_1B0ACAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19MessageHeaderStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1B0ACE73C(a1, &v23 - v15, _s19MessageHeaderStatusOMa);
  sub_1B0ACE73C(a2, &v16[v18], _s19MessageHeaderStatusOMa);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v16[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1B0398EFC(v16, &qword_1EB6E4160, &unk_1B0EC3C48);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_1B0ACE73C(v16, v12, _s19MessageHeaderStatusOMa);
    if (!v19(&v16[v18], 3, v4))
    {
      sub_1B0ACE804(&v16[v18], v8, type metadata accessor for MessageHeader);
      v21 = static MessageHeader.== infix(_:_:)();
      sub_1B0ACE7A4(v8, type metadata accessor for MessageHeader);
      sub_1B0ACE7A4(v12, type metadata accessor for MessageHeader);
      sub_1B0ACE7A4(v16, _s19MessageHeaderStatusOMa);
      return v21 & 1;
    }

    sub_1B0ACE7A4(v12, type metadata accessor for MessageHeader);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1B0ACE7A4(v16, _s19MessageHeaderStatusOMa);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1B0ACB2BC(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v173 = v2;
  v174 = v3;
  v5 = *(a1 + 152);
  v71 = *(a1 + 136);
  v72 = v5;
  v73 = *(a1 + 168);
  v74 = *(a1 + 184);
  v6 = *(a1 + 88);
  v67 = *(a1 + 72);
  v68 = v6;
  v7 = *(a1 + 120);
  v69 = *(a1 + 104);
  v70 = v7;
  v8 = *(a1 + 24);
  v63 = *(a1 + 8);
  v64 = v8;
  v9 = *(a1 + 56);
  v65 = *(a1 + 40);
  v66 = v9;
  if (sub_1B04FAE9C(&v63) == 1)
  {
    v10 = *(a2 + 152);
    v169 = *(a2 + 136);
    v170 = v10;
    v171 = *(a2 + 168);
    v172 = *(a2 + 184);
    v11 = *(a2 + 88);
    v165 = *(a2 + 72);
    v166 = v11;
    v12 = *(a2 + 120);
    v167 = *(a2 + 104);
    v168 = v12;
    v13 = *(a2 + 24);
    v161 = *(a2 + 8);
    v162 = v13;
    v14 = *(a2 + 56);
    v163 = *(a2 + 40);
    v164 = v14;
    result = sub_1B04FAE9C(&v161);
    goto LABEL_5;
  }

  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v16 = *(a2 + 152);
  v121 = *(a2 + 136);
  v122 = v16;
  v123 = *(a2 + 168);
  v124 = *(a2 + 184);
  v17 = *(a2 + 88);
  v117 = *(a2 + 72);
  v118 = v17;
  v18 = *(a2 + 120);
  v119 = *(a2 + 104);
  v120 = v18;
  v19 = *(a2 + 24);
  v113 = *(a2 + 8);
  v114 = v19;
  v20 = *(a2 + 56);
  v115 = *(a2 + 40);
  v116 = v20;
  if (sub_1B04FAE9C(&v113) == 1)
  {
    return 0;
  }

  v133 = v121;
  v134 = v122;
  v135 = v123;
  v136 = v124;
  v129 = v117;
  v130 = v118;
  v131 = v119;
  v132 = v120;
  v125 = v113;
  v126 = v114;
  v127 = v115;
  v128 = v116;
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v98 = v86;
  v91 = v79;
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v90 = v78;
  if (sub_1B04FAE88(&v87) != 1)
  {
    v107 = v95;
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v103 = v91;
    v104 = v92;
    v105 = v93;
    v106 = v94;
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v145 = v133;
    v146 = v134;
    v147 = v135;
    v148 = v136;
    v141 = v129;
    v142 = v130;
    v143 = v131;
    v144 = v132;
    v137 = v125;
    v138 = v126;
    v139 = v127;
    v140 = v128;
    if (sub_1B04FAE88(&v137) == 1)
    {
      return 0;
    }

    v157 = v145;
    v158 = v146;
    v159 = v147;
    v160 = v148;
    v153 = v141;
    v154 = v142;
    v155 = v143;
    v156 = v144;
    v149 = v137;
    v150 = v138;
    v151 = v139;
    v152 = v140;
    v111[8] = v107;
    v111[9] = v108;
    v111[10] = v109;
    v112 = v110;
    v111[4] = v103;
    v111[5] = v104;
    v111[6] = v105;
    v111[7] = v106;
    v111[0] = v99;
    v111[1] = v100;
    v111[2] = v101;
    v111[3] = v102;
    if (sub_1B0717014(v111) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v111);
      v22 = v21[5];
      v45 = v21[4];
      v46 = v22;
      v47 = v21[6];
      *&v48 = *(v21 + 14);
      v23 = v21[1];
      v41 = *v21;
      v42 = v23;
      v24 = v21[3];
      v43 = v21[2];
      v44 = v24;
      v169 = v157;
      v170 = v158;
      v171 = v159;
      v172 = v160;
      v165 = v153;
      v166 = v154;
      v167 = v155;
      v168 = v156;
      v161 = v149;
      v162 = v150;
      v163 = v151;
      v164 = v152;
      if (sub_1B0717014(&v161) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v161);
        v26 = v25[5];
        v56 = v25[4];
        v57 = v26;
        v58 = v25[6];
        *&v59 = *(v25 + 14);
        v27 = v25[1];
        v52 = *v25;
        v53 = v27;
        v28 = v25[3];
        v54 = v25[2];
        v55 = v28;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v41, &v52);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v111);
      v30 = v29[9];
      v49 = v29[8];
      v50 = v30;
      v51 = v29[10];
      v31 = v29[5];
      v45 = v29[4];
      v46 = v31;
      v32 = v29[7];
      v47 = v29[6];
      v48 = v32;
      v33 = v29[1];
      v41 = *v29;
      v42 = v33;
      v34 = v29[3];
      v43 = v29[2];
      v44 = v34;
      v172 = v160;
      v170 = v158;
      v171 = v159;
      v168 = v156;
      v169 = v157;
      v166 = v154;
      v167 = v155;
      v164 = v152;
      v165 = v153;
      v162 = v150;
      v163 = v151;
      v161 = v149;
      if (sub_1B0717014(&v161) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v161);
        v36 = v35[9];
        v60 = v35[8];
        v61 = v36;
        v62 = v35[10];
        v37 = v35[5];
        v56 = v35[4];
        v57 = v37;
        v38 = v35[7];
        v58 = v35[6];
        v59 = v38;
        v39 = v35[1];
        v52 = *v35;
        v53 = v39;
        v40 = v35[3];
        v54 = v35[2];
        v55 = v40;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v41, &v52);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v161);
    return 0;
  }

  v169 = v133;
  v170 = v134;
  v171 = v135;
  v172 = v136;
  v165 = v129;
  v166 = v130;
  v167 = v131;
  v168 = v132;
  v161 = v125;
  v162 = v126;
  v163 = v127;
  v164 = v128;
  result = sub_1B04FAE88(&v161);
LABEL_5:
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0ACB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v56 = type metadata accessor for MessageHeader();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v41 - v10;
  v11 = _s19MessageHeaderStatusOMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v54 = v41 - v17;
  v18 = *(a1 + 16);
  v19 = v18 == 0;
  if (v18)
  {
    v43 = v16;
    v41[1] = v4;
    v55 = (v6 + 48);
    v47 = (v6 + 56);
    v20 = 0;
    v53 = _s25MessageSectionsToDownloadVMa(0);
    v21 = (a1 + ((*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80)));
    v52 = *(*(v53 - 8) + 72);
    v46 = v18;
    while (1)
    {
      v22 = v53;
      v23 = v54;
      v24 = *(v53 + 20);
      sub_1B0ACE73C(v21 + v24, v54, _s19MessageHeaderStatusOMa);
      v25 = *v55;
      v26 = (*v55)(v23, 3, v56);
      sub_1B0ACE7A4(v23, _s19MessageHeaderStatusOMa);
      if (*(*(v21 + *(v22 + 24)) + 16))
      {
        goto LABEL_5;
      }

      v50 = v19;
      v27 = v51;
      (*v47)(v51, 1, 3, v56);
      v28 = *(v48 + 48);
      v29 = v21 + v24;
      v30 = v49;
      sub_1B0ACE73C(v29, v49, _s19MessageHeaderStatusOMa);
      sub_1B0ACE73C(v27, v30 + v28, _s19MessageHeaderStatusOMa);
      v31 = v25(v30, 3, v56);
      if (v31 > 1)
      {
        break;
      }

      v32 = v26;
      if (v31)
      {
        v35 = v25(v30 + v28, 3, v56) == 1;
        goto LABEL_15;
      }

      v33 = v43;
      sub_1B0ACE73C(v30, v43, _s19MessageHeaderStatusOMa);
      if (!v25(v30 + v28, 3, v56))
      {
        v36 = v30 + v28;
        v37 = v42;
        sub_1B0ACE804(v36, v42, type metadata accessor for MessageHeader);
        v38 = static MessageHeader.== infix(_:_:)();
        v39 = v37;
        v30 = v49;
        sub_1B0ACE7A4(v39, type metadata accessor for MessageHeader);
        v32 = v26;
        sub_1B0ACE7A4(v33, type metadata accessor for MessageHeader);
        if (v38)
        {
LABEL_3:
          sub_1B0ACE7A4(v30, _s19MessageHeaderStatusOMa);
          sub_1B0ACE7A4(v51, _s19MessageHeaderStatusOMa);
          v18 = v46;
LABEL_4:
          if ((sub_1B0A9E1D0(*v21 | 0x200000000, v44, v45) & 1) == 0)
          {
            return v20;
          }

          goto LABEL_5;
        }

        sub_1B0ACE7A4(v30, _s19MessageHeaderStatusOMa);
        goto LABEL_17;
      }

      sub_1B0ACE7A4(v33, type metadata accessor for MessageHeader);
LABEL_16:
      sub_1B0398EFC(v30, &qword_1EB6E4160, &unk_1B0EC3C48);
LABEL_17:
      v18 = v46;
      sub_1B0ACE7A4(v51, _s19MessageHeaderStatusOMa);
      if (!v32)
      {
        goto LABEL_4;
      }

LABEL_5:
      ++v20;
      v21 = (v21 + v52);
      v19 = v18 == v20;
      if (v18 == v20)
      {
        return 0;
      }
    }

    v35 = v31 == 2;
    v32 = v26;
    v34 = v30 + v28;
    if (v35)
    {
      v35 = v25(v34, 3, v56) == 2;
    }

    else
    {
      v35 = v25(v34, 3, v56) == 3;
    }

LABEL_15:
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  return 0;
}

void sub_1B0ACBE30(unsigned int a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v92 = a1;
  v10 = a2[9];
  v126 = a2[8];
  v127 = v10;
  v128 = a2[10];
  v129 = *(a2 + 176);
  v11 = a2[5];
  v122 = a2[4];
  v123 = v11;
  v12 = a2[7];
  v124 = a2[6];
  v125 = v12;
  v13 = a2[1];
  v118 = *a2;
  v119 = v13;
  v14 = a2[3];
  v120 = a2[2];
  v121 = v14;
  v15 = _s25MessageSectionsToDownloadVMa(0);
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for MailboxTaskLogger(0);
  v18 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v80[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80[-v21];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v23 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v25 = &v80[-v24];
  v93 = type metadata accessor for DownloadTask.CommandID(0);
  v26 = *(v93 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v29 = &v80[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80[-v31];
  v33 = sub_1B0AF40B4(a4, a5);
  v34 = v33;
  v35 = v33[2];
  if (v35)
  {
    v82 = v22;
    v83 = a2;
    v81 = a3;
    v36 = 0;
    v37 = v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v90 = v37;
    while (v36 < v34[2])
    {
      sub_1B0ACE73C(&v37[*(v26 + 72) * v36], v32, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE73C(v32, v29, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0ACE7A4(v32, type metadata accessor for DownloadTask.CommandID);
        sub_1B0ACE7A4(v29, type metadata accessor for DownloadTask.CommandID);
      }

      else
      {
        sub_1B03C60A4(v29, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        LODWORD(v106) = v92;
        v38 = MessageIdentifierSet.contains(_:)(&v106, v91);
        v37 = v90;
        sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0ACE7A4(v32, type metadata accessor for DownloadTask.CommandID);
        if (v38)
        {

          v39 = v85;
          v40 = v82;
          sub_1B0ACE73C(v85, v82, type metadata accessor for MailboxTaskLogger);
          v41 = v86;
          sub_1B0ACE73C(v39, v86, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v42 = sub_1B0E43988();
          v43 = sub_1B0E45908();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *&v94 = v45;
            *v44 = 68159491;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            v46 = v84;
            v47 = &v41[*(v84 + 20)];
            *(v44 + 10) = *v47;
            *(v44 + 11) = 2082;
            v48 = v40 + *(v46 + 20);
            *(v44 + 13) = sub_1B0399D64(*(v48 + 8), *(v48 + 16), &v94);
            *(v44 + 21) = 1040;
            *(v44 + 23) = 2;
            *(v44 + 27) = 512;
            LOWORD(v47) = *(v47 + 12);
            sub_1B0ACE7A4(v41, type metadata accessor for MailboxTaskLogger);
            *(v44 + 29) = v47;
            *(v44 + 31) = 2160;
            *(v44 + 33) = 0x786F626C69616DLL;
            *(v44 + 41) = 2085;
            v49 = *(v48 + 32);
            LODWORD(v48) = *(v48 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v40, type metadata accessor for MailboxTaskLogger);
            *&v106 = v49;
            DWORD2(v106) = v48;
            v50 = sub_1B0E44BA8();
            v52 = sub_1B0399D64(v50, v51, &v94);

            *(v44 + 43) = v52;
            *(v44 + 51) = 1024;
            v26 = v92;
            *(v44 + 53) = v92;
            _os_log_impl(&dword_1B0389000, v42, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive body structure for message %u.", v44, 0x39u);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v45, -1, -1);
            MEMORY[0x1B272C230](v44, -1, -1);

            v29 = v88;
          }

          else
          {
            sub_1B0ACE7A4(v41, type metadata accessor for MailboxTaskLogger);

            sub_1B0ACE7A4(v40, type metadata accessor for MailboxTaskLogger);
            v29 = v88;
            v26 = v92;
          }

          v53 = v83;
          v54 = v87;
          v55 = _s18InProgressMessagesVMa(0);
          v56 = v55[11];
          sub_1B075DC38(v53, &v106);
          v57 = *&v29[v56];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = *&v29[v56];
          sub_1B0A9C3B8(v53, v26, isUniquelyReferenced_nonNull_native);
          *&v29[v56] = v106;
          v93 = v55[7];
          v25 = *&v29[v93];
          v59 = *(v25 + 2) + 1;
          v60 = 32;
          while (--v59)
          {
            v61 = *&v25[v60];
            v60 += 192;
            if (v61 == v26)
            {
              return;
            }
          }

          v62 = 0;
          v63 = *&v29[v55[8]];
          v64 = *(v63 + 16);
          while (v64 != v62)
          {
            if (v62 >= *(v63 + 16))
            {
              goto LABEL_29;
            }

            v65 = v89;
            sub_1B0ACE73C(v63 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v62++, v89, _s25MessageSectionsToDownloadVMa);
            v66 = *v65;
            sub_1B0ACE7A4(v65, _s25MessageSectionsToDownloadVMa);
            if (v66 == v26)
            {
              return;
            }
          }

          sub_1B075DC38(v83, &v106);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v67 = v81;
            v69 = *(v25 + 2);
            v68 = *(v25 + 3);
            if (v69 >= v68 >> 1)
            {
              v25 = sub_1B0AFFAF8((v68 > 1), v69 + 1, 1, v25);
            }

            v102 = v126;
            v103 = v127;
            v104 = v128;
            v105 = v129;
            v98 = v122;
            v99 = v123;
            v100 = v124;
            v101 = v125;
            v94 = v118;
            v95 = v119;
            v96 = v120;
            v97 = v121;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v94);
            v108 = v96;
            v109 = v97;
            v112 = v100;
            v113 = v101;
            v110 = v98;
            v111 = v99;
            v117 = v105;
            v115 = v103;
            v116 = v104;
            v114 = v102;
            v106 = v94;
            v107 = v95;
            *(v25 + 2) = v69 + 1;
            v70 = &v25[192 * v69];
            *(v70 + 8) = v26;
            *(v70 + 9) = v67;
            v71 = v106;
            v72 = v107;
            v73 = v108;
            *(v70 + 88) = v109;
            *(v70 + 72) = v73;
            *(v70 + 56) = v72;
            *(v70 + 40) = v71;
            v74 = v110;
            v75 = v111;
            v76 = v112;
            *(v70 + 152) = v113;
            *(v70 + 136) = v76;
            *(v70 + 120) = v75;
            *(v70 + 104) = v74;
            v77 = v114;
            v78 = v115;
            v79 = v116;
            v70[216] = v117;
            *(v70 + 200) = v79;
            *(v70 + 184) = v78;
            *(v70 + 168) = v77;
            *&v29[v93] = v25;
            return;
          }

LABEL_30:
          v25 = sub_1B0AFFAF8(0, *(v25 + 2) + 1, 1, v25);
          goto LABEL_25;
        }
      }

      if (v35 == ++v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
}

uint64_t sub_1B0ACC6E4(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a3;
  v138 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v123 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v123 - v22;
  v23 = _s25MessageSectionsToDownloadVMa(0);
  v134 = *(v23 - 8);
  v24 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v133 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v26 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v28 = &v123 - v27;
  v139 = type metadata accessor for DownloadTask.CommandID(0);
  v29 = *(v139 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v32 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v123 - v34;
  v36 = sub_1B0AF40B4(a4, a5);
  v37 = v36;
  v38 = v36[2];
  if (v38)
  {
    v123 = v10;
    v124 = a6;
    v125 = a2;
    v39 = 0;
    v40 = v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v136 = v35;
    while (v39 < v37[2])
    {
      sub_1B0ACE73C(&v40[*(v29 + 72) * v39], v35, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE73C(v35, v32, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03C60A4(v32, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        LODWORD(v178) = v138;
        v41 = MessageIdentifierSet.contains(_:)(&v178, v137);
        v35 = v136;
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0ACE7A4(v35, type metadata accessor for DownloadTask.CommandID);
        if (v41)
        {

          result = _s18InProgressMessagesVMa(0);
          v43 = result;
          v139 = *(result + 28);
          v44 = v131;
          v40 = *(v132 + v139);
          v45 = *(v40 + 2) + 1;
          v46 = 32;
          v32 = v138;
          v47 = v135;
          while (--v45)
          {
            v48 = *&v40[v46];
            v46 += 192;
            if (v48 == v138)
            {
              return result;
            }
          }

          v49 = 0;
          v50 = v133;
          v51 = *(v132 + *(result + 32));
          v52 = *(v51 + 16);
          while (v52 != v49)
          {
            if (v49 >= *(v51 + 16))
            {
              goto LABEL_47;
            }

            sub_1B0ACE73C(v51 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v49++, v50, _s25MessageSectionsToDownloadVMa);
            v53 = *v50;
            result = sub_1B0ACE7A4(v50, _s25MessageSectionsToDownloadVMa);
            v54 = v53 == v32;
            v47 = v135;
            if (v54)
            {
              return result;
            }
          }

          v55 = *(v132 + 16);
          if (*(v55 + 16))
          {
            v56 = sub_1B03FE284(v32);
            v57 = v130;
            if (v58)
            {
              v59 = (*(v55 + 56) + 184 * v56);
              v61 = v59[2];
              v60 = v59[3];
              v62 = v59[1];
              v154 = *v59;
              v155 = v62;
              v156 = v61;
              v157 = v60;
              v63 = v59[4];
              v64 = v59[5];
              v65 = v59[7];
              v160 = v59[6];
              v161 = v65;
              v158 = v63;
              v159 = v64;
              v66 = v59[8];
              v67 = v59[9];
              v68 = v59[10];
              v165 = *(v59 + 176);
              v163 = v67;
              v164 = v68;
              v162 = v66;
              memmove(&v166, v59, 0xB1uLL);
              __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v166);
              sub_1B075DC38(&v154, &v178);
              v186 = v174;
              v187 = v175;
              v188 = v176;
              v189 = v177;
              v182 = v170;
              v183 = v171;
              v184 = v172;
              v185 = v173;
              v178 = v166;
              v179 = v167;
              v180 = v168;
              v181 = v169;
            }

            else
            {
              sub_1B04FAA88(&v178);
            }
          }

          else
          {
            sub_1B04FAA88(&v178);
            v57 = v130;
          }

          if (v129)
          {
            sub_1B0398EFC(&v178, &qword_1EB6E4148, &qword_1B0EE17F0);
            v69 = v124;
            v70 = v128;
            sub_1B0ACE73C(v124, v128, type metadata accessor for MailboxTaskLogger);
            v71 = v127;
            sub_1B0ACE73C(v69, v127, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v72 = sub_1B0E43988();
            v73 = sub_1B0E45908();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              *&v142 = v137;
              *v74 = 68159491;
              *(v74 + 4) = 2;
              *(v74 + 8) = 256;
              v75 = v123;
              v76 = v71 + *(v123 + 20);
              *(v74 + 10) = *v76;
              *(v74 + 11) = 2082;
              v77 = v70;
              v78 = v70 + *(v75 + 20);
              *(v74 + 13) = sub_1B0399D64(*(v78 + 8), *(v78 + 16), &v142);
              *(v74 + 21) = 1040;
              *(v74 + 23) = 2;
              *(v74 + 27) = 512;
              LOWORD(v76) = *(v76 + 24);
              sub_1B0ACE7A4(v71, type metadata accessor for MailboxTaskLogger);
              *(v74 + 29) = v76;
              *(v74 + 31) = 2160;
              *(v74 + 33) = 0x786F626C69616DLL;
              *(v74 + 41) = 2085;
              v79 = *(v78 + 32);
              LODWORD(v78) = *(v78 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0ACE7A4(v77, type metadata accessor for MailboxTaskLogger);
              *&v154 = v79;
              DWORD2(v154) = v78;
              v80 = sub_1B0E44BA8();
              v32 = sub_1B0399D64(v80, v81, &v142);

              *(v74 + 43) = v32;
              LODWORD(v32) = v138;
              *(v74 + 51) = 1024;
              *(v74 + 53) = v32;
              _os_log_impl(&dword_1B0389000, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u.", v74, 0x39u);
              v82 = v137;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v82, -1, -1);
              MEMORY[0x1B272C230](v74, -1, -1);
            }

            else
            {
              sub_1B0ACE7A4(v71, type metadata accessor for MailboxTaskLogger);

              sub_1B0ACE7A4(v70, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B04FAA88(&v166);
          }

          else
          {
            v162 = v186;
            v163 = v187;
            v164 = v188;
            v165 = v189;
            v158 = v182;
            v159 = v183;
            v160 = v184;
            v161 = v185;
            v154 = v178;
            v155 = v179;
            v156 = v180;
            v157 = v181;
            if (sub_1B04FAE9C(&v154) == 1)
            {
              v83 = v124;
              sub_1B0ACE73C(v124, v57, type metadata accessor for MailboxTaskLogger);
              v84 = v126;
              sub_1B0ACE73C(v83, v126, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v85 = sub_1B0E43988();
              v86 = sub_1B0E458E8();
              if (os_log_type_enabled(v85, v86))
              {
                v87 = swift_slowAlloc();
                v137 = swift_slowAlloc();
                *&v140[0] = v137;
                *v87 = 68159491;
                *(v87 + 4) = 2;
                *(v87 + 8) = 256;
                v88 = v123;
                v89 = v84 + *(v123 + 20);
                *(v87 + 10) = *v89;
                *(v87 + 11) = 2082;
                v90 = v57 + *(v88 + 20);
                *(v87 + 13) = sub_1B0399D64(*(v90 + 8), *(v90 + 16), v140);
                *(v87 + 21) = 1040;
                *(v87 + 23) = 2;
                *(v87 + 27) = 512;
                LOWORD(v89) = *(v89 + 24);
                sub_1B0ACE7A4(v84, type metadata accessor for MailboxTaskLogger);
                *(v87 + 29) = v89;
                *(v87 + 31) = 2160;
                *(v87 + 33) = 0x786F626C69616DLL;
                *(v87 + 41) = 2085;
                v91 = *(v90 + 32);
                LODWORD(v90) = *(v90 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0ACE7A4(v57, type metadata accessor for MailboxTaskLogger);
                *&v142 = v91;
                DWORD2(v142) = v90;
                v92 = sub_1B0E44BA8();
                v32 = sub_1B0399D64(v92, v93, v140);

                *(v87 + 43) = v32;
                LODWORD(v32) = v138;
                *(v87 + 51) = 1024;
                *(v87 + 53) = v32;
                _os_log_impl(&dword_1B0389000, v85, v86, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Missing body structure.", v87, 0x39u);
                v94 = v137;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v94, -1, -1);
                MEMORY[0x1B272C230](v87, -1, -1);
              }

              else
              {
                sub_1B0ACE7A4(v84, type metadata accessor for MailboxTaskLogger);

                sub_1B0ACE7A4(v57, type metadata accessor for MailboxTaskLogger);
              }

              sub_1B04FAEB0(v140);
              v150 = v140[8];
              v151 = v140[9];
              v152 = v140[10];
              v153 = v141;
              v146 = v140[4];
              v147 = v140[5];
              v148 = v140[6];
              v149 = v140[7];
              v142 = v140[0];
              v143 = v140[1];
              v108 = v140[2];
              v109 = v140[3];
            }

            else
            {
              LODWORD(v140[0]) = v32;
              v95 = v132 + *(v43 + 24);
              MessageIdentifierSet.insert(_:)(&v142, v140, v137);
              v96 = v124;
              sub_1B0ACE73C(v124, v44, type metadata accessor for MailboxTaskLogger);
              sub_1B0ACE73C(v96, v47, type metadata accessor for MailboxTaskLogger);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v97 = sub_1B0E43988();
              v98 = sub_1B0E45908();
              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                LODWORD(v136) = v98;
                v100 = v99;
                v137 = swift_slowAlloc();
                *&v140[0] = v137;
                *v100 = 68159491;
                *(v100 + 4) = 2;
                *(v100 + 8) = 256;
                v101 = v123;
                v102 = v47 + *(v123 + 20);
                *(v100 + 10) = *v102;
                *(v100 + 11) = 2082;
                v103 = v44 + *(v101 + 20);
                *(v100 + 13) = sub_1B0399D64(*(v103 + 8), *(v103 + 16), v140);
                *(v100 + 21) = 1040;
                *(v100 + 23) = 2;
                *(v100 + 27) = 512;
                LOWORD(v102) = *(v102 + 24);
                sub_1B0ACE7A4(v47, type metadata accessor for MailboxTaskLogger);
                *(v100 + 29) = v102;
                *(v100 + 31) = 2160;
                *(v100 + 33) = 0x786F626C69616DLL;
                *(v100 + 41) = 2085;
                v104 = *(v103 + 32);
                LODWORD(v103) = *(v103 + 40);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B0ACE7A4(v44, type metadata accessor for MailboxTaskLogger);
                *&v142 = v104;
                DWORD2(v142) = v103;
                v105 = sub_1B0E44BA8();
                v32 = sub_1B0399D64(v105, v106, v140);

                *(v100 + 43) = v32;
                LODWORD(v32) = v138;
                *(v100 + 51) = 1024;
                *(v100 + 53) = v32;
                _os_log_impl(&dword_1B0389000, v97, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Using cached body structure.", v100, 0x39u);
                v107 = v137;
                swift_arrayDestroy();
                MEMORY[0x1B272C230](v107, -1, -1);
                MEMORY[0x1B272C230](v100, -1, -1);
              }

              else
              {
                sub_1B0ACE7A4(v47, type metadata accessor for MailboxTaskLogger);

                sub_1B0ACE7A4(v44, type metadata accessor for MailboxTaskLogger);
              }

              v150 = v162;
              v151 = v163;
              v152 = v164;
              v153 = v165;
              v146 = v158;
              v147 = v159;
              v148 = v160;
              v149 = v161;
              v142 = v154;
              v143 = v155;
              v108 = v156;
              v109 = v157;
            }

            v144 = v108;
            v145 = v109;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v142);
            v174 = v150;
            v175 = v151;
            v176 = v152;
            v177 = v153;
            v170 = v146;
            v171 = v147;
            v172 = v148;
            v173 = v149;
            v166 = v142;
            v167 = v143;
            v168 = v144;
            v169 = v145;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_43:
            v111 = *(v40 + 2);
            v110 = *(v40 + 3);
            if (v111 >= v110 >> 1)
            {
              result = sub_1B0AFFAF8((v110 > 1), v111 + 1, 1, v40);
              v40 = result;
            }

            v156 = v168;
            v157 = v169;
            v160 = v172;
            v161 = v173;
            v158 = v170;
            v159 = v171;
            v165 = v177;
            v163 = v175;
            v164 = v176;
            v162 = v174;
            v154 = v166;
            v155 = v167;
            *(v40 + 2) = v111 + 1;
            v112 = &v40[192 * v111];
            v113 = v125;
            *(v112 + 8) = v32;
            *(v112 + 9) = v113;
            v114 = v154;
            v115 = v155;
            v116 = v156;
            *(v112 + 88) = v157;
            *(v112 + 72) = v116;
            *(v112 + 56) = v115;
            *(v112 + 40) = v114;
            v117 = v158;
            v118 = v159;
            v119 = v160;
            *(v112 + 152) = v161;
            *(v112 + 136) = v119;
            *(v112 + 120) = v118;
            *(v112 + 104) = v117;
            v120 = v162;
            v121 = v163;
            v122 = v164;
            v112[216] = v165;
            *(v112 + 200) = v122;
            *(v112 + 184) = v121;
            *(v112 + 168) = v120;
            *(v132 + v139) = v40;
            return result;
          }

LABEL_48:
          result = sub_1B0AFFAF8(0, *(v40 + 2) + 1, 1, v40);
          v40 = result;
          goto LABEL_43;
        }
      }

      else
      {
        sub_1B0ACE7A4(v35, type metadata accessor for DownloadTask.CommandID);
        sub_1B0ACE7A4(v32, type metadata accessor for DownloadTask.CommandID);
      }

      if (v38 == ++v39)
      {
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_1B0ACD674(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v83 - v20;
  result = _s18InProgressMessagesVMa(0);
  v22 = *(v6 + *(result + 28));
  v23 = *(v22 + 16);
  if (v23)
  {
    v84 = v12;
    v85 = a1;
    v86 = a2;
    v87 = a3;
    v24 = 0;
    v25 = (v22 + 32);
    while (v24 < *(v22 + 16))
    {
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      *&v130[32] = v25[2];
      *&v130[48] = v28;
      *v130 = v26;
      *&v130[16] = v27;
      v29 = v25[4];
      v30 = v25[5];
      v31 = v25[7];
      *&v130[96] = v25[6];
      *&v130[112] = v31;
      *&v130[64] = v29;
      *&v130[80] = v30;
      v32 = v25[8];
      v33 = v25[9];
      v34 = v25[10];
      *&v130[169] = *(v25 + 169);
      *&v130[144] = v33;
      *&v130[160] = v34;
      *&v130[128] = v32;
      v35 = *v130;
      sub_1B0ACE8D0(v130, &v118);
      if ((sub_1B0A9E1D0(v35, a4, a5) & 1) == 0)
      {
        v114 = *&v130[136];
        v115 = *&v130[152];
        v116 = *&v130[168];
        v117 = v130[184];
        v110 = *&v130[72];
        v111 = *&v130[88];
        v112 = *&v130[104];
        v113 = *&v130[120];
        v106 = *&v130[8];
        v107 = *&v130[24];
        v108 = *&v130[40];
        v109 = *&v130[56];
        if (sub_1B04FAE9C(&v106) == 1)
        {
          sub_1B04FAA88(&v94);
          v36 = v92;
          v37 = v90;
          sub_1B0ACE73C(v92, v90, type metadata accessor for MailboxTaskLogger);
          v38 = v88;
          sub_1B0ACE73C(v36, v88, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0ACE8D0(v130, &v118);
          v39 = sub_1B0E43988();
          v40 = sub_1B0E45908();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v84;
          if (v41)
          {
            v43 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93 = v92;
            *v43 = 68159491;
            LODWORD(v91) = v40;
            *(v43 + 4) = 2;
            *(v43 + 8) = 256;
            v44 = v38;
            v45 = v38 + *(v42 + 20);
            *(v43 + 10) = *v45;
            *(v43 + 11) = 2082;
            v46 = v37 + *(v42 + 20);
            *(v43 + 13) = sub_1B0399D64(*(v46 + 8), *(v46 + 16), &v93);
            *(v43 + 21) = 1040;
            *(v43 + 23) = 2;
            *(v43 + 27) = 512;
            v47 = *(v45 + 24);
            sub_1B0ACE7A4(v44, type metadata accessor for MailboxTaskLogger);
            *(v43 + 29) = v47;
            *(v43 + 31) = 2160;
            *(v43 + 33) = 0x786F626C69616DLL;
            *(v43 + 41) = 2085;
            v48 = *(v46 + 32);
            LODWORD(v46) = *(v46 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0ACE7A4(v37, type metadata accessor for MailboxTaskLogger);
            *&v118 = v48;
            DWORD2(v118) = v46;
            v49 = sub_1B0E44BA8();
            v51 = sub_1B0399D64(v49, v50, &v93);

            *(v43 + 43) = v51;
            *(v43 + 51) = 1024;
            sub_1B0ACE908(v130);
            *(v43 + 53) = v35;
            sub_1B0ACE908(v130);
            _os_log_impl(&dword_1B0389000, v39, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u.", v43, 0x39u);
            v52 = v92;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v52, -1, -1);
            v53 = v43;
            goto LABEL_12;
          }

          sub_1B0ACE908(v130);
          sub_1B0ACE7A4(v38, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE908(v130);

          v72 = v37;
LABEL_15:
          sub_1B0ACE7A4(v72, type metadata accessor for MailboxTaskLogger);
        }

        else
        {
          v102 = v114;
          v103 = v115;
          v104 = v116;
          v105 = v117;
          v98 = v110;
          v99 = v111;
          v100 = v112;
          v101 = v113;
          v94 = v106;
          v95 = v107;
          v96 = v108;
          v97 = v109;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v94);
          v55 = v91;
          v54 = v92;
          sub_1B0ACE73C(v92, v91, type metadata accessor for MailboxTaskLogger);
          v56 = v89;
          sub_1B0ACE73C(v54, v89, type metadata accessor for MailboxTaskLogger);
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0ACE8D0(v130, &v118);
          sub_1B0ACE8D0(v130, &v118);
          v39 = sub_1B0E43988();
          v57 = sub_1B0E45908();
          v58 = os_log_type_enabled(v39, v57);
          v59 = v84;
          if (!v58)
          {
            sub_1B0ACE908(v130);
            sub_1B0ACE7A4(v56, type metadata accessor for MailboxTaskLogger);
            sub_1B0ACE908(v130);

            v72 = v55;
            goto LABEL_15;
          }

          v60 = swift_slowAlloc();
          LODWORD(v90) = v57;
          v61 = v60;
          v92 = swift_slowAlloc();
          v93 = v92;
          *v61 = 68159491;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          v62 = v56 + *(v59 + 20);
          *(v61 + 10) = *v62;
          *(v61 + 11) = 2082;
          v63 = *(v59 + 20);
          v64 = v56;
          v65 = v55;
          v66 = v55 + v63;
          *(v61 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v93);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          LOWORD(v62) = *(v62 + 24);
          sub_1B0ACE7A4(v64, type metadata accessor for MailboxTaskLogger);
          *(v61 + 29) = v62;
          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          v67 = *(v66 + 32);
          LODWORD(v62) = *(v66 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v65, type metadata accessor for MailboxTaskLogger);
          *&v118 = v67;
          DWORD2(v118) = v62;
          v68 = sub_1B0E44BA8();
          v70 = sub_1B0399D64(v68, v69, &v93);

          *(v61 + 43) = v70;
          *(v61 + 51) = 1024;
          sub_1B0ACE908(v130);
          *(v61 + 53) = v35;
          sub_1B0ACE908(v130);
          _os_log_impl(&dword_1B0389000, v39, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u (with body structure).", v61, 0x39u);
          v71 = v92;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v71, -1, -1);
          v53 = v61;
LABEL_12:
          MEMORY[0x1B272C230](v53, -1, -1);
        }

        v126 = v102;
        v127 = v103;
        v128 = v104;
        v129 = v105;
        v122 = v98;
        v123 = v99;
        v124 = v100;
        v125 = v101;
        v118 = v94;
        v119 = v95;
        v120 = v96;
        v121 = v97;
        v74 = v86;
        v73 = v87;
        v75 = v85;
        v76 = swift_allocObject();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE908(v130);
        v77 = v127;
        *(v76 + 168) = v126;
        *(v76 + 184) = v77;
        *(v76 + 200) = v128;
        v78 = v123;
        *(v76 + 104) = v122;
        *(v76 + 120) = v78;
        v79 = v125;
        *(v76 + 136) = v124;
        *(v76 + 152) = v79;
        v80 = v119;
        *(v76 + 40) = v118;
        *(v76 + 56) = v80;
        v81 = v121;
        *(v76 + 72) = v120;
        *(v76 + 16) = v75;
        *(v76 + 24) = v74;
        *(v76 + 28) = v73 & 1;
        v82 = *&v130[4];
        *(v76 + 32) = v35;
        *(v76 + 36) = v82;
        *(v76 + 216) = v129;
        *(v76 + 88) = v81;
        return v35;
      }

      ++v24;
      result = sub_1B0ACE908(v130);
      v25 += 12;
      if (v23 == v24)
      {
        return 0xFF00000000;
      }
    }

    __break(1u);
  }

  else
  {
    return 0xFF00000000;
  }

  return result;
}

uint64_t sub_1B0ACDED4()
{
  result = _s18InProgressMessagesVMa(0);
  v96 = result;
  v97 = v0;
  v2 = *(v0 + *(result + 32));
  v3 = *(v2 + 2);
  if (v3)
  {
    v95 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_59:
      v2 = sub_1B0B8C8EC(v2);
    }

    v4 = 0;
    v98 = v3;
    v99 = v2;
    do
    {
      if (v4 == v3)
      {
        goto LABEL_51;
      }

      if (v4 >= *(v2 + 2))
      {
        goto LABEL_52;
      }

      v5 = _s25MessageSectionsToDownloadVMa(0);
      v6 = (v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4);
      v7 = *(v6 + *(v5 + 24));
      v8 = *(v7 + 2);
      v100 = v5;
      v101 = *(v5 + 24);
      if (v8)
      {
        v9 = 0;
        v10 = 272;
        v11 = 1;
        v12 = 86;
        v3 = &v120;
        v2 = &v106;
        while ((v7[v12] & 1) == 0)
        {
          ++v9;
          v12 += 240;
          ++v11;
          v10 += 240;
          if (v8 == v9)
          {
            goto LABEL_11;
          }
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_58;
        }

        if (v9 + 1 != v8)
        {
          v21 = *(v7 + 2);
          while (v11 < v21)
          {
            v22 = &v7[v10];
            if ((v7[v10 + 54] & 1) == 0)
            {
              if (v11 != v9)
              {
                if (v9 >= v21)
                {
                  goto LABEL_48;
                }

                v23 = 240 * v9;
                v24 = &v7[240 * v9 + 32];
                v25 = *v24;
                v26 = *(v24 + 2);
                v107 = *(v24 + 1);
                v108 = v26;
                v106 = v25;
                v27 = *(v24 + 3);
                v28 = *(v24 + 4);
                v29 = *(v24 + 6);
                v111 = *(v24 + 5);
                v112 = v29;
                v109 = v27;
                v110 = v28;
                v30 = *(v24 + 7);
                v31 = *(v24 + 8);
                v32 = *(v24 + 10);
                v115 = *(v24 + 9);
                v116 = v32;
                v113 = v30;
                v114 = v31;
                v33 = *(v24 + 11);
                v34 = *(v24 + 12);
                v35 = *(v24 + 13);
                *(v119 + 9) = *(v24 + 217);
                v118 = v34;
                v119[0] = v35;
                v117 = v33;
                v36 = *v22;
                v37 = *(v22 + 2);
                v121 = *(v22 + 1);
                v122 = v37;
                v120 = v36;
                v38 = *(v22 + 3);
                v39 = *(v22 + 4);
                v40 = *(v22 + 6);
                v125 = *(v22 + 5);
                v126 = v40;
                v123 = v38;
                v124 = v39;
                v41 = *(v22 + 7);
                v42 = *(v22 + 8);
                v43 = *(v22 + 10);
                v129 = *(v22 + 9);
                v130 = v43;
                v127 = v41;
                v128 = v42;
                v44 = *(v22 + 11);
                v45 = *(v22 + 12);
                v46 = *(v22 + 13);
                *(v133 + 9) = *(v22 + 217);
                v132 = v45;
                v133[0] = v46;
                v131 = v44;
                sub_1B0ACE448(&v106, v104);
                sub_1B0ACE448(&v120, v104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v6 + v101) = v7;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v7 = sub_1B0B8C900(v7);
                  *(v6 + v101) = v7;
                }

                if (v9 >= *(v7 + 2))
                {
                  goto LABEL_49;
                }

                v48 = &v7[v23];
                v49 = *&v7[v23 + 32];
                v50 = *&v7[v23 + 64];
                v102[1] = *&v7[v23 + 48];
                v102[2] = v50;
                v102[0] = v49;
                v51 = *&v7[v23 + 80];
                v52 = *&v7[v23 + 96];
                v53 = *&v7[v23 + 128];
                v102[5] = *&v7[v23 + 112];
                v102[6] = v53;
                v102[3] = v51;
                v102[4] = v52;
                v54 = *&v7[v23 + 144];
                v55 = *&v7[v23 + 160];
                v56 = *&v7[v23 + 192];
                v102[9] = *&v7[v23 + 176];
                v102[10] = v56;
                v102[7] = v54;
                v102[8] = v55;
                v57 = *&v7[v23 + 208];
                v58 = *&v7[v23 + 224];
                v59 = *&v7[v23 + 240];
                *(v103 + 9) = *&v7[v23 + 249];
                v102[12] = v58;
                v103[0] = v59;
                v102[11] = v57;
                v60 = v120;
                v61 = v122;
                *(v48 + 3) = v121;
                *(v48 + 4) = v61;
                *(v48 + 2) = v60;
                v62 = v123;
                v63 = v124;
                v64 = v126;
                *(v48 + 7) = v125;
                *(v48 + 8) = v64;
                *(v48 + 5) = v62;
                *(v48 + 6) = v63;
                v65 = v127;
                v66 = v128;
                v67 = v130;
                *(v48 + 11) = v129;
                *(v48 + 12) = v67;
                *(v48 + 9) = v65;
                *(v48 + 10) = v66;
                v68 = v131;
                v69 = v132;
                v70 = v133[0];
                *(v48 + 249) = *(v133 + 9);
                *(v48 + 14) = v69;
                *(v48 + 15) = v70;
                *(v48 + 13) = v68;
                sub_1B0ACE480(v102);
                v71 = *(v6 + v101);
                if (v11 >= *(v71 + 16))
                {
                  goto LABEL_50;
                }

                v72 = (v71 + v10);
                v73 = *v72;
                v74 = v72[2];
                v104[1] = v72[1];
                v104[2] = v74;
                v104[0] = v73;
                v75 = v72[3];
                v76 = v72[4];
                v77 = v72[6];
                v104[5] = v72[5];
                v104[6] = v77;
                v104[3] = v75;
                v104[4] = v76;
                v78 = v72[7];
                v79 = v72[8];
                v80 = v72[10];
                v104[9] = v72[9];
                v104[10] = v80;
                v104[7] = v78;
                v104[8] = v79;
                v81 = v72[11];
                v82 = v72[12];
                v83 = v72[13];
                *(v105 + 9) = *(v72 + 217);
                v104[12] = v82;
                v105[0] = v83;
                v104[11] = v81;
                v84 = v106;
                v85 = v108;
                v72[1] = v107;
                v72[2] = v85;
                *v72 = v84;
                v86 = v109;
                v87 = v110;
                v88 = v112;
                v72[5] = v111;
                v72[6] = v88;
                v72[3] = v86;
                v72[4] = v87;
                v89 = v113;
                v90 = v114;
                v91 = v116;
                v72[9] = v115;
                v72[10] = v91;
                v72[7] = v89;
                v72[8] = v90;
                v92 = v117;
                v93 = v118;
                v94 = v119[0];
                *(v72 + 217) = *(v119 + 9);
                v72[12] = v93;
                v72[13] = v94;
                v72[11] = v92;
                sub_1B0ACE480(v104);
                v7 = *(v6 + v101);
              }

              ++v9;
            }

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_47;
            }

            v21 = *(v7 + 2);
            ++v11;
            v10 += 240;
            if (v13 == v21)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v13 = *(v7 + 2);
LABEL_15:
        if (v13 < v9)
        {
          goto LABEL_55;
        }

        if (v9 < 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_11:
        v13 = *(v7 + 2);
        v9 = v13;
      }

      v3 = (v9 - v13);
      if (__OFADD__(v13, v9 - v13))
      {
        goto LABEL_53;
      }

      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + v101) = v7;
      if (!v14 || v9 > *(v7 + 3) >> 1)
      {
        if (v13 <= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v13;
        }

        v7 = sub_1B0AFFC58(v14, v15, 1, v7);
        *(v6 + v101) = v7;
      }

      v2 = (v7 + 32);
      result = swift_arrayDestroy();
      if (v13 != v9)
      {
        result = memmove(&v7[240 * v9 + 32], &v2[15 * v13], 240 * (*(v7 + 2) - v13));
        v16 = *(v7 + 2);
        v17 = __OFADD__(v16, v3);
        v18 = v3 + v16;
        if (v17)
        {
          goto LABEL_57;
        }

        *(v7 + 2) = v18;
      }

      *(v6 + v101) = v7;
      v2 = v99;
      if (v4 >= *(v99 + 2))
      {
        goto LABEL_54;
      }

      if (v8 != *(*(v6 + *(v100 + 24)) + 16))
      {
        LODWORD(v106) = *v6;
        v19 = *(v96 + 36);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
        result = MessageIdentifierSet.insert(_:)(&v120, &v106, v20);
      }

      ++v4;
      v3 = v98;
    }

    while (v4 != v98);
    *(v97 + v95) = v99;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216MessageAttributeO13BodyStructureOSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1B0ACE510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t sub_1B0ACE558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0ACE634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 185))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 184);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1B0ACE68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *(result + 184) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_1B0ACE73C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACE7A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ACE804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACE88C(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFE)
  {
    v2 = 254;
  }

  else
  {
    v2 = *(a1 + 184);
  }

  v3 = (v2 ^ 0xFF) - 1;
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

double sub_1B0ACE8B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  *&result = sub_1B0AC5920(a1, v2[3], v2[4], a2).n128_u64[0];
  return result;
}

double sub_1B0ACE938(uint64_t a1)
{
  *(a1 + 176) = 0;
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
  *(a1 + 184) = -3;
  return result;
}

uint64_t sub_1B0ACE964(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0ACE978(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0ACE98C(uint64_t a1, uint64_t a2)
{
  v4 = _s19MessageHeaderStatusOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0ACE9F0()
{
  result = qword_1EB6E4180;
  if (!qword_1EB6E4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4180);
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0ACEAF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 177))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 < 2)
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0ACEB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -2 - a2;
    }
  }

  return result;
}

double sub_1B0ACEBB0(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 176) = 0;
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
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 176) = ~a2;
  }

  return result;
}

unint64_t sub_1B0ACEC08()
{
  result = qword_1EB6E41A8;
  if (!qword_1EB6E41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E41A8);
  }

  return result;
}

uint64_t _s18SectionDataRequestVMa()
{
  result = qword_1EB6DDFD8;
  if (!qword_1EB6DDFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0ACECD8()
{
  sub_1B09AFEB4();
  if (v0 <= 0x3F)
  {
    sub_1B0ACED64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0ACED64()
{
  if (!qword_1EB6DB490)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB490);
    }
  }
}

uint64_t sub_1B0ACEDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + v6)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_1B044DB64(v9, v10);
}

uint64_t sub_1B0ACEE48@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + *(_s18SectionDataRequestVMa() + 20));
  v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = SectionSpecifier.init(part:kind:)(v7, 0, 2u);
  *a3 = 1;
  *(a3 + 8) = result;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9 | (v5 << 32);
  *(a3 + 36) = 32;
  *(a3 + 32) = v4;
  return result;
}

uint64_t sub_1B0ACEEC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v125 = a2;
  v110 = a1;
  v107 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v97 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v97 - v12;
  v13 = _s18SectionDataRequestVMa();
  v99 = *(v13 - 8);
  v14 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DownloadTask.CommandID(0);
  v126 = *(v123 - 8);
  v17 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - v20;
  v114 = _s25MessageSectionsToDownloadVMa(0);
  v124 = *(v114 - 8);
  v22 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B0, &qword_1B0EC40F8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v102 = &v97 - v31;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v103 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v101 = &v97 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v97 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v100 = &v97 - v40;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v41 = *(v26 + 56);
  v42 = v38;
  v43 = v24;
  sub_1B03C60A4(v42, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v111 = v29;
  v109 = v41;
  *&v29[v41] = 0;
  v44 = *(v125 + 16);
  if (!v44)
  {
LABEL_31:
    v82 = v102;
    sub_1B03C60A4(v111, v102, &qword_1EB6E41B0, &qword_1B0EC40F8);
    v83 = v100;
    sub_1B03C60A4(v82, v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v84 = v101;
    sub_1B03B5C80(v83, v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v85 = v103;
    sub_1B03B5C80(v84, v103, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v86 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v83, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v86 < 1)
    {
      sub_1B0398EFC(v85, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v89 = 1;
      v88 = v106;
    }

    else
    {
      v87 = v98;
      sub_1B03C60A4(v85, v98, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v88 = v106;
      sub_1B03C60A4(v87, v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v89 = 0;
    }

    v90 = v107;
    v92 = v104;
    v91 = v105;
    (*(v104 + 56))(v88, v89, 1, v105);
    if ((*(v92 + 48))(v88, 1, v91) == 1)
    {
      sub_1B0398EFC(v88, &unk_1EB6E3670, &unk_1B0E9B260);
      v93 = 1;
    }

    else
    {
      v94 = MEMORY[0x1E69E7CC0];
      v95 = v88;
      v96 = v97;
      sub_1B03C60A4(v95, v97, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v96, v90, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v93 = 0;
      *(v90 + *(v13 + 20)) = v94;
      *(v90 + *(v13 + 24)) = &unk_1F2710BC8;
    }

    return (*(v99 + 56))(v90, v93, 1, v13);
  }

  v45 = 0;
  v46 = 0;
  v120 = v125 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
  v121 = v13;
  v119 = *(v124 + 72);
  v108 = v16;
  v127 = v21;
  v115 = v43;
  v112 = v44;
  while (1)
  {
    result = sub_1B0ACFDB4(v120 + v119 * v45, v43, _s25MessageSectionsToDownloadVMa);
    if (v46 >> 17 <= 2)
    {
      break;
    }

    sub_1B0ACFE80(v43, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    if (++v45 == v44)
    {
      goto LABEL_31;
    }
  }

  v118 = v46;
  v48 = *(v43 + *(v114 + 24));
  v49 = *(v48 + 16);
  if (!v49)
  {
LABEL_30:
    v43 = v115;
    sub_1B0ACFE80(v115, _s25MessageSectionsToDownloadVMa);
    v13 = v121;
    v44 = v112;
    v46 = v118;
    goto LABEL_4;
  }

  v50 = 0;
  v51 = (v48 + 32);
  while (v50 < *(v48 + 16))
  {
    v52 = *v51;
    v53 = v51[2];
    v130[1] = v51[1];
    v131 = v53;
    v130[0] = v52;
    v54 = v51[3];
    v55 = v51[4];
    v56 = v51[6];
    v134 = v51[5];
    v135 = v56;
    v132 = v54;
    v133 = v55;
    v57 = v51[7];
    v58 = v51[8];
    v59 = v51[10];
    v138 = v51[9];
    v139 = v59;
    v136 = v57;
    v137 = v58;
    v60 = v51[11];
    v61 = v51[12];
    v62 = v51[13];
    *(v142 + 9) = *(v51 + 217);
    v141 = v61;
    v142[0] = v62;
    v140 = v60;
    if ((v130[0] & 1) == 0)
    {
      v63 = v131;
      sub_1B0ACE448(v130, v129);
      v64 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v65 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v64);

      result = sub_1B0ACE480(v130);
      if (v65)
      {
        v116 = *v115;
        result = sub_1B0AED35C(v110);
        v66 = result;
        v67 = v121;
        v68 = v108;
        v69 = v127;
        v125 = *(result + 16);
        if (v125)
        {
          v70 = 0;
          v124 = result + ((*(v126 + 80) + 32) & ~*(v126 + 80));
          while (1)
          {
            if (v70 >= *(v66 + 16))
            {
              goto LABEL_39;
            }

            sub_1B0ACFDB4(v124 + *(v126 + 72) * v70, v69, type metadata accessor for DownloadTask.CommandID);
            v73 = v122;
            sub_1B0ACFDB4(v69, v122, type metadata accessor for DownloadTask.CommandID);
            if (swift_getEnumCaseMultiPayload() != 3)
            {
              break;
            }

            sub_1B0ACFE1C(v73, v68);
            if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v68 + *(v67 + 20))) & 1) == 0)
            {
              sub_1B0ACFE80(v69, type metadata accessor for DownloadTask.CommandID);
              v72 = _s18SectionDataRequestVMa;
              v71 = v68;
              goto LABEL_15;
            }

            v74 = v68;
            v75 = v68;
            v76 = v113;
            sub_1B03B5C80(v74, v113, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v129[0] = v116;
            v77 = MessageIdentifierSet.contains(_:)(v129, v117);
            sub_1B0398EFC(v76, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            if (v77)
            {
              v78 = *(v75 + *(v121 + 24));
              v68 = v75;
              if (*(v78 + 16) == 1)
              {
                v79 = *(v78 + 32);
                v69 = v127;
                sub_1B0ACFE80(v127, type metadata accessor for DownloadTask.CommandID);
                if (!v79)
                {

                  sub_1B0ACFE80(v68, _s18SectionDataRequestVMa);
                  goto LABEL_30;
                }
              }

              else
              {
                v69 = v127;
                sub_1B0ACFE80(v127, type metadata accessor for DownloadTask.CommandID);
              }

              result = sub_1B0ACFE80(v68, _s18SectionDataRequestVMa);
              v67 = v121;
            }

            else
            {
              v80 = v127;
              sub_1B0ACFE80(v127, type metadata accessor for DownloadTask.CommandID);
              result = sub_1B0ACFE80(v75, _s18SectionDataRequestVMa);
              v68 = v75;
              v69 = v80;
              v67 = v121;
            }

LABEL_16:
            if (v125 == ++v70)
            {
              goto LABEL_28;
            }
          }

          sub_1B0ACFE80(v127, type metadata accessor for DownloadTask.CommandID);
          v71 = v73;
          v69 = v127;
          v72 = type metadata accessor for DownloadTask.CommandID;
LABEL_15:
          result = sub_1B0ACFE80(v71, v72);
          goto LABEL_16;
        }

LABEL_28:

        v81 = v118 + v63;
        if (__CFADD__(v118, v63))
        {
          goto LABEL_40;
        }

        *&v111[v109] = v81;
        v128 = v116;
        MessageIdentifierSet.insert(_:)(v129, &v128, v117);
        v43 = v115;
        sub_1B0ACFE80(v115, _s25MessageSectionsToDownloadVMa);
        v13 = v67;
        v44 = v112;
        v46 = v81;
        goto LABEL_4;
      }
    }

    ++v50;
    v51 += 15;
    if (v49 == v50)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0ACFA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int *a3@<X5>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - v17;
  v19 = *(a1 + 24);
  v35 = *(a1 + 8);
  v36[0] = v19;
  *(v36 + 15) = *(a1 + 39);
  v20 = *a3;
  v21 = v19;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B0AD074C(v20, v21, a2);

  v23 = sub_1B0ACFEE0(1, v22);

  if (*(v23 + 16))
  {
    v34 = v20;
    v24 = sub_1B041C1E8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MessageIdentifierSet.init(_:)(&v34, &type metadata for UID, v24);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v25 = 1;
    }

    else
    {
      sub_1B03C60A4(v14, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v10, v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v25 = 0;
    }

    v29 = v32;
    v28 = v33;
    (*(v7 + 56))(v18, v25, 1, v32);
    result = (*(v7 + 48))(v18, 1, v29);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1B03C60A4(v18, v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v30 = _s18SectionDataRequestVMa();
      *(v28 + *(v30 + 20)) = v21;
      *(v28 + *(v30 + 24)) = v23;
      return (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    }
  }

  else
  {
    v26 = _s18SectionDataRequestVMa();
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  }

  return result;
}

uint64_t sub_1B0ACFDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ACFE1C(uint64_t a1, uint64_t a2)
{
  v4 = _s18SectionDataRequestVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ACFE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ACFEE0(uint64_t a1, char *a2)
{
  v89 = sub_1B0E432D8();
  v92 = *(v89 - 8);
  v5 = *(v92 + 8);
  MEMORY[0x1EEE9AC00](v89);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v74 - v10);
  v12 = sub_1B0E43308();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v74 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v84 = &v74 - v30;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = *(MEMORY[0x1E69E7CC0] + 16);
  v95 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = a1;
  if (v32 < a1)
  {
    v94 = (v13 + 32);
    v81 = (v13 + 16);
    v82 = v7;
    v80 = (v13 + 8);
    v33 = v31 + 16;
    v79 = (v92 + 8);
    v34 = v12;
    v78 = v2;
    v77 = v22;
    while (1)
    {
      if (*(v2 + 46))
      {
        goto LABEL_29;
      }

      v76 = v33;
      v35 = *(v2 + 32);
      v36 = 24;
      if (*(v2 + 44) < 2u)
      {
        v36 = 40;
      }

      v37 = *(v2 + v36);
      sub_1B0E43238();
      sub_1B0E432F8();
      v38 = *(v35 + 16);
      if (v38)
      {
        break;
      }

LABEL_10:
      v42 = *v94;
      v43 = v90;
      result = (*v94)(v90, v22, v34);
      v44 = *(v95 + 2);
      if (v44)
      {
        v45 = v95 + 36;
        v46 = v95 + 36;
        do
        {
          v47 = *v46;
          v46 += 8;
          v48 = v47 + 1;
          if (v47 == -1)
          {
            goto LABEL_33;
          }

          result = *(v45 - 1);
          if (v48 < result)
          {
            goto LABEL_34;
          }

          result = sub_1B0E43298();
          v45 = v46;
        }

        while (--v44);
      }

      v91 = v31;
      v49 = v85;
      v50 = v34;
      (v42)(v85, v43, v34);
      v92 = v42;
      v51 = v80;
      v52 = *v81;
      v53 = v93;
      (*v81)(v87, v93, v50);
      v52(v88, v49, v50);
      sub_1B0AD0704(&qword_1EB6DECB8, MEMORY[0x1E6969B50]);
      v54 = v86;
      sub_1B0E46018();
      sub_1B0E46008();
      v55 = *v51;
      (*v51)(v54, v50);
      v55(v49, v50);
      v56 = v84;
      (v92)(v84, v53, v50);
      v57 = v82;
      sub_1B0E432E8();
      sub_1B0AD0704(&qword_1EB6DECC0, MEMORY[0x1E6969B30]);
      v58 = v89;
      sub_1B0E45668();
      sub_1B0E456C8();
      if (v96[4] == v96[0])
      {
        (*v79)(v57, v58);
        v55(v56, v50);

        return v91;
      }

      v59 = sub_1B0E457B8();
      v60 = v58;
      v62 = *v61;
      v59(v96, 0);
      (*v79)(v57, v60);
      result = (v55)(v56, v50);
      v63 = 393216 * (v62 / 393216);
      if (v63 > 0xFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      v64 = v63 + 393215;
      if (((v63 + 393215) | v63) < 0)
      {
        goto LABEL_36;
      }

      if (v63 > 4294574080)
      {
        goto LABEL_37;
      }

      if (v64 < v63)
      {
        goto LABEL_38;
      }

      v34 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1B0AFFEA8(0, *(v95 + 2) + 1, 1, v95);
      }

      v31 = v91;
      v22 = v77;
      v66 = *(v95 + 2);
      v65 = *(v95 + 3);
      if (v66 >= v65 >> 1)
      {
        v95 = sub_1B0AFFEA8((v65 > 1), v66 + 1, 1, v95);
      }

      v67 = v95;
      *(v95 + 2) = v66 + 1;
      v68 = &v67[8 * v66];
      *(v68 + 8) = v63;
      *(v68 + 9) = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B0AFFEA8(0, *v76 + 1, 1, v31);
      }

      v70 = *(v31 + 2);
      v69 = *(v31 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v31 = sub_1B0AFFEA8((v69 > 1), v70 + 1, 1, v31);
      }

      *(v31 + 2) = v71;
      v33 = v31 + 16;
      v72 = &v31[8 * v70];
      *(v72 + 8) = v63;
      *(v72 + 9) = v64;
      v73 = v71 < v83;
      v2 = v78;
      if (!v73)
      {
        goto LABEL_29;
      }
    }

    v39 = v35 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v40 = *(v75 + 72);
    while (1)
    {
      sub_1B03B5C80(v39, v11, &qword_1EB6E41B8, &qword_1B0EC4100);
      result = *v11;
      if (v11[1] < result)
      {
        break;
      }

      sub_1B0E43298();
      sub_1B0398EFC(v11, &qword_1EB6E41B8, &qword_1B0EC4100);
      v39 += v40;
      if (!--v38)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

LABEL_29:

  return v31;
}

uint64_t sub_1B0AD0704(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1B0AD074C(int a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - v6;
  v41 = _s18SectionDataRequestVMa();
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DownloadTask.CommandID(0);
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = sub_1B0AED35C(a3);
  v18 = *(v17 + 16);
  if (!v18)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v37 = v17;
  v20 = v17 + v19;
  v42 = *(v10 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1B0AD0B50(v20, v16);
    sub_1B0AD0B50(v16, v13);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B0ACFE1C(v13, v9);
      if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*&v9[*(v41 + 20)]))
      {
        v23 = v38;
        sub_1B03B5C80(v9, v38, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v44 = v39;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
        v25 = MessageIdentifierSet.contains(_:)(&v44, v24);
        sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v25)
        {
          sub_1B0AD0BB4(v16, type metadata accessor for DownloadTask.CommandID);
          v26 = *&v9[*(v41 + 24)];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B0AD0BB4(v9, _s18SectionDataRequestVMa);
          goto LABEL_12;
        }
      }

      v27 = _s18SectionDataRequestVMa;
      v28 = v9;
    }

    else
    {
      v27 = type metadata accessor for DownloadTask.CommandID;
      v28 = v13;
    }

    sub_1B0AD0BB4(v28, v27);
    result = sub_1B0AD0BB4(v16, type metadata accessor for DownloadTask.CommandID);
    v26 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v29 = *(v26 + 16);
    v30 = *(v21 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= *(v21 + 3) >> 1)
    {
      if (*(v26 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_1B0AFFEA8(result, v32, 1, v21);
      v21 = result;
      if (*(v26 + 16))
      {
LABEL_21:
        v33 = *(v21 + 2);
        if ((*(v21 + 3) >> 1) - v33 < v29)
        {
          goto LABEL_30;
        }

        memcpy(&v21[8 * v33 + 32], (v26 + 32), 8 * v29);

        if (v29)
        {
          v34 = *(v21 + 2);
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_31;
          }

          *(v21 + 2) = v36;
        }

        goto LABEL_4;
      }
    }

    if (v29)
    {
      goto LABEL_29;
    }

LABEL_4:
    v20 += v42;
    if (!--v18)
    {

      return v21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B0AD0B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadTask.CommandID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AD0BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy47_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0AD0C28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 47))
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

uint64_t sub_1B0AD0C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0AD0CD4()
{
  result = sub_1B03D0770(&unk_1F2710C60);
  qword_1EB737DB8 = result;
  return result;
}

uint64_t sub_1B0AD0CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = _s15MissingMessagesO8CompleteVMa(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = _s15MissingMessagesO10IncompleteVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v25 = _s15MissingMessagesOMa(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3D54(a1, v28, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
      sub_1B03D3E24(v28, v17, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v17, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v30 = v40;
      sub_1B03C60A4(v13, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D3D54(&v17[*(v14 + 24)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_1B03C60A4(v9, v30 + *(v31 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = &v17[*(v14 + 20)];
      v33 = *v32;
      v34 = v32[4];
      v35 = _s15MissingMessagesO10IncompleteVMa;
      v36 = v17;
    }

    else
    {
      sub_1B03D3E24(v28, v5, _s15MissingMessagesO8CompleteVMa);
      sub_1B03D06F8();
      v30 = v40;
      sub_1B0E46EE8();
      sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
      sub_1B03D3D54(&v5[*(v39 + 20)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_1B03C60A4(v9, v30 + *(v31 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v33 = *v5;
      v34 = v5[4];
      v35 = _s15MissingMessagesO8CompleteVMa;
      v36 = v5;
    }

    result = sub_1B0AD3FBC(v36, v35);
  }

  else
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B0E46EE8();
    sub_1B0AD3FBC(a1, _s15MissingMessagesOMa);
    v30 = v40;
    sub_1B03C60A4(v24, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
    result = sub_1B03C60A4(v22, v30 + *(v31 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v33 = 0;
    v34 = 1;
  }

  v38 = v30 + *(v31 + 24);
  *v38 = v33;
  *(v38 + 4) = v34;
  return result;
}

void sub_1B0AD11DC(uint64_t a1)
{
  v2 = v1;
  Messages = type metadata accessor for FetchMessages(0);
  v5 = *(*(Messages - 8) + 64);
  MEMORY[0x1EEE9AC00](Messages);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v105 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v105 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v105 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v105 - v16;
  v116 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v105 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v110 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v115 = &v105 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v105 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v113 = &v105 - v41;
  v117 = Messages;
  v42 = *(Messages + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
LABEL_4:
    sub_1B03D3D54(a1, v22, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(a1, v19, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03D3D54(v2, v10, type metadata accessor for FetchMessages);
    sub_1B03D3D54(v2, v7, type metadata accessor for FetchMessages);
    v44 = sub_1B0E43988();
    v45 = sub_1B0E45908();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v120 = v115;
      *v46 = 68159747;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v47 = v116;
      v48 = &v19[*(v116 + 20)];
      *(v46 + 10) = *v48;
      *(v46 + 11) = 2082;
      v49 = &v22[*(v47 + 20)];
      *(v46 + 13) = sub_1B0399D64(*(v49 + 1), *(v49 + 2), &v120);
      *(v46 + 21) = 1040;
      *(v46 + 23) = 2;
      *(v46 + 27) = 512;
      LOWORD(v48) = *(v48 + 12);
      sub_1B0AD3FBC(v19, type metadata accessor for MailboxTaskLogger);
      *(v46 + 29) = v48;
      *(v46 + 31) = 2160;
      *(v46 + 33) = 0x786F626C69616DLL;
      *(v46 + 41) = 2085;
      v50 = *(v49 + 4);
      LODWORD(v49) = *(v49 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v22, type metadata accessor for MailboxTaskLogger);
      v118 = v50;
      v119 = v49;
      v51 = sub_1B0E44BA8();
      v53 = sub_1B0399D64(v51, v52, &v120);

      *(v46 + 43) = v53;
      *(v46 + 51) = 2082;
      v54 = &v10[v117[11]];
      v55 = *v54;
      LOBYTE(v49) = v54[8];
      sub_1B0AD3FBC(v10, type metadata accessor for FetchMessages);
      if (v49)
      {
        v56 = 7104878;
        v57 = 0xE300000000000000;
      }

      else
      {
        v118 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
        v56 = sub_1B0E449D8();
        v57 = v91;
      }

      v92 = sub_1B0399D64(v56, v57, &v120);

      *(v46 + 53) = v92;
      *(v46 + 61) = 1024;
      v93 = v117[10];
      v94 = &v7[v93 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24)];
      if (v94[4])
      {
        v95 = 0;
      }

      else
      {
        v95 = *v94;
      }

      sub_1B0AD3FBC(v7, type metadata accessor for FetchMessages);
      *(v46 + 63) = v95;
      _os_log_impl(&dword_1B0389000, v44, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window %{public}s (persisted) -> %u (new)", v46, 0x43u);
      v96 = v115;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v96, -1, -1);
      MEMORY[0x1B272C230](v46, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v7, type metadata accessor for FetchMessages);
      sub_1B0AD3FBC(v19, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v10, type metadata accessor for FetchMessages);
      sub_1B0AD3FBC(v22, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  sub_1B03B5C80(v2 + v117[9], v31, &qword_1EB6E41C0, &unk_1B0EC4330);
  v43 = type metadata accessor for NewServerMessages();
  if ((*(*(v43 - 8) + 48))(v31, 1, v43) == 1)
  {
    sub_1B0398EFC(v31, &qword_1EB6E41C0, &unk_1B0EC4330);
    goto LABEL_4;
  }

  sub_1B03B5C80(&v31[*(v43 + 20)], v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0AD3FBC(v31, type metadata accessor for NewServerMessages);
  v58 = v113;
  sub_1B03C60A4(v39, v113, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v59 = v109;
  sub_1B03D3D54(a1, v109, type metadata accessor for MailboxTaskLogger);
  sub_1B03D3D54(a1, v25, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v60 = v111;
  sub_1B03D3D54(v2, v111, type metadata accessor for FetchMessages);
  sub_1B03B5C80(v58, v115, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v61 = v110;
  sub_1B03B5C80(v58, v110, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v62 = v112;
  sub_1B03D3D54(v2, v112, type metadata accessor for FetchMessages);
  v63 = v2;
  v64 = v114;
  sub_1B03D3D54(v63, v114, type metadata accessor for FetchMessages);
  v65 = sub_1B0E43988();
  v66 = sub_1B0E45908();
  if (os_log_type_enabled(v65, v66))
  {
    v106 = v65;
    v108 = v66;
    v67 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v120 = v107;
    *v67 = 68160515;
    *(v67 + 4) = 2;
    *(v67 + 8) = 256;
    v68 = v116;
    v69 = &v25[*(v116 + 20)];
    *(v67 + 10) = *v69;
    *(v67 + 11) = 2082;
    v70 = v60;
    v71 = v59 + *(v68 + 20);
    *(v67 + 13) = sub_1B0399D64(*(v71 + 8), *(v71 + 16), &v120);
    *(v67 + 21) = 1040;
    *(v67 + 23) = 2;
    *(v67 + 27) = 512;
    LOWORD(v69) = *(v69 + 12);
    sub_1B0AD3FBC(v25, type metadata accessor for MailboxTaskLogger);
    *(v67 + 29) = v69;
    *(v67 + 31) = 2160;
    *(v67 + 33) = 0x786F626C69616DLL;
    *(v67 + 41) = 2085;
    v72 = *(v71 + 32);
    LODWORD(v71) = *(v71 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AD3FBC(v59, type metadata accessor for MailboxTaskLogger);
    v118 = v72;
    v119 = v71;
    v73 = sub_1B0E44BA8();
    v75 = sub_1B0399D64(v73, v74, &v120);

    *(v67 + 43) = v75;
    *(v67 + 51) = 2048;
    v76 = v62;
    v77 = v117;
    v78 = v117[10];
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v80 = MessageIdentifierSet.count.getter();
    sub_1B0AD3FBC(v70, type metadata accessor for FetchMessages);
    *(v67 + 53) = v80;
    *(v67 + 61) = 2048;
    v81 = v115;
    v82 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v81, &unk_1EB6E26C0, &unk_1B0E9DE10);
    *(v67 + 63) = v82;
    *(v67 + 71) = 2082;
    v83 = MessageIdentifierSet.debugDescription.getter(v79);
    v85 = v84;
    sub_1B0398EFC(v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v86 = sub_1B0399D64(v83, v85, &v120);

    *(v67 + 73) = v86;
    *(v67 + 81) = 2082;
    v87 = v76 + v77[11];
    v88 = *v87;
    LOBYTE(v85) = *(v87 + 8);
    sub_1B0AD3FBC(v76, type metadata accessor for FetchMessages);
    if (v85)
    {
      v89 = 7104878;
      v90 = 0xE300000000000000;
    }

    else
    {
      v118 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
      v89 = sub_1B0E449D8();
      v90 = v98;
    }

    v99 = v106;
    v100 = sub_1B0399D64(v89, v90, &v120);

    *(v67 + 83) = v100;
    *(v67 + 91) = 1024;
    v101 = v117[10];
    v102 = (v114 + v101 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24));
    if (*(v102 + 4))
    {
      v103 = 0;
    }

    else
    {
      v103 = *v102;
    }

    sub_1B0AD3FBC(v114, type metadata accessor for FetchMessages);
    *(v67 + 93) = v103;
    _os_log_impl(&dword_1B0389000, v99, v108, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with missing %ld, batch %ld UIDs %{public}s, fetched-window %{public}s (persisted) -> %u (new)", v67, 0x61u);
    v104 = v107;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v104, -1, -1);
    MEMORY[0x1B272C230](v67, -1, -1);

    v97 = v113;
  }

  else
  {
    sub_1B0AD3FBC(v64, type metadata accessor for FetchMessages);
    sub_1B0398EFC(v115, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v60, type metadata accessor for FetchMessages);
    sub_1B0AD3FBC(v25, type metadata accessor for MailboxTaskLogger);

    sub_1B0AD3FBC(v62, type metadata accessor for FetchMessages);
    sub_1B0398EFC(v61, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v59, type metadata accessor for MailboxTaskLogger);
    v97 = v58;
  }

  sub_1B0398EFC(v97, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t sub_1B0AD1E24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for NewServerMessages();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03B5C80(v3 + *(Messages + 36), v10, &qword_1EB6E41C0, &unk_1B0EC4330);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E41C0, &unk_1B0EC4330);
  }

  else
  {
    sub_1B03D3E24(v10, v15, type metadata accessor for NewServerMessages);
    if ((sub_1B0B710B0(a1, a2) & 1) == 0)
    {
      sub_1B0B5F454(a3);
      sub_1B0AD3FBC(v15, type metadata accessor for NewServerMessages);
      v17 = 0;
      goto LABEL_7;
    }

    sub_1B0AD3FBC(v15, type metadata accessor for NewServerMessages);
  }

  v17 = 1;
LABEL_7:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C8, &qword_1B0EC4238);
  return (*(*(v18 - 8) + 56))(a3, v17, 1, v18);
}

uint64_t sub_1B0AD2068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for NewServerMessages();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B0A9EA84(a2, a4))
  {
    return 0xF000000000000007;
  }

  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03B5C80(v4 + *(Messages + 36), v12, &qword_1EB6E41C0, &unk_1B0EC4330);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B0398EFC(v12, &qword_1EB6E41C0, &unk_1B0EC4330);
    sub_1B0AD2324();
    if (v21)
    {
      return 0xF000000000000007;
    }

    v22 = v20;
    v23 = swift_allocObject();
    v24 = *(v4 + 24);
    v25 = MEMORY[0x1E69E7CC0];
    *(v23 + 16) = *(v4 + 16);
    *(v23 + 24) = v24;
    *(v23 + 32) = v25;
    *(v23 + 40) = v22;
    *(v23 + 48) = 0;
    v26 = v23 | 0x2000000000000006;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v26;
  }

  else
  {
    sub_1B03D3E24(v12, v17, type metadata accessor for NewServerMessages);
    if ((sub_1B0A991CC(a1, a2, a3) & 1) != 0 && ((sub_1B0AD2324(), v29 = v28, v30 = v27, v31 = *&v17[*(v13 + 36)], *(v31 + 16)) || (v27 & 1) == 0))
    {
      v32 = swift_allocObject();
      v33 = *(v4 + 24);
      *(v32 + 16) = *(v4 + 16);
      *(v32 + 24) = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v17, type metadata accessor for NewServerMessages);
      *(v32 + 32) = v31;
      *(v32 + 40) = v29;
      *(v32 + 48) = v30 & 1;
      return v32 | 0x2000000000000006;
    }

    else
    {
      sub_1B0AD3FBC(v17, type metadata accessor for NewServerMessages);
      return 0xF000000000000007;
    }
  }
}

void sub_1B0AD2324()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_1B03D3D54(v0 + Messages[10], v20, type metadata accessor for FetchMessages.MissingUIDs);
  v22 = v0 + Messages[11];
  v23 = *v22;
  v37 = *(v22 + 8);
  v24 = Messages[9];
  v36 = v0;
  sub_1B03B5C80(v0 + v24, v7, &qword_1EB6E41C0, &unk_1B0EC4330);
  v25 = type metadata accessor for NewServerMessages();
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_1B0398EFC(v7, &qword_1EB6E41C0, &unk_1B0EC4330);
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1B0398EFC(v11, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v26 = v35;
    sub_1B03B5C80(&v7[*(v25 + 20)], v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v7, type metadata accessor for NewServerMessages);
    sub_1B03C60A4(v26, v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_1B03C60A4(v11, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v27 = v37;
  v28 = sub_1B0AD3C90(v23, v37, v16);
  v30 = v29;
  sub_1B0AD3FBC(v20, type metadata accessor for FetchMessages.MissingUIDs);
  sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v30 & 1) == 0 && ((v28 == v23) & ~v27) == 0)
  {
    v31 = *(v36 + Messages[7] + 8);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 8 * v32 + 24);
    }

    else
    {
      v33 = 1;
    }

    sub_1B0AD2794(v33, v28);
  }
}

void sub_1B0AD2794(unsigned int a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  if (a2 < a1)
  {
    LODWORD(v21) = 1;
    if (a1 < 2)
    {
      __break(1u);
    }

    else
    {
      v19 = HIDWORD(a2);
      LODWORD(v20) = a1 - 1;
      v18 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v21, &v20, &type metadata for UID, v18, &v22);
      v21 = v22;
      v20 = Range<>.init<A>(_:)(&v21, &type metadata for UID, v18);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v22 = __PAIR64__(v19, a2);
      v21 = Range<>.init<A>(_:)(&v22, &type metadata for UID, v18);
      sub_1B0E46F08();
      MessageIdentifierSet.subtracting(_:)(v17, v14);
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v7);
      sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B4A3E8();
      sub_1B0398EFC(v7, &unk_1EB6E2780, &unk_1B0E9C5E0);
      sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }
}

uint64_t sub_1B0AD2A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a1;
  v126 = a4;
  v121 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v120 = &v103[-v7];
  v8 = type metadata accessor for MessageMetadata(0);
  v111 = *(v8 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v14 = &v103[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v103[-v16];
  v116 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v124 = &v103[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v103[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v103[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v103[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v117 = &v103[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v103[-v29];
  v31 = type metadata accessor for NewServerMessages();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v103[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v103[-v37];
  Messages = type metadata accessor for FetchMessages(0);
  v40 = *(Messages + 36);
  v122 = a3;
  v118 = v40;
  v119 = Messages;
  sub_1B03B5C80(a3 + v40, v30, &qword_1EB6E41C0, &unk_1B0EC4330);
  v43 = *(v32 + 48);
  v42 = (v32 + 48);
  v41 = v43;
  v127 = v31;
  if (v43(v30, 1, v31) == 1)
  {
    sub_1B0398EFC(v30, &qword_1EB6E41C0, &unk_1B0EC4330);
LABEL_7:
    v66 = v124;
    v65 = v125;
    v67 = v121;
    v50 = v117;
    goto LABEL_16;
  }

  sub_1B03D3E24(v30, v38, type metadata accessor for NewServerMessages);
  if (!*(*&v38[*(v127 + 36)] + 16))
  {
    sub_1B0AD3FBC(v38, type metadata accessor for NewServerMessages);
    goto LABEL_7;
  }

  v108 = *&v38[*(v127 + 36)];
  v110 = v41;
  v44 = v126;
  v45 = v115;
  sub_1B03D3D54(v126, v115, type metadata accessor for MailboxTaskLogger);
  v46 = v114;
  sub_1B03D3D54(v44, v114, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v109 = v38;
  sub_1B03D3D54(v38, v35, type metadata accessor for NewServerMessages);
  v47 = sub_1B0E43988();
  v48 = sub_1B0E45908();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v117;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v106 = v48;
    v52 = v51;
    v107 = swift_slowAlloc();
    v130[0] = v107;
    *v52 = 68159491;
    *(v52 + 4) = 2;
    *(v52 + 8) = 256;
    v53 = v116;
    v54 = *(v116 + 20);
    v105 = v47;
    v55 = &v46[v54];
    *(v52 + 10) = v46[v54];
    *(v52 + 11) = 2082;
    v56 = &v45[*(v53 + 20)];
    *(v52 + 13) = sub_1B0399D64(*(v56 + 1), *(v56 + 2), v130);
    *(v52 + 21) = 1040;
    *(v52 + 23) = 2;
    *(v52 + 27) = 512;
    v104 = *(v55 + 12);
    sub_1B0AD3FBC(v46, type metadata accessor for MailboxTaskLogger);
    *(v52 + 29) = v104;
    *(v52 + 31) = 2160;
    *(v52 + 33) = 0x786F626C69616DLL;
    *(v52 + 41) = 2085;
    v57 = v45;
    v58 = *(v56 + 4);
    LODWORD(v56) = *(v56 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AD3FBC(v57, type metadata accessor for MailboxTaskLogger);
    v128 = v58;
    v129 = v56;
    v59 = sub_1B0E44BA8();
    v61 = sub_1B0399D64(v59, v60, v130);

    *(v52 + 43) = v61;
    *(v52 + 51) = 2048;
    v62 = *(*&v35[*(v127 + 36)] + 16);
    sub_1B0AD3FBC(v35, type metadata accessor for NewServerMessages);
    *(v52 + 53) = v62;
    v63 = v105;
    _os_log_impl(&dword_1B0389000, v105, v106, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld new message(s).", v52, 0x3Du);
    v64 = v107;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v64, -1, -1);
    MEMORY[0x1B272C230](v52, -1, -1);
  }

  else
  {
    sub_1B0AD3FBC(v35, type metadata accessor for NewServerMessages);
    sub_1B0AD3FBC(v46, type metadata accessor for MailboxTaskLogger);

    sub_1B0AD3FBC(v45, type metadata accessor for MailboxTaskLogger);
  }

  v65 = v125;
  sub_1B03BDE74(9u);
  sub_1B03BDD7C(&v128, 9);
  v68 = *(type metadata accessor for MailboxSyncState() + 64);
  v69 = type metadata accessor for NewestMessages();
  v70 = (*(*(v69 - 8) + 48))(v65 + v68, 1, v69);
  v66 = v124;
  v41 = v110;
  if (v70)
  {
    sub_1B0AD3FBC(v109, type metadata accessor for NewServerMessages);
  }

  else
  {
    v115 = v42;
    sub_1B03D06F8();
    v71 = v14;
    sub_1B0E46EE8();
    v72 = *(v108 + 16);
    v73 = v113;
    if (v72)
    {
      v74 = v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v75 = *(v111 + 72);
      do
      {
        sub_1B03D3D54(v74, v11, type metadata accessor for MessageMetadata);
        LODWORD(v130[0]) = *v11;
        v71 = v14;
        MessageIdentifierSet.insert(_:)(&v128, v130, v73);
        sub_1B0AD3FBC(v11, type metadata accessor for MessageMetadata);
        v74 += v75;
        --v72;
      }

      while (v72);
    }

    v76 = v112;
    sub_1B03C60A4(v71, v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B5EFE4(v76);
    sub_1B0398EFC(v76, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AD3FBC(v109, type metadata accessor for NewServerMessages);
    v66 = v124;
    v41 = v110;
  }

  v67 = v121;
LABEL_16:
  v77 = v122;
  sub_1B03B5C80(v122 + v118, v50, &qword_1EB6E41C0, &unk_1B0EC4330);
  v78 = v41(v50, 1, v127);
  v79 = v120;
  if (v78 == 1)
  {
    sub_1B0398EFC(v50, &qword_1EB6E41C0, &unk_1B0EC4330);
    v80 = 1;
  }

  else
  {
    sub_1B03B5C80(v50 + *(v127 + 20), v120, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AD3FBC(v50, type metadata accessor for NewServerMessages);
    v80 = 0;
  }

  v81 = v126;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v82 - 8) + 56))(v79, v80, 1, v82);
  v83 = sub_1B0AD6808(v65, v67 & 0x101010101FFFF01, v79, (v77 + *(v119 + 28)), v81);
  v85 = v84;
  v87 = v86;
  result = sub_1B0398EFC(v79, &unk_1EB6E3670, &unk_1B0E9B260);
  v89 = v123;
  if ((v87 & 1) == 0)
  {
    sub_1B03D3D54(v81, v123, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(v81, v66, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v90 = sub_1B0E43988();
    v91 = sub_1B0E45908();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v130[0] = v93;
      *v92 = 68159747;
      *(v92 + 4) = 2;
      *(v92 + 8) = 256;
      v94 = v116;
      v95 = v66 + *(v116 + 20);
      *(v92 + 10) = *v95;
      *(v92 + 11) = 2082;
      v96 = *(v94 + 20);
      v127 = v85;
      v97 = v66;
      v98 = &v89[v96];
      *(v92 + 13) = sub_1B0399D64(*&v89[v96 + 8], *&v89[v96 + 16], v130);
      *(v92 + 21) = 1040;
      *(v92 + 23) = 2;
      *(v92 + 27) = 512;
      LOWORD(v95) = *(v95 + 24);
      sub_1B0AD3FBC(v97, type metadata accessor for MailboxTaskLogger);
      *(v92 + 29) = v95;
      *(v92 + 31) = 2160;
      *(v92 + 33) = 0x786F626C69616DLL;
      *(v92 + 41) = 2085;
      v99 = *(v98 + 4);
      LODWORD(v98) = *(v98 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v89, type metadata accessor for MailboxTaskLogger);
      v128 = v99;
      v129 = v98;
      v100 = sub_1B0E44BA8();
      v102 = sub_1B0399D64(v100, v101, v130);

      *(v92 + 43) = v102;
      *(v92 + 51) = 2048;
      *(v92 + 53) = v83;
      *(v92 + 61) = 2048;
      *(v92 + 63) = v127;
      _os_log_impl(&dword_1B0389000, v90, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Still missing %ld messages (%ld completed). Will run again.", v92, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v93, -1, -1);
      MEMORY[0x1B272C230](v92, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v66, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v89, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(1u);
    return sub_1B03BDD7C(&v128, 1);
  }

  return result;
}

void sub_1B0AD36D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if ((*(a1 + 8) & 1) != 0 || (*a1 == a2 ? (v14 = v6 == HIDWORD(*a1)) : (v14 = 0), !v14))
  {
    sub_1B03D3D54(a3, &v30 - v12, type metadata accessor for MailboxTaskLogger);
    sub_1B03D3D54(a3, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E458D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v6;
      v18 = v17;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v18 = 68159491;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = &v10[*(v7 + 20)];
      *(v18 + 10) = *v19;
      *(v18 + 11) = 2082;
      v20 = &v13[*(v7 + 20)];
      *(v18 + 13) = sub_1B0399D64(*(v20 + 1), *(v20 + 2), &v35);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      LOWORD(v19) = *(v19 + 12);
      sub_1B0AD3FBC(v10, type metadata accessor for MailboxTaskLogger);
      *(v18 + 29) = v19;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v21 = *(v20 + 4);
      LODWORD(v19) = *(v20 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AD3FBC(v13, type metadata accessor for MailboxTaskLogger);
      v33 = v21;
      v34 = v19;
      v22 = sub_1B0E44BA8();
      v24 = sub_1B0399D64(v22, v23, &v35);

      *(v18 + 43) = v24;
      *(v18 + 51) = 2082;
      v33 = __PAIR64__(v31, a2);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v26 = MessageIdentifierRange.debugDescription.getter(v25);
      v28 = sub_1B0399D64(v26, v27, &v35);

      *(v18 + 53) = v28;
      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v18, 0x3Du);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v29, -1, -1);
      MEMORY[0x1B272C230](v18, -1, -1);
    }

    else
    {
      sub_1B0AD3FBC(v10, type metadata accessor for MailboxTaskLogger);

      sub_1B0AD3FBC(v13, type metadata accessor for MailboxTaskLogger);
    }

    *a1 = a2;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_1B0AD3A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B0EC1E70;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v1;
}

uint64_t sub_1B0AD3ADC()
{
  if (qword_1EB6DDF70 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AD3B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0AD2068(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_1B0AD3B90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v8 = a2;
  sub_1B0B86564(v3, v4, sub_1B0AD44C0, v7);
  sub_1B0AD2324();
  if ((v6 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1B0B256B4(v3, v4, sub_1B0AD44D4);
  }
}

uint64_t sub_1B0AD3C90(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MessageIdentifierSet.subtracting(_:)(a3, &v27 - v13);
  v15 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v16 = v4 + *(v15 + 20);
  MessageIdentifierSet.subtracting(_:)(v14, v11);
  v17 = HIDWORD(a1);
  v18 = (v4 + *(v15 + 24));
  v19 = *v18;
  v20 = *(v18 + 4);
  LOBYTE(v29) = a2 & 1;
  if (a2)
  {
    v17 = 0;
  }

  LOBYTE(v29) = v20;
  v21 = sub_1B0AD5FA0(v17 | ((a2 & 1) << 32), v11, v19 | (v20 << 32));
  if ((v21 & 0x100000000) != 0)
  {
    sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return 0;
  }

  else
  {
    if (a2)
    {
      v22 = v21;
    }

    else
    {
      v22 = a1;
    }

    v23 = v21;
    v24 = sub_1B0AD6480(v22, v11);
    v27 = v23;
    v28 = v24;
    v25 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v25, &v29);
    sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v29;
  }
}

uint64_t sub_1B0AD3E80(void (*a1)(void))
{
  a1();
  if (v1)
  {
    return 7104878;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
  return sub_1B0E449D8();
}

uint64_t sub_1B0AD3EE4(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v5 = *(v4 + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v7)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B0AD3FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0AD4044()
{
  sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DE198);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AD4158()
{
  sub_1B0AD428C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      sub_1B0AD42F4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FetchMessages.MissingUIDs(319);
        if (v3 <= 0x3F)
        {
          sub_1B0AD434C(319, &qword_1EB6DCC80);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0AD428C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B0AD42F4()
{
  if (!qword_1EB6DDAC8)
  {
    type metadata accessor for NewServerMessages();
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DDAC8);
    }
  }
}

void sub_1B0AD434C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B0E45D88();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B0AD4398()
{
  result = qword_1EB6DDF68;
  if (!qword_1EB6DDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF68);
  }

  return result;
}

unint64_t sub_1B0AD43EC()
{
  result = qword_1EB6DDF60;
  if (!qword_1EB6DDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF60);
  }

  return result;
}

unint64_t sub_1B0AD4440(uint64_t a1)
{
  result = sub_1B0AD4468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AD4468()
{
  result = qword_1EB6DDF58;
  if (!qword_1EB6DDF58)
  {
    type metadata accessor for FetchMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF58);
  }

  return result;
}

uint64_t sub_1B0AD44F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v48 = a2;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v45 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  result = sub_1B0B708B0(a1, a4);
  v51 = *(result + 16);
  if (v51)
  {
    v52 = v9;
    v53 = result;
    v45 = v6;
    v46 = v18;
    v26 = 0;
    v49 = result + 32;
    v47 = v15;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = v26;
      v27 = *(v56 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v49 + 4 * v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_1B03D3D54(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v33 = *&v21[*(v32 + 48)];
      sub_1B0AD3FBC(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_1B03D3D54(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_1B0AD3FBC(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v48 + 16);
      if (v37)
      {
        v38 = v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v54;
          sub_1B03D3D54(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_1B03D3E24(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v57 + 1;
      result = v53;
    }

    while (v57 + 1 != v51);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_1B0AD49E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v48 = a4;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v47 - v15;
  v16 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  result = sub_1B0B71C80(a1, a2, a3 & 1, a6);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v13;
    v54 = result;
    v47 = v10;
    v28 = 0;
    v50 = result + 32;
    do
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v28;
      v29 = *(v57 + 16);
      if (!v29)
      {
        goto LABEL_3;
      }

      v60 = *(v50 + 4 * v58);
      v30 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v31 = *(v51 + 72);
      v32 = v30;
      v33 = v29;
      while (1)
      {
        sub_1B03D3D54(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v26, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v35 = *&v23[*(v34 + 48)];
      sub_1B0AD3FBC(v23, type metadata accessor for ClientCommand);
      if (v35 != v60)
      {
        goto LABEL_8;
      }

      v36 = v49;
      while (1)
      {
        v37 = v59;
        sub_1B03D3D54(v30, v59, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v37, v36, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v36, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v30 += v31;
        if (!--v29)
        {
LABEL_22:
          v46 = 1;
          goto LABEL_24;
        }
      }

      v38 = *(v36 + *(v34 + 48));
      sub_1B0AD3FBC(v36, type metadata accessor for ClientCommand);
      if (v38 != v60)
      {
        goto LABEL_13;
      }

      v39 = *(v48 + 16);
      if (v39)
      {
        v40 = v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v41 = *(v47 + 72);
        do
        {
          v42 = v55;
          sub_1B03D3D54(v40, v55, type metadata accessor for TaskHistory.Running);
          v43 = v53;
          sub_1B03D3E24(v42, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v43, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v44 = *(v43 + 8);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v43 + *(v45 + 64), type metadata accessor for ClientCommand);
            if (v44 == v60)
            {
              goto LABEL_22;
            }
          }

          v40 += v41;
          --v39;
        }

        while (v39);
      }

LABEL_3:
      v28 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v46 = 0;
LABEL_24:

  return v46;
}

uint64_t sub_1B0AD4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v48 = a2;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v45 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  result = sub_1B0B716F0(a1, a4);
  v51 = *(result + 16);
  if (v51)
  {
    v52 = v9;
    v53 = result;
    v45 = v6;
    v46 = v18;
    v26 = 0;
    v49 = result + 32;
    v47 = v15;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = v26;
      v27 = *(v56 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v49 + 4 * v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_1B03D3D54(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v33 = *&v21[*(v32 + 48)];
      sub_1B0AD3FBC(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_1B03D3D54(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_1B0AD3FBC(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v48 + 16);
      if (v37)
      {
        v38 = v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v54;
          sub_1B03D3D54(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_1B03D3E24(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v57 + 1;
      result = v53;
    }

    while (v57 + 1 != v51);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_1B0AD5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v57 = a2;
  v49 = a1;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  result = a4(a3, v23);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v9;
    v54 = result;
    v46 = v6;
    v47 = v18;
    v27 = 0;
    v50 = result + 32;
    v48 = v15;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v27;
      v28 = *(v57 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v59 = *(v50 + 4 * v58);
      v29 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v30 = *(v51 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_1B03D3D54(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v34 = *&v21[*(v33 + 48)];
      sub_1B0AD3FBC(v21, type metadata accessor for ClientCommand);
      if (v34 != v59)
      {
        goto LABEL_8;
      }

      v36 = v47;
      v35 = v48;
      while (1)
      {
        sub_1B03D3D54(v29, v36, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v36, v35, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v35, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v45 = 1;
          goto LABEL_24;
        }
      }

      v37 = *(v35 + *(v33 + 48));
      sub_1B0AD3FBC(v35, type metadata accessor for ClientCommand);
      if (v37 != v59)
      {
        goto LABEL_13;
      }

      v38 = *(v49 + 16);
      if (v38)
      {
        v39 = v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v40 = *(v46 + 72);
        do
        {
          v41 = v55;
          sub_1B03D3D54(v39, v55, type metadata accessor for TaskHistory.Running);
          v42 = v53;
          sub_1B03D3E24(v41, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v42, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v43 = *(v42 + 8);
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v42 + *(v44 + 64), type metadata accessor for ClientCommand);
            if (v43 == v59)
            {
              goto LABEL_22;
            }
          }

          v39 += v40;
          --v38;
        }

        while (v38);
      }

LABEL_3:
      v27 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v45 = 0;
LABEL_24:

  return v45;
}

uint64_t sub_1B0AD58EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v50 = a3;
  v57 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v47 - v13;
  v14 = type metadata accessor for TaskHistory.Previous(0);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  result = sub_1B0B71364(a1, a2, a5);
  v53 = *(result + 16);
  if (v53)
  {
    v54 = v11;
    v55 = result;
    v47 = v8;
    v48 = v20;
    v28 = 0;
    v51 = result + 32;
    v49 = v17;
    do
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v59 = v28;
      v29 = *(v58 + 16);
      if (!v29)
      {
        goto LABEL_3;
      }

      v60 = *(v51 + 4 * v59);
      v30 = v58 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v31 = *(v52 + 72);
      v32 = v30;
      v33 = v29;
      while (1)
      {
        sub_1B03D3D54(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v26, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v35 = *&v23[*(v34 + 48)];
      sub_1B0AD3FBC(v23, type metadata accessor for ClientCommand);
      if (v35 != v60)
      {
        goto LABEL_8;
      }

      v37 = v48;
      v36 = v49;
      while (1)
      {
        sub_1B03D3D54(v30, v37, type metadata accessor for TaskHistory.Previous);
        sub_1B03D3E24(v37, v36, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AD3FBC(v36, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v30 += v31;
        if (!--v29)
        {
LABEL_22:
          v46 = 1;
          goto LABEL_24;
        }
      }

      v38 = *(v36 + *(v34 + 48));
      sub_1B0AD3FBC(v36, type metadata accessor for ClientCommand);
      if (v38 != v60)
      {
        goto LABEL_13;
      }

      v39 = *(v50 + 16);
      if (v39)
      {
        v40 = v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v41 = *(v47 + 72);
        do
        {
          v42 = v56;
          sub_1B03D3D54(v40, v56, type metadata accessor for TaskHistory.Running);
          v43 = v54;
          sub_1B03D3E24(v42, v54, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AD3FBC(v43, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v44 = *(v43 + 8);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AD3FBC(v43 + *(v45 + 64), type metadata accessor for ClientCommand);
            if (v44 == v60)
            {
              goto LABEL_22;
            }
          }

          v40 += v41;
          --v39;
        }

        while (v39);
      }

LABEL_3:
      v28 = v59 + 1;
      result = v55;
    }

    while (v59 + 1 != v53);
  }

  v46 = 0;
LABEL_24:

  return v46;
}

uint64_t sub_1B0AD5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_1B0AD5400(a2, a3, a4, sub_1B0B71098);
  if (result)
  {
    sub_1B03D3D54(a1, v15, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v24, v15, sizeof(v24));
      Messages = type metadata accessor for FetchMessages(0);
      v18 = *(v6 + *(Messages + 28) + 8);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v18 + 8 * v19 + 24);
      }

      else
      {
        v20 = 1;
      }

      v21 = *(Messages + 36);
      v22 = type metadata accessor for NewServerMessages();
      if (!(*(*(v22 - 8) + 48))(v6 + v21, 1, v22))
      {
        sub_1B0B5F730(v24, v20, a6);
      }

      return sub_1B0AA4C0C(v24);
    }

    else
    {
      return sub_1B0AD3FBC(v15, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_1B0AD5FA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  if ((a3 & 0x100000000) != 0)
  {
    v28 = HIDWORD(a1) & 1;
    goto LABEL_18;
  }

  if (a3 != -1)
  {
    LODWORD(v33) = a3 + 1;
    LODWORD(v32) = -1;
    v29 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v29, &v34);
    v33 = v34;
    v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v29);
    sub_1B03D06F8();
    sub_1B0E46F08();
    MessageIdentifierSet.subtracting(_:)(v19, v22);
    sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    MessageIdentifierSet.ranges.getter(v9);
    a1 = sub_1B0B4A3E8();
    LOBYTE(v28) = v30;
    sub_1B0398EFC(v9, &unk_1EB6E2780, &unk_1B0E9C5E0);
    sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v28)
    {
      LODWORD(a1) = 0;
    }

    else
    {
      LODWORD(a1) = HIDWORD(a1);
    }

    goto LABEL_18;
  }

  sub_1B03B5C80(a2, &v31 - v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a1 == -1)
  {
    goto LABEL_16;
  }

  v23 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v23, &v34);
  v33 = v34;
  v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.subtracting(_:)(v22, v16);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  LODWORD(v33) = 1;
  LODWORD(v32) = a1;
  static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v23, &v34);
  v33 = v34;
  v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
  sub_1B0E46F08();
  MessageIdentifierSet.subtracting(_:)(v13, v19);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = sub_1B0B4AAF0();
  result = sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v24 & 0x100000000) != 0 || a1 >= v24)
  {
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFFFFE) != 0)
  {
    v26 = v24 - 1;
    if (v24 - 1 > a1)
    {
      LODWORD(v33) = a1 + 1;
      LODWORD(v32) = v24 - 1;
      static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v23, &v34);
      v33 = v34;
      v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
      sub_1B0E46F08();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v27 = sub_1B0E46EB8();
      sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v27)
      {
        LOBYTE(v28) = 0;
        LODWORD(a1) = v26;
LABEL_18:
        LOBYTE(v34) = v28 & 1;
        return a1 | ((v28 & 1) << 32);
      }

LABEL_17:
      LOBYTE(v28) = 0;
      goto LABEL_18;
    }

LABEL_16:
    sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}