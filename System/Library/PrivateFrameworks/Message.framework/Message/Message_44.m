uint64_t sub_1B0A618D0()
{
  v14[4] = 0;
  v9 = 0;
  MEMORY[0x1E69E5928](@"MFServerSSLCertificateIsTrusted");
  sub_1B0E44AD8();
  v6 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](@"MFServerSSLCertificateIsTrusted");
  v7 = [v5 valueInAccountPropertiesForKey_];
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v8, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  if (!v13)
  {
    sub_1B041C0EC(v12);
    return 2;
  }

  sub_1B0392800(v12, v14);
  sub_1B039AEC8(v14, v11);
  sub_1B039A494();
  if (swift_dynamicCast())
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    return 2;
  }

  v9 = v4;
  v0 = [v4 BOOLValue];
  if (v0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x1E69E5920](v4);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v3;
}

uint64_t sub_1B0A61AFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0A61B90(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0A61B90(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v100 = a1;
  v113 = 0;
  v110 = 0;
  v114 = a1;
  v115 = a2;
  v98 = &unk_1F270F390;
  v97 = sub_1B0E46A48();
  v95 = v2;
  v94 = 12;
  v96 = 1;
  v3 = sub_1B0E44838();
  v5 = v4;
  v6 = v95;
  *v95 = v3;
  v6[1] = v5;
  v93 = 0;
  *(v6 + 16) = 0;
  v7 = sub_1B0E44838();
  v8 = v93;
  v10 = v9;
  v11 = v95;
  v95[3] = v7;
  v11[4] = v10;
  *(v11 + 40) = v8;
  v12 = sub_1B0E44838();
  v13 = v93;
  v15 = v14;
  v16 = v95;
  v95[6] = v12;
  v16[7] = v15;
  *(v16 + 64) = v13;
  v17 = sub_1B0E44838();
  v18 = v93;
  v20 = v19;
  v21 = v95;
  v95[9] = v17;
  v21[10] = v20;
  *(v21 + 88) = v18;
  v22 = sub_1B0E44838();
  v23 = v93;
  v25 = v24;
  v26 = v95;
  v95[12] = v22;
  v26[13] = v25;
  *(v26 + 112) = v23;
  v27 = sub_1B0E44838();
  v28 = v93;
  v29 = v95;
  v95[15] = v27;
  v29[16] = v30;
  *(v29 + 136) = v28;
  v31 = sub_1B0E44838();
  v32 = v95;
  v33 = v96;
  v34 = v31;
  v35 = v97;
  v95[18] = v34;
  v32[19] = v36;
  *(v32 + 160) = v33;
  sub_1B0394964();
  v99 = v35;
  v112 = v35;
  v111 = v35;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v107 = v100;
  v108 = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB8, &qword_1B0EA3D38);
  v102 = v103;
  v104 = sub_1B0A6225C();
  v105 = 0;
  v106 = sub_1B0E45028();
  v92 = v106;

  if (v106)
  {

    v90 = 1;
    v91 = v105;
  }

  else
  {
    v37 = v105;

    v85 = &unk_1F270F390;
    v84 = sub_1B0E46A48();
    v82 = v38;
    v81 = 12;
    v83 = 1;
    v39 = sub_1B0E44838();
    v40 = v82;
    *v82 = v39;
    v40[1] = v41;
    v79 = 0;
    *(v40 + 16) = 0;
    v42 = sub_1B0E44838();
    v43 = v79;
    v45 = v44;
    v46 = v82;
    v82[3] = v42;
    v46[4] = v45;
    *(v46 + 40) = v43;
    v47 = sub_1B0E44838();
    v48 = v79;
    v50 = v49;
    v51 = v82;
    v82[6] = v47;
    v51[7] = v50;
    *(v51 + 64) = v48;
    v52 = sub_1B0E44838();
    v53 = v79;
    v55 = v54;
    v56 = v82;
    v82[9] = v52;
    v56[10] = v55;
    *(v56 + 88) = v53;
    v80 = 14;
    v57 = sub_1B0E44838();
    v58 = v79;
    v59 = v82;
    v82[12] = v57;
    v59[13] = v60;
    *(v59 + 112) = v58;
    v61 = sub_1B0E44838();
    v62 = v82;
    v63 = v83;
    v82[15] = v61;
    v62[16] = v64;
    *(v62 + 136) = v63;
    v65 = sub_1B0E44838();
    v66 = v83;
    v68 = v67;
    v69 = v82;
    v82[18] = v65;
    v69[19] = v68;
    *(v69 + 160) = v66;
    v70 = sub_1B0E44838();
    v71 = v82;
    v72 = v83;
    v73 = v70;
    v74 = v84;
    v82[21] = v73;
    v71[22] = v75;
    *(v71 + 184) = v72;
    sub_1B0394964();
    v86 = v74;
    v110 = v74;
    v109 = v74;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v87 = &v78;
    MEMORY[0x1EEE9AC00](&v78);
    v76 = sub_1B0E45028();
    v88 = v37;
    v89 = v76;
    v78 = v76;

    if (v78)
    {

      v90 = 0;
    }

    else
    {

      v90 = 3;
    }

    v91 = v88;
  }

  return v90;
}

uint64_t sub_1B0A6222C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B0A621B0(a1) & 1;
}

