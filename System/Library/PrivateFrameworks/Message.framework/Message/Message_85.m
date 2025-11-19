uint64_t sub_1B0CE7ED4()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0()
{
  v0 = UseAttribute.all.unsafeMutableAddressor();
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = sub_1B0E44B98();
  v5 = v4;
  if (v3 == sub_1B0E44B98() && v5 == v6)
  {

LABEL_8:

    return 0;
  }

  v8 = sub_1B0E46A78();

  if (v8)
  {
    goto LABEL_8;
  }

  v10 = UseAttribute.archive.unsafeMutableAddressor();
  v12 = *v10;
  v11 = *(v10 + 1);
  v13 = sub_1B0E44B98();
  v15 = v14;
  if (v13 == sub_1B0E44B98() && v15 == v16)
  {

LABEL_13:

    return 1;
  }

  v17 = sub_1B0E46A78();

  if (v17)
  {
    goto LABEL_13;
  }

  v18 = UseAttribute.drafts.unsafeMutableAddressor();
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = sub_1B0E44B98();
  v23 = v22;
  if (v21 == sub_1B0E44B98() && v23 == v24)
  {

LABEL_18:

    return 2;
  }

  v25 = sub_1B0E46A78();

  if (v25)
  {
    goto LABEL_18;
  }

  v26 = UseAttribute.flagged.unsafeMutableAddressor();
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = sub_1B0E44B98();
  v31 = v30;
  if (v29 == sub_1B0E44B98() && v31 == v32)
  {

LABEL_23:

    return 3;
  }

  v33 = sub_1B0E46A78();

  if (v33)
  {
    goto LABEL_23;
  }

  v34 = UseAttribute.junk.unsafeMutableAddressor();
  v36 = *v34;
  v35 = *(v34 + 1);
  v37 = sub_1B0E44B98();
  v39 = v38;
  if (v37 == sub_1B0E44B98() && v39 == v40)
  {

LABEL_28:

    return 4;
  }

  v41 = sub_1B0E46A78();

  if (v41)
  {
    goto LABEL_28;
  }

  v42 = UseAttribute.sent.unsafeMutableAddressor();
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = sub_1B0E44B98();
  v47 = v46;
  if (v45 == sub_1B0E44B98() && v47 == v48)
  {

LABEL_33:

    return 5;
  }

  v49 = sub_1B0E46A78();

  if (v49)
  {
    goto LABEL_33;
  }

  v50 = UseAttribute.trash.unsafeMutableAddressor();
  v52 = *v50;
  v51 = *(v50 + 1);
  v53 = sub_1B0E44B98();
  v55 = v54;
  if (v53 == sub_1B0E44B98() && v55 == v56)
  {

    return 6;
  }

  else
  {
    v57 = sub_1B0E46A78();

    if (v57)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B0CE8454()
{
  result = qword_1EB6E6330;
  if (!qword_1EB6E6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6330);
  }

  return result;
}

unint64_t sub_1B0CE84AC()
{
  result = qword_1EB6E6338;
  if (!qword_1EB6E6338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6340, &qword_1B0EE5AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6338);
  }

  return result;
}

uint64_t ConnectionStatus.Error.details.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);

  return sub_1B0CEA888(a1, v3);
}

uint64_t property wrapper backing initializer of ConnectionStatus.Error.backedOffUntil(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  sub_1B03B5C80(a1, &v8 - v4, &unk_1EB6E2990, &qword_1B0E9B060);
  v6 = OptionalMillisecondDate.init(wrappedValue:)(v5);
  sub_1B0398EFC(a1, &unk_1EB6E2990, &qword_1B0E9B060);
  return v6;
}

uint64_t ConnectionStatus.Error.backedOffUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  if (*(v3 + 8))
  {
    v4 = 1;
  }

  else
  {
    v5 = *v3 * 0.001;
    sub_1B0E43018();
    v4 = 0;
  }

  v6 = sub_1B0E43108();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v4, 1, v6);
}

uint64_t ConnectionStatus.Error.backedOffUntil.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  sub_1B03B5C80(a1, &v9 - v5, &unk_1EB6E2990, &qword_1B0E9B060);
  v7 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  OptionalMillisecondDate.wrappedValue.setter(v6);
  return sub_1B0398EFC(a1, &unk_1EB6E2990, &qword_1B0E9B060);
}

void (*ConnectionStatus.Error.backedOffUntil.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  *(a1 + 24) = v6;
  v7 = v1 + v6;
  if (*(v7 + 8))
  {
    v8 = 1;
  }

  else
  {
    v9 = *v7 * 0.001;
    sub_1B0E43018();
    v8 = 0;
  }

  v10 = sub_1B0E43108();
  (*(*(v10 - 8) + 56))(v5, v8, 1, v10);
  return sub_1B0CE8994;
}

void sub_1B0CE8994(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1B03B5C80(a1[2], v3, &unk_1EB6E2990, &qword_1B0E9B060);
    OptionalMillisecondDate.wrappedValue.setter(v3);
    sub_1B0398EFC(v4, &unk_1EB6E2990, &qword_1B0E9B060);
  }

  else
  {
    OptionalMillisecondDate.wrappedValue.setter(a1[2]);
  }

  free(v4);

  free(v3);
}

uint64_t ConnectionStatus.Error.init(kind:details:backedOffUntil:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v26 = a2;
  v25 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
  (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  v16 = &a4[*(v13 + 24)];
  v17 = sub_1B0E43108();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_1B03B5C80(v12, v10, &unk_1EB6E2990, &qword_1B0E9B060);
  v18 = OptionalMillisecondDate.init(wrappedValue:)(v10);
  v20 = v19;
  sub_1B0398EFC(v12, &unk_1EB6E2990, &qword_1B0E9B060);
  *v16 = v18;
  v16[8] = v20 & 1;
  *a4 = v25;
  v21 = &a4[v14];
  v22 = v26;
  sub_1B0CEA8F8(v26, v21);
  sub_1B03B5C80(a3, v12, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B03B5C80(v12, v10, &unk_1EB6E2990, &qword_1B0E9B060);
  OptionalMillisecondDate.wrappedValue.setter(v10);
  sub_1B0398EFC(a3, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B0398EFC(v22, &qword_1EB6E39C0, &qword_1B0EA35E0);
  return sub_1B0398EFC(v12, &unk_1EB6E2990, &qword_1B0E9B060);
}

uint64_t ConnectionStatus.Error.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ConnectionStatus.Error.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v66 - v7;
  v8 = sub_1B0E43108();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6348, &qword_1B0EE5B00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v66 - v21;
  v23 = type metadata accessor for ConnectionStatus.Error(0);
  v24 = &v1[*(v23 + 24)];
  if (v24[1])
  {
    (*(v9 + 56))(v22, 1, 1, v8);
  }

  else
  {
    v25 = *v24 * 0.001;
    sub_1B0E43018();
    (*(v9 + 56))(v22, 0, 1, v8);
  }

  v26 = *(v15 + 48);
  sub_1B03B5C80(&v1[*(v23 + 20)], v18, &qword_1EB6E39C0, &qword_1B0EA35E0);
  sub_1B06BC984(v22, &v18[v26]);
  v27 = (*(v3 + 48))(v18, 1, v2);
  v28 = (*(v9 + 48))(&v18[v26], 1, v8);
  if (v27 != 1)
  {
    if (v28 != 1)
    {
      v33 = v69;
      sub_1B0CEB134(v18, v69, type metadata accessor for ConnectionStatus.Error.Details);
      v51 = &v18[v26];
      v52 = v67;
      (*(v9 + 32))(v67, v51, v8);
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1B0E46298();
      v53 = 0x80000001B0F2C750;
      v54 = 0xD000000000000014;
      v55 = *v1;
      v56 = 0xE700000000000000;
      v57 = 0x6B726F7774656ELL;
      if (v55 != 4)
      {
        v57 = 0x7245726573726170;
        v56 = 0xEB00000000726F72;
      }

      if (v55 != 3)
      {
        v54 = v57;
        v53 = v56;
      }

      v58 = 0xD000000000000011;
      v59 = 0x80000001B0F2F160;
      v60 = 0xD000000000000011;
      v61 = 0x80000001B0F2F140;
      if (v55 == 1)
      {
        v60 = 0x7245726576726573;
        v61 = 0xEB00000000726F72;
      }

      if (*v1)
      {
        v58 = v60;
        v59 = v61;
      }

      if (*v1 <= 2u)
      {
        v62 = v58;
      }

      else
      {
        v62 = v54;
      }

      if (*v1 <= 2u)
      {
        v63 = v59;
      }

      else
      {
        v63 = v53;
      }

      MEMORY[0x1B2726E80](v62, v63);

      MEMORY[0x1B2726E80](0x6C69617465647B20, 0xEB00000000203A73);
      sub_1B0E46508();
      MEMORY[0x1B2726E80](0x64656B636162202CLL, 0xED0000203A66664FLL);
      sub_1B0911708();
      v64 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v64);

      MEMORY[0x1B2726E80](125, 0xE100000000000000);
      v50 = v70;
      (*(v9 + 8))(v52, v8);
      goto LABEL_61;
    }

    v33 = v68;
    sub_1B0CEB134(v18, v68, type metadata accessor for ConnectionStatus.Error.Details);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1B0E46298();
    v34 = *v1;
    if (v34 > 2)
    {
      v35 = 0xEB00000000726F72;
      if (v34 == 3)
      {
        v35 = 0x80000001B0F2C750;
        v36 = 0xD000000000000014;
      }

      else if (v34 == 4)
      {
        v35 = 0xE700000000000000;
        v36 = 0x6B726F7774656ELL;
      }

      else
      {
        v36 = 0x7245726573726170;
      }

      goto LABEL_60;
    }

    v35 = 0xEB00000000726F72;
    if (*v1)
    {
      v36 = 0x7245726576726573;
      if (v34 == 1)
      {
LABEL_60:
        MEMORY[0x1B2726E80](v36, v35);

        MEMORY[0x1B2726E80](0x6C69617465647B20, 0xEB00000000203A73);
        sub_1B0E46508();
        MEMORY[0x1B2726E80](125, 0xE100000000000000);
        v50 = v70;
LABEL_61:
        sub_1B0CEAD60(v33, type metadata accessor for ConnectionStatus.Error.Details);
        return v50;
      }

      v36 = 0xD000000000000011;
      v37 = "serverUnavailable";
    }

    else
    {
      v36 = 0xD000000000000011;
      v37 = "serverUnreachable";
    }

    v35 = (v37 - 32) | 0x8000000000000000;
    goto LABEL_60;
  }

  if (v28 == 1)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    v29 = *v1;
    if (v29 > 2)
    {
      v30 = 0xEB00000000726F72;
      if (v29 == 3)
      {
        v30 = 0x80000001B0F2C750;
        v31 = 0xD000000000000014;
      }

      else if (v29 == 4)
      {
        v30 = 0xE700000000000000;
        v31 = 0x6B726F7774656ELL;
      }

      else
      {
        v31 = 0x7245726573726170;
      }

      goto LABEL_58;
    }

    v30 = 0xEB00000000726F72;
    if (*v1)
    {
      v31 = 0x7245726576726573;
      if (v29 == 1)
      {
LABEL_58:
        MEMORY[0x1B2726E80](v31, v30);

        return v70;
      }

      v31 = 0xD000000000000011;
      v32 = "serverUnavailable";
    }

    else
    {
      v31 = 0xD000000000000011;
      v32 = "serverUnreachable";
    }

    v30 = (v32 - 32) | 0x8000000000000000;
    goto LABEL_58;
  }

  (*(v9 + 32))(v14, &v18[v26], v8);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1B0E46298();
  v38 = 0x80000001B0F2C750;
  v39 = 0xD000000000000014;
  v40 = *v1;
  v41 = 0xE700000000000000;
  v42 = 0x6B726F7774656ELL;
  if (v40 != 4)
  {
    v42 = 0x7245726573726170;
    v41 = 0xEB00000000726F72;
  }

  if (v40 != 3)
  {
    v39 = v42;
    v38 = v41;
  }

  v43 = 0xD000000000000011;
  v44 = 0x80000001B0F2F160;
  v45 = 0xD000000000000011;
  v46 = 0x80000001B0F2F140;
  if (v40 == 1)
  {
    v45 = 0x7245726576726573;
    v46 = 0xEB00000000726F72;
  }

  if (*v1)
  {
    v43 = v45;
    v44 = v46;
  }

  if (*v1 <= 2u)
  {
    v47 = v43;
  }

  else
  {
    v47 = v39;
  }

  if (*v1 <= 2u)
  {
    v48 = v44;
  }

  else
  {
    v48 = v38;
  }

  MEMORY[0x1B2726E80](v47, v48);

  MEMORY[0x1B2726E80](0x64656B6361627B20, 0xED0000203A66664FLL);
  sub_1B0911708();
  v49 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v49);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  v50 = v70;
  (*(v9 + 8))(v14, v8);
  return v50;
}

unint64_t ConnectionStatus.Error.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x7245726576726573;
  v2 = 0xD000000000000014;
  v3 = 0x6B726F7774656ELL;
  if (a1 != 4)
  {
    v3 = 0x7245726573726170;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
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

unint64_t ConnectionStatus.Error.Details.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1B0E441D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03C7450(v1, v10, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v15 = *v10;
    v16 = v10[1];
    v30 = 0;
    v31 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B0E46298();

      v17 = 0x80000001B0F2F1A0;
      v18 = 0xD000000000000015;
    }

    else
    {
      sub_1B0E46298();

      v17 = 0x80000001B0F2F180;
      v18 = 0xD000000000000012;
    }

    v30 = v18;
    v31 = v17;
    MEMORY[0x1B2726E80](v15, v16);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v19 = *v10;
    v20 = v10[1];
    v21 = v10[2];
    v22 = v10[3];
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B0E46298();

    v30 = 0xD00000000000001DLL;
    v31 = 0x80000001B0F2F1C0;
    MEMORY[0x1B2726E80](v19, v20);

    MEMORY[0x1B2726E80](0x3A74786574202C27, 0xEA00000000002720);
    MEMORY[0x1B2726E80](v21, v22);
LABEL_10:

    v14 = 10535;
    goto LABEL_11;
  }

  v12 = (*(v3 + 88))(v10, v2);
  if (v12 == *MEMORY[0x1E6977D68])
  {
    (*(v3 + 96))(v10, v2);
    v13 = *v10;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000014, 0x80000001B0F2F220);
    v29 = v13;
    sub_1B0E46508();
    v14 = 10537;
LABEL_11:
    MEMORY[0x1B2726E80](v14, 0xE200000000000000);
    return v30;
  }

  if (v12 == *MEMORY[0x1E6977D58])
  {
    (*(v3 + 96))(v10, v2);
    v24 = *v10;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B0E46298();

    v25 = "networkError(.dns(";
LABEL_16:
    v30 = 0xD000000000000012;
    v31 = (v25 - 32) | 0x8000000000000000;
    v29 = v24;
    v26 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v26);

    v14 = 10537;
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x1E6977D60])
  {
    (*(v3 + 96))(v10, v2);
    v24 = *v10;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1B0E46298();

    v25 = "networkError(.tls(";
    goto LABEL_16;
  }

  (*(v3 + 32))(v6, v10, v2);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x456B726F7774656ELL, 0xED000028726F7272);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  v27 = v30;
  (*(v3 + 8))(v6, v2);
  return v27;
}

uint64_t ConnectionStatus.Error.shouldPresentToUserForIMAP.getter()
{
  v1 = sub_1B0E441D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = type metadata accessor for ConnectionStatus.Error(0);
  sub_1B03B5C80(v0 + *(v16 + 20), v15, &qword_1EB6E39C0, &qword_1B0EA35E0);
  v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v18 = 1;
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) != 1)
  {
    sub_1B03B5C80(v15, v13, &qword_1EB6E39C0, &qword_1B0EA35E0);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0CEAD60(v13, type metadata accessor for ConnectionStatus.Error.Details);
    }

    else
    {
      (*(v2 + 32))(v8, v13, v1);
      if ((*(v2 + 88))(v8, v1) == *MEMORY[0x1E6977D68])
      {
        (*(v2 + 16))(v6, v8, v1);
        (*(v2 + 96))(v6, v1);
        v19 = *v6 - 52;
        v20 = v19 > 0x2C;
        v21 = 0xFFFFFFFFEF8uLL >> v19;
        if (v20)
        {
          v18 = 1;
        }

        else
        {
          v18 = v21;
        }
      }

      (*(v2 + 8))(v8, v1);
    }
  }

  sub_1B0398EFC(v15, &qword_1EB6E39C0, &qword_1B0EA35E0);
  return v18 & 1;
}

uint64_t NWError.shouldPresentToUserForIMAP.getter()
{
  v1 = v0;
  v2 = sub_1B0E441D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v3 + 16);
  v11(&v17 - v9, v1, v2, v8);
  if ((*(v3 + 88))(v10, v2) == *MEMORY[0x1E6977D68])
  {
    (v11)(v6, v10, v2);
    (*(v3 + 96))(v6, v2);
    v12 = *v6 - 52;
    v13 = v12 > 0x2C;
    v14 = 0xFFFFFFFFEF8uLL >> v12;
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 1;
  }

  (*(v3 + 8))(v10, v2);
  return v15 & 1;
}

