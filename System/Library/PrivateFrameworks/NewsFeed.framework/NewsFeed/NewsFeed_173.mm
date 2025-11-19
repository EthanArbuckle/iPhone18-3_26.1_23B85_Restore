void sub_1D6B19668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t FormatContentSubgroup.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for FormatContentSubgroup();
  sub_1D6B24500(v1 + *(v7 + 40), v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  return sub_1D6B1FAA8(v6, a1, type metadata accessor for FormatMetadata);
}

uint64_t sub_1D6B197D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B1FA40(v2, v24, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D6B1FAA8(&v24[*(v26 + 48)], a1, type metadata accessor for FormatMetadata);
      return sub_1D6B23C38(v24, type metadata accessor for FormatPackage);
    }

    else
    {
      sub_1D725BD3C();
      v30 = *(v13 + 48);
      if (v30(v11, 1, v12) == 1)
      {
        sub_1D725BCDC();
        if (v30(v11, 1, v12) != 1)
        {
          sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v13 + 32))(v20, v11, v12);
      }

      sub_1D725BD3C();
      if (v30(v7, 1, v12) == 1)
      {
        sub_1D725BCCC();
        if (v30(v7, 1, v12) != 1)
        {
          sub_1D6B23BC8(v7, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v13 + 32))(v16, v7, v12);
      }

      v31 = type metadata accessor for FormatMetadata();
      sub_1D725BD3C();
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(v13 + 32);
      v32(&a1[v31[5]], v20, v12);
      result = (v32)(&a1[v31[6]], v16, v12);
      v33 = MEMORY[0x1E69E7CD0];
      *&a1[v31[8]] = MEMORY[0x1E69E7CD0];
      *&a1[v31[9]] = v33;
      *&a1[v31[10]] = v33;
      *&a1[v31[11]] = v33;
    }
  }

  else
  {
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    sub_1D6B1FAA8(&v24[*(v28 + 48)], a1, type metadata accessor for FormatMetadata);
    v29 = sub_1D72585BC();
    return (*(*(v29 - 8) + 8))(v24, v29);
  }

  return result;
}

uint64_t FormatContentSubgroup.contents.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t FormatContentSubgroup.properties.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t FormatContentSubgroup.selectors.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t FormatContentSubgroup.copy(identifier:layouts:properties:selectors:contents:sections:placeholders:metadata:filters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v69 = a4;
  v73 = a7;
  v70 = a5;
  v71 = a6;
  v67 = a1;
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v61 = &v60 - v17;
  v18 = MEMORY[0x1E69E6720];
  sub_1D6B1F9DC(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v60 - v21;
  v65 = type metadata accessor for FormatMetadata();
  v23 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v24);
  v72 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B1F9DC(0, &qword_1EDF07090, sub_1D5B5971C, v18);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v60 - v28;
  sub_1D5B5971C();
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v66 = a2;
  }

  else
  {
    v36 = *v11;
    v66 = v11[1];
    v67 = v36;
  }

  sub_1D6B24404(a3, v29, &qword_1EDF07090, sub_1D5B5971C);
  v37 = *(v32 + 48);
  if (v37(v29, 1, v31) == 1)
  {
    v38 = type metadata accessor for FormatContentSubgroup();
    sub_1D6B1FA40(v11 + *(v38 + 20), v35, sub_1D5B5971C);
    v39 = v37(v29, 1, v31);

    v40 = v39 == 1;
    v41 = v73;
    v42 = v70;
    if (!v40)
    {
      sub_1D6B23BC8(v29, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D6B1FAA8(v29, v35, sub_1D5B5971C);

    v41 = v73;
    v42 = v70;
  }

  v43 = v71;
  if (v69)
  {
    v64 = v69;
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_13:
    v63 = *(v11 + *(type metadata accessor for FormatContentSubgroup() + 28));

    v44 = v68;
    if (v43)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v64 = *(v11 + *(type metadata accessor for FormatContentSubgroup() + 24));

  if (!v42)
  {
    goto LABEL_13;
  }

LABEL_10:
  v63 = v42;
  v44 = v68;
  if (v43)
  {
LABEL_11:
    v62 = v43;
    goto LABEL_15;
  }

LABEL_14:
  v62 = *(v11 + *(type metadata accessor for FormatContentSubgroup() + 32));

LABEL_15:
  v45 = v65;
  if (v41)
  {
    if (v44)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v41 = *(v11 + *(type metadata accessor for FormatContentSubgroup() + 48));

    if (v44)
    {
      goto LABEL_17;
    }
  }

  v44 = *(v11 + *(type metadata accessor for FormatContentSubgroup() + 36));

LABEL_17:
  sub_1D6B24404(a10, v22, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v46 = *(v23 + 48);
  v47 = v46(v22, 1, v45);
  v60 = v11;
  if (v47 == 1)
  {
    v48 = v11 + *(type metadata accessor for FormatContentSubgroup() + 40);
    v49 = v44;
    v50 = v41;
    v51 = v35;
    v52 = v45;
    v53 = v61;
    sub_1D6B24500(v48, v61, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D6B1FAA8(v53, v72, type metadata accessor for FormatMetadata);
    v54 = v52;
    v35 = v51;
    v41 = v50;
    v44 = v49;
    LODWORD(v49) = v46(v22, 1, v54);

    if (v49 != 1)
    {
      sub_1D6B23BC8(v22, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }

    if (a11)
    {
      goto LABEL_21;
    }

LABEL_23:
    v55 = *(v60 + *(type metadata accessor for FormatContentSubgroup() + 44));

    goto LABEL_24;
  }

  sub_1D6B1FAA8(v22, v72, type metadata accessor for FormatMetadata);

  if (!a11)
  {
    goto LABEL_23;
  }

LABEL_21:
  v55 = a11;
LABEL_24:
  v56 = v66;
  *a9 = v67;
  a9[1] = v56;
  v57 = type metadata accessor for FormatContentSubgroup();
  sub_1D6B1FAA8(v35, a9 + v57[5], sub_1D5B5971C);
  v58 = v63;
  *(a9 + v57[6]) = v64;
  *(a9 + v57[7]) = v58;
  *(a9 + v57[9]) = v44;
  *(a9 + v57[8]) = v62;
  *(a9 + v57[12]) = v41;
  sub_1D6B1FAA8(v72, a9 + v57[10], type metadata accessor for FormatMetadata);
  *(a9 + v57[11]) = v55;
}

uint64_t FormatContentSubgroup.contents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6B1A454(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v54 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v55 = (&v54 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v54 - v17);
  v19 = sub_1D72585BC();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v54 - v29;
  sub_1D6B24574(0, &qword_1EC889AE8, sub_1D5C2AB28);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v54 - v33;
  v36 = &v54 + *(v35 + 56) - v33;
  sub_1D6B1FA40(v58, &v54 - v33, sub_1D5C2AB28);
  sub_1D6B1FA40(v59, v36, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = v14;
    v46 = v57;
    sub_1D6B1FA40(v34, v30, sub_1D5C2AB28);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v46 + 32))(v22, v36, v19);
      sub_1D6B1FAA8(&v30[v48], v18, type metadata accessor for FormatMetadata);
      v49 = &v36[v48];
      v50 = v59;
      sub_1D6B1FAA8(v49, v59, type metadata accessor for FormatMetadata);
      v51 = sub_1D72584CC();
      v52 = *(v46 + 8);
      v52(v30, v19);
      if (v51)
      {
        v45 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v18, v50);
        sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v18, type metadata accessor for FormatMetadata);
        v52(v22, v19);
        goto LABEL_14;
      }

      sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v18, type metadata accessor for FormatMetadata);
      v52(v22, v19);
      goto LABEL_17;
    }

    sub_1D6B23C38(&v30[v48], type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v30, v19);
LABEL_11:
    sub_1D6B245D4(v34, &qword_1EC889AE8, sub_1D5C2AB28);
LABEL_18:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B1FA40(v34, v26, sub_1D5C2AB28);
    sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v39 = *(v38 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v56;
      sub_1D6B1FAA8(v36, v56, type metadata accessor for FormatPackage);
      v41 = v55;
      sub_1D6B1FAA8(&v26[v39], v55, type metadata accessor for FormatMetadata);
      v42 = &v36[v39];
      v43 = v54;
      sub_1D6B1FAA8(v42, v54, type metadata accessor for FormatMetadata);
      v44 = static FormatPackage.== infix(_:_:)(v26, v40);
      sub_1D6B23C38(v26, type metadata accessor for FormatPackage);
      if (v44)
      {
        v45 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v41, v43);
        sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v40, type metadata accessor for FormatPackage);
LABEL_14:
        sub_1D6B23C38(v34, sub_1D5C2AB28);
        return v45 & 1;
      }

      sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v40, type metadata accessor for FormatPackage);
LABEL_17:
      sub_1D6B23C38(v34, sub_1D5C2AB28);
      goto LABEL_18;
    }

    sub_1D6B23C38(&v26[v39], type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v26, type metadata accessor for FormatPackage);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B23C38(v34, sub_1D5C2AB28);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D6B1AB54(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v55 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = (&v54 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v59 = &v54 - v13;
  v14 = sub_1D72585BC();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v54 - v24;
  sub_1D6B24484(0, &qword_1EC892040, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v54 - v28;
  v31 = &v54 + *(v30 + 56) - v28;
  sub_1D6B24500(v61, &v54 - v28, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v62, v31, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v59;
    v44 = v60;
    v46 = v57;
    v45 = v58;
    sub_1D6B24500(v29, v25, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = v29;
      (*(v46 + 32))(v17, v31, v45);
      v49 = v43;
      sub_1D6B1FAA8(&v25[v48], v43, type metadata accessor for FormatMetadata);
      sub_1D6B1FAA8(&v31[v48], v44, type metadata accessor for FormatMetadata);
      v50 = sub_1D72584CC();
      v51 = *(v46 + 8);
      v51(v25, v45);
      if (v50)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v49, v44);
        sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v49, type metadata accessor for FormatMetadata);
        v51(v17, v45);
        sub_1D6B238FC(v62, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        return v42 & 1;
      }

      sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v49, type metadata accessor for FormatMetadata);
      v51(v17, v45);
      v52 = v62;
      goto LABEL_16;
    }

    sub_1D6B23C38(&v25[v48], type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v25, v45);
LABEL_11:
    sub_1D6B24630(v29, &qword_1EC892040, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization);
LABEL_17:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D6B238FC(v29, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      v42 = 1;
      return v42 & 1;
    }

    goto LABEL_11;
  }

  sub_1D6B24500(v29, v21, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  sub_1D5EA17B4(0, &qword_1EDF2DC48);
  v34 = *(v33 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D6B23C38(v21 + v34, type metadata accessor for FormatMetadata);

    goto LABEL_11;
  }

  v35 = v29;
  v36 = *(v31 + 1);
  v37 = *(v31 + 6);
  v63[0] = *v31;
  v63[1] = v36;
  v38 = *(v31 + 2);
  v64 = *(v31 + 1);
  v65 = v38;
  v66 = v37;
  v39 = v56;
  sub_1D6B1FAA8(v21 + v34, v56, type metadata accessor for FormatMetadata);
  v40 = v55;
  sub_1D6B1FAA8(&v31[v34], v55, type metadata accessor for FormatMetadata);
  v41 = _s8NewsFeed18FormatLocalizationV2eeoiySbAC_ACtFZ_0(v21, v63);

  if ((v41 & 1) == 0)
  {
    sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);

    v52 = v35;
LABEL_16:
    sub_1D6B238FC(v52, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    goto LABEL_17;
  }

  v42 = static FormatMetadata.== infix(_:_:)(v39, v40);
  sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);

  sub_1D6B238FC(v35, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  return v42 & 1;
}