unint64_t sub_1B0A6225C()
{
  v2 = qword_1EB6DB0C8;
  if (!qword_1EB6DB0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3BB8, &qword_1B0EA3D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A622E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44B98();
    v5 = sub_1B0E44E68();

    v7 = v5;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = sub_1B0E44B98();
    v6 = MEMORY[0x1B2726DE0](v3);

    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1B0A62478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v7 = a1;
  v20 = sub_1B0A630B4;
  v24 = 0;
  v23 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v8 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v16 = &v5 - v8;
  v15 = sub_1B0E43308();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v14 = &v5 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v5 - v11;
  v24 = &v5 - v11;
  v23 = a1;
  sub_1B0E432F8();
  (*(v12 + 32))(v17, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v16);
  v18 = &v21;
  v22 = v17;
  sub_1B0A3FF0C();
  sub_1B0E45018();
  sub_1B07D772C(v16);
  (*(v12 + 16))(v6, v17, v15);
  sub_1B03D09B8(v7);
  return (*(v12 + 8))(v17, v15);
}

uint64_t sub_1B0A626DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v10 = a1;
  v20 = 0;
  v23 = sub_1B0A62E1C;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v21 = sub_1B0E432D8();
  v11 = *(v21 - 8);
  v12 = v21 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v19 = v6 - v13;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(*(v3 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v16 = v6 - v14;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v14);
  v18 = v6 - v17;
  v28 = v6 - v17;
  v27 = a1;
  sub_1B0E432E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B0A630DC();
  v24 = sub_1B0E44F58();
  v8 = v24;
  (*(v11 + 8))(v19, v21);
  v26 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v25;
  v25 = v8;
  v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
  v6[1] = sub_1B041C1E8();
  sub_1B0820F14();
  MessageIdentifierSet.init<A>(_:)(v7, &type metadata for UID, v6[0]);
  sub_1B074BA2C(v16, v18);

  sub_1B03D08AC(v18, v9);
  v4 = sub_1B0E43308();
  (*(*(v4 - 8) + 8))(v10);
  return sub_1B03D09B8(v18);
}

unint64_t sub_1B0A6298C(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v16 = 0;
  v15 = 0;
  v21 = a1;
  v22 = a2;
  v8 = sub_1B041C1E8();
  static MessageIdentifier.max.getter(&type metadata for UID, v8);
  v19[0] = v19[1];
  v9 = sub_1B03948EC();
  BinaryInteger.init<A>(_:)(v19, MEMORY[0x1E69E6530], &type metadata for UID, v9, v8);
  if (v20 < a1)
  {
    return 0;
  }

  static MessageIdentifier.min.getter(&type metadata for UID, v8);
  v17[0] = v17[1];
  BinaryInteger.init<A>(_:)(v17, MEMORY[0x1E69E6530], &type metadata for UID, v9, v8);
  if (v18 >= a2)
  {
    return 0;
  }

  result = sub_1B0A62C04(a1);
  v6 = result;
  v16 = result;
  if (!__OFSUB__(a2, 1))
  {
    v5 = sub_1B0A62C04(a2 - 1);
    v15 = v5;
    v13 = v6;
    v12 = v5;
    if (!static MessageIdentifier.<= infix(_:_:)(&v13, &v12, &type metadata for UID, v8))
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v11[0] = v6;
    v11[1] = v5;
    MessageIdentifierRange.init(_:)(v11, v8, &v14);
    v23 = v14;
    return v14 | (HIDWORD(v14) << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A62C04(uint64_t a1)
{
  v16 = a1;
  v4 = sub_1B041C1E8();
  static MessageIdentifier.min.getter(&type metadata for UID, v4);
  v14[0] = v14[1];
  v5 = sub_1B03948EC();
  BinaryInteger.init<A>(_:)(v14, MEMORY[0x1E69E6530], &type metadata for UID, v5, v4);
  if (a1 < v15)
  {
    static MessageIdentifier.min.getter(&type metadata for UID, v4);
    return v13;
  }

  else
  {
    static MessageIdentifier.max.getter(&type metadata for UID, v4);
    v11[0] = v11[1];
    BinaryInteger.init<A>(_:)(v11, MEMORY[0x1E69E6530], &type metadata for UID, v5, v4);
    if (v12 < a1)
    {
      static MessageIdentifier.max.getter(&type metadata for UID, v4);
      return v10;
    }

    else
    {
      *v7 = a1;
      MessageIdentifier.init<A>(exactly:)(v7, &type metadata for UID, MEMORY[0x1E69E6530], v4, v5, &v8);
      if ((v9 & 1) == 0)
      {
        return v8;
      }

      sub_1B0E465A8();
      __break(1u);
      return v3;
    }
  }
}

unint64_t sub_1B0A62E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0A6298C(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B0A62E78(_DWORD *a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v9 = *a1;
  v10 = a1[1];
  v19 = a1;
  v18 = a2;
  v16 = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
  sub_1B0A6315C();
  if (sub_1B0E45718() == 1)
  {
    v11 = v9;
    v8 = sub_1B03948EC();
    v2 = sub_1B041C1E8();
    BinaryInteger.init<A>(_:)(&v11, MEMORY[0x1E69E6530], &type metadata for UID, v8, v2);
    return sub_1B0E432B8();
  }

  else
  {
    v14 = v9;
    v5 = sub_1B03948EC();
    v6 = sub_1B041C1E8();
    v4 = MEMORY[0x1E69E6530];
    BinaryInteger.init<A>(_:)(&v14, MEMORY[0x1E69E6530], &type metadata for UID, v5, v6);
    v7 = v15;
    v12 = v10;
    BinaryInteger.init<A>(_:)(&v12, v4, &type metadata for UID, v5, v6);
    if (v13 < v7)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24B0, &qword_1B0E9CC68);
    sub_1B08C3104();
    return sub_1B0E432A8();
  }
}

unint64_t sub_1B0A630DC()
{
  v2 = qword_1EB6DECC8;
  if (!qword_1EB6DECC8)
  {
    sub_1B0E432D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A6315C()
{
  v2 = qword_1EB6DB6F0;
  if (!qword_1EB6DB6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
    sub_1B0714E4C();
    sub_1B0A63204();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A63204()
{
  v2 = qword_1EB6DED60;
  if (!qword_1EB6DED60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6328C(char a1)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
    case 8:
      return 7;
    case 9:
      return 8;
    case 10:
      return 9;
    case 11:
      return 10;
    case 12:
      return 11;
    case 13:
      return 12;
    case 14:
      return 13;
    case 15:
      return 14;
    case 16:
      return 15;
    case 17:
      return 16;
    case 18:
      return 17;
    case 19:
      return 18;
    case 20:
      return 19;
    case 21:
      return 20;
    case 22:
      return 21;
    case 23:
      return 22;
  }

  return 23;
}

uint64_t sub_1B0A63650(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 2;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 6;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 8;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 10;
      break;
    case 10:
      v2 = 11;
      break;
    case 11:
      v2 = 12;
      break;
    case 12:
      v2 = 13;
      break;
    case 13:
      v2 = 14;
      break;
    case 14:
      v2 = 15;
      break;
    case 15:
      v2 = 16;
      break;
    case 16:
      v2 = 17;
      break;
    case 17:
      v2 = 18;
      break;
    case 18:
      v2 = 19;
      break;
    case 19:
      v2 = 20;
      break;
    case 20:
      v2 = 21;
      break;
    case 21:
      v2 = 22;
      break;
    case 22:
      v2 = 23;
      break;
    default:
      v2 = 1;
      break;
  }

  return v2;
}

BOOL sub_1B0A637B0(uint64_t *a1, uint64_t *a2)
{
  v26[3] = a1;
  v26[2] = a2;
  v14 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v32 = *(a1 + 1);
  sub_1B070B280(&v32, v26);
  sub_1B070B280(&v32, &v25);
  v31 = *(a2 + 1);
  sub_1B070B280(&v31, &v24);
  sub_1B070B280(&v31, &v23);
  v21 = v32;
  v22 = v31;
  if (*(&v32 + 1))
  {
    sub_1B070B280(&v21, &v18);
    if (*(&v22 + 1))
    {
      v17 = v18;
      v16 = v22;
      v9 = MEMORY[0x1B2726DE0](v18, *(&v18 + 1), v22, *(&v22 + 1));
      sub_1B03B1198(&v16);
      sub_1B03B1198(&v17);
      sub_1B03B1198(&v21);
      v10 = v9;
      goto LABEL_8;
    }

    sub_1B03B1198(&v18);
    goto LABEL_10;
  }

  if (*(&v22 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(&v21);
    v10 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(&v21);
  v10 = 1;
LABEL_8:
  sub_1B03B1198(&v31);
  sub_1B03B1198(&v32);
  if (v10)
  {
    v4 = a1[3];
    v7 = a1[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = a2[3];
    v6 = a2[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B08D0C60(v4, v7, v5, v6);

    if (v8)
    {
      v30 = a1[5];
      v29 = a2[5];
      if (v30 == v29)
      {
        v28 = *(a1 + 48);
        v20 = v28;
        v27 = *(a2 + 48);
        v19 = v27;
        sub_1B0A63B40();
        return (sub_1B0E46AE8() & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0A63AD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_1B0A63B40()
{
  v2 = qword_1EB6E3BC0;
  if (!qword_1EB6E3BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A63C8C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0A6328C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0A63CBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B0A63650(*v1);
  *a1 = result;
  return result;
}

BOOL sub_1B0A63CEC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, 0x31uLL);
  memcpy(v5, a2, 0x31uLL);
  return sub_1B0A637B0(__dst, v5);
}

uint64_t sub_1B0A63DB8()
{
  sub_1B0A63B40();
  if (sub_1B0E46AE8())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1B0E46AE8();
  }

  return v1 & 1;
}

id sub_1B0A63E80()
{
  sub_1B0A63F8C();
  if ((sub_1B0E46DB8() & 0x100000000) != 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0E44868();
  v4 = sub_1B0E44C88();
  v3 = v0;
  v1 = sub_1B0A63FF0();
  return sub_1B0A64348(v4, v3, v1);
}

unint64_t sub_1B0A63F8C()
{
  v2 = qword_1EB6E3BC8;
  if (!qword_1EB6E3BC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3BC8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A63FF0()
{
  v26 = *(v0 + 48);
  sub_1B0A63B40();
  if (sub_1B0E46AE8())
  {
    CGSizeMake();
    v19 = v1;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BD0, &qword_1B0EA3DF8);
    sub_1B0E46A48();
    v24 = v3;
    *v3 = sub_1B0A64398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
    sub_1B0E46A48();
    v22 = v4;
    *v4 = sub_1B0E44838();
    v22[1] = v5;
    v17 = *(v25 + 24);
    v18 = *(v25 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = sub_1B0A6A7C8(v17, v18);
    v22[5] = MEMORY[0x1E69E6158];
    v22[2] = v6;
    v22[3] = v7;
    v22[6] = sub_1B0E44838();
    v22[7] = v8;
    v21 = sub_1B07F1764();
    v9 = sub_1B0A64420(v19, v20);
    v22[11] = v21;
    v22[8] = v9;
    sub_1B0394964();
    v23 = sub_1B0E445D8();
    v24[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C90, &qword_1B0EA02B8);
    v24[1] = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BD0, &qword_1B0EA3DF8);
    sub_1B0E46A48();
    v16 = v10;
    *v10 = sub_1B0A64484();
    v14 = *(v25 + 24);
    v15 = *(v25 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0A6A7C8(v14, v15);
    v16[4] = MEMORY[0x1E69E6158];
    v16[1] = v11;
    v16[2] = v12;
  }

  sub_1B0394964();
  type metadata accessor for Key();
  sub_1B0694878();
  return sub_1B0E445D8();
}

uint64_t sub_1B0A64398()
{
  sub_1B0E44838();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1B0A64420(double a1, double a2)
{
  v2 = [swift_getObjCClassFromMetadata() valueWithCGSize_];

  return v2;
}

uint64_t sub_1B0A64484()
{
  sub_1B0E44838();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

void *sub_1B0A64540()
{
  v21 = v0;
  v1 = *(v0 + 48);
  if (sub_1B0A63DB8())
  {
    v15 = [objc_opt_self() createImageAttachment];
    swift_getObjectType();
    swift_unknownObjectRetain();
    [v15 setRenderOnClient_];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = v15;
    swift_unknownObjectRelease();
    v13 = v15;
  }

  else
  {
    v12 = [objc_opt_self() createAttachment];
    swift_unknownObjectRetain();
    v20 = v12;
    v13 = v12;
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  v8 = *(v14 + 24);
  v9 = *(v14 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A6A7C8(v8, v9);
  v10 = sub_1B0E44AC8();

  [v13 setContentId_];
  MEMORY[0x1E69E5920](v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v19[0] = sub_1B0E46A28();
  v19[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  v23 = *v14;
  sub_1B074E7A8(&v23, &v18);
  v17 = v23;
  sub_1B0E469E8();
  sub_1B039E440(&v17);
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v19);
  sub_1B0E44C88();
  v11 = sub_1B0E44AC8();

  [v13 setMimePartNumber_];
  MEMORY[0x1E69E5920](v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v22 = *(v14 + 8);
  sub_1B070B280(&v22, &v16);
  v24 = v22;
  if (*(&v22 + 1))
  {
    v6 = sub_1B0E44AC8();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v13 setFileName_];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v13 setFileSize_];
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v13 setType_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1B0A6492C(uint64_t a1)
{
  v17[2] = 0;
  v17[0] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17[3] = a1;
  v17[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  sub_1B0A64E50();
  if (sub_1B0E45748())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BE0, &qword_1B0EA3E08);
    sub_1B0E46A48();
    sub_1B07167A8();
    return sub_1B0E445D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BE0, &qword_1B0EA3E08);
    sub_1B0E46A48();
    sub_1B07167A8();
    v17[0] = sub_1B0E445D8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15[16] = a1;
    sub_1B0E45798();
    for (i = 0; ; i = v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CB0, &qword_1B0EA3E10);
      sub_1B0E46518();
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(v15, __dst, 0x80uLL);
      if (sub_1B0A64ED8(v15) == 1)
      {
        break;
      }

      memcpy(v18, v15, sizeof(v18));
      v9 = Message.decodedAttachmentByteCountUpperBound(attachment:)(v18);
      if (v9 > 0 && (sub_1B0A6130C(), (v8 = sub_1B0A65010(v9)) != 0))
      {
        MEMORY[0x1E69E5928](v8);
        [v8 mutableBytes];
        v1 = v8;
        sub_1B0A61378();
        sub_1B0E45718();
        v12 = sub_1B0E45E78();
        Message.decode(attachment:into:)(v18, v12, v2);
        sub_1B0A65050();
        v3 = sub_1B0E45748();
        if ((v3 & 1) == 0)
        {
          [v8 setLength_];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1E69E5928](v8);
          sub_1B0E42F38();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BF0, &qword_1B0EA3E18);
          sub_1B0E44788();
          MEMORY[0x1E69E5920](v8);
        }

        MEMORY[0x1E69E5920](v8);
        sub_1B08C5168(v15);
        v7 = 0;
      }

      else
      {
        sub_1B08C5168(v15);
        v7 = i;
      }
    }

    sub_1B039E440(v16);
    v5 = v17[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440(v17);
    return v5;
  }
}

unint64_t sub_1B0A64E50()
{
  v2 = qword_1EB6E3BD8;
  if (!qword_1EB6E3BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A64ED8(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

unint64_t sub_1B0A65050()
{
  v2 = qword_1EB6E3BE8;
  if (!qword_1EB6E3BE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A650C8()
{
  v7 = v0;
  v5 = sub_1B0A63D54(*(v0 + 48));
  sub_1B0A65154(v4, v6);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v1 = *(v4 + 48);
    v3 = sub_1B0A63DB8();
  }

  sub_1B08D9204(v4);
  return v3 & 1;
}

uint64_t sub_1B0A65154(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = a1[1];
  v4 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v4;
  *(a2 + 24) = a1[3];
  v6 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 32) = v6;
  *(a2 + 40) = a1[5];
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t *sub_1B0A651EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(__b, 0, 0x31uLL);
  v30 = a1;
  v29 = a2;
  v28[1] = a3;
  __b[1] = 0;
  __b[2] = 0;
  v34 = *a1;
  sub_1B074E7A8(&v34, v28);
  __b[0] = v34;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  sub_1B08C50F0(v17, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = ContentDisposition.filename.getter(v17, v18, v19);
  v21 = v4;
  sub_1B08C512C(v17, v18);

  __b[1] = v20;
  __b[2] = v21;

  v22 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = *(a1 + 80);
  sub_1B070B280(&v33, &v26);
  v25 = v33;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B0A654A4, 0, v5, MEMORY[0x1E69E73E0], &unk_1F270F528, v24, v27);
  sub_1B03B1198(&v25);
  v8 = sub_1B0A6A84C(v22, v27[0], v27[1]);
  v9 = v6;

  __b[3] = v8;
  __b[4] = v9;
  v32 = *(a1 + 104);
  __b[5] = v32;
  LOBYTE(__b[6]) = a2;
  v10 = __b[0];
  v11 = __b[1];
  v12 = __b[2];
  v13 = v32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08C5168(a1);
  result = sub_1B08D9204(__b);
  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 40) = v13;
  *(a4 + 48) = a2;
  return result;
}

uint64_t sub_1B0A654A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0A6A7C8(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t *sub_1B0A65508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x31uLL);
  v35 = 0;
  v36 = 0;
  v42 = a1;
  v41 = a2;
  v46 = *(a1 + 80);
  sub_1B070B280(&v46, &v38);
  v37 = v46;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B0A654A4, 0, v3, MEMORY[0x1E69E73E0], &unk_1F270F528, v33, &v39);
  sub_1B03B1198(&v37);
  v28 = v39;
  v29 = v40;
  if (!v40)
  {
    goto LABEL_7;
  }

  v35 = v39;
  v36 = v40;
  memcpy(__dst, a2 + 4, 0x21uLL);
  sub_1B07ACB48(__dst, v34);
  memcpy(v48, __dst, sizeof(v48));
  if (v48[32] == 255)
  {

LABEL_7:
    sub_1B07AD030(a2);
    result = sub_1B08C5168(a1);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_8;
  }

  memcpy(v49, v48, sizeof(v49));
  memcpy(v47, v49, 0x21uLL);
  v13 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = a2[1];
  v11 = a2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = a2[9];
  v5 = a2[10];
  v12 = sub_1B0E450E8();
  v8 = a2[1];
  v9 = a2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0A658C8(v47, v8, v9);
  sub_1B0A63AD4(v13, v10, v11, v28, v29, v12, v6, v44);
  memcpy(__b, v44, 0x31uLL);

  v15 = __b[0];
  v16 = __b[1];
  v17 = __b[2];
  v18 = __b[3];
  v19 = __b[4];
  v20 = __b[5];
  v14 = __b[6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AD030(a2);
  sub_1B08C5168(a1);
  result = sub_1B08D9204(__b);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v14;
LABEL_8:
  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v26;
  *(a3 + 48) = v27;
  return result;
}

uint64_t sub_1B0A658C8(void *a1, uint64_t a2, uint64_t a3)
{
  v277 = v359;
  v283 = a1;
  v326 = a2;
  v327 = a3;
  v397 = 0;
  v395 = 0;
  v393 = 0;
  v394 = 0;
  v340 = 0;
  v341 = 0;
  v278 = sub_1B0E43788();
  v279 = *(v278 - 8);
  v280 = v278 - 8;
  v281 = (*(v279 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v278);
  v282 = &v72[-v281];
  v284 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0) - 8) + 64);
  v285 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v283);
  v286 = &v72[-v285];
  v287 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v288 = &v72[-v287];
  v289 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v290 = &v72[-v289];
  v291 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v292 = &v72[-v291];
  v293 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v294 = &v72[-v293];
  v295 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v296 = &v72[-v295];
  v297 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v298 = &v72[-v297];
  v299 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v300 = &v72[-v299];
  v301 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v302 = &v72[-v301];
  v303 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v304 = &v72[-v303];
  v305 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v306 = &v72[-v305];
  v307 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v308 = &v72[-v307];
  v309 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v310 = &v72[-v309];
  v311 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v312 = &v72[-v311];
  v313 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v314 = &v72[-v313];
  v315 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v316 = &v72[-v315];
  v317 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v318 = &v72[-v317];
  v319 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v320 = &v72[-v319];
  v321 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v322 = &v72[-v321];
  v323 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v324 = &v72[-v323];
  v397 = &v72[-v323];
  v395 = v41;
  v393 = v42;
  v394 = v43;
  v325 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v389 = v326;
  v390 = v327;
  if (v327)
  {
    v391 = v389;
    v392 = v390;
  }

  else
  {
    v391 = sub_1B0E44838();
    v392 = v44;
    if (v390)
    {
      sub_1B03B1198(&v389);
    }
  }

  v263 = v392;
  v275 = sub_1B0E44AC8();

  v267 = 0;
  v45 = sub_1B0E46A28();
  v270 = &v387;
  v387 = v45;
  v388 = v46;
  v266 = "";
  v268 = 1;
  v47 = sub_1B0E44838();
  v264 = v48;
  MEMORY[0x1B2728B30](v47);

  v265 = v386;
  memcpy(v386, v283, 0x21uLL);
  sub_1B0A68338();
  sub_1B0E469F8();
  v49 = sub_1B0E44838();
  v269 = v50;
  MEMORY[0x1B2728B30](v49);

  v272 = v387;
  v271 = v388;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v270);
  sub_1B0E44C88();
  v273 = v51;
  v274 = sub_1B0E44AC8();

  v276 = [v325 fileTypeForFilename:v275 mimeType:v274];
  MEMORY[0x1E69E5920](v274);
  MEMORY[0x1E69E5920](v275);
  if (v276)
  {
    v262 = v276;
    v261 = v276;
    sub_1B0E43678();
    (*(v279 + 32))(v322, v282, v278);
    (*(v279 + 56))(v322, 0, 1, v278);
    MEMORY[0x1E69E5920](v261);
  }

  else
  {
    (*(v279 + 56))(v322, 1, 1, v278);
  }

  sub_1B0A683B0(v322, v324);
  v259 = sub_1B0E44838();
  v257 = v52;
  v406[0] = v259;
  v406[1] = v52;
  v258 = 0;
  v406[2] = 0;
  v406[3] = 0;
  v407 = 3;
  v260 = static MediaType.__derived_enum_equals(_:_:)(v283, v406);
  sub_1B07ACE18(v259, v257, v258, v258, 3);
  if ((v260 & 1) == 0)
  {
    sub_1B0A684D8(v324, v320);
    v254 = *(v279 + 48);
    v255 = v279 + 48;
    if (v254(v320, 1, v278) == 1)
    {
      sub_1B075D100(v320);
      v253 = 2;
    }

    else
    {
      sub_1B0E436A8();
      v252 = sub_1B0E43738();
      v251 = *(v279 + 8);
      v250 = v279 + 8;
      v251(v282, v278);
      v251(v320, v278);
      v253 = v252 & 1;
    }

    v385 = v253;
    if (v253 == 2)
    {
      v249 = 0;
    }

    else
    {
      v249 = v385;
    }

    if (v249)
    {
      v396 = 13;
      v248 = 13;
LABEL_275:
      v256 = v248;
      goto LABEL_276;
    }

    sub_1B0A684D8(v324, v318);
    if (v254(v318, 1, v278) == 1)
    {
      sub_1B075D100(v318);
      v247 = 2;
    }

    else
    {
      sub_1B0E43698();
      v246 = sub_1B0E43738();
      v245 = *(v279 + 8);
      v244 = v279 + 8;
      v245(v282, v278);
      v245(v318, v278);
      v247 = v246 & 1;
    }

    v384 = v247;
    if (v247 == 2)
    {
      v243 = 0;
    }

    else
    {
      v243 = v384;
    }

    if (v243)
    {
      v396 = 21;
      v242 = 21;
LABEL_274:
      v248 = v242;
      goto LABEL_275;
    }

    sub_1B07B4718(v283, &v383);
    memcpy(__dst, v283, sizeof(__dst));
    if (__dst[32] == 3)
    {
      v405 = v277[41];
      sub_1B03B1198(&v405);
      v396 = 4;
      v241 = 4;
LABEL_273:
      v242 = v241;
      goto LABEL_274;
    }

    sub_1B07AD0E0(v283);
    if (sub_1B0A68708(v283))
    {
      v396 = 5;
      v240 = 5;
LABEL_272:
      v241 = v240;
      goto LABEL_273;
    }

    sub_1B07B4718(v283, &v382);
    memcpy(v402, v283, sizeof(v402));
    if (v402[32] != 4)
    {
      sub_1B07AD0E0(v283);
      goto LABEL_47;
    }

    v403 = v277[37];
    v238 = sub_1B0E44838();
    v239 = v53;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v333 = v403;
    v330 = v238;
    v331 = v239;
    sub_1B070B280(&v333, &v332);
    if (v331)
    {
      sub_1B070B280(&v330, v329);
      if (*(&v332 + 1))
      {
        v234 = &v328;
        v328 = v332;
        v235 = v329;
        v236 = MEMORY[0x1B2726DE0](v329[0], v329[1], v332, *(&v332 + 1));
        sub_1B03B1198(v234);
        sub_1B03B1198(v235);
        sub_1B03B1198(&v330);
        v237 = v236;
LABEL_42:
        v233 = v237;

        if (v233)
        {
          sub_1B03B1198(&v403);
          v396 = 6;
          v232 = 6;
LABEL_271:
          v240 = v232;
          goto LABEL_272;
        }

        sub_1B03B1198(&v403);
LABEL_47:
        sub_1B07B4718(v283, &v381);
        memcpy(v400, v283, sizeof(v400));
        if (v400[32] != 4)
        {
          sub_1B07AD0E0(v283);
          goto LABEL_60;
        }

        v401 = v277[33];
        v230 = sub_1B0E44838();
        v231 = v54;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v339 = v401;
        v336 = v230;
        v337 = v231;
        sub_1B070B280(&v339, &v338);
        if (v337)
        {
          sub_1B070B280(&v336, v335);
          if (*(&v338 + 1))
          {
            v226 = &v334;
            v334 = v338;
            v227 = v335;
            v228 = MEMORY[0x1B2726DE0](v335[0], v335[1], v338, *(&v338 + 1));
            sub_1B03B1198(v226);
            sub_1B03B1198(v227);
            sub_1B03B1198(&v336);
            v229 = v228;
LABEL_55:
            v225 = v229;

            if (v225)
            {
              sub_1B03B1198(&v401);
              v396 = 6;
              v224 = 6;
LABEL_270:
              v232 = v224;
              goto LABEL_271;
            }

            sub_1B03B1198(&v401);
LABEL_60:
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v327)
            {
              v222 = v326;
              v223 = v327;
              v220 = v327;
              v214 = v326;
              v340 = v326;
              v341 = v327;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v215 = sub_1B0E44AC8();
              v219 = [v215 pathExtension];
              v216 = sub_1B0E44AD8();
              v218 = v55;
              MEMORY[0x1E69E5920](v215);
              v56 = sub_1B0E44838();
              v217 = v57;
              v221 = MEMORY[0x1B2726DE0](v216, v218, v56);

              MEMORY[0x1E69E5920](v219);

              if (v221)
              {
                v396 = 6;

                v213 = 6;
LABEL_269:
                v224 = v213;
                goto LABEL_270;
              }
            }

            sub_1B07B4718(v283, &v380);
            memcpy(v398, v283, sizeof(v398));
            if (v398[32] != 5)
            {
              sub_1B07AD0E0(v283);
              goto LABEL_79;
            }

            v399 = v277[29];
            v211 = sub_1B0E44838();
            v212 = v58;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v347 = v399;
            v344 = v211;
            v345 = v212;
            sub_1B070B280(&v347, &v346);
            if (v345)
            {
              sub_1B070B280(&v344, v343);
              if (*(&v346 + 1))
              {
                v207 = &v342;
                v342 = v346;
                v208 = v343;
                v209 = MEMORY[0x1B2726DE0](v343[0], v343[1], v346, *(&v346 + 1));
                sub_1B03B1198(v207);
                sub_1B03B1198(v208);
                sub_1B03B1198(&v344);
                v210 = v209;
LABEL_74:
                v206 = v210;

                if (v206)
                {
                  sub_1B03B1198(&v399);
                  v396 = 12;
                  v205 = 12;
LABEL_268:
                  v213 = v205;
                  goto LABEL_269;
                }

                sub_1B03B1198(&v399);
LABEL_79:
                sub_1B0A684D8(v324, v316);
                if (v254(v316, 1, v278) == 1)
                {
                  sub_1B075D100(v316);
                  v204 = 2;
                }

                else
                {
                  sub_1B0E43748();
                  v203 = sub_1B0E43738();
                  v202 = *(v279 + 8);
                  v201 = v279 + 8;
                  v202(v282, v278);
                  v202(v316, v278);
                  v204 = v203 & 1;
                }

                v379 = v204;
                if (v204 == 2)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = v379;
                }

                if (v200)
                {
                  v396 = 19;
                  v199 = 19;
LABEL_267:
                  v205 = v199;
                  goto LABEL_268;
                }

                sub_1B0A684D8(v324, v314);
                if (v254(v314, 1, v278) == 1)
                {
                  sub_1B075D100(v314);
                  v198 = 2;
                }

                else
                {
                  sub_1B0E43618();
                  v197 = sub_1B0E43738();
                  v196 = *(v279 + 8);
                  v195 = v279 + 8;
                  v196(v282, v278);
                  v196(v314, v278);
                  v198 = v197 & 1;
                }

                v378 = v198;
                if (v198 == 2)
                {
                  v194 = 0;
                }

                else
                {
                  v194 = v378;
                }

                if (v194)
                {
                  v396 = 19;
                  v193 = 19;
LABEL_266:
                  v199 = v193;
                  goto LABEL_267;
                }

                sub_1B0A684D8(v324, v312);
                if (v254(v312, 1, v278) == 1)
                {
                  sub_1B075D100(v312);
                  v192 = 2;
                }

                else
                {
                  sub_1B0E436B8();
                  v191 = sub_1B0E43738();
                  v190 = *(v279 + 8);
                  v189 = v279 + 8;
                  v190(v282, v278);
                  v190(v312, v278);
                  v192 = v191 & 1;
                }

                v377 = v192;
                if (v192 == 2)
                {
                  v188 = 0;
                }

                else
                {
                  v188 = v377;
                }

                if (v188)
                {
                  v396 = 9;
                  v187 = 9;
LABEL_265:
                  v193 = v187;
                  goto LABEL_266;
                }

                sub_1B0A684D8(v324, v310);
                if (v254(v310, 1, v278) == 1)
                {
                  sub_1B075D100(v310);
                  v186 = 2;
                }

                else
                {
                  sub_1B0E43648();
                  v185 = sub_1B0E43738();
                  v184 = *(v279 + 8);
                  v183 = v279 + 8;
                  v184(v282, v278);
                  v184(v310, v278);
                  v186 = v185 & 1;
                }

                v376 = v186;
                if (v186 == 2)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = v376;
                }

                if (v182)
                {
                  v396 = 10;
                  v181 = 10;
LABEL_264:
                  v187 = v181;
                  goto LABEL_265;
                }

                sub_1B0A684D8(v324, v308);
                if (v254(v308, 1, v278) == 1)
                {
                  sub_1B075D100(v308);
                  v180 = 2;
                }

                else
                {
                  sub_1B0E436F8();
                  v179 = sub_1B0E43738();
                  v178 = *(v279 + 8);
                  v177 = v279 + 8;
                  v178(v282, v278);
                  v178(v308, v278);
                  v180 = v179 & 1;
                }

                v375 = v180;
                if (v180 == 2)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = v375;
                }

                if (v176)
                {
                  v396 = 15;
                  v175 = 15;
LABEL_263:
                  v181 = v175;
                  goto LABEL_264;
                }

                sub_1B0A684D8(v324, v306);
                if (v254(v306, 1, v278) == 1)
                {
                  sub_1B075D100(v306);
                  v174 = 2;
                }

                else
                {
                  sub_1B0E43708();
                  v173 = sub_1B0E43738();
                  v172 = *(v279 + 8);
                  v171 = v279 + 8;
                  v172(v282, v278);
                  v172(v306, v278);
                  v174 = v173 & 1;
                }

                v374 = v174;
                if (v174 == 2)
                {
                  v170 = 0;
                }

                else
                {
                  v170 = v374;
                }

                if (v170)
                {
                  v396 = 3;
                  v169 = 3;
LABEL_262:
                  v175 = v169;
                  goto LABEL_263;
                }

                sub_1B0A684D8(v324, v304);
                if (v254(v304, 1, v278) == 1)
                {
                  sub_1B075D100(v304);
                  v168 = 2;
                }

                else
                {
                  sub_1B0E436C8();
                  v167 = sub_1B0E43738();
                  v166 = *(v279 + 8);
                  v165 = v279 + 8;
                  v166(v282, v278);
                  v166(v304, v278);
                  v168 = v167 & 1;
                }

                v373 = v168;
                if (v168 == 2)
                {
                  v164 = 0;
                }

                else
                {
                  v164 = v373;
                }

                if (v164)
                {
                  v396 = 14;
                  v163 = 14;
LABEL_261:
                  v169 = v163;
                  goto LABEL_262;
                }

                sub_1B0A684D8(v324, v302);
                if (v254(v302, 1, v278) == 1)
                {
                  sub_1B075D100(v302);
                  v162 = 2;
                }

                else
                {
                  sub_1B0E436E8();
                  v161 = sub_1B0E43738();
                  v160 = *(v279 + 8);
                  v159 = v279 + 8;
                  v160(v282, v278);
                  v160(v302, v278);
                  v162 = v161 & 1;
                }

                v372 = v162;
                if (v162 == 2)
                {
                  v158 = 0;
                }

                else
                {
                  v158 = v372;
                }

                if (v158)
                {
                  v396 = 14;
                  v157 = 14;
LABEL_260:
                  v163 = v157;
                  goto LABEL_261;
                }

                sub_1B0A684D8(v324, v300);
                if (v254(v300, 1, v278) == 1)
                {
                  sub_1B075D100(v300);
                  v156 = 2;
                }

                else
                {
                  sub_1B0E43688();
                  v155 = sub_1B0E43738();
                  v154 = *(v279 + 8);
                  v153 = v279 + 8;
                  v154(v282, v278);
                  v154(v300, v278);
                  v156 = v155 & 1;
                }

                v371 = v156;
                if (v156 == 2)
                {
                  v152 = 0;
                }

                else
                {
                  v152 = v371;
                }

                if (v152)
                {
                  v396 = 14;
                  v151 = 14;
LABEL_259:
                  v157 = v151;
                  goto LABEL_260;
                }

                v59 = sub_1B0A688DC(v283);
                if (v59)
                {
                  v396 = 16;
                  v150 = 16;
LABEL_258:
                  v151 = v150;
                  goto LABEL_259;
                }

                if (sub_1B0A69000(v283))
                {
                  v396 = 17;
                  v149 = 17;
LABEL_257:
                  v150 = v149;
                  goto LABEL_258;
                }

                if (sub_1B0A699CC(v283))
                {
                  v396 = 18;
                  v148 = 18;
LABEL_256:
                  v149 = v148;
                  goto LABEL_257;
                }

                sub_1B0A684D8(v324, v298);
                if (v254(v298, 1, v278) == 1)
                {
                  sub_1B075D100(v298);
                  v147 = 2;
                }

                else
                {
                  sub_1B0E43628();
                  v146 = sub_1B0E43738();
                  v145 = *(v279 + 8);
                  v144 = v279 + 8;
                  v145(v282, v278);
                  v145(v298, v278);
                  v147 = v146 & 1;
                }

                v370 = v147;
                if (v147 == 2)
                {
                  v143 = 0;
                }

                else
                {
                  v143 = v370;
                }

                if (v143)
                {
                  v396 = 11;
                  v142 = 11;
LABEL_255:
                  v148 = v142;
                  goto LABEL_256;
                }

                sub_1B0A684D8(v324, v296);
                if (v254(v296, 1, v278) == 1)
                {
                  sub_1B075D100(v296);
                  v140 = 0;
                  v141 = 0;
                }

                else
                {
                  v138 = sub_1B0E43608();
                  v139 = v60;
                  (*(v279 + 8))(v296, v278);
                  v140 = v138;
                  v141 = v139;
                }

                v136 = v141;
                v135 = v140;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v134 = sub_1B0E44838();
                v137 = v61;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v368[0] = v135;
                v368[1] = v136;
                v368[2] = v134;
                v369 = v137;
                if (v136)
                {
                  sub_1B070B280(v368, &v350);
                  if (v369)
                  {
                    v131 = &v349;
                    v349 = v350;
                    v62 = v277[9];
                    v130 = &v348;
                    v348 = v62;
                    v132 = MEMORY[0x1B2726DE0](v350, *(&v350 + 1), v62, *(&v62 + 1));
                    sub_1B03B1198(v130);
                    sub_1B03B1198(v131);
                    sub_1B03B1198(v368);
                    v133 = v132;
                    goto LABEL_184;
                  }

                  sub_1B03B1198(&v350);
                }

                else if (!v369)
                {
                  sub_1B03B1198(v368);
                  v133 = 1;
LABEL_184:
                  v129 = v133;

                  if (v129)
                  {
                    v396 = 2;
                    v128 = 2;
LABEL_254:
                    v142 = v128;
                    goto LABEL_255;
                  }

                  sub_1B0A684D8(v324, v294);
                  if (v254(v294, 1, v278) == 1)
                  {
                    sub_1B075D100(v294);
                    v126 = 0;
                    v127 = 0;
                  }

                  else
                  {
                    v124 = sub_1B0E43608();
                    v125 = v63;
                    (*(v279 + 8))(v294, v278);
                    v126 = v124;
                    v127 = v125;
                  }

                  v122 = v127;
                  v121 = v126;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v120 = sub_1B0E44838();
                  v123 = v64;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v366[0] = v121;
                  v366[1] = v122;
                  v366[2] = v120;
                  v367 = v123;
                  if (v122)
                  {
                    sub_1B070B280(v366, &v353);
                    if (v367)
                    {
                      v117 = &v352;
                      v352 = v353;
                      v65 = v277[7];
                      v116 = &v351;
                      v351 = v65;
                      v118 = MEMORY[0x1B2726DE0](v353, *(&v353 + 1), v65, *(&v65 + 1));
                      sub_1B03B1198(v116);
                      sub_1B03B1198(v117);
                      sub_1B03B1198(v366);
                      v119 = v118;
                      goto LABEL_198;
                    }

                    sub_1B03B1198(&v353);
                  }

                  else if (!v367)
                  {
                    sub_1B03B1198(v366);
                    v119 = 1;
LABEL_198:
                    v115 = v119;

                    if (v115)
                    {
                      v396 = 2;
                      v114 = 2;
LABEL_253:
                      v128 = v114;
                      goto LABEL_254;
                    }

                    sub_1B0A684D8(v324, v292);
                    if (v254(v292, 1, v278) == 1)
                    {
                      sub_1B075D100(v292);
                      v113 = 2;
                    }

                    else
                    {
                      sub_1B0E43718();
                      v112 = sub_1B0E43738();
                      v111 = *(v279 + 8);
                      v110 = v279 + 8;
                      v111(v282, v278);
                      v111(v292, v278);
                      v113 = v112 & 1;
                    }

                    v365 = v113;
                    if (v113 == 2)
                    {
                      v109 = 0;
                    }

                    else
                    {
                      v109 = v365;
                    }

                    if (v109)
                    {
                      v396 = 7;
                      v108 = 7;
LABEL_252:
                      v114 = v108;
                      goto LABEL_253;
                    }

                    sub_1B0A684D8(v324, v290);
                    if (v254(v290, 1, v278) == 1)
                    {
                      sub_1B075D100(v290);
                      v106 = 0;
                      v107 = 0;
                    }

                    else
                    {
                      v104 = sub_1B0E43608();
                      v105 = v66;
                      (*(v279 + 8))(v290, v278);
                      v106 = v104;
                      v107 = v105;
                    }

                    v102 = v107;
                    v101 = v106;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v100 = sub_1B0E44838();
                    v103 = v67;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v363[0] = v101;
                    v363[1] = v102;
                    *&v364 = v100;
                    *(&v364 + 1) = v103;
                    if (v102)
                    {
                      sub_1B070B280(v363, &v356);
                      if (*(&v364 + 1))
                      {
                        v97 = &v355;
                        v355 = v356;
                        v96 = &v354;
                        v354 = v364;
                        v98 = MEMORY[0x1B2726DE0](v356, *(&v356 + 1), v364, *(&v364 + 1));
                        sub_1B03B1198(v96);
                        sub_1B03B1198(v97);
                        sub_1B03B1198(v363);
                        v99 = v98;
                        goto LABEL_221;
                      }

                      sub_1B03B1198(&v356);
                    }

                    else if (!*(&v364 + 1))
                    {
                      sub_1B03B1198(v363);
                      v99 = 1;
LABEL_221:
                      v95 = v99;

                      if (v95)
                      {
                        v396 = 20;
                        v94 = 20;
LABEL_251:
                        v108 = v94;
                        goto LABEL_252;
                      }

                      sub_1B0A684D8(v324, v288);
                      if (v254(v288, 1, v278) == 1)
                      {
                        sub_1B075D100(v288);
                        v92 = 0;
                        v93 = 0;
                      }

                      else
                      {
                        v90 = sub_1B0E43608();
                        v91 = v68;
                        (*(v279 + 8))(v288, v278);
                        v92 = v90;
                        v93 = v91;
                      }

                      v88 = v93;
                      v87 = v92;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v86 = sub_1B0E44838();
                      v89 = v69;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v361[0] = v87;
                      v361[1] = v88;
                      *&v362 = v86;
                      *(&v362 + 1) = v89;
                      if (v88)
                      {
                        sub_1B070B280(v361, v359);
                        if (*(&v362 + 1))
                        {
                          v70 = *v277;
                          v83 = &v358;
                          v358 = v70;
                          v82 = &v357;
                          v357 = v362;
                          v84 = MEMORY[0x1B2726DE0](v70, *(&v70 + 1), v362, *(&v362 + 1));
                          sub_1B03B1198(v82);
                          sub_1B03B1198(v83);
                          sub_1B03B1198(v361);
                          v85 = v84;
LABEL_235:
                          v81 = v85;

                          if (v81)
                          {
                            v396 = 22;
                            v80 = 22;
                          }

                          else
                          {
                            sub_1B0A684D8(v324, v286);
                            if (v254(v286, 1, v278) == 1)
                            {
                              sub_1B075D100(v286);
                              v79 = 2;
                            }

                            else
                            {
                              sub_1B0E43778();
                              v78 = sub_1B0E43738();
                              v77 = *(v279 + 8);
                              v76 = v279 + 8;
                              v77(v282, v278);
                              v77(v286, v278);
                              v79 = v78 & 1;
                            }

                            v360 = v79;
                            if (v79 == 2)
                            {
                              v75 = 0;
                            }

                            else
                            {
                              v75 = v360;
                            }

                            if (v75)
                            {
                              v396 = 8;
                              v74 = 8;
                            }

                            else
                            {
                              v396 = 0;
                              v74 = 0;
                            }

                            v80 = v74;
                          }

                          v94 = v80;
                          goto LABEL_251;
                        }

                        sub_1B03B1198(v359);
                      }

                      else if (!*(&v362 + 1))
                      {
                        sub_1B03B1198(v361);
                        v85 = 1;
                        goto LABEL_235;
                      }

                      sub_1B06FF6F0(v361);
                      v85 = 0;
                      goto LABEL_235;
                    }

                    sub_1B06FF6F0(v363);
                    v99 = 0;
                    goto LABEL_221;
                  }

                  sub_1B06FF6F0(v366);
                  v119 = 0;
                  goto LABEL_198;
                }

                sub_1B06FF6F0(v368);
                v133 = 0;
                goto LABEL_184;
              }

              sub_1B03B1198(v343);
            }

            else if (!*(&v346 + 1))
            {
              sub_1B03B1198(&v344);
              v210 = 1;
              goto LABEL_74;
            }

            sub_1B06FF6F0(&v344);
            v210 = 0;
            goto LABEL_74;
          }

          sub_1B03B1198(v335);
        }

        else if (!*(&v338 + 1))
        {
          sub_1B03B1198(&v336);
          v229 = 1;
          goto LABEL_55;
        }

        sub_1B06FF6F0(&v336);
        v229 = 0;
        goto LABEL_55;
      }

      sub_1B03B1198(v329);
    }

    else if (!*(&v332 + 1))
    {
      sub_1B03B1198(&v330);
      v237 = 1;
      goto LABEL_42;
    }

    sub_1B06FF6F0(&v330);
    v237 = 0;
    goto LABEL_42;
  }

  v396 = 1;
  v256 = 1;
LABEL_276:
  v73 = v256;
  sub_1B075D100(v324);

  sub_1B07AD0E0(v283);
  return v73;
}

unint64_t sub_1B0A68338()
{
  v2 = qword_1EB6E3BF8;
  if (!qword_1EB6E3BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BF8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A683B0(const void *a1, void *a2)
{
  v6 = sub_1B0E43788();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B0A684D8(const void *a1, void *a2)
{
  v6 = sub_1B0E43788();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0A68600(uint64_t *a1)
{
  v12 = a1;
  memcpy(__dst, a1 + 1, sizeof(__dst));
  sub_1B0A6A0F0(__dst, v11);
  memcpy(v15, __dst, 0x21uLL);
  sub_1B07B4718(v15, v10);
  sub_1B0A6A18C(__dst);
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  sub_1B08C50F0(v3, v4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = ContentDisposition.filename.getter(v3, v4, v5);
  v7 = v1;
  sub_1B08C512C(v3, v4);

  v9 = sub_1B0A658C8(v15, v6, v7);
  v13 = v9;
  sub_1B08C5168(a1);
  return v9;
}

uint64_t sub_1B0A68708(const void *a1)
{
  v13 = a1;
  v6 = [objc_opt_self() audiovisualMIMETypes];
  v12 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v6);
  v11[2] = v12;
  v11[0] = sub_1B0E46A28();
  v11[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0A68338();
  sub_1B0E469F8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v11);
  v9[0] = sub_1B0E44C88();
  v9[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B06E3764();
  v8 = sub_1B0E450A8();
  sub_1B03B1198(v9);

  return v8 & 1;
}

uint64_t sub_1B0A688DC(void *__src)
{
  v61[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_57;
  }

  v63 = *__dst;
  sub_1B070B280(&v63, v61);
  v26 = sub_1B0E44838();
  v27 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v63;
  v58[0] = v26;
  v58[1] = v27;
  sub_1B070B280(&v60, &v59);
  if (v27)
  {
    sub_1B070B280(v58, v29);
    if (*(&v59 + 1))
    {
      v28 = v59;
      v24 = MEMORY[0x1B2726DE0](v29[0], v29[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v28);
      sub_1B03B1198(v29);
      sub_1B03B1198(v58);
      v25 = v24;
      goto LABEL_8;
    }

    sub_1B03B1198(v29);
    goto LABEL_10;
  }

  if (*(&v59 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v58);
    v25 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v58);
  v25 = 1;
LABEL_8:

  if (v25)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v57);
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = v63;
  v53 = v22;
  v54 = v23;
  sub_1B070B280(&v56, &v55);
  if (v54)
  {
    sub_1B070B280(&v53, v31);
    if (*(&v55 + 1))
    {
      v30 = v55;
      v20 = MEMORY[0x1B2726DE0](v31[0], v31[1], v55, *(&v55 + 1));
      sub_1B03B1198(&v30);
      sub_1B03B1198(v31);
      sub_1B03B1198(&v53);
      v21 = v20;
      goto LABEL_19;
    }

    sub_1B03B1198(v31);
    goto LABEL_21;
  }

  if (*(&v55 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v53);
    v21 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v53);
  v21 = 1;
LABEL_19:

  if (v21)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v52);
  v18 = sub_1B0E44838();
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = v63;
  v48 = v18;
  v49 = v19;
  sub_1B070B280(&v51, &v50);
  if (v49)
  {
    sub_1B070B280(&v48, v33);
    if (*(&v50 + 1))
    {
      v32 = v50;
      v16 = MEMORY[0x1B2726DE0](v33[0], v33[1], v50, *(&v50 + 1));
      sub_1B03B1198(&v32);
      sub_1B03B1198(v33);
      sub_1B03B1198(&v48);
      v17 = v16;
      goto LABEL_30;
    }

    sub_1B03B1198(v33);
    goto LABEL_32;
  }

  if (*(&v50 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v48);
    v17 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v48);
  v17 = 1;
LABEL_30:

  if (v17)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v47);
  v14 = sub_1B0E44838();
  v15 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v63;
  v43 = v14;
  v44 = v15;
  sub_1B070B280(&v46, &v45);
  if (v44)
  {
    sub_1B070B280(&v43, v35);
    if (*(&v45 + 1))
    {
      v34 = v45;
      v12 = MEMORY[0x1B2726DE0](v35[0], v35[1], v45, *(&v45 + 1));
      sub_1B03B1198(&v34);
      sub_1B03B1198(v35);
      sub_1B03B1198(&v43);
      v13 = v12;
      goto LABEL_41;
    }

    sub_1B03B1198(v35);
    goto LABEL_43;
  }

  if (*(&v45 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v43);
    v13 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v43);
  v13 = 1;
LABEL_41:

  if (v13)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v42);
  v10 = sub_1B0E44838();
  v11 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v63;
  v38 = v10;
  v39 = v11;
  sub_1B070B280(&v41, &v40);
  if (v39)
  {
    sub_1B070B280(&v38, v37);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v8 = MEMORY[0x1B2726DE0](v37[0], v37[1], v40, *(&v40 + 1));
      sub_1B03B1198(&v36);
      sub_1B03B1198(v37);
      sub_1B03B1198(&v38);
      v9 = v8;
      goto LABEL_52;
    }

    sub_1B03B1198(v37);
    goto LABEL_54;
  }

  if (*(&v40 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v38);
    v9 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v38);
  v9 = 1;
LABEL_52:

  if ((v9 & 1) == 0)
  {
    sub_1B03B1198(&v63);
LABEL_57:
    v7 = 0;
    return v7 & 1;
  }

LABEL_56:
  sub_1B03B1198(&v63);
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B0A69000(void *__src)
{
  v85[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_79;
  }

  v87 = *__dst;
  sub_1B070B280(&v87, v85);
  v36 = sub_1B0E44838();
  v37 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v84 = v87;
  v82[0] = v36;
  v82[1] = v37;
  sub_1B070B280(&v84, &v83);
  if (v37)
  {
    sub_1B070B280(v82, v39);
    if (*(&v83 + 1))
    {
      v38 = v83;
      v34 = MEMORY[0x1B2726DE0](v39[0], v39[1], v83, *(&v83 + 1));
      sub_1B03B1198(&v38);
      sub_1B03B1198(v39);
      sub_1B03B1198(v82);
      v35 = v34;
      goto LABEL_8;
    }

    sub_1B03B1198(v39);
    goto LABEL_10;
  }

  if (*(&v83 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v82);
    v35 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v82);
  v35 = 1;
LABEL_8:

  if (v35)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v81);
  v32 = sub_1B0E44838();
  v33 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v80 = v87;
  v77 = v32;
  v78 = v33;
  sub_1B070B280(&v80, &v79);
  if (v78)
  {
    sub_1B070B280(&v77, v41);
    if (*(&v79 + 1))
    {
      v40 = v79;
      v30 = MEMORY[0x1B2726DE0](v41[0], v41[1], v79, *(&v79 + 1));
      sub_1B03B1198(&v40);
      sub_1B03B1198(v41);
      sub_1B03B1198(&v77);
      v31 = v30;
      goto LABEL_19;
    }

    sub_1B03B1198(v41);
    goto LABEL_21;
  }

  if (*(&v79 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v77);
    v31 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v77);
  v31 = 1;
LABEL_19:

  if (v31)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v76);
  v28 = sub_1B0E44838();
  v29 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v87;
  v72 = v28;
  v73 = v29;
  sub_1B070B280(&v75, &v74);
  if (v73)
  {
    sub_1B070B280(&v72, v43);
    if (*(&v74 + 1))
    {
      v42 = v74;
      v26 = MEMORY[0x1B2726DE0](v43[0], v43[1], v74, *(&v74 + 1));
      sub_1B03B1198(&v42);
      sub_1B03B1198(v43);
      sub_1B03B1198(&v72);
      v27 = v26;
      goto LABEL_30;
    }

    sub_1B03B1198(v43);
    goto LABEL_32;
  }

  if (*(&v74 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v72);
    v27 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v72);
  v27 = 1;
LABEL_30:

  if (v27)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v71);
  v24 = sub_1B0E44838();
  v25 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v70 = v87;
  v67 = v24;
  v68 = v25;
  sub_1B070B280(&v70, &v69);
  if (v68)
  {
    sub_1B070B280(&v67, v45);
    if (*(&v69 + 1))
    {
      v44 = v69;
      v22 = MEMORY[0x1B2726DE0](v45[0], v45[1], v69, *(&v69 + 1));
      sub_1B03B1198(&v44);
      sub_1B03B1198(v45);
      sub_1B03B1198(&v67);
      v23 = v22;
      goto LABEL_41;
    }

    sub_1B03B1198(v45);
    goto LABEL_43;
  }

  if (*(&v69 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v67);
    v23 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v67);
  v23 = 1;
LABEL_41:

  if (v23)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v66);
  v20 = sub_1B0E44838();
  v21 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v65 = v87;
  v62 = v20;
  v63 = v21;
  sub_1B070B280(&v65, &v64);
  if (v63)
  {
    sub_1B070B280(&v62, v47);
    if (*(&v64 + 1))
    {
      v46 = v64;
      v18 = MEMORY[0x1B2726DE0](v47[0], v47[1], v64, *(&v64 + 1));
      sub_1B03B1198(&v46);
      sub_1B03B1198(v47);
      sub_1B03B1198(&v62);
      v19 = v18;
      goto LABEL_52;
    }

    sub_1B03B1198(v47);
    goto LABEL_54;
  }

  if (*(&v64 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v62);
    v19 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v62);
  v19 = 1;
LABEL_52:

  if (v19)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v61);
  v16 = sub_1B0E44838();
  v17 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v87;
  v57 = v16;
  v58 = v17;
  sub_1B070B280(&v60, &v59);
  if (v58)
  {
    sub_1B070B280(&v57, v49);
    if (*(&v59 + 1))
    {
      v48 = v59;
      v14 = MEMORY[0x1B2726DE0](v49[0], v49[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v48);
      sub_1B03B1198(v49);
      sub_1B03B1198(&v57);
      v15 = v14;
      goto LABEL_63;
    }

    sub_1B03B1198(v49);
    goto LABEL_65;
  }

  if (*(&v59 + 1))
  {
LABEL_65:
    sub_1B06FF6F0(&v57);
    v15 = 0;
    goto LABEL_63;
  }

  sub_1B03B1198(&v57);
  v15 = 1;
LABEL_63:

  if (v15)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v56);
  v12 = sub_1B0E44838();
  v13 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v87;
  v52 = v12;
  v53 = v13;
  sub_1B070B280(&v55, &v54);
  if (v53)
  {
    sub_1B070B280(&v52, v51);
    if (*(&v54 + 1))
    {
      v50 = v54;
      v10 = MEMORY[0x1B2726DE0](v51[0], v51[1], v54, *(&v54 + 1));
      sub_1B03B1198(&v50);
      sub_1B03B1198(v51);
      sub_1B03B1198(&v52);
      v11 = v10;
      goto LABEL_74;
    }

    sub_1B03B1198(v51);
    goto LABEL_76;
  }

  if (*(&v54 + 1))
  {
LABEL_76:
    sub_1B06FF6F0(&v52);
    v11 = 0;
    goto LABEL_74;
  }

  sub_1B03B1198(&v52);
  v11 = 1;
LABEL_74:

  if ((v11 & 1) == 0)
  {
    sub_1B03B1198(&v87);
LABEL_79:
    v9 = 0;
    return v9 & 1;
  }

LABEL_78:
  sub_1B03B1198(&v87);
  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1B0A699CC(void *__src)
{
  v61[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_57;
  }

  v63 = *__dst;
  sub_1B070B280(&v63, v61);
  v26 = sub_1B0E44838();
  v27 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v63;
  v58[0] = v26;
  v58[1] = v27;
  sub_1B070B280(&v60, &v59);
  if (v27)
  {
    sub_1B070B280(v58, v29);
    if (*(&v59 + 1))
    {
      v28 = v59;
      v24 = MEMORY[0x1B2726DE0](v29[0], v29[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v28);
      sub_1B03B1198(v29);
      sub_1B03B1198(v58);
      v25 = v24;
      goto LABEL_8;
    }

    sub_1B03B1198(v29);
    goto LABEL_10;
  }

  if (*(&v59 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v58);
    v25 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v58);
  v25 = 1;
LABEL_8:

  if (v25)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v57);
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = v63;
  v53 = v22;
  v54 = v23;
  sub_1B070B280(&v56, &v55);
  if (v54)
  {
    sub_1B070B280(&v53, v31);
    if (*(&v55 + 1))
    {
      v30 = v55;
      v20 = MEMORY[0x1B2726DE0](v31[0], v31[1], v55, *(&v55 + 1));
      sub_1B03B1198(&v30);
      sub_1B03B1198(v31);
      sub_1B03B1198(&v53);
      v21 = v20;
      goto LABEL_19;
    }

    sub_1B03B1198(v31);
    goto LABEL_21;
  }

  if (*(&v55 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v53);
    v21 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v53);
  v21 = 1;
LABEL_19:

  if (v21)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v52);
  v18 = sub_1B0E44838();
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = v63;
  v48 = v18;
  v49 = v19;
  sub_1B070B280(&v51, &v50);
  if (v49)
  {
    sub_1B070B280(&v48, v33);
    if (*(&v50 + 1))
    {
      v32 = v50;
      v16 = MEMORY[0x1B2726DE0](v33[0], v33[1], v50, *(&v50 + 1));
      sub_1B03B1198(&v32);
      sub_1B03B1198(v33);
      sub_1B03B1198(&v48);
      v17 = v16;
      goto LABEL_30;
    }

    sub_1B03B1198(v33);
    goto LABEL_32;
  }

  if (*(&v50 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v48);
    v17 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v48);
  v17 = 1;
LABEL_30:

  if (v17)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v47);
  v14 = sub_1B0E44838();
  v15 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v63;
  v43 = v14;
  v44 = v15;
  sub_1B070B280(&v46, &v45);
  if (v44)
  {
    sub_1B070B280(&v43, v35);
    if (*(&v45 + 1))
    {
      v34 = v45;
      v12 = MEMORY[0x1B2726DE0](v35[0], v35[1], v45, *(&v45 + 1));
      sub_1B03B1198(&v34);
      sub_1B03B1198(v35);
      sub_1B03B1198(&v43);
      v13 = v12;
      goto LABEL_41;
    }

    sub_1B03B1198(v35);
    goto LABEL_43;
  }

  if (*(&v45 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v43);
    v13 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v43);
  v13 = 1;
LABEL_41:

  if (v13)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v42);
  v10 = sub_1B0E44838();
  v11 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v63;
  v38 = v10;
  v39 = v11;
  sub_1B070B280(&v41, &v40);
  if (v39)
  {
    sub_1B070B280(&v38, v37);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v8 = MEMORY[0x1B2726DE0](v37[0], v37[1], v40, *(&v40 + 1));
      sub_1B03B1198(&v36);
      sub_1B03B1198(v37);
      sub_1B03B1198(&v38);
      v9 = v8;
      goto LABEL_52;
    }

    sub_1B03B1198(v37);
    goto LABEL_54;
  }

  if (*(&v40 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v38);
    v9 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v38);
  v9 = 1;
LABEL_52:

  if ((v9 & 1) == 0)
  {
    sub_1B03B1198(&v63);
LABEL_57:
    v7 = 0;
    return v7 & 1;
  }

LABEL_56:
  sub_1B03B1198(&v63);
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B0A6A0F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B07ACBF8(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  v10 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1B0A6A18C(uint64_t a1)
{
  sub_1B07ACE18(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v1 = *(a1 + 40);

  return a1;
}

uint64_t sub_1B0A6A1EC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 22) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 233;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 23;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B0A6A354(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE9)
  {
    v5 = ((a3 + 22) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE9)
  {
    v4 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

unint64_t sub_1B0A6A57C()
{
  v2 = qword_1EB6E3C00;
  if (!qword_1EB6E3C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C00);
    return WitnessTable;
  }

  return v2;
}

id sub_1B0A6A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1B0E44AC8();
  if (a3)
  {
    type metadata accessor for Key();
    sub_1B0694878();
    v5 = sub_1B0E44598();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v7 initWithString:v9 attributes:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v9);

  return v4;
}

uint64_t sub_1B0A6A714(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *a2;
  v7 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0A6B184(a1, v6, v7);
  v9 = v2;
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v11;
  v13 = v9;
  v14 = v10;
  sub_1B08F533C(a2);
  sub_1B039E440(&v12);
  return v11;
}

uint64_t sub_1B0A6A7C8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = a1;
  v6 = a2;

  sub_1B03B1198(&v5);
  return a1;
}

uint64_t sub_1B0A6A84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v19 = a3;
  v17 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = *v3;
  v16[0] = a1;
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v16);
  if (v16[2])
  {
    return v16[1];
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = a2;
  v13 = a3;
  if (a3)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = sub_1B0A6AB98();
    v15 = v4;
  }

  v6 = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C08, &qword_1B0EA3F28);
  sub_1B0E44788();
  return v6;
}

uint64_t sub_1B0A6AAA4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B0A6AA48();
}

uint64_t sub_1B0A6AAC4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C10, &qword_1B0EA3F30);
  sub_1B0E46A48();
  sub_1B07167A8();
  v6 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = v6;
  v8 = PCG32Random.init(state:inc:)(a1, a2);
  v9 = v2;
  sub_1B039E440(&v7);
  return v6;
}

uint64_t sub_1B0A6AB98()
{
  v13 = 0;
  v10 = sub_1B0E43158();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v13 = v0;
  v1 = sub_1B0714728();
  sub_1B0A6AC9C(v6 + 8, &type metadata for PCG32Random, v1);
  v11 = sub_1B0E43128();
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return sub_1B0A6A7C8(v11, v12);
}

uint64_t sub_1B0A6AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v12 = a1;
  v11 = 0uLL;
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C18, &qword_1B0EA3F38);
  sub_1B03B0BBC(&v11, sub_1B0A6BD38, v6, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v5, v5);
  v10 = v11;
  return sub_1B0E43138();
}