uint64_t _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E441D8();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v49 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v49 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6370, &unk_1B0EE5CE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v49 - v23;
  v25 = (&v49 + *(v22 + 56) - v23);
  sub_1B03C7450(a1, &v49 - v23, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B03C7450(a2, v25, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03C7450(v24, v14, type metadata accessor for ConnectionStatus.Error.Details);
      v28 = *v14;
      v27 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B03C7450(v24, v11, type metadata accessor for ConnectionStatus.Error.Details);
      v28 = *v11;
      v27 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    if (v28 != *v25 || v27 != v25[1])
    {
LABEL_31:
      v47 = sub_1B0E46A78();

      if ((v47 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_34:
      sub_1B0CEAD60(v24, type metadata accessor for ConnectionStatus.Error.Details);
      v39 = 1;
      return v39 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B03C7450(v24, v19, type metadata accessor for ConnectionStatus.Error.Details);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v50;
      v40 = v51;
      v42 = v25;
      v43 = v52;
      (*(v51 + 32))(v50, v42, v52);
      v39 = MEMORY[0x1B27262E0](v19, v41);
      v44 = *(v40 + 8);
      v44(v41, v43);
      v44(v19, v43);
      sub_1B0CEAD60(v24, type metadata accessor for ConnectionStatus.Error.Details);
      return v39 & 1;
    }

    (*(v51 + 8))(v19, v52);
    goto LABEL_23;
  }

  sub_1B03C7450(v24, v17, type metadata accessor for ConnectionStatus.Error.Details);
  v30 = *v17;
  v29 = v17[1];
  v32 = v17[2];
  v31 = v17[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v25[2];
    v33 = v25[3];
    if (v30 == *v25 && v29 == v25[1])
    {
      v45 = v25[1];
    }

    else
    {
      v36 = v25[1];
      v37 = sub_1B0E46A78();

      if ((v37 & 1) == 0)
      {

LABEL_32:
        sub_1B0CEAD60(v24, type metadata accessor for ConnectionStatus.Error.Details);
        goto LABEL_24;
      }
    }

    if (v32 != v34 || v31 != v33)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:

LABEL_23:
  sub_1B0398EFC(v24, &qword_1EB6E6370, &unk_1B0EE5CE0);
LABEL_24:
  v39 = 0;
  return v39 & 1;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6308, &unk_1B0EE59D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = type metadata accessor for ConnectionStatus.Error(0);
  v18 = a1;
  v19 = a2;
  v30 = v17;
  v31 = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_1B03B5C80(&v18[v20], v16, &qword_1EB6E39C0, &qword_1B0EA35E0);
  sub_1B03B5C80(&v19[v20], &v16[v21], &qword_1EB6E39C0, &qword_1B0EA35E0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &qword_1EB6E39C0, &qword_1B0EA35E0);
      goto LABEL_10;
    }

LABEL_7:
    sub_1B0398EFC(v16, &qword_1EB6E6308, &unk_1B0EE59D0);
    return 0;
  }

  sub_1B03B5C80(v16, v12, &qword_1EB6E39C0, &qword_1B0EA35E0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1B0CEAD60(v12, type metadata accessor for ConnectionStatus.Error.Details);
    goto LABEL_7;
  }

  sub_1B0CEB134(&v16[v21], v8, type metadata accessor for ConnectionStatus.Error.Details);
  v24 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v12, v8);
  sub_1B0CEAD60(v8, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B0CEAD60(v12, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1B0398EFC(v16, &qword_1EB6E39C0, &qword_1B0EA35E0);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v25 = *(v30 + 24);
  v26 = &v31[v25];
  v27 = v31[v25 + 8];
  v28 = &v19[v25];
  v29 = v19[v25 + 8];
  if ((v27 & 1) == 0)
  {
    if (*v26 != *v28)
    {
      v29 = 1;
    }

    return (v29 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

uint64_t sub_1B0CEA888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CEA8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionStatus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6368, &qword_1B0EE5CD8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - v20;
  v23 = &v31 + *(v22 + 56) - v20;
  sub_1B03C7450(a1, &v31 - v20, type metadata accessor for ConnectionStatus);
  sub_1B03C7450(a2, v23, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B03C7450(v21, v14, type metadata accessor for ConnectionStatus);
      v25 = *v14;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v14 + 2);
LABEL_15:
        v28 = *v23;
        if ((v26 | (v26 << 32)) == (*(v23 + 2) | (*(v23 + 2) << 32)))
        {
          v29 = sub_1B04520BC(v25, *v23);

          if (v29)
          {
LABEL_17:
            sub_1B0CEAD60(v21, type metadata accessor for ConnectionStatus);
            return 1;
          }
        }

        else
        {
        }

        sub_1B0CEAD60(v21, type metadata accessor for ConnectionStatus);
        return 0;
      }
    }

    else
    {
      sub_1B03C7450(v21, v17, type metadata accessor for ConnectionStatus);
      v25 = *v17;
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *(v17 + 2);
        goto LABEL_15;
      }
    }

LABEL_20:
    sub_1B0398EFC(v21, &qword_1EB6E6368, &qword_1B0EE5CD8);
    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1B03C7450(v21, v11, type metadata accessor for ConnectionStatus);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0CEAD60(v11, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_20;
  }

  sub_1B0CEB134(v23, v7, type metadata accessor for ConnectionStatus.Error);
  v27 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v7);
  sub_1B0CEAD60(v7, type metadata accessor for ConnectionStatus.Error);
  sub_1B0CEAD60(v11, type metadata accessor for ConnectionStatus.Error);
  sub_1B0CEAD60(v21, type metadata accessor for ConnectionStatus);
  return v27;
}

uint64_t sub_1B0CEAD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0CEADC4()
{
  result = qword_1EB6E6350;
  if (!qword_1EB6E6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6350);
  }

  return result;
}

unint64_t sub_1B0CEAE1C()
{
  result = qword_1EB6E6358;
  if (!qword_1EB6E6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6360, &qword_1B0EE5B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6358);
  }

  return result;
}

uint64_t sub_1B0CEAE80()
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0CEAEEC()
{
  sub_1B0CEAF70();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0CEAF70()
{
  if (!qword_1EB6DCAE0)
  {
    type metadata accessor for ConnectionStatus.Error.Details(255);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCAE0);
    }
  }
}

void sub_1B0CEAFD8()
{
  sub_1B0E441D8();
  if (v0 <= 0x3F)
  {
    sub_1B0CEB074();
    if (v1 <= 0x3F)
    {
      sub_1B0CEB0D4();
      if (v2 <= 0x3F)
      {
        sub_1B0CEB104();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0CEB074()
{
  if (!qword_1EB6DB6D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DB6D8);
    }
  }
}

uint64_t sub_1B0CEB0D4()
{
  result = qword_1EB6DB6C0;
  if (!qword_1EB6DB6C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB6DB6C0);
  }

  return result;
}

uint64_t sub_1B0CEB104()
{
  result = qword_1EB6DB6D0;
  if (!qword_1EB6DB6D0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB6DB6D0);
  }

  return result;
}

uint64_t sub_1B0CEB134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SyncRequest.mailboxes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncRequest.hash(into:)(__int128 *a1, char a2, uint64_t a3)
{
  v5 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v5 = a2 & 1;
  }

  MEMORY[0x1B2728D70](v5);
  sub_1B0E46C68();
  if (a3)
  {
    sub_1B0CCEACC(a1, a3);
  }

  return sub_1B0E46C68();
}

uint64_t SyncRequest.hashValue.getter(char a1, uint64_t a2)
{
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v5, a1, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB380()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v5, v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB3F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1B0E46C28();
  SyncRequest.hash(into:)(v5, v3, v1);
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.ID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.Kind.BackFillPurpose.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t SyncRequest.Kind.hash(into:)(uint64_t a1, char a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v2 = a2 & 1;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t SyncRequest.Kind.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  v2 = a1 - 2;
  if ((a1 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v2 = a1 & 1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB66C()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v2 = v1 & 1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEB6D0()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v2 = v1 & 1;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0CEB718()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1B2728D70](3);
    v2 = v1 & 1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0CEB788(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t SyncRequest.Kind.description.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x6369646F69726570;
    case 3:
      return 1752397168;
    case 4:
      return 0x74696E4972657375;
  }

  BYTE8(v3) = 0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001FLL, 0x80000001B0F2F240);
  *&v3 = a1 & 1;
  sub_1B0E46508();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return *(&v3 + 1);
}

uint64_t Set<>.makeNonEmpty()(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    return sub_1B0CEBA30(&unk_1F2726B60);
  }
}

void Set<>.formNonEmpty()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    v2 = sub_1B0CEBA30(&unk_1F2726B88);

    v1 = v2;
  }

  *v0 = v1;
}

uint64_t _s16IMAP2Persistence11SyncRequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, uint64_t a2, int a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  switch(a1)
  {
    case 2u:
      if (a4 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a4 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a4 != 4)
      {
        return 0;
      }

      break;
    default:
      if (a4 - 2 < 3 || ((a4 ^ a1) & 1) != 0)
      {
        return 0;
      }

      break;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v6 = a6;
    v7 = a3;
    v8 = sub_1B03DDD84(a2, a5);
    a3 = v7;
    a6 = v6;
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    return (a3 ^ a6 ^ 1) & 1;
  }

  if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1B0CEBA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4320, &unk_1B0EE5FB0);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1B0CEBB70()
{
  result = qword_1EB6E6378;
  if (!qword_1EB6E6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6378);
  }

  return result;
}

unint64_t sub_1B0CEBBC4()
{
  result = qword_1EB6DCCA8;
  if (!qword_1EB6DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCA8);
  }

  return result;
}

unint64_t sub_1B0CEBC1C()
{
  result = qword_1EB6E6380;
  if (!qword_1EB6E6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6380);
  }

  return result;
}

unint64_t sub_1B0CEBC74()
{
  result = qword_1EB6DCCA0;
  if (!qword_1EB6DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCA0);
  }

  return result;
}

unint64_t sub_1B0CEBCCC()
{
  result = qword_1EB6E6388;
  if (!qword_1EB6E6388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4BA8, &qword_1B0EC9118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6388);
  }

  return result;
}

uint64_t sub_1B0CEBD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1B0CEBD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequest.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequest.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

double (*UIDValidityWith.value.modify(uint64_t a1, uint64_t a2))(void)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1B0CEC044(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static UIDValidityWith<A>.__derived_struct_equals(_:_:)(a1, a2);
}

uint64_t sub_1B0CEC050(uint64_t a1)
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

BOOL static WindowOfInterestSize.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t WindowOfInterestSize.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v3);
}

uint64_t WindowOfInterestSize.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v4 = a1;
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEC198()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v3 = v1;
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEC1F8()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0CEC240()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t WindowOfInterestSize.lowestSequenceNumber(messageCount:)(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v3 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if ((v5 - 0x100000000) < 0xFFFFFFFF00000001)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t WindowOfInterestSize.limit(serverNextUID:windowOfInterest:)(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  if (BYTE4(a1) & 1 | (a3 | a5) & 1)
  {
    return 0;
  }

  v6 = ~HIDWORD(a2) + a1;
  result = a4 - v6;
  if (__OFSUB__(a4, v6))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0CEC31C()
{
  result = qword_1EB6E6390;
  if (!qword_1EB6E6390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6390);
  }

  return result;
}

uint64_t sub_1B0CEC380(char a1, char a2)
{
  if (a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B0E46A78();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B0CEC3F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v13 = 0x74736978456E6F6ELL;
      v12 = 0xEB00000000746E65;
    }

    v14 = 0x64656B72616DLL;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x7463656C65536F6ELL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x65746F6D6572;
    v5 = 0x646C696843736168;
    v6 = 0xEB000000006E6572;
    if (a1 != 7)
    {
      v5 = 0x6968436F4E736168;
      v6 = 0xED00006E6572646CLL;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x697265666E496F6ELL;
    v8 = 0xEB0000000073726FLL;
    if (a1 != 4)
    {
      v7 = 0x6269726373627573;
      v8 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x64656B72616DLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7463656C65536F6ELL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64656B72616D6E75)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x74736978456E6F6ELL;
    v16 = 7630437;
    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v17 = 0xEA00000000006465;
      if (v9 != 0x6269726373627573)
      {
LABEL_51:
        v18 = sub_1B0E46A78();
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v15 = 0x697265666E496F6ELL;
    v16 = 7565935;
LABEL_44:
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      v17 = 0xED00006E6572646CLL;
      if (v9 != 0x6968436F4E736168)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x646C696843736168;
    v16 = 7234930;
    goto LABEL_44;
  }

  v17 = 0xE600000000000000;
  if (v9 != 0x65746F6D6572)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_1B0CEC6D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953391987;
  if (a1 != 5)
  {
    v5 = 0x6873617274;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x64656767616C66;
  if (a1 != 3)
  {
    v7 = 1802401130;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65766968637261;
  if (a1 != 1)
  {
    v9 = 0x737466617264;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x65766968637261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617264)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7105633)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953391987)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6873617274)
      {
LABEL_39:
        v13 = sub_1B0E46A78();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64656767616C66)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1802401130)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t WindowOfInterestSizes.MailboxType.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t WindowOfInterestSizes.defaultValue.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t static WindowOfInterestSizes.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (sub_1B0CE526C(a1, a4))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t WindowOfInterestSizes.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B0CECE08(a1, a2);
  if (a4)
  {
    a3 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](a3);
}

uint64_t WindowOfInterestSizes.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  sub_1B0CECE08(v8, a1);
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v6 = a2;
  }

  MEMORY[0x1B2728D70](v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECAD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0CECE08(v6, v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](1);
    v4 = v2;
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECB44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0CECE08(a1, v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v3);
}

uint64_t sub_1B0CECB9C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0CECE08(v5, v2);
  if (v3)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CECC10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1B0CE526C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
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

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowOfInterestSizes.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return a3;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  if (v7 | (v7 << 32)) == (*(v8 + 2) | (*(v8 + 2) << 32)) && (sub_1B04520BC(v4, *v8))
  {
    v9 = 1;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 3)
  {
    if (v6 <= 1 && v6)
    {

      goto LABEL_18;
    }

LABEL_14:
    v10 = sub_1B0E46A78();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v9 = 2;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 5 || v6 == 6)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = 0;
  if (!*(a2 + 16))
  {
    return a3;
  }

LABEL_19:
  v11 = sub_1B0CBF490(v9);
  if (v12)
  {
    v13 = *(a2 + 56) + 16 * v11;
    a3 = *v13;
    v14 = *(v13 + 8);
  }

  return a3;
}