uint64_t sub_1D6B1B3A4(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892048, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892048, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF30528);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v83 = v30[4];
      v84[0] = v34;
      *(v84 + 11) = *(v30 + 91);
      v35 = v30[1];
      v79 = *v30;
      v80 = v35;
      v36 = v30[3];
      v81 = v30[2];
      v82 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatDecoration.== infix(_:_:)(v21, &v79);
      v40 = v21[5];
      v89 = v21[4];
      v90[0] = v40;
      *(v90 + 11) = *(v21 + 91);
      v41 = v21[1];
      v85 = *v21;
      v86 = v41;
      v42 = v21[3];
      v87 = v21[2];
      v88 = v42;
      sub_1D6687720(&v85);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v83;
        v78[0] = v84[0];
        *(v78 + 11) = *(v84 + 11);
        v73 = v79;
        v74 = v80;
        v75 = v81;
        v76 = v82;
        sub_1D6687720(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v83;
      v78[0] = v84[0];
      *(v78 + 11) = *(v84 + 11);
      v73 = v79;
      v74 = v80;
      v75 = v81;
      v76 = v82;
      sub_1D6687720(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v89 = v21[4];
    v90[0] = v50;
    *(v90 + 11) = *(v21 + 91);
    v51 = v21[1];
    v85 = *v21;
    v86 = v51;
    v52 = v21[3];
    v87 = v21[2];
    v88 = v52;
    sub_1D6687720(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1BB98(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892050, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = &v63 + *(v29 + 56) - v27;
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v68;
    v44 = v69;
    v45 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v47 = *(v46 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = v17;
      v52 = v17;
      v53 = v43;
      (*(v45 + 32))(v52, v30, v43);
      v54 = v70;
      sub_1D6B1FAA8(v70 + v47, v44, type metadata accessor for FormatMetadata);
      v55 = &v30[v47];
      v56 = v51;
      v57 = v64;
      sub_1D6B1FAA8(v55, v64, type metadata accessor for FormatMetadata);
      v58 = sub_1D72584CC();
      v59 = *(v45 + 8);
      v60 = v54;
      v61 = v53;
      v59(v60, v53);
      if (v58)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v44, v57);
        sub_1D6B23C38(v57, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
        v59(v56, v61);
        goto LABEL_14;
      }

      sub_1D6B23C38(v57, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
      v59(v56, v53);
      goto LABEL_17;
    }

    v48 = v70;
    sub_1D6B23C38(v70 + v47, type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v48, v43);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892050, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType);
LABEL_18:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF343F0);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *(v30 + 3);
      v81 = *(v30 + 2);
      v82 = v34;
      v83 = *(v30 + 4);
      v84 = v30[80];
      v35 = *(v30 + 1);
      v79 = *v30;
      v80 = v35;
      v36 = v66;
      sub_1D6B1FAA8(&v21[v33], v66, type metadata accessor for FormatMetadata);
      v37 = &v30[v33];
      v38 = v65;
      sub_1D6B1FAA8(v37, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatType.== infix(_:_:)(v21, &v79);
      v40 = *(v21 + 3);
      v87 = *(v21 + 2);
      v88 = v40;
      v89 = *(v21 + 4);
      v90 = v21[80];
      v41 = *(v21 + 1);
      v85 = *v21;
      v86 = v41;
      sub_1D62B7D78(&v85);
      if (v39)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v36, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
        v75 = v81;
        v76 = v82;
        v77 = v83;
        v78 = v84;
        v73 = v79;
        v74 = v80;
        sub_1D62B7D78(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        return v42 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
      v75 = v81;
      v76 = v82;
      v77 = v83;
      v78 = v84;
      v73 = v79;
      v74 = v80;
      sub_1D62B7D78(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(&v21[v33], type metadata accessor for FormatMetadata);
    v49 = *(v21 + 3);
    v87 = *(v21 + 2);
    v88 = v49;
    v89 = *(v21 + 4);
    v90 = v21[80];
    v50 = *(v21 + 1);
    v85 = *v21;
    v86 = v50;
    sub_1D62B7D78(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1D6B1C388(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892058, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892058, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF2BE08);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v83 = v30[4];
      v84[0] = v34;
      *(v84 + 9) = *(v30 + 89);
      v35 = v30[1];
      v79 = *v30;
      v80 = v35;
      v36 = v30[3];
      v81 = v30[2];
      v82 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatSupplementary.== infix(_:_:)(v21, &v79);
      v40 = v21[5];
      v89 = v21[4];
      v90[0] = v40;
      *(v90 + 9) = *(v21 + 89);
      v41 = v21[1];
      v85 = *v21;
      v86 = v41;
      v42 = v21[3];
      v87 = v21[2];
      v88 = v42;
      sub_1D62E2300(&v85);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v83;
        v78[0] = v84[0];
        *(v78 + 9) = *(v84 + 9);
        v73 = v79;
        v74 = v80;
        v75 = v81;
        v76 = v82;
        sub_1D62E2300(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v83;
      v78[0] = v84[0];
      *(v78 + 9) = *(v84 + 9);
      v73 = v79;
      v74 = v80;
      v75 = v81;
      v76 = v82;
      sub_1D62E2300(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v89 = v21[4];
    v90[0] = v50;
    *(v90 + 9) = *(v21 + 89);
    v51 = v21[1];
    v85 = *v21;
    v86 = v51;
    v52 = v21[3];
    v87 = v21[2];
    v88 = v52;
    sub_1D62E2300(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1CB7C(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v58 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v59 = (&v57 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - v14;
  v16 = sub_1D72585BC();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA1328(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57 - v26;
  sub_1D6B24574(0, &qword_1EC892060, sub_1D5EA1328);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v57 - v30;
  v33 = (&v57 + *(v32 + 56) - v30);
  sub_1D6B1FA40(v61, &v57 - v30, sub_1D5EA1328);
  sub_1D6B1FA40(v62, v33, sub_1D5EA1328);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v19;
    v62 = v11;
    v44 = v15;
    v45 = v60;
    sub_1D6B1FA40(v31, v27, sub_1D5EA1328);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v47 = *(v46 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = v45;
      v49 = *(v45 + 32);
      v50 = v16;
      v49(v43, v33, v16);
      v51 = v44;
      sub_1D6B1FAA8(&v27[v47], v44, type metadata accessor for FormatMetadata);
      v52 = v33 + v47;
      v53 = v62;
      sub_1D6B1FAA8(v52, v62, type metadata accessor for FormatMetadata);
      v54 = sub_1D72584CC();
      v55 = *(v48 + 8);
      v55(v27, v50);
      if (v54)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v51, v53);
        sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
        v55(v43, v50);
        goto LABEL_14;
      }

      sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
      v55(v43, v50);
      goto LABEL_17;
    }

    sub_1D6B23C38(&v27[v47], type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v27, v16);
LABEL_11:
    sub_1D6B245D4(v31, &qword_1EC892060, sub_1D5EA1328);
LABEL_18:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B1FA40(v31, v23, sub_1D5EA1328);
    sub_1D5D57EEC(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet);
    v36 = *(v35 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v33;
      v38 = v59;
      sub_1D6B1FAA8(v23 + v36, v59, type metadata accessor for FormatMetadata);
      v39 = v33 + v36;
      v40 = v58;
      sub_1D6B1FAA8(v39, v58, type metadata accessor for FormatMetadata);
      type metadata accessor for FormatSnippet();
      v41 = static FormatSnippet.== infix(_:_:)(*v23, v37);

      if (v41)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v38, v40);

        sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
LABEL_14:
        sub_1D6B23C38(v31, sub_1D5EA1328);
        return v42 & 1;
      }

      sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
LABEL_17:
      sub_1D6B23C38(v31, sub_1D5EA1328);
      goto LABEL_18;
    }

    sub_1D6B23C38(v23 + v36, type metadata accessor for FormatMetadata);

    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B23C38(v31, sub_1D5EA1328);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1D6B1D1D4(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = a1;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v56 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = (&v56 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v60 = &v56 - v13;
  v59 = sub_1D72585BC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v56 - v23;
  sub_1D6B24484(0, &qword_1EC892068, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v56 - v27;
  v30 = &v56 + *(v29 + 56) - v27;
  sub_1D6B24500(v62, &v56 - v27, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v63, v30, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v16;
    v43 = v61;
    v44 = v60;
    v45 = v58;
    v46 = v59;
    sub_1D6B24500(v28, v24, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v63 = v28;
      (*(v45 + 32))(v42, v30, v46);
      v51 = v44;
      sub_1D6B1FAA8(&v24[v48], v44, type metadata accessor for FormatMetadata);
      sub_1D6B1FAA8(&v30[v48], v43, type metadata accessor for FormatMetadata);
      v52 = sub_1D72584CC();
      v53 = *(v45 + 8);
      v53(v24, v46);
      if (v52)
      {
        v41 = static FormatMetadata.== infix(_:_:)(v51, v43);
        sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
        v53(v42, v46);
        sub_1D6B238FC(v63, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        return v41 & 1;
      }

      sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
      v53(v42, v46);
      v54 = v63;
      goto LABEL_16;
    }

    sub_1D6B23C38(&v24[v48], type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v24, v46);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892068, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle);
LABEL_17:
    v41 = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D6B238FC(v28, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_11;
  }

  sub_1D6B24500(v28, v20, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  sub_1D5EA17B4(0, &qword_1EDF34010);
  v33 = *(v32 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D6B23C38(&v20[v33], type metadata accessor for FormatMetadata);
    v49 = *(v20 + 3);
    v76 = *(v20 + 2);
    v77 = v49;
    v78 = *(v20 + 8);
    v50 = *(v20 + 1);
    v74 = *v20;
    v75 = v50;
    sub_1D6687624(&v74);
    goto LABEL_11;
  }

  v34 = *(v30 + 3);
  v71 = *(v30 + 2);
  v72 = v34;
  v73 = *(v30 + 8);
  v35 = *(v30 + 1);
  v69 = *v30;
  v70 = v35;
  v36 = v57;
  sub_1D6B1FAA8(&v20[v33], v57, type metadata accessor for FormatMetadata);
  v37 = v56;
  sub_1D6B1FAA8(&v30[v33], v56, type metadata accessor for FormatMetadata);
  v38 = static FormatStyle.== infix(_:_:)(v20, &v69);
  v39 = *(v20 + 3);
  v76 = *(v20 + 2);
  v77 = v39;
  v78 = *(v20 + 8);
  v40 = *(v20 + 1);
  v74 = *v20;
  v75 = v40;
  sub_1D6687624(&v74);
  if ((v38 & 1) == 0)
  {
    sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
    v66 = v71;
    v67 = v72;
    v68 = v73;
    v65 = v70;
    v64 = v69;
    sub_1D6687624(&v64);
    v54 = v28;
LABEL_16:
    sub_1D6B238FC(v54, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    goto LABEL_17;
  }

  v41 = static FormatMetadata.== infix(_:_:)(v36, v37);
  sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
  v66 = v71;
  v67 = v72;
  v68 = v73;
  v65 = v70;
  v64 = v69;
  sub_1D6687624(&v64);
  sub_1D6B238FC(v28, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  return v41 & 1;
}

uint64_t sub_1D6B1DA8C(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892070, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892070, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF34648);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v84 = v30[4];
      v85 = v34;
      v86[0] = v30[6];
      *(v86 + 9) = *(v30 + 105);
      v35 = v30[1];
      v80 = *v30;
      v81 = v35;
      v36 = v30[3];
      v82 = v30[2];
      v83 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatItem.== infix(_:_:)(v21, &v80);
      v40 = v21[5];
      v91 = v21[4];
      v92 = v40;
      v93[0] = v21[6];
      *(v93 + 9) = *(v21 + 105);
      v41 = v21[1];
      v87 = *v21;
      v88 = v41;
      v42 = v21[3];
      v89 = v21[2];
      v90 = v42;
      sub_1D66876CC(&v87);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v84;
        v78 = v85;
        v79[0] = v86[0];
        *(v79 + 9) = *(v86 + 9);
        v73 = v80;
        v74 = v81;
        v75 = v82;
        v76 = v83;
        sub_1D66876CC(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v84;
      v78 = v85;
      v79[0] = v86[0];
      *(v79 + 9) = *(v86 + 9);
      v73 = v80;
      v74 = v81;
      v75 = v82;
      v76 = v83;
      sub_1D66876CC(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v91 = v21[4];
    v92 = v50;
    v93[0] = v21[6];
    *(v93 + 9) = *(v21 + 105);
    v51 = v21[1];
    v87 = *v21;
    v88 = v51;
    v52 = v21[3];
    v89 = v21[2];
    v90 = v52;
    sub_1D66876CC(&v87);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1E2A8(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v67 = (&v64 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = (&v64 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v64 - v13;
  v14 = sub_1D72585BC();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v71 = &v64 - v24;
  sub_1D6B24484(0, &qword_1EC892078, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v64 - v27;
  v30 = (&v64 + *(v29 + 56) - v27);
  sub_1D6B24500(v72, &v64 - v27, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v73, v30, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = v69;
    v47 = v70;
    v48 = v68;
    v49 = v71;
    sub_1D6B24500(v28, v71, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v51 = *(v50 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v56 = v17;
      (*(v48 + 32))(v17, v30, v46);
      v57 = v49;
      sub_1D6B1FAA8(v49 + v51, v47, type metadata accessor for FormatMetadata);
      v58 = v30 + v51;
      v59 = v56;
      v60 = v65;
      sub_1D6B1FAA8(v58, v65, type metadata accessor for FormatMetadata);
      v61 = sub_1D72584CC();
      v62 = *(v48 + 8);
      v62(v57, v46);
      if (v61)
      {
        v45 = static FormatMetadata.== infix(_:_:)(v47, v60);
        sub_1D6B23C38(v60, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v47, type metadata accessor for FormatMetadata);
        v62(v59, v46);
        goto LABEL_14;
      }

      sub_1D6B23C38(v60, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v47, type metadata accessor for FormatMetadata);
      v62(v59, v46);
      goto LABEL_17;
    }

    sub_1D6B23C38(v49 + v51, type metadata accessor for FormatMetadata);
    (*(v48 + 8))(v49, v46);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892078, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup);
LABEL_18:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF341E0);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[7];
      v89 = v30[6];
      v90 = v34;
      v91 = v30[8];
      v35 = v30[3];
      v85 = v30[2];
      v86 = v35;
      v36 = v30[5];
      v87 = v30[4];
      v88 = v36;
      v37 = v30[1];
      v83 = *v30;
      v84 = v37;
      v38 = v67;
      sub_1D6B1FAA8(v21 + v33, v67, type metadata accessor for FormatMetadata);
      v39 = v66;
      sub_1D6B1FAA8(v30 + v33, v66, type metadata accessor for FormatMetadata);
      v40 = static FormatGroup.== infix(_:_:)(v21, &v83);
      v41 = v21[7];
      v98 = v21[6];
      v99 = v41;
      v100 = v21[8];
      v42 = v21[3];
      v94 = v21[2];
      v95 = v42;
      v43 = v21[5];
      v96 = v21[4];
      v97 = v43;
      v44 = v21[1];
      v92 = *v21;
      v93 = v44;
      sub_1D5D68304(&v92);
      if (v40)
      {
        v45 = static FormatMetadata.== infix(_:_:)(v38, v39);
        sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        v80 = v89;
        v81 = v90;
        v82 = v91;
        v76 = v85;
        v77 = v86;
        v78 = v87;
        v79 = v88;
        v74 = v83;
        v75 = v84;
        sub_1D5D68304(&v74);
LABEL_14:
        sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        return v45 & 1;
      }

      sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v76 = v85;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v74 = v83;
      v75 = v84;
      sub_1D5D68304(&v74);
LABEL_17:
      sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v52 = v21[7];
    v98 = v21[6];
    v99 = v52;
    v100 = v21[8];
    v53 = v21[3];
    v94 = v21[2];
    v95 = v53;
    v54 = v21[5];
    v96 = v21[4];
    v97 = v54;
    v55 = v21[1];
    v92 = *v21;
    v93 = v55;
    sub_1D5D68304(&v92);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v45 = 1;
  return v45 & 1;
}

uint64_t FormatContentSubgroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6B1EB34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 24);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6B1EC0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 28);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6B1ECE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 32);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.placeholders.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t sub_1D6B1EDB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 36);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.placeholders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6B1EE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for FormatContentSubgroup();
  sub_1D6B24500(a1 + *(v8 + 40), v7, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  return sub_1D6B1FAA8(v7, a2, type metadata accessor for FormatMetadata);
}

uint64_t FormatContentSubgroup.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FormatContentSubgroup() + 40);

  return sub_1D6B1FB10(a1, v3);
}

uint64_t FormatContentSubgroup.filters.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t sub_1D6B1F058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 44);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatContentSubgroup.sections.getter()
{
  type metadata accessor for FormatContentSubgroup();
}

uint64_t sub_1D6B1F164(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup() + 48);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContentSubgroup.sections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup() + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6B1F23C()
{
  v1 = type metadata accessor for FormatContentSlotItemObject();
  v68 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FormatContentSlotItem();
  v74 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v5);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for FormatContentSubgroup() + 32));
  v66 = *(v8 + 16);
  if (!v66)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v67 = v8 + 32;
  result = MEMORY[0x1E69E7CC0];
  v69 = v7;
  v64 = v8;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_86;
    }

    v13 = (v67 + 48 * v9);
    v14 = v13[4];
    v73 = *(v14 + 16);
    if (v73)
    {
      break;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v51 = *(v21 + 16);
    v52 = *(result + 16);
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_87;
    }

    v54 = v9;
    v55 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    v56 = v55;
    if (result && v53 <= *(v55 + 24) >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v52 <= v53)
      {
        v57 = v52 + v51;
      }

      else
      {
        v57 = v52;
      }

      result = sub_1D698C34C(result, v57, 1, v55);
      v56 = result;
      if (*(v21 + 16))
      {
LABEL_67:
        if ((*(v56 + 24) >> 1) - *(v56 + 16) < v51)
        {
          goto LABEL_89;
        }

        v58 = v56;
        swift_arrayInitWithCopy();

        result = v58;
        v12 = v54;
        if (v51)
        {
          v59 = *(v58 + 16);
          v37 = __OFADD__(v59, v51);
          v60 = v59 + v51;
          if (v37)
          {
            goto LABEL_90;
          }

          *(v58 + 16) = v60;
        }

        goto LABEL_4;
      }
    }

    v11 = v56;

    result = v11;
    v12 = v54;
    if (v51)
    {
      goto LABEL_88;
    }

LABEL_4:
    v9 = v12 + 1;
    v8 = v64;
    if (v9 == v66)
    {
      return result;
    }
  }

  v62 = result;
  v63 = v9;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v18 = v13[5];
  v19 = &v7[*(v65 + 20)];
  v72 = v14 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v61[3] = v15;

  v61[2] = v16;

  v61[1] = v17;

  swift_bridgeObjectRetain_n();
  v61[0] = v18;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v70 = v14;
  v71 = v19;
  while (1)
  {
    if (v20 >= *(v14 + 16))
    {
      goto LABEL_77;
    }

    v23 = *(v74 + 72);
    v75 = v20;
    sub_1D6B1FA40(v72 + v23 * v20, v7, type metadata accessor for FormatContentSlotItem);
    result = sub_1D6313180();
    v24 = result;
    v25 = *v19;
    v76 = v21;
    if (v25)
    {
      v26 = *(v19 + 1);
      v27 = *(v26 + 16);
      if (v27)
      {
        break;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v39 = *(v30 + 16);
    v40 = *(v24 + 16);
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_78;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v41 > *(v24 + 24) >> 1)
    {
      if (v40 <= v41)
      {
        v42 = v40 + v39;
      }

      else
      {
        v42 = v40;
      }

      result = sub_1D698C34C(result, v42, 1, v24);
      v24 = result;
    }

    v21 = v76;
    if (*(v30 + 16))
    {
      if ((*(v24 + 24) >> 1) - *(v24 + 16) < v39)
      {
        goto LABEL_82;
      }

      swift_arrayInitWithCopy();

      v7 = v69;
      v19 = v71;
      if (v39)
      {
        v43 = *(v24 + 16);
        v37 = __OFADD__(v43, v39);
        v44 = v43 + v39;
        if (v37)
        {
          goto LABEL_84;
        }

        *(v24 + 16) = v44;
      }
    }

    else
    {

      v7 = v69;
      v19 = v71;
      if (v39)
      {
        goto LABEL_79;
      }
    }

    result = sub_1D6B23C38(v7, type metadata accessor for FormatContentSlotItem);
    v45 = *(v24 + 16);
    v46 = *(v21 + 16);
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_80;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v47 <= *(v21 + 24) >> 1)
    {
      if (*(v24 + 16))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v46 <= v47)
      {
        v48 = v46 + v45;
      }

      else
      {
        v48 = v46;
      }

      result = sub_1D698C34C(result, v48, 1, v21);
      v21 = result;
      if (*(v24 + 16))
      {
LABEL_52:
        if ((*(v21 + 24) >> 1) - *(v21 + 16) < v45)
        {
          goto LABEL_83;
        }

        swift_arrayInitWithCopy();

        v22 = v75;
        if (v45)
        {
          v49 = *(v21 + 16);
          v37 = __OFADD__(v49, v45);
          v50 = v49 + v45;
          if (v37)
          {
            goto LABEL_85;
          }

          *(v21 + 16) = v50;
        }

        goto LABEL_9;
      }
    }

    v22 = v75;
    if (v45)
    {
      goto LABEL_81;
    }

LABEL_9:
    v20 = v22 + 1;
    v14 = v70;
    if (v20 == v73)
    {

      swift_bridgeObjectRelease_n();
      result = v62;
      v9 = v63;
      goto LABEL_58;
    }
  }

  v28 = v26 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v29 = *(v68 + 72);
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D6B1FA40(v28, v4, type metadata accessor for FormatContentSlotItemObject);
    v31 = sub_1D6313180();
    result = sub_1D6B23C38(v4, type metadata accessor for FormatContentSlotItemObject);
    v32 = *(v31 + 2);
    v33 = *(v30 + 16);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v34 <= *(v30 + 24) >> 1)
    {
      if (*(v31 + 2))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_1D698C34C(result, v35, 1, v30);
      v30 = result;
      if (*(v31 + 2))
      {
LABEL_25:
        if ((*(v30 + 24) >> 1) - *(v30 + 16) < v32)
        {
          goto LABEL_75;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = *(v30 + 16);
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_76;
          }

          *(v30 + 16) = v38;
        }

        goto LABEL_15;
      }
    }

    if (v32)
    {
      goto LABEL_74;
    }

LABEL_15:
    v28 += v29;
    if (!--v27)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

uint64_t FormatContentSubgroup.init(identifier:layouts:properties:selectors:contents:sections:placeholders:metadata:filters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for FormatContentSubgroup();
  sub_1D6B1FAA8(a3, a9 + v18[5], sub_1D5B5971C);
  *(a9 + v18[6]) = a4;
  *(a9 + v18[7]) = a5;
  *(a9 + v18[9]) = a8;
  *(a9 + v18[8]) = a6;
  *(a9 + v18[12]) = a7;
  result = sub_1D6B1FAA8(a10, a9 + v18[10], type metadata accessor for FormatMetadata);
  *(a9 + v18[11]) = a11;
  return result;
}

void sub_1D6B1F9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6B1FA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B1FAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B1FB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B1FB74@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D6BD08A8(a1);
  *a2 = result;
  return result;
}

char *sub_1D6B1FBE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12[5] = a5;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  result = sub_1D5FBBD68(sub_1D6B2468C, v12, v10);
  if (!v6)
  {
    *a6 = v9;
    a6[1] = v8;
    a6[2] = result;
  }

  return result;
}

__n128 sub_1D6B1FC58@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v57 = a5;
  v58 = a4;
  v56 = a3;
  v51 = a6;
  v8 = type metadata accessor for FormatSlotDefinition();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v50 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[3];
  v52 = a1[2];
  v53 = v19;
  v20 = a1[5];
  v54 = a1[4];
  v55 = v20;
  v21 = (a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  v22 = v21[1];
  v23 = *(v22 + 16);

  if (v23)
  {

    v24 = sub_1D5B69D90(v18, v17);
    if (v25)
    {
      sub_1D6B1FA40(*(v22 + 56) + *(v9 + 72) * v24, v12, type metadata accessor for FormatSlotDefinition);

      sub_1D6B1FAA8(v12, v16, type metadata accessor for FormatSlotDefinition);

      v63 = v18;
      v64 = v17;
      v65 = v52;
      v66 = v53;
      v67 = v54;
      v68 = v55;
      sub_1D5B5D048(0, &unk_1EDF19840, &type metadata for FormatSlotTransform, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D7273AE0;
      v27 = swift_allocObject();
      type metadata accessor for FormatSlotItemCountLimit();
      v28 = swift_allocBox();
      sub_1D6B1FA40(v16, v29, type metadata accessor for FormatSlotDefinition);
      swift_storeEnumTagMultiPayload();
      *(v27 + 16) = v28;
      *(v26 + 32) = v27 | 0x2000000000000000;
      v59 = v26;

      sub_1D698867C(v30);
      v31 = v70;
      sub_1D6F0FE44(v56, v58, v57, v59, v60);
      sub_1D6B23C38(v16, type metadata accessor for FormatSlotDefinition);

      if (!v31)
      {
        v33 = v60[1];
        v34 = v51;
        *v51 = v60[0];
        v34[1] = v33;
        result.n128_u64[0] = v61;
        v35 = v62;
        v34[2] = v61;
        v34[3] = v35;
      }

      return result;
    }
  }

  v36 = type metadata accessor for FormatServiceOptions();
  v37 = v58;
  v38 = v58 + *(v36 + 40);
  v39 = type metadata accessor for FormatTransformData();
  if ((sub_1D6184B08(1u, *(v38 + *(v39 + 20))) & 1) != 0 && *(*v21 + 16))
  {
    sub_1D7262EBC();
    sub_1D5C384A0();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D7270C10;
    v41 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v42 = sub_1D5B7E2C0();
    *(v40 + 32) = v18;
    *(v40 + 40) = v17;
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 64) = v42;
    *(v40 + 72) = v44;
    *(v40 + 80) = v43;

    sub_1D725C30C();

    result.n128_u64[0] = 0;
    v45 = v51;
    v51[2] = 0u;
    v45[3] = 0u;
    *v45 = 0u;
    v45[1] = 0u;
  }

  else
  {

    v63 = v18;
    v64 = v17;
    v65 = v52;
    v66 = v53;
    v67 = v54;
    v68 = v55;
    v46 = v70;
    sub_1D6F0FE44(v56, v37, v57, MEMORY[0x1E69E7CC0], v69);
    if (!v46)
    {
      v47 = v69[1];
      v48 = v69[2];
      v49 = v51;
      *v51 = v69[0];
      v49[1] = v47;
      result = v69[3];
      v49[2] = v48;
      v49[3] = result;
    }
  }

  return result;
}

uint64_t sub_1D6B20130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D6B1F9DC(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption() - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

uint64_t FormatContentSubgroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  sub_1D5B5971C();
  v162 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v148 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D6B1F9DC(0, &unk_1EDF40210, sub_1D5C2AB28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v145 = &v139 - v9;
  v10 = MEMORY[0x1E69E6F48];
  sub_1D5B5C6F0(0, &qword_1EDF3C628, sub_1D6B23854, &type metadata for FormatContentSubgroup.AltCodingKeys, MEMORY[0x1E69E6F48]);
  v147 = v11;
  v146 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v156 = &v139 - v13;
  sub_1D5C2AB28(0);
  v164 = v14;
  v155 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v144 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v161 = (&v139 - v22);
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v6);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v153 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v152 = &v139 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v149 = &v139 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v150 = &v139 - v34;
  v163 = sub_1D725BD1C();
  v166 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v35);
  v154 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v160 = &v139 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v151 = &v139 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v158 = &v139 - v45;
  sub_1D6B1F9DC(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, v6);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v167 = &v139 - v48;
  v168 = type metadata accessor for FormatMetadata();
  v165 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v49);
  v159 = &v139 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1D725895C();
  *&v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v51);
  v53 = &v139 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF3C630, sub_1D6B238A8, &type metadata for FormatContentSubgroup.CodingKeys, v10);
  v55 = v54;
  v171 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v139 - v57;
  v59 = type metadata accessor for FormatContentSubgroup();
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = (&v139 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = a1[3];
  v173 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  sub_1D6B238A8();
  v64 = v172;
  sub_1D7264B0C();
  if (v64)
  {
    return __swift_destroy_boxed_opaque_existential_1(v173);
  }

  v65 = v53;
  v66 = v169;
  v67 = v170;
  v142 = v59;
  v172 = v62;
  LOBYTE(v174) = 0;
  v68 = sub_1D726422C();
  v70 = v55;
  if (!v69)
  {
    v72 = v65;
    sub_1D725894C();
    v73 = sub_1D725893C();
    v75 = v74;
    (*(v66 + 8))(v72, v67);
    v69 = v75;
    v68 = v73;
  }

  v76 = v172;
  *v172 = v68;
  v76[1] = v69;
  sub_1D5B5D048(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
  LOBYTE(v175) = 2;
  sub_1D6B23958();
  sub_1D726427C();
  v77 = v174;
  if (!v174)
  {
    v77 = MEMORY[0x1E69E7CC0];
  }

  v78 = v142;
  *(v76 + v142[6]) = v77;
  sub_1D5B81B04();
  LOBYTE(v175) = 3;
  sub_1D5CB5D1C(&qword_1EDF3C7D0);
  sub_1D726427C();
  v79 = v174;
  if (!v174)
  {
    v79 = MEMORY[0x1E69E7CD0];
  }

  *(v76 + v78[7]) = v79;
  sub_1D5B5D048(0, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
  LOBYTE(v175) = 5;
  sub_1D6B239F4();
  v170 = 0;
  sub_1D726427C();
  v80 = v174;
  v81 = MEMORY[0x1E69E7CC0];
  if (!v174)
  {
    v80 = MEMORY[0x1E69E7CC0];
  }

  *(v76 + v78[8]) = v80;
  sub_1D5B5D048(0, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
  LOBYTE(v175) = 6;
  sub_1D6B23A90();
  sub_1D726427C();
  v82 = v174;
  if (!v174)
  {
    v82 = v81;
  }

  *(v76 + v78[12]) = v82;
  sub_1D5B5D048(0, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
  LOBYTE(v175) = 4;
  sub_1D6B23B2C();
  sub_1D726427C();
  v83 = v174;
  if (!v174)
  {
    v83 = v81;
  }

  *(v76 + v78[9]) = v83;
  LOBYTE(v174) = 7;
  sub_1D5B4A27C(&qword_1EDF415C0, type metadata accessor for FormatMetadata);
  v85 = v167;
  v84 = v168;
  sub_1D726427C();
  v87 = v165 + 48;
  v86 = *(v165 + 48);
  v88 = v86(v85, 1, v84);
  v141 = v70;
  if (v88 == 1)
  {
    *&v169 = v86;
    v165 = v87;
    v89 = v150;
    sub_1D725BD3C();
    v90 = *(v166 + 48);
    v91 = v163;
    if (v90(v89, 1, v163) == 1)
    {
      sub_1D725BCDC();
      v92 = v90(v89, 1, v91);
      v93 = v149;
      if (v92 != 1)
      {
        sub_1D6B23BC8(v89, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v166 + 32))(v158, v89, v91);
      v93 = v149;
    }

    sub_1D725BD3C();
    if (v90(v93, 1, v91) == 1)
    {
      v96 = v151;
      sub_1D725BCCC();
      v97 = v90(v93, 1, v91);
      v98 = v166;
      if (v97 != 1)
      {
        sub_1D6B23BC8(v93, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      v98 = v166;
      v96 = v151;
      (*(v166 + 32))(v151, v93, v91);
    }

    v99 = v168;
    v94 = v159;
    sub_1D725BD3C();
    *v94 = 0;
    *(v94 + 1) = 0;
    v100 = *(v98 + 32);
    v100(&v94[v99[5]], v158, v91);
    v100(&v94[v99[6]], v96, v91);
    v101 = MEMORY[0x1E69E7CD0];
    *&v94[v99[8]] = MEMORY[0x1E69E7CD0];
    *&v94[v99[9]] = v101;
    *&v94[v99[10]] = v101;
    *&v94[v99[11]] = v101;
    v102 = v167;
    v103 = (v169)(v167, 1, v99);
    v95 = v173;
    if (v103 != 1)
    {
      sub_1D6B23BC8(v102, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    v94 = v159;
    sub_1D6B1FAA8(v85, v159, type metadata accessor for FormatMetadata);
    v91 = v163;
    v95 = v173;
  }

  sub_1D6B1FAA8(v94, v172 + v142[10], type metadata accessor for FormatMetadata);
  sub_1D5B5D048(0, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
  LOBYTE(v175) = 8;
  sub_1D5CB70E4();
  sub_1D726427C();
  v140 = v58;
  if (v174)
  {
    v104 = v174;
  }

  else
  {
    v104 = MEMORY[0x1E69E7CC0];
  }

  *(v172 + v142[11]) = v104;
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v105 = sub_1D7264AFC();
  v106 = Dictionary<>.bindingContent.getter(v105);

  if (v106)
  {
    sub_1D688291C(v161);
    v107 = v152;
    sub_1D725BD3C();
    v108 = *(v166 + 48);
    if (v108(v107, 1, v91) == 1)
    {
      sub_1D725BCDC();
      v109 = v108(v107, 1, v91) == 1;
      v110 = v154;
      v111 = v107;
      v112 = v153;
      if (!v109)
      {
        sub_1D6B23BC8(v111, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v166 + 32))(v160, v107, v91);
      v110 = v154;
      v112 = v153;
    }

    sub_1D725BD3C();
    if (v108(v112, 1, v91) == 1)
    {
      sub_1D725BCCC();
      v113 = v108(v112, 1, v91);
      v114 = v91;
      v115 = v166;
      if (v113 != 1)
      {
        sub_1D6B23BC8(v112, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      v115 = v166;
      (*(v166 + 32))(v110, v112, v91);
      v114 = v91;
    }

    sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v117 = v161;
    v118 = v161 + *(v116 + 48);
    v119 = v168;
    sub_1D725BD3C();
    *v118 = 0;
    *(v118 + 1) = 0;
    v120 = *(v115 + 32);
    v120(&v118[v119[5]], v160, v114);
    v120(&v118[v119[6]], v110, v114);
    v121 = MEMORY[0x1E69E7CD0];
    *&v118[v119[8]] = MEMORY[0x1E69E7CD0];
    *&v118[v119[9]] = v121;
    *&v118[v119[10]] = v121;
    *&v118[v119[11]] = v121;
    swift_storeEnumTagMultiPayload();
    v122 = v172;
    v123 = v172 + v142[5];
    sub_1D6B1FA40(v117, v123, sub_1D5C2AB28);
    sub_1D6B1F9DC(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
    v124 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1D7273AE0;
    sub_1D6B1FAA8(v117, v125 + v124, sub_1D5C2AB28);
    (*(v171 + 8))(v140, v141);
    *(v123 + *(v162 + 36)) = v125;
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  sub_1D6B23854();
  sub_1D7264B0C();
  sub_1D5E4C1F0(0);
  sub_1D5B4A27C(qword_1EDF3CDD0, sub_1D5E4C1F0);
  sub_1D726427C();
  v126 = v174;
  if (v174)
  {
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    v127 = __swift_project_value_buffer(v163, qword_1EDF3CA58);
    v128 = v145;
    sub_1D6B22D88(v127, v126, v145);

    if ((*(v155 + 48))(v128, 1, v164) != 1)
    {
      v134 = v144;
      sub_1D6B1FAA8(v145, v144, sub_1D5C2AB28);
      v135 = v143;
      sub_1D6B1FA40(v134, v143, sub_1D5C2AB28);
      v122 = v172;
      v136 = v172 + v142[5];
      sub_1D6B1FA40(v135, v136, sub_1D5C2AB28);
      sub_1D6B1F9DC(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
      v137 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_1D7273AE0;
      sub_1D6B1FAA8(v135, v138 + v137, sub_1D5C2AB28);
      sub_1D6B23C38(v134, sub_1D5C2AB28);
      (*(v146 + 8))(v156, v147);
      (*(v171 + 8))(v140, v141);
      *(v136 + *(v162 + 36)) = v138;
      goto LABEL_48;
    }

    sub_1D6B23BC8(v145, &unk_1EDF40210, sub_1D5C2AB28);
  }

  sub_1D5E4C26C();
  v129 = swift_allocError();
  *v130 = 2;
  swift_willThrow();
  (*(v146 + 8))(v156, v147);
  v131 = v141;
  LOBYTE(v174) = 1;
  sub_1D5B4A27C(qword_1EDF3D378, sub_1D5B5971C);
  v132 = v148;
  v133 = v140;
  sub_1D726431C();
  (*(v171 + 8))(v133, v131);

  v122 = v172;
  sub_1D6B1FAA8(v132, v172 + v142[5], sub_1D5B5971C);
LABEL_48:
  sub_1D6B1FA40(v122, v157, type metadata accessor for FormatContentSubgroup);
  __swift_destroy_boxed_opaque_existential_1(v173);
  return sub_1D6B23C38(v122, type metadata accessor for FormatContentSubgroup);
}

uint64_t FormatContentSubgroup.encode(to:)(void *a1)
{
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v81 = &v65 - v7;
  v8 = sub_1D725BD1C();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v65 - v13;
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v73 = &v65 - v16;
  v78 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v78, v17);
  v72 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v79 = (&v65 - v25);
  sub_1D5B5C6F0(0, &qword_1EDF02688, sub_1D6B238A8, &type metadata for FormatContentSubgroup.CodingKeys, MEMORY[0x1E69E6F58]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v65 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B238A8();
  sub_1D7264B5C();
  LOBYTE(v85) = 0;
  v32 = v82;
  sub_1D72643FC();
  if (v32)
  {
    return (*(v28 + 8))(v31, v27);
  }

  v34 = v22;
  v70 = v27;
  v71 = v31;
  v82 = 0;
  v68 = a1;
  v69 = v28;
  v35 = type metadata accessor for FormatContentSubgroup();
  v66 = *(v35 + 40);
  v36 = v73;
  sub_1D6B24500(v83 + v66, v73, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D6B1FAA8(v36, v79, type metadata accessor for FormatMetadata);
  v37 = v81;
  sub_1D725BD3C();
  v38 = v75;
  v39 = v76;
  v40 = *(v75 + 48);
  if (v40(v37, 1, v76) == 1)
  {
    sub_1D725BCDC();
    v41 = v34;
    if (v40(v81, 1, v39) != 1)
    {
      sub_1D6B23BC8(v81, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    }
  }

  else
  {
    (*(v38 + 32))(v80, v81, v39);
    v41 = v34;
  }

  v42 = v74;
  sub_1D725BD3C();
  v43 = v40(v42, 1, v39);
  v67 = v35;
  if (v43 == 1)
  {
    v44 = v77;
    sub_1D725BCCC();
    v45 = v40(v42, 1, v39);
    v46 = v70;
    if (v45 != 1)
    {
      sub_1D6B23BC8(v42, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    }
  }

  else
  {
    v44 = v77;
    (*(v38 + 32))(v77, v42, v39);
    v46 = v70;
  }

  v47 = v78;
  sub_1D725BD3C();
  *v41 = 0;
  *(v41 + 1) = 0;
  v48 = *(v38 + 32);
  v48(&v41[v47[5]], v80, v39);
  v48(&v41[v47[6]], v44, v39);
  v49 = MEMORY[0x1E69E7CD0];
  *&v41[v47[8]] = MEMORY[0x1E69E7CD0];
  *&v41[v47[9]] = v49;
  *&v41[v47[10]] = v49;
  *&v41[v47[11]] = v49;
  v50 = v79;
  v51 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v79, v41);
  sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
  if (v51)
  {
    v52 = v71;
  }

  else
  {
    sub_1D6B24500(v83 + v66, v36, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    v53 = v72;
    sub_1D6B1FAA8(v36, v72, type metadata accessor for FormatMetadata);
    LOBYTE(v85) = 7;
    sub_1D5B4A27C(&qword_1EDF11B70, type metadata accessor for FormatMetadata);
    v52 = v71;
    v54 = v82;
    sub_1D726443C();
    if (v54)
    {
      sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
    sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
  }

  v56 = v67;
  v55 = v68;
  v85 = *(v83 + v67[6]);
  v84 = 2;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D5E4C5D4();
    v57 = v82;
    sub_1D726443C();
    if (v57)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[7]);
  v84 = 3;
  if (*(v85 + 16))
  {
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0);
    v58 = v82;
    sub_1D726443C();
    if (v58)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[8]);
  v84 = 5;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D6B23DE0();
    v59 = v82;
    sub_1D726443C();
    if (v59)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[12]);
  v84 = 6;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D6B23E7C();
    v60 = v82;
    sub_1D726443C();
    if (v60)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[11]);
  v84 = 8;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
    sub_1D6B23F18();
    v61 = v82;
    sub_1D726443C();
    if (v61)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[9]);
  v84 = 4;
  if (!*(v85 + 16))
  {
    goto LABEL_34;
  }

  sub_1D5B5D048(0, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
  sub_1D6B23FB4();
  v62 = v82;
  sub_1D726443C();
  if (!v62)
  {
    v82 = 0;
LABEL_34:
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    v63 = sub_1D7264B4C();
    v64 = Dictionary<>.bindingContent.getter(v63);

    if ((v64 & 1) == 0)
    {
      LOBYTE(v85) = 1;
      sub_1D5B5971C();
      sub_1D5B4A27C(qword_1EDF07098, sub_1D5B5971C);
      sub_1D726443C();
    }
  }

  return (*(v69 + 8))(v52, v46);
}

uint64_t sub_1D6B22858(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x69747265706F7270;
    if (a1 != 2)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1)
    {
      v5 = 0x7374756F79616CLL;
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
    v1 = 0x736E6F6974636573;
    v2 = 0x617461646174656DLL;
    if (a1 != 7)
    {
      v2 = 0x737265746C6966;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6F686563616C70;
    if (a1 != 4)
    {
      v3 = 0x73746E65746E6F63;
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

uint64_t sub_1D6B22990()
{
  sub_1D7264A0C();
  sub_1D694EA54();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B229E0()
{
  sub_1D7264A0C();
  sub_1D694EA54();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B22A24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B24354();
  *a1 = result;
  return result;
}

uint64_t sub_1D6B22A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6B22858(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6B22A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6B24354();
  *a1 = result;
  return result;
}

uint64_t sub_1D6B22AC4(uint64_t a1)
{
  v2 = sub_1D6B238A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B22B00(uint64_t a1)
{
  v2 = sub_1D6B238A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B22B3C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B22BA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B22BF8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6B22C80@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6B22CD8(uint64_t a1)
{
  v2 = sub_1D6B23854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B22D14(uint64_t a1)
{
  v2 = sub_1D6B23854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B22D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[2] = a1;

  sub_1D62ECF64(sub_1D5EA208C, v13, a2);
  sub_1D5C2AB28(0);
  v6 = v5;
  sub_1D725BD1C();
  sub_1D5B4A27C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
  v7 = sub_1D72626AC();

  v8 = *(v7 + 16);
  v9 = (v6 - 8);
  if (v8)
  {
    v10 = *v9;
    sub_1D6B1FA40(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(*v9 + 72) * (v8 - 1), a3, sub_1D5C2AB28);

    v11 = 0;
  }

  else
  {

    v10 = *v9;
    v11 = 1;
  }

  return (*(v10 + 56))(a3, v11, 1, v6);
}

uint64_t sub_1D6B22F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatMetadata();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  type metadata accessor for FormatService.ThemePackage(0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v11, v12);
  }

  sub_1D725BCDC();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  }

  return result;
}

uint64_t sub_1D6B23170@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatMetadata();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v11, v12);
  }

  sub_1D725BCDC();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  }

  return result;
}

uint64_t sub_1D6B23374(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = type metadata accessor for FormatMetadata();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatService.ThemePackage(0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = sub_1D725B9FC();
    (*(v13 + 8))(v16, v12);
  }

  return v17 & 1;
}

uint64_t sub_1D6B235EC(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = type metadata accessor for FormatMetadata();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = sub_1D725B9FC();
    (*(v13 + 8))(v16, v12);
  }

  return v17 & 1;
}

unint64_t sub_1D6B23854()
{
  result = qword_1EDF3FDD8;
  if (!qword_1EDF3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDD8);
  }

  return result;
}

unint64_t sub_1D6B238A8()
{
  result = qword_1EDF3FDF0[0];
  if (!qword_1EDF3FDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3FDF0);
  }

  return result;
}

uint64_t sub_1D6B238FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B5C6F0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6B23958()
{
  result = qword_1EDF3C910;
  if (!qword_1EDF3C910)
  {
    sub_1D5B5D048(255, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D5B59CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C910);
  }

  return result;
}

unint64_t sub_1D6B239F4()
{
  result = qword_1EDF3C900;
  if (!qword_1EDF3C900)
  {
    sub_1D5B5D048(255, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D5B5C40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C900);
  }

  return result;
}

unint64_t sub_1D6B23A90()
{
  result = qword_1EDF3C858;
  if (!qword_1EDF3C858)
  {
    sub_1D5B5D048(255, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D5B5C8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C858);
  }

  return result;
}

unint64_t sub_1D6B23B2C()
{
  result = qword_1EDF3C8F0;
  if (!qword_1EDF3C8F0)
  {
    sub_1D5B5D048(255, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
    sub_1D5B5C5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C8F0);
  }

  return result;
}

uint64_t sub_1D6B23BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6B1F9DC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6B23C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8NewsFeed21FormatContentSubgroupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FormatContentSubgroup();
  v6 = v5[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((sub_1D6B1A454(a1 + v6, a2 + v6) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B5971C();
  if ((sub_1D63449AC(*&v7[*(v9 + 36)], *&v8[*(v9 + 36)]) & 1) == 0 || (sub_1D6339F3C(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0 || (sub_1D5BFC390(*(a1 + v5[7]), *(a2 + v5[7])) & 1) == 0 || (sub_1D633BEDC(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0 || (sub_1D63448F0(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0 || (static FormatMetadata.== infix(_:_:)((a1 + v5[10]), (a2 + v5[10])) & 1) == 0 || (sub_1D633BBE4(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v10 = v5[12];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D6343C34(v11, v12);
}

unint64_t sub_1D6B23DE0()
{
  result = qword_1EDF04FA0;
  if (!qword_1EDF04FA0)
  {
    sub_1D5B5D048(255, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D5B5C460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FA0);
  }

  return result;
}

unint64_t sub_1D6B23E7C()
{
  result = qword_1EDF04B90;
  if (!qword_1EDF04B90)
  {
    sub_1D5B5D048(255, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D5B59FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04B90);
  }

  return result;
}

unint64_t sub_1D6B23F18()
{
  result = qword_1EDF04C40;
  if (!qword_1EDF04C40)
  {
    sub_1D5B5D048(255, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
    sub_1D5B59EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04C40);
  }

  return result;
}

unint64_t sub_1D6B23FB4()
{
  result = qword_1EDF04F88;
  if (!qword_1EDF04F88)
  {
    sub_1D5B5D048(255, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
    sub_1D5B5C634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F88);
  }

  return result;
}

uint64_t sub_1D6B24050(void *a1)
{
  a1[1] = sub_1D5B4A27C(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
  a1[2] = sub_1D5B4A27C(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
  result = sub_1D5B4A27C(&qword_1EC892028, type metadata accessor for FormatContentSubgroup);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B24148()
{
  result = qword_1EC892030;
  if (!qword_1EC892030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892030);
  }

  return result;
}

unint64_t sub_1D6B241A0()
{
  result = qword_1EC892038;
  if (!qword_1EC892038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892038);
  }

  return result;
}

unint64_t sub_1D6B241F8()
{
  result = qword_1EDF3FDE0;
  if (!qword_1EDF3FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDE0);
  }

  return result;
}

unint64_t sub_1D6B24250()
{
  result = qword_1EDF3FDE8;
  if (!qword_1EDF3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDE8);
  }

  return result;
}

unint64_t sub_1D6B242A8()
{
  result = qword_1EDF3FDC8;
  if (!qword_1EDF3FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDC8);
  }

  return result;
}

unint64_t sub_1D6B24300()
{
  result = qword_1EDF3FDD0;
  if (!qword_1EDF3FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDD0);
  }

  return result;
}

uint64_t sub_1D6B24354()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6B243A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B24404(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6B1F9DC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6B24484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1D5B5C6F0(255, a3, a4, a5, type metadata accessor for FormatFileReference);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6B24500(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B5C6F0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6B24574(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6B245D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6B24574(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6B24630(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D6B24484(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6B246AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v1, 0);
  v2 = v28;
  v27 = v3 + 56;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = 0;
  v23 = v3 + 64;
  v24 = v1;
  v25 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_38;
    }

    v26 = *(v3 + 36);
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = v9[1];
    v11 = 0xE700000000000000;
    v12 = 0x656C6369747241;
    switch(v10)
    {
      case 0uLL:
        break;
      case 1uLL:
        v11 = 0xE500000000000000;
        v12 = 0x6575737349;
        break;
      case 2uLL:
        v11 = 0xE800000000000000;
        v12 = 0x6465626D45626557;
        break;
      case 3uLL:
        v11 = 0xEA00000000006B63;
        v12 = 0x6172546F69647541;
        break;
      case 4uLL:
        v11 = 0xE300000000000000;
        v12 = 6775124;
        break;
      case 5uLL:
        v11 = 0xE500000000000000;
        v12 = 0x65726F6353;
        break;
      case 6uLL:
        v11 = 0xE800000000000000;
        v12 = 0x676E69646E617453;
        break;
      case 7uLL:
        v12 = 0x74656B63617242;
        break;
      case 8uLL:
        v11 = 0xE900000000000065;
        v12 = 0x726F635320786F42;
        break;
      case 9uLL:
        v12 = 0x6F635320656E694CLL;
        v11 = 0xEA00000000006572;
        break;
      case 0xAuLL:
        v12 = 0x52207972756A6E49;
        v11 = 0xED000074726F7065;
        break;
      case 0xBuLL:
        v11 = 0xEA00000000007265;
        v12 = 0x79616C502079654BLL;
        break;
      case 0xCuLL:
        v11 = 0xE600000000000000;
        v12 = 0x656C7A7A7550;
        break;
      case 0xDuLL:
        v12 = 0x5420656C7A7A7550;
        v11 = 0xEB00000000657079;
        break;
      case 0xEuLL:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D73E6400;
        break;
      case 0xFuLL:
        v11 = 0xE600000000000000;
        v12 = 0x657069636552;
        break;
      default:
        v12 = *v9;
        v11 = v9[1];
        break;
    }

    result = sub_1D5CBA110(*v9, v10);
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1D5BFC364((v13 > 1), v14 + 1, 1);
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v3 = v25;
    v7 = 1 << *(v25 + 32);
    if (v5 >= v7)
    {
      goto LABEL_39;
    }

    v16 = *(v27 + 8 * v8);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_40;
    }

    if (v26 != *(v25 + 36))
    {
      goto LABEL_41;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (v23 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1D5C25E1C(v5, v26, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v26, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t FormatSlotDefinitionItemSet.init(kinds:min:max:properties:auxiliary:editorProperties:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  *a7 = a2;
  *(a7 + 4) = a3;
  *(a7 + 8) = a1;
  *(a7 + 16) = a4;
  sub_1D5CDE22C(0);
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  v11 = type metadata accessor for FormatSlotDefinitionItemSet();
  return sub_1D5C4E9C4(a6, a7 + *(v11 + 36), sub_1D5B57CA0);
}

char *sub_1D6B24B28()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v6 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v6)
    {
LABEL_4:
      v19[0] = v3;
      sub_1D5BFC364(0, v6, 0);
      v7 = v19[0];
      v8 = v4 + 5;
      do
      {
        v9 = 0xE700000000000000;
        v10 = 0x656C6369747241;
        switch(*v8)
        {
          case 0uLL:
            break;
          case 1uLL:
            v9 = 0xE500000000000000;
            v10 = 0x6575737349;
            break;
          case 2uLL:
            v9 = 0xE800000000000000;
            v10 = 0x6465626D45626557;
            break;
          case 3uLL:
            v9 = 0xEA00000000006B63;
            v10 = 0x6172546F69647541;
            break;
          case 4uLL:
            v9 = 0xE300000000000000;
            v10 = 6775124;
            break;
          case 5uLL:
            v9 = 0xE500000000000000;
            v10 = 0x65726F6353;
            break;
          case 6uLL:
            v9 = 0xE800000000000000;
            v10 = 0x676E69646E617453;
            break;
          case 7uLL:
            v10 = 0x74656B63617242;
            break;
          case 8uLL:
            v9 = 0xE900000000000065;
            v10 = 0x726F635320786F42;
            break;
          case 9uLL:
            v10 = 0x6F635320656E694CLL;
            v9 = 0xEA00000000006572;
            break;
          case 0xAuLL:
            v10 = 0x52207972756A6E49;
            v9 = 0xED000074726F7065;
            break;
          case 0xBuLL:
            v9 = 0xEA00000000007265;
            v10 = 0x79616C502079654BLL;
            break;
          case 0xCuLL:
            v9 = 0xE600000000000000;
            v10 = 0x656C7A7A7550;
            break;
          case 0xDuLL:
            v10 = 0x5420656C7A7A7550;
            v9 = 0xEB00000000657079;
            break;
          case 0xEuLL:
            v10 = 0xD000000000000010;
            v9 = 0x80000001D73E6400;
            break;
          case 0xFuLL:
            v9 = 0xE600000000000000;
            v10 = 0x657069636552;
            break;
          default:
            v10 = *(v8 - 1);
            v9 = *v8;
            break;
        }

        sub_1D5CBA110(*(v8 - 1), *v8);
        v19[0] = v7;
        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          sub_1D5BFC364((v11 > 1), v12 + 1, 1);
          v7 = v19[0];
        }

        v8 += 2;
        *(v7 + 2) = v12 + 1;
        v13 = &v7[16 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v9;
        --v6;
      }

      while (v6);

      goto LABEL_28;
    }

LABEL_27:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v19[0] = v7;

    sub_1D5F81CCC(v19);

    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v14 = sub_1D7261F3C();
    v16 = v15;

    v19[0] = sub_1D6B254E0();
    v19[1] = v17;
    MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
    MEMORY[0x1DA6F9910](v14, v16);

    return v19[0];
  }

  v4 = sub_1D5E23CB4(*(v1 + 16), 0);
  v5 = sub_1D5E24C6C(v19, v4 + 2, v2, v1);

  sub_1D5B87E38();
  if (v5 == v2)
  {
    v6 = v4[2];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t FormatSlotDefinitionItemSet.kinds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FormatSlotDefinitionItemSet.properties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatSlotDefinitionItemSet.auxiliary.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D615EC(v2);
}

uint64_t FormatSlotDefinitionItemSet.auxiliary.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5CDE22C(*(v1 + 24));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1D6B250A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B26530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B250D0(uint64_t a1)
{
  v2 = sub_1D5CDDEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B2510C(uint64_t a1)
{
  v2 = sub_1D5CDDEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinitionItemSet.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5CDD744(0, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDDEAC();
  sub_1D7264B5C();
  LOBYTE(v15[0]) = 0;
  sub_1D726444C();
  if (!v2)
  {
    v11 = *(v3 + 4);
    if (v11 != 0x7FFFFFFF)
    {
      v16 = 1;
      LODWORD(v15[0]) = v11;
      sub_1D6B25A58();
      sub_1D72647EC();
    }

    sub_1D5E06A88(*(v3 + 8), v10, 2);
    v13 = *(v3 + 16);
    if (*(v13 + 16))
    {
      v16 = 3;
      v15[0] = v13;
      sub_1D6B25A58();
      sub_1D5B4BF00(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
      sub_1D5CDE114(&qword_1EDF04CF0, &qword_1EDF449F8);
      sub_1D72647EC();
    }

    v14 = *(v3 + 32);
    v15[0] = *(v3 + 24);
    v15[1] = v14;
    v16 = 4;
    sub_1D5D615EC(v15[0]);
    sub_1D6A6312C();
    sub_1D72643BC();
    sub_1D5CDE22C(v15[0]);
    type metadata accessor for FormatSlotDefinitionItemSet();
    LOBYTE(v15[0]) = 5;
    sub_1D725B76C();
    sub_1D5B4C464(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B254E0()
{
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
  if (*(v0 + 4) == 0x7FFFFFFF)
  {
    v1 = 0xE300000000000000;
    v2 = 7889229;
  }

  else
  {
    v2 = sub_1D72644BC();
    v1 = v3;
  }

  MEMORY[0x1DA6F9910](v2, v1);

  return v5;
}

BOOL _s8NewsFeed27FormatSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5D5FB44();
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v32 = v15;
  if ((sub_1D5E1EFE4(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1D633C994(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = *(a2 + 24);
  v31 = *(a2 + 32);
  if (v19)
  {
    if (v20)
    {
      sub_1D5D615EC(v19);
      sub_1D5D615EC(v20);
      v30 = v18;
      sub_1D5D615EC(v19);
      if (sub_1D633C994(v19, v20))
      {
        v29 = sub_1D633C940(v30, v31);
        sub_1D5CDE22C(v20);

        sub_1D5CDE22C(v19);
        if ((v29 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_19;
      }

      sub_1D5CDE22C(v20);

      v21 = v19;
LABEL_15:
      sub_1D5CDE22C(v21);
      return 0;
    }

    sub_1D5D615EC(v19);
    sub_1D5D615EC(0);
    sub_1D5D615EC(v19);

LABEL_13:
    sub_1D5CDE22C(v19);
    v21 = v20;
    goto LABEL_15;
  }

  sub_1D5D615EC(0);
  if (v20)
  {
    sub_1D5D615EC(v20);
    goto LABEL_13;
  }

  sub_1D5D615EC(0);
  sub_1D5CDE22C(0);
LABEL_19:
  v23 = *(type metadata accessor for FormatSlotDefinitionItemSet() + 36);
  v24 = *(v32 + 48);
  sub_1D5CDE3EC(a1 + v23, v17, sub_1D5B57CA0);
  sub_1D5CDE3EC(a2 + v23, &v17[v24], sub_1D5B57CA0);
  v25 = *(v5 + 48);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v24], 1, v4) == 1)
    {
      sub_1D5CDE60C(v17, sub_1D5B57CA0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_1D5CDE3EC(v17, v12, sub_1D5B57CA0);
  if (v25(&v17[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_24:
    sub_1D5CDE60C(v17, sub_1D5D5FB44);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v24], v4);
  sub_1D5B4C464(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
  v26 = sub_1D7261FBC();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_1D5CDE60C(v17, sub_1D5B57CA0);
  return (v26 & 1) != 0;
}

unint64_t sub_1D6B25A58()
{
  result = qword_1EDF025C0;
  if (!qword_1EDF025C0)
  {
    sub_1D5CDD744(255, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF025C0);
  }

  return result;
}

uint64_t sub_1D6B25AE8(void *a1)
{
  a1[1] = sub_1D5B4C464(&qword_1EDF22058, type metadata accessor for FormatSlotDefinitionItemSet);
  a1[2] = sub_1D5B4C464(&qword_1EDF0AF38, type metadata accessor for FormatSlotDefinitionItemSet);
  result = sub_1D5B4C464(&qword_1EC892080, type metadata accessor for FormatSlotDefinitionItemSet);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B25BA8()
{
  result = qword_1EC892088;
  if (!qword_1EC892088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892088);
  }

  return result;
}

void *sub_1D6B25BFC(uint64_t a1, uint64_t a2)
{
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60747E4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatSlotDefinitionItemSet();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 112);
  v92 = *(a1 + 96);
  v93 = v17;
  v94 = *(a1 + 128);
  v95 = *(a1 + 144);
  v18 = *(a1 + 48);
  v88 = *(a1 + 32);
  v89 = v18;
  v19 = *(a1 + 80);
  v90 = *(a1 + 64);
  v91 = v19;
  v20 = *(a1 + 16);
  v86 = *a1;
  v87 = v20;
  sub_1D5CDE3EC(a2, v11, sub_1D60747E4);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5CDE60C(v11, sub_1D60747E4);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v67 = v12;
    sub_1D5C4E9C4(v11, v16, type metadata accessor for FormatSlotDefinitionItemSet);
    v22 = MEMORY[0x1E69E6F90];
    sub_1D5B4BF00(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v64 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B4BF00(0, &qword_1EC880490, sub_1D5EA74B8, v22);
    sub_1D5EA74B8();
    v66 = v24;
    v25 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v71 = *(*(v24 - 8) + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7279960;
    *&v76 = sub_1D6B246AC(*(v16 + 1));

    sub_1D5F81CCC(&v76);
    v65 = v26;

    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v27 = sub_1D7261F3C();
    v29 = v28;

    sub_1D711F844(0x73646E694BLL, 0xE500000000000000, v27, v29, (v26 + v25));
    v30 = type metadata accessor for FormatInspectionItem(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v70 = v26 + v25;
    v73 = v30;
    v74 = v32;
    v72 = v31 + 56;
    (v32)(v26 + v25, 0, 1);
    LODWORD(v75[0]) = *v16;
    *&v76 = sub_1D72644BC();
    *(&v76 + 1) = v33;
    MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
    v34 = *(v16 + 1);
    v68 = inited;
    v69 = v7;
    if (v34 == 0x7FFFFFFF)
    {
      v35 = 0xE300000000000000;
      v36 = 7889229;
    }

    else
    {
      LODWORD(v75[0]) = v34;
      v36 = sub_1D72644BC();
      v35 = v37;
    }

    MEMORY[0x1DA6F9910](v36, v35);

    v39 = v70;
    v38 = v71;
    sub_1D711F844(0x65676E6152, 0xE500000000000000, v76, *(&v76 + 1), (v70 + v71));
    v40 = v73;
    v74(v39 + v38, 0, 1, v73);
    v41 = *(v16 + 2);
    v75[0] = *(v41 + 16);
    *&v76 = sub_1D72644BC();
    *(&v76 + 1) = v42;
    MEMORY[0x1DA6F9910](0x747265706F725020, 0xEB00000000736569);
    v43 = v76;
    v44 = sub_1D6976EE8(v41);
    v45 = sub_1D5F64170(v44);

    v46 = sub_1D5F62BFC(v45);

    v47 = sub_1D7073500(v46);

    sub_1D711AD20(0x69747265706F7250, 0xEA00000000007365, v47, v43, *(&v43 + 1), (v39 + 2 * v38));
    v74(v39 + 2 * v38, 0, 1, v40);
    sub_1D5B4BF00(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    v48 = swift_initStackObject();
    *(v48 + 16) = v64;
    v82 = v92;
    v83 = v93;
    v84 = v94;
    v85 = v95;
    v78 = v88;
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v76 = v86;
    v77 = v87;
    v49 = *(v16 + 4);
    v75[0] = *(v16 + 3);
    v75[1] = v49;
    sub_1D5D615EC(v75[0]);
    v50 = sub_1D6A63270(&v76, v75);
    sub_1D5CDE22C(v75[0]);
    *(v48 + 56) = &type metadata for FormatInspection;
    *(v48 + 64) = &off_1F51E3FD0;
    *(v48 + 32) = v50;
    v51 = sub_1D5F62BFC(v48);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v48 + 32);
    v52 = sub_1D7073500(v51);

    sub_1D711AD20(0x7261696C69787541, 0xE900000000000079, v52, 0, 0, (v39 + 3 * v38));
    v74(v39 + 3 * v38, 0, 1, v73);
    v53 = v69;
    sub_1D5CDE3EC(&v16[*(v67 + 36)], v69, sub_1D5B57CA0);
    v54 = sub_1D725B76C();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_1D5CDE60C(v53, sub_1D5B57CA0);
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    else
    {
      v56 = sub_1D725B75C();
      v57 = v58;
      (*(v55 + 8))(v53, v54);
    }

    v59 = (v70 + 4 * v71);
    sub_1D711F844(0xD000000000000011, 0x80000001D73E6420, v56, v57, v59);
    v74(v59, 0, 1, v73);
    sub_1D6795150(0x746553206D657449, 0xE800000000000000, 0, 0, v65, &v76);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v60 = v68;
    *(v68 + 56) = &type metadata for FormatInspectionGroup;
    *(v60 + 64) = &off_1F518B2C0;
    v61 = swift_allocObject();
    *(v60 + 32) = v61;
    *(v61 + 48) = v78;
    v62 = v77;
    *(v61 + 16) = v76;
    *(v61 + 32) = v62;
    v63 = sub_1D7073500(v60);
    swift_setDeallocating();
    sub_1D5CDE60C(v60 + 32, sub_1D5E4F358);
    sub_1D5CDE60C(v16, type metadata accessor for FormatSlotDefinitionItemSet);
    return v63;
  }
}

uint64_t sub_1D6B26530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646E696BLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xE900000000000079 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D6B26744()
{
  sub_1D6B26C0C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7323CA0;
  v1 = *MEMORY[0x1E69DE0C0];
  v2 = *MEMORY[0x1E69DE100];
  *(v0 + 32) = *MEMORY[0x1E69DE0C0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69DE0F8];
  v4 = *MEMORY[0x1E69DE230];
  *(v0 + 48) = *MEMORY[0x1E69DE0F8];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69DE238];
  v6 = *MEMORY[0x1E69DE128];
  *(v0 + 64) = *MEMORY[0x1E69DE238];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69DE0B0];
  v8 = *MEMORY[0x1E69DE170];
  *(v0 + 80) = *MEMORY[0x1E69DE0B0];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69DE198];
  v79 = *MEMORY[0x1E69DE130];
  v10 = *MEMORY[0x1E69DE130];
  *(v0 + 96) = *MEMORY[0x1E69DE198];
  *(v0 + 104) = v10;
  v76 = *MEMORY[0x1E69DE180];
  v82 = *MEMORY[0x1E69DE158];
  v11 = *MEMORY[0x1E69DE158];
  *(v0 + 112) = *MEMORY[0x1E69DE180];
  *(v0 + 120) = v11;
  v12 = *MEMORY[0x1E69DE168];
  v81 = *MEMORY[0x1E69DE0D8];
  v13 = *MEMORY[0x1E69DE0D8];
  *(v0 + 128) = *MEMORY[0x1E69DE168];
  *(v0 + 136) = v13;
  v77 = *MEMORY[0x1E69DE178];
  v85 = *MEMORY[0x1E69DE0F0];
  v14 = *MEMORY[0x1E69DE0F0];
  *(v0 + 144) = *MEMORY[0x1E69DE178];
  *(v0 + 152) = v14;
  v80 = *MEMORY[0x1E69DE228];
  v88 = *MEMORY[0x1E69DE1D0];
  v15 = *MEMORY[0x1E69DE1D0];
  *(v0 + 160) = *MEMORY[0x1E69DE228];
  *(v0 + 168) = v15;
  v78 = *MEMORY[0x1E69DE108];
  v87 = *MEMORY[0x1E69DE188];
  v16 = *MEMORY[0x1E69DE188];
  *(v0 + 176) = *MEMORY[0x1E69DE108];
  *(v0 + 184) = v16;
  v83 = *MEMORY[0x1E69DE1A0];
  v91 = *MEMORY[0x1E69DE208];
  v17 = *MEMORY[0x1E69DE208];
  *(v0 + 192) = *MEMORY[0x1E69DE1A0];
  *(v0 + 200) = v17;
  v86 = *MEMORY[0x1E69DE1B8];
  v94 = *MEMORY[0x1E69DE1C8];
  v18 = *MEMORY[0x1E69DE1C8];
  *(v0 + 208) = *MEMORY[0x1E69DE1B8];
  *(v0 + 216) = v18;
  v84 = *MEMORY[0x1E69DE1C0];
  v93 = *MEMORY[0x1E69DE1E0];
  v19 = *MEMORY[0x1E69DE1E0];
  *(v0 + 224) = *MEMORY[0x1E69DE1C0];
  *(v0 + 232) = v19;
  v89 = *MEMORY[0x1E69DE1E8];
  v97 = *MEMORY[0x1E69DE1D8];
  v20 = *MEMORY[0x1E69DE1D8];
  *(v0 + 240) = *MEMORY[0x1E69DE1E8];
  *(v0 + 248) = v20;
  v92 = *MEMORY[0x1E69DE220];
  v21 = *MEMORY[0x1E69DE1B0];
  v100 = *MEMORY[0x1E69DE1B0];
  *(v0 + 256) = *MEMORY[0x1E69DE220];
  *(v0 + 264) = v21;
  v90 = *MEMORY[0x1E69DE140];
  v99 = *MEMORY[0x1E69DE138];
  v22 = *MEMORY[0x1E69DE138];
  *(v0 + 272) = *MEMORY[0x1E69DE140];
  *(v0 + 280) = v22;
  v95 = *MEMORY[0x1E69DE118];
  v23 = *MEMORY[0x1E69DE110];
  v103 = *MEMORY[0x1E69DE110];
  *(v0 + 288) = *MEMORY[0x1E69DE118];
  *(v0 + 296) = v23;
  v98 = *MEMORY[0x1E69DE200];
  v24 = *MEMORY[0x1E69DE1F8];
  v106 = *MEMORY[0x1E69DE1F8];
  *(v0 + 304) = *MEMORY[0x1E69DE200];
  *(v0 + 312) = v24;
  v96 = *MEMORY[0x1E69DE210];
  v25 = *MEMORY[0x1E69DE1F0];
  v105 = *MEMORY[0x1E69DE1F0];
  *(v0 + 320) = *MEMORY[0x1E69DE210];
  *(v0 + 328) = v25;
  v101 = *MEMORY[0x1E69DE0C8];
  v26 = *MEMORY[0x1E69DE240];
  v108 = *MEMORY[0x1E69DE240];
  *(v0 + 336) = *MEMORY[0x1E69DE0C8];
  *(v0 + 344) = v26;
  v104 = *MEMORY[0x1E69DE0B8];
  v27 = *MEMORY[0x1E69DE218];
  v110 = *MEMORY[0x1E69DE218];
  *(v0 + 352) = *MEMORY[0x1E69DE0B8];
  *(v0 + 360) = v27;
  v102 = *MEMORY[0x1E69DE1A8];
  v109 = *MEMORY[0x1E69DE120];
  *(v0 + 368) = *MEMORY[0x1E69DE1A8];
  *(v0 + 376) = v109;
  v107 = *MEMORY[0x1E69DE148];
  v28 = *MEMORY[0x1E69DE0D0];
  v111 = *MEMORY[0x1E69DE0D0];
  *(v0 + 384) = *MEMORY[0x1E69DE148];
  *(v0 + 392) = v28;
  v29 = v1;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v79;
  v39 = v76;
  v40 = v82;
  v41 = v12;
  v42 = v81;
  v43 = v77;
  v44 = v85;
  v45 = v80;
  v46 = v88;
  v47 = v78;
  v48 = v87;
  v49 = v83;
  v50 = v91;
  v51 = v86;
  v52 = v94;
  v53 = v84;
  v54 = v93;
  v55 = v89;
  v56 = v97;
  v57 = v92;
  v58 = v100;
  v59 = v90;
  v60 = v99;
  v61 = v95;
  v62 = v103;
  v63 = v98;
  v64 = v106;
  v65 = v96;
  v66 = v105;
  v67 = v101;
  v68 = v108;
  v69 = v104;
  v70 = v110;
  v71 = v102;
  v72 = v109;
  v73 = v107;
  v74 = v111;
  return v0;
}

void sub_1D6B26C0C()
{
  if (!qword_1EDF01D10)
  {
    type metadata accessor for Identifier(255);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01D10);
    }
  }
}

uint64_t sub_1D6B26C9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 16);
  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v7 = -63;
    }

    else
    {
      v7 = -31;
    }

    if (v4 == 3)
    {
      v8 = -32;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = -96;
    }

    else
    {
      v9 = -64;
    }

    if (*(result + 16))
    {
      v6 = v9;
    }

    else
    {
      v6 = 0x80;
    }

    if (*(result + 16) > 2u)
    {
      v6 = v8;
    }
  }

  else
  {
    v5 = *(result + 8);
    if (*(result + 16) <= 8u)
    {
      if (v4 == 6)
      {
        v18 = *(v3 + 16);
        v19 = MEMORY[0x1E69E7CC0];
        if (v18)
        {
          v45 = *(result + 8);
          v47 = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v18, 0);
          v19 = v47;
          v20 = (v3 + 40);
          do
          {
            v22 = *(v20 - 1);
            v21 = *v20;
            v24 = *(v47 + 16);
            v23 = *(v47 + 24);

            if (v24 >= v23 >> 1)
            {
              sub_1D5BFC364((v23 > 1), v24 + 1, 1);
            }

            *(v47 + 16) = v24 + 1;
            v25 = v47 + 16 * v24;
            *(v25 + 32) = v22;
            *(v25 + 40) = v21;
            v20 += 2;
            --v18;
          }

          while (v18);
          v5 = v45;
        }

        v42 = sub_1D5B86020(v19);

        result = sub_1D62B7514(v3, v5, 6u);
        v6 = 64;
        v3 = v42;
      }

      else if (v4 == 7)
      {
        v10 = *(v3 + 16);
        v11 = MEMORY[0x1E69E7CC0];
        if (v10)
        {
          v44 = *(result + 8);
          v46 = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v10, 0);
          v11 = v46;
          v12 = (v3 + 40);
          do
          {
            v14 = *(v12 - 1);
            v13 = *v12;
            v16 = *(v46 + 16);
            v15 = *(v46 + 24);

            if (v16 >= v15 >> 1)
            {
              sub_1D5BFC364((v15 > 1), v16 + 1, 1);
            }

            *(v46 + 16) = v16 + 1;
            v17 = v46 + 16 * v16;
            *(v17 + 32) = v14;
            *(v17 + 40) = v13;
            v12 += 2;
            --v10;
          }

          while (v10);
          v5 = v44;
        }

        v43 = sub_1D5B86020(v11);

        result = sub_1D62B7514(v3, v5, 7u);
        v6 = 96;
        v3 = v43;
      }

      else
      {
        v26 = *(v3 + 16);
        v27 = MEMORY[0x1E69E7CC0];
        if (v26)
        {
          v48 = MEMORY[0x1E69E7CC0];
          sub_1D6999E0C(0, v26, 0);
          v27 = v48;
          v28 = (v3 + 32);
          do
          {
            v29 = *v28++;
            v30 = qword_1D7323F10[v29];
            v32 = *(v48 + 16);
            v31 = *(v48 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1D6999E0C((v31 > 1), v32 + 1, 1);
            }

            *(v48 + 16) = v32 + 1;
            *(v48 + 8 * v32 + 32) = v30;
            --v26;
          }

          while (v26);
        }

        v33 = sub_1D62DCD64(v27);

        result = sub_1D62B7514(v3, v5, 8u);
        v6 = 0;
        v3 = v33;
      }
    }

    else if (v4 - 10 >= 3)
    {
      v34 = *(v3 + 16);
      v35 = MEMORY[0x1E69E7CC0];
      if (v34)
      {
        v49 = MEMORY[0x1E69E7CC0];
        sub_1D6999E0C(0, v34, 0);
        v35 = v49;
        v36 = (v3 + 32);
        do
        {
          v37 = *v36++;
          v38 = qword_1D7323F10[v37];
          v40 = *(v49 + 16);
          v39 = *(v49 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D6999E0C((v39 > 1), v40 + 1, 1);
          }

          *(v49 + 16) = v40 + 1;
          *(v49 + 8 * v40 + 32) = v38;
          --v34;
        }

        while (v34);
      }

      v41 = sub_1D62DCD64(v35);

      result = sub_1D62B7514(v3, v5, 9u);
      v6 = 32;
      v3 = v41;
    }

    else
    {
      result = sub_1D62B7514(*result, v5, v4);
      v3 = 0;
      v6 = -2;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v6;
  return result;
}

BOOL _s8NewsFeed22FormatGroupRequirementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      sub_1D62B7514(*a1, v2, 1u);
      sub_1D62B7514(v6, v5, 1u);
      return *&v3 == *&v6;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 2u);
      v10 = v6;
      v11 = v5;
      v12 = 2;
      goto LABEL_26;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 3u);
      v10 = v6;
      v11 = v5;
      v12 = 3;
      goto LABEL_26;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 4u);
      v10 = v6;
      v11 = v5;
      v12 = 4;
      goto LABEL_26;
    case 5u:
      if (v7 != 5)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 5u);
      v10 = v6;
      v11 = v5;
      v12 = 5;
      goto LABEL_26;
    case 6u:
      v21 = *a1;
      if (v7 != 6)
      {
        goto LABEL_34;
      }

      v13 = sub_1D6709340(v21, *a2);
      sub_1D66F4990(v6, v5, 6u);
      sub_1D66F4990(v3, v2, 6u);
      sub_1D62B7514(v3, v2, 6u);
      v14 = v6;
      v15 = v5;
      v16 = 6;
      goto LABEL_33;
    case 7u:
      v20 = *a1;
      if (v7 != 7)
      {
        goto LABEL_34;
      }

      v13 = sub_1D6709340(v20, *a2);
      sub_1D66F4990(v6, v5, 7u);
      sub_1D66F4990(v3, v2, 7u);
      sub_1D62B7514(v3, v2, 7u);
      v14 = v6;
      v15 = v5;
      v16 = 7;
      goto LABEL_33;
    case 8u:
      if (v7 != 8)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, a2[1], 8u);
      sub_1D66F4990(v3, v2, 8u);
      v13 = sub_1D633FFDC(v3, v6);
      sub_1D62B7514(v3, v2, 8u);
      v14 = v6;
      v15 = v5;
      v16 = 8;
      goto LABEL_33;
    case 9u:
      if (v7 != 9)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, a2[1], 9u);
      sub_1D66F4990(v3, v2, 9u);
      v13 = sub_1D633FFDC(v3, v6);
      sub_1D62B7514(v3, v2, 9u);
      v14 = v6;
      v15 = v5;
      v16 = 9;
      goto LABEL_33;
    case 0xAu:
      if (v7 != 10)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, a2[1], 0xAu);
      sub_1D66F4990(v3, v2, 0xAu);
      v13 = sub_1D6340114(v3, v6);
      sub_1D62B7514(v3, v2, 0xAu);
      v14 = v6;
      v15 = v5;
      v16 = 10;
      goto LABEL_33;
    case 0xBu:
      if (v7 != 11)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, a2[1], 0xBu);
      sub_1D66F4990(v3, v2, 0xBu);
      v13 = sub_1D6340114(v3, v6);
      sub_1D62B7514(v3, v2, 0xBu);
      v14 = v6;
      v15 = v5;
      v16 = 11;
LABEL_33:
      sub_1D62B7514(v14, v15, v16);
      return v13 & 1;
    case 0xCu:
      if (v7 == 12)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          result = 1;
        }

        else
        {
          v18 = sub_1D72646CC();
          sub_1D66F4990(v6, v5, 0xCu);
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          sub_1D62B7514(v6, v5, 0xCu);
          result = (v18 & 1) != 0;
        }
      }

      else
      {
LABEL_34:

LABEL_35:
        sub_1D66F4990(v6, v5, v7);
        sub_1D62B7514(v3, v2, v4);
        sub_1D62B7514(v6, v5, v7);
        result = 0;
      }

      break;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
LABEL_26:
      sub_1D62B7514(v10, v11, v12);
      result = v8 == v9;
      break;
  }

  return result;
}

unint64_t sub_1D6B27530(uint64_t a1)
{
  result = sub_1D6B27558();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B27558()
{
  result = qword_1EC892090;
  if (!qword_1EC892090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892090);
  }

  return result;
}

unint64_t sub_1D6B275AC(void *a1)
{
  a1[1] = sub_1D5C50A4C();
  a1[2] = sub_1D5C90FF0();
  result = sub_1D6B275E4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B275E4()
{
  result = qword_1EC892098;
  if (!qword_1EC892098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892098);
  }

  return result;
}

uint64_t sub_1D6B27644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6B2768C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

void sub_1D6B276E0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1D6AF4E6C, v8);
}

uint64_t type metadata accessor for DebugInspectViewController()
{
  result = qword_1EC892130;
  if (!qword_1EC892130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B27A60()
{
  result = type metadata accessor for DebugGroupLayoutKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugInspectViewResult();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D6B27B80()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v26 = *&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];

  v2 = sub_1D726203C();

  [v1 setTitle_];

  v3 = [v0 navigationItem];
  [v3 setLeftItemsSupplementBackButton_];

  v4 = [v0 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816C0;
  v6 = sub_1D726203C();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v10 = v0;
  v11 = [v9 initWithImage:v8 style:0 target:v10 action:sel_doTapToRadar];

  *(v5 + 32) = v11;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v12 = sub_1D726265C();

  [v4 setLeftBarButtonItems_];

  v13 = [v10 navigationItem];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D72816C0;
  v15 = sub_1D726203C();
  v16 = [v7 systemImageNamed_];

  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v16 style:2 target:v10 action:sel_doDismiss];

  *(v14 + 32) = v17;
  v18 = sub_1D726265C();

  [v13 setRightBarButtonItems_];

  v19 = [v10 view];
  if (v19)
  {
    v20 = v19;
    v21 = *&v10[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView];
    [v19 addSubview_];

    [v21 setDelegate_];
    [v21 setDataSource_];
    [v21 setAlwaysBounceVertical_];
    type metadata accessor for FeedItemTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for RequirementTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for KeyValueTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for LayoutTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for LoadingTableViewCell();
    sub_1D7262DAC();
    sub_1D5B5A498(0, &qword_1EC88DCB0);
    sub_1D7262DAC();
    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    v22 = *&v10[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController];
    [v22 setSearchResultsUpdater_];
    [v22 setHidesNavigationBarDuringPresentation_];
    [v22 setObscuresBackgroundDuringPresentation_];
    v23 = [v22 searchBar];
    v24 = sub_1D726203C();
    [v23 setPlaceholder_];

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D6332C30(v26, v25);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D6B280C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector;
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector);
    v5 = Strong;

    *&v5[v3] = sub_1D6C76CB4(v4, a1);

    v6 = [v5 navigationItem];
    [v6 setSearchController_];

    [*&v5[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView] reloadData];
  }
}

id sub_1D6B281F4()
{
  v1 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B33100(&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], v8, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768();

    v10 = 0;
LABEL_8:
    sub_1D6B33638(v8, type metadata accessor for GroupLayoutBindingContext);
    return v10;
  }

  sub_1D63327EC();
  v12 = &v8[*(v11 + 48)];
  v13 = *v12;
  v15 = *(v12 + 5);
  v14 = *(v12 + 6);
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory + 24];
  v66 = *(v12 + 8);
  v61 = *(v12 + 24);
  v17 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory], v16);
  v63 = v4;
  v18 = v17;
  v60 = v0;
  v62 = v1;
  type metadata accessor for DebugGroupLayoutKey();
  sub_1D7259E8C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1D7259E9C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v64 = sub_1D7259EBC();
  v65 = *v18;
  sub_1D6B33260(0, &qword_1EC88EFC8, type metadata accessor for DebugGroupDirectionalLayoutAttributes, MEMORY[0x1E69E6F90]);
  v35 = (type metadata accessor for DebugGroupDirectionalLayoutAttributes() - 8);
  v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  v38 = v37 + v36;
  v39 = v35[7];
  v40 = sub_1D725A5BC();
  (*(*(v40 - 8) + 56))(v37 + v36 + v39, 1, 1, v40);
  *v38 = v13;
  *(v38 + 24) = v61;
  *(v38 + 8) = v66;
  *(v38 + 40) = v15;
  *(v38 + 48) = v14;
  memset(v68, 0, sizeof(v68));
  v70 = 0;
  v69 = 2;
  type metadata accessor for FormatLayoutResizingProvider();
  v41 = swift_allocObject();
  *&v67.a = MEMORY[0x1E69E7CC0];
  sub_1D5B4A2C4(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  v42 = MEMORY[0x1E69D6388];
  sub_1D6B33260(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D6B332C4(&qword_1EDF1B5C0, &qword_1EDF1B5D0, v42);

  *&v66 = v14;

  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v43 = sub_1D725A7AC();
  v44 = MEMORY[0x1E69E7CC8];
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v45 = v64;
  v46 = sub_1D705E828(v37, MEMORY[0x1E69E7CC0], v68, v64, v41, nullsub_1, 0, v20, v22, v24, v26, v28, v30, v32, v34);

  swift_setDeallocating();
  sub_1D6B33638(v37 + v36, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
  swift_deallocClassInstance();
  v10 = v46;
  [v10 setUserInteractionEnabled_];
  [v10 bounds];
  if (CGRectGetWidth(v71) <= 0.0)
  {

    goto LABEL_7;
  }

  result = [v60 view];
  if (result)
  {
    v48 = result;

    [v48 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v72.origin.x = v50;
    v72.origin.y = v52;
    v72.size.width = v54;
    v72.size.height = v56;
    Width = CGRectGetWidth(v72);
    [v10 bounds];
    v58 = fmin(Width / CGRectGetWidth(v73), 1.0);
    CGAffineTransformMakeScale(&v67, v58, v58);
    [v10 setTransform_];
LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D6B289C0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816C0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v4 sizeToFit];
  [v4 startAnimating];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  *(v3 + 32) = v5;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v6 = sub_1D726265C();

  [v2 setLeftBarButtonItems_];

  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v7 = sub_1D726308C();
  *(swift_allocObject() + 16) = v1;
  v8 = v1;
  sub_1D725BAAC();

  v9 = sub_1D726308C();
  sub_1D725BADC();
}

void sub_1D6B28C2C(_OWORD *a1, char *a2, uint64_t a3)
{
  v81 = a3;
  v79 = sub_1D725D52C();
  v83 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v5);
  v70 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D725D7FC();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D6B33260(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v82 = &v69 - v13;
  sub_1D6B33260(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v78 = &v69 - v16;
  v17 = a1[3];
  v91 = a1[2];
  v92 = v17;
  v93 = a1[4];
  v18 = a1[1];
  *v90 = *a1;
  *&v90[16] = v18;
  v19 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  swift_beginAccess();
  v20 = v19[7];
  swift_beginAccess();
  v21 = v19[8];
  swift_beginAccess();
  v23 = v19[9];
  v22 = v19[10];
  v95 = *&v90[8];
  v94 = *v90;
  v96 = *&v90[24];
  v97 = v91;
  v98 = v20;
  v99 = v21;
  v100 = v22;
  v101 = v23;
  v102 = *(&v93 + 1);

  sub_1D6B334D8(&v94);
  v24 = [a2 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D72816C0;
  v26 = sub_1D726203C();
  v27 = [objc_opt_self() systemImageNamed_];

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v27 style:0 target:a2 action:sel_doTapToRadar];

  *(v25 + 32) = v28;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v29 = sub_1D726265C();

  [v24 setLeftBarButtonItems_];

  v30 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
  v72 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter + 8];
  v73 = v30;
  sub_1D725F82C();
  v74 = sub_1D725F7DC();
  v31 = sub_1D725D19C();
  (*(*(v31 - 8) + 56))(v82, 1, 1, v31);
  sub_1D6B33260(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
  v32 = v83;
  v33 = *(v83 + 72);
  v34 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v35 = swift_allocObject();
  v87 = xmmword_1D7273AE0;
  *(v35 + 16) = xmmword_1D7273AE0;
  v36 = swift_allocObject();
  ObjectType = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = v87;
  v38 = swift_allocObject();
  v38[5] = &type metadata for DebugInspection;
  v38[6] = sub_1D6084C1C();
  v39 = swift_allocObject();
  v38[2] = v39;
  v40 = v92;
  v39[3] = v91;
  v39[4] = v40;
  v39[5] = v93;
  v41 = *&v90[16];
  v39[1] = *v90;
  v39[2] = v41;
  v38[7] = 0xD000000000000015;
  v38[8] = 0x80000001D73E6690;
  *(v37 + v34) = v38;
  v42 = *(v32 + 104);
  v43 = v79;
  v42((v37 + v34), *MEMORY[0x1E69D7950], v79);
  v36[2] = v37;
  v36[3] = 0xD000000000000015;
  v36[4] = 0x80000001D73E6690;
  *(v35 + v34) = v36;
  v44 = *MEMORY[0x1E69D7960];
  v71 = v35;
  v86 = v32 + 104;
  *&v87 = v34;
  v45 = v43;
  v85 = v42;
  v42((v35 + v34), v44, v43);
  v46 = v81;
  v47 = *(v81 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext);
  sub_1D6B3357C(v90, v89);
  v48 = [v47 filePathsForDebugAttachments];
  v49 = v46;
  v50 = v83;
  if (!v48)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v51 = v48;
  v52 = sub_1D726267C();

  v53 = *(v52 + 16);
  v54 = v80;
  if (v53)
  {
    v89[0] = MEMORY[0x1E69E7CC0];
    sub_1D6999E2C(0, v53, 0);
    v55 = v52;
    v56 = v89[0];
    v84 = *MEMORY[0x1E69D7968];
    v83 = v50 + 32;
    v69 = v55;
    v57 = (v55 + 40);
    v58 = v70;
    do
    {
      v60 = *(v57 - 1);
      v59 = *v57;
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v61 + 24) = v59;
      *v58 = v61;
      v85(v58, v84, v45);
      v89[0] = v56;
      v63 = *(v56 + 16);
      v62 = *(v56 + 24);

      if (v63 >= v62 >> 1)
      {
        sub_1D6999E2C(v62 > 1, v63 + 1, 1);
        v56 = v89[0];
      }

      *(v56 + 16) = v63 + 1;
      (*v83)(v56 + v87 + v63 * ObjectType, v58, v45);
      v57 += 2;
      --v53;
    }

    while (v53);

    v54 = v80;
    v49 = v81;
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  ObjectType = swift_getObjectType();
  v88 = v71;
  sub_1D6988494(v56);
  v64 = *(v49 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider + 24);
  v65 = *(v49 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider), v64);
  v66 = (*(v65 + 8))(v64, v65);
  sub_1D6988494(v66);
  (*(v75 + 104))(v77, *MEMORY[0x1E69D79C8], v76);
  v67 = v78;
  sub_1D725F61C();
  v68 = sub_1D725F62C();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_1D725D9CC();
  if (v54)
  {

    sub_1D6B335D8(v67, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D6B33260);
  }

  else
  {
    sub_1D6B335D8(v67, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D6B33260);
  }
}

void sub_1D6B295F4(uint64_t a1, void *a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B678C8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1D725C30C();

  sub_1D7263F9C();
  v3 = sub_1D726203C();
  v4 = sub_1D726203C();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_1D726203C();
  v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

  [v5 addAction_];
  [a2 presentViewController:v5 animated:1 completion:0];
  v8 = [a2 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D72816C0;
  v10 = sub_1D726203C();
  v11 = [objc_opt_self() systemImageNamed_];

  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v11 style:0 target:a2 action:sel_doTapToRadar];

    *(v9 + 32) = v12;
    sub_1D5B5A498(0, &qword_1EDF04590);
    v13 = sub_1D726265C();

    [v8 setLeftBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D6B29AEC(char *a1)
{
  v482 = a1;
  sub_1D5C2AB28(0);
  v477 = *(v2 - 1);
  v478 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v461 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v474 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v473 = &v461 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D6B33260(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v479 = &v461 - v12;
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], v9);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v461 - v15;
  v472 = sub_1D7261ACC();
  *&v471 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472, v17);
  v470 = &v461 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DebugInspectViewItem();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v461 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v483 = &v461 - v26;
  v480 = v1;
  v27 = *&v1[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  v28 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v481 = v27;
  v29 = *(v27 + v28);

  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_176;
  }

  if (result >= *(v29 + 16))
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v475 = v6;
  v476 = v5;
  v31 = *(v29 + 48 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (result < *(v31 + 16))
  {
    v32 = v483;
    sub_1D6B33100(v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * result, v483, type metadata accessor for DebugInspectViewItem);

    sub_1D6B33100(v32, v23, type metadata accessor for DebugInspectViewItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D6B32F14();
          v117 = &v23[*(v116 + 48)];
          v118 = v16;
          sub_1D6B32FB0(v117, v16);
          type metadata accessor for SubtitleTableViewCell();
          v100 = sub_1D7262D8C();
          v119 = [v100 textLabel];
          if (v119)
          {
            v120 = v119;
            v121 = sub_1D726203C();

            [v120 setText_];
          }

          else
          {
          }

          v169 = [v100 textLabel];
          if (v169)
          {
            v170 = v169;
            v171 = [objc_opt_self() systemFontOfSize_];
            [v170 setFont_];
          }

          v172 = [v100 detailTextLabel];
          if (v172)
          {
            v173 = v172;
            v174 = sub_1D725F88C();
            (*(*(v174 - 8) + 48))(v118, 1, v174);
            v175 = sub_1D726203C();

            [v173 setText_];
          }

          v176 = [v100 detailTextLabel];
          if (v176)
          {
            v177 = v176;
            v178 = [objc_opt_self() secondaryLabelColor];
            [v177 setTextColor_];
          }

          v179 = [v100 detailTextLabel];
          if (v179)
          {
            v180 = v179;
            v181 = [objc_opt_self() systemFontOfSize_];
            [v180 setFont_];
          }

          v182 = [v100 detailTextLabel];
          if (v182)
          {
            v183 = v182;
            [v182 setNumberOfLines_];
          }

          v184 = sub_1D725F88C();
          v185 = *(*(v184 - 8) + 48);
          if (v185(v118, 1, v184) == 1)
          {
            v186 = 0;
          }

          else
          {
            v186 = 3;
          }

          [v100 setSelectionStyle_];
          v187 = [v100 contentView];
          v188 = v185(v118, 1, v184);
          v189 = 1.0;
          if (v188 == 1)
          {
            v189 = 0.5;
          }

          [v187 setAlpha_];

          [v100 setAccessoryType_];
          sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);
          sub_1D6B335D8(v118, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
          return v100;
        }

        v34 = *(v23 + 6);
        v478 = *(v23 + 5);
        v479 = v34;
        v35 = v23[56];
        sub_1D5B63F14(v23, &v489);
        type metadata accessor for LayoutTableViewCell();
        v36 = sub_1D7262D8C();
        v37 = [v36 textLabel];
        if (v37)
        {
          v38 = v37;
          __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
          _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
          v39 = sub_1D726203C();

          [v38 setText_];
        }

        v40 = [v36 imageView];
        if (v40)
        {
          v41 = v40;
          [v40 setImage_];
        }

        v42 = [v36 contentView];
        [v42 setAlpha_];

        v43 = &v480[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
        __swift_project_boxed_opaque_existential_1(&v480[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 16], *&v480[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 40]);
        v44 = sub_1D725AA4C();
        v46 = v45;
        __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
        if (v44 == sub_1D725AA4C() && v46 == v47)
        {

          v48 = 3;
        }

        else
        {
          v129 = sub_1D72646CC();

          if (v129)
          {
            v48 = 3;
          }

          else
          {
            v48 = 1;
          }
        }

        [v36 setAccessoryType_];
        v130 = objc_opt_self();
        v100 = v36;
        v131 = [v130 systemBlueColor];
        [v100 setTintColor_];

        __swift_project_boxed_opaque_existential_1(v43 + 2, *(v43 + 5));
        v132 = sub_1D725AA4C();
        v134 = v133;
        __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
        if (v132 == sub_1D725AA4C() && v134 == v135)
        {

          v136 = &selRef_systemBlueColor;
        }

        else
        {
          v137 = sub_1D72646CC();

          v136 = &selRef_lightGrayColor;
          if (v137)
          {
            v136 = &selRef_systemBlueColor;
          }
        }

        v138 = [v130 *v136];
        if (v35)
        {
          if (v35 == 1)
          {
            v139 = [v100 detailTextLabel];
            v140 = v481;
            v141 = v478;
            if (v139)
            {
              v142 = v139;
              *&v485 = 0;
              *(&v485 + 1) = 0xE000000000000000;
              v495[0] = v478;
              sub_1D5B49474(0, &qword_1EDF3C5D0);
              sub_1D7263F9C();
              v143 = sub_1D726203C();

              [v142 setText_];
            }

            v144 = [v100 imageView];
            if (v144)
            {
              v145 = v144;
              v146 = *(v140 + 48);
              v147 = sub_1D726366C();

              [v145 setImage_];
              v148 = v141;
              v149 = v479;
              v150 = 1;
LABEL_92:
              sub_1D6B330D8(v148, v149, v150);

LABEL_135:
              sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);
              goto LABEL_136;
            }

            v304 = v141;
            v305 = v479;
            v306 = 1;
          }

          else
          {
            [v100 setAccessoryType_];
            [v100 setSelectionStyle_];
            v206 = [v100 contentView];
            [v206 setAlpha_];

            v207 = [v100 detailTextLabel];
            v208 = v478;
            if (v207)
            {
              v209 = v207;
              v210 = sub_1D726203C();
              [v209 setText_];
            }

            v211 = [v100 imageView];
            if (v211)
            {
              v212 = v211;
              v213 = *(v481 + 48);
              v214 = sub_1D726366C();

              [v212 setImage_];
              v148 = v208;
              v149 = v479;
              v150 = 2;
              goto LABEL_92;
            }

            v304 = v208;
            v305 = v479;
            v306 = 2;
          }

          sub_1D6B330D8(v304, v305, v306);
          goto LABEL_135;
        }

        v190 = [v100 detailTextLabel];
        if (v190)
        {
          v191 = v190;
          v192 = sub_1D726203C();
          [v191 setText_];
        }

        v193 = swift_allocObject();
        v482 = v100;
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v489, &v485);
        sub_1D5B68374(&v485, v495);
        v194 = swift_allocObject();
        *(v194 + 16) = v193;
        sub_1D5B63F14(&v485, v194 + 24);
        __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));

        v195 = sub_1D725AA4C();
        v197 = v196;
        v198 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages;
        v199 = v481;
        swift_beginAccess();
        v200 = *(v199 + v198);
        if (*(v200 + 16))
        {
          v201 = sub_1D5B69D90(v195, v197);
          v203 = v202;

          if (v203)
          {
            v204 = *(*(v200 + 56) + 8 * v201);
            swift_endAccess();
            v205 = v204;
            sub_1D6B2D74C(v204, v193, v495);

            v100 = v482;
            sub_1D6B330D8(v478, v479, 0);

LABEL_132:
            sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);
            __swift_destroy_boxed_opaque_existential_1(v495);

LABEL_136:
            __swift_destroy_boxed_opaque_existential_1(&v489);
            return v100;
          }
        }

        else
        {
        }

        swift_endAccess();
        sub_1D5B5A498(0, &qword_1EDF1AA30);
        v308 = v470;
        v307 = v471;
        v309 = v472;
        (*(v471 + 104))(v470, *MEMORY[0x1E69E7F88], v472);
        v310 = sub_1D72630CC();
        (*(v307 + 8))(v308, v309);
        sub_1D5B68374(&v489, v494);
        v311 = swift_allocObject();
        sub_1D5B63F14(v494, v311 + 16);
        type metadata accessor for DebugInspectViewDataSource();
        sub_1D725BDBC();

        *(swift_allocObject() + 16) = v138;
        v480 = v138;
        v312 = sub_1D725B92C();
        sub_1D5B5A498(0, &qword_1EDF1A690);
        sub_1D725BA8C();

        v313 = sub_1D726308C();
        sub_1D5B68374(&v489, v494);
        v314 = swift_allocObject();
        sub_1D5B63F14(v494, v314 + 16);
        *(v314 + 56) = sub_1D6B333C4;
        *(v314 + 64) = v194;

        sub_1D725BAAC();

        v315 = sub_1D725B92C();
        sub_1D725BACC();

        v205 = v480;
        v100 = v482;

        sub_1D6B330D8(v478, v479, 0);
        goto LABEL_132;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v468 = *v23;
        v481 = *(v23 + 2);
        type metadata accessor for SubtitleTableViewCell();
        v482 = sub_1D7262D8C();
        [v482 setAccessoryType_];
        v480 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
        sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        v55 = v54;
        inited = swift_initStackObject();
        v471 = xmmword_1D7270C10;
        *(inited + 16) = xmmword_1D7270C10;
        v57 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        v58 = objc_opt_self();
        v467 = v57;
        v59 = [v58 systemFontOfSize_];
        v60 = sub_1D5B5A498(0, &qword_1EDF1A720);
        *(inited + 40) = v59;
        v61 = *MEMORY[0x1E69DB650];
        v472 = v60;
        *(inited + 64) = v60;
        *(inited + 72) = v61;
        v62 = objc_opt_self();
        v466 = v61;
        v470 = v62;
        v63 = [v62 labelColor];
        v64 = sub_1D5B5A498(0, qword_1EDF1A6A0);
        *(inited + 104) = v64;
        *(inited + 80) = v63;
        sub_1D5C09CEC(inited);
        swift_setDeallocating();
        sub_1D5C09DD4();
        v469 = v65;
        swift_arrayDestroy();
        v66 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v67 = sub_1D726203C();

        type metadata accessor for Key(0);
        v69 = v68;
        v468 = sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
        v70 = sub_1D7261D2C();
        v71 = v55;

        v72 = [v66 initWithString:v67 attributes:v70];

        [v480 appendAttributedString_];
        v73 = v479;
        sub_1D725BD0C();
        v74 = sub_1D725B17C();
        LODWORD(v67) = (*(*(v74 - 8) + 48))(v73, 1, v74);
        sub_1D6B335D8(v73, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6B33260);
        if (v67 != 1)
        {
          v75 = swift_allocObject();
          *(v75 + 16) = v471;
          v76 = v467;
          *(v75 + 32) = v467;
          v77 = *MEMORY[0x1E69DB980];
          v78 = v76;
          *(v75 + 40) = [v58 systemFontOfSize:10.0 weight:v77];
          v79 = v466;
          *(v75 + 64) = v472;
          *(v75 + 72) = v79;
          v80 = v79;
          v81 = [v470 systemPinkColor];
          *(v75 + 104) = v64;
          *(v75 + 80) = v81;
          sub_1D5C09CEC(v75);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v82 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v83 = sub_1D726203C();
          v84 = sub_1D7261D2C();

          v85 = [v82 initWithString:v83 attributes:v84];

          [v480 appendAttributedString_];
        }

        v479 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
        v86 = v69;
        v87 = v481;
        v88 = *(v481 + 24);
        *&v489 = *(v481 + 16);
        *(&v489 + 1) = v88;

        MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
        v89 = sub_1D725BC9C();
        MEMORY[0x1DA6F9910](v89);

        v465 = v71;
        v90 = swift_allocObject();
        *(v90 + 16) = v471;
        v91 = v466;
        *(v90 + 32) = v466;
        v463 = v91;
        *(v90 + 40) = [v470 secondaryLabelColor];
        v464 = v64;
        v92 = v467;
        *(v90 + 64) = v64;
        *(v90 + 72) = v92;
        v462 = v92;
        v467 = v58;
        v93 = [v58 systemFontOfSize_];
        *(v90 + 104) = v472;
        *(v90 + 80) = v93;
        sub_1D5C09CEC(v90);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v94 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v95 = sub_1D726203C();

        v466 = v86;
        v96 = sub_1D7261D2C();

        v97 = [v94 initWithString:v95 attributes:v96];

        [v479 appendAttributedString_];
        v98 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
        swift_beginAccess();
        v99 = *(v87 + v98);
        v100 = v482;
        if (*(v99 + 16))
        {
          v101 = v476;
          sub_1D6B33100(v99 + ((*(v477 + 80) + 32) & ~*(v477 + 80)), v476, sub_1D5C2AB28);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D6B33638(v101, sub_1D5C2AB28);
          }

          else
          {
            sub_1D5B55504();
            v282 = *(v281 + 48);
            v283 = v473;
            v284 = v474;
            (*(v474 + 32))(v473, v101, v475);
            sub_1D6B33638(v101 + v282, type metadata accessor for FormatMetadata);
            v285 = sub_1D72583DC();
            *&v485 = 10;
            *(&v485 + 1) = 0xE100000000000000;
            MEMORY[0x1DA6F9910](v285);

            v286 = swift_allocObject();
            *(v286 + 16) = v471;
            v287 = v463;
            *(v286 + 32) = v463;
            v288 = v287;
            *(v286 + 40) = [v470 systemBlueColor];
            v289 = v462;
            *(v286 + 64) = v464;
            *(v286 + 72) = v289;
            v290 = v289;
            v291 = [v467 systemFontOfSize_];
            *(v286 + 104) = v472;
            *(v286 + 80) = v291;
            sub_1D5C09CEC(v286);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v292 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v293 = sub_1D726203C();

            v294 = sub_1D7261D2C();

            v295 = [v292 initWithString:v293 attributes:v294];

            [v479 appendAttributedString_];
            [v100 setAccessoryType_];
            (*(v284 + 8))(v283, v475);
          }
        }

        v296 = [v100 textLabel];
        v297 = v480;
        if (v296)
        {
          v298 = v296;
          [v296 setAttributedText_];
        }

        v299 = [v100 detailTextLabel];
        v300 = v479;
        if (v299)
        {
          v301 = v299;
          [v299 setAttributedText_];
        }

        v302 = [v100 detailTextLabel];
        if (v302)
        {
          v303 = v302;
          [v302 setNumberOfLines_];
        }

        [v100 setSelectionStyle_];
      }

      else
      {
        type metadata accessor for LoadingTableViewCell();
        v122 = sub_1D7262D8C();
        v123 = OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView;
        v124 = *(v122 + OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView);
        v125 = objc_opt_self();
        v126 = v124;
        v127 = [v125 darkGrayColor];
        [v126 setColor_];

        v128 = *(v122 + v123);
        v100 = v122;
        [v128 startAnimating];
      }

LABEL_126:
      sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);
      return v100;
    }

    if (!EnumCaseMultiPayload)
    {
      v102 = *(v23 + 2);
      v489 = *(v23 + 1);
      v490 = v102;
      *&v491 = *(v23 + 6);
      type metadata accessor for SubtitleTableViewCell();
      v100 = sub_1D7262D8C();
      v103 = [v100 textLabel];
      if (v103)
      {
        v104 = v103;
        v105 = sub_1D726203C();

        [v104 setText_];
      }

      else
      {
      }

      v151 = [v100 textLabel];
      if (v151)
      {
        v152 = v151;
        v153 = [objc_opt_self() systemFontOfSize_];
        [v152 setFont_];
      }

      v154 = [v100 detailTextLabel];
      if (v154)
      {
        v155 = v154;
        sub_1D5F17E90(&v489, &v485);
        if (*(&v486 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v485, *(&v486 + 1));
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(&v485);
        }

        else
        {
          sub_1D60813D8(&v485, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
        }

        v215 = sub_1D726203C();

        [v155 setText_];
      }

      v216 = [v100 detailTextLabel];
      if (v216)
      {
        v217 = v216;
        v218 = [objc_opt_self() secondaryLabelColor];
        [v217 setTextColor_];
      }

      v219 = [v100 detailTextLabel];
      if (v219)
      {
        v220 = v219;
        v221 = [objc_opt_self() systemFontOfSize_];
        [v220 setFont_];
      }

      v222 = [v100 detailTextLabel];
      if (v222)
      {
        v223 = v222;
        [v222 setNumberOfLines_];
      }

      [v100 setSelectionStyle_];

      sub_1D60813D8(&v489, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
      goto LABEL_126;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v49 = v23[32];
      type metadata accessor for RequirementTableViewCell();
      v50 = sub_1D7262D8C();
      v51 = [v50 textLabel];
      if (v51)
      {
        v52 = v51;
        v53 = sub_1D726203C();

        [v52 setText_];
      }

      else
      {
      }

      v156 = [v50 textLabel];
      if (v156)
      {
        v157 = v156;
        [v156 setNumberOfLines_];
      }

      [v50 setSelectionStyle_];
      v158 = objc_opt_self();
      v100 = v50;
      v159 = [v158 systemBlueColor];
      [v100 setTintColor_];

      if (v49)
      {
        [v100 setAccessoryType_];
        v160 = [v100 detailTextLabel];
        if (v160)
        {
          v161 = v160;
          v162 = [v158 redColor];
          [v161 setTextColor_];
        }

        v163 = [v100 detailTextLabel];
        if (!v163)
        {
          goto LABEL_125;
        }
      }

      else
      {
        [v100 setAccessoryType_];
        v164 = [v100 detailTextLabel];
        if (v164)
        {
          v165 = v164;
          v166 = [v158 secondaryLabelColor];
          [v165 setTextColor_];
        }

        v163 = [v100 detailTextLabel];
        if (!v163)
        {
          goto LABEL_125;
        }
      }

      v167 = v163;
      v168 = sub_1D726203C();
      [v167 setText_];

LABEL_125:
      sub_1D607F09C();
      goto LABEL_126;
    }

    sub_1D5B63F14(v23, v495);
    type metadata accessor for FeedItemTableViewCell();
    v106 = sub_1D7262D8C();
    v493 = 1;
    v107 = &v480[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
    v108 = &v107[*(type metadata accessor for DebugGroupLayoutKey() + 24)];
    v109 = *(v108 + 4);
    v110 = *(v108 + 5);
    __swift_project_boxed_opaque_existential_1(v108 + 1, v109);
    (*(v110 + 64))(&v489, v109, v110);
    v111 = *(&v490 + 1);
    v482 = v106;
    if (*(&v490 + 1))
    {
      v112 = v491;
      __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
      v113 = (*(v112 + 32))(v111, v112);
      v114 = v481;
      if (v113)
      {
        v115 = *(v113 + 32);

        __swift_destroy_boxed_opaque_existential_1(&v489);
        goto LABEL_104;
      }

      __swift_destroy_boxed_opaque_existential_1(&v489);
    }

    else
    {
      sub_1D60813D8(&v489, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      v114 = v481;
    }

    v115 = MEMORY[0x1E69E7CD0];
LABEL_104:
    swift_beginAccess();
    v224 = *(v114 + 80);
    v225 = v496;
    v226 = v497;
    __swift_project_boxed_opaque_existential_1(v495, v496);
    v227 = *(v226 + 8);
    v228 = *(v227 + 8);

    v229 = v228(v225, v227);
    LOBYTE(v225) = sub_1D5BE240C(v229, v230, v224);

    if (v225)
    {
    }

    else
    {
      v231 = v496;
      v232 = v497;
      __swift_project_boxed_opaque_existential_1(v495, v496);
      v233 = (*(*(v232 + 8) + 8))(v231);
      LOBYTE(v231) = sub_1D5BE240C(v233, v234, v115);

      if (v231)
      {
        v493 = 0;
        v479 = 2;
        goto LABEL_109;
      }
    }

    v479 = 0;
LABEL_109:
    v235 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v236 = *(v108 + 9);
    MEMORY[0x1EEE9AC00](v235, v237);
    *(&v461 - 2) = v495;

    sub_1D5E3EDD4(sub_1D6B33428, v236, &v485);

    v489 = v485;
    v490 = v486;
    v491 = v487;
    v492 = v488;
    v480 = v235;
    if (*(&v485 + 1))
    {
      *&v485 = v489;

      MEMORY[0x1DA6F9910](10, 0xE100000000000000);
      sub_1D6B335D8(&v489, &unk_1EC892180, &type metadata for FeedSlot, MEMORY[0x1E69E6720], sub_1D5B67034);
      sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_1D7270C10;
      v239 = *MEMORY[0x1E69DB648];
      *(v238 + 32) = *MEMORY[0x1E69DB648];
      v240 = objc_opt_self();
      v241 = *MEMORY[0x1E69DB978];
      v242 = v239;
      v243 = [v240 systemFontOfSize:12.0 weight:v241];
      v244 = sub_1D5B5A498(0, &qword_1EDF1A720);
      *(v238 + 40) = v243;
      v245 = *MEMORY[0x1E69DB650];
      *(v238 + 64) = v244;
      *(v238 + 72) = v245;
      v246 = objc_opt_self();
      v247 = v245;
      v235 = v480;
      v248 = [v246 systemBlueColor];
      *(v238 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
      *(v238 + 80) = v248;
      sub_1D5C09CEC(v238);
      swift_setDeallocating();
      sub_1D5C09DD4();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v249 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v250 = sub_1D726203C();

      type metadata accessor for Key(0);
      sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
      v251 = sub_1D7261D2C();

      v252 = [v249 initWithString:v250 attributes:v251];

      [v235 appendAttributedString_];
      goto LABEL_140;
    }

    v253 = *(v108 + 4);
    v254 = *(v108 + 5);
    __swift_project_boxed_opaque_existential_1(v108 + 1, v253);
    (*(v254 + 64))(&v485, v253, v254);
    v255 = *(&v486 + 1);
    if (!*(&v486 + 1))
    {
      sub_1D60813D8(&v485, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      goto LABEL_140;
    }

    v256 = v487;
    __swift_project_boxed_opaque_existential_1(&v485, *(&v486 + 1));
    v257 = (*(v256 + 32))(v255, v256);
    if (v257)
    {
      v258 = *(v257 + 24);

      __swift_project_boxed_opaque_existential_1(v495, v496);
      v259 = sub_1D725AA4C();
      if (*(v258 + 16))
      {
        v261 = sub_1D5B69D90(v259, v260);
        v263 = v262;

        if (v263)
        {
          v264 = *(*(v258 + 56) + 8 * v261);

          __swift_destroy_boxed_opaque_existential_1(&v485);
          v265 = *(v264 + 24);
          if (v265)
          {
            *&v485 = *(v264 + 16);
            *(&v485 + 1) = v265;
            swift_bridgeObjectRetain_n();
            MEMORY[0x1DA6F9910](10, 0xE100000000000000);

            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v266 = swift_allocObject();
            *(v266 + 16) = xmmword_1D7270C10;
            v267 = *MEMORY[0x1E69DB648];
            *(v266 + 32) = *MEMORY[0x1E69DB648];
            v268 = objc_opt_self();
            v269 = *MEMORY[0x1E69DB978];
            v270 = v267;
            v271 = [v268 systemFontOfSize:12.0 weight:v269];
            v272 = sub_1D5B5A498(0, &qword_1EDF1A720);
            *(v266 + 40) = v271;
            v273 = *MEMORY[0x1E69DB650];
            *(v266 + 64) = v272;
            *(v266 + 72) = v273;
            v274 = objc_opt_self();
            v275 = v273;
            v235 = v480;
            v276 = [v274 systemBlueColor];
            *(v266 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
            *(v266 + 80) = v276;
            v114 = v481;
            sub_1D5C09CEC(v266);
            swift_setDeallocating();
            sub_1D5C09DD4();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v277 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v278 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
            v279 = sub_1D7261D2C();

            v280 = [v277 initWithString:v278 attributes:v279];

            [v235 appendAttributedString_];
          }

          else
          {
          }

LABEL_140:
          v316 = v496;
          v317 = v497;
          __swift_project_boxed_opaque_existential_1(v495, v496);
          v318 = (*(*(v317 + 8) + 16))(v316);
          if (v319)
          {
            *&v485 = v318;
            *(&v485 + 1) = v319;

            MEMORY[0x1DA6F9910](10, 0xE100000000000000);

            v477 = *(&v485 + 1);
            v478 = v485;
            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v320 = swift_allocObject();
            *(v320 + 16) = xmmword_1D7279970;
            v321 = *MEMORY[0x1E69DB648];
            *(v320 + 32) = *MEMORY[0x1E69DB648];
            v322 = objc_opt_self();
            v323 = *MEMORY[0x1E69DB980];
            v324 = v321;
            v325 = [v322 systemFontOfSize:15.0 weight:v323];
            v326 = sub_1D5B5A498(0, &qword_1EDF1A720);
            *(v320 + 40) = v325;
            v327 = *MEMORY[0x1E69DB650];
            *(v320 + 64) = v326;
            *(v320 + 72) = v327;
            v328 = *(v114 + 80);
            v329 = v496;
            v330 = v497;
            __swift_project_boxed_opaque_existential_1(v495, v496);
            v331 = *(v330 + 8);
            v332 = *(v331 + 8);
            v333 = v327;
            v235 = v480;

            v334 = v329;
            v114 = v481;
            v335 = v332(v334, v331);
            LOBYTE(v330) = sub_1D5BE240C(v335, v336, v328);

            v337 = objc_opt_self();
            v338 = &selRef_systemGray2Color;
            if (v330)
            {
              v338 = &selRef_secondaryLabelColor;
            }

            v339 = [v337 *v338];
            v340 = sub_1D5B5A498(0, qword_1EDF1A6A0);
            *(v320 + 80) = v339;
            v341 = *MEMORY[0x1E69DB6B8];
            *(v320 + 104) = v340;
            *(v320 + 112) = v341;
            *(v320 + 144) = MEMORY[0x1E69E6530];
            *(v320 + 120) = v479;
            v342 = v341;
            sub_1D5C09CEC(v320);
            swift_setDeallocating();
            sub_1D5C09DD4();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v343 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v344 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
            v345 = sub_1D7261D2C();

            v346 = [v343 initWithString:v344 attributes:v345];

            [v235 appendAttributedString_];
          }

          v347 = v496;
          v348 = v497;
          __swift_project_boxed_opaque_existential_1(v495, v496);
          v349 = (*(*(v348 + 8) + 24))(v347);
          if (v350)
          {
            v477 = v349;
            v478 = v350;
            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v351 = swift_allocObject();
            *(v351 + 16) = xmmword_1D7279970;
            v352 = *MEMORY[0x1E69DB648];
            *(v351 + 32) = *MEMORY[0x1E69DB648];
            v353 = objc_opt_self();
            v354 = v352;
            v355 = [v353 systemFontOfSize_];
            v356 = sub_1D5B5A498(0, &qword_1EDF1A720);
            *(v351 + 40) = v355;
            v357 = *MEMORY[0x1E69DB650];
            *(v351 + 64) = v356;
            *(v351 + 72) = v357;
            v358 = *(v114 + 80);
            v359 = v496;
            v360 = v497;
            __swift_project_boxed_opaque_existential_1(v495, v496);
            v361 = *(v360 + 8);
            v362 = *(v361 + 8);
            v363 = v357;
            v235 = v480;

            v364 = v362(v359, v361);
            v114 = v481;
            LOBYTE(v359) = sub_1D5BE240C(v364, v365, v358);

            v366 = objc_opt_self();
            v367 = &selRef_labelColor;
            if ((v359 & 1) == 0)
            {
              v367 = &selRef_systemGray2Color;
            }

            v368 = [v366 *v367];
            v369 = sub_1D5B5A498(0, qword_1EDF1A6A0);
            *(v351 + 80) = v368;
            v370 = *MEMORY[0x1E69DB6B8];
            *(v351 + 104) = v369;
            *(v351 + 112) = v370;
            v371 = v493;
            *(v351 + 144) = MEMORY[0x1E69E6530];
            v372 = v371 == 0;
            v373 = v479;
            if (!v372)
            {
              v373 = 0;
            }

            *(v351 + 120) = v373;
            v374 = v370;
            sub_1D5C09CEC(v351);
            swift_setDeallocating();
            sub_1D5C09DD4();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v375 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v376 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
            v377 = sub_1D7261D2C();

            v378 = [v375 initWithString:v376 attributes:v377];

            [v235 appendAttributedString_];
          }

          v379 = v482;
          v380 = [v379 textLabel];
          if (v380)
          {
            v381 = v380;
            [v380 setAttributedText_];
          }

          v382 = [v379 textLabel];
          if (v382)
          {
            v383 = v382;
            [v382 setNumberOfLines_];
          }

          [v379 setAccessoryType_];
          v384 = sub_1D6B2D4B0(v495);
          v477 = v385;
          v478 = v384;
          sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
          v386 = swift_allocObject();
          *(v386 + 16) = xmmword_1D7279970;
          v387 = *MEMORY[0x1E69DB648];
          *(v386 + 32) = *MEMORY[0x1E69DB648];
          v388 = objc_opt_self();
          v389 = v387;
          v390 = [v388 systemFontOfSize_];
          v391 = sub_1D5B5A498(0, &qword_1EDF1A720);
          *(v386 + 40) = v390;
          v392 = *MEMORY[0x1E69DB650];
          *(v386 + 64) = v391;
          *(v386 + 72) = v392;
          v393 = *(v114 + 80);
          v394 = v496;
          v395 = v497;
          __swift_project_boxed_opaque_existential_1(v495, v496);
          v396 = *(v395 + 8);
          v482 = v379;
          v397 = *(v396 + 8);
          v398 = v392;

          v399 = v397(v394, v396);
          LOBYTE(v395) = sub_1D5BE240C(v399, v400, v393);

          v401 = objc_opt_self();
          v402 = &selRef_systemGray2Color;
          if (v395)
          {
            v402 = &selRef_secondaryLabelColor;
          }

          v403 = [v401 *v402];
          v404 = sub_1D5B5A498(0, qword_1EDF1A6A0);
          *(v386 + 80) = v403;
          v405 = *MEMORY[0x1E69DB6B8];
          *(v386 + 104) = v404;
          *(v386 + 112) = v405;
          v406 = v493;
          *(v386 + 144) = MEMORY[0x1E69E6530];
          v372 = v406 == 0;
          v407 = v479;
          if (!v372)
          {
            v407 = 0;
          }

          *(v386 + 120) = v407;
          v408 = v405;
          sub_1D5C09CEC(v386);
          swift_setDeallocating();
          sub_1D5C09DD4();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v409 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v410 = sub_1D726203C();

          type metadata accessor for Key(0);
          sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key);
          v411 = sub_1D7261D2C();

          v412 = [v409 initWithString:v410 attributes:v411];

          v413 = [v482 detailTextLabel];
          if (v413)
          {
            v414 = v413;
            [v413 setAttributedText_];
          }

          v479 = v412;
          v415 = v481;
          swift_beginAccess();
          v416 = *(v415 + 56);
          v417 = v496;
          v418 = v497;
          __swift_project_boxed_opaque_existential_1(v495, v496);
          v419 = *(v418 + 8);
          v420 = *(v419 + 8);

          v421 = v420(v417, v419);
          v423 = sub_1D5BE240C(v421, v422, v416);

          if (v423)
          {
            v424 = objc_opt_self();
            v425 = v482;
            v426 = v482;
            v427 = &selRef_systemGreenColor;
          }

          else
          {
            swift_beginAccess();
            v428 = *(v415 + 64);

            v429 = v420(v417, v419);
            v431 = sub_1D5BE240C(v429, v430, v428);

            v424 = objc_opt_self();
            v425 = v482;
            v432 = v482;
            if ((v431 & 1) == 0)
            {
              v434 = [v424 secondarySystemBackgroundColor];
LABEL_166:
              v435 = v481;
              [v425 setBackgroundColor_];

              v436 = [v425 imageView];
              if (v436)
              {
                v437 = v436;
                [v436 setImage_];
              }

              v438 = v496;
              v439 = v497;
              __swift_project_boxed_opaque_existential_1(v495, v496);
              v440 = (*(*(v439 + 8) + 8))(v438);
              v441 = &v425[OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier];
              *v441 = v440;
              v441[1] = v442;

              v443 = swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_1D5B68374(v495, &v485);
              sub_1D5B68374(&v485, v494);
              v444 = swift_allocObject();
              *(v444 + 16) = v443;
              sub_1D5B63F14(&v485, v444 + 24);
              __swift_project_boxed_opaque_existential_1(v495, v496);

              v445 = sub_1D725AA4C();
              v447 = v446;
              v448 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages;
              swift_beginAccess();
              v449 = *(v435 + v448);
              if (*(v449 + 16))
              {
                v450 = sub_1D5B69D90(v445, v447);
                v452 = v451;

                if (v452)
                {
                  v453 = *(*(v449 + 56) + 8 * v450);
                  swift_endAccess();
                  v454 = v453;
                  sub_1D6B2D5C8(v454, v443, v494);

                  v100 = v482;

                  sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);
LABEL_173:
                  __swift_destroy_boxed_opaque_existential_1(v494);

                  __swift_destroy_boxed_opaque_existential_1(v495);
                  return v100;
                }
              }

              else
              {
              }

              swift_endAccess();
              v455 = v496;
              v456 = v497;
              __swift_project_boxed_opaque_existential_1(v495, v496);
              v457 = *(v435 + 32);
              v458 = swift_allocObject();
              swift_weakInit();
              sub_1D5B68374(v495, v484);
              v459 = swift_allocObject();
              v459[2] = v458;
              sub_1D5B63F14(v484, (v459 + 3));
              v459[8] = sub_1D6B33448;
              v459[9] = v444;
              v460 = *(v456 + 8);

              sub_1D70A59C8(v457, sub_1D6B33454, v459, v455, v460);

              v100 = v482;

              sub_1D6B33638(v483, type metadata accessor for DebugInspectViewItem);

              goto LABEL_173;
            }

            v427 = &selRef_systemRedColor;
          }

          v433 = [v424 *v427];
          v434 = [v433 colorWithAlphaComponent_];

          goto LABEL_166;
        }
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v485);
    goto LABEL_140;
  }

LABEL_178:
  __break(1u);
  return result;
}

uint64_t sub_1D6B2D444(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_1D725AA4C();
  LOBYTE(v2) = sub_1D5BE240C(v3, v4, v2);

  return v2 & 1;
}

uint64_t sub_1D6B2D4B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(*(v2 + 8) + 48))(v1);
  if (!v3)
  {
    return 2960685;
  }

  v4 = v3;
  [v3 agedPersonalizationScore];

  if (qword_1EC87DD88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC9BAF48;
  v6 = sub_1D725A62C();
  v7 = [v5 stringForObjectValue_];

  if (!v7)
  {
    return sub_1D7262A9C();
  }

  v8 = sub_1D726207C();

  return v8;
}

void sub_1D6B2D5C8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v11 = (*(*(v10 + 8) + 8))(v9);
  if (!v6)
  {

    return;
  }

  if (v7 == v11 && v6 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 imageView];

    if (v17)
    {
      [v17 setImage_];
    }
  }
}

void sub_1D6B2D74C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v9 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = [Strong textLabel];

  if (v7)
  {
    v8 = [v7 text];

    if (v8)
    {
      v9 = sub_1D726207C();
      v7 = v10;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v11 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
  if (!v7)
  {

    return;
  }

  if (v9 == v11 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 imageView];

    [v17 setImage_];
  }
}

unint64_t sub_1D6B2DBA4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5C2AB28(0);
  v206 = *(v3 - 1);
  v207 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  *&v208 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v201 = *(v6 - 8);
  v202 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v200 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725F88C();
  v210 = *(v9 - 1);
  v211 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v204 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v205 = &v182 - v14;
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v212 = &v182 - v21;
  v187 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v187, v22);
  v194 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v198 = &v182 - v26;
  v27 = sub_1D7261ABC();
  v192 = *(v27 - 8);
  v193 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v190 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1D7261B2C();
  v189 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v30);
  v188 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D7261ACC();
  v185 = *(v32 - 8);
  v186 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v183 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for DebugGroupLayoutKey();
  v184 = *(v203 - 8);
  v35 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v203, v36);
  v196 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v197 = &v182 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v195 = &v182 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v209 = (&v182 - v45);
  v46 = type metadata accessor for DebugInspectViewItem();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v48);
  *&v215 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v214 = &v182 - v52;
  v53 = sub_1D7258D4C();
  [a1 deselectRowAtIndexPath:v53 animated:1];

  v213 = v1;
  v54 = *&v1[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  v55 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v56 = *(v54 + v55);

  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (result >= *(v56 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = *(v56 + 48 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result >= *(v58 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v59 = v214;
  sub_1D6B33100(v58 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * result, v214, type metadata accessor for DebugInspectViewItem);

  v60 = v215;
  sub_1D6B33100(v59, v215, type metadata accessor for DebugInspectViewItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v62 = *(v60 + 40);
        v211 = *(v60 + 48);
        v212 = v62;
        v63 = *(v60 + 56);
        sub_1D5B68374(v60, v235);
        v64 = &v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
        __swift_project_boxed_opaque_existential_1(&v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 16], *&v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 40]);
        v65 = sub_1D725AA4C();
        v67 = v66;
        __swift_project_boxed_opaque_existential_1(v235, v235[3]);
        if (v65 == sub_1D725AA4C() && v67 == v68)
        {

LABEL_23:
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
          sub_1D6B330D8(v212, v211, v63);
          __swift_destroy_boxed_opaque_existential_1(v235);
          return __swift_destroy_boxed_opaque_existential_1(v215);
        }

        v92 = sub_1D72646CC();

        if (v92)
        {
          goto LABEL_23;
        }

        type metadata accessor for GroupLayoutBindingContext();
        v210 = swift_allocBox();
        v100 = v99;
        v101 = v203;
        LOBYTE(v232[0]) = 2;
        sub_1D62EFCE4(0, v232, v99);
        v102 = v209;
        sub_1D5B68374(v235, (v209 + 2));
        sub_1D6B33100(v100, v102 + *(v101 + 24), type metadata accessor for GroupLayoutBindingContext);
        sub_1D6B33100(&v64[*(v101 + 28)], v102 + *(v101 + 28), type metadata accessor for GroupLayoutContext);
        __swift_project_boxed_opaque_existential_1(v102 + 2, v102[5]);
        *v102 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
        v102[1] = v103;
        if (v63)
        {
          if (v63 == 1)
          {
            v104 = v213;
            v105 = *&v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext];
            v204 = *&v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer];
            v205 = v105;
            v106 = v197;
            sub_1D6B33100(v209, v197, type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory], v233);
            sub_1D6332768();
            v108 = *(v107 + 48);
            v109 = v198;
            sub_1D6B33100(v100, v198, type metadata accessor for GroupLayoutBindingContext);
            v110 = v212;
            *(v109 + v108) = v212;
            swift_storeEnumTagMultiPayload();
            v208 = *&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
            sub_1D6330700(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory], v232);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService], v231);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService], v230);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService], v229);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService], v228);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider], v227);
            sub_1D5B68374(&v104[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history], v226);
            v111 = __swift_mutable_project_boxed_opaque_existential_1(v233, v233[3]);
            v207 = &v182;
            v112 = MEMORY[0x1EEE9AC00](v111, v111);
            v114 = (&v182 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v115 + 16))(v114, v112);
            v116 = *v114;
            v117 = type metadata accessor for DebugGroupLayoutViewFactory();
            v225[4] = &off_1F51E3AE8;
            v225[3] = v117;
            v225[0] = v116;
            v118 = objc_allocWithZone(ObjectType);
            v119 = __swift_mutable_project_boxed_opaque_existential_1(v225, v117);
            v206 = &v182;
            v120 = MEMORY[0x1EEE9AC00](v119, v119);
            v122 = (&v182 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v123 + 16))(v122, v120);
            v124 = *v122;
            v224[4] = &off_1F51E3AE8;
            v224[3] = v117;
            v224[0] = v124;
            v125 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
            v126 = objc_allocWithZone(MEMORY[0x1E69DD020]);
            v127 = v110;
            *&v118[v125] = [v126 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
            v128 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
            *&v118[v128] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
            v129 = v204;
            v130 = v205;
            *&v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext] = v205;
            *&v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer] = v129;
            sub_1D6B33100(v106, &v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key], type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(v224, &v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory]);
            sub_1D6B33100(v109, &v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], type metadata accessor for DebugInspectViewResult);
            *&v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter] = v208;
            v131 = v195;
            sub_1D6B33100(v106, v195, type metadata accessor for DebugGroupLayoutKey);
            v132 = v109;
            v133 = v194;
            sub_1D6B33100(v132, v194, type metadata accessor for DebugInspectViewResult);
            sub_1D6330700(v232, v223);
            sub_1D5B68374(v231, v222);
            sub_1D5B68374(v230, v221);
            type metadata accessor for DebugInspectViewDataSource();
            swift_allocObject();
            v134 = v130;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v135 = sub_1D632A918(v131, v133, v223, v222, v221);
            *&v208 = v118;
            *&v118[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource] = v135;
            sub_1D5B68374(v229, v223);
            sub_1D5B68374(v228, v222);
            v136 = v196;
            sub_1D6B33100(v106, v196, type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(v226, v221);
            type metadata accessor for DebugInspector();
            v137 = swift_allocObject();
            *(v137 + 16) = 0;
            *(v137 + 24) = v134;
            *(v137 + 32) = v129;
            sub_1D5B68374(v223, v137 + 40);
            sub_1D5B68374(v222, v137 + 128);
            v138 = (v136 + *(v203 + 24));
            v139 = v138[4];
            v140 = v138[5];
            __swift_project_boxed_opaque_existential_1(v138 + 1, v139);
            v141 = *(v140 + 16);
            v142 = v134;
            swift_unknownObjectRetain();
            *(v137 + 80) = v141(v139, v140);
            v143 = v138[4];
            v144 = v138[5];
            __swift_project_boxed_opaque_existential_1(v138 + 1, v143);
            (*(v144 + 64))(v217, v143, v144);
            sub_1D68160C0(v217, v220);
            v145 = v220[1];
            *(v137 + 96) = v220[0];
            *(v137 + 112) = v145;
            v146 = v138[4];
            v147 = v138[5];
            __swift_project_boxed_opaque_existential_1(v138 + 1, v146);
            (*(v147 + 64))(v217, v146, v147);
            v148 = v218;
            if (v218)
            {
              v149 = v219;
              __swift_project_boxed_opaque_existential_1(v217, v218);
              v150 = (*(v149 + 32))(v148, v149);
              if (v150)
              {
                v151 = *(v150 + 32);

                __swift_destroy_boxed_opaque_existential_1(v217);
                v152 = v214;
                v153 = v215;
                v154 = v211;
                v155 = v208;
LABEL_41:
                *(v137 + 88) = v151;
                sub_1D5B68374(v221, v137 + 168);
                sub_1D6C6DDB0();
                v178 = sub_1D725B92C();
                sub_1D725BB2C();

                __swift_destroy_boxed_opaque_existential_1(v221);
                __swift_destroy_boxed_opaque_existential_1(v222);
                __swift_destroy_boxed_opaque_existential_1(v223);
                sub_1D6B33638(v196, type metadata accessor for DebugGroupLayoutKey);
                *&v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector] = v137;
                sub_1D6330700(v232, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory]);
                sub_1D5B68374(v231, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService]);
                sub_1D5B68374(v230, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService]);
                sub_1D5B68374(v229, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService]);
                sub_1D5B68374(v228, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService]);
                sub_1D5B68374(v227, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider]);
                sub_1D5B68374(v226, &v155[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history]);
                v216.receiver = v155;
                v216.super_class = ObjectType;
                v179 = objc_msgSendSuper2(&v216, sel_initWithNibName_bundle_, 0, 0);
                __swift_destroy_boxed_opaque_existential_1(v226);
                __swift_destroy_boxed_opaque_existential_1(v227);
                __swift_destroy_boxed_opaque_existential_1(v228);
                __swift_destroy_boxed_opaque_existential_1(v229);
                __swift_destroy_boxed_opaque_existential_1(v230);
                __swift_destroy_boxed_opaque_existential_1(v231);
                sub_1D6084EA8(v232);
                sub_1D6B33638(v198, type metadata accessor for DebugInspectViewResult);
                sub_1D6B33638(v197, type metadata accessor for DebugGroupLayoutKey);
                __swift_destroy_boxed_opaque_existential_1(v224);
                __swift_destroy_boxed_opaque_existential_1(v225);
                __swift_destroy_boxed_opaque_existential_1(v233);
                v180 = [v213 navigationController];
                if (v180)
                {
                  v181 = v180;
                  [v180 pushViewController:v179 animated:1];
                }

                else
                {
                }

                sub_1D6B330D8(v212, v154, 1);
                sub_1D6B33638(v209, type metadata accessor for DebugGroupLayoutKey);
                sub_1D6B33638(v152, type metadata accessor for DebugInspectViewItem);

                goto LABEL_45;
              }

              __swift_destroy_boxed_opaque_existential_1(v217);
            }

            else
            {
              sub_1D60813D8(v217, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
            }

            v152 = v214;
            v153 = v215;
            v154 = v211;
            v155 = v208;
            v151 = MEMORY[0x1E69E7CD0];
            goto LABEL_41;
          }

          sub_1D6B330D8(v212, v211, 2);
          sub_1D6B33638(v209, type metadata accessor for DebugGroupLayoutKey);
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        }

        else
        {
          sub_1D5B5A498(0, &qword_1EDF1AA30);
          v165 = v185;
          v164 = v186;
          v166 = v183;
          (*(v185 + 104))(v183, *MEMORY[0x1E69E7F88], v186);
          *&v208 = sub_1D72630CC();
          (*(v165 + 8))(v166, v164);
          sub_1D5B68374(v235, v223);
          v167 = v195;
          sub_1D6B33100(v209, v195, type metadata accessor for DebugGroupLayoutKey);
          v168 = (*(v184 + 80) + 64) & ~*(v184 + 80);
          v169 = swift_allocObject();
          sub_1D5B63F14(v223, v169 + 16);
          *(v169 + 56) = v210;
          sub_1D6B33168(v167, v169 + v168);
          v170 = v213;
          *(v169 + ((v35 + v168 + 7) & 0xFFFFFFFFFFFFFFF8)) = v213;
          v232[4] = sub_1D6B331CC;
          v232[5] = v169;
          v232[0] = MEMORY[0x1E69E9820];
          v232[1] = 1107296256;
          v232[2] = sub_1D5B6B06C;
          v232[3] = &block_descriptor_56;
          v171 = _Block_copy(v232);

          v172 = v170;
          v173 = v188;
          sub_1D7261AEC();
          v233[0] = MEMORY[0x1E69E7CC0];
          sub_1D5B4A2C4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
          v174 = MEMORY[0x1E69E7F60];
          sub_1D6B33260(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1D6B332C4(&qword_1EDF1B560, &qword_1EDF1B570, v174);
          v175 = v190;
          v176 = v193;
          sub_1D7263B6C();
          v177 = v208;
          MEMORY[0x1DA6FA730](0, v173, v175, v171);
          _Block_release(v171);

          sub_1D6B330D8(v212, v211, 0);
          (*(v192 + 8))(v175, v176);
          (*(v189 + 8))(v173, v191);
          sub_1D6B33638(v209, type metadata accessor for DebugGroupLayoutKey);
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        }

        v153 = v215;
LABEL_45:
        __swift_destroy_boxed_opaque_existential_1(v235);
        return __swift_destroy_boxed_opaque_existential_1(v153);
      }

      sub_1D6B32F14();
      v87 = v212;
      sub_1D6B32FB0(v60 + *(v86 + 48), v212);
      sub_1D6B33044(v87, v18);
      v89 = v210;
      v88 = v211;
      if ((*(v210 + 48))(v18, 1, v211) == 1)
      {

        v90 = MEMORY[0x1E69D87C8];
        v91 = MEMORY[0x1E69E6720];
        sub_1D6B335D8(v87, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
        sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        return sub_1D6B335D8(v18, &qword_1EC88B638, v90, v91, sub_1D6B33260);
      }

      v93 = v205;
      (*(v89 + 32))(v205, v18, v88);
      (*(v89 + 16))(v204, v93, v88);
      v94 = objc_allocWithZone(sub_1D725E39C());
      v95 = sub_1D725E38C();
      v96 = [v95 navigationItem];
      v97 = sub_1D726203C();

      [v96 setTitle_];

      v98 = [v213 navigationController];
      [v98 pushViewController:v95 animated:1];

      (*(v89 + 8))(v93, v88);
      sub_1D6B335D8(v212, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v71 = *(v60 + 16);

      v72 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
      swift_beginAccess();
      v73 = *(v71 + v72);
      if (*(v73 + 16))
      {
        v74 = v208;
        sub_1D6B33100(v73 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v208, sub_1D5C2AB28);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);

          v70 = sub_1D5C2AB28;
          v69 = v74;
          return sub_1D6B33638(v69, v70);
        }

        sub_1D5B55504();
        v157 = *(v156 + 48);
        v159 = v200;
        v158 = v201;
        v160 = v202;
        (*(v201 + 32))(v200, v74, v202);
        sub_1D6B33638(v74 + v157, type metadata accessor for FormatMetadata);
        v161 = [objc_opt_self() sharedApplication];
        v162 = sub_1D725844C();
        sub_1D605D330(MEMORY[0x1E69E7CC0]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_1D5B4A2C4(&qword_1EC87F1F0, type metadata accessor for OpenExternalURLOptionsKey);
        v163 = sub_1D7261D2C();

        [v161 openURL:v162 options:v163 completionHandler:0];

        (*(v158 + 8))(v159, v160);
      }

      else
      {
      }
    }