void *sub_1B0A6AE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v39, __dst, sizeof(v39));
  v30 = a1;
  memcpy(v32, __src, sizeof(v32));
  v18 = sub_1B08C4EF0(v32);
  if (!v18)
  {
    v2 = sub_1B08C4F00(v32);
    v33 = *v2;
    v34 = *(v2 + 16);
LABEL_6:
    sub_1B0A6BD78(__src, v19);
    memcpy(v38, v39, sizeof(v38));
    return memcpy(a2, v38, 0x80uLL);
  }

  if (v18 == 1)
  {
    v35 = *sub_1B08C4F00(v32);
    goto LABEL_6;
  }

  v3 = sub_1B08C4F00(v32);
  memcpy(v36, v3, sizeof(v36));
  sub_1B08C4F88(v36, v28);
  v37 = v36[5];
  sub_1B070B280(&v37, &v27);
  memcpy(__b, v36, sizeof(__b));
  v26 = v37;
  v14 = v37.n128_u64[1] == 0;
  sub_1B03B1198(&v26);
  if (v14)
  {
    v10 = __b[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = __b[10];
    v12 = __b[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23[0] = v11;
    v23[1] = v12;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B03F1A20(sub_1B0A654A4, 0, v4, MEMORY[0x1E69E73E0], &unk_1F270F528, v13, v24);
    sub_1B03B1198(v23);
    v8 = sub_1B0A6A84C(v10, v24[0], v24[1]);
    v9 = v5;

    __b[10] = sub_1B0A6A7C8(v8, v9);
    __b[11] = v6;

    memcpy(v21, __b, sizeof(v21));
    sub_1B08C4F88(v21, v20);
    memcpy(v22, v21, sizeof(v22));
    sub_1B0A6BFC0(v22);
    sub_1B08C5168(__b);
    memcpy(v38, v22, sizeof(v38));
  }

  else
  {
    sub_1B0A6BD78(__src, v25);
    sub_1B08C5168(__b);
    memcpy(v38, v39, sizeof(v38));
  }

  return memcpy(a2, v38, 0x80uLL);
}

uint64_t sub_1B0A6B184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v31 = a1;
  v20 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v3 = *(*(sub_1B0E444E8() - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v21 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B0E44558();
  v25 = *(v24 - 8);
  v26 = v25;
  v27 = *(v25 + 64);
  v5 = MEMORY[0x1EEE9AC00](v31);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v14 - v29;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v14 - v29;
  v30 = &v14 - v29;
  v45 = &v14 - v29;
  v41 = v6;
  v39 = v7;
  v40 = v8;
  sub_1B0E44548();
  v38 = v31;
  v35 = v32;
  sub_1B039C030(&v38, sub_1B0A6C050, v34, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v9, MEMORY[0x1E69E7CA8]);
  v33 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v23;
  v37 = v22;
  v19 = &v14;
  MEMORY[0x1EEE9AC00](&v14);
  *(&v14 - 2) = v10;
  sub_1B0A6B5B4(sub_1B0A6C07C, (&v14 - 4), MEMORY[0x1E69E7CA8] + 8);
  (*(v26 + 16))(v28, v30, v24);
  sub_1B0E44538();
  v15 = *(v26 + 8);
  v14 = v26 + 8;
  v15(v28, v24);
  v18 = sub_1B0A6B7BC(v21);
  v16 = v11;
  v17 = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v18;
  v43 = v16;
  v44 = v17;
  sub_1B03B1198(&v36);
  v15(v30, v24);

  sub_1B039E440(&v42);
  return v18;
}

uint64_t sub_1B0A6B5B4(uint64_t (*a1)(void *, unint64_t), uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = *(v3 + 8);
  if ((v19 & 0x1000000000000000) != 0)
  {
    v10 = *v15;
    v11 = v15[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v15);
    v12 = sub_1B0A6C2B0();
    v13 = v4;

    *v15 = v12;
    v15[1] = v13;
  }

  v9 = *v15;
  v18 = v15[1];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v17[0] = v9;
    v17[1] = v18 & (-bswap64(0xFFuLL) - 1);
    return a1(v17, (v18 & 0xF00000000000000uLL) >> 56);
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    if ((v18 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v7 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = v9 & 0xFFFFFFFFFFFFLL;
      goto LABEL_10;
    }

    __break(1u);
  }

  v7 = sub_1B0E46368();
  v8 = v6;
LABEL_10:
  result = a1(v7, v8);
  if (!v16)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0A6B7BC(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a1;
  v13 = 0;
  v14 = 0;
  v12 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C20, &qword_1B0EA3F40);
  sub_1B03B0BBC(&v13, sub_1B0A6C0A4, v11, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v10, v10);
  v8 = sub_1B0A6AAC4(v13, v14);
  v6 = v2;
  v7 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v8;
  v17 = v6;
  v18 = v7;
  v4 = sub_1B0E444E8();
  (*(*(v4 - 8) + 8))(a1);
  sub_1B039E440(&v16);
  return v8;
}

uint64_t sub_1B0A6B91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1;
  v15 = a2;
  v13 = a3;
  v11 = a1;
  v12 = a2;
  v4 = sub_1B0E444E8();
  result = sub_1B039C030(a3, sub_1B0A6C18C, v10, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v8, a4);
  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A6B9E4()
{
  if (sub_1B0E450E8() < 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0E45128();
  sub_1B0E45108();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[8] = a5;
  v10[9] = a4;
  v10[7] = a3;
  v11 = a2;
  v13 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v21[4] = a4;
  v21[2] = a1;
  v21[3] = a2;
  v21[1] = a3;
  v21[0] = sub_1B0E447A8();
  v16 = v13;
  v17 = v11;
  sub_1B098F41C(v21, sub_1B0A6D938, v15, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v5, MEMORY[0x1E69E7CA8]);
  v14 = v12;
  if (v12)
  {
    __break(1u);
    result = 0;
    __break(1u);
  }

  else
  {
    v10[4] = 0;
    v20 = sub_1B0E447A8();
    v10[5] = v10;
    MEMORY[0x1EEE9AC00](v10);
    v9[2] = v13;
    v9[3] = v6;
    sub_1B098F41C(&v20, sub_1B0A6D968, v9, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, MEMORY[0x1E69E7CA8]);
    v10[6] = 0;
    v10[3] = 0;
    v10[1] = 9;
    v19 = sub_1B0E45EA8() & 0x3F | 0x80;
    sub_1B0E45EB8();
    v10[2] = 6;
    v18 = sub_1B0E45EA8() & 0xF | 0x40;
    return sub_1B0E45EB8();
  }

  return result;
}

uint64_t *sub_1B0A6BD78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  sub_1B0A6BEC8(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, SWORD2(v15), SBYTE6(v15), HIBYTE(v15));
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v13;
  a2[11] = v14;
  a2[12] = v15;
  a2[13] = v16;
  a2[14] = v17;
  a2[15] = v18;
  return result;
}

uint64_t sub_1B0A6BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, unsigned __int8 a16)
{
  v23 = a16 >> 6;
  if (!(a16 >> 6) || v23 == 1)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  if (v23 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07ACBF8(a2, a3, a4, a5, a6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08C50F0(a8, a9);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void *sub_1B0A6BFC0(void *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[6];
  v6 = result[7];
  v7 = result[8];
  v8 = result[9];
  v9 = result[10];
  v10 = result[11];
  v11 = result[13];
  v12 = result[14];
  v13 = result[15];
  v14 = result[5] & 0xFLL;
  v15 = result[12] & 7 | 0x8000000000000000;
  *result = *result;
  result[1] = v1;
  result[2] = v2;
  result[3] = v3;
  result[4] = v4;
  result[5] = v14;
  result[6] = v5;
  result[7] = v6;
  result[8] = v7;
  result[9] = v8;
  result[10] = v9;
  result[11] = v10;
  result[12] = v15;
  result[13] = v11;
  result[14] = v12;
  result[15] = v13;
  return result;
}

unint64_t sub_1B0A6C110()
{
  v2 = qword_1EB6E3C28;
  if (!qword_1EB6E3C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6C18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0A6B9E4();
}

uint64_t sub_1B0A6C1BC()
{
  sub_1B0E45E98();
  sub_1B0E45E88();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6C234()
{
  sub_1B0E45E98();
  sub_1B0E45E88();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6C2B0()
{
  v0 = sub_1B0A6C314();
  v5 = sub_1B0A6C3E4(v0, v1, v2, v3);

  return v5;
}

uint64_t sub_1B0A6C3E4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v4 = *(sub_1B0A6C7C8(a1, a2, a3, a4) + 16);
    sub_1B0A6CD94(v16);
    v12 = v16[0];

    return v12;
  }

  v10 = a1 >> 16;
  v11 = a2 >> 16;
  if ((a4 & 0x2000000000000000) != 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v11 <= ((a4 & 0xF00000000000000uLL) >> 56))
      {
        if (((v11 - v10) & 0x8000000000000000) == 0)
        {
          return sub_1B0E44C78();
        }

        sub_1B0E466C8();
        __break(1u);
      }

      sub_1B0E466C8();
      __break(1u);
    }

    sub_1B0E466C8();
    __break(1u);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = a3 & 0xFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

    __break(1u);
  }

  v7 = sub_1B0E46368();
  v8 = v5;
LABEL_16:
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v8 >= v11)
    {
      sub_1B0A6CDCC(v10, v11, v7, v8);
      return sub_1B0E44C78();
    }

    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E466C8();
  __break(1u);
  return result;
}

uint64_t sub_1B0A6C7C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_1B0E45E08();
  if (!v26)
  {
    return sub_1B0A188BC();
  }

  v21 = sub_1B03B7A3C(v26, 0);

  if (v26 < 0)
  {
    sub_1B0E466C8();
    __break(1u);
    return sub_1B0A188BC();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0A6CFC0(&v27, v21 + 32, v26, a1, a2, a3, a4);
  v20 = v31;
  if (v31 >> 14 != v28 >> 14)
  {
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v14 = (v30 & 0x1000000000000000) == 0 || (v29 & 0x800000000000000) != 0;
    v13 = v31 & 0xC;
    if (v13 == 4 << v14)
    {
      v12 = sub_1B0A6D6C4(v31, v29, v30);
    }

    else
    {
      v12 = v31;
    }

    if (v12 >> 14 < v15 >> 14 || v12 >> 14 >= v16 >> 14)
    {
LABEL_35:
      sub_1B0E465A8();
      __break(1u);
      goto LABEL_36;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      sub_1B0E44E08();
    }

    else if ((v18 & 0x2000000000000000) == 0)
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        if ((v18 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      if (!sub_1B0E46368())
      {
        __break(1u);
      }
    }

LABEL_20:
    v10 = v29;
    v11 = v30;
    v9 = (v30 & 0x1000000000000000) == 0 || (v29 & 0x800000000000000) != 0;
    if (v13 == 4 << v9)
    {
      v8 = sub_1B0A6D6C4(v20, v29, v30);
    }

    else
    {
      v8 = v20;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v7 = (v11 & 0xF00000000000000uLL) >> 56;
      }

      else
      {
        v7 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v7 <= (v8 >> 16))
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v6 = sub_1B0E44DD8();
    }

    else
    {
      v6 = (((v8 >> 16) + 1) << 16) | 4;
    }

    v31 = v6;
    sub_1B0E466C8();
    __break(1u);
    goto LABEL_35;
  }

LABEL_36:
  if (v19 != v26)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B03F5C58(&v27);
  return v21;
}

uint64_t sub_1B0A6CD94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0E44C78();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B0A6CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || a4 < a2)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v5 = a3 + a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2 - a1 < 0)
  {
    sub_1B0E466C8();
    __break(1u);
LABEL_12:
    result = sub_1B0E466C8();
    __break(1u);
    return result;
  }

  if (a2 != a1 && !v5)
  {
    sub_1B0E466C8();
    __break(1u);
  }

  return v5;
}