uint64_t sub_1B0CECE08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(a2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v19 = *(v3 + 32);
    v20 = *(v3 + 48);
    v21 = *(v3 + 64);
    v17 = *v3;
    v18 = *(v3 + 16);
    MEMORY[0x1B2728D70](v13);
    if (v16)
    {
      v15 = 0;
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    v9 &= v9 - 1;
    MEMORY[0x1B2728D70](v15);
    result = sub_1B0E46CB8();
    v4 ^= result;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return MEMORY[0x1B2728D70](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CECF40()
{
  result = qword_1EB6E6398;
  if (!qword_1EB6E6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6398);
  }

  return result;
}

unint64_t sub_1B0CECF98()
{
  result = qword_1EB6E63A0;
  if (!qword_1EB6E63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63A0);
  }

  return result;
}

void *ClientCommand.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v134 - v7;
  v9 = type metadata accessor for SearchReturnOption();
  v135 = *(v9 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v134 - v14;
  v16 = sub_1B0E43108();
  v134 = *(v16 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v134 - v25;
  v27 = type metadata accessor for ClientCommand(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CF2250(v2, v30, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v30;
      v89 = *(v30 + 1);
      v90 = *(v30 + 2);
      v91 = *(v30 + 3);
      MEMORY[0x1B2728D70](4);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    case 2u:
      v68 = *v30;
      v69 = v137;
      MEMORY[0x1B2728D70](5);
      sub_1B0CEFE18(v69, v68);

    case 3u:
      v79 = *v30;
      v80 = *(v30 + 2);
      v81 = *(v30 + 2);
      v82 = v137;
      MEMORY[0x1B2728D70](6);
      MEMORY[0x1B2728D70](v80 | (v80 << 32));

      sub_1B0CEFEC8(v82, v81);

    case 4u:
      v56 = *v30;
      v57 = *(v30 + 2);
      v58 = 7;
      goto LABEL_40;
    case 5u:
      v101 = *v30;
      v57 = *(v30 + 2);
      v58 = 8;
      goto LABEL_40;
    case 6u:
      v105 = *v30;
      v57 = *(v30 + 2);
      v58 = 9;
LABEL_40:
      MEMORY[0x1B2728D70](v58);
      MEMORY[0x1B2728D70](v57 | (v57 << 32));

    case 7u:
      v83 = *v30;
      v84 = *(v30 + 2);
      v85 = *(v30 + 2);
      v86 = *(v30 + 6);
      MEMORY[0x1B2728D70](10);
      MEMORY[0x1B2728D70](v84 | (v84 << 32));

      MEMORY[0x1B2728D70](v86 | (v86 << 32));

    case 8u:
      v117 = *v30;
      v118 = *(v30 + 2);
      v119 = *(v30 + 2);
      v120 = *(v30 + 6);
      v121 = *(v30 + 4);
      v122 = v137;
      MEMORY[0x1B2728D70](11);
      sub_1B0E46C68();
      if (v117)
      {
        MEMORY[0x1B2728D70](v118 | (v118 << 32));
      }

      sub_1B0E46C68();
      if (v119)
      {
        MEMORY[0x1B2728D70](v120 | (v120 << 32));
      }

      MEMORY[0x1B2728D70](*(v121 + 16));
      v129 = *(v121 + 16);
      if (v129)
      {
        v130 = 32;
        do
        {
          v131 = *(v121 + v130);
          v132 = *(v121 + v130 + 16);
          v133 = *(v121 + v130 + 48);
          *&v140[16] = *(v121 + v130 + 32);
          v141 = v133;
          v139 = v131;
          *v140 = v132;
          sub_1B0CF22B8(&v139, v138);
          ReturnOption.hash(into:)(v122);
          sub_1B0CF2314(&v139);
          v130 += 64;
          --v129;
        }

        while (v129);
      }

    case 9u:
      v64 = *v30;
      v65 = *(v30 + 2);
      v66 = *(v30 + 2);
      v67 = v137;
      MEMORY[0x1B2728D70](12);
      MEMORY[0x1B2728D70](v65 | (v65 << 32));

      sub_1B0CEFC84(v67, v66);

    case 0xAu:
      v108 = *v30;
      v109 = *(v30 + 2);
      v110 = *(v30 + 2);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v112 = *(v111 + 64);
      v113 = &v30[*(v111 + 80)];
      v114 = *v113;
      v135 = v113[1];
      v136 = v114;
      sub_1B03C60A4(&v30[v112], v26, &unk_1EB6E2990, &qword_1B0E9B060);
      v115 = v137;
      MEMORY[0x1B2728D70](13);
      MEMORY[0x1B2728D70](v109 | (v109 << 32));

      sub_1B0B0ADF0(v115, v110);

      sub_1B03B5C80(v26, v23, &unk_1EB6E2990, &qword_1B0E9B060);
      v116 = v134;
      if ((*(v134 + 48))(v23, 1, v16) == 1)
      {
        sub_1B0E46C68();
      }

      else
      {
        (*(v116 + 32))(v19, v23, v16);
        sub_1B0E46C68();
        sub_1B0CF2A4C(&qword_1EB6E63B8, MEMORY[0x1E6969530]);
        sub_1B0E447C8();
        (*(v116 + 8))(v19, v16);
      }

      v128 = v135;
      v127 = v136;
      sub_1B0E42F48();
      sub_1B0391D50(v127, v128);
      return sub_1B0398EFC(v26, &unk_1EB6E2990, &qword_1B0E9B060);
    case 0xBu:
      v54 = *v30;
      v55 = 18;
      goto LABEL_38;
    case 0xCu:
      v49 = *v30;
      v59 = *(v30 + 1);
      v60 = v137;
      MEMORY[0x1B2728D70](19);
      SearchKey.hash(into:)(v60, v49);
      MEMORY[0x1B2728D70](*(v59 + 16));
      v61 = *(v59 + 16);
      if (v61)
      {
        v62 = v59 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
        v63 = *(v135 + 72);
        do
        {
          sub_1B0CF2250(v62, v15, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)();
          sub_1B0CF2368(v15, type metadata accessor for SearchReturnOption);
          v62 += v63;
          --v61;
        }

        while (v61);
      }

      goto LABEL_18;
    case 0xDu:
      v54 = *v30;
      v55 = 20;
LABEL_38:
      v104 = v137;
      MEMORY[0x1B2728D70](v55);
      SearchKey.hash(into:)(v104, v54);
      return sub_1B0B239C8(v54);
    case 0xEu:
      v49 = *v30;
      v48 = *(v30 + 1);
      v50 = v137;
      MEMORY[0x1B2728D70](21);
      SearchKey.hash(into:)(v50, v49);
      MEMORY[0x1B2728D70](*(v48 + 16));
      v51 = *(v48 + 16);
      if (v51)
      {
        v52 = v48 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
        v53 = *(v135 + 72);
        do
        {
          sub_1B0CF2250(v52, v12, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)();
          sub_1B0CF2368(v12, type metadata accessor for SearchReturnOption);
          v52 += v53;
          --v51;
        }

        while (v51);
      }

LABEL_18:
      sub_1B0B239C8(v49);

    case 0xFu:
      v70 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48)];
      v71 = *v70;
      v72 = *(v70 + 1);
      v73 = v70[16];
      sub_1B03C60A4(v30, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v74 = v137;
      MEMORY[0x1B2728D70](22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      MEMORY[0x1B2728D70](*(v71 + 16));
      v75 = *(v71 + 16);
      if (v75)
      {
        v76 = (v71 + 32);
        do
        {
          v77 = *v76;
          v78 = v76[1];
          *&v140[13] = *(v76 + 29);
          v139 = v77;
          *v140 = v78;
          sub_1B0CF21A0(&v139, v138);
          FetchAttribute.hash(into:)(v74);
          sub_1B0CF21FC(&v139);
          v76 = (v76 + 40);
          --v75;
        }

        while (v75);
      }

      sub_1B0E46C68();
      if (!v73)
      {
        MEMORY[0x1B2728DB0](v72);
      }

      return sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x10u:
      v40 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      v41 = *v40;
      v42 = v40[1];
      v43 = *(v40 + 1);
      v44 = v136;
      sub_1B03C60A4(v30, v136, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v45 = v137;
      MEMORY[0x1B2728D70](23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      if (v42)
      {
        v46 = 256;
      }

      else
      {
        v46 = 0;
      }

      StoreFlags.hash(into:)(v45, v46 | v41, v43);

      v47 = v44;
      return sub_1B0398EFC(v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x11u:
      v92 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v93 = *v92;
      v94 = *(v92 + 2);
      v95 = v136;
      sub_1B03C60A4(v30, v136, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v96 = 24;
      goto LABEL_43;
    case 0x12u:
      v106 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v107 = *v106;
      v94 = *(v106 + 2);
      v95 = v136;
      sub_1B03C60A4(v30, v136, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v96 = 25;
LABEL_43:
      MEMORY[0x1B2728D70](v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      MEMORY[0x1B2728D70](v94 | (v94 << 32));

      v47 = v95;
      return sub_1B0398EFC(v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x13u:
      v124 = *v30;
      v123 = *(v30 + 1);
      v125 = *(v30 + 2);
      v126 = v30[24];
      MEMORY[0x1B2728D70](26);
      MEMORY[0x1B2728D70](v124);
      if (v126 == 1)
      {
        goto LABEL_51;
      }

      sub_1B0E46C68();
      MEMORY[0x1B2728D70](v123);
      v39 = v125;
LABEL_56:
      result = MEMORY[0x1B2728D70](v39);
      break;
    case 0x14u:
      v97 = *v30;
      v98 = *(v30 + 1);
      v99 = *(v30 + 2);
      v100 = v137;
      MEMORY[0x1B2728D70](27);
      sub_1B0CF00E0(v100, v98, v99);

      goto LABEL_34;
    case 0x15u:
      v102 = *(v30 + 1);
      v139 = *v30;
      *v140 = v102;
      v103 = *(v30 + 3);
      *&v140[16] = *(v30 + 2);
      v141 = v103;
      MEMORY[0x1B2728D70](28);
      PushRegistrationInfo.hash(into:)();
      return sub_1B0A1C37C(&v139);
    case 0x16u:
      v39 = 0;
      goto LABEL_56;
    case 0x17u:
      v39 = 1;
      goto LABEL_56;
    case 0x18u:
      v39 = 2;
      goto LABEL_56;
    case 0x19u:
      v39 = 14;
      goto LABEL_56;
    case 0x1Au:
      v39 = 15;
      goto LABEL_56;
    case 0x1Bu:
      v39 = 16;
      goto LABEL_56;
    case 0x1Cu:
      v39 = 17;
      goto LABEL_56;
    case 0x1Du:
      v39 = 29;
      goto LABEL_56;
    default:
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 2);
      v34 = *(v30 + 3);
      v35 = v30[38];
      v36 = *(v30 + 18);
      v37 = *(v30 + 8);
      v38 = v137;
      MEMORY[0x1B2728D70](3);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (v33)
      {
        sub_1B0E46C68();
        InitialResponse.hash(into:)(v38, v33, v34, (v37 | ((v36 | (v35 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
LABEL_34:
      }

      else
      {
LABEL_51:
        result = sub_1B0E46C68();
      }

      break;
  }

  return result;
}

uint64_t ClientCommand.hashValue.getter()
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDCE4()
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDD28()
{
  sub_1B0E46C28();
  ClientCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.FetchData.items.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ClientCommand.FetchData.changedSince.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ClientCommand.FetchData.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a2 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = v9[1];
      v13 = *v9;
      v14[0] = v10;
      *(v14 + 13) = *(v9 + 29);
      sub_1B0CF21A0(&v13, v12);
      FetchAttribute.hash(into:)(a1);
      sub_1B0CF21FC(&v13);
      v9 = (v9 + 40);
      --v8;
    }

    while (v8);
  }

  if (a4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](a3);
}

uint64_t ClientCommand.FetchData.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v7, a1, a2, a3 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDF28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CEDF90()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t static ClientCommand.uidFetch(messages:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
  sub_1B03B5C80(a1, a3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v6 = a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t ClientCommand.SelectOption.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.kind.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0CF2250(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 4;
      break;
    case 2:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 5;
      break;
    case 3:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 6;
      break;
    case 4:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 7;
      break;
    case 5:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 8;
      break;
    case 6:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 9;
      break;
    case 7:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 10;
      break;
    case 8:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 11;
      break;
    case 9:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 12;
      break;
    case 10:
      v8 = *v4;

      v9 = v4[2];

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v11 = *(v10 + 64);
      sub_1B0391D50(*(v4 + *(v10 + 80)), *(v4 + *(v10 + 80) + 8));
      sub_1B0398EFC(v4 + v11, &unk_1EB6E2990, &qword_1B0E9B060);
      result = 13;
      break;
    case 11:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 18;
      break;
    case 12:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 19;
      break;
    case 13:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 20;
      break;
    case 14:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 21;
      break;
    case 15:
      v7 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 22;
      break;
    case 16:
      v12 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 8);

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 24;
      break;
    case 17:
      v13 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 25;
      break;
    case 18:
      v14 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 23;
      break;
    case 19:
      result = 29;
      break;
    case 20:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 26;
      break;
    case 21:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 27;
      break;
    case 22:
      return result;
    case 23:
      result = 1;
      break;
    case 24:
      result = 2;
      break;
    case 25:
      result = 14;
      break;
    case 26:
      result = 15;
      break;
    case 27:
      result = 16;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      result = 28;
      break;
    default:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 3;
      break;
  }

  return result;
}

uint64_t ClientCommand.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t ClientCommand.logIdentifier.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0CF2250(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x494C494241504143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x4E49474F4CLL;
      break;
    case 2:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x454C42414E45;
      break;
    case 3:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x5443454C4553;
      break;
    case 4:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x454E494D415845;
      break;
    case 5:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x455441455243;
      break;
    case 6:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x4554454C4544;
      break;
    case 7:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x454D414E4552;
      break;
    case 8:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 1414744396;
      break;
    case 9:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x535554415453;
      break;
    case 10:
      v8 = *v4;

      v9 = v4[2];

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v11 = *(v10 + 64);
      sub_1B0391D50(*(v4 + *(v10 + 80)), *(v4 + *(v10 + 80) + 8));
      sub_1B0398EFC(v4 + v11, &unk_1EB6E2990, &qword_1B0E9B060);
      result = 0x444E45505041;
      break;
    case 11:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x5241455320444955;
      break;
    case 12:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0xD000000000000015;
      break;
    case 13:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x484352414553;
      break;
    case 14:
    case 21:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0xD000000000000011;
      break;
    case 15:
      v7 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x4354454620444955;
      break;
    case 16:
      v12 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 8);

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x524F545320444955;
      break;
    case 17:
      v13 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x59504F4320444955;
      break;
    case 18:
      v14 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48));

      sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = 0x45564F4D20444955;
      break;
    case 19:
      result = 0x4843544142444955;
      break;
    case 20:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 17481;
      break;
    case 22:
      return result;
    case 23:
      result = 1347374926;
      break;
    case 24:
      result = 0x534C545452415453;
      break;
    case 25:
      result = 0x43415053454D414ELL;
      break;
    case 26:
      result = 0x4B43454843;
      break;
    case 27:
      result = 0x45534F4C43;
      break;
    case 28:
      result = 0x45474E55505845;
      break;
    case 29:
      result = 0x53534552504D4F43;
      break;
    default:
      sub_1B0CF2368(v4, type metadata accessor for ClientCommand);
      result = 0x49544E4548545541;
      break;
  }

  return result;
}

uint64_t LoggableCommand.tag.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = HIDWORD(result);
  return result;
}

uint64_t LoggableCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1B0CF23E8(a1, v3);
}

uint64_t LoggableCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = HIDWORD(a1);
  v4 = a3 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1B0A90A00(a2, v4);
}

Swift::String __swiftcall LoggableCommand.makeDescriptionWithoutPII()()
{
  v1 = sub_1B0E443C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v46 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - v6;
  v8 = type metadata accessor for ClientCommand.Encoded();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0 + *(type metadata accessor for LoggableCommand(0) + 20);
  v14 = *(v0 + 4);
  v47[16] = *v0;
  v48 = v14;
  v49 = v13;
  sub_1B0CFA5E8(sub_1B0CF244C, v47, 0x10000u, v12);
  if (*(*(v12 + *(v9 + 28)) + 16))
  {
    v45 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E63C0, &qword_1B0EE61E8);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v44 = *(v2 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B0EC1E70;
    v17 = *(v2 + 16);
    v42 = v1;
    v17(v16 + v15, v12, v1);
    v50 = v16;
    v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CEF458(v18, sub_1B0D05474, MEMORY[0x1E69E7FD0]);
    v19 = v50;
    v20 = *(v50 + 16);
    if (v20)
    {
      v43 = v2 + 16;
      v41 = v12;
      v50 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v20, 0);
      v21 = v50;
      v40[1] = v19;
      v22 = v19 + v15;
      v23 = (v2 + 8);
      v24 = v42;
      do
      {
        v25 = v45;
        v17(v45, v22, v24);
        v26 = v46;
        v17(v46, v25, v24);
        v27 = sub_1B0CF2460(v26);
        v29 = v28;
        (*v23)(v25, v24);
        v50 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1B041D32C((v30 > 1), v31 + 1, 1);
          v24 = v42;
          v21 = v50;
        }

        *(v21 + 16) = v31 + 1;
        v32 = v21 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v22 += v44;
        --v20;
      }

      while (v20);

      v12 = v41;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v50 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v33 = sub_1B0E448E8();
    v35 = v36;
  }

  else
  {
    (*(v2 + 16))(v7, v12, v1);
    v33 = sub_1B0CF2460(v7);
    v35 = v34;
  }

  sub_1B0CF2368(v12, type metadata accessor for ClientCommand.Encoded);
  v37 = v33;
  v38 = v35;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

double variable initialization expression of MessageData.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1B0ACEC5C(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageData.envelope@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of MessageData.BodySection.data@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageData.BodyData();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of ServerResponseTranscoder.outputBuffer()
{
  v0 = *sub_1B0E435B8();
}

uint64_t sub_1B0CEF458(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1B0CEF59C(char *a1, int64_t a2, char a3)
{
  result = sub_1B0CEF6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0CEF5BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0CEF7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0CEF5DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6430, &qword_1B0EE6438, type metadata accessor for SelectParameter);
  *v3 = result;
  return result;
}

size_t sub_1B0CEF620(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6420, &unk_1B0EE7320, type metadata accessor for CommandStreamPart);
  *v3 = result;
  return result;
}

size_t sub_1B0CEF664(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0CEF99C(a1, a2, a3, *v3, &qword_1EB6E6428, &qword_1B0EE6430, type metadata accessor for ParameterValue);
  *v3 = result;
  return result;
}

char *sub_1B0CEF6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6448, &unk_1B0EF9F70);
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

size_t sub_1B0CEF7AC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6438, &qword_1B0EFA5F0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1B0CEF99C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1B0CEFB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
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

uint64_t sub_1B0CEFC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0CEFE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v9 != 1)
      {
        MEMORY[0x1B2728DB0](v8 >> 14);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0CEFEC8(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  result = sub_1B0E46CB8();
  v4 = 0;
  v5 = 0;
  v8 = *(a2 + 56);
  v7 = a2 + 56;
  v6 = v8;
  v9 = 1 << *(v7 - 24);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_4:
    v11 &= v11 - 1;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    result = sub_1B0E46CB8();
    v4 ^= result;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return MEMORY[0x1B2728D70](v4);
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CEFFCC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v11 = result == a4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = result + 32;
    v13 = (a4 + 32);
    while (1)
    {
      v14 = *(v12 + 16);
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 13) = *(v12 + 29);
      if (!v6)
      {
        break;
      }

      v15 = v13[1];
      v20 = *v13;
      v21[0] = v15;
      *(v21 + 13) = *(v13 + 29);
      sub_1B0CF21A0(&v18, v17);
      sub_1B0CF21A0(&v20, v17);
      v16 = static FetchAttribute.__derived_enum_equals(_:_:)(&v18, &v20);
      sub_1B0CF21FC(&v20);
      result = sub_1B0CF21FC(&v18);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v13 = (v13 + 40);
      v12 += 40;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  if (((a5 | a2) & 0x8000000000000000) == 0)
  {
    return a5 == a2;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1B0CF00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v8 - 1);
      v12 = *v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v12)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      ++v7;

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }

  return result;
}

uint64_t _s13IMAP2Protocol13ClientCommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, char *a2)
{
  v308 = a1;
  v309 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v289 = &v279 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v288 = &v279 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v287 = &v279 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v286 = &v279 - v10;
  v285 = sub_1B0E43108();
  v283 = *(v285 - 8);
  v11 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v285);
  v280 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v13 = *(*(v282 - 8) + 64);
  MEMORY[0x1EEE9AC00](v282);
  v284 = &v279 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v281 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v290 = &v279 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v306 = &v279 - v21;
  v307 = type metadata accessor for ClientCommand(0);
  v22 = *(*(v307 - 8) + 64);
  MEMORY[0x1EEE9AC00](v307);
  v301 = (&v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v299 = (&v279 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v300 = &v279 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v305 = &v279 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v304 = &v279 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v303 = &v279 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v302 = &v279 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v297 = (&v279 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v296 = (&v279 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v295 = (&v279 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v294 = (&v279 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v298 = &v279 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v293 = &v279 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v279 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v292 = &v279 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v291 = &v279 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v279 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v279 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v279 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = (&v279 - v65);
  MEMORY[0x1EEE9AC00](v67);
  v69 = (&v279 - v68);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v279 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6450, &qword_1B0EE6440);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v76 = &v279 - v75;
  v78 = &v279 + *(v77 + 56) - v75;
  sub_1B0CF2250(v308, &v279 - v75, type metadata accessor for ClientCommand);
  v79 = v309;
  v309 = v78;
  sub_1B0CF2250(v79, v78, type metadata accessor for ClientCommand);
  v310 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = v310;
      sub_1B0CF2250(v310, v69, type metadata accessor for ClientCommand);
      v161 = *v69;
      v160 = v69[1];
      v163 = v69[2];
      v162 = v69[3];
      v164 = v309;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_124;
      }

      v165 = *v164;
      v166 = v164[1];
      v168 = v164[2];
      v167 = v164[3];
      if (v161 == v165 && v160 == v166)
      {
      }

      else
      {
        v262 = sub_1B0E46A78();

        if ((v262 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      if (v163 == v168 && v162 == v167)
      {

        goto LABEL_167;
      }

      v198 = sub_1B0E46A78();

      goto LABEL_81;
    case 2u:
      v88 = v310;
      sub_1B0CF2250(v310, v66, type metadata accessor for ClientCommand);
      v127 = *v66;
      v128 = v309;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_125;
      }

      v124 = sub_1B044DA4C(v127, *v128);
      goto LABEL_34;
    case 3u:
      v88 = v310;
      sub_1B0CF2250(v310, v63, type metadata accessor for ClientCommand);
      v142 = *v63;
      v143 = *(v63 + 2);
      v144 = v309;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_122;
      }

      v145 = *v144;
      v146 = *(v144 + 2);
      v147 = *(v144 + 2);
      if ((*(v63 + 2) | (*(v63 + 2) << 32)) != (v146 | (v146 << 32)))
      {
        goto LABEL_140;
      }

      v148 = sub_1B04520BC(v142, v145);

      if ((v148 & 1) == 0)
      {
        goto LABEL_147;
      }

      v124 = sub_1B0429CE0(v143, v147);
      goto LABEL_34;
    case 4u:
      v88 = v310;
      sub_1B0CF2250(v310, v60, type metadata accessor for ClientCommand);
      v111 = *v60;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_125;
      }

      v113 = *(v60 + 2);
      goto LABEL_78;
    case 5u:
      v88 = v310;
      sub_1B0CF2250(v310, v57, type metadata accessor for ClientCommand);
      v111 = *v57;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_125;
      }

      v113 = *(v57 + 2);
      goto LABEL_78;
    case 6u:
      v88 = v310;
      v197 = v291;
      sub_1B0CF2250(v310, v291, type metadata accessor for ClientCommand);
      v111 = *v197;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_125;
      }

      v113 = *(v197 + 8);
LABEL_78:
      v155 = *v112;
      v158 = v113 | (v113 << 32);
      v159 = *(v112 + 2) | (*(v112 + 2) << 32);
      goto LABEL_79;
    case 7u:
      v88 = v310;
      v149 = v292;
      sub_1B0CF2250(v310, v292, type metadata accessor for ClientCommand);
      v150 = *v149;
      v111 = *(v149 + 16);
      v151 = *(v149 + 24);
      v152 = v309;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_124:

        goto LABEL_125;
      }

      v153 = *(v149 + 8);
      v154 = *v152;
      v155 = *(v152 + 2);
      if ((v153 | (v153 << 32)) != (*(v152 + 2) | (*(v152 + 2) << 32)))
      {

        goto LABEL_147;
      }

      v156 = *(v152 + 6);
      v157 = sub_1B04520BC(v150, *v152);

      if ((v157 & 1) == 0)
      {
        goto LABEL_147;
      }

      v158 = v151 | (v151 << 32);
      v159 = v156 | (v156 << 32);
LABEL_79:
      if (v158 != v159)
      {
        goto LABEL_147;
      }

      v198 = sub_1B04520BC(v111, v155);

LABEL_81:

      if (v198)
      {
        goto LABEL_167;
      }

      goto LABEL_148;
    case 8u:
      v88 = v310;
      sub_1B0CF2250(v310, v50, type metadata accessor for ClientCommand);
      v231 = *v50;
      v232 = *(v50 + 2);
      v233 = *(v50 + 2);
      v234 = *(v50 + 6);
      v235 = *(v50 + 4);
      v236 = v309;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_125;
      }

      v237 = *v236;
      v238 = *(v236 + 2);
      v239 = *(v236 + 6);
      v240 = *(v236 + 4);
      if (v231)
      {
        if (v237)
        {
          if ((v232 | (v232 << 32)) == (*(v309 + 2) | (*(v309 + 2) << 32)))
          {
            v241 = sub_1B04520BC(v231, *v236);

            if (v241)
            {
LABEL_169:
              if (!v233)
              {
                v230 = v310;
                if (v238)
                {

                  goto LABEL_190;
                }

                goto LABEL_193;
              }

              if (v238)
              {
                if ((v234 | (v234 << 32)) == (v239 | (v239 << 32)))
                {
                  v270 = sub_1B04520BC(v233, v238);

                  v230 = v310;
                  if ((v270 & 1) == 0)
                  {

LABEL_190:

                    goto LABEL_200;
                  }

LABEL_193:
                  v102 = sub_1B0CFDC08(v235, v240);

LABEL_203:
                  sub_1B0CF2368(v230, type metadata accessor for ClientCommand);
                  return v102 & 1;
                }

                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

                swift_bridgeObjectRelease_n();
              }

              else
              {
              }

              v230 = v310;
LABEL_200:
              v263 = v230;
LABEL_181:
              sub_1B0CF2368(v263, type metadata accessor for ClientCommand);
              goto LABEL_182;
            }
          }

          else
          {
            v271 = *v236;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
        }

        goto LABEL_180;
      }

      if (v237)
      {
        v268 = *(v236 + 4);

        goto LABEL_180;
      }

      goto LABEL_169;
    case 9u:
      v88 = v310;
      v115 = v293;
      sub_1B0CF2250(v310, v293, type metadata accessor for ClientCommand);
      v116 = *v115;
      v117 = *(v115 + 16);
      v118 = v309;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_122:

LABEL_125:

LABEL_126:
        sub_1B0398EFC(v88, &qword_1EB6E6450, &qword_1B0EE6440);
LABEL_182:
        v102 = 0;
        return v102 & 1;
      }

      v119 = *(v115 + 8);
      v120 = *v118;
      v121 = *(v118 + 2);
      v122 = *(v118 + 2);
      if ((v119 | (v119 << 32)) != (v121 | (v121 << 32)))
      {
LABEL_140:

        goto LABEL_147;
      }

      v123 = sub_1B04520BC(v116, v120);

      if ((v123 & 1) == 0)
      {
LABEL_147:

        goto LABEL_148;
      }

      v124 = sub_1B0CFDCE8(v117, v122);
LABEL_34:
      v102 = v124;

LABEL_35:

LABEL_74:
      sub_1B0CF2368(v88, type metadata accessor for ClientCommand);
      return v102 & 1;
    case 0xAu:
      v88 = v310;
      v204 = v298;
      sub_1B0CF2250(v310, v298, type metadata accessor for ClientCommand);
      v205 = *v204;
      v206 = *(v204 + 16);
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v208 = *(v207 + 64);
      v209 = *(v207 + 80);
      v211 = *(v204 + v209);
      v210 = *(v204 + v209 + 8);
      v212 = v309;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        sub_1B0391D50(v211, v210);
        sub_1B0398EFC(v204 + v208, &unk_1EB6E2990, &qword_1B0E9B060);
        goto LABEL_126;
      }

      v304 = v206;
      v307 = v211;
      v308 = v210;
      v213 = *(v204 + 8);
      v305 = *v212;
      v214 = *(v212 + 2);
      v215 = *(v212 + 2);
      v217 = *&v212[v209];
      v216 = *&v212[v209 + 8];
      sub_1B03C60A4(v204 + v208, v306, &unk_1EB6E2990, &qword_1B0E9B060);
      v218 = &v212[v208];
      v219 = v290;
      sub_1B03C60A4(v218, v290, &unk_1EB6E2990, &qword_1B0E9B060);
      if ((v213 | (v213 << 32)) == (v214 | (v214 << 32)))
      {
        v220 = v217;
        v221 = v216;
        v222 = sub_1B04520BC(v205, v305);

        if (v222)
        {
          v223 = sub_1B0AFE1EC(v304, v215);

          if (v223)
          {
            v224 = *(v282 + 48);
            v225 = v284;
            sub_1B03B5C80(v306, v284, &unk_1EB6E2990, &qword_1B0E9B060);
            sub_1B03B5C80(v219, v225 + v224, &unk_1EB6E2990, &qword_1B0E9B060);
            v226 = v283;
            v227 = *(v283 + 48);
            v228 = v285;
            v229 = v227(v225, 1, v285);
            v230 = v310;
            if (v229 == 1)
            {
              if (v227(v225 + v224, 1, v228) == 1)
              {
                sub_1B0398EFC(v225, &unk_1EB6E2990, &qword_1B0E9B060);
LABEL_202:
                v278 = v307;
                v277 = v308;
                v102 = sub_1B0AB8858(v307, v308, v220, v221);
                sub_1B0391D50(v220, v221);
                sub_1B0391D50(v278, v277);
                sub_1B0398EFC(v219, &unk_1EB6E2990, &qword_1B0E9B060);
                sub_1B0398EFC(v306, &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_203;
              }

              sub_1B0391D50(v220, v221);
              sub_1B0391D50(v307, v308);
            }

            else
            {
              v272 = v281;
              sub_1B03B5C80(v225, v281, &unk_1EB6E2990, &qword_1B0E9B060);
              if (v227(v225 + v224, 1, v228) != 1)
              {
                v273 = v225 + v224;
                v274 = v280;
                (*(v226 + 32))(v280, v273, v228);
                sub_1B0CF2A4C(&qword_1EB6DECF8, MEMORY[0x1E6969530]);
                v275 = sub_1B0E44A28();
                v276 = *(v226 + 8);
                v276(v274, v228);
                v276(v272, v228);
                sub_1B0398EFC(v225, &unk_1EB6E2990, &qword_1B0E9B060);
                v230 = v310;
                if (v275)
                {
                  goto LABEL_202;
                }

                sub_1B0391D50(v220, v221);
                sub_1B0391D50(v307, v308);
LABEL_199:
                sub_1B0398EFC(v219, &unk_1EB6E2990, &qword_1B0E9B060);
                sub_1B0398EFC(v306, &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_200;
              }

              sub_1B0391D50(v220, v221);
              sub_1B0391D50(v307, v308);
              (*(v226 + 8))(v272, v228);
              v230 = v310;
            }

            sub_1B0398EFC(v225, &qword_1EB6E1720, &qword_1B0E99908);
            goto LABEL_199;
          }
        }

        else
        {
        }

        sub_1B0391D50(v217, v216);
        sub_1B0391D50(v307, v308);
      }

      else
      {

        sub_1B0391D50(v217, v216);
        sub_1B0391D50(v307, v308);
      }

      v259 = &unk_1EB6E2990;
      v260 = &qword_1B0E9B060;
      sub_1B0398EFC(v219, &unk_1EB6E2990, &qword_1B0E9B060);
      v261 = v306;
      goto LABEL_163;
    case 0xBu:
      v88 = v310;
      v109 = v294;
      sub_1B0CF2250(v310, v294, type metadata accessor for ClientCommand);
      v104 = *v109;
      v110 = v309;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    case 0xCu:
      v88 = v310;
      v114 = v295;
      sub_1B0CF2250(v310, v295, type metadata accessor for ClientCommand);
      v104 = *v114;
      v105 = v114[1];
      v106 = v309;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    case 0xDu:
      v88 = v310;
      v195 = v296;
      sub_1B0CF2250(v310, v296, type metadata accessor for ClientCommand);
      v104 = *v195;
      v110 = v309;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_75;
      }

LABEL_73:
      v196 = *v110;
      v102 = static SearchKey.__derived_enum_equals(_:_:)(v104, *v110);
      sub_1B0B239C8(v196);
      sub_1B0B239C8(v104);
      goto LABEL_74;
    case 0xEu:
      v88 = v310;
      v103 = v297;
      sub_1B0CF2250(v310, v297, type metadata accessor for ClientCommand);
      v104 = *v103;
      v105 = v103[1];
      v106 = v309;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_23:

LABEL_75:
        sub_1B0B239C8(v104);
        goto LABEL_126;
      }