LABEL_32:
    v70 = type metadata accessor for DebugInspectViewItem;
    v69 = v59;
    return sub_1D6B33638(v69, v70);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);

    return sub_1D60813D8(v60 + 16, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5B63F14(v60, v232);
    v75 = v213;
    v76 = *&v213[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector];
    sub_1D5B68374(v232, v223);
    v77 = *&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext];
    v215 = *&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
    sub_1D5B68374(&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider], v235);
    v78 = type metadata accessor for DebugInspectionViewController();
    v79 = objc_allocWithZone(v78);
    v80 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
    v81 = objc_allocWithZone(MEMORY[0x1E69DD020]);

    *&v79[v80] = [v81 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections] = MEMORY[0x1E69E7CC0];
    v82 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
    sub_1D725D7AC();
    swift_allocObject();
    *&v79[v82] = sub_1D725D79C();
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_inspector] = v76;
    sub_1D5B68374(v223, &v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem]);
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter] = v215;
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext] = v77;
    sub_1D5B68374(v235, &v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider]);
    v234.receiver = v79;
    v234.super_class = v78;
    swift_unknownObjectRetain();
    v83 = v77;
    v84 = objc_msgSendSuper2(&v234, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v223);
    v85 = [v75 navigationController];
    [v85 pushViewController:v84 animated:1];

    __swift_destroy_boxed_opaque_existential_1(v232);
    goto LABEL_32;
  }

  sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
  v69 = v60;
  v70 = type metadata accessor for DebugInspectViewItem;
  return sub_1D6B33638(v69, v70);
}