unint64_t *sub_1B0A6CFC0(unint64_t *result, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = result;
  if (!a2)
  {
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = a4;
    return 0;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (!a3)
    {
LABEL_55:
      v8 = a4;
LABEL_56:
      *v24 = a4;
      v24[1] = a5;
      v24[2] = a6;
      v24[3] = a7;
      v24[4] = v8;
      return a3;
    }

    v20 = a2;
    v21 = 0;
    for (i = a4; ; i = v9)
    {
      if (v21 < 0 || v21 >= a3)
      {
LABEL_54:
        sub_1B0E466C8();
        __break(1u);
        goto LABEL_55;
      }

      if (a3 < 0)
      {
        sub_1B0E465A8();
        __break(1u);
        goto LABEL_54;
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_59;
      }

      if (a5 >> 14 == i >> 14)
      {
        goto LABEL_52;
      }

      v30[7] = a7;
      v19 = (a7 & 0x1000000000000000) == 0 || (a6 & 0x800000000000000) != 0;
      v18 = i & 0xC;
      if (v18 == 4 << v19)
      {
        v17 = sub_1B0A6D6C4(i, a6, a7);
      }

      else
      {
        v17 = i;
      }

      if (v17 >> 14 < a4 >> 14 || v17 >> 14 >= a5 >> 14)
      {
        sub_1B0E465A8();
        __break(1u);
LABEL_52:
        *v24 = a4;
        v24[1] = a5;
        v24[2] = a6;
        v24[3] = a7;
        v24[4] = i;
        return v21;
      }

      v30[6] = a7;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v16 = sub_1B0E44E08();
        goto LABEL_34;
      }

      v30[2] = a7;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v30[0] = a6;
        v30[1] = a7 & (-bswap64(0xFFuLL) - 1);
        v16 = *(v30 + (v17 >> 16));
        goto LABEL_34;
      }

      if ((a6 & 0x1000000000000000) == 0)
      {
        goto LABEL_30;
      }

      if ((a7 & 0xFFFFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFE0)
      {
        break;
      }

      v14 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v15 = v17 >> 16;
LABEL_33:
      v16 = *(v14 + v15);
LABEL_34:
      v30[5] = a7;
      v12 = (a7 & 0x1000000000000000) == 0 || (a6 & 0x800000000000000) != 0;
      if (v18 == 4 << v12)
      {
        result = sub_1B0A6D6C4(i, a6, a7);
        v11 = result;
      }

      else
      {
        result = i;
        v11 = i;
      }

      v30[4] = a7;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v30[3] = a7;
        if ((a7 & 0x2000000000000000) != 0)
        {
          v10 = (a7 & 0xF00000000000000uLL) >> 56;
        }

        else
        {
          v10 = a6 & 0xFFFFFFFFFFFFLL;
        }

        if (v10 <= (v11 >> 16))
        {
          sub_1B0E465A8();
          __break(1u);
        }

        result = sub_1B0E44DD8();
        v9 = result;
      }

      else
      {
        v9 = (((v11 >> 16) + 1) << 16) | 4;
      }

      *v20 = v16;
      if (v21 + 1 == a3)
      {
        v8 = v9;
        goto LABEL_56;
      }

      ++v20;
      ++v21;
    }

    __break(1u);
LABEL_30:
    v13 = sub_1B0E46368();
    if (!v13)
    {
      __break(1u);
    }

    v14 = v13;
    v15 = v17 >> 16;
    goto LABEL_33;
  }

  result = sub_1B0E466C8();
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1B0A6D6C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1B2726F00](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B0E465A8();
    __break(1u);
  }

  v5 = sub_1B0E44E38();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B0A6D938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0A6C1BC();
}

uint64_t sub_1B0A6D968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0A6C234();
}

uint64_t sub_1B0A6D998()
{
  v3 = 0;
  v4 = 0;
  v3 = sub_1B0E42FE8();
  v4 = v0;
  v2 = v3;
  sub_1B03B2000(v3, v0);
  sub_1B075D3E8(&v3);
  return v2;
}

uint64_t *sub_1B0A6D9F4(void *__src)
{
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v32 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v17 = sub_1B08C4EF0(__dst);
  if (v17)
  {
    if (v17 == 1)
    {
      v5 = sub_1B08C4F00(__dst);
      v11 = *v5;
      v12 = v5[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = v11;
      v26 = v12;
      v24[0] = sub_1B0E44CE8();
      v24[1] = v6;
      sub_1B0A6E80C();
      sub_1B0E42F98();
      sub_1B03B1198(v24);
    }

    else
    {
      v7 = sub_1B08C4F00(__dst);
      memcpy(v34, v7, sizeof(v34));
      sub_1B08C4F88(v34, v30);
      v8 = sub_1B0A6DDE0(v34);
      if (v9)
      {
        v28 = v8;
        v29 = v9;
        v27[0] = sub_1B0E44CE8();
        v27[1] = v10;
        sub_1B0A6E80C();
        sub_1B0E42F98();
        sub_1B03B1198(v27);

        return sub_1B08C5168(v34);
      }

      else
      {
        return sub_1B08C5168(v34);
      }
    }
  }

  else
  {
    v1 = sub_1B08C4F00(__dst);
    v13 = *v1;
    v14 = v1[1];
    v15 = *(v1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v13;
    v23 = v14;
    v21 = v15;
    v16 = sub_1B0A6DC9C(v13, v14, v15);
    if (v2)
    {
      v19 = v16;
      v20 = v2;
      v18[0] = sub_1B0E44CE8();
      v18[1] = v3;
      sub_1B0A6E80C();
      sub_1B0E42F98();
      sub_1B03B1198(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B0A6DC9C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E44AC8();

  v7 = sub_1B0A6F34C(a3);
  v10 = [v8 createHTMLFromText:v9 delSp:v7 flowed:sub_1B0A6F3B0(a3)];
  MEMORY[0x1E69E5920](v9);
  if (!v10)
  {
    return 0;
  }

  v4 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v10);
  return v4;
}

uint64_t sub_1B0A6DDE0(void *a1)
{
  v96 = v126;
  v90 = a1;
  v122 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v87 = 0;
  v72 = sub_1B0E42C98();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v76 = &v28 - v75;
  v77 = sub_1B0E42C78();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v81 = &v28 - v80;
  v82 = sub_1B0E42CA8();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v28 - v85;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v28 - v88;
  v91 = sub_1B0E42E68();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v28 - v94;
  v122 = &v28 - v94;
  v121 = v1;
  *v2 = *(v1 + 80);
  sub_1B070B280(v126, &v120);
  v96[1] = *v96;
  if (!v128)
  {
    goto LABEL_12;
  }

  v70 = v127;
  v71 = v128;
  v118 = v127;
  v119 = v128;
  sub_1B0A6E948(v127, v128, v89);
  if ((*(v92 + 48))(v89, 1, v91) == 1)
  {
    sub_1B06E3800(v89);

LABEL_12:
    v61 = 0;
    v62 = 0;
    return v61;
  }

  (*(v92 + 32))(v95, v89, v91);
  v63 = __dst;
  memcpy(__dst, v90 + 1, sizeof(__dst));
  sub_1B0A6A0F0(__dst, v117);
  v67 = __src;
  memcpy(__src, v63, 0x21uLL);
  sub_1B07B4718(__src, &v116);
  sub_1B0A6A18C(v63);
  v64 = v90[7];
  v65 = v90[8];
  v66 = v90[9];
  sub_1B08C50F0(v64, v65);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = ContentDisposition.filename.getter(v64, v65, v66);
  v69 = v3;
  v114 = v68;
  v115 = v3;
  sub_1B08C512C(v64, v65);

  sub_1B07B4718(v67, &v113);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v112 = sub_1B0A658C8(v67, v68, v69);
  if (sub_1B0A63DB8())
  {
    v4 = sub_1B0E46A28();
    v56 = &v99;
    v99 = v4;
    v100 = v5;
    v54 = 1;
    v6 = sub_1B0E44838();
    v52 = v7;
    MEMORY[0x1B2728B30](v6);

    sub_1B092A830();
    sub_1B0E469F8();
    v8 = sub_1B0E44838();
    v53 = v9;
    MEMORY[0x1B2728B30](v8);

    v97 = v70;
    v98 = v71;
    sub_1B0E46A08();
    v10 = sub_1B0E44838();
    v55 = v11;
    MEMORY[0x1B2728B30](v10);

    v58 = v99;
    v57 = v100;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v56);
    v59 = sub_1B0E44C88();
    v60 = v12;

    sub_1B07AD0E0(__src);
    (*(v92 + 8))(v95, v91);

    v61 = v59;
    v62 = v60;
  }

  else
  {
    v13 = sub_1B0E46A28();
    v49 = &v110;
    v110 = v13;
    v111 = v14;
    v50 = 1;
    v15 = sub_1B0E44838();
    v40 = v16;
    MEMORY[0x1B2728B30](v15);

    v123 = v90[13];
    v109[2] = v123;
    (*(v78 + 104))(v81, *MEMORY[0x1E69689E0], v77);
    sub_1B0A6EB14();
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_1B0394868();
    sub_1B0E42858();
    (*(v73 + 8))(v76, v72);
    (*(v78 + 8))(v81, v77);
    v42 = sub_1B03948EC();
    v43 = sub_1B0A6F414();
    sub_1B043B1E8();
    sub_1B0E45F68();
    (*(v83 + 8))(v86, v82);
    v44 = v109;
    v109[0] = v109[3];
    v109[1] = v109[4];
    v46 = MEMORY[0x1E69E6158];
    v47 = MEMORY[0x1E69E61C8];
    v48 = MEMORY[0x1E69E61C0];
    sub_1B0E46A08();
    sub_1B03B1198(v44);
    v17 = sub_1B0E44838();
    v45 = v18;
    MEMORY[0x1B2728B30](v17);

    v107 = v70;
    v108 = v71;
    sub_1B0E46A08();
    v19 = sub_1B0E44838();
    v51 = v20;
    MEMORY[0x1B2728B30](v19);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v103 = v68;
    v104 = v69;
    if (v69)
    {
      v105 = v103;
      v106 = v104;
    }

    else
    {
      v105 = sub_1B0E44838();
      v106 = v21;
      if (v104)
      {
        sub_1B03B1198(&v103);
      }
    }

    v29 = v102;
    v102[0] = v105;
    v102[1] = v106;
    v34 = &v110;
    sub_1B0E46A08();
    sub_1B03B1198(v29);
    v32 = 1;
    v22 = sub_1B0E44838();
    v30 = v23;
    MEMORY[0x1B2728B30](v22);

    v31 = v101;
    v37 = __src;
    memcpy(v101, __src, 0x21uLL);
    sub_1B0A68338();
    sub_1B0E469F8();
    v24 = sub_1B0E44838();
    v33 = v25;
    MEMORY[0x1B2728B30](v24);

    v36 = v110;
    v35 = v111;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v34);
    v38 = sub_1B0E44C88();
    v39 = v26;

    sub_1B07AD0E0(v37);
    (*(v92 + 8))(v95, v91);

    v61 = v38;
    v62 = v39;
  }

  return v61;
}

unint64_t sub_1B0A6E80C()
{
  v2 = qword_1EB6E3C30;
  if (!qword_1EB6E3C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6E884(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  sub_1B082922C();
  v6 = sub_1B0E45748();
  sub_1B0391D50(a1, a2);
  if (v6)
  {
    return 0;
  }

  sub_1B03B2000(a1, a2);
  return a1;
}

uint64_t sub_1B0A6E948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v11 = a1;
  v10 = a2;
  v24 = 0;
  v25 = sub_1B0A6F1D0;
  v28 = 0;
  v29 = 0;
  v20 = 0;
  v16 = sub_1B0E429A8();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v10 - v12;
  v28 = v3;
  v29 = v4;
  v5 = sub_1B0A6EB2C(v3, v4);
  v17 = v27;
  v27[0] = v5;
  v27[1] = v6;
  sub_1B0E42968();
  sub_1B07C7F5C();
  v19 = sub_1B0E45F18();
  v18 = v7;
  (*(v13 + 8))(v15, v16);
  sub_1B03B1198(v17);
  v26[0] = v19;
  v26[1] = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  v8 = sub_1B0E42E68();
  sub_1B039A570(v25, v24, v22, MEMORY[0x1E69E73E0], v8, v23, v21);
  return sub_1B03B1198(v26);
}

uint64_t sub_1B0A6EB2C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v47 = a2;
  v44 = "Fatal error";
  v45 = "Range requires lowerBound <= upperBound";
  v46 = "Swift/Range.swift";
  v70 = 0;
  v71 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0u;
  v66 = 0u;
  v62 = 0;
  v63 = 0;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C40, &qword_1B0EA4010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v57 = v19 - v49;
  v70 = v2;
  v71 = v3;
  v69[2] = v2;
  v69[3] = v3;
  v55 = 1;
  v4 = sub_1B0E44838();
  v60 = v69;
  v69[0] = v4;
  v69[1] = v5;
  v54 = 0;
  v50 = sub_1B0E431A8();
  v6 = *(v50 - 8);
  v51 = *(v6 + 56);
  v52 = v6 + 56;
  v51(v57, v55);
  v53 = sub_1B07C7F5C();
  v56 = MEMORY[0x1E69E6158];
  sub_1B0A6F314();
  v58 = sub_1B0E45F38();
  v59 = v7;
  v61 = v8;
  sub_1B0A6F494(v57);
  sub_1B03B1198(v60);
  if (v61)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v48;
    v23 = v47;
  }

  else
  {
    v42 = v58;
    v43 = v59;
    v40 = v59;
    v67 = v58;
    v68 = v59;
    v41 = MEMORY[0x1B2726F40](v48, v47);
    if (v41 >> 14 < v40 >> 14)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v28 = sub_1B0E44EE8();
    v29 = v9;
    v30 = v10;
    v31 = v11;
    *&v65 = v28;
    *(&v65 + 1) = v9;
    *&v66 = v10;
    *(&v66 + 1) = v11;
    v64[2] = v28;
    v64[3] = v9;
    v64[4] = v10;
    v64[5] = v11;
    v33 = 1;
    v12 = sub_1B0E44838();
    v38 = v64;
    v64[0] = v12;
    v64[1] = v13;
    (v51)(v57, v33, v33, v50);
    v32 = sub_1B0A6F53C();
    v34 = MEMORY[0x1E69E67B0];
    v35 = MEMORY[0x1E69E6158];
    sub_1B0A6F314();
    v36 = sub_1B0E45F38();
    v37 = v14;
    v39 = v15;
    sub_1B0A6F494(v57);
    sub_1B03B1198(v38);
    if (v39)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v22 = v48;
      v23 = v47;
    }

    else
    {
      v26 = v36;
      v27 = v37;
      v24 = v36;
      v62 = v36;
      v63 = v37;
      v25 = sub_1B0E45DB8();
      if (v24 >> 14 < v25 >> 14)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0E45E28();
      v19[1] = v16;
      v20 = sub_1B0E44EC8();
      v21 = v17;

      v22 = v20;
      v23 = v21;
    }
  }

  return v22;
}

uint64_t sub_1B0A6F1D0(uint64_t *a1)
{
  v7 = 0;
  v8 = 0;
  v5 = a1[1];
  v7 = *a1;
  v8 = v5;
  v6[0] = sub_1B0E46A28();
  v6[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E46A08();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v6);
  sub_1B0E44C88();
  sub_1B0E42E38();
}

uint64_t sub_1B0A6F314()
{
  sub_1B0A6F5C8(0);

  return 0;
}

unint64_t sub_1B0A6F414()
{
  v2 = qword_1EB6E3C38;
  if (!qword_1EB6E3C38)
  {
    sub_1B0E42CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6F494(uint64_t a1)
{
  v3 = sub_1B0E431A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B0A6F53C()
{
  v2 = qword_1EB6DB878;
  if (!qword_1EB6DB878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB878);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6F5C8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1B0A6F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 32))(a3, a1);
  result = _s6LoggerVMa_2();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1B0A6F6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A6F980();
  v1 = sub_1B0E439A8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A6F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v7[1] = 0;
  v13 = sub_1B0E439A8();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = v7 - v8;
  v14 = _s6LoggerVMa_2();
  v9 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v7 - v9;
  v19 = v7 - v9;
  v18 = v2;
  v3 = sub_1B0A6F980();
  (*(v10 + 16))(v12, v3, v13);
  (*(v10 + 32))(v17, v12, v13);
  v4 = v16;
  v5 = v17;
  *&v17[*(v14 + 20)] = v15;
  return sub_1B0901DA8(v5, v4);
}

uint64_t sub_1B0A6F8DC()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E3C48);
  __swift_project_value_buffer(v1, qword_1EB6E3C48);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0A6F980()
{
  if (qword_1EB6E0B80 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E3C48);
}