LABEL_16:
      v108 = *v106;
      v107 = v106[1];
      if (static SearchKey.__derived_enum_equals(_:_:)(v104, *v106))
      {
        v102 = sub_1B0CFE01C(v105, v107);
        sub_1B0B239C8(v108);
        sub_1B0B239C8(v104);

        goto LABEL_35;
      }

      sub_1B0B239C8(v108);
      sub_1B0B239C8(v104);
      goto LABEL_148;
    case 0xFu:
      v88 = v310;
      v90 = v302;
      sub_1B0CF2250(v310, v302, type metadata accessor for ClientCommand);
      v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      v131 = *(v90 + v129);
      v130 = *(v90 + v129 + 8);
      v132 = *(v90 + v129 + 16);
      v133 = v309;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_121;
      }

      v134 = v133 + v129;
      v135 = *(v133 + v129);
      v136 = *(v134 + 8);
      v137 = *(v134 + 16);
      v138 = v133;
      v139 = v286;
      sub_1B03C60A4(v138, v286, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        v258 = v139;
        v259 = &unk_1EB6E1AF0;
        v260 = &unk_1B0E9AF40;
        sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v261 = v258;
LABEL_163:
        sub_1B0398EFC(v261, v259, v260);
        goto LABEL_180;
      }

      sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v140 = sub_1B0CFD500(v131, v135);
      sub_1B0398EFC(v139, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      if ((v140 & 1) == 0)
      {
        goto LABEL_180;
      }

      if (v132)
      {
        if ((v137 & 1) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v137)
        {
          goto LABEL_180;
        }

        if ((v136 | v130) < 0)
        {
          __break(1u);
          return result;
        }

        if (v136 != v130)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_187;
    case 0x10u:
      v88 = v310;
      v90 = v303;
      sub_1B0CF2250(v310, v303, type metadata accessor for ClientCommand);
      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
      v92 = *(v90 + v91);
      v93 = *(v90 + v91 + 1);
      v94 = *(v90 + v91 + 8);
      v95 = v309;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_121:

        sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_126;
      }

      v96 = *(v95 + v91);
      v97 = *(v95 + v91 + 1);
      v98 = *(v95 + v91 + 8);
      v99 = v287;
      sub_1B03C60A4(v95, v287, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v252 = v99;
        goto LABEL_137;
      }

      sub_1B0398EFC(v90, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v93)
      {
        v100 = 256;
      }

      else
      {
        v100 = 0;
      }

      if (v97)
      {
        v101 = 256;
      }

      else
      {
        v101 = 0;
      }

      v102 = static StoreFlags.__derived_struct_equals(_:_:)(v100 | v92, v94, v101 | v96, v98);

      sub_1B0398EFC(v99, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_74;
    case 0x11u:
      v88 = v310;
      v169 = v304;
      sub_1B0CF2250(v310, v304, type metadata accessor for ClientCommand);
      v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
      v171 = *(v169 + v170);
      v172 = *(v169 + v170 + 8);
      v173 = v309;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_89;
      }

      v174 = v173 + v170;
      v175 = *(v173 + v170);
      v176 = *(v174 + 8);
      v177 = v173;
      v178 = &v315 + 8;
      goto LABEL_85;
    case 0x12u:
      v88 = v310;
      v169 = v305;
      sub_1B0CF2250(v310, v305, type metadata accessor for ClientCommand);
      v199 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48);
      v171 = *(v169 + v199);
      v172 = *(v169 + v199 + 8);
      v200 = v309;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_89:

        sub_1B0398EFC(v169, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_126;
      }

      v201 = v200 + v199;
      v175 = *(v200 + v199);
      v176 = *(v201 + 8);
      v177 = v200;
      v178 = &v316;