uint64_t sub_1D6B2F754(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261ABC();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B2C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugGroupLayoutKey();
  v13 = v12 - 8;
  v39 = *(v12 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupLayoutBindingContext();
  v40 = a2;
  v17 = swift_projectBox();
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = *(v13 + 36);
  swift_beginAccess();
  (*(v18 + 56))(v52, v17, a3 + v20, v19, v18);
  swift_endAccess();
  v21 = v53;
  v22 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v22 + 32))(&aBlock, v21, v22);
  LOBYTE(v22) = aBlock;
  v37 = v49;
  v38 = v48;
  v24 = v50;
  v23 = v51;
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v25 = sub_1D726308C();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6B33100(a3, v16, type metadata accessor for DebugGroupLayoutKey);
  v27 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D6B33168(v16, v29 + v27);
  *(v29 + v28) = v40;
  v30 = v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = v22;
  *(v30 + 1) = v52[0];
  *(v30 + 4) = *(v52 + 3);
  *(v30 + 24) = v37;
  *(v30 + 8) = v38;
  *(v30 + 40) = v24;
  *(v30 + 48) = v23;
  *(&v49 + 1) = sub_1D6B33328;
  v50 = v29;
  aBlock = MEMORY[0x1E69E9820];
  *&v48 = 1107296256;
  *(&v48 + 1) = sub_1D5B6B06C;
  *&v49 = &block_descriptor_63_0;
  v31 = _Block_copy(&aBlock);

  v32 = v41;
  sub_1D7261AEC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D5B4A2C4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v33 = MEMORY[0x1E69E7F60];
  sub_1D6B33260(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D6B332C4(&qword_1EDF1B560, &qword_1EDF1B570, v33);
  v34 = v44;
  v35 = v46;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v32, v34, v31);
  _Block_release(v31);

  (*(v45 + 8))(v34, v35);
  return (*(v42 + 8))(v32, v43);
}