uint64_t _s6LoggerVMa_2()
{
  v1 = qword_1EB6E3C60;
  if (!qword_1EB6E3C60)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0A6FA60(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E439A8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1B0A6FB98(uint64_t a1)
{
  v2 = _s6LoggerVMa_2();
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t sub_1B0A6FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = a1;
  v11[4] = a2;
  v11[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
  sub_1B0E46A48();
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = a1;
  v11[1] = a2;
  sub_1B0E467D8();
  v9 = sub_1B039A494();
  v4 = sub_1B041A060(a3);
  *(v10 + 64) = v9;
  *(v10 + 40) = v4;
  sub_1B0394964();
  sub_1B03B1198(v11);
  sub_1B0E445D8();
  sub_1B0A6FD00();
}

uint64_t sub_1B0A6FD00()
{
  v1 = objc_opt_self();
  sub_1B0E44838();
  v3 = sub_1B0E44AC8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E44598();

  [v1 powerlog:v3 eventData:v2];
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B0A6FE30()
{
  v2 = sub_1B0E439A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

char *sub_1B0A6FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v12 = a4;
  v18 = a1;
  v19 = a5;
  v21 = a2;
  v20 = a3;
  v37 = 0;
  v36 = 0;
  v35 = 0.0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v22 = 0;
  v13 = sub_1B0E431A8();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = v11 - v16;
  v23 = _s6ParserVMa();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v27 = *(v24 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = (MEMORY[0x1EEE9AC00])(v22);
  v28 = v11 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v30 = v11 - v29;
  v37 = v11 - v29;
  v36 = v7;
  v35 = v6;
  v34 = v8;
  v33 = v9;
  type metadata accessor for WatchOSRender.HTMLParser();
  v31 = sub_1B0A7E3B4();
  if (v31)
  {
    v11[1] = v31;
    v11[0] = v31;
    v32 = v31;
    (*(v14 + 16))(v17, v21, v13);
    sub_1B0A7613C(v11[0], v18, v17, v20, v28, v19);
    sub_1B08F5BEC(v28, v30);
    sub_1B0A761E4(v30, v12);
    (*(v24 + 56))(v12, 0, 1, v23);
    (*(v14 + 8))(v21, v13);
    return sub_1B08F5DC8(v30);
  }

  else
  {

    (*(v14 + 8))(v21, v13);
    return (*(v24 + 56))(v12, 1, 1, v23);
  }
}

uint64_t _s6ParserVMa()
{
  v1 = qword_1EB6E3D00;
  if (!qword_1EB6E3D00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B0A7024C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v22 = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v23 = 0;
  v24 = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v14 - v24;
  v30 = _s6ParserV4TextVMa();
  v31 = (*(*(v30 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v34 = (&v14 - v31);
  v32 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v31);
  v33 = &v14 - v32;
  v43 = &v14 - v32;
  v42 = v5;
  v41 = v6;
  v40 = v7;
  v39 = v8;
  v35 = sub_1B0A7678C(v9, v8, v5, v6, v7);
  sub_1B0A76D34(v34, v33);
  v38 = v35 & 1;
  if (v35)
  {
    v14 = sub_1B0A77B2C(v29, v26, v28, v27);
    v15 = v11;
    v16 = v12;
    v17 = v13;
    *&v36 = v14;
    *(&v36 + 1) = v11;
    *&v37 = v12;
    *(&v37 + 1) = v13;
    v18 = *(v33 + 4);
    v19 = *(v33 + 5);
    sub_1B03B2000(v18, v19);
    sub_1B08C49A4(&v33[v30[6]], v25);
    v20 = *&v33[v30[7]];
    v21 = *&v33[v30[9]];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A766EC(v14, v15, v17, v18, v19, v25, 0, v21, v22, v16, v20);
  }

  else
  {
    sub_1B0A77C9C(v33, v22);
  }

  return sub_1B08F5CB4(v33);
}

void *sub_1B0A704E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v19 = a5;
  v29 = a1;
  v30 = a2;
  v34 = a3;
  v36 = a4;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E20, &qword_1B0EA03B8);
  v20 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v15 - v20;
  v25 = 0;
  v46 = type metadata accessor for WatchOSRender.Message();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v21 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v22 = &v15 - v21;
  v53 = &v15 - v21;
  v23 = (*(*(_s6LoggerVMa_2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v41 = &v15 - v23;
  v35 = _s6ParserVMa();
  v24 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v15 - v24;
  v26 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v37 = &v15 - v26;
  v31 = type metadata accessor for Message(v7);
  v27 = *(v31 - 8);
  v8 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v31);
  v42 = &v15 - v10;
  v52 = v29;
  v51 = v11;
  v50 = v34;
  v49 = v12;
  v48 = v5;
  v33 = *(v27 + 16);
  v32 = v27 + 16;
  v33(v9);
  sub_1B08F53FC(v34, v37);
  sub_1B0A761E4(v5, v28);
  sub_1B08F5590(v36, v41);
  sub_1B0A71710(v29, v42, v37, v28, v41, v54);
  (v33)(v42, v30, v31);
  sub_1B08F53FC(v34, v37);
  v38 = v54[5];
  v39 = v54[6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v40 = *&v5[*(v35 + 32)];

  sub_1B08F5590(v36, v41);
  sub_1B0A7C898(v42, v37, v38, v39, v40, v41, v45);
  if ((*(v43 + 48))(v45, 1, v46) == 1)
  {
    sub_1B08F5618(v45);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
    (*(*(v14 - 8) + 56))(v19, 1);
    return sub_1B0A77EC8(v54);
  }

  else
  {
    sub_1B08F57EC(v45, v22);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
    v16 = &v19[*(v17 + 48)];
    sub_1B0902624(v22, v19);
    v18 = v54;
    sub_1B0A77F6C(v54, v47);
    memcpy(v16, v18, 0x50uLL);
    (*(*(v17 - 8) + 56))(v19, 0, 1);
    sub_1B08F597C(v22);
    return sub_1B0A77EC8(v18);
  }
}

id sub_1B0A70B04(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = v2;
  v18 = [objc_opt_self() createMessageContent];
  v25 = v18;
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E44AC8();

  [v18 setMessageId_];
  MEMORY[0x1E69E5920](v17);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v32 = *(v2 + 8);
  sub_1B0A780BC(&v32, v24);
  v33 = v32;
  if ((*(&v32 + 1) & 0xF000000000000000) == 0xF000000000000000)
  {
    v15 = 0;
  }

  else
  {
    v3 = v33;
    v14 = sub_1B0E42F18();
    sub_1B0391D50(v3, *(&v3 + 1));
    v15 = v14;
  }

  [v18 setTextData_];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v31 = *(v16 + 8);
  sub_1B0A780BC(&v31, v23);
  v22 = v31;
  v13 = (*(&v31 + 1) & 0xF000000000000000) != 0xF000000000000000;
  sub_1B043C03C(&v22);
  [v18 setHasTextData_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v30 = *(v16 + 24);
  sub_1B0A780BC(&v30, v21);
  v34 = v30;
  if ((*(&v30 + 1) & 0xF000000000000000) == 0xF000000000000000)
  {
    v12 = 0;
  }

  else
  {
    v4 = v34;
    v11 = sub_1B0E42F18();
    sub_1B0391D50(v4, *(&v4 + 1));
    v12 = v11;
  }

  [v18 setHtmlContentData_];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setMainAlternativeValid_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setOriginalContentSize_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = *(v16 + 64);
  sub_1B074E7A8(&v29, &v20);
  v19 = v29;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C78, &qword_1B0EA40C8);
  v5 = sub_1B0A78140();
  sub_1B039CA88(sub_1B0A716BC, 0, v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v10);
  sub_1B039E440(&v19);
  v7 = sub_1B0E451A8();

  [v18 setAttachments_];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setPartiallyLoaded_];
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1B0A70F94()
{
  v2 = *(v0 + 8);
  sub_1B070E18C(v2, *(v0 + 16));
  return v2;
}

uint64_t sub_1B0A70FCC(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  sub_1B070E144(v3, v4);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A7101C()
{
  v2 = *(v0 + 24);
  sub_1B070E18C(v2, *(v0 + 32));
  return v2;
}

uint64_t sub_1B0A71054(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  sub_1B070E144(v3, v4);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A710AC()
{
  v2 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A710D8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

BOOL sub_1B0A71114(char *a1, char *a2)
{
  v40 = a1;
  v39 = a2;
  v48 = *a1;
  v47 = *a2;
  if ((v48 & 1) != (v47 & 1))
  {
    return 0;
  }

  *v46 = *(a1 + 8);
  sub_1B0A780BC(v46, v38);
  v37 = *v46;
  v45 = *(a2 + 8);
  sub_1B0A780BC(&v45, v36);
  v35 = v45;
  sub_1B0A780BC(&v37, v33);
  sub_1B0A780BC(&v35, &v34);
  if ((v33[1] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0A780BC(v33, &v23);
    if ((*(&v34 + 1) & 0xF000000000000000) != 0xF000000000000000)
    {
      v22 = v23;
      v21 = v34;
      v17 = MEMORY[0x1B2725040](v23, *(&v23 + 1), v34, *(&v34 + 1));
      sub_1B075D3E8(&v21);
      sub_1B075D3E8(&v22);
      sub_1B043C03C(v33);
      v18 = v17;
      goto LABEL_8;
    }

    sub_1B075D3E8(&v23);
    goto LABEL_10;
  }

  if ((*(&v34 + 1) & 0xF000000000000000) != 0xF000000000000000)
  {
LABEL_10:
    sub_1B0A79B68(v33);
    v18 = 0;
    goto LABEL_8;
  }

  sub_1B043C03C(v33);
  v18 = 1;
LABEL_8:
  sub_1B043C03C(&v35);
  sub_1B043C03C(&v37);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v44 = *(a1 + 24);
  sub_1B0A780BC(&v44, v32);
  v31 = v44;
  v43 = *(a2 + 24);
  sub_1B0A780BC(&v43, v30);
  v29 = v43;
  sub_1B0A780BC(&v31, v27);
  sub_1B0A780BC(&v29, &v28);
  if ((v27[1] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0A780BC(v27, &v26);
    if ((*(&v28 + 1) & 0xF000000000000000) != 0xF000000000000000)
    {
      v25 = v26;
      v24 = v28;
      v15 = MEMORY[0x1B2725040](v26, *(&v26 + 1), v28, *(&v28 + 1));
      sub_1B075D3E8(&v24);
      sub_1B075D3E8(&v25);
      sub_1B043C03C(v27);
      v16 = v15;
      goto LABEL_18;
    }

    sub_1B075D3E8(&v26);
    goto LABEL_20;
  }

  if ((*(&v28 + 1) & 0xF000000000000000) != 0xF000000000000000)
  {
LABEL_20:
    sub_1B0A79B68(v27);
    v16 = 0;
    goto LABEL_18;
  }

  sub_1B043C03C(v27);
  v16 = 1;
LABEL_18:
  sub_1B043C03C(&v29);
  sub_1B043C03C(&v31);
  if (v16)
  {
    v10 = *(a1 + 5);
    v13 = *(a1 + 6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = *(a2 + 5);
    v12 = *(a2 + 6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = MEMORY[0x1B2726DE0](v10, v13, v11, v12);

    if (v14)
    {
      v42 = *(a1 + 7);
      v41 = *(a2 + 7);
      if (v42 == v41)
      {
        v8 = *(a1 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v7 = *(a2 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A79BE8();
        v9 = sub_1B0E45368();

        if (v9)
        {
          v5 = *(a1 + 9);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v4 = *(a2 + 9);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0902AA8();
          sub_1B0A79C60();
          v6 = sub_1B0E44758();

          return (v6 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B0A71654(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B0A71114(__dst, v5);
}

void *sub_1B0A716BC@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B0A64540();
  *a2 = result;
  return result;
}

void *sub_1B0A71710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = a6;
  v28 = a1;
  v38 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v53 = 0;
  v39 = v52;
  v41 = 80;
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v31 = &v44;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v22 = 0;
  v17 = (*(*(_s6LoggerVMa_2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v27 = &v16 - v17;
  v37 = type metadata accessor for Message(v7);
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v18 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v16 - v18;
  v19 = (*(*(_s6ParserV4TextVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v16 - v19);
  v20 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v30 = (&v16 - v20);
  v53 = &v16 - v20;
  v21 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v24 = (&v16 - v21);
  v51 = v28;
  v50 = v10;
  v49 = v11;
  v48 = a4;
  v47 = v12;
  sub_1B08F53FC(v11, &v16 - v21);
  v44 = sub_1B0A6A714(v28, v24);
  v45 = v13;
  v46 = v14;
  sub_1B0A7024C(v38, v31, v32, v30);
  (*(v35 + 16))(v23, v38, v37);
  sub_1B08F53FC(v34, v24);
  sub_1B0A77C9C(v30, v25);
  v26 = *&v33[*(_s6ParserVMa() + 32)];

  sub_1B08F5590(v32, v27);
  v29 = v54;
  sub_1B0A71AF0(v28, v23, v24, v25, v31, v26, v27, v54);
  memcpy(v39, v29, v41);
  sub_1B08F5CB4(v30);
  sub_1B039E440(v31);
  v40 = __dst;
  memcpy(__dst, v39, v41);
  sub_1B0A77F6C(v40, &v43);
  sub_1B039480C(v32);
  sub_1B08F5DC8(v33);
  sub_1B08F533C(v34);
  (*(v35 + 8))(v38, v37);
  sub_1B0A77EC8(v39);
  return memcpy(v42, v40, v41);
}

void *sub_1B0A71AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v38 = a8;
  v39 = a1;
  v42 = a2;
  v56 = a3;
  v57 = a4;
  v40 = a5;
  v41 = a6;
  v44 = a7;
  memset(__b, 0, sizeof(__b));
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v55 = 0;
  v43 = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v59 = &v25 - v43;
  v74 = v8;
  v73 = v9;
  v72 = v10;
  v71 = v11;
  v70 = v12;
  v69 = v13;
  v68 = v14;
  __b[1] = 0;
  __b[2] = 0xF000000000000000;
  __b[3] = 0;
  __b[4] = 0xF000000000000000;
  v58 = _s6ParserV4TextVMa();
  LOBYTE(__b[0]) = *(v57 + v58[8]);
  v47 = *v57;
  v45 = v57[1];
  v46 = *(v57 + 2);
  v48 = v57[3];
  MEMORY[0x1E69E5928](v47);

  v49 = sub_1B0A79F30(v44, v47, v45, v48, v46);
  v50 = v15;
  MEMORY[0x1E69E5920](v47);

  v16 = __b[1];
  v17 = __b[2];
  __b[1] = v49;
  __b[2] = v50;
  sub_1B070E144(v16, v17);
  v51 = v57[4];
  v52 = v57[5];
  sub_1B03B2000(v51, v52);
  v53 = sub_1B0A6E884(v51, v52);
  v54 = v18;
  sub_1B0391D50(v51, v52);
  v19 = __b[3];
  v20 = __b[4];
  __b[3] = v53;
  __b[4] = v54;
  sub_1B070E144(v19, v20);
  __b[7] = *&v56[*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() + 44)];
  sub_1B08C49A4(v57 + v58[6], v59);
  v60 = sub_1B08C4AC8(v59);
  v61 = v21;
  if (v21)
  {
    v36 = v60;
    v37 = v61;
    v33 = v61;
    v32 = v60;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v64 = v34;
  v65 = v35;
  if (v35)
  {
    v66 = v64;
    v67 = v65;
  }

  else
  {
    v66 = sub_1B0E44838();
    v67 = v22;
    if (v65)
    {
      sub_1B03B1198(&v64);
    }
  }

  v29 = __b;
  __b[5] = v66;
  __b[6] = v67;
  v28 = 0;
  __b[8] = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C88, &qword_1B0EA40D0);
  v25 = sub_1B0E46A48();
  sub_1B0902AA8();
  __b[9] = sub_1B0E445D8();
  v26 = *(v57 + v58[7]);
  v27 = *(v57 + v58[9]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A71F8C(v42, v27, v40, v41, v44, v26);

  v30 = v63;
  v31 = 80;
  memcpy(v63, v29, sizeof(v63));
  sub_1B0A77F6C(v63, &v62);
  sub_1B039480C(v44);

  sub_1B08F5CB4(v57);
  sub_1B08F533C(v56);
  v23 = type metadata accessor for Message(v28);
  (*(*(v23 - 8) + 8))(v42);
  sub_1B0A77EC8(v29);
  return memcpy(v38, v30, v31);
}

uint64_t *sub_1B0A71F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v187 = v251;
  v210 = a5;
  v194 = a4;
  v193 = a3;
  v216 = a2;
  v192 = a6;
  v202 = a1;
  v204 = 0;
  v276 = 0;
  v275 = 0.0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v267[1] = 0;
  v267[0] = 0;
  v188 = 0;
  v264 = 0;
  v224 = 0;
  v257 = 0;
  v189 = *(_s6LoggerVMa_2() - 8);
  v211 = v189;
  v212 = *(v189 + 64);
  v190 = v212;
  MEMORY[0x1EEE9AC00](0);
  v215 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v215;
  v207 = sub_1B0E439A8();
  v196 = v207;
  v197 = *(v207 - 8);
  v206 = v197;
  v198 = v197;
  v199 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v201 = (v199 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = &v106 - v201;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = &v106 - v201;
  v203 = &v106 - v201;
  v276 = v202;
  v275 = v8;
  v274 = v10;
  v273 = v11;
  v272 = v12;
  v271 = v13;
  v270 = v14;
  v205 = &type metadata for DisplayPart.Attachment;
  v269 = sub_1B0E46A48();
  v268 = sub_1B0E46A48();
  v208 = *(v206 + 16);
  v209 = (v206 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v208(v9, v210, v207);
  sub_1B08F5590(v210, v215);
  v213 = *(v211 + 80);
  v214 = (v213 + 16) & ~v213;
  v221 = swift_allocObject();
  sub_1B0901DA8(v215, v221 + v214);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v230 = 7;
  v231 = swift_allocObject();
  *(v231 + 16) = v216;
  v245 = sub_1B0E43988();
  v217 = v245;
  v244 = sub_1B0E458D8();
  v218 = v244;
  v225 = 17;
  v235 = swift_allocObject();
  v219 = v235;
  *(v235 + 16) = v224;
  v236 = swift_allocObject();
  v220 = v236;
  v227 = 8;
  *(v236 + 16) = 8;
  v229 = 32;
  v15 = swift_allocObject();
  v16 = v221;
  v222 = v15;
  *(v15 + 16) = sub_1B0901E30;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v222;
  v237 = v17;
  v223 = v17;
  *(v17 + 16) = sub_1B06BCD8C;
  *(v17 + 24) = v18;
  v238 = swift_allocObject();
  v226 = v238;
  *(v238 + 16) = v224;
  v239 = swift_allocObject();
  v228 = v239;
  *(v239 + 16) = v227;
  v19 = swift_allocObject();
  v20 = v231;
  v232 = v19;
  *(v19 + 16) = sub_1B0A781C8;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v232;
  v242 = v21;
  v233 = v21;
  *(v21 + 16) = sub_1B03B0DF8;
  *(v21 + 24) = v22;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v234 = v243;
  v240 = sub_1B0E46A48();
  v241 = v23;

  v24 = v235;
  v25 = v241;
  *v241 = sub_1B0398F5C;
  v25[1] = v24;

  v26 = v236;
  v27 = v241;
  v241[2] = sub_1B0398F5C;
  v27[3] = v26;

  v28 = v237;
  v29 = v241;
  v241[4] = sub_1B03992D4;
  v29[5] = v28;

  v30 = v238;
  v31 = v241;
  v241[6] = sub_1B0398F5C;
  v31[7] = v30;

  v32 = v239;
  v33 = v241;
  v241[8] = sub_1B0398F5C;
  v33[9] = v32;

  v34 = v241;
  v35 = v242;
  v241[10] = sub_1B0399260;
  v34[11] = v35;
  sub_1B0394964();

  if (os_log_type_enabled(v245, v244))
  {
    v36 = v188;
    v181 = sub_1B0E45D78();
    v177 = v181;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v179 = 0;
    v182 = sub_1B03949A8(0);
    v180 = v182;
    v183 = sub_1B03949A8(v179);
    v250 = v181;
    v249 = v182;
    v248 = v183;
    v184 = &v250;
    sub_1B0394A48(0, &v250);
    sub_1B0394A48(2, v184);
    v246 = sub_1B0398F5C;
    v247 = v219;
    sub_1B03949FC(&v246, v184, &v249, &v248);
    v185 = v36;
    v186 = v36;
    if (v36)
    {
      v175 = 0;

      __break(1u);
    }

    else
    {
      v246 = sub_1B0398F5C;
      v247 = v220;
      sub_1B03949FC(&v246, &v250, &v249, &v248);
      v173 = 0;
      v174 = 0;
      v246 = sub_1B03992D4;
      v247 = v223;
      sub_1B03949FC(&v246, &v250, &v249, &v248);
      v171 = 0;
      v172 = 0;
      v246 = sub_1B0398F5C;
      v247 = v226;
      sub_1B03949FC(&v246, &v250, &v249, &v248);
      v169 = 0;
      v170 = 0;
      v246 = sub_1B0398F5C;
      v247 = v228;
      sub_1B03949FC(&v246, &v250, &v249, &v248);
      v167 = 0;
      v168 = 0;
      v246 = sub_1B0399260;
      v247 = v233;
      sub_1B03949FC(&v246, &v250, &v249, &v248);
      v165 = 0;
      v166 = 0;
      _os_log_impl(&dword_1B0389000, v217, v218, "[%lld] Text accumulator has %ld attachment(s).", v177, 0x16u);
      v164 = 0;
      sub_1B03998A8(v180);
      sub_1B03998A8(v183);
      sub_1B0E45D58();

      v176 = v165;
    }
  }

  else
  {
    v37 = v188;

    v176 = v37;
  }

  v162 = v176;

  v158 = *(v198 + 8);
  v159 = (v198 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v158(v203, v196);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v266 = v216;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  v160 = v161;
  sub_1B0A64E50();
  sub_1B0E45798();
  for (i = v162; ; i = v157)
  {
    v157 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CB0, &qword_1B0EA3E10);
    sub_1B0E46518();
    v38 = v187;
    v39 = v187[59];
    v40 = v187[60];
    v41 = v187[61];
    v187[70] = v187[62];
    v38[69] = v41;
    v38[68] = v40;
    v38[67] = v39;
    v42 = v38[63];
    v43 = v38[64];
    v44 = v38[65];
    v38[74] = v38[66];
    v38[73] = v44;
    v38[72] = v43;
    v38[71] = v42;
    v45 = v38[67];
    v46 = v38[68];
    v47 = v38[69];
    v38[78] = v38[70];
    v38[77] = v47;
    v38[76] = v46;
    v38[75] = v45;
    v48 = v38[71];
    v49 = v38[72];
    v50 = v38[73];
    v38[82] = v38[74];
    v38[81] = v50;
    v38[80] = v49;
    v38[79] = v48;
    if (sub_1B0A64ED8(v265) == 1)
    {
      break;
    }

    v51 = v187;
    v52 = v187[75];
    v53 = v187[76];
    v54 = v187[77];
    v187[104] = v187[78];
    v51[103] = v54;
    v51[102] = v53;
    v51[101] = v52;
    v55 = v51[79];
    v56 = v51[80];
    v57 = v51[81];
    v51[108] = v51[82];
    v51[107] = v57;
    v51[106] = v56;
    v51[105] = v55;
    v153 = v265;
    sub_1B08C4F88(v265, v258);
    v156 = v283;
    v155 = sub_1B0A68600(v283);
    v154 = v155;
    v257 = v155;
    sub_1B08C4F88(v153, v256);
    sub_1B0A651EC(v156, v155, v193, v277);
    v58 = v187;
    v59 = v277[0];
    v60 = v277[1];
    v280 = v278;
    v187[95] = v277[2];
    v58[94] = v60;
    v58[93] = v59;
    if (v279)
    {
      v61 = v187;
      v62 = v187[93];
      v63 = v187[94];
      v64 = v187[95];
      v282 = v280;
      v187[99] = v64;
      v61[98] = v63;
      v61[97] = v62;
      sub_1B0A65154(v281, &v255);
      v65 = v187;
      v66 = v187[97];
      v67 = v187[98];
      v68 = v187[99];
      v254 = v282;
      v187[34] = v68;
      v65[33] = v67;
      v65[32] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
      sub_1B0E452E8();
      if (sub_1B0A63DB8())
      {
        sub_1B08C4F88(v265, v252);
        v69 = v187;
        v70 = v187[101];
        v71 = v187[102];
        v72 = v187[103];
        v251[3] = v187[104];
        v251[2] = v72;
        v251[1] = v71;
        v251[0] = v70;
        v73 = v187[105];
        v74 = v187[106];
        v75 = v187[107];
        v187[7] = v187[108];
        v69[6] = v75;
        v251[5] = v74;
        v251[4] = v73;
        sub_1B0E452E8();
      }

      else if (sub_1B0A650C8())
      {
        sub_1B08C4F88(v265, v253);
        v76 = v187;
        v77 = v187[101];
        v78 = v187[102];
        v79 = v187[103];
        v187[19] = v187[104];
        v76[18] = v79;
        v76[17] = v78;
        v76[16] = v77;
        v80 = v76[105];
        v81 = v76[106];
        v82 = v76[107];
        v76[23] = v76[108];
        v76[22] = v82;
        v76[21] = v81;
        v76[20] = v80;
        sub_1B0E452E8();
      }

      sub_1B08D9204(v281);
      sub_1B08C5168(v265);
    }

    else
    {
      sub_1B08C5168(v265);
    }
  }

  v83 = v157;
  sub_1B039E440(v267);
  v148 = v269;
  v146 = v269;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v149 = v268;
  v147 = v268;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v150 = &v106;
  v84 = MEMORY[0x1EEE9AC00](&v106);
  v85 = v210;
  v86 = v195;
  *(&v106 - 6) = v87;
  *(&v106 - 5) = v85;
  *(&v106 - 4) = v86;
  *(&v106 - 3) = v84;
  *(&v106 - 2) = v88;
  Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(2u, sub_1B0A79108, (&v106 - 8), sub_1B0A75EEC, 0, v89);
  v151 = v83;
  v152 = v83;
  if (v83)
  {
    v91 = v200;
    v126 = v152;
    v125 = 0;

    v92 = v126;
    v264 = v126;
    v208(v91, v210, v196);
    sub_1B08F5590(v210, v191);
    v127 = (v213 + 16) & ~v213;
    v135 = swift_allocObject();
    sub_1B0901DA8(v191, v135 + v127);
    v144 = sub_1B0E43988();
    v128 = v144;
    v143 = sub_1B0E458E8();
    v129 = v143;
    v130 = 17;
    v134 = 7;
    v138 = swift_allocObject();
    v131 = v138;
    *(v138 + 16) = 0;
    v139 = swift_allocObject();
    v132 = v139;
    *(v139 + 16) = 8;
    v133 = 32;
    v93 = swift_allocObject();
    v94 = v135;
    v136 = v93;
    *(v93 + 16) = sub_1B0901E30;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v136;
    v142 = v95;
    v137 = v95;
    *(v95 + 16) = sub_1B06BCD8C;
    *(v95 + 24) = v96;
    v140 = sub_1B0E46A48();
    v141 = v97;

    v98 = v138;
    v99 = v141;
    *v141 = sub_1B0398F5C;
    v99[1] = v98;

    v100 = v139;
    v101 = v141;
    v141[2] = sub_1B0398F5C;
    v101[3] = v100;

    v102 = v141;
    v103 = v142;
    v141[4] = sub_1B03992D4;
    v102[5] = v103;
    sub_1B0394964();

    if (os_log_type_enabled(v144, v143))
    {
      v104 = v125;
      v119 = sub_1B0E45D78();
      v115 = v119;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v117 = 0;
      v120 = sub_1B03949A8(0);
      v118 = v120;
      v121 = sub_1B03949A8(v117);
      v263 = v119;
      v262 = v120;
      v261 = v121;
      v122 = &v263;
      sub_1B0394A48(0, &v263);
      sub_1B0394A48(1, v122);
      v259 = sub_1B0398F5C;
      v260 = v131;
      sub_1B03949FC(&v259, v122, &v262, &v261);
      v123 = v104;
      v124 = v104;
      if (v104)
      {
        v113 = 0;

        __break(1u);
      }

      else
      {
        v259 = sub_1B0398F5C;
        v260 = v132;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v111 = 0;
        v112 = 0;
        v259 = sub_1B03992D4;
        v260 = v137;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v109 = 0;
        v110 = 0;
        _os_log_impl(&dword_1B0389000, v128, v129, "[%lld] Failed to extract attachments from MIME.", v115, 0xCu);
        v108 = 0;
        sub_1B03998A8(v118);
        sub_1B03998A8(v121);
        sub_1B0E45D58();

        v114 = v109;
      }
    }

    else
    {
      v105 = v125;

      v114 = v105;
    }

    v107 = v114;

    v158(v200, v196);
    v145 = v107;
  }

  else
  {

    v145 = v151;
  }

  sub_1B039E440(&v268);
  return sub_1B039E440(&v269);
}

void *sub_1B0A73370(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v73 = v143;
  v80 = a1;
  v91 = a2;
  v86 = a3;
  v78 = a4;
  v79 = a5;
  v92 = sub_1B0A79120;
  v94 = sub_1B0901E30;
  v96 = sub_1B06BCD8C;
  v100 = sub_1B07AD0A4;
  v104 = sub_1B039BCF8;
  v106 = sub_1B0398F5C;
  v108 = sub_1B0398F5C;
  v110 = sub_1B03992D4;
  v112 = sub_1B0398F5C;
  v114 = sub_1B0398F5C;
  v117 = sub_1B039BCEC;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0.0;
  v134 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v74 = 0;
  v75 = 0;
  v76 = *(_s6LoggerVMa_2() - 8);
  v87 = v76;
  v88 = *(v76 + 64);
  v77 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v90 = &v43 - v77;
  v81 = sub_1B0E439A8();
  v84 = *(v81 - 8);
  v82 = v81 - 8;
  v83 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v80);
  v85 = &v43 - v83;
  v142 = v6;
  v141 = v91;
  v140 = v7;
  v139 = v8;
  v138 = v5;
  (*(v84 + 16))(&v43 - v83);
  sub_1B08F5590(v86, v90);
  v89 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v102 = 7;
  v95 = swift_allocObject();
  sub_1B0901DA8(v90, v95 + v89);
  sub_1B07B47AC(v91, v137);
  v93 = swift_allocObject();
  memcpy((v93 + 16), v91, 0x58uLL);

  v101 = 32;
  v9 = swift_allocObject();
  v10 = v93;
  v103 = v9;
  *(v9 + 16) = v92;
  *(v9 + 24) = v10;

  v121 = sub_1B0E43988();
  v122 = sub_1B0E458D8();
  v98 = 17;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  v109 = swift_allocObject();
  v99 = 8;
  *(v109 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v95;
  v97 = v11;
  *(v11 + 16) = v94;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v97;
  v111 = v13;
  *(v13 + 16) = v96;
  *(v13 + 24) = v14;
  v113 = swift_allocObject();
  *(v113 + 16) = 34;
  v115 = swift_allocObject();
  *(v115 + 16) = v99;
  v15 = swift_allocObject();
  v16 = v103;
  v105 = v15;
  *(v15 + 16) = v100;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v105;
  v118 = v17;
  *(v17 + 16) = v104;
  *(v17 + 24) = v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v116 = sub_1B0E46A48();
  v119 = v19;

  v20 = v107;
  v21 = v119;
  *v119 = v106;
  v21[1] = v20;

  v22 = v109;
  v23 = v119;
  v119[2] = v108;
  v23[3] = v22;

  v24 = v111;
  v25 = v119;
  v119[4] = v110;
  v25[5] = v24;

  v26 = v113;
  v27 = v119;
  v119[6] = v112;
  v27[7] = v26;

  v28 = v115;
  v29 = v119;
  v119[8] = v114;
  v29[9] = v28;

  v30 = v118;
  v31 = v119;
  v119[10] = v117;
  v31[11] = v30;
  sub_1B0394964();

  if (os_log_type_enabled(v121, v122))
  {
    v32 = v74;
    v65 = sub_1B0E45D78();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v66 = sub_1B03949A8(0);
    v67 = sub_1B03949A8(1);
    v69 = &v127;
    v127 = v65;
    v70 = &v126;
    v126 = v66;
    v71 = &v125;
    v125 = v67;
    v68 = 2;
    sub_1B0394A48(2, &v127);
    sub_1B0394A48(v68, v69);
    v123 = v106;
    v124 = v107;
    sub_1B03949FC(&v123, v69, v70, v71);
    v72 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v123 = v108;
      v124 = v109;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v63 = 0;
      v123 = v110;
      v124 = v111;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v62 = 0;
      v123 = v112;
      v124 = v113;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v61 = 0;
      v123 = v114;
      v124 = v115;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v60 = 0;
      v123 = v117;
      v124 = v118;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      _os_log_impl(&dword_1B0389000, v121, v122, "[%lld] Inserting image attachment data [%{public}s].", v65, 0x16u);
      sub_1B03998A8(v66);
      sub_1B03998A8(v67);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v121);
  (*(v84 + 8))(v85, v81);
  v58 = sub_1B0E44838();
  v59 = v33;
  v34 = v91[9];
  v35 = v91[10];
  v36 = sub_1B0E450E8();
  sub_1B0A6FBD0(v58, v59, v36);

  *v73 = *(v80 + 80);
  result = sub_1B070B280(v143, &v136);
  v73[1] = *v73;
  if (v145)
  {
    v52 = v144;
    v53 = v145;
    v134 = v144;
    v135 = v145;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = sub_1B0A6A7C8(v52, v53);
    v55 = v38;
    v132 = v54;
    v133 = v38;
    v56 = sub_1B0A73EE0();
    v57 = v39;
    if ((v39 & 0xF000000000000000) != 0xF000000000000000)
    {
      v50 = v56;
      v51 = v57;
      v49 = v57;
      v48 = v56;
      v130 = v56;
      v131 = v57;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = objc_opt_self();
      sub_1B03B2000(v48, v49);
      v44 = sub_1B0E42F18();
      sub_1B0391D50(v48, v49);
      HIDWORD(v40) = HIDWORD(v79);
      *&v40 = v79;
      v47 = [v43 scaleImageFromData:v44 maxWidth:v40];
      MEMORY[0x1E69E5920](v44);
      v41 = sub_1B0E42F38();
      v46 = v129;
      v129[0] = v41;
      v129[1] = v42;
      v45 = v128;
      v128[0] = v54;
      v128[1] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CC0, &qword_1B0EA40D8);
      sub_1B0E44788();
      MEMORY[0x1E69E5920](v47);
      sub_1B0391D50(v48, v49);
    }
  }

  return result;
}

uint64_t sub_1B0A73EE0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v31 = sub_1B0E450C8();
  if (!v31)
  {
    return 0;
  }

  v3 = *(v30 + 72);
  v4 = *(v30 + 80);
  if (sub_1B0E450E8() >= 2000000)
  {
    return 0;
  }

  sub_1B071952C();
  v5 = *(v30 + 72);
  v6 = *(v30 + 80);
  v7 = sub_1B0E450E8();
  v29 = sub_1B0A79074(v31, v7, 0);
  v33 = *(v30 + 24);
  if (v33 == 5)
  {
    goto LABEL_40;
  }

  if (v33 == 3)
  {
    sub_1B0A79128();
    v19 = sub_1B08C0C38();
    sub_1B075D234();
    MEMORY[0x1E69E5928](v19);
    v20 = sub_1B075BDE4();
    MEMORY[0x1E69E5928](v20);
    if (v20)
    {
      MEMORY[0x1E69E5928](v29);
      [v20 appendData_];
      MEMORY[0x1E69E5920](v29);
      MEMORY[0x1E69E5920](v20);
    }

    MEMORY[0x1E69E5928](v20);
    if (v20)
    {
      [v20 done];
      MEMORY[0x1E69E5920](v20);
    }

    v18 = [v19 data];
    if (v18)
    {
      v14 = sub_1B0E42F38();
      v15 = v10;
      MEMORY[0x1E69E5920](v18);
      v16 = v14;
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0xF000000000000000;
    }

    if ((v17 & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B082922C();
      v11 = sub_1B0E45748();
      if ((v11 & 1) == 0)
      {
        MEMORY[0x1E69E5920](v20);
        MEMORY[0x1E69E5920](v19);
        MEMORY[0x1E69E5920](v29);
        return v16;
      }

      sub_1B0391D50(v16, v17);
    }

    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v29);
    return 0;
  }

  if (v33 != 4)
  {
LABEL_40:
    v32 = *(v30 + 72);
    v13 = sub_1B0E43008();
    MEMORY[0x1E69E5920](v29);
    return v13;
  }

  sub_1B0A79128();
  v27 = sub_1B08C0C38();
  sub_1B075D360();
  MEMORY[0x1E69E5928](v27);
  v28 = sub_1B075BDE4();
  MEMORY[0x1E69E5928](v28);
  if (v28)
  {
    MEMORY[0x1E69E5928](v29);
    [v28 appendData_];
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v28);
  }

  MEMORY[0x1E69E5928](v28);
  if (v28)
  {
    [v28 done];
    MEMORY[0x1E69E5920](v28);
  }

  v26 = [v27 data];
  if (v26)
  {
    v22 = sub_1B0E42F38();
    v23 = v8;
    MEMORY[0x1E69E5920](v26);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0xF000000000000000;
  }

  if ((v25 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_21;
  }

  sub_1B082922C();
  v9 = sub_1B0E45748();
  if (v9)
  {
    sub_1B0391D50(v24, v25);
LABEL_21:
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v29);
    return 0;
  }

  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v29);
  return v24;
}

void *sub_1B0A74610(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  v80 = a2;
  v75 = a3;
  v68 = a4;
  v81 = sub_1B0A79120;
  v83 = sub_1B0901E30;
  v85 = sub_1B06BCD8C;
  v89 = sub_1B07AD0A4;
  v93 = sub_1B039BCF8;
  v95 = sub_1B0398F5C;
  v97 = sub_1B0398F5C;
  v99 = sub_1B03992D4;
  v101 = sub_1B0398F5C;
  v103 = sub_1B0398F5C;
  v106 = sub_1B039BCEC;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v123 = 0uLL;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  v64 = 0;
  v65 = 0;
  v66 = *(_s6LoggerVMa_2() - 8);
  v76 = v66;
  v77 = *(v66 + 64);
  v67 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = v39 - v67;
  v70 = sub_1B0E439A8();
  v73 = *(v70 - 8);
  v71 = v70 - 8;
  v72 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v69);
  v74 = v39 - v72;
  v129 = v5;
  v128 = v80;
  v127 = v6;
  v126 = v7;
  (*(v73 + 16))(v39 - v72, v4);
  sub_1B08F5590(v75, v79);
  v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v91 = 7;
  v84 = swift_allocObject();
  sub_1B0901DA8(v79, v84 + v78);
  sub_1B07B47AC(v80, v125);
  v82 = swift_allocObject();
  memcpy((v82 + 16), v80, 0x58uLL);

  v90 = 32;
  v8 = swift_allocObject();
  v9 = v82;
  v92 = v8;
  *(v8 + 16) = v81;
  *(v8 + 24) = v9;

  v110 = sub_1B0E43988();
  v111 = sub_1B0E458D8();
  v87 = 17;
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  v98 = swift_allocObject();
  v88 = 8;
  *(v98 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v84;
  v86 = v10;
  *(v10 + 16) = v83;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v86;
  v100 = v12;
  *(v12 + 16) = v85;
  *(v12 + 24) = v13;
  v102 = swift_allocObject();
  *(v102 + 16) = 34;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v14 = swift_allocObject();
  v15 = v92;
  v94 = v14;
  *(v14 + 16) = v89;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v94;
  v107 = v16;
  *(v16 + 16) = v93;
  *(v16 + 24) = v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v105 = sub_1B0E46A48();
  v108 = v18;

  v19 = v96;
  v20 = v108;
  *v108 = v95;
  v20[1] = v19;

  v21 = v98;
  v22 = v108;
  v108[2] = v97;
  v22[3] = v21;

  v23 = v100;
  v24 = v108;
  v108[4] = v99;
  v24[5] = v23;

  v25 = v102;
  v26 = v108;
  v108[6] = v101;
  v26[7] = v25;

  v27 = v104;
  v28 = v108;
  v108[8] = v103;
  v28[9] = v27;

  v29 = v107;
  v30 = v108;
  v108[10] = v106;
  v30[11] = v29;
  sub_1B0394964();

  if (os_log_type_enabled(v110, v111))
  {
    v31 = v64;
    v56 = sub_1B0E45D78();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v57 = sub_1B03949A8(0);
    v58 = sub_1B03949A8(1);
    v60 = &v116;
    v116 = v56;
    v61 = &v115;
    v115 = v57;
    v62 = &v114;
    v114 = v58;
    v59 = 2;
    sub_1B0394A48(2, &v116);
    sub_1B0394A48(v59, v60);
    v112 = v95;
    v113 = v96;
    sub_1B03949FC(&v112, v60, v61, v62);
    v63 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v112 = v97;
      v113 = v98;
      sub_1B03949FC(&v112, &v116, &v115, &v114);
      v54 = 0;
      v112 = v99;
      v113 = v100;
      sub_1B03949FC(&v112, &v116, &v115, &v114);
      v53 = 0;
      v112 = v101;
      v113 = v102;
      sub_1B03949FC(&v112, &v116, &v115, &v114);
      v52 = 0;
      v112 = v103;
      v113 = v104;
      sub_1B03949FC(&v112, &v116, &v115, &v114);
      v51 = 0;
      v112 = v106;
      v113 = v107;
      sub_1B03949FC(&v112, &v116, &v115, &v114);
      _os_log_impl(&dword_1B0389000, v110, v111, "[%lld] Inserting attachment data [%{public}s].", v56, 0x16u);
      sub_1B03998A8(v57);
      sub_1B03998A8(v58);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v110);
  (*(v73 + 8))(v74, v70);
  v49 = sub_1B0E44838();
  v50 = v32;
  v33 = v80[9];
  v34 = v80[10];
  v35 = sub_1B0E450E8();
  sub_1B0A6FBD0(v49, v50, v35);

  v130 = *(v69 + 80);
  result = sub_1B070B280(&v130, &v124);
  v131 = v130;
  if (*(&v130 + 1))
  {
    v44 = v131;
    v123 = v131;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = sub_1B0A6A7C8(v44, *(&v44 + 1));
    v46 = v37;
    v121 = v45;
    v122 = v37;
    v47 = sub_1B0A73EE0();
    v48 = v38;
    if ((v38 & 0xF000000000000000) != 0xF000000000000000)
    {
      v42 = v47;
      v43 = v48;
      v41 = v48;
      v40 = v47;
      v119 = v47;
      v120 = v48;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B2000(v40, v41);
      v39[1] = v118;
      v118[0] = v40;
      v118[1] = v41;
      v39[0] = v117;
      v117[0] = v45;
      v117[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CC0, &qword_1B0EA40D8);
      sub_1B0E44788();
      sub_1B0391D50(v40, v41);
    }
  }

  return result;
}

uint64_t sub_1B0A750E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v116 = &v186;
  v125 = a5;
  v124 = a6;
  v123 = a4;
  v122 = a3;
  v130 = a2;
  v131 = a1;
  v117 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0.0;
  v187 = 0;
  v6 = *a1;
  v193 = *(a1 + 1);
  v192 = v6;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v197 = a1[10];
  v196 = v9;
  v195 = v8;
  v194 = v7;
  v199[9] = v193;
  v199[8] = v192;
  v200 = v197;
  v199[12] = v9;
  v199[11] = v8;
  v199[10] = v7;
  v118 = *(_s6LoggerVMa_2() - 8);
  v119 = v118;
  v120 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](0);
  v121 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1B0E439A8();
  v127 = *(v126 - 8);
  v128 = v127;
  v11 = *(v127 + 64);
  v12 = MEMORY[0x1EEE9AC00](v130);
  v129 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v14;
  v190 = v15;
  v189 = v16;
  v188 = v12;
  v187 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v185 = v130;
  sub_1B07B47AC(v131, &v184);
  v136 = v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  v132 = v133;
  v134 = sub_1B0A791B8();
  sub_1B0E44FB8();
  v135 = 0;
  sub_1B07AD030(v131);
  sub_1B039E440(&v185);
  v18 = *v116;
  v19 = v116[1];
  v20 = v116[2];
  v171 = v116[3];
  v170 = v20;
  v169 = v19;
  v168 = v18;
  v21 = v116[4];
  v22 = v116[5];
  v23 = v116[6];
  v175 = v116[7];
  v174 = v23;
  v173 = v22;
  v172 = v21;
  v179 = v171;
  v178 = v170;
  v177 = v169;
  v176 = v168;
  v183 = v175;
  v182 = v23;
  v181 = v22;
  v180 = v21;
  if (sub_1B0A64ED8(&v176) == 1)
  {
    v24 = v135;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v159 = v125;
    sub_1B07B47AC(v131, &v158);
    v113 = &v60;
    MEMORY[0x1EEE9AC00](&v60);
    *(&v60 - 2) = v25;
    sub_1B0E44FB8();
    v114 = v24;
    if (v24)
    {
      sub_1B07AD030(v131);
      __break(1u);
    }

    else
    {
      sub_1B07AD030(v131);
      sub_1B039E440(&v159);
      v145 = v163;
      v144 = v162;
      v143 = v161;
      *&v142[88] = v160;
      v149 = v167;
      v148 = v166;
      v147 = v165;
      v146 = v164;
      v153 = v163;
      v152 = v162;
      v151 = v161;
      v150 = v160;
      v157 = v167;
      v156 = v166;
      v155 = v165;
      v154 = v164;
      v27 = sub_1B0A64ED8(&v150);
      if (v27 == 1)
      {
        (*(v128 + 16))(v129, v122, v126);
        sub_1B08F5590(v122, v121);
        v83 = (*(v119 + 80) + 16) & ~*(v119 + 80);
        v89 = swift_allocObject();
        sub_1B0901DA8(v121, v89 + v83);
        sub_1B07B47AC(v131, v142);
        v97 = 7;
        v28 = swift_allocObject();
        v29 = v131;
        v84 = v28;
        v30 = *v131;
        *(v28 + 32) = *(v131 + 1);
        *(v28 + 16) = v30;
        v31 = *(v29 + 2);
        v32 = *(v29 + 3);
        v33 = *(v29 + 4);
        *(v28 + 96) = v29[10];
        *(v28 + 80) = v33;
        *(v28 + 64) = v32;
        *(v28 + 48) = v31;

        v96 = 32;
        v34 = swift_allocObject();
        v35 = v84;
        v98 = v34;
        *(v34 + 16) = sub_1B0A79120;
        *(v34 + 24) = v35;

        v111 = sub_1B0E43988();
        v85 = v111;
        v110 = sub_1B0E458D8();
        v86 = v110;
        v92 = 17;
        v101 = swift_allocObject();
        v87 = v101;
        *(v101 + 16) = 0;
        v102 = swift_allocObject();
        v88 = v102;
        v94 = 8;
        *(v102 + 16) = 8;
        v36 = swift_allocObject();
        v37 = v89;
        v90 = v36;
        *(v36 + 16) = sub_1B0901E30;
        *(v36 + 24) = v37;
        v38 = swift_allocObject();
        v39 = v90;
        v103 = v38;
        v91 = v38;
        *(v38 + 16) = sub_1B06BCD8C;
        *(v38 + 24) = v39;
        v104 = swift_allocObject();
        v93 = v104;
        *(v104 + 16) = 34;
        v105 = swift_allocObject();
        v95 = v105;
        *(v105 + 16) = v94;
        v40 = swift_allocObject();
        v41 = v98;
        v99 = v40;
        *(v40 + 16) = sub_1B07AD0A4;
        *(v40 + 24) = v41;
        v42 = swift_allocObject();
        v43 = v99;
        v108 = v42;
        v100 = v42;
        *(v42 + 16) = sub_1B039BCF8;
        *(v42 + 24) = v43;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v106 = sub_1B0E46A48();
        v107 = v44;

        v45 = v101;
        v46 = v107;
        *v107 = sub_1B0398F5C;
        v46[1] = v45;

        v47 = v102;
        v48 = v107;
        v107[2] = sub_1B0398F5C;
        v48[3] = v47;

        v49 = v103;
        v50 = v107;
        v107[4] = sub_1B03992D4;
        v50[5] = v49;

        v51 = v104;
        v52 = v107;
        v107[6] = sub_1B0398F5C;
        v52[7] = v51;

        v53 = v105;
        v54 = v107;
        v107[8] = sub_1B0398F5C;
        v54[9] = v53;

        v55 = v107;
        v56 = v108;
        v107[10] = sub_1B039BCEC;
        v55[11] = v56;
        sub_1B0394964();

        if (os_log_type_enabled(v111, v110))
        {
          v58 = v114;
          v76 = sub_1B0E45D78();
          v73 = v76;
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v77 = sub_1B03949A8(0);
          v75 = v77;
          v78 = sub_1B03949A8(1);
          v141 = v76;
          v140 = v77;
          v139 = v78;
          v79 = 2;
          v80 = &v141;
          sub_1B0394A48(2, &v141);
          sub_1B0394A48(v79, v80);
          v137 = sub_1B0398F5C;
          v138 = v87;
          sub_1B03949FC(&v137, v80, &v140, &v139);
          v81 = v58;
          v82 = v58;
          if (v58)
          {
            v71 = 0;

            __break(1u);
          }

          else
          {
            v137 = sub_1B0398F5C;
            v138 = v88;
            sub_1B03949FC(&v137, &v141, &v140, &v139);
            v69 = 0;
            v70 = 0;
            v137 = sub_1B03992D4;
            v138 = v91;
            sub_1B03949FC(&v137, &v141, &v140, &v139);
            v67 = 0;
            v68 = 0;
            v137 = sub_1B0398F5C;
            v138 = v93;
            sub_1B03949FC(&v137, &v141, &v140, &v139);
            v65 = 0;
            v66 = 0;
            v137 = sub_1B0398F5C;
            v138 = v95;
            sub_1B03949FC(&v137, &v141, &v140, &v139);
            v63 = 0;
            v64 = 0;
            v137 = sub_1B039BCEC;
            v138 = v100;
            sub_1B03949FC(&v137, &v141, &v140, &v139);
            v61 = 0;
            v62 = 0;
            _os_log_impl(&dword_1B0389000, v85, v86, "[%lld] Skipping attachment [%{public}s].", v73, 0x16u);
            sub_1B03998A8(v75);
            sub_1B03998A8(v78);
            sub_1B0E45D58();

            v72 = v61;
          }
        }

        else
        {
          v59 = v114;

          v72 = v59;
        }

        v60 = v72;

        (*(v128 + 8))(v129, v126);
        return v60;
      }
    }

    v199[3] = v153;
    v199[2] = v152;
    v199[1] = v151;
    v199[0] = v150;
    v199[7] = v157;
    v199[6] = v156;
    v199[5] = v155;
    v199[4] = v154;
    sub_1B0A74610(v199, v131, v122, v123);
    sub_1B08C5168(&v150);
    return v114;
  }

  v198[3] = v179;
  v198[2] = v178;
  v198[1] = v177;
  v198[0] = v176;
  v198[7] = v183;
  v198[6] = v182;
  v198[5] = v181;
  v198[4] = v180;
  sub_1B0A73370(v198, v131, v122, v123, v124);
  sub_1B08C5168(&v176);
  return v135;
}

uint64_t sub_1B0A75E68(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5);

  return v6 & 1;
}

uint64_t sub_1B0A75F20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s6ParserVMa() + 28);
  v2 = sub_1B0E431A8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A75F98(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E431A8();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = _s6ParserVMa();
  (*(v9 + 40))(v1 + *(v3 + 28), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B0A760B8()
{
  v2 = *(v0 + *(_s6ParserVMa() + 32));

  return v2;
}

uint64_t sub_1B0A760F0(uint64_t a1)
{

  v2 = (v1 + *(_s6ParserVMa() + 32));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0A7613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v12 = _s6ParserVMa();
  v8 = *(v12 + 28);
  v6 = sub_1B0E431A8();
  (*(*(v6 - 8) + 32))(a5 + v8, a3);
  result = v12;
  *(a5 + *(v12 + 32)) = a4;
  return result;
}

char *sub_1B0A761E4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v6 = _s6ParserVMa();
  v5 = *(v6 + 28);
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v9 = *(v6 + 32);
  v10 = *&a1[v9];

  result = a2;
  *&a2[v9] = v10;
  return result;
}

uint64_t _s6ParserV4TextVMa()
{
  v1 = qword_1EB6E3D10;
  if (!qword_1EB6E3D10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

double sub_1B0A76348()
{
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 3);
  MEMORY[0x1E69E5928](*v0);

  return v3;
}

uint64_t sub_1B0A763A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MEMORY[0x1E69E5928](a1);

  v5 = *v4;
  v9 = *(v4 + 3);
  *v4 = a1;
  *(v4 + 1) = a2;
  v4[2] = a4;
  *(v4 + 3) = a3;
  MEMORY[0x1E69E5920](*&v5);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0A76440()
{
  v2 = *(v0 + 32);
  sub_1B03B2000(v2, *(v0 + 40));
  return v2;
}

uint64_t sub_1B0A76478(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1B0391D50(v3, v4);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B0A76500(uint64_t a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B08C49A4(v2, v5 - v5[0]);
  v3 = _s6ParserV4TextVMa();
  sub_1B0A79240(v6, (v1 + *(v3 + 24)));
  return sub_1B08C4E3C(v7);
}

double sub_1B0A765CC(double a1)
{
  v2 = _s6ParserV4TextVMa();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_1B0A7662C(unsigned int a1)
{
  v2 = _s6ParserV4TextVMa();
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_1B0A76668()
{
  v2 = *(v0 + *(_s6ParserV4TextVMa() + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A766A0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s6ParserV4TextVMa() + 36));
  v3 = *v2;
  *v2 = a1;
}

int *sub_1B0A766EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v17 = _s6ParserV4TextVMa();
  sub_1B0A79E60(a6, (a9 + v17[6]));
  result = v17;
  *(a9 + v17[7]) = a11;
  *(a9 + v17[8]) = a7;
  *(a9 + v17[9]) = a8;
  return result;
}

uint64_t sub_1B0A7678C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a1;
  v41 = a2;
  v36 = a4;
  v37 = a5;
  v39 = sub_1B0A7934C;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v54 = &v68;
  v68 = 0u;
  v69 = 0u;
  v53 = &v66;
  v66 = 0;
  v67 = 0;
  v51 = &v65;
  v65 = 0;
  v38 = &v64;
  v64 = 0;
  v34 = 0;
  v20 = (*(*(_s6ParserV4TextVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v50 = (&v20 - v20);
  v75 = &v20 - v20;
  v29 = sub_1B0E431A8();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v21 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v20 - v21;
  v6 = type metadata accessor for MessageSummary.Accumulator();
  v22 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v20 - v22;
  v23 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v20 - v22);
  v52 = &v20 - v23;
  v74 = &v20 - v23;
  v73 = v8;
  v72 = a3;
  v71 = v9;
  v70 = v10;
  v24 = v8[1];
  v25 = v8[2];
  v26 = *v8;

  v11 = sub_1B0A7AE10();
  v12 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v11);
  *&v68 = v13;
  *(&v68 + 1) = v14;
  *&v69 = v12;
  *(&v69 + 1) = v15;
  v66 = sub_1B0A6D998();
  v67 = v16;
  v35 = _s6ParserVMa();
  v30 = *(v41 + *(v35 + 32));

  (*(v27 + 16))(v31, v41 + *(v35 + 28), v29);
  v32 = sub_1B07575C4();
  v33 = v17;
  v18 = sub_1B08C4650();
  sub_1B08C4674(500, v30, v31, v32, v33, v18, v52);
  v65 = sub_1B0E46A48();
  v64 = 0;
  v40 = *(v41 + *(v35 + 32));

  v57 = v36;
  v58 = v37;
  v59 = v54;
  v60 = v38;
  v61 = v53;
  v62 = v52;
  v63 = v51;
  Message.enumeratePartsForDisplay(strategy:maximumByteCountPerPart:cache:closure:)(0, 1000000, v40, v39, v56);

  v42 = v68;
  v43 = v69;
  MEMORY[0x1E69E5928](v68);

  v44 = v66;
  v45 = v67;
  sub_1B03B2000(v66, v67);
  sub_1B08C49A4(v52, v46);
  v47 = *(v41 + 16);
  v48 = v65;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A766EC(v42, *(&v42 + 1), *(&v43 + 1), v44, v45, v46, 1, v48, v50, *&v43, v47);
  sub_1B0A77C9C(v50, v49);
  v55 = v64;
  sub_1B08F5CB4(v50);
  sub_1B039E440(v51);
  sub_1B08C4E3C(v52);
  sub_1B075D3E8(v53);
  sub_1B0A7936C(v54);
  return v55 & 1;
}

__n128 sub_1B0A76D34(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v8 = _s6ParserV4TextVMa();
  v6 = a1 + v8[6];
  v7 = a2 + v8[6];
  *v7 = *v6;
  *(v7 + 1) = *(v6 + 1);
  v5 = type metadata accessor for MessageSummary.Accumulator();
  v4 = v5[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 32))(&v7[v4], &v6[v4]);
  result = *&v6[v5[7]];
  *&v7[v5[7]] = result;
  *&v7[v5[8]] = *&v6[v5[8]];
  *(a2 + v8[7]) = *(a1 + v8[7]);
  *(a2 + v8[8]) = *(a1 + v8[8]);
  *(a2 + v8[9]) = *(a1 + v8[9]);
  return result;
}

uint64_t *sub_1B0A76E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = a2;
  v118 = a3;
  v103 = a4;
  v104 = a5;
  v105 = a6;
  v106 = a7;
  v107 = a8;
  v125 = sub_1B0901E30;
  v129 = sub_1B06BCD8C;
  v131 = sub_1B0398F5C;
  v133 = sub_1B0398F5C;
  v136 = sub_1B03992D4;
  v94 = sub_1B0901E30;
  v95 = sub_1B06BCD8C;
  v96 = sub_1B0398F5C;
  v97 = sub_1B0398F5C;
  v98 = sub_1B03992D4;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v99 = 0;
  v155 = 0;
  v100 = 0;
  v101 = *(_s6LoggerVMa_2() - 8);
  v119 = v101;
  v120 = *(v101 + 64);
  v102 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v123 = v49 - v102;
  v115 = sub_1B0E439A8();
  v113 = *(v115 - 8);
  v114 = v115 - 8;
  v109 = (v113[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v49 - v109;
  v111 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v112 = v49 - v111;
  v163 = a1;
  v162 = v11;
  v161 = v12;
  v160 = v13;
  v159 = v14;
  v158 = v15;
  v157 = v16;
  v156 = v17;
  sub_1B0A6AE24(v11, v164);
  v116 = v113[2];
  v117 = v113 + 2;
  v116(v112, v118, v115);
  sub_1B08F5590(v118, v123);
  v121 = *(v119 + 80);
  v122 = (v121 + 16) & ~v121;
  v127 = 7;
  v128 = swift_allocObject();
  sub_1B0901DA8(v123, v128 + v122);
  v140 = sub_1B0E43988();
  v141 = sub_1B0E458D8();
  v124 = 17;
  v132 = swift_allocObject();
  *(v132 + 16) = 0;
  v134 = swift_allocObject();
  *(v134 + 16) = 8;
  v126 = 32;
  v18 = swift_allocObject();
  v19 = v128;
  v130 = v18;
  *(v18 + 16) = v125;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v130;
  v137 = v20;
  *(v20 + 16) = v129;
  *(v20 + 24) = v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v135 = sub_1B0E46A48();
  v138 = v22;

  v23 = v132;
  v24 = v138;
  *v138 = v131;
  v24[1] = v23;

  v25 = v134;
  v26 = v138;
  v138[2] = v133;
  v26[3] = v25;

  v27 = v137;
  v28 = v138;
  v138[4] = v136;
  v28[5] = v27;
  sub_1B0394964();

  if (os_log_type_enabled(v140, v141))
  {
    v29 = v99;
    v87 = sub_1B0E45D78();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v86 = 0;
    v88 = sub_1B03949A8(0);
    v89 = sub_1B03949A8(v86);
    v90 = &v146;
    v146 = v87;
    v91 = &v145;
    v145 = v88;
    v92 = &v144;
    v144 = v89;
    sub_1B0394A48(0, &v146);
    sub_1B0394A48(1, v90);
    v142 = v131;
    v143 = v132;
    sub_1B03949FC(&v142, v90, v91, v92);
    v93 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v142 = v133;
      v143 = v134;
      sub_1B03949FC(&v142, &v146, &v145, &v144);
      v83 = 0;
      v142 = v136;
      v143 = v137;
      sub_1B03949FC(&v142, &v146, &v145, &v144);
      v82 = 0;
      _os_log_impl(&dword_1B0389000, v140, v141, "[%lld] Appending part to accumulators.", v87, 0xCu);
      v81 = 0;
      sub_1B03998A8(v88);
      sub_1B03998A8(v89);
      sub_1B0E45D58();

      v84 = v82;
    }
  }

  else
  {
    v30 = v99;

    v84 = v30;
  }

  v31 = v84;
  MEMORY[0x1E69E5920](v140);
  v78 = v113[1];
  v79 = v113 + 1;
  v78(v112, v115);
  sub_1B0A7AE3C(v164, v108);
  v80 = v31;
  if (v31)
  {
    v34 = v110;
    v59 = v80;
    v58 = 0;
    v35 = v80;
    v155 = v59;
    v116(v34, v118, v115);
    sub_1B08F5590(v118, v123);
    v60 = (v121 + 16) & ~v121;
    v63 = 7;
    v64 = swift_allocObject();
    sub_1B0901DA8(v123, v64 + v60);
    v71 = sub_1B0E43988();
    v72 = sub_1B0E458D8();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v62 = 32;
    v36 = swift_allocObject();
    v37 = v64;
    v65 = v36;
    *(v36 + 16) = v94;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v65;
    v69 = v38;
    *(v38 + 16) = v95;
    *(v38 + 24) = v39;
    v68 = sub_1B0E46A48();
    v70 = v40;

    v41 = v66;
    v42 = v70;
    *v70 = v96;
    v42[1] = v41;

    v43 = v67;
    v44 = v70;
    v70[2] = v97;
    v44[3] = v43;

    v45 = v69;
    v46 = v70;
    v70[4] = v98;
    v46[5] = v45;
    sub_1B0394964();

    if (os_log_type_enabled(v71, v72))
    {
      v47 = v58;
      v51 = sub_1B0E45D78();
      v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v50 = 0;
      v52 = sub_1B03949A8(0);
      v53 = sub_1B03949A8(v50);
      v54 = &v151;
      v151 = v51;
      v55 = &v150;
      v150 = v52;
      v56 = &v149;
      v149 = v53;
      sub_1B0394A48(0, &v151);
      sub_1B0394A48(1, v54);
      v147 = v96;
      v148 = v66;
      sub_1B03949FC(&v147, v54, v55, v56);
      v57 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v147 = v97;
        v148 = v67;
        sub_1B03949FC(&v147, &v151, &v150, &v149);
        v49[2] = 0;
        v147 = v98;
        v148 = v69;
        sub_1B03949FC(&v147, &v151, &v150, &v149);
        _os_log_impl(&dword_1B0389000, v71, v72, "[%lld] Unable to append HTML.", v51, 0xCu);
        v49[1] = 0;
        sub_1B03998A8(v52);
        sub_1B03998A8(v53);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v71);
    v78(v110, v115);
    v48 = v59;
    *v104 = 1;
  }

  v76 = v164;
  sub_1B0A6D9F4(v164);
  sub_1B08C4788(v76);
  sub_1B0A6BD78(v76, v154);
  v77 = v165;
  memcpy(v165, v76, sizeof(v165));
  if (sub_1B08C4EF0(v165) == 2)
  {
    v32 = sub_1B08C4F00(v165);
    v75 = __dst;
    v73 = 128;
    memcpy(__dst, v32, sizeof(__dst));
    sub_1B08C4F88(__dst, v153);
    v74 = v152;
    memcpy(v152, v75, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    sub_1B0E452E8();
    sub_1B08C5168(v75);
  }

  else
  {
    sub_1B0A79CD8(v164);
  }

  result = v164;
  sub_1B0A79CD8(v164);
  return result;
}

uint64_t sub_1B0A77B2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0u;
  v23 = 0u;
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a1;

  v4 = sub_1B0A7AE10();
  v5 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v4);
  *&v22 = v6;
  *(&v22 + 1) = v7;
  *&v23 = v5;
  *(&v23 + 1) = v8;
  v16 = *(a1 + *(_s6ParserVMa() + 32));

  v19 = a3;
  v20 = &v22;
  v21 = a4;
  Message.enumeratePartsForDisplay(strategy:maximumByteCountPerPart:cache:closure:)(1, 1000000, v16, sub_1B0A793AC, v18);

  v17 = v22;
  MEMORY[0x1E69E5928](v22);

  sub_1B0A7936C(&v22);
  return v17;
}

void *sub_1B0A77C9C(void *a1, void *a2)
{
  v5 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v5;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];
  v8 = a1[5];
  sub_1B03B2000(v7, v8);
  a2[4] = v7;
  a2[5] = v8;
  v19 = _s6ParserV4TextVMa();
  v14 = a1 + v19[6];
  v17 = a2 + v19[6];
  *v17 = *v14;
  v9 = *(v14 + 1);

  *(v17 + 1) = v9;
  v11 = type metadata accessor for MessageSummary.Accumulator();
  v10 = v11[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 16))(&v17[v10], &v14[v10]);
  v3 = &v14[v11[7]];
  v12 = &v17[v11[7]];
  *v12 = *v3;
  v13 = *(v3 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v12 + 1) = v13;
  v16 = v11[8];
  v18 = *&v14[v16];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v17[v16] = v18;
  *(a2 + v19[7]) = *(a1 + v19[7]);
  *(a2 + v19[8]) = *(a1 + v19[8]);
  v21 = v19[9];
  v22 = *(a1 + v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + v21) = v22;
  return result;
}

void *sub_1B0A77EC8(void *a1)
{
  if ((a1[2] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(a1[1], a1[2]);
  }

  if ((a1[4] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(a1[3], a1[4]);
  }

  v1 = a1[6];

  v2 = a1[8];

  v3 = a1[9];

  return a1;
}

uint64_t sub_1B0A77F6C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  if ((*(a1 + 16) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 8) = *(a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    sub_1B03B2000(v8, v9);
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
  }

  if ((*(a1 + 32) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 24) = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    sub_1B03B2000(v6, v7);
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
  }

  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  *(a2 + 56) = *(a1 + 56);
  v4 = *(a1 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 64) = v4;
  v5 = *(a1 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 72) = v5;
  return result;
}

uint64_t sub_1B0A780BC(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    sub_1B03B2000(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

unint64_t sub_1B0A78140()
{
  v2 = qword_1EB6E3C80;
  if (!qword_1EB6E3C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C80);
    return WitnessTable;
  }

  return v2;
}

void sub_1B0A781D0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a1;
  v99 = a2;
  v94 = a3;
  v86 = a4;
  v106 = sub_1B0901E30;
  v110 = sub_1B06BCD8C;
  v112 = sub_1B0398F5C;
  v114 = sub_1B0398F5C;
  v117 = sub_1B03992D4;
  v77 = sub_1B0901E30;
  v78 = sub_1B06BCD8C;
  v79 = sub_1B0398F5C;
  v80 = sub_1B0398F5C;
  v81 = sub_1B03992D4;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v82 = 0;
  v133 = 0;
  v83 = 0;
  v84 = *(_s6LoggerVMa_2() - 8);
  v100 = v84;
  v101 = *(v84 + 64);
  v85 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v104 = v37 - v85;
  v88 = sub_1B0E439A8();
  v95 = *(v88 - 8);
  v89 = v88 - 8;
  v91 = v95[8];
  v90 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v92 = v37 - v90;
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v96 = v37 - v93;
  v137 = v6;
  v136 = v7;
  v135 = v94;
  v134 = v8;
  v97 = v95[2];
  v98 = v95 + 2;
  v97(v37 - v93, v5);
  sub_1B08F5590(v99, v104);
  v102 = *(v100 + 80);
  v103 = (v102 + 16) & ~v102;
  v108 = 7;
  v109 = swift_allocObject();
  sub_1B0901DA8(v104, v109 + v103);
  v121 = sub_1B0E43988();
  v122 = sub_1B0E458D8();
  v105 = 17;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = 8;
  v107 = 32;
  v9 = swift_allocObject();
  v10 = v109;
  v111 = v9;
  *(v9 + 16) = v106;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v111;
  v118 = v11;
  *(v11 + 16) = v110;
  *(v11 + 24) = v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v116 = sub_1B0E46A48();
  v119 = v13;

  v14 = v113;
  v15 = v119;
  *v119 = v112;
  v15[1] = v14;

  v16 = v115;
  v17 = v119;
  v119[2] = v114;
  v17[3] = v16;

  v18 = v118;
  v19 = v119;
  v119[4] = v117;
  v19[5] = v18;
  sub_1B0394964();

  if (os_log_type_enabled(v121, v122))
  {
    v20 = v82;
    v70 = sub_1B0E45D78();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v69 = 0;
    v71 = sub_1B03949A8(0);
    v72 = sub_1B03949A8(v69);
    v73 = &v127;
    v127 = v70;
    v74 = &v126;
    v126 = v71;
    v75 = &v125;
    v125 = v72;
    sub_1B0394A48(0, &v127);
    sub_1B0394A48(1, v73);
    v123 = v112;
    v124 = v113;
    sub_1B03949FC(&v123, v73, v74, v75);
    v76 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v123 = v114;
      v124 = v115;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v66 = 0;
      v123 = v117;
      v124 = v118;
      sub_1B03949FC(&v123, &v127, &v126, &v125);
      v65 = 0;
      _os_log_impl(&dword_1B0389000, v121, v122, "[%lld] Appending part to accumulators.", v70, 0xCu);
      v64 = 0;
      sub_1B03998A8(v71);
      sub_1B03998A8(v72);
      sub_1B0E45D58();

      v67 = v65;
    }
  }

  else
  {
    v21 = v82;

    v67 = v21;
  }

  v22 = v67;
  MEMORY[0x1E69E5920](v121);
  v61 = v95[1];
  v62 = v95 + 1;
  v61(v96, v88);
  sub_1B0A7AE3C(v87, v86);
  v63 = v22;
  if (v22)
  {
    v23 = v92;
    v47 = v63;
    v46 = 0;
    v24 = v63;
    v133 = v47;
    (v97)(v23, v99, v88);
    sub_1B08F5590(v99, v104);
    v48 = (v102 + 16) & ~v102;
    v51 = 7;
    v52 = swift_allocObject();
    sub_1B0901DA8(v104, v52 + v48);
    v59 = sub_1B0E43988();
    v60 = sub_1B0E458D8();
    v49 = 17;
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v50 = 32;
    v25 = swift_allocObject();
    v26 = v52;
    v53 = v25;
    *(v25 + 16) = v77;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v53;
    v57 = v27;
    *(v27 + 16) = v78;
    *(v27 + 24) = v28;
    v56 = sub_1B0E46A48();
    v58 = v29;

    v30 = v54;
    v31 = v58;
    *v58 = v79;
    v31[1] = v30;

    v32 = v55;
    v33 = v58;
    v58[2] = v80;
    v33[3] = v32;

    v34 = v57;
    v35 = v58;
    v58[4] = v81;
    v35[5] = v34;
    sub_1B0394964();

    if (os_log_type_enabled(v59, v60))
    {
      v36 = v46;
      v39 = sub_1B0E45D78();
      v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v38 = 0;
      v40 = sub_1B03949A8(0);
      v41 = sub_1B03949A8(v38);
      v42 = &v132;
      v132 = v39;
      v43 = &v131;
      v131 = v40;
      v44 = &v130;
      v130 = v41;
      sub_1B0394A48(0, &v132);
      sub_1B0394A48(1, v42);
      v128 = v79;
      v129 = v54;
      sub_1B03949FC(&v128, v42, v43, v44);
      v45 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v128 = v80;
        v129 = v55;
        sub_1B03949FC(&v128, &v132, &v131, &v130);
        v37[1] = 0;
        v128 = v81;
        v129 = v57;
        sub_1B03949FC(&v128, &v132, &v131, &v130);
        _os_log_impl(&dword_1B0389000, v59, v60, "[%lld] Unable to append HTML.", v39, 0xCu);
        v37[0] = 0;
        sub_1B03998A8(v40);
        sub_1B03998A8(v41);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v59);
    v61(v92, v88);
  }
}

unint64_t sub_1B0A79128()
{
  v2 = qword_1EB6E3CD0;
  if (!qword_1EB6E3CD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3CD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A791B8()
{
  v2 = qword_1EB6E3CF0;
  if (!qword_1EB6E3CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3CF0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0A79240(char *a1, char *a2)
{
  *a2 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  *(a2 + 1) = v2;

  v12 = type metadata accessor for MessageSummary.Accumulator();
  v11 = v12[6];
  v4 = sub_1B0E431A8();
  (*(*(v4 - 8) + 40))(&a2[v11], &a1[v11]);
  v5 = &a1[v12[7]];
  v6 = &a2[v12[7]];
  *v6 = *v5;
  v7 = *(v6 + 1);
  *(v6 + 1) = *(v5 + 1);

  v8 = &a2[v12[8]];
  v9 = *v8;
  *v8 = *&a1[v12[8]];

  return a2;
}

void *sub_1B0A7936C(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v1 = a1[3];

  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = HIBYTE(*(a1 + 8)) >> 4;
  v2 = 15 - (((4 * v1) | (v1 >> 2)) & 0xF);
  if (v2 >= 0xC)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B0A794F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A79608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0A79854()
{
  v4 = type metadata accessor for WatchOSRender.HTMLParser();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B0E431A8();
    if (v1 <= 0x3F)
    {
      v4 = type metadata accessor for Cache();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B0A799C8()
{
  v3 = type metadata accessor for MessageSummary.Accumulator();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B0A79AD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B0A79AD4()
{
  v4 = qword_1EB6E3D20;
  if (!qword_1EB6E3D20)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6E3D20);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B0A79B68(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*a1, *(a1 + 8));
  }

  if ((*(a1 + 24) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + 16), *(a1 + 24));
  }

  return a1;
}

unint64_t sub_1B0A79BE8()
{
  v2 = qword_1EB6E3D30;
  if (!qword_1EB6E3D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A79C60()
{
  v2 = qword_1EB6E3D38;
  if (!qword_1EB6E3D38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D38);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1B0A79CD8(uint64_t *a1)
{
  v1 = a1[13];
  v2 = a1[14];
  v3 = a1[15];
  sub_1B0A79D68(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], WORD2(a1[12]), BYTE6(a1[12]), HIBYTE(a1[12]));
}

uint64_t sub_1B0A79D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, unsigned __int8 a16)
{
  v23 = a16 >> 6;
  if (!(a16 >> 6) || v23 == 1)
  {
  }

  if (v23 == 2)
  {

    sub_1B07ACE18(a2, a3, a4, a5, a6);

    sub_1B08C512C(a8, a9);
  }

  return result;
}

__n128 sub_1B0A79E60(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = type metadata accessor for MessageSummary.Accumulator();
  v4 = v5[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = *&a1[v5[7]];
  *&a2[v5[7]] = result;
  *&a2[v5[8]] = *&a1[v5[8]];
  return result;
}

uint64_t sub_1B0A79F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v106 = a1;
  v113 = a2;
  v103 = a3;
  v104 = a5;
  v105 = a4;
  v87 = sub_1B0901E30;
  v88 = sub_1B06BCD8C;
  v89 = sub_1B07135E4;
  v90 = sub_1B070B324;
  v91 = sub_1B0398F5C;
  v92 = sub_1B0398F5C;
  v93 = sub_1B03992D4;
  v94 = sub_1B0398F5C;
  v95 = sub_1B0398F5C;
  v96 = sub_1B070B4B4;
  v127 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0;
  v97 = 0;
  v98 = *(_s6LoggerVMa_2() - 8);
  v99 = v98;
  v100 = *(v98 + 64);
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v102 = v39 - v101;
  v107 = sub_1B0E439A8();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v106);
  v111 = v39 - v110;
  v123 = v6;
  *&v121 = v7;
  *(&v121 + 1) = v8;
  *&v122 = v5;
  *(&v122 + 1) = v9;
  v112 = objc_opt_self();
  MEMORY[0x1E69E5928](v113);
  v114 = [v112 trimAttributedString_];
  MEMORY[0x1E69E5920](v113);
  if (!v114)
  {
    goto LABEL_8;
  }

  v86 = v114;
  v82 = v114;
  v120 = v114;
  v84 = [v114 string];
  sub_1B0E44AD8();
  v83 = v10;
  v85 = sub_1B0E44DA8();

  MEMORY[0x1E69E5920](v84);
  if (v85)
  {
    MEMORY[0x1E69E5920](v82);
LABEL_8:
    v76 = 0;
    v77 = 0xF000000000000000;
    goto LABEL_9;
  }

  v126 = 0;
  v79 = objc_opt_self();
  MEMORY[0x1E69E5928](v82);
  v119 = v126;
  v81 = [v79 archivedDataWithRootObject:v82 requiringSecureCoding:1 error:&v119];
  v80 = v119;
  MEMORY[0x1E69E5928](v119);
  v11 = v126;
  v126 = v80;
  MEMORY[0x1E69E5920](v11);
  swift_unknownObjectRelease();
  if (v81)
  {
    v78 = v81;
    v73 = v81;
    v74 = sub_1B0E42F38();
    v75 = v12;
    MEMORY[0x1E69E5920](v73);
    MEMORY[0x1E69E5920](v82);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v48 = v126;
    v51 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v48);
    swift_willThrow();
    v14 = v111;
    v49 = 0;
    v15 = v51;
    v118 = v51;
    (*(v108 + 16))(v14, v106, v107);
    sub_1B08F5590(v106, v102);
    v50 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v57 = 7;
    v52 = swift_allocObject();
    sub_1B0901DA8(v102, v52 + v50);
    v16 = v51;
    v58 = swift_allocObject();
    *(v58 + 16) = v51;
    v69 = sub_1B0E43988();
    v70 = sub_1B0E458E8();
    v54 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v61 = swift_allocObject();
    v55 = 8;
    *(v61 + 16) = 8;
    v56 = 32;
    v17 = swift_allocObject();
    v18 = v52;
    v53 = v17;
    *(v17 + 16) = v87;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v53;
    v62 = v19;
    *(v19 + 16) = v88;
    *(v19 + 24) = v20;
    v63 = swift_allocObject();
    *(v63 + 16) = 64;
    v64 = swift_allocObject();
    *(v64 + 16) = v55;
    v21 = swift_allocObject();
    v22 = v58;
    v59 = v21;
    *(v21 + 16) = v89;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v59;
    v66 = v23;
    *(v23 + 16) = v90;
    *(v23 + 24) = v24;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v65 = sub_1B0E46A48();
    v67 = v25;

    v26 = v60;
    v27 = v67;
    *v67 = v91;
    v27[1] = v26;

    v28 = v61;
    v29 = v67;
    v67[2] = v92;
    v29[3] = v28;

    v30 = v62;
    v31 = v67;
    v67[4] = v93;
    v31[5] = v30;

    v32 = v63;
    v33 = v67;
    v67[6] = v94;
    v33[7] = v32;

    v34 = v64;
    v35 = v67;
    v67[8] = v95;
    v35[9] = v34;

    v36 = v66;
    v37 = v67;
    v67[10] = v96;
    v37[11] = v36;
    sub_1B0394964();

    if (os_log_type_enabled(v69, v70))
    {
      v38 = v49;
      v40 = sub_1B0E45D78();
      v39[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v41 = sub_1B03949A8(1);
      v42 = sub_1B03949A8(0);
      v44 = &v117;
      v117 = v40;
      v45 = &v125;
      v125 = v41;
      v46 = &v124;
      v124 = v42;
      v43 = 2;
      sub_1B0394A48(2, &v117);
      sub_1B0394A48(v43, v44);
      v115 = v91;
      v116 = v60;
      sub_1B03949FC(&v115, v44, v45, v46);
      v47 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v115 = v92;
        v116 = v61;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[4] = 0;
        v115 = v93;
        v116 = v62;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[3] = 0;
        v115 = v94;
        v116 = v63;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[2] = 0;
        v115 = v95;
        v116 = v64;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[1] = 0;
        v115 = v96;
        v116 = v66;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        _os_log_impl(&dword_1B0389000, v69, v70, "[%lld] Failed to encode attributed string: %@", v40, 0x16u);
        sub_1B03998A8(v41);
        sub_1B03998A8(v42);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v108 + 8))(v111, v107);

    MEMORY[0x1E69E5920](v82);
    v76 = 0;
    v77 = 0xF000000000000000;
  }

LABEL_9:
  v71 = v77;
  v72 = v76;
  *MEMORY[0x1E69E9840];
  return v76;
}

uint64_t sub_1B0A7AE3C(const void *a1, uint64_t a2)
{
  v31 = 0;
  v34 = a1;
  v33 = a2;
  v32 = v2;
  v26 = *v2;
  v24 = v2[1];
  v25 = v2[2];
  v27 = v2[3];
  MEMORY[0x1E69E5928](*v2);

  v31 = sub_1B0A7B280(v26, v24);
  MEMORY[0x1E69E5920](v26);

  if (v31 <= 0)
  {
    return v23;
  }

  memcpy(__dst, a1, sizeof(__dst));
  v19 = sub_1B08C4EF0(__dst);
  if (!v19)
  {
    v3 = sub_1B08C4F00(__dst);
    v15 = *v3;
    v16 = v3[1];
    v17 = *(v3 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0A6DC9C(v15, v16, v17);
    if (!v4)
    {

      return v23;
    }

    sub_1B0A7B388(v18, v4);

    if (v23)
    {
      v9 = v23;
    }

LABEL_10:

    return 0;
  }

  if (v19 != 1)
  {
    v6 = sub_1B08C4F00(__dst);
    memcpy(v39, v6, sizeof(v39));
    sub_1B08C4F88(v39, v30);
    sub_1B08C4F88(v39, v29);
    sub_1B08C4F88(v39, v28);
    v7 = sub_1B0A68600(v39);
    sub_1B0A651EC(v39, v7, a2, v35);
    memcpy(v36, v35, 0x31uLL);
    if (v36[0])
    {
      memcpy(v37, v36, 0x31uLL);
      v11 = *v22;
      MEMORY[0x1E69E5928](*v22);
      v10 = sub_1B0A63E80();
      [v11 appendAttributedString_];
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v11);
      sub_1B08D9204(v37);
    }

    sub_1B08C5168(v39);
    return v23;
  }

  v5 = sub_1B08C4F00(__dst);
  v12 = *v5;
  v13 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A7B388(v12, v13);
  if (!v23)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1B0A7B280(void *a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  v4 = [a1 string];
  sub_1B0E44AD8();
  MEMORY[0x1E69E5920](a1);
  v6 = sub_1B0E44CF8();

  result = v6;
  if (__OFSUB__(a2, v6))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v4);
    sub_1B0E46B68();
    return v8;
  }

  return result;
}

uint64_t sub_1B0A7B388(uint64_t a1, uint64_t a2)
{
  v18 = *v2;
  v16 = v2[1];
  v17 = v2[2];
  v19 = v2[3];
  MEMORY[0x1E69E5928](*v2);

  v20 = sub_1B0A7B280(v18, v16);
  MEMORY[0x1E69E5920](v18);

  result = v20;
  if (v20 > 0)
  {
    v11 = *(v15 + 3);

    v8 = *v15;
    v6 = *(v15 + 1);
    v7 = *(v15 + 2);
    v9 = *(v15 + 3);
    MEMORY[0x1E69E5928](*v15);

    v10 = sub_1B0A7B280(v8, v6);
    MEMORY[0x1E69E5920](v8);

    v12 = sub_1B0A7E3F0(a1, a2, v10, v15[2]);

    if (v12)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v4 = *v15;
      MEMORY[0x1E69E5928](*v15);
      [v4 appendAttributedString_];
      MEMORY[0x1E69E5920](v4);
      return MEMORY[0x1E69E5920](v5);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v12);
      sub_1B0A7B660();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1B0A7B5FC()
{
  v2 = qword_1EB6E3D40;
  if (!qword_1EB6E3D40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3D40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A7B660()
{
  v2 = qword_1EB6E3D48;
  if (!qword_1EB6E3D48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D48);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0A7B704@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v125 = a1;
  v110 = "Fatal error";
  v111 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v112 = "Message/WatchOSRender.swift";
  v143 = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v137 = 0;
  v120 = 0;
  v113 = (*(*(sub_1B0E43108() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v114 = &v28 - v113;
  v115 = sub_1B0E42E68();
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v119 = &v28 - v118;
  v121 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v28 - v121;
  v123 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v124 = &v28 - v123;
  v126 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v28 - v129;
  v131 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v132 = &v28 - v131;
  v143 = &v28 - v131;
  v142 = v7;
  v133 = [v7 mf_externalReference];
  if (v133)
  {
    v108 = v133;
    v107 = v133;
    sub_1B0E42DE8();
    (*(v116 + 32))(v122, v119, v115);
    (*(v116 + 56))(v122, 0, 1, v115);
    MEMORY[0x1E69E5920](v107);
  }

  else
  {
    (*(v116 + 56))(v122, 1, 1, v115);
  }

  sub_1B07C8260(v122, v124);
  if ((*(v116 + 48))(v124, 1, v115) == 1)
  {
    sub_1B06E3800(v124);
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v103 = sub_1B0E42D18();
    v104 = v8;
    (*(v116 + 8))(v124, v115);
    v105 = v103;
    v106 = v104;
  }

  v101 = v106;
  v102 = v105;
  if (!v106)
  {
    goto LABEL_43;
  }

  v99 = v102;
  v100 = v101;
  v96 = v101;
  v97 = v102;
  v140 = v102;
  v141 = v101;
  v9 = [v125 mailbox];
  v98 = v9;
  if (v9)
  {
    v95 = v98;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v93 = v95;
  v94 = [v95 store];
  MEMORY[0x1E69E5920](v93);
  if (v94)
  {
    v92 = v94;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v90 = v92;
  v91 = [v92 account];
  MEMORY[0x1E69E5920](v90);
  v138 = v91;
  MEMORY[0x1E69E5928](v125);
  if (v138)
  {
    v139 = v138;
  }

  else
  {
    v139 = [v125 account];
    if (v138)
    {
      sub_1B06D4E94(&v138);
    }
  }

  MEMORY[0x1E69E5920](v125);
  v89 = v139;
  if (!v139)
  {

LABEL_43:
    MEMORY[0x1E69E5920](v125);
    return (*(v127 + 56))(v109, 1, 1, v126);
  }

  v88 = v89;
  v82 = v89;
  v137 = v89;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = [v125 notificationID];
  v84 = sub_1B0E44AD8();
  v85 = v10;
  v86 = objc_opt_self();
  v11 = [v125 mailbox];
  v87 = v11;
  if (v11)
  {
    v81 = v87;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v79 = v81;
  v80 = [v81 name];
  if (v80)
  {
    v78 = v80;
    v73 = v80;
    v74 = sub_1B0E44AD8();
    v75 = v12;
    MEMORY[0x1E69E5920](v73);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v71 = v77;
  v72 = v76;
  if (v77)
  {
    v69 = v72;
    v70 = v71;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v67 = v70;
  v66 = sub_1B0E44AC8();
  MEMORY[0x1E69E5920](v79);

  v68 = [v125 remoteID];
  if (v68)
  {
    v65 = v68;
    v60 = v68;
    v61 = sub_1B0E44AD8();
    v62 = v13;
    MEMORY[0x1E69E5920](v60);
    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v58 = v64;
  v59 = v63;
  if (v64)
  {
    v56 = v59;
    v57 = v58;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v35 = v57;
  v36 = sub_1B0E44AC8();

  v37 = [v86 generateNotificationIdWithFolderId:v66 remoteId:v36];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v66);
  v38 = sub_1B0E44AD8();
  v39 = v14;
  v51 = 0x1E7A9F000uLL;
  v40 = [objc_opt_self() accountIDForAccount_];
  v41 = sub_1B0E44AD8();
  v42 = v15;
  v45 = 0;
  v16 = sub_1B0E46A28();
  v48 = &v135;
  v135 = v16;
  v136 = v17;
  v44 = "";
  v46 = 1;
  v18 = sub_1B0E44838();
  v43 = v19;
  MEMORY[0x1B2728B30](v18);

  v134 = [v125 conversationID];
  sub_1B0E469F8();
  v20 = sub_1B0E44838();
  v47 = v21;
  MEMORY[0x1B2728B30](v20);

  v50 = v135;
  v49 = v136;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v48);
  v52 = sub_1B0E44C88();
  v53 = v22;
  v23 = *(v51 + 1600);
  v54 = objc_opt_self();
  v55 = [v125 mailbox];
  if (v55)
  {
    v34 = v55;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v24 = v125;
  v33 = [v54 nanoMailboxIDForMFMailboxUID_];
  MEMORY[0x1E69E5920](v28);
  v29 = sub_1B0E44AD8();
  v30 = v25;
  MEMORY[0x1E69E5928](v24);
  v32 = [v24 dateReceived];
  sub_1B0E430D8();
  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5928](v24);
  v31 = [v24 messageSize];
  MEMORY[0x1E69E5920](v24);
  v26 = sub_1B0A80C0C();
  sub_1B0A80AF4(v97, v96, v84, v85, v38, v39, v41, v42, v130, v52, v53, v29, v30, v114, v31, v26);
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](v83);
  sub_1B08F524C(v130, v132);
  MEMORY[0x1E69E5920](v82);

  sub_1B08F53FC(v132, v109);
  (*(v127 + 56))(v109, 0, 1, v126);
  MEMORY[0x1E69E5920](v125);
  return sub_1B08F533C(v132);
}

uint64_t type metadata accessor for WatchOSRender.Message.InfoFromLibrary()
{
  v1 = qword_1EB6E3D78;
  if (!qword_1EB6E3D78)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1B0A7C898@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v123 = a7;
  v155 = a1;
  v150 = a2;
  v158 = a3;
  v151 = a4;
  v163 = a5;
  v152 = a6;
  v124 = sub_1B0901E30;
  v125 = sub_1B06BCD8C;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0398F5C;
  v128 = sub_1B03992D4;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v175 = 0;
  v176 = 0;
  v174 = 0;
  v173 = 0;
  v129 = 0;
  v147 = 0;
  v130 = sub_1B0E43108();
  v131 = *(v130 - 8);
  v132 = v130 - 8;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v134 = v74 - v133;
  v135 = *(_s6LoggerVMa_2() - 8);
  v136 = v135;
  v137 = *(v135 + 64);
  v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v139 = v74 - v138;
  v140 = sub_1B0E439A8();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v144 = v74 - v143;
  v154 = type metadata accessor for Message(v7);
  v160 = *(v154 - 8);
  v153 = v154 - 8;
  v145 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v154);
  v162 = v74 - v145;
  v146 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D50, &qword_1B0EA4408) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v166 = v74 - v146;
  v167 = type metadata accessor for WatchOSRender.Message.InfoFromHeader();
  v164 = *(v167 - 8);
  v165 = v167 - 8;
  v148 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v149 = (v74 - v148);
  v180 = v74 - v148;
  v159 = type metadata accessor for WatchOSRender.Message();
  v156 = *(v159 - 1);
  v157 = v159 - 2;
  v8 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v162);
  v10 = v160;
  v161 = v74 - v11;
  v179 = v74 - v11;
  v178 = v12;
  v177 = v13;
  v175 = v158;
  v176 = v14;
  v174 = v15;
  v173 = v16;
  v17 = (v74 + v159[12] - v11);
  *v17 = 0;
  v17[1] = 0;
  (*(v10 + 16))(v9);

  sub_1B0A7FD1C(v162, v163, v166);
  if ((*(v164 + 48))(v166, 1, v167) == 1)
  {
    v18 = v144;
    sub_1B0A80D90(v166);
    (*(v141 + 16))(v18, v152, v140);
    sub_1B08F5590(v152, v139);
    v109 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v112 = 7;
    v113 = swift_allocObject();
    sub_1B0901DA8(v139, v113 + v109);
    v121 = sub_1B0E43988();
    v122 = sub_1B0E458E8();
    v110 = 17;
    v115 = swift_allocObject();
    *(v115 + 16) = 0;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v111 = 32;
    v19 = swift_allocObject();
    v20 = v113;
    v114 = v19;
    *(v19 + 16) = v124;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v114;
    v118 = v21;
    *(v21 + 16) = v125;
    *(v21 + 24) = v22;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v117 = sub_1B0E46A48();
    v119 = v23;

    v24 = v115;
    v25 = v119;
    *v119 = v126;
    v25[1] = v24;

    v26 = v116;
    v27 = v119;
    v119[2] = v127;
    v27[3] = v26;

    v28 = v118;
    v29 = v119;
    v119[4] = v128;
    v29[5] = v28;
    sub_1B0394964();

    if (os_log_type_enabled(v121, v122))
    {
      v73 = v129;
      v76 = sub_1B0E45D78();
      v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v75 = 0;
      v77 = sub_1B03949A8(0);
      v78 = sub_1B03949A8(v75);
      v79 = &v172;
      v172 = v76;
      v80 = &v171;
      v171 = v77;
      v81 = &v170;
      v170 = v78;
      sub_1B0394A48(0, &v172);
      sub_1B0394A48(1, v79);
      v168 = v126;
      v169 = v115;
      sub_1B03949FC(&v168, v79, v80, v81);
      v82 = v73;
      if (v73)
      {

        __break(1u);
      }

      else
      {
        v168 = v127;
        v169 = v116;
        sub_1B03949FC(&v168, &v172, &v171, &v170);
        v74[1] = 0;
        v168 = v128;
        v169 = v118;
        sub_1B03949FC(&v168, &v172, &v171, &v170);
        _os_log_impl(&dword_1B0389000, v121, v122, "[%lld] Unable to create header info for message.", v76, 0xCu);
        v74[0] = 0;
        sub_1B03998A8(v77);
        sub_1B03998A8(v78);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v121);
    (*(v141 + 8))(v144, v140);
    sub_1B039480C(v152);

    sub_1B08F533C(v150);
    (*(v160 + 8))(v155, v154);
    sub_1B03B1198(&v161[v159[12]]);
    return (*(v156 + 56))(v123, 1, 1, v159);
  }

  else
  {
    sub_1B0A81958(v166, v149);
    v83 = *v150;
    v84 = *(v150 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = v84;
    v31 = v150;
    v32 = v161;
    *v161 = v83;
    *(v32 + 1) = v30;
    v85 = *(v31 + 2);
    v86 = *(v31 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = v86;
    v34 = v150;
    v35 = v161;
    *(v161 + 2) = v85;
    *(v35 + 3) = v33;
    v87 = *(v34 + 4);
    v88 = *(v34 + 5);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v88;
    v37 = v150;
    v38 = v161;
    *(v161 + 4) = v87;
    *(v38 + 5) = v36;
    v89 = *(v37 + 6);
    v90 = *(v37 + 7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = v90;
    v40 = v150;
    v41 = v161;
    *(v161 + 6) = v89;
    *(v41 + 7) = v39;
    v91 = *(v40 + 8);
    v92 = *(v40 + 9);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v92;
    v43 = v150;
    v44 = v161;
    *(v161 + 8) = v91;
    *(v44 + 9) = v42;
    v93 = *(v43 + 10);
    v94 = *(v43 + 11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = v134;
    v46 = v94;
    v47 = v167;
    v48 = v131;
    v49 = v130;
    v50 = v149;
    v51 = v161;
    *(v161 + 10) = v93;
    *(v51 + 11) = v46;
    v52 = v50 + *(v47 + 40);
    v96 = *(v48 + 16);
    v95 = v48 + 16;
    v96(v45, v52, v49);
    v53 = &v161[v159[10]];
    v98 = *(v131 + 32);
    v97 = v131 + 32;
    v98(v53, v134, v130);
    v108 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
    v96(v134, &v150[*(v108 + 40)], v130);
    v98(&v161[v159[11]], v134, v130);
    v99 = *v149;
    v100 = v149[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = v100;
    v55 = &v161[v159[12]];
    v56 = *(v55 + 1);
    *v55 = v99;
    *(v55 + 1) = v54;

    v101 = v149[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v57 = v149;
    *&v161[v159[13]] = v101;
    v102 = v57[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58 = v149;
    *&v161[v159[14]] = v102;
    v103 = v58[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59 = v149;
    *&v161[v159[15]] = v103;
    v104 = v59[5];
    v105 = v59[6];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v60 = v105;
    v61 = v149;
    v62 = &v161[v159[16]];
    *v62 = v104;
    *(v62 + 1) = v60;
    v106 = v61[7];
    v107 = v61[8];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = v107;
    v64 = &v161[v159[17]];
    *v64 = v106;
    *(v64 + 1) = v63;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v65 = v149;
    v66 = v108;
    v67 = v159;
    v68 = v151;
    v69 = v150;
    v70 = v161;
    v71 = &v161[v159[18]];
    *v71 = v158;
    *(v71 + 1) = v68;
    *&v70[v67[19]] = *&v69[*(v66 + 48)];
    sub_1B0A81A1C(v65);
    sub_1B0902624(v161, v123);
    (*(v156 + 56))(v123, 0, 1, v159);
    sub_1B039480C(v152);

    sub_1B08F533C(v150);
    (*(v160 + 8))(v155, v154);
    return sub_1B08F597C(v161);
  }
}