LABEL_85:
      v202 = *(v178 - 32);
      sub_1B03C60A4(v177, v202, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0)
      {

        sub_1B0398EFC(v169, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v252 = v202;
LABEL_137:
        sub_1B0398EFC(v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_148;
      }

      sub_1B0398EFC(v169, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v172 | (v172 << 32)) != (v176 | (v176 << 32)))
      {

        sub_1B0398EFC(v202, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_148;
      }

      v203 = sub_1B04520BC(v171, v175);

      sub_1B0398EFC(v202, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v203 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x13u:
      v88 = v310;
      v243 = v300;
      sub_1B0CF2250(v310, v300, type metadata accessor for ClientCommand);
      v245 = *(v243 + 8);
      v244 = *(v243 + 16);
      v246 = *(v243 + 24);
      v247 = v309;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_126;
      }

      if (*v243 != *v247)
      {
        goto LABEL_148;
      }

      if (v246)
      {
        if (!v247[24])
        {
          goto LABEL_148;
        }
      }

      else if ((v247[24] & 1) != 0 || v245 != *(v247 + 1) || v244 != *(v247 + 2))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x14u:
      v88 = v310;
      v179 = v299;
      sub_1B0CF2250(v310, v299, type metadata accessor for ClientCommand);
      v180 = *v179;
      v181 = v179[1];
      v182 = v179[2];
      v183 = v309;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        goto LABEL_126;
      }

      v184 = *v183;
      v185 = v183[1];
      v186 = v183[2];
      if ((sub_1B045202C(v181, v185) & 1) == 0)
      {

        goto LABEL_148;
      }

      v187 = sub_1B0C2DAB0(v182, v186);

      if ((v187 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x15u:
      v88 = v310;
      v188 = v301;
      sub_1B0CF2250(v310, v301, type metadata accessor for ClientCommand);
      v189 = v188[1];
      v315 = *v188;
      v316 = v189;
      v190 = v188[3];
      v317 = v188[2];
      v318 = v190;
      v191 = v309;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_1B0A1C37C(&v315);
        goto LABEL_126;
      }

      v192 = v191[1];
      v311 = *v191;
      v312 = v192;
      v193 = v191[3];
      v313 = v191[2];
      v314 = v193;
      if (v315 == v311 && (__PAIR128__(v316, *(&v315 + 1)) == __PAIR128__(v312, *(&v311 + 1)) || (sub_1B0E46A78() & 1) != 0) && (__PAIR128__(v317, *(&v316 + 1)) == __PAIR128__(v313, *(&v312 + 1)) || (sub_1B0E46A78() & 1) != 0) && (__PAIR128__(v318, *(&v317 + 1)) == __PAIR128__(v314, *(&v313 + 1)) || (sub_1B0E46A78() & 1) != 0))
      {
        v194 = _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v318 + 1), *(&v314 + 1));
        sub_1B0A1C37C(&v311);
        sub_1B0A1C37C(&v315);
        if (v194)
        {
LABEL_167:
          v269 = v88;
LABEL_168:
          sub_1B0CF2368(v269, type metadata accessor for ClientCommand);
          v102 = 1;
          return v102 & 1;
        }
      }

      else
      {
        sub_1B0A1C37C(&v311);
        sub_1B0A1C37C(&v315);
      }

LABEL_148:
      v263 = v88;
      goto LABEL_181;
    case 0x16u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (EnumCaseMultiPayload == 22)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x17u:
      v248 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v248 == 23)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x18u:
      v126 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v126 == 24)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x19u:
      v125 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v125 == 25)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Au:
      v251 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v251 == 26)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Bu:
      v89 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v89 == 27)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Cu:
      v249 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v249 == 28)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Du:
      v250 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v250 == 29)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    default:
      sub_1B0CF2250(v310, v72, type metadata accessor for ClientCommand);
      v81 = *v72;
      v80 = *(v72 + 1);
      v83 = *(v72 + 2);
      v82 = *(v72 + 3);
      v84 = v72[38];
      v85 = *(v72 + 18);
      v86 = *(v72 + 8);
      v87 = v309;
      if (swift_getEnumCaseMultiPayload())
      {

        v88 = v310;
        goto LABEL_126;
      }

      v308 = v82;
      v253 = *v87;
      v254 = *(v87 + 1);
      v255 = *(v87 + 2);
      v307 = *(v87 + 3);
      LODWORD(v306) = v87[38];
      v256 = *(v87 + 18);
      v257 = *(v87 + 8);
      if (v81 == v253 && v80 == v254)
      {
      }

      else
      {
        v264 = sub_1B0E46A78();

        if ((v264 & 1) == 0)
        {
          goto LABEL_179;
        }
      }

      if (v83)
      {
        if (v255)
        {
          v265 = v257 | ((v256 | (v306 << 16)) << 32);

          v267 = sub_1B0C2DB54(v266, v308, (v86 | ((v85 | (v84 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v255, v307, v265 & 0xFFFFFFFFFFFFFFLL);

          if (v267)
          {
            goto LABEL_187;
          }

LABEL_180:
          v263 = v310;
          goto LABEL_181;
        }
      }

      else if (!v255)
      {
LABEL_187:
        v269 = v310;
        goto LABEL_168;
      }

LABEL_179:

      goto LABEL_180;
  }
}

uint64_t sub_1B0CF2250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CF2368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CF23E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CF2460(uint64_t a1)
{
  v2 = sub_1B0E441F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44308();
  v20 = 0;
  v21 = 0xE000000000000000;
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  MEMORY[0x1B2726D20](v7);
  v8 = 0;
  v9 = 0;
  v15[2] = xmmword_1B0EE0600;
  v15[1] = xmmword_1B0EE0610;
  v15[0] = xmmword_1B0EE0620;
  while (1)
  {
    v18 = v8;
    v19 = v9;
    if (!v9)
    {
      break;
    }

    if ((v8 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    sub_1B0CB1F34();
    v12 = sub_1B0C14AB0();
    sub_1B0CB1F88(0);
    (v12)(&v16, 0);
LABEL_23:
    v8 = v18;
    v9 = v19;
    v16 = v20;
    v17 = v21;
    sub_1B0E44C58();
    v20 = v16;
    v21 = v17;
  }

  sub_1B0CF2A4C(&qword_1EB6DB990, MEMORY[0x1E69E7F18]);
  sub_1B0E45E38();
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((v16 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v8 = v8 & 0xFFFFFF00 | v16;
  v9 = 8;
LABEL_6:
  sub_1B0CF2A4C(&qword_1EB6DB990, MEMORY[0x1E69E7F18]);
  sub_1B0E45E38();
  if ((v16 & 0x100) != 0)
  {
    v10 = v9;
LABEL_8:
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
    v10 = v9 + 8;
    if ((v9 + 8) <= 0x1Fu)
    {
      sub_1B0E45E38();
      if ((v16 & 0x100) != 0)
      {
        goto LABEL_8;
      }

      v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
      v10 = v9 + 16;
      if ((v9 + 16) <= 0x1Fu)
      {
        sub_1B0E45E38();
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_8;
        }

        v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
        v10 = v9 + 24;
        if ((v9 + 24) <= 0x1Fu)
        {
          sub_1B0E45E38();
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_8;
          }

          v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
          v10 = v9 + 32;
          if (v9 >= 0xE0u)
          {
            sub_1B0E45E38();
            if ((v16 & 0x100) != 0)
            {
              goto LABEL_8;
            }

            v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
            v10 = v9 + 40;
          }
        }
      }
    }
  }

  if ((v8 & 0xC0E0) == 0x80C0)
  {
    if ((v8 & 0x1E) == 0)
    {
      goto LABEL_34;
    }

    v11 = 16;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0F0) == 0x8080E0)
  {
    if ((v8 & 0x200F) == 0 || (v8 & 0x200F) == 0x200D)
    {
      goto LABEL_34;
    }

    v11 = 24;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0C0F8) == 0x808080F0 && (v8 & 0x3007) != 0 && __rev16(v8 & 0x3007) <= 0x400)
  {
    v11 = 32;
LABEL_22:
    v18 = v8 >> v11;
    v19 = v10 - v11;
    goto LABEL_23;
  }

LABEL_34:
  sub_1B0E46D58();
  MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2F370);
LABEL_35:
  v13 = sub_1B0E443C8();
  (*(*(v13 - 8) + 8))(a1, v13);
  (*(v3 + 8))(v6, v2);
  return v20;
}

uint64_t sub_1B0CF2A4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B0CF2A98()
{
  result = qword_1EB6E63D0;
  if (!qword_1EB6E63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63D0);
  }

  return result;
}

unint64_t sub_1B0CF2AF0()
{
  result = qword_1EB6DD168;
  if (!qword_1EB6DD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD168);
  }

  return result;
}

unint64_t sub_1B0CF2B48()
{
  result = qword_1EB6E63D8;
  if (!qword_1EB6E63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E63D8);
  }

  return result;
}

void sub_1B0CF2B9C()
{
  if (!qword_1EB6DE328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63E0, &qword_1B0EE63B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE328);
    }
  }
}

void sub_1B0CF2C14(uint64_t a1, unint64_t *a2)
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

void sub_1B0CF2C64()
{
  if (!qword_1EB6DE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F0, &unk_1B0EE7CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F8, &qword_1B0EE63C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DE968);
    }
  }
}

void sub_1B0CF2CF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0CF2D58()
{
  if (!qword_1EB6DE048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6410, &qword_1B0EE63D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE048);
    }
  }
}

void sub_1B0CF2DD0()
{
  if (!qword_1EB6DACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6418, &qword_1B0EE63D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DACD8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClientCommand.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientCommand.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0CF2FE0()
{
  result = type metadata accessor for ClientCommand(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ClientCommand.encode(tag:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(__int128 *)@<X8>)
{
  v4[16] = a1;
  v5 = HIDWORD(a1);
  return sub_1B0CFA5E8(sub_1B0CF244C, v4, a2 & 0x101FF, a3);
}

uint64_t ClientCommand.Encoded.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClientCommand.Encoded.command.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClientCommand.Encoded.continuations.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientCommand.Encoded() + 20));

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t ClientCommand.Encoded.continuations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientCommand.Encoded() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientCommand.Encoded.init(command:continuations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E443C8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ClientCommand.Encoded();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ClientCommand.EncodingOptions.Literal.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ClientCommand.EncodingOptions.debugDescription.getter(__int16 a1)
{
  if (a1)
  {
    v1 = 0x2B6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x2D6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0x7972616E6942;
  }

  else
  {
    return 0x647261646E617453;
  }
}

uint64_t sub_1B0CF3590()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return ClientCommand.EncodingOptions.debugDescription.getter(v1 | *v0);
}

uint64_t CommandEncodingOptions.init(_:)(__int16 a1)
{
  v1 = 0x100000001;
  if ((a1 & 0x100) == 0)
  {
    v1 = 1;
  }

  return v1 | qword_1B0EE6630[a1] | qword_1B0EE6648[a1] | qword_1B0EE6660[a1];
}

uint64_t ClientCommand.EncodingOptions.init(_:)(uint64_t a1)
{
  v2 = Capability.literalPlus.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v24 = *v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v23 = &v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0C32414(sub_1B0BD6614, v22, a1);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = Capability.literalMinus.unsafeMutableAddressor();
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 24);
    v24 = *v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    MEMORY[0x1EEE9AC00](v8);
    v21 = &v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = sub_1B0C32414(sub_1B0C10BD0, v20, a1);

    if (v12)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = Capability.binary.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  v16 = *(v13 + 24);
  v24 = *v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  MEMORY[0x1EEE9AC00](v13);
  v21 = &v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0C32414(sub_1B0C10BD0, v20, a1);

  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v7;
}

uint64_t type metadata accessor for ClientCommand.Encoded()
{
  result = qword_1EB6DD158;
  if (!qword_1EB6DD158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B0CF3818()
{
  result = qword_1EB6E6458;
  if (!qword_1EB6E6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6458);
  }

  return result;
}

unint64_t sub_1B0CF3870()
{
  result = qword_1EB6E6460;
  if (!qword_1EB6E6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6460);
  }

  return result;
}

unint64_t sub_1B0CF38C8()
{
  result = qword_1EB6E6468;
  if (!qword_1EB6E6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6468);
  }

  return result;
}

void sub_1B0CF3944()
{
  sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    sub_1B0CF39C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0CF39C8()
{
  if (!qword_1EB6DB0B8)
  {
    sub_1B0E443C8();
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB0B8);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15EncodingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s15EncodingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1B0CF3BD8()
{
  result = qword_1EB6DD180;
  if (!qword_1EB6DD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD180);
  }

  return result;
}

uint64_t EncodedString.rawValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B0CF3CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0CF3D48()
{
  sub_1B0CF3F40();

  return sub_1B0E46F28();
}

uint64_t sub_1B0CF3D84()
{
  sub_1B0CF3F40();

  return sub_1B0E46F38();
}

uint64_t EncodedString.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6470, &qword_1B0EE67C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CF3F40();
  sub_1B0E46D48();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0CF4AC8(&qword_1EB6DAE00);
  sub_1B0E46958();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B0CF3F40()
{
  result = qword_1EB6E6478;
  if (!qword_1EB6E6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6478);
  }

  return result;
}

uint64_t EncodedString.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t EncodedString.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CF4074()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B0CF40C8()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = *(v1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

void *sub_1B0CF4134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B0CF47A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void (*String.init(_:)(uint64_t a1))(uint64_t *, void)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  result = MEMORY[0x1B2726D20](*(a1 + 16));
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v19 = v3;
    v20 = v4;
    if (v4)
    {
      if ((v3 & 0x80) == 0)
      {
        sub_1B0CB1F34();
        result = sub_1B0C14AB0();
        v13 = *(v12 + 4);
        if (!v13)
        {
          goto LABEL_53;
        }

        *v12 >>= 8;
        *(v12 + 4) = v13 - 8;
        result(&v17, 0);
        goto LABEL_38;
      }

      v7 = *(a1 + 16);
      v10 = v5 >= v7;
      if (v5 == v7)
      {
LABEL_7:
        v11 = v4;
LABEL_8:
        if (!v11)
        {
LABEL_49:

          return v21;
        }

        goto LABEL_34;
      }

      goto LABEL_14;
    }

    v7 = *(a1 + 16);
    if (v5 == v7)
    {
      goto LABEL_49;
    }

    if (v5 >= v7)
    {
      break;
    }

    v8 = *(v6 + v5);
    v9 = *(v6 + v5++);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v3 = v3 & 0xFFFFFF00 | v9;
    v4 = 8;
    v10 = v5 >= v7;
    if (v5 == v7)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (v10)
    {
      goto LABEL_51;
    }

    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_52;
    }

    v3 = (*(v6 + v5) << v4) | ((-255 << v4) - 1) & v3;
    v11 = v4 + 8;
    if ((v4 + 8) <= 0x1Fu)
    {
      if (v14 == v7)
      {
        goto LABEL_8;
      }

      if (v14 >= v7)
      {
        goto LABEL_51;
      }

      v15 = v5 + 2;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_52;
      }

      v3 = (*(v6 + v14) << v11) | ((-255 << v11) - 1) & v3;
      v11 = v4 + 16;
      if ((v4 + 16) > 0x1Fu)
      {
        goto LABEL_47;
      }

      if (v15 == v7)
      {
        goto LABEL_8;
      }

      if (v15 >= v7)
      {
        goto LABEL_51;
      }

      v14 = v5 + 3;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_52;
      }

      v3 = (*(v6 + v15) << v11) | ((-255 << v11) - 1) & v3;
      v11 = v4 + 24;
      if ((v4 + 24) <= 0x1Fu)
      {
        if (v14 == v7)
        {
          goto LABEL_8;
        }

        if (v14 >= v7)
        {
          goto LABEL_51;
        }

        v15 = v5 + 4;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_52;
        }

        v3 = (*(v6 + v14) << v11) | ((-255 << v11) - 1) & v3;
        v11 = v4 + 32;
        if (v4 >= 0xE0u)
        {
          if (v15 != v7)
          {
            if (v15 >= v7)
            {
              goto LABEL_51;
            }

            v7 = v5 + 5;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_52;
            }

            v3 = (*(v6 + v15) << v4) | ((-255 << v4) - 1) & v3;
            v11 = v4 + 40;
            goto LABEL_34;
          }

          goto LABEL_8;
        }

LABEL_47:
        v7 = v15;
        goto LABEL_34;
      }
    }

    v7 = v14;
LABEL_34:
    if ((v3 & 0xC0E0) == 0x80C0)
    {
      if ((v3 & 0x1E) == 0)
      {
        goto LABEL_48;
      }

      v16 = 16;
    }

    else if ((v3 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v3 & 0x200F) == 0 || (v3 & 0x200F) == 0x200D)
      {
        goto LABEL_48;
      }

      v16 = 24;
    }

    else
    {
      if ((v3 & 0xC0C0C0F8) != 0x808080F0 || (v3 & 0x3007) == 0 || __rev16(v3 & 0x3007) > 0x400)
      {
LABEL_48:
        sub_1B0E46D58();

        return 0;
      }

      v16 = 32;
    }

    v19 = v3 >> v16;
    v20 = v11 - v16;
    v5 = v7;
LABEL_38:
    v3 = v19;
    v4 = v20;
    v17 = v21;
    v18 = v22;
    result = sub_1B0E44C58();
    v21 = v17;
    v22 = v18;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t EncodedString.init(_:)(uint64_t a1)
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_1B0E45278();
      *(v4 + 16) = v3;
      bzero((v4 + 32), v3);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
      v5 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    sub_1B0E443A8();
    v6 = sub_1B0E443C8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return v4;
  }

  return result;
}