void sub_1D6B2FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v82 - v11;
  v13 = type metadata accessor for DebugGroupLayoutKey();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v90 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  type metadata accessor for GroupLayoutBindingContext();
  v24 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext);
  v84 = v13;
  v85 = v26;
  v94 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer);
  v95 = v23;
  v83 = type metadata accessor for DebugGroupLayoutKey;
  v93 = v16;
  v27 = Strong;
  sub_1D6B33100(a2, v23, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory, v115);
  sub_1D63327EC();
  v29 = v12;
  v30 = &v12[*(v28 + 48)];
  swift_beginAccess();
  sub_1D6B33100(v24, v29, type metadata accessor for GroupLayoutBindingContext);
  v31 = *(a4 + 16);
  *v30 = *a4;
  *(v30 + 1) = v31;
  *(v30 + 2) = *(a4 + 32);
  *(v30 + 6) = *(a4 + 48);
  swift_storeEnumTagMultiPayload();
  v92 = *(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter);
  sub_1D6330700(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory, v114);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService, v113);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService, v112);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService, v111);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService, v110);
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider, v109);
  v89 = v27;
  sub_1D5B68374(v27 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history, v108);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  v88 = &v82;
  v33 = MEMORY[0x1EEE9AC00](v32, v32);
  v35 = (&v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v38 = type metadata accessor for DebugGroupLayoutViewFactory();
  v106 = v38;
  v107 = &off_1F51E3AE8;
  v105[0] = v37;
  v86 = type metadata accessor for DebugInspectViewController();
  v39 = objc_allocWithZone(v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v87 = &v82;
  v41 = MEMORY[0x1EEE9AC00](v40, v40);
  v43 = (&v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = *v43;
  v104[3] = v38;
  v104[4] = &off_1F51E3AE8;
  v104[0] = v45;
  v46 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
  v47 = objc_allocWithZone(MEMORY[0x1E69DD020]);
  v48 = v85;
  v49 = v94;
  swift_unknownObjectRetain();
  sub_1D6332BB4(a4, v103);
  v50 = v92;
  swift_unknownObjectRetain();
  *&v39[v46] = [v47 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v51 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
  *&v39[v51] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  *&v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext] = v48;
  *&v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer] = v49;
  v52 = v95;
  v53 = v83;
  sub_1D6B33100(v95, &v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key], v83);
  sub_1D5B68374(v104, &v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory]);
  sub_1D6B33100(v29, &v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], type metadata accessor for DebugInspectViewResult);
  *&v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter] = v92;
  v54 = v90;
  sub_1D6B33100(v52, v90, v53);
  *&v92 = v29;
  v55 = v91;
  sub_1D6B33100(v29, v91, type metadata accessor for DebugInspectViewResult);
  sub_1D6330700(v114, v103);
  sub_1D5B68374(v113, v102);
  sub_1D5B68374(v112, v101);
  type metadata accessor for DebugInspectViewDataSource();
  swift_allocObject();
  v56 = v48;
  v57 = v49;
  swift_unknownObjectRetain();
  v85 = v50;
  swift_unknownObjectRetain();
  v58 = sub_1D632A918(v54, v55, v103, v102, v101);
  v90 = v39;
  *&v39[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource] = v58;
  sub_1D5B68374(v111, v103);
  sub_1D5B68374(v110, v102);
  v59 = v93;
  sub_1D6B33100(v95, v93, v53);
  sub_1D5B68374(v108, v101);
  type metadata accessor for DebugInspector();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = v56;
  *(v60 + 32) = v57;
  sub_1D5B68374(v103, v60 + 40);
  sub_1D5B68374(v102, v60 + 128);
  v61 = (v59 + *(v84 + 24));
  v62 = v61[4];
  v63 = v61[5];
  __swift_project_boxed_opaque_existential_1(v61 + 1, v62);
  v64 = *(v63 + 16);
  v65 = v56;
  swift_unknownObjectRetain_n();
  v91 = v65;
  *(v60 + 80) = v64(v62, v63);
  v66 = v61[4];
  v67 = v61[5];
  __swift_project_boxed_opaque_existential_1(v61 + 1, v66);
  (*(v67 + 64))(v97, v66, v67);
  sub_1D68160C0(v97, v100);
  v68 = v100[1];
  *(v60 + 96) = v100[0];
  *(v60 + 112) = v68;
  v69 = v61[4];
  v70 = v61[5];
  __swift_project_boxed_opaque_existential_1(v61 + 1, v69);
  (*(v70 + 64))(v97, v69, v70);
  v71 = v98;
  if (!v98)
  {
    sub_1D60813D8(v97, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
LABEL_7:
    v75 = v89;
    v74 = MEMORY[0x1E69E7CD0];
    goto LABEL_8;
  }

  v72 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v73 = (*(v72 + 32))(v71, v72);
  if (!v73)
  {
    __swift_destroy_boxed_opaque_existential_1(v97);
    goto LABEL_7;
  }

  v74 = *(v73 + 32);

  __swift_destroy_boxed_opaque_existential_1(v97);
  v75 = v89;
LABEL_8:
  *(v60 + 88) = v74;
  sub_1D5B68374(v101, v60 + 168);
  sub_1D6C6DDB0();
  v76 = sub_1D725B92C();
  sub_1D725BB2C();
  v77 = v91;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_1D6B33638(v93, type metadata accessor for DebugGroupLayoutKey);
  v78 = v90;
  *&v90[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector] = v60;
  sub_1D6330700(v114, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory);
  sub_1D5B68374(v113, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService);
  sub_1D5B68374(v112, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService);
  sub_1D5B68374(v111, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService);
  sub_1D5B68374(v110, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService);
  sub_1D5B68374(v109, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider);
  sub_1D5B68374(v108, v78 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history);
  v96.receiver = v78;
  v96.super_class = v86;
  v79 = objc_msgSendSuper2(&v96, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  sub_1D6084EA8(v114);
  sub_1D6B33638(v92, type metadata accessor for DebugInspectViewResult);
  sub_1D6B33638(v95, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v115);
  v80 = [v75 navigationController];
  if (v80)
  {
    v81 = v80;
    [v80 pushViewController:v79 animated:1];
  }
}

void sub_1D6B3087C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() secondarySystemBackgroundColor];
      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v17 = a7[3];
    v16 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v17);
    *(inited + 32) = (*(*(v16 + 8) + 8))(v17);
    *(inited + 40) = v18;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    a3(1);
  }
}

void sub_1D6B30A50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v25 = a3;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() systemRedColor];
      v15 = [v14 colorWithAlphaComponent_];

      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v18 = a7[3];
    v17 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v18);
    v24 = v10;
    v19 = *(v17 + 8);
    v20 = *(v19 + 8);
    *(inited + 32) = v20(v18, v19);
    *(inited + 40) = v21;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1D7273AE0;

    *(v22 + 32) = v20(v18, v19);
    *(v22 + 40) = v23;
    swift_beginAccess();
    sub_1D5B87D50(v22);
    swift_setDeallocating();
    sub_1D5BFB68C(v22 + 32);
    swift_endAccess();

    v25(1);
  }
}

void sub_1D6B30D14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() secondarySystemBackgroundColor];
      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v17 = a7[3];
    v16 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v17);
    *(inited + 32) = (*(*(v16 + 8) + 8))(v17);
    *(inited + 40) = v18;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    a3(1);
  }
}

void sub_1D6B30EE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v25 = a3;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() systemGreenColor];
      v15 = [v14 colorWithAlphaComponent_];

      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v18 = a7[3];
    v17 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v18);
    v24 = v10;
    v19 = *(v17 + 8);
    v20 = *(v19 + 8);

    *(inited + 32) = v20(v18, v19);
    *(inited + 40) = v21;
    swift_beginAccess();
    sub_1D5B87D50(inited);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    swift_endAccess();

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    *(v22 + 32) = v20(v18, v19);
    *(v22 + 40) = v23;
    swift_beginAccess();
    sub_1D716B574(v22);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(v22 + 32);
    v25(1);
  }
}