uint64_t _s13IMAP2Protocol13EncodedStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = a1 + 32;
  v6 = (a2 + 32);
  result = 1;
  while (1)
  {
    if (v2 == v3)
    {
      v8 = 0;
      v9 = v3;
      if (!v4)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v2 >= v3)
    {
      break;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v5 + v2);
    if (!v4)
    {
      return 0;
    }

LABEL_8:
    if (v2 == v3)
    {
      return result;
    }

    v10 = *v6;
    if (v8 < v10)
    {
      return result;
    }

    ++v6;
    --v4;
    v2 = v9;
    if (v10 < v8)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1B0CF47A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64A0, &qword_1B0EE6A18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CF3F40();
  sub_1B0E46D18();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B0CF4AC8(&qword_1EB6E64A8);
    sub_1B0E46868();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_1B0CF494C()
{
  result = qword_1EB6E6480;
  if (!qword_1EB6E6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6480);
  }

  return result;
}

unint64_t sub_1B0CF49C4()
{
  result = qword_1EB6E6488;
  if (!qword_1EB6E6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6488);
  }

  return result;
}

unint64_t sub_1B0CF4A1C()
{
  result = qword_1EB6E6490;
  if (!qword_1EB6E6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6490);
  }

  return result;
}

unint64_t sub_1B0CF4A74()
{
  result = qword_1EB6E6498;
  if (!qword_1EB6E6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6498);
  }

  return result;
}

uint64_t sub_1B0CF4AC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B0CF4B94()
{
  result = EngineTracingID.invalid.unsafeMutableAddressor();
  static ConnectionLoggerID.invalid = *result;
  dword_1EB7383B4 = -1;
  return result;
}

char *ConnectionLoggerID.invalid.unsafeMutableAddressor()
{
  if (qword_1EB6E63A8 != -1)
  {
    swift_once();
  }

  return &static ConnectionLoggerID.invalid;
}

unint64_t static ConnectionLoggerID.invalid.getter()
{
  if (qword_1EB6E63A8 != -1)
  {
    swift_once();
  }

  return static ConnectionLoggerID.invalid | (dword_1EB7383B4 << 32);
}

uint64_t MessageData.sequenceNumber.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.uid.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.bodySections.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t MessageData.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 512);

  *(v1 + 512) = a1;
  return result;
}

uint64_t MessageData.gmailLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 520);

  *(v1 + 520) = a1;
  return result;
}

uint64_t MessageData.internalDate.getter()
{
  result = *(v0 + 528);
  v2 = *(v0 + 536);
  return result;
}

uint64_t MessageData.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 528) = result;
  *(v2 + 536) = a2 & 1;
  return result;
}

uint64_t MessageData.messageSize.setter(uint64_t result)
{
  *(v1 + 540) = result;
  *(v1 + 544) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.modificationSequence.getter()
{
  result = *(v0 + 552);
  v2 = *(v0 + 560);
  return result;
}

uint64_t MessageData.modificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t MessageData.preview.getter()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 576);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.preview.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 576);

  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
  return result;
}

uint64_t MessageData.emailID.getter()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 592);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.emailID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 592);

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

uint64_t MessageData.threadID.getter()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 608);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MessageData.threadID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 608);

  *(v2 + 600) = a1;
  *(v2 + 608) = a2;
  return result;
}

uint64_t MessageData.BodySection.section.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE964(v2, v3);
  return v1;
}

uint64_t MessageData.BodySection.section.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;

  result = sub_1B0ACE978(v3[1], *(v3 + 16));
  *v3 = a1;
  v3[1] = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t MessageData.BodySection.origin.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t type metadata accessor for MessageData.BodySection()
{
  result = qword_1EB6DD190;
  if (!qword_1EB6DD190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageData.BodySection.init(section:origin:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for MessageData.BodySection() + 24);
  v13 = type metadata accessor for MessageData.BodyData();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  return sub_1B0C8C870(a5, a6 + v12, &qword_1EB6E4178, &unk_1B0EE7570);
}

void *MessageData.init(sequenceNumber:uid:body:bodySections:bodyStructure:envelope:flags:gmailLabels:internalDate:messageSize:modificationSequence:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  sub_1B0ACEC5C(&v30);
  *&__src[144] = v38;
  *&__src[160] = v39;
  *&__src[176] = v40;
  *&__src[80] = v34;
  *&__src[96] = v35;
  *&__src[112] = v36;
  *&__src[128] = v37;
  *&__src[16] = v30;
  *&__src[32] = v31;
  *&__src[48] = v32;
  *&__src[64] = v33;
  *&__src[336] = v38;
  *&__src[352] = v39;
  *&__src[368] = v40;
  *&__src[272] = v34;
  *&__src[288] = v35;
  *&__src[304] = v36;
  *&__src[320] = v37;
  *&__src[208] = v30;
  *&__src[224] = v31;
  __src[192] = v41;
  __src[384] = v41;
  *&__src[240] = v32;
  *&__src[256] = v33;
  memset(&__src[392], 0, 120);
  memset(&__src[584], 0, 32);
  *__src = a1;
  __src[4] = BYTE4(a1) & 1;
  *&__src[8] = a2;
  __src[12] = BYTE4(a2) & 1;
  sub_1B0C8C870(a3, &__src[16], &qword_1EB6E4148, &qword_1B0EE17F0);
  *&__src[200] = a4;
  sub_1B0C8C870(a5, &__src[208], &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B0C8C870(a6, &__src[392], &qword_1EB6E64B0, &unk_1B0EE81A0);
  *&__src[512] = a7;
  *&__src[520] = a8;
  *&__src[528] = a10;
  __src[536] = a11 & 1;
  *&__src[540] = a13;
  __src[544] = a14 & 1;
  *&__src[552] = a15;
  __src[560] = a16 & 1;
  *&__src[568] = a17;
  *&__src[576] = a18;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v43, __src, 0x268uLL);
  sub_1B0CF6930(__dst, v28);
  sub_1B0AA4C0C(v43);
  return memcpy(a9, __dst, 0x268uLL);
}

uint64_t sub_1B0CF5798(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v4) & 1;
}

uint64_t sub_1B0CF57F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1B0E431B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43228();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v12, qword_1EB6DE5F0);
  v15 = __swift_project_value_buffer(v9, qword_1EB6DE5F0);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969868], v4);
  sub_1B0E431C8();
  (*(v5 + 8))(v8, v4);
  sub_1B0E43318();
  v16 = sub_1B0E43358();
  result = (*(*(v16 - 8) + 48))(v3, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E43208();
    return (*(v10 + 32))(v15, v14, v9);
  }

  return result;
}

uint64_t ServerMessageDate.date.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C60, &qword_1B0E9B058);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1B0E42B78();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B0E43228();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v34 - v25;
  if (qword_1EB6DE5E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v18, qword_1EB6DE5F0);
  (*(v19 + 16))(v22, v27, v18);
  v28 = *(v19 + 56);
  v37 = v13;
  v28(v13, 1, 1, v18);
  ServerMessageDate.components.getter(a1, &v39);
  result = 60 * v40;
  if ((v40 * 60) >> 64 != (60 * v40) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v14;
  sub_1B0E43338();
  v30 = sub_1B0E43358();
  v31 = *(v30 - 8);
  result = (*(v31 + 48))(v7, 1, v30);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v31 + 32))(v9, v7, v30);
  (*(v31 + 56))(v9, 0, 1, v30);
  sub_1B0E42B58();
  sub_1B0E431E8();
  (*(v38 + 8))(v17, v35);
  (*(v19 + 8))(v22, v18);
  v32 = sub_1B0E43108();
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v26, 1, v32);
  if (result != 1)
  {
    return (*(v33 + 32))(v36, v26, v32);
  }

LABEL_9:
  __break(1u);
  return result;
}