id sub_1D6B311AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  v15 = a5(v12);

  (*(v9 + 8))(v12, v8);

  return v15;
}

id sub_1D6B3160C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D726207C();
    a4 = sub_1D726203C();
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a5, a4);

  return v9;
}

id sub_1D6B319DC(uint64_t a1)
{
  v3 = sub_1D7258DBC();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  v57 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v16 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v17 = *(v15 + v16);

  v18 = sub_1D7258DAC();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= v17[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v56 = v3;
  v60 = v14;
  v14 = v17[6 * v18 + 8];

  v19 = sub_1D7258D9C();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= *(v14 + 2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v60;
  sub_1D6B33100(&v14[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v60, type metadata accessor for DebugInspectViewItem);

  sub_1D6B33100(v20, v10, type metadata accessor for DebugInspectViewItem);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D6B33638(v20, type metadata accessor for DebugInspectViewItem);
    sub_1D6B33638(v10, type metadata accessor for DebugInspectViewItem);
    return 0;
  }

  sub_1D5B63F14(v10, v68);
  swift_beginAccess();
  v21 = *(v15 + 64);
  v22 = v69;
  v23 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v24 = *(v23 + 8);
  v25 = *(v24 + 8);

  v26 = v25(v22, v24);
  LOBYTE(v22) = sub_1D5BE240C(v26, v27, v21);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v59;
  v30 = v58;
  v31 = a1;
  v32 = v56;
  (*(v59 + 16))(v58, v31, v56);
  v33 = v4 + 7;
  if ((v22 & 1) == 0)
  {
    sub_1D5B68374(v68, v67);
    v48 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v28;
    (*(v29 + 32))(v49 + v48, v30, v32);
    sub_1D5B63F14(v67, v49 + ((v33 + v48) & 0xFFFFFFFFFFFFFFF8));

    v50 = sub_1D726203C();
    v65 = sub_1D6B32D30;
    v66 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1D6B276E0;
    v64 = &block_descriptor_43;
    v51 = _Block_copy(&aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:0 title:v50 handler:v51];

    _Block_release(v51);

    v52 = [objc_opt_self() systemRedColor];
    [v17 setBackgroundColor_];

    v14 = v60;
    if (qword_1EDF05BA0 == -1)
    {
LABEL_10:
      [v17 setImage_];
      sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D72816C0;
      *(v53 + 32) = v17;
      sub_1D5B5A498(0, &unk_1EC890BF0);
      v54 = v17;
      v55 = sub_1D726265C();

      v45 = [objc_opt_self() configurationWithActions_];

      v46 = v14;
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  sub_1D5B68374(v68, v67);
  v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  (*(v29 + 32))(v35 + v34, v30, v32);
  sub_1D5B63F14(v67, v35 + ((v33 + v34) & 0xFFFFFFFFFFFFFFF8));

  v36 = sub_1D726203C();
  v65 = sub_1D6B32E20;
  v66 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1D6B276E0;
  v64 = &block_descriptor_50_0;
  v37 = _Block_copy(&aBlock);
  v38 = [objc_opt_self() contextualActionWithStyle:0 title:v36 handler:v37];

  _Block_release(v37);

  v39 = [objc_opt_self() systemGrayColor];
  [v38 setBackgroundColor_];

  v40 = sub_1D726203C();
  v41 = [objc_opt_self() systemImageNamed_];

  [v38 setImage_];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D72816C0;
  *(v42 + 32) = v38;
  sub_1D5B5A498(0, &unk_1EC890BF0);
  v43 = v38;
  v44 = sub_1D726265C();

  v45 = [objc_opt_self() configurationWithActions_];

  v46 = v60;
LABEL_11:
  sub_1D6B33638(v46, type metadata accessor for DebugInspectViewItem);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v45;
}

id sub_1D6B322EC(uint64_t a1)
{
  v3 = sub_1D7258DBC();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  v57 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v16 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v17 = *(v15 + v16);

  v18 = sub_1D7258DAC();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= v17[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v56 = v3;
  v60 = v14;
  v14 = v17[6 * v18 + 8];

  v19 = sub_1D7258D9C();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= *(v14 + 2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v60;
  sub_1D6B33100(&v14[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v60, type metadata accessor for DebugInspectViewItem);

  sub_1D6B33100(v20, v10, type metadata accessor for DebugInspectViewItem);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D6B33638(v20, type metadata accessor for DebugInspectViewItem);
    sub_1D6B33638(v10, type metadata accessor for DebugInspectViewItem);
    return 0;
  }

  sub_1D5B63F14(v10, v68);
  swift_beginAccess();
  v21 = *(v15 + 56);
  v22 = v69;
  v23 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v24 = *(v23 + 8);
  v25 = *(v24 + 8);

  v26 = v25(v22, v24);
  LOBYTE(v22) = sub_1D5BE240C(v26, v27, v21);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v59;
  v30 = v58;
  v31 = a1;
  v32 = v56;
  (*(v59 + 16))(v58, v31, v56);
  v33 = v4 + 7;
  if ((v22 & 1) == 0)
  {
    sub_1D5B68374(v68, v67);
    v48 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v28;
    (*(v29 + 32))(v49 + v48, v30, v32);
    sub_1D5B63F14(v67, v49 + ((v33 + v48) & 0xFFFFFFFFFFFFFFF8));

    v50 = sub_1D726203C();
    v65 = sub_1D6B32D00;
    v66 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1D6B276E0;
    v64 = &block_descriptor_78;
    v51 = _Block_copy(&aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:0 title:v50 handler:v51];

    _Block_release(v51);

    v52 = [objc_opt_self() systemGreenColor];
    [v17 setBackgroundColor_];

    v14 = v60;
    if (qword_1EDF05B90 == -1)
    {
LABEL_10:
      [v17 setImage_];
      sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D72816C0;
      *(v53 + 32) = v17;
      sub_1D5B5A498(0, &unk_1EC890BF0);
      v54 = v17;
      v55 = sub_1D726265C();

      v45 = [objc_opt_self() configurationWithActions_];

      v46 = v14;
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  sub_1D5B68374(v68, v67);
  v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  (*(v29 + 32))(v35 + v34, v30, v32);
  sub_1D5B63F14(v67, v35 + ((v33 + v34) & 0xFFFFFFFFFFFFFFF8));

  v36 = sub_1D726203C();
  v65 = sub_1D6B32D18;
  v66 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1D6B276E0;
  v64 = &block_descriptor_33;
  v37 = _Block_copy(&aBlock);
  v38 = [objc_opt_self() contextualActionWithStyle:0 title:v36 handler:v37];

  _Block_release(v37);

  v39 = [objc_opt_self() systemGrayColor];
  [v38 setBackgroundColor_];

  v40 = sub_1D726203C();
  v41 = [objc_opt_self() systemImageNamed_];

  [v38 setImage_];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D72816C0;
  *(v42 + 32) = v38;
  sub_1D5B5A498(0, &unk_1EC890BF0);
  v43 = v38;
  v44 = sub_1D726265C();

  v45 = [objc_opt_self() configurationWithActions_];

  v46 = v60;
LABEL_11:
  sub_1D6B33638(v46, type metadata accessor for DebugInspectViewItem);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v45;
}

char *sub_1D6B32BFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, 3, v6);

  v8 = v7;
  v9 = [v8 contentView];
  [v9 addSubview_];

  return v8;
}

uint64_t objectdestroy_25Tm_0()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1D6B32E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_1D7258DBC() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

void sub_1D6B32F14()
{
  if (!qword_1EC892160)
  {
    sub_1D6B33260(255, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892160);
    }
  }
}

uint64_t sub_1D6B32FB0(uint64_t a1, uint64_t a2)
{
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B33044(uint64_t a1, uint64_t a2)
{
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6B330D8(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1D6B33100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B33168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugGroupLayoutKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B331CC()
{
  v1 = *(type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_1D6B2F754((v0 + 16), v2, v3);
}

void sub_1D6B33260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6B332C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B33260(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B33328()
{
  v1 = *(type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  sub_1D6B2FD04(v4, v0 + v2, v5, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1D6B33464()
{

  v0 = sub_1D6C6DDB0();

  return v0;
}

uint64_t objectdestroy_77Tm(void (*a1)(void))
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  a1(*(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D6B335D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6B33638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6B336CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v5 = sub_1D725895C();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutContext();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupLayoutBindingContext();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B35840(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  v24 = *(v9 + 24);
  v25 = a2;
  v26 = a2 + v24;
  v27 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D6329790(v26 + *(v27 + 36), v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D6B358A4(v18);
    sub_1D6B35930();
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }

  sub_1D6B35984(v18, v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  v30 = sub_1D6C548CC(0, 0, 0, 0, 0);
  v31 = v30;
  if (v30 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v32 = v58;
    sub_1D5BE4078(a1, v58, type metadata accessor for GroupLayoutBindingContext);
    v55 = type metadata accessor for GroupLayoutContext;
    v33 = v25;
    v34 = v25;
    v35 = v61;
    sub_1D5BE4078(v34, v61, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v54 = sub_1D725893C();
    v53 = v36;
    (*(v57 + 8))(v8, v5);
    v71 = &type metadata for PluginGroupLayoutFactory;
    v57 = sub_1D5ECDDE0();
    v72 = v57;
    type metadata accessor for GroupLayoutKey();
    v37 = swift_allocObject();
    v68 = sub_1D7264C5C();
    v69 = v38;
    v66 = 95;
    v67 = 0xE100000000000000;
    v64 = 45;
    v65 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v39 = sub_1D7263A6C();
    v41 = v40;

    *(v37 + 16) = v39;
    *(v37 + 24) = v41;
    v42 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v43 = v53;
    *v42 = v54;
    v42[1] = v43;
    sub_1D5B68374(v70, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v44 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D6B35984(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v59 + 56))(v37 + v44, 0, 1, v60);
    v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D6B35984(v35, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v62 + 56))(v37 + v45, 0, 1, v56);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v46 = type metadata accessor for PluginGroupLayoutFactory.Bound(0);
    v47 = v63;
    v63[3] = v46;
    v47[4] = sub_1D5BEAA44(&qword_1EDF0CAF8, type metadata accessor for PluginGroupLayoutFactory.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    sub_1D5BE4078(v23, boxed_opaque_existential_1 + v46[5], type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    sub_1D5BE4078(v33, boxed_opaque_existential_1 + v46[6], v55);
    v49 = boxed_opaque_existential_1 + v46[7];
    v50 = v57;
    *(v49 + 3) = &type metadata for PluginGroupLayoutFactory;
    *(v49 + 4) = v50;
    result = sub_1D6B35E98(v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    *boxed_opaque_existential_1 = v31;
    *(boxed_opaque_existential_1 + v46[8]) = v37;
    return result;
  }

  sub_1D6B35930();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();
  return sub_1D6B35E98(v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
}

uint64_t sub_1D6B33D94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v26 = v2;
  v10 = sub_1D5ECC7D4(sub_1D6B35C44, v25, v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
  v24 = v10;
  sub_1D6B35EF8(0, &qword_1EDF17FB8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v11 = sub_1D725A4CC();
  type metadata accessor for PluginGroupLayoutFactory.Bound(0);
  v23 = v11;
  sub_1D725A4DC();
  v12 = v30;
  v13 = MEMORY[0x1E69E62F8];
  sub_1D6B35840(0, &qword_1EDF05070, type metadata accessor for PluginLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, v13);
  sub_1D6B35CC8(&qword_1EDF05068, &qword_1EDF05070, type metadata accessor for PluginLayout.Context);
  v14 = sub_1D6B35CC8(&qword_1EDF049B8, &unk_1EDF049C0, type metadata accessor for CGRect);
  v21 = v29;
  v22 = v28;
  v27 = v12;
  *&v28 = v10;
  MEMORY[0x1EEE9AC00](v14, v15);

  v16 = sub_1D725C00C();

  *a1 = 0;
  v17 = v22;
  *(a1 + 24) = v21;
  *(a1 + 8) = v17;
  *&v28 = v16;
  sub_1D6B35D2C();
  sub_1D5BEAA44(&qword_1EDF1B4C0, sub_1D6B35D2C);
  sub_1D5BDEFF8();
  v18 = sub_1D72623BC();

  v20 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v18;
  *(a1 + 48) = v20;
  return result;
}

uint64_t sub_1D6B34130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = type metadata accessor for PluginGroupLayoutFactory.Bound(0);
  sub_1D5BE4078(a2 + *(v11 + 20), v9, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  type metadata accessor for PluginLayout.Context(0);
  sub_1D725CBEC();
  v12 = sub_1D725E23C();
  (*(*(v12 - 8) + 8))(v9, v12);
  *a3 = v10;
}

uint64_t sub_1D6B34248(uint64_t a1, uint64_t a2)
{
  sub_1D6B35DE4(0, &qword_1EDF17F98, sub_1D6B35C6C, &type metadata for PluginLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13[-v9];
  v15 = a1;
  (*(v6 + 104))(&v13[-v9], *MEMORY[0x1E69D7460], v5, v8);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6B35EF8(0, &qword_1EDF18050, MEMORY[0x1E69D7150]);
  sub_1D6B35E54(&qword_1EDF18058, &qword_1EDF18050, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v10, v5);
}

void sub_1D6B34414(uint64_t a1, uint64_t a2)
{
  sub_1D6B35DE4(0, &qword_1EDF17F98, sub_1D6B35C6C, &type metadata for PluginLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v35 - v8);
  v10 = type metadata accessor for PluginLayout.Context(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v42 = *(v12 + 20);
    v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v39 = *MEMORY[0x1E69D71F0];
    v38 = *MEMORY[0x1E69D7468];
    v36 = (v6 + 8);
    v37 = (v6 + 104);
    v43 = v5;
    v44 = a1;
    v40 = v9;
    do
    {
      v47 = v16;
      v48 = v17;
      sub_1D5BE4078(v17, v15, type metadata accessor for PluginLayout.Context);
      v49 = a1;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444();
      v19 = v18;
      v45 = swift_allocBox();
      v21 = v20;
      v22 = *(v19 + 48);
      v23 = swift_allocObject();
      sub_1D725E3AC();
      *(v23 + 16) = v24;
      *v21 = v23;
      v25 = sub_1D725A09C();
      v26 = *(*(v25 - 8) + 104);
      v27 = v39;
      v26(v21, v39, v25);
      v28 = swift_allocObject();
      sub_1D725E3AC();
      v30 = v29;
      sub_1D6B35E98(v15, type metadata accessor for PluginLayout.Context);
      *(v28 + 16) = v30;
      *(v21 + v22) = v28;
      v31 = v21 + v22;
      v32 = v43;
      v26(v31, v27, v25);
      v33 = v40;
      *v40 = v45;
      (*v37)(v33, v38, v32);
      v34 = MEMORY[0x1E69D6F38];
      sub_1D6B35EF8(0, &qword_1EDF18168, MEMORY[0x1E69D6F38]);
      sub_1D6B35E54(&qword_1EDF18170, &qword_1EDF18168, v34);
      sub_1D5BEAA44(&qword_1EDF17FF0, sub_1D6862F68);
      a1 = v44;
      sub_1D7259A7C();

      (*v36)(v33, v32);
      v17 = v48 + v41;
      v16 = v47 - 1;
    }

    while (v47 != 1);
  }
}

uint64_t sub_1D6B34834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v21 = a3[1];
  v22 = *a3;
  sub_1D6B35D7C();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  sub_1D5BE4078(a2, v12, type metadata accessor for PluginLayout.Context);
  v15 = a4 + *(type metadata accessor for PluginGroupLayoutFactory.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext();
  v17 = *(v15 + *(result + 28));
  v18 = __OFADD__(a1, v17);
  v19 = a1 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = v13 + v14;
    *v20 = v22;
    *(v20 + 16) = v21;
    *(v20 + 32) = v19;
    *a5 = v11 | 0xA000000000000000;
  }

  return result;
}

uint64_t PluginLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6B34A38(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

void sub_1D6B34A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1D5BEAA44(&unk_1EDF1A748, type metadata accessor for CGRect);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6B34AE8()
{
  if (*v0)
  {
    return 0x72466E6967756C70;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D6B34B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72466E6967756C70 && a2 == 0xEC00000073656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6B34C04(uint64_t a1)
{
  v2 = sub_1D6B34EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B34C40(uint64_t a1)
{
  v2 = sub_1D6B34EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B35DE4(0, &qword_1EC892198, sub_1D6B34EBC, &type metadata for PluginLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v14 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B34EBC();
  sub_1D7264B5C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6863748();
  sub_1D726443C();
  if (!v2)
  {
    *&v15 = v14;
    v17 = 1;
    sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    sub_1D6B35198(&qword_1EC88CFF0, sub_1D6863748);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6B34EBC()
{
  result = qword_1EDF12020;
  if (!qword_1EDF12020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12020);
  }

  return result;
}

uint64_t PluginLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6B35DE4(0, &qword_1EDF03AD0, sub_1D6B34EBC, &type metadata for PluginLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B34EBC();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D6863610();
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    v20 = 1;
    sub_1D6B35198(&qword_1EDF049B0, sub_1D6863610);
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v18;
    v14 = v15;
    *v11 = v16;
    *(v11 + 16) = v14;
    *(v11 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6B35198(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B35840(255, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B35264()
{
  sub_1D6B35A0C();

  return sub_1D725A24C();
}

uint64_t PluginLayout.Context.layoutTransition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PluginLayout.Context(0) + 20);
  v4 = sub_1D725E3BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1D6B35370()
{
  result = qword_1EDF12000;
  if (!qword_1EDF12000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12000);
  }

  return result;
}

unint64_t sub_1D6B353C8()
{
  result = qword_1EDF11FE8;
  if (!qword_1EDF11FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FE8);
  }

  return result;
}

unint64_t sub_1D6B35420()
{
  result = qword_1EDF11FF0;
  if (!qword_1EDF11FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FF0);
  }

  return result;
}

unint64_t sub_1D6B35478()
{
  result = qword_1EDF12008;
  if (!qword_1EDF12008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12008);
  }

  return result;
}

uint64_t sub_1D6B354CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6B34A38(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D6B355AC()
{
  result = sub_1D725CC1C();
  if (v1 <= 0x3F)
  {
    result = sub_1D725E3BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6B35664()
{
  result = qword_1EC8921A0;
  if (!qword_1EC8921A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921A0);
  }

  return result;
}

unint64_t sub_1D6B356BC()
{
  result = qword_1EDF12010;
  if (!qword_1EDF12010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12010);
  }

  return result;
}

unint64_t sub_1D6B35714()
{
  result = qword_1EDF12018;
  if (!qword_1EDF12018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12018);
  }

  return result;
}

unint64_t sub_1D6B35768(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B35798();
  result = sub_1D6B357EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B35798()
{
  result = qword_1EDF0CA48;
  if (!qword_1EDF0CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CA48);
  }

  return result;
}

unint64_t sub_1D6B357EC()
{
  result = qword_1EDF0CA50[0];
  if (!qword_1EDF0CA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0CA50);
  }

  return result;
}

void sub_1D6B35840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6B358A4(uint64_t a1)
{
  sub_1D6B35840(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6B35930()
{
  result = qword_1EC8921A8;
  if (!qword_1EC8921A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921A8);
  }

  return result;
}

uint64_t sub_1D6B35984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6B35A0C()
{
  result = qword_1EDF11FF8;
  if (!qword_1EDF11FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FF8);
  }

  return result;
}

void sub_1D6B35A88()
{
  sub_1D6B35840(319, &qword_1EDF05330, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedLayoutSolverOptions.PluginOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D5C10AB0();
        if (v3 <= 0x3F)
        {
          type metadata accessor for GroupLayoutKey();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D6B35B98()
{
  result = qword_1EC8921B0;
  if (!qword_1EC8921B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921B0);
  }

  return result;
}