void ServerMessageDate.init(_:)(char *a1)
{
  v54 = a1;
  v51 = sub_1B0E43108();
  v53 = *(v51 - 8);
  v1 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v43 - v5;
  v49 = sub_1B0E42B78();
  v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DE5E8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B0E43228();
  __swift_project_value_buffer(v9, qword_1EB6DE5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FA8, &qword_1B0EDF688);
  v10 = sub_1B0E43218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B0EC42E0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E6969A68], v10);
  v16(v15 + v12, *MEMORY[0x1E6969A78], v10);
  v16(v15 + 2 * v12, *MEMORY[0x1E6969A48], v10);
  v16(v15 + 3 * v12, *MEMORY[0x1E6969A58], v10);
  v16(v15 + 4 * v12, *MEMORY[0x1E6969A88], v10);
  v16(v15 + 5 * v12, *MEMORY[0x1E6969A98], v10);
  v16(v15 + 6 * v12, *MEMORY[0x1E6969AC0], v10);
  sub_1B0C926C8(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B0E431D8();

  v17 = sub_1B0E42B08();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v17;
  v20 = sub_1B0E42B18();
  if (v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v20;
  v23 = sub_1B0E42AE8();
  v24 = v52;
  v25 = v53;
  if (v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v23;
  v28 = sub_1B0E42AF8();
  if (v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v28;
  v31 = sub_1B0E42B28();
  if (v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v31;
  v34 = sub_1B0E42B38();
  if (v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = v34;
  v45 = v33;
  v46 = v30;
  v47 = v27;
  sub_1B0E42B68();
  v36 = sub_1B0E43358();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v24, 1, v36) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = v50;
  sub_1B0E430F8();
  v39 = sub_1B0E43328();
  v40 = *(v25 + 8);
  v41 = v38;
  v42 = v51;
  v40(v41, v51);
  (*(v37 + 8))(v24, v36);
  ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(&v55, v19, v22, v47, v46, v45, v44, v39 / 60);
  if (!v55.is_nil)
  {
    v56[0] = *&v55.value.year;
    v56[1] = *&v55.value.day;
    v56[2] = *&v55.value.minute;
    zoneMinutes = v55.value.zoneMinutes;
    v40(v54, v42);
    (*(v48 + 8))(v8, v49);
    ServerMessageDate.init(_:)(v56);
    return;
  }

LABEL_19:
  __break(1u);
}

BOOL _s13IMAP2Protocol11MessageDataV11BodySectionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64C0, &qword_1B0EE71D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v28[0] = v8;
  v18 = *(type metadata accessor for MessageData.BodySection() + 24);
  v19 = *(v13 + 48);
  sub_1B03B5C80(a1 + v18, v16, &qword_1EB6E4178, &unk_1B0EE7570);
  sub_1B03B5C80(a2 + v18, &v16[v19], &qword_1EB6E4178, &unk_1B0EE7570);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1B03B5C80(v16, v12, &qword_1EB6E4178, &unk_1B0EE7570);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_1B0CF8364(v12);
LABEL_14:
    v22 = &qword_1EB6E64C0;
    v23 = &qword_1B0EE71D0;
    goto LABEL_15;
  }

  v24 = v28[0];
  sub_1B0CF83C0(&v16[v19], v28[0]);
  v25 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v25 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1B0E443C8();
    sub_1B0CF8424(&qword_1EB6DB980, MEMORY[0x1E69E7FD0]);
    sub_1B0E45668();
    v26 = sub_1B0E456C8();
    if (v29 != v28[2])
    {
      MEMORY[0x1EEE9AC00](v26);
      v28[-2] = v24;
      v28[-1] = v12;
      sub_1B0E44328();
      v27 = v29;
      sub_1B0CF8364(v24);
      sub_1B0CF8364(v12);
      sub_1B0398EFC(v16, &qword_1EB6E4178, &unk_1B0EE7570);
      return (v27 & 1) != 0;
    }

    sub_1B0CF8364(v24);
    sub_1B0CF8364(v12);
LABEL_10:
    sub_1B0398EFC(v16, &qword_1EB6E4178, &unk_1B0EE7570);
    return 1;
  }

  sub_1B0CF8364(v24);
  sub_1B0CF8364(v12);
  v22 = &qword_1EB6E4178;
  v23 = &unk_1B0EE7570;
LABEL_15:
  sub_1B0398EFC(v16, v22, v23);
  return 0;
}

uint64_t _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v1 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v2 + 12);
  if (*(v1 + 12))
  {
    if (!*(v2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(v1 + 160);
  v7 = *(v1 + 128);
  v378 = *(v1 + 144);
  v379 = v6;
  v8 = *(v1 + 160);
  v380 = *(v1 + 176);
  v9 = *(v1 + 96);
  v10 = *(v1 + 64);
  v374 = *(v1 + 80);
  v375 = v9;
  v11 = *(v1 + 96);
  v12 = *(v1 + 128);
  v376 = *(v1 + 112);
  v377 = v12;
  v13 = *(v1 + 32);
  v371[0] = *(v1 + 16);
  v371[1] = v13;
  v14 = *(v1 + 64);
  v15 = *(v1 + 16);
  v16 = *(v1 + 32);
  v372 = *(v1 + 48);
  v373 = v14;
  v17 = *(v2 + 160);
  v18 = *(v2 + 128);
  v367 = *(v2 + 144);
  v368 = v17;
  v19 = *(v2 + 160);
  v369 = *(v2 + 176);
  v20 = *(v2 + 96);
  v21 = *(v2 + 64);
  v363 = *(v2 + 80);
  v364 = v20;
  v22 = *(v2 + 96);
  v23 = *(v2 + 128);
  v365 = *(v2 + 112);
  v366 = v23;
  v24 = *(v2 + 32);
  v360[0] = *(v2 + 16);
  v360[1] = v24;
  v25 = *(v2 + 64);
  v27 = *(v2 + 16);
  v26 = *(v2 + 32);
  v361 = *(v2 + 48);
  v362 = v25;
  v28 = *(v1 + 160);
  __src[8] = *(v1 + 144);
  __src[9] = v28;
  __src[10] = *(v1 + 176);
  v29 = *(v1 + 96);
  __src[4] = *(v1 + 80);
  __src[5] = v29;
  v30 = *(v1 + 128);
  __src[6] = *(v1 + 112);
  __src[7] = v30;
  v31 = *(v1 + 32);
  __src[0] = *(v1 + 16);
  __src[1] = v31;
  v32 = *(v1 + 64);
  __src[2] = *(v1 + 48);
  __src[3] = v32;
  v33 = *(v2 + 176);
  *(&__src[20] + 8) = v19;
  *(&__src[21] + 8) = v33;
  *(&__src[16] + 8) = v22;
  *(&__src[17] + 8) = v365;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v367;
  *(&__src[15] + 8) = v363;
  *(&__src[11] + 8) = v27;
  *(&__src[12] + 8) = v26;
  *(&__src[13] + 8) = v361;
  *(&__src[14] + 8) = v21;
  v334[8] = v378;
  v334[9] = v8;
  v334[10] = *(v1 + 176);
  v334[4] = v374;
  v334[5] = v11;
  v334[6] = v376;
  v334[7] = v7;
  v334[0] = v15;
  v334[1] = v16;
  v381 = *(v1 + 192);
  v370 = *(v2 + 192);
  LOBYTE(__src[11]) = *(v1 + 192);
  BYTE8(__src[22]) = *(v2 + 192);
  v34 = v1;
  v335 = *(v1 + 192);
  v334[2] = v372;
  v334[3] = v10;
  if (sub_1B07AB810(v334) == 1)
  {
    v35 = *(v3 + 160);
    __dst[8] = *(v3 + 144);
    __dst[9] = v35;
    __dst[10] = *(v3 + 176);
    LOBYTE(__dst[11]) = *(v3 + 192);
    v36 = *(v3 + 96);
    __dst[4] = *(v3 + 80);
    __dst[5] = v36;
    v37 = *(v3 + 128);
    __dst[6] = *(v3 + 112);
    __dst[7] = v37;
    v38 = *(v3 + 32);
    __dst[0] = *(v3 + 16);
    __dst[1] = v38;
    v39 = *(v3 + 64);
    __dst[2] = *(v3 + 48);
    __dst[3] = v39;
    if (sub_1B07AB810(__dst) == 1)
    {
      sub_1B03B5C80(v371, v307, &qword_1EB6E4148, &qword_1B0EE17F0);
      v40 = v307;
LABEL_16:
      sub_1B03B5C80(v360, v40, &qword_1EB6E4148, &qword_1B0EE17F0);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v101 = *(v3 + 160);
  __dst[8] = *(v3 + 144);
  __dst[9] = v101;
  __dst[10] = *(v3 + 176);
  LOBYTE(__dst[11]) = *(v3 + 192);
  v102 = *(v3 + 96);
  __dst[4] = *(v3 + 80);
  __dst[5] = v102;
  v103 = *(v3 + 128);
  __dst[6] = *(v3 + 112);
  __dst[7] = v103;
  v104 = *(v3 + 32);
  __dst[0] = *(v3 + 16);
  __dst[1] = v104;
  v105 = *(v3 + 64);
  __dst[2] = *(v3 + 48);
  __dst[3] = v105;
  if (sub_1B07AB810(__dst) == 1)
  {
LABEL_27:
    memcpy(__dst, __src, 0x169uLL);
    sub_1B03B5C80(v371, v307, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v360, v307, &qword_1EB6E4148, &qword_1B0EE17F0);
    v106 = &unk_1EB6E60D8;
    v107 = &unk_1B0EE17F8;
    v108 = __dst;
LABEL_28:
    sub_1B0398EFC(v108, v106, v107);
    return 0;
  }

  v109 = *(v3 + 160);
  v356 = *(v3 + 144);
  v357 = v109;
  v358 = *(v3 + 176);
  v359 = *(v3 + 192);
  v110 = *(v3 + 96);
  v352 = *(v3 + 80);
  v353 = v110;
  v111 = *(v3 + 128);
  v354 = *(v3 + 112);
  v355 = v111;
  v112 = *(v3 + 32);
  v348 = *(v3 + 16);
  v349 = v112;
  v113 = *(v3 + 64);
  v350 = *(v3 + 48);
  v351 = v113;
  v114 = *(v34 + 160);
  v307[8] = *(v34 + 144);
  v307[9] = v114;
  v307[10] = *(v34 + 176);
  LOBYTE(v307[11]) = *(v34 + 192);
  v115 = *(v34 + 96);
  v307[4] = *(v34 + 80);
  v307[5] = v115;
  v116 = *(v34 + 128);
  v307[6] = *(v34 + 112);
  v307[7] = v116;
  v117 = *(v34 + 32);
  v307[0] = *(v34 + 16);
  v307[1] = v117;
  v118 = *(v34 + 64);
  v307[2] = *(v34 + 48);
  v307[3] = v118;
  if (sub_1B075FACC(v307) == 1)
  {
    v119 = *(v3 + 160);
    v344 = *(v3 + 144);
    v345 = v119;
    v346 = *(v3 + 176);
    v347 = *(v3 + 192);
    v120 = *(v3 + 96);
    v340 = *(v3 + 80);
    v341 = v120;
    v121 = *(v3 + 128);
    v342 = *(v3 + 112);
    v343 = v121;
    v122 = *(v3 + 32);
    v336 = *(v3 + 16);
    v337 = v122;
    v123 = *(v3 + 64);
    v338 = *(v3 + 48);
    v339 = v123;
    if (sub_1B075FACC(&v336) == 1)
    {
      sub_1B03B5C80(v371, &v320, &qword_1EB6E4148, &qword_1B0EE17F0);
      v40 = &v320;
      goto LABEL_16;
    }

    sub_1B03B5C80(v371, &v320, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v360, &v320, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v348, &qword_1EB6E4148, &qword_1B0EE17F0);
    goto LABEL_38;
  }

  v124 = *(v3 + 160);
  v344 = *(v3 + 144);
  v345 = v124;
  v346 = *(v3 + 176);
  v347 = *(v3 + 192);
  v125 = *(v3 + 96);
  v340 = *(v3 + 80);
  v341 = v125;
  v126 = *(v3 + 128);
  v342 = *(v3 + 112);
  v343 = v126;
  v127 = *(v3 + 32);
  v336 = *(v3 + 16);
  v337 = v127;
  v128 = *(v3 + 64);
  v338 = *(v3 + 48);
  v339 = v128;
  if (sub_1B075FACC(&v336) == 1)
  {
    sub_1B03B5C80(v371, &v320, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v360, &v320, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_38:
    v134 = *(v34 + 160);
    v344 = *(v34 + 144);
    v345 = v134;
    v346 = *(v34 + 176);
    v347 = *(v34 + 192);
    v135 = *(v34 + 96);
    v340 = *(v34 + 80);
    v341 = v135;
    v136 = *(v34 + 128);
    v342 = *(v34 + 112);
    v343 = v136;
    v137 = *(v34 + 32);
    v336 = *(v34 + 16);
    v337 = v137;
    v138 = *(v34 + 64);
    v338 = *(v34 + 48);
    v339 = v138;
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v336;
    goto LABEL_28;
  }

  v328 = v307[8];
  v329 = v307[9];
  v330 = v307[10];
  v331 = v307[11];
  v324 = v307[4];
  v325 = v307[5];
  v326 = v307[6];
  v327 = v307[7];
  v320 = v307[0];
  v321 = v307[1];
  v322 = v307[2];
  v323 = v307[3];
  if (sub_1B0717014(&v320) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v320);
    v140 = v139[5];
    v408 = v139[4];
    v409 = v140;
    v410 = v139[6];
    *&v411 = *(v139 + 14);
    v141 = v139[1];
    v404 = *v139;
    v405 = v141;
    v142 = v139[3];
    v406 = v139[2];
    v407 = v142;
    v316 = v344;
    v317 = v345;
    v318 = v346;
    v319 = v347;
    v312 = v340;
    v313 = v341;
    v314 = v342;
    v315 = v343;
    v308 = v336;
    v309 = v337;
    v310 = v338;
    v311 = v339;
    if (sub_1B0717014(&v308) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v308);
      v144 = v143[5];
      v419 = v143[4];
      v420 = v144;
      v421 = v143[6];
      *&v422 = *(v143 + 14);
      v145 = v143[1];
      v415 = *v143;
      v416 = v145;
      v146 = v143[3];
      v417 = v143[2];
      v418 = v146;
      sub_1B03B5C80(v371, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(v360, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
      v147 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v404, &v415);
      goto LABEL_54;
    }

LABEL_52:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v308);
    sub_1B03B5C80(v371, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(v360, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v348, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_55:
    v316 = __src[8];
    v317 = __src[9];
    v318 = __src[10];
    v319 = __src[11];
    v312 = __src[4];
    v313 = __src[5];
    v314 = __src[6];
    v315 = __src[7];
    v308 = __src[0];
    v309 = __src[1];
    v310 = __src[2];
    v311 = __src[3];
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v308;
    goto LABEL_28;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v320);
  v164 = v163[9];
  v412 = v163[8];
  v413 = v164;
  v414 = v163[10];
  v165 = v163[5];
  v408 = v163[4];
  v409 = v165;
  v166 = v163[6];
  v411 = v163[7];
  v410 = v166;
  v167 = v163[1];
  v404 = *v163;
  v405 = v167;
  v168 = v163[2];
  v407 = v163[3];
  v406 = v168;
  v319 = v347;
  v318 = v346;
  v317 = v345;
  v316 = v344;
  v315 = v343;
  v314 = v342;
  v313 = v341;
  v312 = v340;
  v311 = v339;
  v310 = v338;
  v309 = v337;
  v308 = v336;
  if (sub_1B0717014(&v308) == 1)
  {
    goto LABEL_52;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v308);
  v183 = v182[9];
  v423 = v182[8];
  v424 = v183;
  v425 = v182[10];
  v184 = v182[5];
  v419 = v182[4];
  v420 = v184;
  v185 = v182[7];
  v421 = v182[6];
  v422 = v185;
  v186 = v182[1];
  v415 = *v182;
  v416 = v186;
  v187 = v182[3];
  v417 = v182[2];
  v418 = v187;
  sub_1B03B5C80(v371, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B03B5C80(v360, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
  v147 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v404, &v415);
LABEL_54:
  v188 = v147;
  sub_1B0398EFC(&v348, &qword_1EB6E4148, &qword_1B0EE17F0);
  if (!v188)
  {
    goto LABEL_55;
  }

LABEL_17:
  v328 = __src[8];
  v329 = __src[9];
  v330 = __src[10];
  v331 = __src[11];
  v324 = __src[4];
  v325 = __src[5];
  v326 = __src[6];
  v327 = __src[7];
  v320 = __src[0];
  v321 = __src[1];
  v322 = __src[2];
  v323 = __src[3];
  sub_1B0398EFC(&v320, &qword_1EB6E4148, &qword_1B0EE17F0);
  if ((sub_1B0CFD5E0(*(v34 + 200), *(v3 + 200)) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v34 + 352);
  v42 = *(v34 + 320);
  v356 = *(v34 + 336);
  v357 = v41;
  v43 = *(v34 + 352);
  v358 = *(v34 + 368);
  v44 = *(v34 + 288);
  v45 = *(v34 + 256);
  v352 = *(v34 + 272);
  v353 = v44;
  v46 = *(v34 + 288);
  v47 = *(v34 + 320);
  v354 = *(v34 + 304);
  v355 = v47;
  v48 = *(v34 + 224);
  v348 = *(v34 + 208);
  v349 = v48;
  v49 = *(v34 + 256);
  v50 = *(v34 + 208);
  v51 = *(v34 + 224);
  v350 = *(v34 + 240);
  v351 = v49;
  v52 = *(v3 + 352);
  v53 = *(v3 + 320);
  v344 = *(v3 + 336);
  v345 = v52;
  v54 = *(v3 + 352);
  v346 = *(v3 + 368);
  v55 = *(v3 + 288);
  v56 = *(v3 + 256);
  v340 = *(v3 + 272);
  v341 = v55;
  v57 = *(v3 + 288);
  v58 = *(v3 + 320);
  v342 = *(v3 + 304);
  v343 = v58;
  v59 = *(v3 + 224);
  v336 = *(v3 + 208);
  v337 = v59;
  v60 = *(v3 + 256);
  v62 = *(v3 + 208);
  v61 = *(v3 + 224);
  v338 = *(v3 + 240);
  v339 = v60;
  v63 = *(v34 + 352);
  __dst[8] = *(v34 + 336);
  __dst[9] = v63;
  __dst[10] = *(v34 + 368);
  v64 = *(v34 + 288);
  __dst[4] = *(v34 + 272);
  __dst[5] = v64;
  v65 = *(v34 + 320);
  __dst[6] = *(v34 + 304);
  __dst[7] = v65;
  v66 = *(v34 + 224);
  __dst[0] = *(v34 + 208);
  __dst[1] = v66;
  v67 = *(v34 + 256);
  __dst[2] = *(v34 + 240);
  __dst[3] = v67;
  v68 = *(v3 + 368);
  *(&__dst[20] + 8) = v54;
  *(&__dst[21] + 8) = v68;
  *(&__dst[16] + 8) = v57;
  *(&__dst[17] + 8) = v342;
  *(&__dst[18] + 8) = v53;
  *(&__dst[19] + 8) = v344;
  *(&__dst[15] + 8) = v340;
  *(&__dst[11] + 8) = v62;
  *(&__dst[12] + 8) = v61;
  *(&__dst[13] + 8) = v338;
  *(&__dst[14] + 8) = v56;
  v316 = v356;
  v317 = v43;
  v318 = *(v34 + 368);
  v312 = v352;
  v313 = v46;
  v314 = v354;
  v315 = v42;
  v308 = v50;
  v309 = v51;
  v359 = *(v34 + 384);
  v347 = *(v3 + 384);
  LOBYTE(__dst[11]) = *(v34 + 384);
  BYTE8(__dst[22]) = *(v3 + 384);
  v319 = *(v34 + 384);
  v310 = v350;
  v311 = v45;
  if (sub_1B07AB810(&v308) == 1)
  {
    v69 = *(v3 + 352);
    v307[8] = *(v3 + 336);
    v307[9] = v69;
    v307[10] = *(v3 + 368);
    LOBYTE(v307[11]) = *(v3 + 384);
    v70 = *(v3 + 288);
    v307[4] = *(v3 + 272);
    v307[5] = v70;
    v71 = *(v3 + 320);
    v307[6] = *(v3 + 304);
    v307[7] = v71;
    v72 = *(v3 + 224);
    v307[0] = *(v3 + 208);
    v307[1] = v72;
    v73 = *(v3 + 256);
    v307[2] = *(v3 + 240);
    v307[3] = v73;
    if (sub_1B07AB810(v307) == 1)
    {
      sub_1B03B5C80(&v348, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
      v74 = &v295;
LABEL_21:
      sub_1B03B5C80(&v336, v74, &qword_1EB6E4148, &qword_1B0EE17F0);
      goto LABEL_22;
    }

LABEL_36:
    memcpy(v307, __dst, 0x169uLL);
    sub_1B03B5C80(&v348, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v336, &v295, &qword_1EB6E4148, &qword_1B0EE17F0);
    v106 = &unk_1EB6E60D8;
    v107 = &unk_1B0EE17F8;
LABEL_51:
    v108 = v307;
    goto LABEL_28;
  }

  v129 = *(v3 + 352);
  v307[8] = *(v3 + 336);
  v307[9] = v129;
  v307[10] = *(v3 + 368);
  LOBYTE(v307[11]) = *(v3 + 384);
  v130 = *(v3 + 288);
  v307[4] = *(v3 + 272);
  v307[5] = v130;
  v131 = *(v3 + 320);
  v307[6] = *(v3 + 304);
  v307[7] = v131;
  v132 = *(v3 + 224);
  v307[0] = *(v3 + 208);
  v307[1] = v132;
  v133 = *(v3 + 256);
  v307[2] = *(v3 + 240);
  v307[3] = v133;
  if (sub_1B07AB810(v307) == 1)
  {
    goto LABEL_36;
  }

  v148 = *(v3 + 352);
  v291 = *(v3 + 336);
  v292 = v148;
  v293 = *(v3 + 368);
  v294 = *(v3 + 384);
  v149 = *(v3 + 288);
  v287 = *(v3 + 272);
  v288 = v149;
  v150 = *(v3 + 320);
  v289 = *(v3 + 304);
  v290 = v150;
  v151 = *(v3 + 224);
  v283 = *(v3 + 208);
  v284 = v151;
  v152 = *(v3 + 256);
  v285 = *(v3 + 240);
  v286 = v152;
  v153 = *(v34 + 352);
  v303 = *(v34 + 336);
  v304 = v153;
  v305 = *(v34 + 368);
  v306 = *(v34 + 384);
  v154 = *(v34 + 272);
  v300 = *(v34 + 288);
  v155 = *(v34 + 320);
  v301 = *(v34 + 304);
  v302 = v155;
  v156 = *(v34 + 224);
  v295 = *(v34 + 208);
  v296 = v156;
  v157 = *(v34 + 256);
  v297 = *(v34 + 240);
  v298 = v157;
  v299 = v154;
  if (sub_1B075FACC(&v295) == 1)
  {
    v158 = *(v3 + 352);
    v279 = *(v3 + 336);
    v280 = v158;
    v281 = *(v3 + 368);
    v282 = *(v3 + 384);
    v159 = *(v3 + 288);
    v275 = *(v3 + 272);
    v276 = v159;
    v160 = *(v3 + 320);
    v277 = *(v3 + 304);
    v278 = v160;
    v161 = *(v3 + 224);
    v271 = *(v3 + 208);
    v272 = v161;
    v162 = *(v3 + 256);
    v273 = *(v3 + 240);
    v274 = v162;
    if (sub_1B075FACC(&v271) == 1)
    {
      sub_1B03B5C80(&v348, &v259, &qword_1EB6E4148, &qword_1B0EE17F0);
      v74 = &v259;
      goto LABEL_21;
    }

    sub_1B03B5C80(&v348, &v259, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v336, &v259, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v283, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_57:
    v189 = *(v34 + 352);
    v279 = *(v34 + 336);
    v280 = v189;
    v281 = *(v34 + 368);
    v282 = *(v34 + 384);
    v190 = *(v34 + 288);
    v275 = *(v34 + 272);
    v276 = v190;
    v191 = *(v34 + 320);
    v277 = *(v34 + 304);
    v278 = v191;
    v192 = *(v34 + 224);
    v271 = *(v34 + 208);
    v272 = v192;
    v193 = *(v34 + 256);
    v273 = *(v34 + 240);
    v274 = v193;
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v271;
    goto LABEL_28;
  }

  v169 = *(v3 + 352);
  v279 = *(v3 + 336);
  v280 = v169;
  v281 = *(v3 + 368);
  v282 = *(v3 + 384);
  v170 = *(v3 + 288);
  v275 = *(v3 + 272);
  v276 = v170;
  v171 = *(v3 + 320);
  v277 = *(v3 + 304);
  v278 = v171;
  v172 = *(v3 + 224);
  v271 = *(v3 + 208);
  v272 = v172;
  v173 = *(v3 + 256);
  v273 = *(v3 + 240);
  v274 = v173;
  if (sub_1B075FACC(&v271) == 1)
  {
    sub_1B03B5C80(&v348, &v259, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v336, &v259, &qword_1EB6E4148, &qword_1B0EE17F0);
    goto LABEL_57;
  }

  v267 = v303;
  v268 = v304;
  v269 = v305;
  v270 = v306;
  v263 = v299;
  v264 = v300;
  v265 = v301;
  v266 = v302;
  v259 = v295;
  v260 = v296;
  v261 = v297;
  v262 = v298;
  if (sub_1B0717014(&v259) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v259);
    v195 = v194[5];
    v386 = v194[4];
    v387 = v195;
    v388 = v194[6];
    *&v389 = *(v194 + 14);
    v196 = v194[1];
    v382 = *v194;
    v383 = v196;
    v197 = v194[3];
    v384 = v194[2];
    v385 = v197;
    v255 = v279;
    v256 = v280;
    v257 = v281;
    v258 = v282;
    v251 = v275;
    v252 = v276;
    v253 = v277;
    v254 = v278;
    v247 = v271;
    v248 = v272;
    v249 = v273;
    v250 = v274;
    if (sub_1B0717014(&v247) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v247);
      v199 = v198[5];
      v397 = v198[4];
      v398 = v199;
      v399 = v198[6];
      *&v400 = *(v198 + 14);
      v200 = v198[1];
      v393 = *v198;
      v394 = v200;
      v201 = v198[3];
      v395 = v198[2];
      v396 = v201;
      sub_1B03B5C80(&v348, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
      sub_1B03B5C80(&v336, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
      v202 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v382, &v393);
      goto LABEL_74;
    }

LABEL_72:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v247);
    sub_1B03B5C80(&v348, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B03B5C80(&v336, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B0398EFC(&v283, &qword_1EB6E4148, &qword_1B0EE17F0);
LABEL_75:
    v255 = __dst[8];
    v256 = __dst[9];
    v257 = __dst[10];
    v258 = __dst[11];
    v251 = __dst[4];
    v252 = __dst[5];
    v253 = __dst[6];
    v254 = __dst[7];
    v247 = __dst[0];
    v248 = __dst[1];
    v249 = __dst[2];
    v250 = __dst[3];
    v106 = &qword_1EB6E4148;
    v107 = &qword_1B0EE17F0;
    v108 = &v247;
    goto LABEL_28;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v259);
  v216 = v215[9];
  v390 = v215[8];
  v391 = v216;
  v392 = v215[10];
  v217 = v215[5];
  v386 = v215[4];
  v387 = v217;
  v218 = v215[6];
  v389 = v215[7];
  v388 = v218;
  v219 = v215[1];
  v382 = *v215;
  v383 = v219;
  v220 = v215[2];
  v385 = v215[3];
  v384 = v220;
  v258 = v282;
  v256 = v280;
  v257 = v281;
  v254 = v278;
  v255 = v279;
  v252 = v276;
  v253 = v277;
  v250 = v274;
  v251 = v275;
  v248 = v272;
  v249 = v273;
  v247 = v271;
  if (sub_1B0717014(&v247) == 1)
  {
    goto LABEL_72;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v247);
  v222 = v221[9];
  v401 = v221[8];
  v402 = v222;
  v403 = v221[10];
  v223 = v221[5];
  v397 = v221[4];
  v398 = v223;
  v224 = v221[6];
  v400 = v221[7];
  v399 = v224;
  v225 = v221[1];
  v393 = *v221;
  v394 = v225;
  v226 = v221[2];
  v396 = v221[3];
  v395 = v226;
  sub_1B03B5C80(&v348, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
  sub_1B03B5C80(&v336, v240, &qword_1EB6E4148, &qword_1B0EE17F0);
  v202 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v382, &v393);
LABEL_74:
  v227 = v202;
  sub_1B0398EFC(&v283, &qword_1EB6E4148, &qword_1B0EE17F0);
  if (!v227)
  {
    goto LABEL_75;
  }

LABEL_22:
  v303 = __dst[8];
  v304 = __dst[9];
  v305 = __dst[10];
  v306 = __dst[11];
  v300 = __dst[5];
  v301 = __dst[6];
  v302 = __dst[7];
  v295 = __dst[0];
  v296 = __dst[1];
  v297 = __dst[2];
  v298 = __dst[3];
  v299 = __dst[4];
  sub_1B0398EFC(&v295, &qword_1EB6E4148, &qword_1B0EE17F0);
  v75 = (v34 + 392);
  v76 = *(v34 + 472);
  v275 = *(v34 + 456);
  v276 = v76;
  v277 = *(v34 + 488);
  *&v278 = *(v34 + 504);
  v77 = *(v34 + 408);
  v271 = *(v34 + 392);
  v272 = v77;
  v78 = *(v34 + 440);
  v273 = *(v34 + 424);
  v274 = v78;
  v79 = (v3 + 392);
  v80 = *(v3 + 440);
  v261 = *(v3 + 424);
  v262 = v80;
  v81 = *(v3 + 408);
  v259 = *(v3 + 392);
  v260 = v81;
  *&v266 = *(v3 + 504);
  v82 = *(v3 + 488);
  v264 = *(v3 + 472);
  v265 = v82;
  v263 = *(v3 + 456);
  v83 = *(&v273 + 1);
  v84 = (v34 + 440);
  v85 = (v3 + 440);
  if (!*(&v273 + 1))
  {
    if (!*(&v261 + 1))
    {
      v203 = *(v34 + 408);
      v307[0] = *v75;
      v307[1] = v203;
      v307[2] = *(v34 + 424);
      v204 = *(v34 + 488);
      v307[5] = *(v34 + 472);
      v307[6] = v204;
      *&v307[7] = *(v34 + 504);
      v205 = *v84;
      v307[4] = *(v34 + 456);
      v307[3] = v205;
      sub_1B03B5C80(&v271, &v283, &qword_1EB6E64B0, &unk_1B0EE81A0);
      sub_1B03B5C80(&v259, &v283, &qword_1EB6E64B0, &unk_1B0EE81A0);
      result = sub_1B0398EFC(v307, &qword_1EB6E64B0, &unk_1B0EE81A0);
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  if (!*(&v261 + 1))
  {
LABEL_50:
    v174 = *(v34 + 408);
    v307[0] = *v75;
    v307[1] = v174;
    v175 = *(v34 + 488);
    v307[5] = *(v34 + 472);
    v307[6] = v175;
    v176 = *v84;
    v307[4] = *(v34 + 456);
    v307[3] = v176;
    v177 = *v79;
    *(&v307[8] + 8) = *(v3 + 408);
    *(&v307[7] + 8) = v177;
    v178 = *(v3 + 456);
    *(&v307[10] + 8) = *v85;
    v179 = *(v3 + 472);
    *(&v307[13] + 8) = *(v3 + 488);
    *&v307[2] = *(v34 + 424);
    *(&v307[2] + 1) = *(&v273 + 1);
    v180 = *(v3 + 424);
    *&v307[7] = *(v34 + 504);
    *(&v307[9] + 1) = v180;
    v181 = *(v3 + 504);
    *&v307[10] = *(&v261 + 1);
    *(&v307[14] + 1) = v181;
    *(&v307[12] + 8) = v179;
    *(&v307[11] + 8) = v178;
    sub_1B03B5C80(&v271, &v283, &qword_1EB6E64B0, &unk_1B0EE81A0);
    sub_1B03B5C80(&v259, &v283, &qword_1EB6E64B0, &unk_1B0EE81A0);
    v106 = &unk_1EB6E64B8;
    v107 = &unk_1B0EE71C8;
    goto LABEL_51;
  }

  v86 = *(v3 + 424);
  v87 = *(v3 + 408);
  v240[0] = *v79;
  v240[1] = v87;
  *&v241 = v86;
  *(&v241 + 1) = *(&v261 + 1);
  v88 = *(v3 + 488);
  v244 = *(v3 + 472);
  v245 = v88;
  v246 = *(v3 + 504);
  v89 = *(v3 + 456);
  v242 = *v85;
  v243 = v89;
  v307[0] = v240[0];
  v307[1] = v87;
  *&v307[7] = v246;
  v307[6] = v88;
  v307[5] = v244;
  v307[4] = v89;
  v307[3] = v242;
  v307[2] = v241;
  v90 = *(v34 + 408);
  v283 = *v75;
  v284 = v90;
  v91 = *(v34 + 424);
  v92 = *v84;
  v93 = *(v34 + 456);
  v94 = *(v34 + 472);
  v95 = *(v34 + 488);
  *&v290 = *(v34 + 504);
  v288 = v94;
  v289 = v95;
  v286 = v92;
  v287 = v93;
  *&v285 = v91;
  *(&v285 + 1) = *(&v273 + 1);
  sub_1B03B5C80(&v271, &v247, &qword_1EB6E64B0, &unk_1B0EE81A0);
  sub_1B03B5C80(&v259, &v247, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v96 = static Envelope.__derived_struct_equals(_:_:)(&v283, v307);
  sub_1B0398EFC(v240, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v97 = *(v34 + 408);
  v247 = *v75;
  v248 = v97;
  *&v249 = *(v34 + 424);
  *(&v249 + 1) = v83;
  v98 = *(v34 + 488);
  v252 = *(v34 + 472);
  v253 = v98;
  *&v254 = *(v34 + 504);
  v99 = *(v34 + 456);
  v250 = *v84;
  v251 = v99;
  result = sub_1B0398EFC(&v247, &qword_1EB6E64B0, &unk_1B0EE81A0);
  if (!v96)
  {
    return 0;
  }

LABEL_62:
  v206 = *(v34 + 512);
  v207 = *(v3 + 512);
  if (v206)
  {
    if (!v207)
    {
      return 0;
    }

    v208 = *(v3 + 512);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v209 = sub_1B0AFE1EC(v206, v207);

    v210 = v34;
    if ((v209 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v210 = v34;
    if (v207)
    {
      return 0;
    }
  }

  v211 = *(v210 + 520);
  v212 = *(v3 + 520);
  if (v211)
  {
    if (!v212)
    {
      return 0;
    }

    v213 = *(v3 + 520);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v214 = sub_1B0AFDF14(v211, v212);

    v210 = v34;
    if ((v214 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v212)
  {
    return 0;
  }

  v228 = *(v3 + 536);
  if (*(v210 + 536))
  {
    if (!*(v3 + 536))
    {
      return 0;
    }
  }

  else
  {
    if (*(v210 + 528) != *(v3 + 528))
    {
      v228 = 1;
    }

    if (v228)
    {
      return 0;
    }
  }

  v229 = *(v3 + 544);
  if (*(v210 + 544))
  {
    if (!*(v3 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (*(v210 + 540) != *(v3 + 540))
    {
      v229 = 1;
    }

    if (v229)
    {
      return 0;
    }
  }

  v230 = *(v3 + 560);
  if (*(v210 + 560))
  {
    if ((*(v3 + 560) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_96;
  }

  if (*(v3 + 560))
  {
    return 0;
  }

  v231 = *(v210 + 552);
  v232 = *(v3 + 552);
  if (((v232 | v231) & 0x8000000000000000) == 0)
  {
    v233 = v232 == v231;
    v210 = v34;
    if (!v233)
    {
      return 0;
    }

LABEL_96:
    v234 = *(v210 + 576);
    v235 = *(v3 + 576);
    if (v234)
    {
      if (!v235 || (*(v34 + 568) != *(v3 + 568) || v234 != v235) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v235)
    {
      return 0;
    }

    v236 = *(v34 + 592);
    v237 = *(v3 + 592);
    if (v236)
    {
      if (!v237 || (static EmailID.__derived_struct_equals(_:_:)(*(v34 + 584), v236, *(v3 + 584), v237) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v237)
    {
      return 0;
    }

    v238 = *(v34 + 608);
    v239 = *(v3 + 608);
    if (v238)
    {
      return v239 && (static ThreadID.__derived_struct_equals(_:_:)(*(v34 + 600), v238, *(v3 + 600), v239) & 1) != 0;
    }

    return !v239;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore28EnvelopeVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0CF80C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0CF8110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0CF8228()
{
  sub_1B0CF82BC();
  if (v0 <= 0x3F)
  {
    sub_1B0CF830C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0CF82BC()
{
  if (!qword_1EB6DA320)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DA320);
    }
  }
}

void sub_1B0CF830C()
{
  if (!qword_1EB6DD1A0)
  {
    type metadata accessor for MessageData.BodyData();
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DD1A0);
    }
  }
}

uint64_t sub_1B0CF8364(uint64_t a1)
{
  v2 = type metadata accessor for MessageData.BodyData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CF83C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CF8424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B0CF846C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0CF89B4();
}

uint64_t MessageData.BodyData.underlying.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageData.BodyData.underlying.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MessageData.BodyData.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B0CF85EC()
{
  v0 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v0 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1B0E443C8();
  sub_1B075CEE0();
  sub_1B0E45668();
  v1 = sub_1B0E456C8();
  if (v4 == v3)
  {
    return 1;
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1B0E44328();
  return v4;
}

uint64_t ByteBuffer.init(_:)(uint64_t a1)
{
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      if (result)
      {
        v9 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
        v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
        v11 = v10 | HIWORD(v10);
        v12 = __CFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          v14 = -1;
        }

        else
        {
          v14 = v13;
        }
      }

      else
      {
        v14 = 0;
      }

      result = malloc(v14);
      if (!result)
      {
        goto LABEL_15;
      }

      v22 = result;
      type metadata accessor for ByteBuffer._Storage();
      v21 = swift_allocObject();
      v18 = 0;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      *(v21 + 16) = v14;
      *(v21 + 24) = v22;
      *(v21 + 32) = j__malloc;
      *(v21 + 40) = j__realloc;
      *(v21 + 48) = sub_1B0B815B8;
      *(v21 + 56) = sub_1B0439080;
    }

    else
    {
      v15 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v16 = *v15;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      v14 = *(v15 + 4);
      v19 = *(v15 + 10);
      v20 = *(v15 + 22);
    }

    v25 = v21;
    v26 = v18;
    v27 = v17;
    v28 = v14;
    v29 = v19;
    v30 = v20;
    result = ByteBuffer.setDispatchData(_:at:)(v7, v17);
    if (!__CFADD__(v27, result))
    {
      v23 = v25;
      sub_1B0CF8364(a1);
      (*(v3 + 8))(v7, v2);
      return v23;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

{
  result = ByteBuffer.getSlice(at:length:)(*(a1 + 24), *(a1 + 32) - *(a1 + 24), *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v3 = result;
    sub_1B04394F4(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageData.BodyData.init(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1B0E44358();
}

uint64_t type metadata accessor for MessageData.BodyData()
{
  result = qword_1EB6DD1A8;
  if (!qword_1EB6DD1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Namespace.prefix.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Namespace.separator.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Namespace.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Namespace.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CF8C70()
{
  v1 = v0[1];
  v2 = v0[2];
  return Namespace.hashValue.getter(*v0);
}

uint64_t sub_1B0CF8C7C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(*v0 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CF8CF8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  v4 = *(v2 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t Namespace.init(_:)(uint64_t a1)
{
  v13 = *(a1 + 24);
  v1 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v2 = v13;
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    v7 = *(a1 + 22);
    sub_1B070B280(&v13, &v12);

    v10 = MailboxName.init(_:)(v9, v4, v5 | (v6 << 32) | (v7 << 48));
    v1 = _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(v10, v2, v1);
    sub_1B0CF98D4(a1);
  }

  else
  {
    sub_1B0CF98D4(a1);
  }

  return v1;
}

uint64_t Namespace.contains(_:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_1B0CF8EF4(a3, a1))
  {
    return 1;
  }

  v6 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) != (*(v6 + 2) | (*(v6 + 2) << 32)))
  {
    return 0;
  }

  v7 = *v6;

  return sub_1B04520BC(a1, v7);
}

uint64_t sub_1B0CF8EF4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + v2);
    v9 = *(result + 32 + v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Namespace.addPrefix(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v3);

  return MailboxName.init(_:)(a3);
}

uint64_t Namespace.addPrefix(to:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = HIDWORD(a2);
  v10 = sub_1B0B9C9AC(SBYTE4(a2));
  if (!v11)
  {
    goto LABEL_9;
  }

  if (v10 == a4 && v11 == a5)
  {

    goto LABEL_6;
  }

  v12 = sub_1B0E46A78();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

LABEL_6:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v13);
  a1 = MailboxName.init(_:)(a3);
  sub_1B0B9C9AC(v9);
  if (!v14)
  {
    return a1;
  }

  if ((sub_1B0E447F8() & 0x100) == 0)
  {
    sub_1B0E447F8();

    return a1;
  }

  sub_1B0CF9928();
  swift_allocError();
  *v16 = 0xD000000000000029;
  v16[1] = 0x80000001B0F2F3D0;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Namespace.removePrefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if ((sub_1B0CF8EF4(a3, a1) & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  v5 = *(a3 + 16);
  v6 = *(v4 + 16);
  if (v6 >= v5)
  {
    v7 = *(a3 + 16);
  }

  else
  {
    v7 = *(v4 + 16);
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0E46AD8();
  swift_unknownObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (v10 != v6 - v8)
  {
    swift_unknownObjectRelease();
    sub_1B0C14438(v4, v4 + 32, v8, (2 * v6) | 1);
    v11 = v13;
    goto LABEL_13;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
    swift_unknownObjectRelease();
  }

  return MailboxName.init(_:)(v11);
}

uint64_t Namespace.removePrefix(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = HIDWORD(a2);
  v10 = sub_1B0B9C9AC(SBYTE4(a2));
  if (!v11)
  {
    goto LABEL_20;
  }

  if (v10 == a4 && v11 == a5)
  {

    goto LABEL_6;
  }

  v12 = sub_1B0E46A78();

  if ((v12 & 1) == 0)
  {
LABEL_20:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

LABEL_6:
  if (sub_1B0CF8EF4(a3, a1))
  {
    v13 = *(a3 + 16);
    v14 = *(a1 + 16);
    if (v14 >= v13)
    {
      v15 = *(a3 + 16);
    }

    else
    {
      v15 = *(a1 + 16);
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_1B0E46AD8();
    swift_unknownObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);

    if (v18 == v14 - v16)
    {
      v19 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v19)
      {
LABEL_19:
        a1 = MailboxName.init(_:)(v19);
        goto LABEL_22;
      }

      v19 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B0C14438(a1, a1 + 32, v16, (2 * v14) | 1);
      v19 = v22;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_22:
  sub_1B0B9C9AC(v9);
  if (!v20)
  {
    return a1;
  }

  if ((sub_1B0E447F8() & 0x100) == 0)
  {
    sub_1B0E447F8();

    return a1;
  }

  sub_1B0CF9928();
  swift_allocError();
  *v23 = 0xD000000000000029;
  v23[1] = 0x80000001B0F2F3D0;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Namespace.isNotes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (sub_1B0CF8EF4(a3, a1))
  {
    v9 = *(a3 + 16);
    v10 = *(v8 + 16);
    if (v10 >= v9)
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = *(v8 + 16);
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_1B0E46AD8();
    swift_unknownObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v13 + 16);

    if (v14 == v10 - v12)
    {
      v15 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v15)
      {
LABEL_14:
        v8 = MailboxName.init(_:)(v15);
        goto LABEL_16;
      }

      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B0C14438(v8, v8 + 32, v12, (2 * v10) | 1);
      v15 = v19;
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_16:
  if (sub_1B03A7FD8(0x7365746F4EuLL, 0xE500000000000000, v8))
  {

    return 1;
  }

  else
  {
    MEMORY[0x1B2726E80](a4, a5);
    v17 = *(v8 + 16);
    if (v17 >= 5)
    {
      v17 = 5;
    }

    v18 = sub_1B0CF997C(0x7365746F4EuLL, 0xE500000000000000, v8 + 32, 0, 2 * v17 + 1);

    swift_unknownObjectRelease();
    return v18 & 1;
  }
}