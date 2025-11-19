uint64_t FormatContent.iAdKeywords.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.superfeedKeywords.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.init(identifier:publishDate:tagID:issueID:articleID:webEmbedID:recipeID:sponsoredAdBanner:equivalentTopicIDs:affinityTagIDs:iAdKeywords:superfeedKeywords:themes:subgroups:properties:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v39 = *a20;
  *a9 = a1;
  *(a9 + 1) = a2;
  v27 = type metadata accessor for FormatContent(0);
  v28 = v27[5];
  v29 = sub_1D725891C();
  (*(*(v29 - 8) + 32))(&a9[v28], a3, v29);
  v30 = &a9[v27[6]];
  *v30 = a4;
  *(v30 + 1) = a5;
  v31 = &a9[v27[7]];
  *v31 = a6;
  *(v31 + 1) = a7;
  v32 = &a9[v27[8]];
  *v32 = a8;
  *(v32 + 1) = a10;
  v33 = &a9[v27[9]];
  *v33 = a11;
  *(v33 + 1) = a12;
  v34 = &a9[v27[10]];
  *v34 = a13;
  *(v34 + 1) = a14;
  result = sub_1D6C047F0(a15, &a9[v27[11]], sub_1D5B49800);
  *&a9[v27[12]] = a16;
  *&a9[v27[13]] = a17;
  *&a9[v27[14]] = a18;
  *&a9[v27[15]] = a19;
  *&a9[v27[16]] = v39;
  *&a9[v27[17]] = a21;
  *&a9[v27[18]] = a22;
  *&a9[v27[19]] = a23;
  return result;
}

uint64_t FormatContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContent.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatContent(0) + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatContent.tagID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 24));

  return v1;
}

uint64_t FormatContent.issueID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 28));

  return v1;
}

uint64_t FormatContent.articleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 32));

  return v1;
}

uint64_t FormatContent.webEmbedID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 36));

  return v1;
}

uint64_t FormatContent.recipeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent(0) + 40));

  return v1;
}

uint64_t FormatContent.equivalentTopicIDs.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t sub_1D6BFC8B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 48);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.equivalentTopicIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatContent.affinityTagIDs.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t sub_1D6BFC9C0(uint64_t a1, uint64_t a2)
{
  sub_1D5B595F0(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BFCA54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 52);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.affinityTagIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6BFCB2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 56);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.iAdKeywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6BFCC04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 60);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.superfeedKeywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatContent.themes.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FormatContent(0) + 64));
}

uint64_t FormatContent.subgroups.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t sub_1D6BFCD54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 72);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6BFCE2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContent(0) + 76);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatContent.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContent(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6C04230(0, &qword_1EDF3C668, sub_1D6C03CEC, &type metadata for FormatContent.AltCodingKeys, MEMORY[0x1E69E6F48]);
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v109 = &v103[-v6];
  sub_1D6C03D40(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v112 = &v103[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v111 = &v103[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v116 = &v103[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_1D725891C();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v16);
  v114 = &v103[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = sub_1D725895C();
  v120 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v119 = &v103[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6C04230(0, &qword_1EDF3C670, sub_1D6C03D74, &type metadata for FormatContent.CodingKeys, v3);
  v21 = v20;
  v118 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v103[-v23];
  v25 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v103[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C03D74();
  v29 = v121;
  sub_1D7264B0C();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v119;
  v31 = v120;
  v121 = a1;
  v105 = v25;
  v106 = v28;
  LOBYTE(v123) = 0;
  v32 = sub_1D726422C();
  v34 = v21;
  if (!v33)
  {
    sub_1D725894C();
    v36 = sub_1D725893C();
    v38 = v37;
    (*(v31 + 8))(v30, v113);
    v33 = v38;
    v32 = v36;
    v34 = v21;
  }

  v40 = v105;
  v39 = v106;
  v41 = v117;
  *v106 = v32;
  v39[1] = v33;
  v42 = v39;
  LOBYTE(v123) = 1;
  sub_1D6C048D8(&qword_1EDF45B08, MEMORY[0x1E6969530]);
  v43 = v116;
  sub_1D726427C();
  v113 = v34;
  v119 = v24;
  v44 = v115;
  v45 = *(v115 + 48);
  if (v45(v43, 1, v41) == 1)
  {
    v46 = v114;
    sub_1D725890C();
    v47 = v46;
    v48 = v42;
    if (v45(v43, 1, v41) != 1)
    {
      sub_1D5CF29A4(v43, sub_1D5B5B2A0);
    }
  }

  else
  {
    v47 = v114;
    (*(v44 + 32))(v114, v43, v41);
    v48 = v42;
  }

  (*(v44 + 32))(&v48[v40[5]], v47, v41);
  LOBYTE(v123) = 2;
  v116 = 0;
  v49 = sub_1D726422C();
  v50 = &v48[v40[6]];
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v123) = 3;
  v52 = sub_1D726422C();
  v53 = &v48[v40[7]];
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v123) = 4;
  v55 = sub_1D726422C();
  v56 = &v48[v40[8]];
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v123) = 5;
  v58 = sub_1D726422C();
  v59 = &v48[v40[9]];
  *v59 = v58;
  v59[1] = v60;
  LOBYTE(v123) = 6;
  v61 = sub_1D726422C();
  v62 = &v48[v40[10]];
  *v62 = v61;
  v62[1] = v63;
  sub_1D5C28BC0(0);
  v65 = v64;
  LOBYTE(v123) = 15;
  sub_1D6C048D8(&qword_1EDF43A40, sub_1D5C28BC0);
  v66 = v112;
  sub_1D726427C();
  v67 = *(v65 - 8);
  if ((*(v67 + 48))(v66, 1, v65) == 1)
  {
    sub_1D5CF29A4(v66, sub_1D6C03D40);
    v68 = 1;
    v69 = v111;
  }

  else
  {
    v70 = v66;
    v69 = v111;
    sub_1D725BF7C();
    (*(v67 + 8))(v70, v65);
    v68 = 0;
  }

  v71 = sub_1D72608BC();
  (*(*(v71 - 8) + 56))(v69, v68, 1, v71);
  sub_1D6C047F0(v69, &v48[v40[11]], sub_1D5B49800);
  sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v122 = 7;
  sub_1D5B997F0(&qword_1EDF3C830);
  v72 = v113;
  sub_1D726427C();
  v120 = 0;
  v73 = v123;
  v74 = MEMORY[0x1E69E7CC0];
  if (!v123)
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  *&v48[v40[12]] = v73;
  v122 = 8;
  v75 = v72;
  v76 = v120;
  sub_1D726427C();
  v120 = v76;
  if (!v76)
  {
    v83 = v123;
    if (!v123)
    {
      v83 = v74;
    }

    *(v106 + v105[13]) = v83;
    v122 = 9;
    v84 = v120;
    sub_1D726427C();
    v104 = v84 == 0;
    v120 = v84;
    if (v84)
    {
      goto LABEL_52;
    }

    v85 = v123;
    if (!v123)
    {
      v85 = v74;
    }

    *(v106 + v105[14]) = v85;
    v122 = 10;
    v86 = v120;
    sub_1D726427C();
    v120 = v86;
    if (v86)
    {
LABEL_52:
      (*(v118 + 8))(v119, v72);
      LODWORD(v116) = 0;
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      v77 = 0;
LABEL_53:
      __swift_destroy_boxed_opaque_existential_1(v121);

      LODWORD(v114) = 0;
      v82 = 1;
      LODWORD(v113) = 1;
      LODWORD(v112) = 1;
      LODWORD(v111) = 1;
      LODWORD(v110) = 1;
      goto LABEL_34;
    }

    v87 = v123;
    if (!v123)
    {
      v87 = v74;
    }

    *(v106 + v105[15]) = v87;
    v122 = 12;
    sub_1D674F538();
    v88 = v120;
    sub_1D726431C();
    v120 = v88;
    if (v88)
    {
      (*(v118 + 8))(v119, v72);
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      v77 = 0;
      LODWORD(v116) = 1;
      goto LABEL_53;
    }

    v89 = v123;
    *(v106 + v105[17]) = v123;
    sub_1D5B58388(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    v122 = 13;
    sub_1D6C03E64(&qword_1EDF3C910, sub_1D5B59CD8);
    v90 = v120;
    sub_1D726427C();
    v120 = v90;
    if (v90)
    {
      (*(v118 + 8))(v119, v75);
      LODWORD(v119) = 0;
      v77 = 0;
      LODWORD(v116) = 1;
      LODWORD(v118) = 1;
      goto LABEL_53;
    }

    v91 = v123;
    if (!v123)
    {
      v91 = v74;
    }

    *(v106 + v105[18]) = v91;
    sub_1D5B81B04();
    v122 = 14;
    sub_1D5CB5D1C(&qword_1EDF3C7D0);
    v92 = v120;
    sub_1D726427C();
    v120 = v92;
    if (v92)
    {
      (*(v118 + 8))(v119, v75);
      v77 = 0;
      LODWORD(v116) = 1;
      LODWORD(v118) = 1;
      LODWORD(v119) = 1;
      goto LABEL_53;
    }

    v93 = v123;
    if (!v123)
    {
      v93 = MEMORY[0x1E69E7CD0];
    }

    *(v106 + v105[19]) = v93;
    __swift_project_boxed_opaque_existential_1(v121, v121[3]);
    v94 = sub_1D7264AFC();
    v95 = Dictionary<>.bindingContent.getter(v94);

    if (v95)
    {
      *(v106 + v105[16]) = v74;
      if (*(v89 + 16))
      {
LABEL_68:
        (*(v118 + 8))(v119, v75);
        v96 = v106;
        sub_1D5CF2564(v106, v110, type metadata accessor for FormatContent);
        __swift_destroy_boxed_opaque_existential_1(v121);
        return sub_1D5CF29A4(v96, type metadata accessor for FormatContent);
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v121, v121[3]);
      sub_1D6C03CEC();
      v97 = v120;
      sub_1D7264B0C();
      v98 = v97;
      if (!v97)
      {
        sub_1D5E4C1F0(0);
        sub_1D6C048D8(qword_1EDF3CDD0, sub_1D5E4C1F0);
        sub_1D726427C();
        v120 = 0;
        v101 = v123;
        if (v123)
        {
          if (*(v123 + 16))
          {
            (*(v107 + 8))(v109, v108);
            *(v106 + v105[16]) = v101;
            if (*(v89 + 16))
            {
              goto LABEL_68;
            }

            goto LABEL_72;
          }
        }

        sub_1D5E4C26C();
        v98 = swift_allocError();
        *v102 = 1;
        swift_willThrow();
        (*(v107 + 8))(v109, v108);
      }

      sub_1D5B4A5A0(0);
      v122 = 11;
      sub_1D6C048D8(qword_1EDF3E280, sub_1D5B4A5A0);
      sub_1D726431C();
      v120 = 0;

      *(v106 + v105[16]) = v123;
      if (*(v89 + 16))
      {
        goto LABEL_68;
      }
    }

LABEL_72:
    sub_1D5E4C26C();
    v99 = swift_allocError();
    *v100 = 0;
    v120 = v99;
    swift_willThrow();
    (*(v118 + 8))(v119, v75);
    LODWORD(v110) = 1;
    LODWORD(v111) = 1;
    LODWORD(v112) = 1;
    LODWORD(v113) = 1;
    v77 = 1;
    goto LABEL_18;
  }

  (*(v118 + 8))(v119, v72);
  v77 = 0;
  LODWORD(v110) = 1;
  LODWORD(v111) = 1;
  LODWORD(v112) = 1;
  LODWORD(v113) = 1;
LABEL_18:
  v78 = v105;
  v79 = v106;
  v80 = v116;
  __swift_destroy_boxed_opaque_existential_1(v121);

  if (v80)
  {
    v81 = v77;
    LODWORD(v116) = v77;
    LODWORD(v114) = v77;
    LODWORD(v118) = v77;
    LODWORD(v119) = v77;
    LODWORD(v121) = v77;
    goto LABEL_20;
  }

  LODWORD(v119) = v77;
  LODWORD(v118) = v77;
  LODWORD(v114) = v77;
  LODWORD(v116) = v77;
  v104 = v77;
  v82 = v77;
LABEL_34:
  LODWORD(v121) = v77;
  v78 = v105;
  v79 = v106;
  (*(v115 + 8))(v106 + v105[5], v117);
  v77 = v82;
  v81 = v104;
LABEL_20:

  if (v110)
  {
  }

  if (v111)
  {

    if (v112)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (!v113)
    {
      goto LABEL_38;
    }

LABEL_25:

    if (v77)
    {
      goto LABEL_39;
    }

LABEL_26:
    if (!v81)
    {
      goto LABEL_40;
    }

LABEL_27:

    if (v116)
    {
      goto LABEL_41;
    }

LABEL_28:
    if (!v114)
    {
      goto LABEL_42;
    }

LABEL_29:

    if (v118)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (!v119)
    {
      goto LABEL_44;
    }

LABEL_31:

    if (v121)
    {
    }

    return result;
  }

  if (!v112)
  {
    goto LABEL_24;
  }

LABEL_37:
  result = sub_1D5CF29A4(v79 + v78[11], sub_1D5B49800);
  if (v113)
  {
    goto LABEL_25;
  }

LABEL_38:
  if (!v77)
  {
    goto LABEL_26;
  }

LABEL_39:

  if (v81)
  {
    goto LABEL_27;
  }

LABEL_40:
  if (!v116)
  {
    goto LABEL_28;
  }

LABEL_41:

  if (v114)
  {
    goto LABEL_29;
  }

LABEL_42:
  if (!v118)
  {
    goto LABEL_30;
  }

LABEL_43:

  if (v119)
  {
    goto LABEL_31;
  }

LABEL_44:
  if (v121)
  {
  }

  return result;
}

uint64_t FormatContent.encode(to:)(void *a1)
{
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C03D40(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C04230(0, &qword_1EDF027F8, sub_1D6C03D74, &type metadata for FormatContent.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C03D74();
  sub_1D7264B5C();
  LOBYTE(v29) = 0;
  v15 = v27;
  sub_1D72643FC();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v17 = v25;
  v18 = v26;
  v23 = a1;
  v24 = v11;
  v19 = type metadata accessor for FormatContent(0);
  v27 = v14;
  LOBYTE(v29) = 1;
  sub_1D725891C();
  sub_1D6C048D8(&qword_1EDF45B18, MEMORY[0x1E6969530]);
  sub_1D726443C();
  LOBYTE(v29) = 2;
  sub_1D726437C();
  LOBYTE(v29) = 3;
  sub_1D726437C();
  LOBYTE(v29) = 5;
  sub_1D726437C();
  LOBYTE(v29) = 6;
  sub_1D726437C();
  sub_1D5CF2564(v1 + v19[11], v18, sub_1D5B49800);
  Reference<A>.init(value:)(v18, v17);
  LOBYTE(v29) = 15;
  sub_1D5C28BC0(0);
  sub_1D6C048D8(&qword_1EDF17870, sub_1D5C28BC0);
  sub_1D72643BC();
  sub_1D5CF29A4(v17, sub_1D6C03D40);
  LOBYTE(v29) = 4;
  sub_1D726437C();
  v29 = *(v1 + v19[12]);
  v28 = 7;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90);
    sub_1D726443C();
  }

  v20 = v1;
  v29 = *(v1 + v19[13]);
  v28 = 8;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90);
    sub_1D726443C();
    v20 = v1;
  }

  v29 = *(v20 + v19[14]);
  v28 = 9;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[15]);
  v28 = 10;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B997F0(&qword_1EDF04A90);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[17]);
  v28 = 12;
  sub_1D5B595F0(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D674F428();
  sub_1D726443C();
  v29 = *(v1 + v19[18]);
  v28 = 13;
  if (*(v29 + 16))
  {
    sub_1D5B58388(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D6C03E64(&qword_1EDF05030, sub_1D5B59D2C);
    sub_1D726443C();
  }

  v29 = *(v1 + v19[19]);
  v28 = 14;
  if (*(v29 + 16))
  {
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0);
    sub_1D726443C();
  }

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v21 = sub_1D7264B4C();
  v22 = Dictionary<>.bindingContent.getter(v21);

  if ((v22 & 1) == 0)
  {
    v29 = *(v1 + v19[16]);
    v28 = 11;
    sub_1D5B4A5A0(0);
    sub_1D6C048D8(&qword_1EDF0A490, sub_1D5B4A5A0);

    sub_1D726443C();
  }

  return (*(v24 + 8))(v27, v10);
}

unint64_t sub_1D6BFECC8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x446873696C627570;
      break;
    case 2:
      result = 0x4449676174;
      break;
    case 3:
      result = 0x44496575737369;
      break;
    case 4:
      result = 0x49656C6369747261;
      break;
    case 5:
      result = 0x6465626D45626577;
      break;
    case 6:
      result = 0x4449657069636572;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974696E69666661;
      break;
    case 9:
      result = 0x6F7779654B644169;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x73656D656874;
      break;
    case 12:
      result = 0x70756F7267627573;
      break;
    case 13:
      result = 0x69747265706F7270;
      break;
    case 14:
      result = 0x726F7463656C6573;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6BFEE98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6BFECC8(*a1);
  v5 = v4;
  if (v3 == sub_1D6BFECC8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6BFEF20()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6BFECC8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BFEF84()
{
  sub_1D6BFECC8(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6BFEFD8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6BFECC8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BFF038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C040C0();
  *a1 = result;
  return result;
}

unint64_t sub_1D6BFF068@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6BFECC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6BFF0B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C040C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D6BFF0D8(uint64_t a1)
{
  v2 = sub_1D6C03D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BFF114(uint64_t a1)
{
  v2 = sub_1D6C03D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6BFF150()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BFF1BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BFF20C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6BFF294@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6BFF2EC(uint64_t a1)
{
  v2 = sub_1D6C03CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BFF328(uint64_t a1)
{
  v2 = sub_1D6C03CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContent.copy(sidecars:sidecarConfig:log:name:backingTag:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X8>)
{
  v267 = a6;
  v241 = a7;
  v12 = sub_1D725891C();
  v239 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v238 = &v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v237 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v234 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v236 = &v234 - v24;
  v25 = type metadata accessor for FormatContentSubgroup();
  v243 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v240 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v242 = &v234 - v30;
  v31 = type metadata accessor for FormatContentSidecarPlacement(0);
  v270 = *(v31 - 8);
  v271 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v252 = (&v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v251 = &v234 - v36;
  v248 = type metadata accessor for FeedGroupConfigSidecar();
  v37 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248, v38);
  v266 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v265 = &v234 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v268 = (&v234 - v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v234 - v48;
  v50 = *a2;
  sub_1D5B595F0(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v263 = v51;
  v52 = swift_allocObject();
  v254 = xmmword_1D7279970;
  *(v52 + 16) = xmmword_1D7279970;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1D5B7E2C0();
  v264 = a4;
  *(v52 + 32) = a4;
  *(v52 + 40) = a5;
  v54 = *(a1 + 16);
  v55 = MEMORY[0x1E69E6530];
  v56 = MEMORY[0x1E69E65A8];
  *(v52 + 96) = MEMORY[0x1E69E6530];
  *(v52 + 104) = v56;
  v262 = v53;
  *(v52 + 64) = v53;
  *(v52 + 72) = v54;
  v57 = *(v50 + 16);
  *(v52 + 136) = v55;
  *(v52 + 144) = v56;
  *(v52 + 112) = v57;

  sub_1D7262EDC();
  sub_1D725C30C();

  v247 = v50;
  v246 = *(v50 + 16);
  if (!v246 || !v54)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1D7273AE0;
    v75 = v262;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = v75;
    *(v74 + 32) = v264;
    *(v74 + 40) = a5;

    sub_1D7262EDC();
    goto LABEL_16;
  }

  v253 = a5;
  v234 = v21;
  v235 = v12;
  v249 = 0;
  v58 = *(v37 + 72);
  v255 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v59 = a1 + v255;
  v60 = MEMORY[0x1E69E7CC0];
  v259 = a3;
  v269 = v58;
  v61 = v265;
  do
  {
    sub_1D5CF2564(v59, v49, type metadata accessor for FeedGroupConfigSidecar);
    if (v267)
    {
      v62 = &v49[*(v248 + 20)];
      v63 = *&v62[*(type metadata accessor for FormatContent(0) + 52)];
      if (*(v63 + 16))
      {
        v64 = [swift_unknownObjectRetain() identifier];
        v65 = sub_1D726207C();
        v67 = v66;

        *&v272[0] = v65;
        *(&v272[0] + 1) = v67;
        MEMORY[0x1EEE9AC00](v68, v69);
        *(&v234 - 2) = v272;
        v70 = v249;
        v71 = sub_1D5BD0418(sub_1D5BD0538, (&v234 - 4), v63);
        v249 = v70;

        swift_unknownObjectRelease();
        if ((v71 & 1) == 0)
        {
          sub_1D5CF29A4(v49, type metadata accessor for FeedGroupConfigSidecar);
          a3 = v259;
          v58 = v269;
          v61 = v265;
          goto LABEL_5;
        }

        a3 = v259;
        v58 = v269;
        v61 = v265;
      }
    }

    sub_1D6C047F0(v49, v61, type metadata accessor for FeedGroupConfigSidecar);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v276 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6999F1C(0, *(v60 + 2) + 1, 1);
      v60 = v276;
    }

    v65 = *(v60 + 2);
    v73 = *(v60 + 3);
    if (v65 >= v73 >> 1)
    {
      sub_1D6999F1C(v73 > 1, v65 + 1, 1);
      v60 = v276;
    }

    *(v60 + 2) = v65 + 1;
    sub_1D6C047F0(v61, &v60[v255 + v65 * v58], type metadata accessor for FeedGroupConfigSidecar);
LABEL_5:
    v59 += v58;
    --v54;
  }

  while (v54);
  v267 = *(v60 + 2);
  if (v267)
  {
    v77 = 0;
    v78 = &v60[v255];
    v79 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v77 >= *(v60 + 2))
      {
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
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v81 = v268;
      sub_1D5CF2564(v78, v268, type metadata accessor for FeedGroupConfigSidecar);
      v82 = *v81;
      v83 = v81[1];
      if (v79[2] && (v84 = sub_1D5B69D90(*v81, v81[1]), (v85 & 1) != 0))
      {
        v65 = *(v79[7] + 8 * v84);
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5CF2564(v268, v266, type metadata accessor for FeedGroupConfigSidecar);
      v86 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1D6993070(0, *(v65 + 16) + 1, 1, v65);
      }

      v88 = *(v65 + 16);
      v87 = *(v65 + 24);
      if (v88 >= v87 >> 1)
      {
        v65 = sub_1D6993070(v87 > 1, v88 + 1, 1, v65);
      }

      *(v65 + 16) = v88 + 1;
      sub_1D6C047F0(v266, v65 + v255 + v88 * v269, type metadata accessor for FeedGroupConfigSidecar);
      v89 = v86;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *&v272[0] = v89;
      v91 = sub_1D5B69D90(v82, v83);
      v93 = v89[2];
      v94 = (v92 & 1) == 0;
      v95 = __OFADD__(v93, v94);
      v96 = v93 + v94;
      if (v95)
      {
        goto LABEL_125;
      }

      v97 = v92;
      if (v89[3] < v96)
      {
        break;
      }

      if (v90)
      {
        goto LABEL_35;
      }

      v103 = v91;
      sub_1D6D85E68();
      v91 = v103;
      a3 = v259;
      v99 = *&v272[0];
      if (v97)
      {
LABEL_19:
        *(v99[7] + 8 * v91) = v65;

        v79 = v99;
        goto LABEL_20;
      }

LABEL_36:
      v99[(v91 >> 6) + 8] |= 1 << v91;
      v100 = (v99[6] + 16 * v91);
      *v100 = v82;
      v100[1] = v83;
      *(v99[7] + 8 * v91) = v65;
      v101 = v99[2];
      v95 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v95)
      {
        goto LABEL_127;
      }

      v79 = v99;
      v99[2] = v102;

LABEL_20:
      ++v77;
      sub_1D5CF29A4(v268, type metadata accessor for FeedGroupConfigSidecar);
      v78 += v269;
      v80 = v253;
      if (v267 == v77)
      {
        goto LABEL_41;
      }
    }

    sub_1D6D747A8(v96, v90);
    v91 = sub_1D5B69D90(v82, v83);
    if ((v97 & 1) != (v98 & 1))
    {
      goto LABEL_130;
    }

LABEL_35:
    v99 = *&v272[0];
    if (v97)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  v79 = MEMORY[0x1E69E7CC8];
  v80 = v253;
LABEL_41:

  v104 = 0;
  v105 = MEMORY[0x1E69E7CC0];
  *&v272[0] = MEMORY[0x1E69E7CC0];
  v245 = v247 + 32;
  v260 = xmmword_1D7270C10;
  v261 = v79;
  while (2)
  {
    if (v104 >= *(v247 + 16))
    {
      goto LABEL_126;
    }

    v250 = v104;
    v107 = v245 + 32 * v104;
    v108 = *(v107 + 8);
    v268 = *v107;
    v109 = *(v107 + 16);
    LODWORD(v267) = *(v107 + 24);
    v110 = *(v109 + 16);

    v266 = v110;
    v111 = v105;
    if (!v110)
    {
LABEL_42:
      v106 = v250 + 1;

      v104 = v106;

      sub_1D6988A68(v111);
      v159 = v106 == v246;
      v105 = MEMORY[0x1E69E7CC0];
      if (!v159)
      {
        continue;
      }

      v141 = *&v272[0];
      v268 = *(*&v272[0] + 16);
      if (v268)
      {
        v142 = swift_allocObject();
        *(v142 + 16) = v260;
        v143 = v262;
        *(v142 + 56) = MEMORY[0x1E69E6158];
        *(v142 + 64) = v143;
        *(v142 + 32) = v264;
        *(v142 + 40) = v80;
        v144 = *(v141 + 16);
        *(v142 + 96) = MEMORY[0x1E69E6530];
        *(v142 + 104) = MEMORY[0x1E69E65A8];
        *(v142 + 72) = v144;

        sub_1D7262EDC();
        sub_1D725C30C();

        v145 = type metadata accessor for FormatContent(0);
        v276 = *(v244 + v145[17]);
        v275 = MEMORY[0x1E69E7CD0];
        v267 = v141 + ((*(v270 + 80) + 32) & ~*(v270 + 80));

        v146 = 0;
        v256 = v145;
        v266 = v141;
        while (1)
        {
          if (v146 >= *(v141 + 16))
          {
            goto LABEL_128;
          }

          v150 = *(v270 + 72);
          v269 = v146;
          sub_1D5CF2564(v267 + v150 * v146, v252, type metadata accessor for FormatContentSidecarPlacement);
          v151 = *(v276 + 2);
          if (v151)
          {
            v152 = 0;
            v153 = (*(v243 + 80) + 32) & ~*(v243 + 80);
            v154 = *(v243 + 72);
            v258 = v276;
            v155 = &v276[v153 + 8];
            while (1)
            {
              v156 = v252 + *(v271 + 20);
              v157 = *v156;
              v158 = *(v156 + 1);
              v159 = *(v155 - 1) == *v156 && *v155 == v158;
              if (v159)
              {
                break;
              }

              if (sub_1D72646CC())
              {
                goto LABEL_87;
              }

              ++v152;
              v155 += v154;
              if (v151 == v152)
              {
                goto LABEL_75;
              }
            }

            v157 = *(v155 - 1);
LABEL_87:
            v160 = *(v252 + *(v248 + 20) + v145[17]);
            v161 = MEMORY[0x1E69E7CC0];
            *&v272[0] = MEMORY[0x1E69E7CC0];
            v162 = *(v160 + 16);
            v257 = v160;
            if (v162)
            {
              v163 = v160 + v153;
              v164 = v242;
              do
              {
                sub_1D5CF2564(v163, v164, type metadata accessor for FormatContentSubgroup);
                v165 = sub_1D6B1F23C();
                sub_1D5CF29A4(v164, type metadata accessor for FormatContentSubgroup);
                sub_1D6985628(v165);
                v163 += v154;
                --v162;
              }

              while (v162);
              v166 = *&v272[0];
              v161 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v166 = MEMORY[0x1E69E7CC0];
            }

            v167 = 0;
            v168 = *(v166 + 16);
LABEL_93:
            v169 = 48 * v167;
            while (v168 != v167)
            {
              if (v167 >= *(v166 + 16))
              {
                goto LABEL_123;
              }

              ++v167;
              v170 = v169 + 48;
              v171 = v166 + v169;
              v172 = *(v171 + 72);
              v173 = *(v171 + 64);
              v272[0] = *(v171 + 32);
              v272[1] = *(v171 + 48);
              v273 = v173;
              v274 = v172;
              v174 = FormatContentRequirement.sidecarDedupeIdentifier.getter();
              v169 = v170;
              if (v175)
              {
                v261 = v175;
                v265 = v174;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v161 = sub_1D5B858EC(0, *(v161 + 2) + 1, 1, v161);
                }

                v177 = *(v161 + 2);
                v176 = *(v161 + 3);
                v178 = v265;
                v179 = v261;
                if (v177 >= v176 >> 1)
                {
                  v181 = sub_1D5B858EC((v176 > 1), v177 + 1, 1, v161);
                  v179 = v261;
                  v161 = v181;
                  v178 = v265;
                }

                *(v161 + 2) = v177 + 1;
                v180 = &v161[16 * v177];
                *(v180 + 4) = v178;
                *(v180 + 5) = v179;
                goto LABEL_93;
              }
            }

            v182 = sub_1D5B86020(v161);

            if (sub_1D670EDB8(v182, v275))
            {
              sub_1D5B886D0(v182);
              v183 = v156[24];
              v184 = swift_allocObject();
              *(v184 + 16) = v254;
              v185 = MEMORY[0x1E69E6158];
              v186 = v262;
              *(v184 + 56) = MEMORY[0x1E69E6158];
              *(v184 + 64) = v186;
              *(v184 + 32) = v264;
              *(v184 + 40) = v253;
              v187 = *v252;
              v188 = v252[1];
              *(v184 + 96) = v185;
              *(v184 + 104) = v186;
              *(v184 + 72) = v187;
              *(v184 + 80) = v188;
              *(v184 + 136) = v185;
              *(v184 + 144) = v186;
              *(v184 + 112) = v157;
              *(v184 + 120) = v158;

              v145 = v256;
              if (v183)
              {
                if (v183 == 1)
                {

                  sub_1D7262EDC();
                  sub_1D725C30C();

                  if (__OFADD__(v152, 1))
                  {
                    goto LABEL_129;
                  }

                  v189 = v258[2];
                  v190 = v257;

                  if ((v152 + 1) >= v189)
                  {
                    sub_1D6986D9C(v190);
                  }

                  else
                  {
                    sub_1D6C04138(v152 + 1, v152 + 1, v190);
                  }

                  goto LABEL_75;
                }

                sub_1D7262EDC();
                sub_1D725C30C();

                v191 = v240;
                sub_1D5EC2660(v152, v240);
                sub_1D5CF29A4(v191, type metadata accessor for FormatContentSubgroup);
                v192 = v257;
              }

              else
              {

                sub_1D7262EDC();
                sub_1D725C30C();

                v192 = v257;
              }

              sub_1D6C04138(v152, v152, v192);
            }

            else
            {

              v147 = swift_allocObject();
              *(v147 + 16) = v260;
              v148 = MEMORY[0x1E69E6158];
              v149 = v262;
              *(v147 + 56) = MEMORY[0x1E69E6158];
              *(v147 + 64) = v149;
              *(v147 + 32) = v264;
              *(v147 + 40) = v253;
              *(v147 + 96) = v148;
              *(v147 + 104) = v149;
              *(v147 + 72) = v157;
              *(v147 + 80) = v158;

              sub_1D7262EDC();
              sub_1D725C30C();

              v145 = v256;
            }
          }

LABEL_75:
          v146 = (v269 + 1);
          sub_1D5CF29A4(v252, type metadata accessor for FormatContentSidecarPlacement);
          v65 = v244;
          v141 = v266;
          if (v146 == v268)
          {

            v111 = sub_1D72608BC();
            v108 = *(v111 - 1);
            v110 = *(v108 + 56);
            v193 = v236;
            (v110)(v236, 1, 1, v111);
            v194 = *(v65 + 8);
            v264 = *v65;
            v265 = v276;
            v271 = v194;
            (*(v239 + 16))(v238, v65 + v145[5], v235);
            v195 = (v65 + v145[6]);
            v196 = *v195;
            v197 = v195[1];
            v198 = (v65 + v145[7]);
            v200 = *v198;
            v199 = v198[1];
            v262 = v196;
            v263 = v200;
            v269 = v197;
            v270 = v199;
            v201 = v145[9];
            v202 = (v65 + v145[8]);
            v204 = *v202;
            v203 = v202[1];
            v259 = v204;
            v266 = v203;
            v205 = *(v65 + v201 + 8);
            v261 = *(v65 + v201);
            v268 = v205;
            v206 = (v65 + v145[10]);
            v208 = *v206;
            v207 = v206[1];
            *&v260 = v208;
            v267 = v207;
            v80 = v237;
            sub_1D6C047F0(v193, v237, sub_1D5B49800);
            v209 = *(v108 + 48);
            if (v209(v80, 1, v111) != 1)
            {
              goto LABEL_119;
            }

            v210 = v234;
            sub_1D5CF2564(v65 + v145[11], v234, sub_1D5B49800);
            v211 = v209(v80, 1, v111);

            if (v211 != 1)
            {
              sub_1D5CF29A4(v80, sub_1D5B49800);
            }

            goto LABEL_120;
          }
        }
      }

      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_1D7273AE0;
      v213 = v262;
      *(v212 + 56) = MEMORY[0x1E69E6158];
      *(v212 + 64) = v213;
      *(v212 + 32) = v264;
      *(v212 + 40) = v80;

      sub_1D7262EDC();
LABEL_16:
      sub_1D725C30C();

      return sub_1D5CF2564(v244, v241, type metadata accessor for FormatContent);
    }

    break;
  }

  v112 = 0;
  v265 = (v109 + 32);
  while (v112 < *(v109 + 16))
  {
    v113 = &v265[16 * v112];
    v115 = *v113;
    v114 = v113[1];
    v116 = v79[2];

    if (!v116 || (v117 = sub_1D5B69D90(v115, v114), (v118 & 1) == 0))
    {
      v131 = swift_allocObject();
      *(v131 + 16) = v260;
      v132 = MEMORY[0x1E69E6158];
      v133 = v262;
      *(v131 + 56) = MEMORY[0x1E69E6158];
      *(v131 + 64) = v133;
      *(v131 + 32) = v264;
      *(v131 + 40) = v80;
      *(v131 + 96) = v132;
      *(v131 + 104) = v133;
      *(v131 + 72) = v115;
      *(v131 + 80) = v114;

      sub_1D7262EDC();
      v140 = a3;
      sub_1D725C30C();
LABEL_58:

      v110 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

    v119 = *(v79[7] + 8 * v117);
    v120 = swift_allocObject();
    *(v120 + 16) = v254;
    v121 = MEMORY[0x1E69E6158];
    v122 = v262;
    *(v120 + 56) = MEMORY[0x1E69E6158];
    *(v120 + 64) = v122;
    *(v120 + 32) = v264;
    *(v120 + 40) = v80;
    v123 = *(v119 + 16);
    *(v120 + 96) = MEMORY[0x1E69E6530];
    *(v120 + 104) = MEMORY[0x1E69E65A8];
    *(v120 + 112) = v115;
    *(v120 + 72) = v123;
    *(v120 + 136) = v121;
    *(v120 + 144) = v122;
    v124 = v119;
    v125 = v259;
    *(v120 + 120) = v114;

    sub_1D7262EDC();
    sub_1D725C30C();

    if (!v123)
    {
      v140 = v125;
      goto LABEL_58;
    }

    v257 = v114;
    v258 = v111;
    v276 = MEMORY[0x1E69E7CC0];
    sub_1D6999F6C(0, v123, 0);
    v110 = v276;
    v256 = v124;
    v126 = v124 + v255;
    v127 = v251;
    do
    {
      sub_1D5CF2564(v126, v127, type metadata accessor for FeedGroupConfigSidecar);
      v128 = v127 + *(v271 + 20);
      *v128 = v268;
      *(v128 + 8) = v108;
      *(v128 + 16) = v109;
      *(v128 + 24) = v267;
      v276 = v110;
      v130 = *(v110 + 16);
      v129 = *(v110 + 24);

      if (v130 >= v129 >> 1)
      {
        sub_1D6999F6C(v129 > 1, v130 + 1, 1);
        v110 = v276;
      }

      *(v110 + 16) = v130 + 1;
      sub_1D6C047F0(v127, v110 + ((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v130, type metadata accessor for FormatContentSidecarPlacement);
      v126 += v269;
      --v123;
    }

    while (v123);

    v140 = v259;
    v80 = v253;
    v111 = v258;
LABEL_59:
    v65 = *(v110 + 16);
    v134 = v111[2];
    v135 = v134 + v65;
    if (__OFADD__(v134, v65))
    {
      goto LABEL_117;
    }

    v136 = swift_isUniquelyReferenced_nonNull_native();
    if (!v136 || v135 > v111[3] >> 1)
    {
      if (v134 <= v135)
      {
        v137 = v134 + v65;
      }

      else
      {
        v137 = v134;
      }

      v111 = sub_1D6996050(v136, v137, 1, v111);
    }

    v79 = v261;
    a3 = v140;
    if (*(v110 + 16))
    {
      if ((v111[3] >> 1) - v111[2] < v65)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      swift_arrayInitWithCopy();

      if (v65)
      {
        v138 = v111[2];
        v95 = __OFADD__(v138, v65);
        v139 = v138 + v65;
        if (v95)
        {
          goto LABEL_122;
        }

        v111[2] = v139;
      }
    }

    else
    {

      if (v65)
      {
        goto LABEL_118;
      }
    }

    if (++v112 == v266)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  v210 = v234;
  (*(v108 + 32))(v234, v80, v111);
  (v110)(v210, 0, 1, v111);

LABEL_120:
  v214 = v256;
  v215 = *(v65 + v256[12]);
  v216 = *(v65 + v256[13]);
  v217 = *(v65 + v256[14]);
  v218 = *(v65 + v256[15]);
  v219 = *(v65 + v256[16]);
  v220 = *(v65 + v256[18]);
  v221 = *(v65 + v256[19]);
  v222 = v241;
  v223 = v271;
  *v241 = v264;
  *(v222 + 1) = v223;
  (*(v239 + 32))(&v222[v214[5]], v238, v235);
  v224 = &v222[v214[6]];
  v225 = v269;
  *v224 = v262;
  v224[1] = v225;
  v226 = &v222[v214[7]];
  v227 = v270;
  *v226 = v263;
  *(v226 + 1) = v227;
  v228 = &v222[v214[8]];
  v229 = v266;
  *v228 = v259;
  *(v228 + 1) = v229;
  v230 = &v222[v214[9]];
  v231 = v268;
  *v230 = v261;
  *(v230 + 1) = v231;
  v232 = &v222[v214[10]];
  v233 = v267;
  *v232 = v260;
  *(v232 + 1) = v233;
  sub_1D6C047F0(v210, &v222[v214[11]], sub_1D5B49800);
  *&v222[v214[12]] = v215;
  *&v222[v214[13]] = v216;
  *&v222[v214[14]] = v217;
  *&v222[v214[15]] = v218;
  *&v222[v214[16]] = v219;
  *&v222[v214[17]] = v265;
  *&v222[v214[18]] = v220;
  *&v222[v214[19]] = v221;
}

uint64_t FormatContent.expand(placeholder:placeholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v145 = a3;
  v137 = a4;
  v7 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v7, v8);
  v169 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatContentSlotItem();
  v154 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1D725891C();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v14);
  v139 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v133 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v135 = &v132 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v132 = &v132 - v24;
  v25 = type metadata accessor for FormatContentSubgroup();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v160 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FormatContent(0);
  v134 = result;
  v30 = *(result + 68);
  v136 = v4;
  v31 = *(v4 + v30);
  v138 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
  v151 = *(v31 + 16);
  if (v151)
  {
    v32 = 0;
    v146 = 0;
    v150 = *(v25 + 32);
    v144 = *(v26 + 80);
    v143 = (v144 + 32) & ~v144;
    v149 = v31 + v143;
    v142 = xmmword_1D7273AE0;
    v155 = a1;
    v156 = a2;
    v33 = v160;
    v148 = v26;
    v147 = v31;
    while (v32 < *(v31 + 16))
    {
      v38 = *(v26 + 72);
      v153 = v32;
      v152 = v38;
      result = sub_1D5CF2564(v149 + v38 * v32, v33, type metadata accessor for FormatContentSubgroup);
      v39 = *(v33 + v150);
      v159 = *(v39 + 16);
      if (v159)
      {
        v40 = 0;
        v158 = v39 + 32;
        v41 = MEMORY[0x1E69E7CC0];
        v157 = v39;
        while (v40 < *(v39 + 16))
        {
          v167 = v40;
          v43 = (v158 + 48 * v40);
          v44 = v43[4];
          v45 = *(v44 + 16);
          if (v45)
          {
            v166 = v41;
            v46 = v43[2];
            v47 = v43[3];
            v48 = v43[5];
            v49 = v154;
            v50 = v44 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
            v164 = v43[1];

            v163 = v46;

            v162 = v47;

            v165 = v44;
            swift_bridgeObjectRetain_n();
            v161 = v48;

            v51 = *(v49 + 72);
            v52 = MEMORY[0x1E69E7CC0];
            v53 = v169;
            v168 = v51;
            do
            {
              sub_1D5CF2564(v50, v13, type metadata accessor for FormatContentSlotItem);
              sub_1D5CF2564(v13, v53, type metadata accessor for FormatContentSlotItemObject);
              sub_1D5CF29A4(v13, type metadata accessor for FormatContentSlotItem);
              if (swift_getEnumCaseMultiPayload() == 11)
              {
                v54 = v13;
                v55 = v7;
                v56 = *v53;
                v57 = *(v53 + 8);
                v58 = *(v53 + 16);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v52 = sub_1D5D55EC4(0, *(v52 + 2) + 1, 1, v52);
                }

                v60 = *(v52 + 2);
                v59 = *(v52 + 3);
                if (v60 >= v59 >> 1)
                {
                  v52 = sub_1D5D55EC4((v59 > 1), v60 + 1, 1, v52);
                }

                *(v52 + 2) = v60 + 1;
                v61 = &v52[24 * v60];
                *(v61 + 4) = v56;
                *(v61 + 5) = v57;
                v61[48] = v58;
                v7 = v55;
                v51 = v168;
                v53 = v169;
                v13 = v54;
              }

              else
              {
                sub_1D5CF29A4(v53, type metadata accessor for FormatContentSlotItemObject);
              }

              v50 += v51;
              --v45;
            }

            while (v45);

            result = swift_bridgeObjectRelease_n();
            a1 = v155;
            a2 = v156;
            v41 = v166;
          }

          else
          {
            v52 = MEMORY[0x1E69E7CC0];
          }

          v62 = *(v52 + 2);
          v63 = *(v41 + 16);
          v64 = v63 + v62;
          if (__OFADD__(v63, v62))
          {
            goto LABEL_52;
          }

          v65 = v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          v66 = v65;
          if ((result & 1) == 0 || v64 > *(v65 + 24) >> 1)
          {
            if (v63 <= v64)
            {
              v67 = v63 + v62;
            }

            else
            {
              v67 = v63;
            }

            result = sub_1D5D55EC4(result, v67, 1, v65);
            v66 = result;
          }

          v33 = v160;
          if (*(v52 + 2))
          {
            if ((*(v66 + 24) >> 1) - *(v66 + 16) < v62)
            {
              goto LABEL_54;
            }

            v68 = v66;
            swift_arrayInitWithCopy();

            v41 = v68;
            if (v62)
            {
              v69 = *(v68 + 16);
              v70 = __OFADD__(v69, v62);
              v71 = v69 + v62;
              if (v70)
              {
                goto LABEL_55;
              }

              *(v68 + 16) = v71;
            }
          }

          else
          {
            v42 = v66;

            v41 = v42;
            if (v62)
            {
              goto LABEL_53;
            }
          }

          v40 = v167 + 1;
          v39 = v157;
          if (v167 + 1 == v159)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

      v41 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v72 = *(v41 + 16);
      if (v72)
      {
        v170 = MEMORY[0x1E69E7CC0];
        v73 = v41;
        sub_1D5BFC364(0, v72, 0);
        v74 = v170;
        v166 = v73;
        v75 = (v73 + 40);
        do
        {
          v77 = *(v75 - 1);
          v76 = *v75;
          v170 = v74;
          v79 = *(v74 + 16);
          v78 = *(v74 + 24);

          if (v79 >= v78 >> 1)
          {
            sub_1D5BFC364((v78 > 1), v79 + 1, 1);
            v74 = v170;
          }

          *(v74 + 16) = v79 + 1;
          v80 = v74 + 16 * v79;
          *(v80 + 32) = v77;
          *(v80 + 40) = v76;
          v75 += 3;
          --v72;
        }

        while (v72);

        a1 = v155;
        a2 = v156;
        v33 = v160;
      }

      else
      {

        v74 = MEMORY[0x1E69E7CC0];
      }

      v81 = sub_1D5B86020(v74);

      v82 = sub_1D5BE240C(a1, a2, v81);

      if (v82)
      {
        MEMORY[0x1EEE9AC00](v83, v84);
        *(&v132 - 4) = v160;
        *(&v132 - 3) = a1;
        *(&v132 - 2) = a2;
        v85 = v146;
        v35 = sub_1D5ECD348(sub_1D6C0420C, (&v132 - 6), v145);
        v146 = v85;
        v33 = v160;
      }

      else
      {
        sub_1D5B595F0(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
        v34 = v143;
        v35 = swift_allocObject();
        *(v35 + 16) = v142;
        sub_1D5CF2564(v33, v35 + v34, type metadata accessor for FormatContentSubgroup);
      }

      v36 = v153 + 1;
      sub_1D5CF29A4(v33, type metadata accessor for FormatContentSubgroup);
      result = sub_1D6986D9C(v35);
      v32 = v36;
      v37 = v36 == v151;
      v26 = v148;
      v31 = v147;
      if (v37)
      {
        v138 = v171;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    v86 = sub_1D72608BC();
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v132;
    v88(v132, 1, 1, v86);
    v90 = v136;
    v91 = v136[1];
    v163 = *v136;
    v169 = v91;
    v92 = v134;
    (*(v140 + 16))(v139, v136 + v134[5], v141);
    v93 = (v90 + v92[6]);
    v94 = *v93;
    v95 = v93[1];
    v96 = (v90 + v92[7]);
    v98 = *v96;
    v97 = v96[1];
    v161 = v94;
    v162 = v98;
    v167 = v95;
    v168 = v97;
    v99 = (v90 + v92[8]);
    v100 = *v99;
    v101 = v99[1];
    v102 = (v90 + v92[9]);
    v104 = *v102;
    v103 = v102[1];
    v160 = v104;
    v166 = v103;
    v105 = (v90 + v92[10]);
    v107 = *v105;
    v106 = v105[1];
    v158 = v100;
    v159 = v107;
    v164 = v101;
    v165 = v106;
    v108 = v133;
    sub_1D6C047F0(v89, v133, sub_1D5B49800);
    v109 = *(v87 + 48);
    if (v109(v108, 1, v86) == 1)
    {
      v110 = v135;
      sub_1D5CF2564(v90 + v92[11], v135, sub_1D5B49800);
      v111 = v109(v108, 1, v86);

      if (v111 != 1)
      {
        sub_1D5CF29A4(v108, sub_1D5B49800);
      }
    }

    else
    {
      v110 = v135;
      (*(v87 + 32))(v135, v108, v86);
      v88(v110, 0, 1, v86);
    }

    v112 = *(v90 + v92[12]);
    v113 = *(v90 + v92[13]);
    v114 = v92;
    v115 = *(v90 + v92[14]);
    v116 = *(v90 + v92[15]);
    v117 = *(v90 + v114[16]);
    v118 = *(v90 + v114[18]);
    v119 = *(v90 + v114[19]);
    v120 = v137;
    v121 = v169;
    *v137 = v163;
    *(v120 + 1) = v121;
    (*(v140 + 32))(&v120[v114[5]], v139, v141);
    v122 = &v120[v114[6]];
    v123 = v167;
    *v122 = v161;
    *(v122 + 1) = v123;
    v124 = &v120[v114[7]];
    v125 = v168;
    *v124 = v162;
    *(v124 + 1) = v125;
    v126 = &v120[v114[8]];
    v127 = v164;
    *v126 = v158;
    *(v126 + 1) = v127;
    v128 = &v120[v114[9]];
    v129 = v166;
    *v128 = v160;
    v128[1] = v129;
    v130 = &v120[v114[10]];
    v131 = v165;
    *v130 = v159;
    *(v130 + 1) = v131;
    sub_1D6C047F0(v110, &v120[v114[11]], sub_1D5B49800);
    *&v120[v114[12]] = v112;
    *&v120[v114[13]] = v113;
    *&v120[v114[14]] = v115;
    *&v120[v114[15]] = v116;
    *&v120[v114[16]] = v117;
    *&v120[v114[17]] = v138;
    *&v120[v114[18]] = v118;
    *&v120[v114[19]] = v119;
  }

  return result;
}

uint64_t sub_1D6C01AE8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v113 = a3;
  v114 = a4;
  v95 = a5;
  v110 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v110, v7);
  v109 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v86 - v11;
  v108 = type metadata accessor for FormatContentSlotItem();
  v96 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v116 = (&v86 - v17);
  sub_1D6C04230(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v93 = &v86 - v20;
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v86 - v23;
  v26 = *a1;
  v25 = a1[1];
  v27 = a2[1];
  v118 = *a2;
  v119 = v27;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v111 = v25;
  v112 = v26;
  MEMORY[0x1DA6F9910](v26, v25);
  v90 = v118;
  v89 = v119;
  v28 = type metadata accessor for FormatContentSubgroup();
  v29 = a2 + v28[5];
  v92 = v24;
  sub_1D6C04298(v29, v24);
  v30 = *(a2 + v28[6]);
  v31 = *(a2 + v28[7]);
  v91 = v28;
  v32 = v28[8];
  v94 = a2;
  v33 = *(a2 + v32);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v118 = MEMORY[0x1E69E7CC0];
    v87 = v30;

    v88 = v31;

    result = sub_1D69975FC(0, v34, 0);
    v37 = 0;
    v38 = v118;
    v97 = v33 + 32;
    v115 = v14;
    v99 = v33;
    v98 = v34;
    while (v37 < *(v33 + 16))
    {
      v104 = v37;
      v105 = v38;
      v39 = (v97 + 48 * v37);
      v40 = *v39;
      v102 = v39[1];
      v103 = v40;
      v41 = v39[2];
      v42 = v39[3];
      v44 = v39[4];
      v43 = v39[5];
      v45 = *(v41 + 16);
      v106 = v44;
      v107 = v42;
      v100 = v41;
      v101 = v43;
      if (v45)
      {
        v120 = v35;
        swift_bridgeObjectRetain_n();

        sub_1D69988B8(0, v45, 0);
        v46 = v120;
        v47 = (v41 + 48);
        do
        {
          v49 = *(v47 - 2);
          v48 = *(v47 - 1);
          v50 = *v47;
          if (~*v47 & 0xF000000000000007) == 0 && (v49 == v113 ? (v51 = v48 == v114) : (v51 = 0), v51 || (sub_1D72646CC()))
          {
            v48 = v111;

            v50 = 0xF000000000000007;
            v49 = v112;
          }

          else
          {

            sub_1D5CFCFAC(v50);
          }

          v120 = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1D69988B8((v52 > 1), v53 + 1, 1);
            v46 = v120;
          }

          v47 += 3;
          *(v46 + 16) = v53 + 1;
          v54 = (v46 + 24 * v53);
          v54[4] = v49;
          v54[5] = v48;
          v54[6] = v50;
          --v45;
          v14 = v115;
        }

        while (v45);
        v35 = MEMORY[0x1E69E7CC0];
        v44 = v106;
        v42 = v107;
        v55 = *(v106 + 16);
        if (v55)
        {
LABEL_18:
          v120 = v35;

          sub_1D69988E8(0, v55, 0);
          v56 = v120;
          v57 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v58 = v44 + v57;
          v59 = *(v96 + 72);
          while (1)
          {
            sub_1D5CF2564(v58, v14, type metadata accessor for FormatContentSlotItem);
            sub_1D5CF2564(v14, v117, type metadata accessor for FormatContentSlotItemObject);
            if (swift_getEnumCaseMultiPayload() != 11)
            {
              goto LABEL_27;
            }

            v60 = v109;
            sub_1D5CF2564(v117, v109, type metadata accessor for FormatContentSlotItemObject);
            v61 = *v60;
            v62 = *(v60 + 8);
            v63 = *(v60 + 16);
            v64 = v61 == v113 && v62 == v114;
            if (!v64 && (sub_1D72646CC() & 1) == 0)
            {
              break;
            }

            sub_1D5CF29A4(v14, type metadata accessor for FormatContentSlotItem);
            v65 = v111;

            v66 = v116;
            *v116 = v112;
            v66[1] = v65;
            *(v66 + 16) = v63;
            swift_storeEnumTagMultiPayload();
            v67 = (v66 + *(v108 + 20));
            *v67 = 0;
            v67[1] = 0;
LABEL_28:
            sub_1D5CF29A4(v117, type metadata accessor for FormatContentSlotItemObject);
            v120 = v56;
            v69 = *(v56 + 16);
            v68 = *(v56 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_1D69988E8(v68 > 1, v69 + 1, 1);
              v56 = v120;
            }

            *(v56 + 16) = v69 + 1;
            sub_1D6C047F0(v116, v56 + v57 + v69 * v59, type metadata accessor for FormatContentSlotItem);
            v58 += v59;
            --v55;
            v14 = v115;
            if (!v55)
            {
              v35 = MEMORY[0x1E69E7CC0];
              v42 = v107;
              goto LABEL_34;
            }
          }

LABEL_27:
          sub_1D6C047F0(v14, v116, type metadata accessor for FormatContentSlotItem);
          goto LABEL_28;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v46 = v35;
        v55 = *(v44 + 16);
        if (v55)
        {
          goto LABEL_18;
        }
      }

      v56 = v35;
LABEL_34:

      v70 = v102;

      v38 = v105;
      v118 = v105;
      v72 = *(v105 + 16);
      v71 = *(v105 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_1D69975FC((v71 > 1), v72 + 1, 1);
        v38 = v118;
      }

      v73 = v103;
      v37 = v104 + 1;
      *(v38 + 16) = v72 + 1;
      v74 = (v38 + 48 * v72);
      v74[4] = v73;
      v74[5] = v70;
      v74[6] = v46;
      v74[7] = v42;
      v75 = v101;
      v74[8] = v56;
      v74[9] = v75;
      v33 = v99;
      if (v37 == v98)
      {
        v76 = v88;
        v77 = v87;
        v78 = v38;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {
    v77 = v30;

    v78 = MEMORY[0x1E69E7CC0];
    v76 = v31;
LABEL_39:
    v79 = v91;
    v80 = v94;
    v81 = *(v94 + v91[9]);
    v82 = v93;
    sub_1D5D3A074(v94 + v91[10], v93);
    v83 = v95;
    sub_1D6C047F0(v82, v95 + v79[10], type metadata accessor for FormatMetadata);
    v84 = *(v80 + v79[11]);
    v85 = v89;
    *v83 = v90;
    v83[1] = v85;
    sub_1D6C04858(v92, v83 + v79[5]);
    *(v83 + v79[6]) = v77;
    *(v83 + v79[7]) = v76;
    *(v83 + v79[9]) = v81;
    *(v83 + v79[8]) = v78;
    *(v83 + v79[12]) = v35;
    *(v83 + v79[11]) = v84;
  }

  return result;
}

uint64_t FormatContent.expandAsSections(placeholder:placeholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v135 = a3;
  v130 = a4;
  v133 = sub_1D725891C();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v7);
  v131 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v128 = &v124 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v125 = &v124 - v17;
  sub_1D6C04230(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v134 = &v124 - v20;
  v145 = type metadata accessor for FormatContentSubgroup();
  v21 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v22);
  v24 = (&v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v26);
  v148 = (&v124 - v27);
  v127 = type metadata accessor for FormatContent(0);
  v28 = *(v127 + 68);
  v129 = v4;
  v29 = *(v4 + v28);
  v30 = *(v29 + 16);
  if (!v30)
  {
    v149 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v155 = MEMORY[0x1E69E7CC0];
  result = sub_1D69975AC(0, v30, 0);
  v32 = 0;
  v138 = 0;
  v33 = v155;
  v137 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v143 = a2;
  v144 = v29 + v137;
  v141 = v21;
  v142 = a1;
  v150 = v24;
  v139 = v30;
  v140 = v29;
  while (1)
  {
    if (v32 >= *(v29 + 16))
    {
      goto LABEL_48;
    }

    v149 = v33;
    v146 = *(v21 + 72);
    v147 = v32;
    result = sub_1D5CF2564(v144 + v146 * v32, v24, type metadata accessor for FormatContentSubgroup);
    v34 = *(v24 + *(v145 + 32));
    v35 = *(v34 + 16);
    if (v35)
    {
      break;
    }

    v38 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v50 = *(v39 + 16);
    if (v50)
    {
      v151 = v38;
      sub_1D5BFC364(0, v50, 0);
      v51 = v151;
      v52 = (v39 + 40);
      do
      {
        v54 = *(v52 - 1);
        v53 = *v52;
        v151 = v51;
        v55 = *(v51 + 16);
        v56 = *(v51 + 24);

        if (v55 >= v56 >> 1)
        {
          sub_1D5BFC364((v56 > 1), v55 + 1, 1);
          v51 = v151;
        }

        *(v51 + 16) = v55 + 1;
        v57 = v51 + 16 * v55;
        *(v57 + 32) = v54;
        *(v57 + 40) = v53;
        v52 += 3;
        --v50;
      }

      while (v50);
    }

    else
    {

      v51 = v38;
    }

    v58 = sub_1D5B86020(v51);

    v59 = v142;
    v60 = v143;
    v61 = sub_1D5BE240C(v142, v143, v58);

    v24 = v150;
    if (v61)
    {
      v62 = v150[1];
      v136 = *v150;
      v63 = v145;
      v64 = v148;
      v65 = sub_1D6C04298(v150 + *(v145 + 20), v148 + *(v145 + 20));
      v66 = *(v24 + v63[6]);
      v67 = *(v24 + v63[7]);
      MEMORY[0x1EEE9AC00](v65, v68);
      *(&v124 - 4) = v24;
      *(&v124 - 3) = v59;
      *(&v124 - 2) = v60;

      v69 = v138;
      v70 = sub_1D5ECD578(sub_1D6C04318, (&v124 - 6), v135);
      v138 = v69;
      v71 = *(v150 + v63[9]);
      v72 = v134;
      sub_1D5D3A074(v150 + v63[10], v134);
      sub_1D6C047F0(v72, v64 + v63[10], type metadata accessor for FormatMetadata);
      v73 = *(v150 + v63[11]);
      *v64 = v136;
      v64[1] = v62;
      *(v64 + v63[6]) = v66;
      *(v64 + v63[7]) = v67;
      *(v64 + v63[9]) = v71;
      *(v64 + v63[8]) = MEMORY[0x1E69E7CC0];
      *(v64 + v63[12]) = v70;
      *(v64 + v63[11]) = v73;
      v24 = v150;
    }

    else
    {
      sub_1D5CF2564(v150, v148, type metadata accessor for FormatContentSubgroup);
    }

    v33 = v149;
    v29 = v140;
    v21 = v141;
    v74 = v139;
    sub_1D5CF29A4(v24, type metadata accessor for FormatContentSubgroup);
    v155 = v33;
    v76 = *(v33 + 16);
    v75 = *(v33 + 24);
    if (v76 >= v75 >> 1)
    {
      sub_1D69975AC(v75 > 1, v76 + 1, 1);
      v33 = v155;
    }

    v77 = v146;
    v78 = v147 + 1;
    *(v33 + 16) = v76 + 1;
    v32 = v78;
    result = sub_1D6C047F0(v148, v33 + v137 + v76 * v77, type metadata accessor for FormatContentSubgroup);
    if (v32 == v74)
    {
      v149 = v33;
LABEL_38:
      v79 = sub_1D72608BC();
      v80 = *(v79 - 8);
      v81 = *(v80 + 56);
      v82 = v125;
      v81(v125, 1, 1, v79);
      v83 = v129;
      v84 = v129[1];
      v143 = *v129;
      v148 = v84;
      v85 = v127;
      (*(v132 + 16))(v131, v129 + *(v127 + 20), v133);
      v86 = (v83 + v85[6]);
      v87 = *v86;
      v88 = v86[1];
      v89 = (v83 + v85[7]);
      v91 = *v89;
      v90 = v89[1];
      v141 = v87;
      v142 = v91;
      v150 = v90;
      v92 = v85[9];
      v93 = (v83 + v85[8]);
      v94 = *v93;
      v144 = v93[1];
      v95 = *(v83 + v92 + 8);
      v140 = *(v83 + v92);
      v146 = v95;
      v147 = v88;
      v96 = (v83 + v85[10]);
      v98 = *v96;
      v97 = v96[1];
      v138 = v94;
      v139 = v98;
      v145 = v97;
      v99 = v126;
      sub_1D6C047F0(v82, v126, sub_1D5B49800);
      v100 = *(v80 + 48);
      if (v100(v99, 1, v79) == 1)
      {
        v101 = v128;
        sub_1D5CF2564(v83 + v85[11], v128, sub_1D5B49800);
        v102 = v100(v99, 1, v79);

        if (v102 != 1)
        {
          sub_1D5CF29A4(v99, sub_1D5B49800);
        }
      }

      else
      {
        v101 = v128;
        (*(v80 + 32))(v128, v99, v79);
        v81(v101, 0, 1, v79);
      }

      v103 = *(v83 + v85[12]);
      v104 = v85;
      v105 = *(v83 + v85[13]);
      v106 = *(v83 + v85[14]);
      v107 = *(v83 + v85[15]);
      v108 = *(v83 + v85[16]);
      v109 = v85[19];
      v110 = *(v83 + v85[18]);
      v111 = *(v83 + v109);
      v112 = v130;
      v113 = v148;
      *v130 = v143;
      *(v112 + 1) = v113;
      (*(v132 + 32))(&v112[v104[5]], v131, v133);
      v114 = &v112[v104[6]];
      v115 = v147;
      *v114 = v141;
      *(v114 + 1) = v115;
      v116 = &v112[v104[7]];
      v117 = v150;
      *v116 = v142;
      *(v116 + 1) = v117;
      v118 = &v112[v104[8]];
      v119 = v144;
      *v118 = v138;
      *(v118 + 1) = v119;
      v120 = &v112[v104[9]];
      v121 = v146;
      *v120 = v140;
      *(v120 + 1) = v121;
      v122 = &v112[v104[10]];
      v123 = v145;
      *v122 = v139;
      v122[1] = v123;
      sub_1D6C047F0(v101, &v112[v104[11]], sub_1D5B49800);
      *&v112[v104[12]] = v103;
      *&v112[v104[13]] = v105;
      *&v112[v104[14]] = v106;
      *&v112[v104[15]] = v107;
      *&v112[v104[16]] = v108;
      *&v112[v104[17]] = v149;
      *&v112[v104[18]] = v110;
      *&v112[v104[19]] = v111;
    }
  }

  v36 = 0;
  v37 = (v34 + 40);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  while (v36 < *(v34 + 16))
  {
    v40 = *(v37 + 4);
    v151 = *(v37 - 1);
    v41 = v37[1];
    v152 = *v37;
    v153 = v41;
    v154 = v40;
    result = sub_1D6F10964();
    v42 = *(result + 16);
    v43 = *(v39 + 16);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_44;
    }

    v45 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v44 <= *(v39 + 24) >> 1)
    {
      if (*(v45 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v46 = v43 + v42;
      }

      else
      {
        v46 = v43;
      }

      result = sub_1D5D55EC4(result, v46, 1, v39);
      v39 = result;
      if (*(v45 + 16))
      {
LABEL_18:
        if ((*(v39 + 24) >> 1) - *(v39 + 16) < v42)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v47 = *(v39 + 16);
          v48 = __OFADD__(v47, v42);
          v49 = v47 + v42;
          if (v48)
          {
            goto LABEL_47;
          }

          *(v39 + 16) = v49;
        }

        goto LABEL_7;
      }
    }

    if (v42)
    {
      goto LABEL_45;
    }

LABEL_7:
    ++v36;
    v37 += 3;
    if (v35 == v36)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1D6C02F14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v94 = a3;
  v95 = a4;
  v74 = a5;
  v88 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v88, v7);
  v89 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v90 = &v72 - v11;
  v87 = type metadata accessor for FormatContentSlotItem();
  v75 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v12);
  v96 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v97 = (&v72 - v16);
  v17 = sub_1D725895C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v91 = a1[1];
  v92 = v22;
  v23 = a2[1];
  v98 = *a2;
  v99 = v23;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  sub_1D725894C();
  v24 = sub_1D725893C();
  v26 = v25;
  (*(v18 + 8))(v21, v17);
  MEMORY[0x1DA6F9910](v24, v26);

  v27 = v98;
  v28 = v99;
  result = type metadata accessor for FormatContentSubgroup();
  v30 = *(a2 + *(result + 32));
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v72 = v28;
    v73 = v27;
    v98 = MEMORY[0x1E69E7CC0];
    result = sub_1D69975FC(0, v31, 0);
    v33 = 0;
    v34 = v98;
    v76 = v30 + 32;
    v78 = v30;
    v77 = v31;
    while (v33 < *(v30 + 16))
    {
      v83 = v34;
      v84 = v33;
      v35 = (v76 + 48 * v33);
      v36 = *v35;
      v81 = v35[1];
      v82 = v36;
      v37 = v35[2];
      v38 = v35[3];
      v40 = v35[4];
      v39 = v35[5];
      v41 = *(v37 + 16);
      v85 = v40;
      v86 = v38;
      v79 = v37;
      v80 = v39;
      if (v41)
      {
        v100 = v32;
        swift_bridgeObjectRetain_n();

        sub_1D69988B8(0, v41, 0);
        v42 = v100;
        v43 = (v37 + 48);
        do
        {
          v44 = *(v43 - 2);
          v45 = *(v43 - 1);
          v46 = *v43;
          if (~*v43 & 0xF000000000000007) == 0 && (v44 == v94 ? (v47 = v45 == v95) : (v47 = 0), v47 || (sub_1D72646CC()))
          {
            v45 = v91;

            v46 = 0xF000000000000007;
            v44 = v92;
          }

          else
          {

            sub_1D5CFCFAC(v46);
          }

          v100 = v42;
          v49 = *(v42 + 16);
          v48 = *(v42 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_1D69988B8((v48 > 1), v49 + 1, 1);
            v42 = v100;
          }

          v43 += 3;
          *(v42 + 16) = v49 + 1;
          v50 = (v42 + 24 * v49);
          v50[4] = v44;
          v50[5] = v45;
          v50[6] = v46;
          --v41;
        }

        while (v41);
        v32 = MEMORY[0x1E69E7CC0];
        v40 = v85;
        v38 = v86;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v42 = v32;
      }

      v51 = *(v40 + 16);
      v52 = v96;
      if (v51)
      {
        v100 = v32;

        v53 = v40;
        sub_1D69988E8(0, v51, 0);
        v54 = v90;
        v55 = v100;
        v93 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v56 = v53 + v93;
        v57 = *(v75 + 72);
        while (1)
        {
          sub_1D5CF2564(v56, v52, type metadata accessor for FormatContentSlotItem);
          sub_1D5CF2564(v52, v54, type metadata accessor for FormatContentSlotItemObject);
          if (swift_getEnumCaseMultiPayload() != 11)
          {
            goto LABEL_29;
          }

          v58 = v89;
          sub_1D5CF2564(v54, v89, type metadata accessor for FormatContentSlotItemObject);
          v59 = *(v58 + 16);
          v60 = *v58 == v94 && *(v58 + 8) == v95;
          if (!v60 && (sub_1D72646CC() & 1) == 0)
          {
            break;
          }

          sub_1D5CF29A4(v96, type metadata accessor for FormatContentSlotItem);
          v61 = v91;

          v62 = v97;
          *v97 = v92;
          v62[1] = v61;
          *(v62 + 16) = v59;
          swift_storeEnumTagMultiPayload();
          v63 = (v62 + *(v87 + 20));
          *v63 = 0;
          v63[1] = 0;
          v54 = v90;
LABEL_30:
          sub_1D5CF29A4(v54, type metadata accessor for FormatContentSlotItemObject);
          v100 = v55;
          v65 = *(v55 + 16);
          v64 = *(v55 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_1D69988E8(v64 > 1, v65 + 1, 1);
            v54 = v90;
            v55 = v100;
          }

          *(v55 + 16) = v65 + 1;
          sub_1D6C047F0(v97, v55 + v93 + v65 * v57, type metadata accessor for FormatContentSlotItem);
          v56 += v57;
          --v51;
          v52 = v96;
          if (!v51)
          {
            v32 = MEMORY[0x1E69E7CC0];
            v38 = v86;
            goto LABEL_35;
          }
        }

        v54 = v90;
        v52 = v96;
LABEL_29:
        sub_1D6C047F0(v52, v97, type metadata accessor for FormatContentSlotItem);
        goto LABEL_30;
      }

      v55 = v32;
LABEL_35:

      v66 = v81;

      v34 = v83;
      v98 = v83;
      v68 = *(v83 + 16);
      v67 = *(v83 + 24);
      if (v68 >= v67 >> 1)
      {
        result = sub_1D69975FC((v67 > 1), v68 + 1, 1);
        v34 = v98;
      }

      v33 = v84 + 1;
      *(v34 + 16) = v68 + 1;
      v69 = (v34 + 48 * v68);
      v69[4] = v82;
      v69[5] = v66;
      v69[6] = v42;
      v69[7] = v38;
      v70 = v80;
      v69[8] = v55;
      v69[9] = v70;
      v30 = v78;
      if (v33 == v77)
      {
        v27 = v73;
        v28 = v72;
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v71 = v74;
    *v74 = v27;
    v71[1] = v28;
    v71[2] = v34;
  }

  return result;
}

unint64_t sub_1D6C03684(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D6993B10(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D5EC3570(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t _s8NewsFeed13FormatContentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D72608BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606BDF4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_55;
  }

  v18 = type metadata accessor for FormatContent(0);
  if ((sub_1D72588AC() & 1) == 0)
  {
    goto LABEL_55;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v23)
  {
    goto LABEL_55;
  }

  v24 = v18[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v28)
  {
    goto LABEL_55;
  }

  v29 = v18[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v33)
  {
    goto LABEL_55;
  }

  v34 = v18[9];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v38)
  {
    goto LABEL_55;
  }

  v39 = v18[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v43)
  {
    goto LABEL_55;
  }

  v52 = v18[11];
  v44 = *(v14 + 48);
  sub_1D5CF2564(a1 + v52, v17, sub_1D5B49800);
  v45 = a2 + v52;
  v52 = v44;
  sub_1D5CF2564(v45, &v17[v44], sub_1D5B49800);
  v46 = *(v5 + 48);
  if (v46(v17, 1, v4) != 1)
  {
    sub_1D5CF2564(v17, v12, sub_1D5B49800);
    if (v46(&v17[v52], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_45;
    }

    (*(v5 + 32))(v8, &v17[v52], v4);
    sub_1D6C048D8(&qword_1EC882FB8, MEMORY[0x1E69B40B8]);
    v47 = sub_1D7261FBC();
    v48 = *(v5 + 8);
    v48(v8, v4);
    v48(v12, v4);
    sub_1D5CF29A4(v17, sub_1D5B49800);
    if (v47)
    {
      goto LABEL_47;
    }

LABEL_55:
    v49 = 0;
    return v49 & 1;
  }

  if (v46(&v17[v52], 1, v4) != 1)
  {
LABEL_45:
    sub_1D5CF29A4(v17, sub_1D606BDF4);
    goto LABEL_55;
  }

  sub_1D5CF29A4(v17, sub_1D5B49800);
LABEL_47:
  if ((sub_1D5BF1C0C(*(a1 + v18[12]), *(a2 + v18[12])) & 1) == 0 || (sub_1D5BF1C0C(*(a1 + v18[13]), *(a2 + v18[13])) & 1) == 0 || (sub_1D5BF1C0C(*(a1 + v18[14]), *(a2 + v18[14])) & 1) == 0 || (sub_1D5BF1C0C(*(a1 + v18[15]), *(a2 + v18[15])) & 1) == 0 || (sub_1D63449AC(*(a1 + v18[16]), *(a2 + v18[16])) & 1) == 0 || (sub_1D633A544(*(a1 + v18[17]), *(a2 + v18[17])) & 1) == 0 || (sub_1D6339F3C(*(a1 + v18[18]), *(a2 + v18[18])) & 1) == 0)
  {
    goto LABEL_55;
  }

  v49 = sub_1D5BFC390(*(a1 + v18[19]), *(a2 + v18[19]));
  return v49 & 1;
}

unint64_t sub_1D6C03CEC()
{
  result = qword_1EDF417B0;
  if (!qword_1EDF417B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417B0);
  }

  return result;
}

unint64_t sub_1D6C03D74()
{
  result = qword_1EDF417C8;
  if (!qword_1EDF417C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417C8);
  }

  return result;
}

void sub_1D6C03DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D6C048D8(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6C03E64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6C03F14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D7263BFC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1D5CED4DC(result, 1);

  return sub_1D5EC3D1C(v6, v5, 1, v3);
}

unint64_t sub_1D6C04000(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D6990590(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D5EC3E4C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1D6C040C0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D6C04138(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D5EC4288(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

void sub_1D6C04230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6C04298(uint64_t a1, uint64_t a2)
{
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C0433C(void *a1)
{
  a1[1] = sub_1D6C048D8(&qword_1EC886260, type metadata accessor for FormatContent);
  a1[2] = sub_1D6C048D8(&qword_1EC886280, type metadata accessor for FormatContent);
  result = sub_1D6C048D8(&qword_1EC893778, type metadata accessor for FormatContent);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C04424()
{
  result = type metadata accessor for FeedGroupConfigSidecar();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D6C044BC()
{
  result = qword_1EC893780;
  if (!qword_1EC893780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893780);
  }

  return result;
}

unint64_t sub_1D6C04514()
{
  result = qword_1EC893788;
  if (!qword_1EC893788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893788);
  }

  return result;
}

unint64_t sub_1D6C0456C()
{
  result = qword_1EDF417B8;
  if (!qword_1EDF417B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417B8);
  }

  return result;
}

unint64_t sub_1D6C045C4()
{
  result = qword_1EDF417C0;
  if (!qword_1EDF417C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417C0);
  }

  return result;
}

unint64_t sub_1D6C0461C()
{
  result = qword_1EDF417A0;
  if (!qword_1EDF417A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417A0);
  }

  return result;
}

unint64_t sub_1D6C04674()
{
  result = qword_1EDF417A8;
  if (!qword_1EDF417A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417A8);
  }

  return result;
}

uint64_t sub_1D6C046F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D7263BFC();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_1D6C047F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C04858(uint64_t a1, uint64_t a2)
{
  sub_1D6C03DC8(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C048D8(unint64_t *a1, void (*a2)(uint64_t))
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

double FeedGroupDescribing.feedGroupDebug.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double FormatTransformKnobs.expireContentThreshold.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs() + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 32))(v2, v3);
  v4 = sub_1D5E35BF4(v0);

  return v4;
}

uint64_t FormatTransformKnobs.init(context:knobs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5C25D20(a1, a3);
  v5 = a3 + *(type metadata accessor for FormatTransformKnobs() + 20);

  return sub_1D5B63F14(a2, v5);
}

uint64_t FormatTransformKnobs.maxNumberOfItems.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs() + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1D5E35358(v0);

  return v4;
}

uint64_t FormatTransformKnobs.minNumberOfItems.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatTransformKnobs() + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  v4 = sub_1D5E35358(v0);

  return v4;
}

uint64_t sub_1D6C04B9C()
{
  sub_1D6060284();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t FormatTransformKnobsProviding.expireContent.getter()
{
  sub_1D6060284();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D6C04C0C()
{
  sub_1D605A334();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t FormatTransformKnobsProviding.expireContentThreshold.getter()
{
  sub_1D605A334();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.init(clusteringKnobs:fallback:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[7];
  a3[6] = a1[6];
  a3[7] = v3;
  v4 = a1[9];
  a3[8] = a1[8];
  a3[9] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a1[5];
  a3[4] = a1[4];
  a3[5] = v6;
  v7 = a1[1];
  *a3 = *a1;
  a3[1] = v7;
  return sub_1D5B63F14(a2, (a3 + 10));
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.maxNumberOfItems.getter()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) != 1)
  {
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
  return (*(v7 + 8))(v6, v7);
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.minNumberOfItems.getter()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) != 1)
  {
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
  return (*(v7 + 16))(v6, v7);
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.expireContent.getter()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t FeedGroupClusteringKnobsBasedFormatTransformKnobs.expireContentThreshold.getter()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D6C04E94()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) != 1)
  {
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
  return (*(v7 + 8))(v6, v7);
}

uint64_t sub_1D6C04F34()
{
  v1 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v1;
  v2 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v9) != 1)
  {
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
  return (*(v7 + 16))(v6, v7);
}

uint64_t sub_1D6C04FD4()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D6C05028()
{
  v1 = v0[23];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v1);
  return (*(v2 + 32))(v1, v2);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D6C05110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C05158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6C051DC(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      v14 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      if (v4 == 2)
      {
        v15 = v14[6];
        *v61 = v14[5];
        *&v61[16] = v15;
        v16 = v14[8];
        *&v61[32] = v14[7];
        *v62 = v16;
        v17 = v14[2];
        __dst = v14[1];
        v58 = v17;
        v18 = v14[4];
        v59 = v14[3];
        v60 = v18;
        v19 = swift_allocObject();
        v20 = __dst;
        v21 = v60;
        v22 = *(&v60 + 1);
        v23 = *v61;
        v24 = v61[40];
        v25 = *v62;
        v53 = *&v61[24];
        v55 = *&v61[8];
        v51 = v59;
        v52 = v58;
        sub_1D60865E4(&__dst, &v84);

        v26 = sub_1D600A03C(v25);
        *(v19 + 16) = v20;
        *(v19 + 32) = v52;
        *(v19 + 48) = v51;
        *(v19 + 64) = v21;
        *(v19 + 72) = v22;
        *(v19 + 80) = v23;
        *(v19 + 104) = v53;
        *(v19 + 88) = v55;
        *(v19 + 120) = v24;
        *(v19 + 128) = v26;
        *(v19 + 136) = *(&v25 + 1);
        sub_1D6086640(&__dst);
        v13 = v19 | 0x4000000000000000;
      }

      else
      {
        v43 = *(v14 + 2);
        v44 = swift_allocObject();
        *&__dst = v43;
        sub_1D7100BB0((v44 + 16));
        v13 = v44 | 0x6000000000000000;
      }
    }

    else
    {
      if (!v4)
      {
        v5 = *(v3 + 16);
        v6 = swift_allocObject();
        *&__dst = v5;
        sub_1D6E0CAE0((v6 + 16));
        *a1 = v6;
        return;
      }

      v34 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v35 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v37 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v38 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      v39 = swift_allocObject();

      v54 = *(v34 + 48);
      v56 = *(v34 + 32);
      sub_1D5D615EC(v37);

      sub_1D5D615EC(v37);
      *(v39 + 16) = sub_1D600A03C(v35);
      *(v39 + 24) = v36;
      *(v39 + 32) = v56;
      *(v39 + 48) = v54;
      *(v39 + 64) = v37;
      *(v39 + 72) = v38;

      sub_1D5CDE22C(v37);
      v13 = v39 | 0x2000000000000000;
    }

    goto LABEL_24;
  }

  if (v4 <= 5)
  {
    v7 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 4)
    {
      v8 = *(v7 + 144);
      *v62 = *(v7 + 128);
      *&v62[16] = v8;
      v63[0] = *(v7 + 160);
      *(v63 + 9) = *(v7 + 169);
      v9 = *(v7 + 80);
      v60 = *(v7 + 64);
      *v61 = v9;
      v10 = *(v7 + 112);
      *&v61[16] = *(v7 + 96);
      *&v61[32] = v10;
      v11 = *(v7 + 32);
      __dst = *(v7 + 16);
      v58 = v11;
      v59 = *(v7 + 48);
      v12 = swift_allocObject();
      sub_1D60FB644(v12 + 16);
      v13 = v12 | 0x8000000000000000;
    }

    else
    {
      v40 = *(v7 + 16);
      if (*(v7 + 24))
      {
        swift_retain_n();

        v42 = sub_1D6FAD24C(v41);
      }

      else
      {
        swift_retain_n();
        v42 = 0;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = v40;
      *(v50 + 24) = v42;

      v13 = v50 | 0xA000000000000000;
    }

LABEL_24:
    *a1 = v13;
    return;
  }

  if (v4 == 6)
  {
    v27 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v28 = *(v27 + 16);
    v29 = *(v27 + 56);
    v30 = *(v27 + 40);
    v31 = *(v27 + 88);
    v87 = *(v27 + 72);
    v88 = v31;
    v32 = *(v27 + 104);
    v33 = *(v27 + 136);
    v90 = *(v27 + 120);
    v91[0] = v33;
    *(v91 + 9) = *(v27 + 145);
    v89 = v32;
    v85 = v30;
    v86 = v29;
    v84 = *(v27 + 24);
    memmove(&__dst, (v27 + 24), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {
      v82 = v90;
      v83[0] = v91[0];
      *(v83 + 9) = *(v91 + 9);
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = v89;
      v76 = v84;
      v77 = v85;
    }

    else
    {
      v82 = *&v61[32];
      v83[0] = *v62;
      *(v83 + 9) = *&v62[9];
      v78 = v59;
      v79 = v60;
      v80 = *v61;
      v81 = *&v61[16];
      v76 = __dst;
      v77 = v58;
      sub_1D6813640(v66);
      v64[6] = v82;
      v65[0] = v83[0];
      *(v65 + 9) = *(v83 + 9);
      v64[2] = v78;
      v64[3] = v79;
      v64[4] = v80;
      v64[5] = v81;
      v64[0] = v76;
      v64[1] = v77;

      sub_1D6047E28(&v84, &v68);
      sub_1D62B49F0(v64);
      v74 = v66[6];
      v75[0] = v67[0];
      *(v75 + 9) = *(v67 + 9);
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[4];
      v73 = v66[5];
      v68 = v66[0];
      v69 = v66[1];
      nullsub_1();
      v82 = v74;
      v83[0] = v75[0];
      *(v83 + 9) = *(v75 + 9);
      v78 = v70;
      v79 = v71;
      v80 = v72;
      v81 = v73;
      v76 = v68;
      v77 = v69;
    }

    v45 = swift_allocObject();
    v46 = v80;
    *(v45 + 104) = v81;
    v47 = v83[0];
    *(v45 + 120) = v82;
    *(v45 + 136) = v47;
    *(v45 + 145) = *(v83 + 9);
    v48 = v76;
    *(v45 + 40) = v77;
    v49 = v79;
    *(v45 + 56) = v78;
    *(v45 + 72) = v49;
    *(v45 + 88) = v46;
    *(v45 + 16) = v28;
    *(v45 + 24) = v48;
    v13 = v45 | 0xC000000000000000;
    goto LABEL_24;
  }

  *a1 = v3;
}

uint64_t FormatBackground.auxViewRequirements.getter()
{
  v1 = *v0 >> 61;
  if (v1 > 3)
  {
    v2 = &unk_1F50F7828;
    if (v1 != 6)
    {
      v2 = &unk_1F50F7850;
    }

    v3 = &unk_1F50F77D8;
    if (v1 != 4)
    {
      v3 = &unk_1F50F7800;
    }

    if (v1 <= 5)
    {
      return sub_1D5E28004(v3);
    }

    else
    {
      return sub_1D5E28004(v2);
    }
  }

  else
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return sub_1D5E28004(&unk_1F50F77B0);
      }
    }

    else if (v1)
    {
      return sub_1D5E28004(&unk_1F50F7788);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

BOOL _s8NewsFeed20FormatMicaBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 11);
  v4 = *(a1 + 15);
  v54 = *(a1 + 13);
  v55[0] = v4;
  *(v55 + 9) = *(a1 + 129);
  v5 = *(a1 + 3);
  v6 = *(a1 + 7);
  v50 = *(a1 + 5);
  v51 = v6;
  v7 = *(a1 + 9);
  v53 = v3;
  v52 = v7;
  v8 = *(a1 + 1);
  v49 = v5;
  v48 = v8;
  v9 = *a2;
  v10 = *(a2 + 11);
  v11 = *(a2 + 15);
  v62 = *(a2 + 13);
  v63[0] = v11;
  *(v63 + 9) = *(a2 + 129);
  v12 = *(a2 + 3);
  v13 = *(a2 + 7);
  v58 = *(a2 + 5);
  v59 = v13;
  v60 = *(a2 + 9);
  v61 = v10;
  v56 = *(a2 + 1);
  v57 = v12;
  *&__src[0] = v2;
  *&__dst[0] = v9;

  LOBYTE(v2) = static FormatMicaNodeContent.== infix(_:_:)(__src, __dst);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  __src[6] = v54;
  __src[7] = v55[0];
  *(&__src[7] + 9) = *(v55 + 9);
  __src[2] = v50;
  __src[3] = v51;
  __src[5] = v53;
  __src[4] = v52;
  __src[0] = v48;
  __src[1] = v49;
  *(&__src[16] + 9) = *(v63 + 9);
  __src[15] = v62;
  __src[16] = v63[0];
  __src[11] = v58;
  __src[12] = v59;
  __src[14] = v61;
  __src[13] = v60;
  __src[10] = v57;
  __src[9] = v56;
  v46[6] = v54;
  v47[0] = v55[0];
  *(v47 + 9) = *(v55 + 9);
  v46[2] = v50;
  v46[3] = v51;
  v46[5] = v53;
  v46[4] = v52;
  v46[1] = v49;
  v46[0] = v48;
  if (sub_1D60486AC(v46) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (sub_1D60486AC(__dst) == 1)
    {
      v43 = __src[6];
      v44[0] = __src[7];
      *(v44 + 9) = *(&__src[7] + 9);
      v39 = __src[2];
      v40 = __src[3];
      v41 = __src[4];
      v42 = __src[5];
      v37 = __src[0];
      v38 = __src[1];
      sub_1D6047E28(&v48, &v28);
      sub_1D6047E28(&v56, &v28);
      sub_1D6C066D4(&v37, sub_1D6047E8C);
      return 1;
    }

    sub_1D6047E28(&v48, &v37);
    sub_1D6047E28(&v56, &v37);
    goto LABEL_8;
  }

  v43 = __src[6];
  v44[0] = __src[7];
  *(v44 + 9) = *(&__src[7] + 9);
  v39 = __src[2];
  v40 = __src[3];
  v41 = __src[4];
  v42 = __src[5];
  v37 = __src[0];
  v38 = __src[1];
  v34 = __src[6];
  v35[0] = __src[7];
  *(v35 + 9) = *(&__src[7] + 9);
  v30 = __src[2];
  v31 = __src[3];
  v32 = __src[4];
  v33 = __src[5];
  v28 = __src[0];
  v29 = __src[1];
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (sub_1D60486AC(__dst) == 1)
  {
    v26 = __src[6];
    v27[0] = __src[7];
    *(v27 + 9) = *(&__src[7] + 9);
    v22 = __src[2];
    v23 = __src[3];
    v24 = __src[4];
    v25 = __src[5];
    v20 = __src[0];
    v21 = __src[1];
    sub_1D6047E28(&v48, v18);
    sub_1D6047E28(&v56, v18);
    sub_1D6047E28(&v37, v18);
    sub_1D62B49F0(&v20);
LABEL_8:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D6C066D4(__dst, sub_1D6C06670);
    return 0;
  }

  v26 = __src[15];
  v27[0] = __src[16];
  *(v27 + 9) = *(&__src[16] + 9);
  v22 = __src[11];
  v23 = __src[12];
  v24 = __src[13];
  v25 = __src[14];
  v20 = __src[9];
  v21 = __src[10];
  sub_1D6047E28(&v48, v18);
  sub_1D6047E28(&v56, v18);
  sub_1D6047E28(&v37, v18);
  v15 = _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  v16[6] = v26;
  v17[0] = v27[0];
  *(v17 + 9) = *(v27 + 9);
  v16[2] = v22;
  v16[3] = v23;
  v16[4] = v24;
  v16[5] = v25;
  v16[0] = v20;
  v16[1] = v21;
  sub_1D62B49F0(v16);
  v18[6] = v34;
  v19[0] = v35[0];
  *(v19 + 9) = *(v35 + 9);
  v18[2] = v30;
  v18[3] = v31;
  v18[4] = v32;
  v18[5] = v33;
  v18[0] = v28;
  v18[1] = v29;
  sub_1D62B49F0(v18);
  v26 = __src[6];
  v27[0] = __src[7];
  *(v27 + 9) = *(&__src[7] + 9);
  v22 = __src[2];
  v23 = __src[3];
  v24 = __src[4];
  v25 = __src[5];
  v20 = __src[0];
  v21 = __src[1];
  sub_1D6C066D4(&v20, sub_1D6047E8C);
  return v15;
}

uint64_t _s8NewsFeed21FormatImageBackgroundV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v3;

  LOBYTE(v3) = static FormatAsyncImageContent.== infix(_:_:)(&v8, &v7);

  if (v3)
  {
    if (v2)
    {
      if (v4)
      {
        type metadata accessor for FormatImageNodeStyle();

        v5 = static FormatImageNodeStyle.== infix(_:_:)(v2, v4);

        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s8NewsFeed16FormatBackgroundO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v3 >> 61 != 6)
        {
          goto LABEL_26;
        }

        v30 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v31 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v32 = *(v31 + 128);
        v66 = *(v31 + 112);
        v67 = v32;
        v68 = *(v31 + 144);
        v69[0] = *(v31 + 160);
        v33 = *(v31 + 64);
        v62 = *(v31 + 48);
        v63 = v33;
        v34 = *(v31 + 96);
        v64 = *(v31 + 80);
        v65 = v34;
        v35 = *(v31 + 32);
        v60 = *(v31 + 16);
        v61 = v35;
        v36 = *(v30 + 128);
        v76 = *(v30 + 112);
        v77 = v36;
        v78 = *(v30 + 144);
        v79[0] = *(v30 + 160);
        v37 = *(v30 + 64);
        v72 = *(v30 + 48);
        v73 = v37;
        v38 = *(v30 + 96);
        v74 = *(v30 + 80);
        v75 = v38;
        v39 = *(v30 + 32);
        v70 = *(v30 + 16);
        v71 = v39;

        v19 = _s8NewsFeed20FormatMicaBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
      }

      else
      {
        if (v3 >> 61 != 7)
        {
          goto LABEL_26;
        }

        v47 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v48 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v49 = *(v48 + 160);
        v68 = *(v48 + 144);
        *v69 = v49;
        *&v69[16] = *(v48 + 176);
        v50 = *(v48 + 96);
        v64 = *(v48 + 80);
        v65 = v50;
        v51 = *(v48 + 128);
        v66 = *(v48 + 112);
        v67 = v51;
        v52 = *(v48 + 32);
        v60 = *(v48 + 16);
        v61 = v52;
        v53 = *(v48 + 64);
        v62 = *(v48 + 48);
        v63 = v53;
        v54 = *(v47 + 160);
        v78 = *(v47 + 144);
        *v79 = v54;
        *&v79[16] = *(v47 + 176);
        v55 = *(v47 + 96);
        v74 = *(v47 + 80);
        v75 = v55;
        v56 = *(v47 + 128);
        v76 = *(v47 + 112);
        v77 = v56;
        v57 = *(v47 + 32);
        v70 = *(v47 + 16);
        v71 = v57;
        v58 = *(v47 + 64);
        v72 = *(v47 + 48);
        v73 = v58;

        v19 = _s8NewsFeed18FormatVisualEffectO2eeoiySbAC_ACtFZ_0(&v70, &v60);
      }
    }

    else if (v4 == 4)
    {
      if (v3 >> 61 != 4)
      {
        goto LABEL_26;
      }

      v7 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v8 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      v9 = v8[10];
      v68 = v8[9];
      *v69 = v9;
      *&v69[9] = *(v8 + 169);
      v10 = v8[6];
      v64 = v8[5];
      v65 = v10;
      v11 = v8[8];
      v66 = v8[7];
      v67 = v11;
      v12 = v8[2];
      v60 = v8[1];
      v61 = v12;
      v13 = v8[4];
      v62 = v8[3];
      v63 = v13;
      v14 = v7[10];
      v78 = v7[9];
      *v79 = v14;
      *&v79[9] = *(v7 + 169);
      v15 = v7[6];
      v74 = v7[5];
      v75 = v15;
      v16 = v7[8];
      v76 = v7[7];
      v77 = v16;
      v17 = v7[2];
      v70 = v7[1];
      v71 = v17;
      v18 = v7[4];
      v72 = v7[3];
      v73 = v18;

      v19 = _s8NewsFeed21FormatSplitBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    else
    {
      if (v3 >> 61 != 5)
      {
        goto LABEL_26;
      }

      v70 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v19 = _s8NewsFeed21FormatImageBackgroundV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

LABEL_24:
    v6 = v19;

    goto LABEL_25;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 61 != 2)
      {
        goto LABEL_26;
      }

      v20 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
      v21 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
      v22 = v21[6];
      v64 = v21[5];
      v65 = v22;
      v23 = v21[8];
      v66 = v21[7];
      v67 = v23;
      v24 = v21[2];
      v60 = v21[1];
      v61 = v24;
      v25 = v21[4];
      v62 = v21[3];
      v63 = v25;
      v26 = v20[6];
      v74 = v20[5];
      v75 = v26;
      v27 = v20[8];
      v76 = v20[7];
      v77 = v27;
      v28 = v20[2];
      v70 = v20[1];
      v71 = v28;
      v29 = v20[4];
      v72 = v20[3];
      v73 = v29;

      v19 = _s8NewsFeed20FormatRadialGradientV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    else
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_26;
      }

      v46 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v70 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v60 = v46;

      v19 = _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(&v70, &v60);
    }

    goto LABEL_24;
  }

  if (v4)
  {
    if (v3 >> 61 != 1)
    {
      goto LABEL_26;
    }

    v40 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
    v41 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    v42 = v41[2];
    v60 = v41[1];
    v61 = v42;
    v43 = v41[4];
    v62 = v41[3];
    v63 = v43;
    v44 = v40[2];
    v70 = v40[1];
    v71 = v44;
    v45 = v40[4];
    v72 = v40[3];
    v73 = v45;

    v19 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v70, &v60);
    goto LABEL_24;
  }

  if (v3 >> 61)
  {
LABEL_26:
    v6 = 0;
    return v6 & 1;
  }

  v5 = *(v3 + 16);
  *&v70 = *(v2 + 16);
  *&v60 = v5;

  v6 = static FormatColor.== infix(_:_:)(&v70, &v60);

LABEL_25:

  return v6 & 1;
}

unint64_t sub_1D6C061B8(uint64_t a1)
{
  result = sub_1D6C061E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C061E0()
{
  result = qword_1EC893790;
  if (!qword_1EC893790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893790);
  }

  return result;
}

unint64_t sub_1D6C06274()
{
  result = qword_1EC893798;
  if (!qword_1EC893798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893798);
  }

  return result;
}

unint64_t sub_1D6C062C8(uint64_t a1)
{
  result = sub_1D6C062F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C062F0()
{
  result = qword_1EC8937A0;
  if (!qword_1EC8937A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937A0);
  }

  return result;
}

unint64_t sub_1D6C06384()
{
  result = qword_1EC8937A8;
  if (!qword_1EC8937A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937A8);
  }

  return result;
}

unint64_t sub_1D6C063D8(uint64_t a1)
{
  result = sub_1D6C06400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C06400()
{
  result = qword_1EC8937B0;
  if (!qword_1EC8937B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937B0);
  }

  return result;
}

uint64_t sub_1D6C06494(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C064E8()
{
  result = qword_1EC8937B8;
  if (!qword_1EC8937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatMediaTimingVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C06580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 145))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D6C065E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1D6C06670()
{
  if (!qword_1EC889AE0)
  {
    sub_1D6047E8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889AE0);
    }
  }
}

uint64_t sub_1D6C066D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C06734(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v16 = *a2;
  a4[qword_1EDF31618] = *(a3 + 129);
  v17 = *(a3 + 24);
  v18 = &a4[qword_1EDF31620];
  *v18 = *(a3 + 16);
  v18[1] = v17;

  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  v20 = v16;
  sub_1D68B5E88(a1, a4, &v20, a3, a5, a6, a7, a8, a9);
}

uint64_t static FormatAlphaColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D7261FBC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FormatAlphaColor() + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D6C068A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C068E8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C06968(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

uint64_t FormatBlock.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBlock.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FormatBlock.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatBlock.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *FormatBlock.__allocating_init(identifier:children:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  swift_beginAccess();
  v10[4] = a3;
  swift_beginAccess();
  v10[5] = a4;
  swift_beginAccess();
  v10[6] = a5;
  return v10;
}

void *FormatBlock.init(identifier:children:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  swift_beginAccess();
  v5[4] = a3;
  swift_beginAccess();
  v5[5] = a4;
  swift_beginAccess();
  v5[6] = a5;
  return v5;
}

uint64_t FormatBlock.deinit()
{

  return v0;
}

uint64_t FormatBlock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C06EE0(uint64_t a1)
{
  result = sub_1D6C06FB0(&qword_1EC8937C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C06F24(void *a1)
{
  a1[1] = sub_1D6C06FB0(&qword_1EDF342F0);
  a1[2] = sub_1D6C06FB0(&qword_1EDF342F8);
  result = sub_1D6C06FB0(&qword_1EC8937C8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C06FB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBlock();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6C06FF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D667AB3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6C07078(void *a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 2;
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_1D5D0A57C(v5);
  sub_1D5D0A57C(v6);
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_1D5D0A57C(v6);
    v7 = sub_1D6C07078(a1);
    sub_1D5D0A58C(v5);
    sub_1D5D0A58C(v6);
    v8 = v6;
  }

  else
  {
    sub_1D5D0A57C(v5);
    v7 = sub_1D6C07078(a1);
    sub_1D5D0A58C(v5);
    sub_1D5D0A58C(v6);
    v8 = v5;
  }

  sub_1D5D0A58C(v8);
  return v7;
}

uint64_t sub_1D6C07164(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15[1] = a1;
  v16 = a2;
  v15[0] = a4;
  if (!a1)
  {
    if (a3)
    {
      sub_1D5D0A57C(a3);
      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1 != 1)
  {
    if (a3 < 2)
    {
      sub_1D5D0A57C(a3);
      sub_1D5D0A57C(a1);
      v5 = a1;
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = *(a3 + 16);
    v12 = *(a3 + 24);
    sub_1D5D0A57C(a3);
    sub_1D5D0A57C(a1);
    LOBYTE(v9) = sub_1D6C07164(v10, v9, v11, v12);
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a3);
    if ((v9 & 1) == 0)
    {
      v7 = 0;
      return v7 & 1;
    }

LABEL_12:
    v7 = _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(&v16, v15);
    return v7 & 1;
  }

  if (a3 == 1)
  {
LABEL_10:
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a1);
    goto LABEL_12;
  }

  sub_1D5D0A57C(a3);
  v5 = 1;
LABEL_9:
  sub_1D5D0A58C(v5);
  sub_1D5D0A58C(a3);
  v7 = 0;
  return v7 & 1;
}

uint64_t _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      sub_1D5D0A57C(*a2);
      sub_1D5D0A57C(v2);
      sub_1D5D0A57C(v7);
      sub_1D5D0A57C(v8);
      v4 = sub_1D6C07164(v6, v5, v7, v8);
      sub_1D5D0A58C(v7);
      sub_1D5D0A58C(v8);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1D5D0A57C(*a2);
    sub_1D5D0A57C(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_1D5D0A58C(v2);
  sub_1D5D0A58C(v3);
  return v4 & 1;
}

unint64_t sub_1D6C073AC(uint64_t a1)
{
  result = sub_1D66BDF14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C073D4(void *a1)
{
  a1[1] = sub_1D66BD910();
  a1[2] = sub_1D66BD5B8();
  result = sub_1D6C0740C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C0740C()
{
  result = qword_1EC8937D0;
  if (!qword_1EC8937D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6C07488(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v5 >> 5;
  if (v5 >> 5 <= 3)
  {
    if (v5 >> 5 <= 1)
    {
      if (v6)
      {

        v39 = sub_1D7259EBC();
        v40 = [v39 userInterfaceIdiom];

        if (sub_1D6185530(v40, *&v4))
        {
          sub_1D5C17350();
          swift_allocError();
          v10 = v41;
          v42 = sub_1D7259EBC();
          v43 = [v42 userInterfaceIdiom];

          *v10 = v43;
          v10[1] = v4;
          v13 = 9;
          goto LABEL_40;
        }
      }

      else
      {

        v7 = sub_1D7259EBC();
        v8 = [v7 userInterfaceIdiom];

        if (!sub_1D6185530(v8, *&v4))
        {
          sub_1D5C17350();
          swift_allocError();
          v10 = v9;
          v11 = sub_1D7259EBC();
          v12 = [v11 userInterfaceIdiom];

          *v10 = v12;
          v10[1] = v4;
          v13 = 8;
          goto LABEL_40;
        }
      }

      return sub_1D5ECEDE8(*&v4, v5);
    }

    if (v6 == 2)
    {

      v19 = [a4 bundleIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D726207C();
        v23 = v22;

        LOBYTE(v20) = sub_1D5BE240C(v21, v23, *&v4);

        if (v20)
        {
          return sub_1D5ECEDE8(*&v4, v5);
        }
      }

      sub_1D5C17350();
      swift_allocError();
      v10 = v24;
      v25 = [a4 bundleIdentifier];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1D726207C();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      *v10 = v27;
      *(v10 + 1) = v29;
      v13 = 6;
    }

    else
    {

      v47 = [a4 bundleIdentifier];
      if (v47)
      {
        v48 = v47;
        v49 = sub_1D726207C();
        v51 = v50;

        LOBYTE(v48) = sub_1D5BE240C(v49, v51, *&v4);

        if ((v48 & 1) == 0)
        {
          return sub_1D5ECEDE8(*&v4, v5);
        }
      }

      sub_1D5C17350();
      swift_allocError();
      v10 = v52;
      v53 = [a4 bundleIdentifier];
      if (v53)
      {
        v54 = v53;
        v55 = sub_1D726207C();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      *v10 = v55;
      *(v10 + 1) = v57;
      v13 = 7;
    }

    v10[2] = v4;
    goto LABEL_40;
  }

  if (v5 >> 5 > 5)
  {
    if (v6 == 6)
    {
      result = sub_1D7259E7C();
      v31 = v30;
      if (v5)
      {
        sub_1D7259C0C();
        v33 = v32;
        sub_1D7259CDC();
        v35 = (v4 + -1.0) * (v33 + v34);
        result = sub_1D7259C0C();
        v37 = v36 + v35;
        if (v31 >= v37)
        {
          return result;
        }

        sub_1D5C17350();
        swift_allocError();
        v10 = v38;
        *v38 = v31;
        v38[1] = v37;
        v13 = 2;
      }

      else
      {
        if (v30 >= v4)
        {
          return result;
        }

        sub_1D5C17350();
        swift_allocError();
        v10 = v67;
        sub_1D7259E7C();
        *v10 = v68;
        v10[1] = v4;
        v13 = 2;
      }
    }

    else
    {
      result = sub_1D7259E7C();
      v59 = v58;
      if (v5)
      {
        sub_1D7259C0C();
        v61 = v60;
        sub_1D7259CDC();
        v63 = (v4 + -1.0) * (v61 + v62);
        result = sub_1D7259C0C();
        v65 = v64 + v63;
        if (v65 > v59)
        {
          return result;
        }

        sub_1D5C17350();
        swift_allocError();
        v10 = v66;
        *v66 = v59;
        v66[1] = v65;
        v13 = 3;
      }

      else
      {
        if (v58 < v4)
        {
          return result;
        }

        sub_1D5C17350();
        swift_allocError();
        v10 = v69;
        sub_1D7259E7C();
        *v10 = v70;
        v10[1] = v4;
        v13 = 3;
      }
    }
  }

  else if (v6 == 4)
  {
    result = sub_1D7259E7C();
    if (v15 >= v4)
    {
      return result;
    }

    v16 = v15;
    sub_1D5C17350();
    swift_allocError();
    v10 = v17;
    *v17 = v16;
    v17[1] = v4;
    v13 = 4;
  }

  else
  {
    result = sub_1D7259E7C();
    if (v44 <= v4)
    {
      return result;
    }

    v45 = v44;
    sub_1D5C17350();
    swift_allocError();
    v10 = v46;
    *v46 = v45;
    v46[1] = v4;
    v13 = 5;
  }

LABEL_40:
  *(v10 + 40) = v13;
  return swift_willThrow();
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.depthTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota() + 24);

  return sub_1D6C07A34(v3, a1);
}

uint64_t type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota()
{
  result = qword_1EDF130F8;
  if (!qword_1EDF130F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C07A34(uint64_t a1, uint64_t a2)
{
  sub_1D5E3B6E0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C07A9C()
{
  v1 = 0x6F69746172;
  if (*v0 != 1)
  {
    v1 = 0x6172546874706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953459315;
  }
}

uint64_t sub_1D6C07AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C0869C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C07B20(uint64_t a1)
{
  v2 = sub_1D6C083B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C07B5C(uint64_t a1)
{
  v2 = sub_1D6C083B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.encode(to:)(void *a1)
{
  sub_1D6C0840C(0, &qword_1EC8937D8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C083B8();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726442C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726441C();
    type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota();
    v10[13] = 2;
    sub_1D72593CC();
    sub_1D6C0887C(&qword_1EDF188D0);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedGroupExplicitSlotBundleArticleQuota.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0840C(0, &qword_1EC8937E8, MEMORY[0x1E69E6F48]);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C083B8();
  sub_1D7264B0C();
  if (!v2)
  {
    v16 = v21;
    v25 = 0;
    *v15 = sub_1D72642FC();
    v24 = 1;
    sub_1D72642DC();
    v15[1] = v18;
    sub_1D72593CC();
    v23 = 2;
    sub_1D6C0887C(&qword_1EDF188B8);
    sub_1D726427C();
    (*(v16 + 8))(v11, v22);
    sub_1D6C08470(v7, v15 + *(v12 + 24), sub_1D5E3B6E0);
    sub_1D6C08470(v15, v20, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s8NewsFeed0B35GroupExplicitSlotBundleArticleQuotaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72593CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3B6E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C087B8();
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota() + 24);
  v20 = *(v18 + 48);
  sub_1D6C07A34(a1 + v19, v17);
  sub_1D6C07A34(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D6C0881C(v17, sub_1D5E3B6E0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1D6C07A34(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1D6C0881C(v17, sub_1D6C087B8);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1D6C0887C(&unk_1EDF188C0);
  v23 = sub_1D7261FBC();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1D6C0881C(v17, sub_1D5E3B6E0);
  return (v23 & 1) != 0;
}

unint64_t sub_1D6C083B8()
{
  result = qword_1EC8937E0;
  if (!qword_1EC8937E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937E0);
  }

  return result;
}

void sub_1D6C0840C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C083B8();
    v7 = a3(a1, &type metadata for FeedGroupExplicitSlotBundleArticleQuota.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C08470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6C08500()
{
  sub_1D5E3B6E0(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6C08598()
{
  result = qword_1EC8937F0;
  if (!qword_1EC8937F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937F0);
  }

  return result;
}

unint64_t sub_1D6C085F0()
{
  result = qword_1EC8937F8;
  if (!qword_1EC8937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8937F8);
  }

  return result;
}

unint64_t sub_1D6C08648()
{
  result = qword_1EC893800[0];
  if (!qword_1EC893800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC893800);
  }

  return result;
}

uint64_t sub_1D6C0869C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746172 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172546874706564 && a2 == 0xEE006D726F66736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1D6C087B8()
{
  if (!qword_1EC889AD8)
  {
    sub_1D5E3B6E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889AD8);
    }
  }
}

uint64_t sub_1D6C0881C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C0887C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D72593CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FeedCursorReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((v2 & 0x4000000000000000) != 0)
  {
    if ((v3 & 0x4000000000000000) != 0)
    {

      v6 = static FeedCursorContainer.== infix(_:_:)(v2 & 0xBFFFFFFFFFFFFFFFLL, v3 & 0xBFFFFFFFFFFFFFFFLL);
      sub_1D6C08970();
      return v6 & 1;
    }

    return 0;
  }

  if ((v3 & 0x4000000000000000) != 0)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t FeedCursorReference.serviceContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = v1[2];
  if ((v5 & 0x4000000000000000) != 0)
  {
    v12 = *(v3 + 80);
    v11 = *(v3 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

    FeedCursorContainer.serviceContext.getter(v5 & 0xBFFFFFFFFFFFFFFFLL, v12, v11, boxed_opaque_existential_1);
    goto LABEL_7;
  }

  v6 = qword_1EDF37050;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v4 + 80);
  v8 = *(v4 + 88);

  v10 = FeedCursorStoreManager.get<A>(token:)(v9);
  sub_1D6C08970();
  if ((~v10 & 0xF000000000000007) == 0)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_7:

    return sub_1D6C08970();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(a1 + 24) = swift_getAssociatedTypeWitness();
  *(a1 + 32) = swift_getAssociatedConformanceWitness();
  v15 = __swift_allocate_boxed_opaque_existential_1(a1);
  FeedCursorContainer.serviceContext.getter(v10, v7, v8, v15);
  sub_1D6C08970();

  return sub_1D5BD9F54(v10);
}

uint64_t FeedCursorReference.identifier.getter()
{
  v0 = sub_1D6C08E2C();

  return v0;
}

uint64_t FeedCursorReference.__allocating_init(cursorContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FeedCursorReference.init(cursorContainer:)(a1);
  return v2;
}

unint64_t sub_1D6C08D2C()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x4000000000000000) != 0)
  {

    return v1 & 0xBFFFFFFFFFFFFFFFLL;
  }

  else
  {

    v3 = FeedCursorStore.get(token:)(v2);
    sub_1D6C08970();
    return v3;
  }
}

uint64_t FeedCursorReference.__deallocating_deinit()
{
  sub_1D6C08970();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C08DE4()
{
  v0 = sub_1D6C08E2C();

  return v0;
}

uint64_t sub_1D6C08E2C()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x4000000000000000) != 0)
  {
    return sub_1D5BFB900(v1 & 0xBFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1D6C08EB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6C08EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 8))
  {
    return (*a1 + 63);
  }

  v3 = (((*a1 >> 57) >> 5) & 1 | (2 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C08F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = (v3 | (v3 << 57)) & 0x7000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6C09004(uint64_t result)
{
  if (*(v1 + 24) >= 2u)
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 6;
    sub_1D62B6240(v5, v4, v3, 2);
    result = sub_1D703E0C8(v8, &v9);
    if (!v2)
    {
      v6 = result;
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }

  return result;
}

void sub_1D6C090D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v65 = a2;
  v66 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v66, v3);
  v64 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for FormatOption();
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27CBC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  v23 = sub_1D72585BC();
  v68 = *(v23 - 8);
  v69 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v61 - v29;
  v31 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = (&v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *v2;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      v36 = v70;
      sub_1D6D4F770(v73, *v2, v18);
      if (!v36)
      {
        v38 = v68;
        v37 = v69;
        if ((*(v68 + 48))(v18, 1, v69) == 1)
        {
          sub_1D5D28308(v18, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v39 = 0xD00000000000002BLL;
          v39[1] = 0x80000001D73ED3A0;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          v59 = *(v38 + 32);
          v59(v26, v18, v37);
          v59(v65, v26, v37);
        }
      }
    }

    else
    {
      v46 = *(v2 + 8);
      v47 = *(v2 + 16);
      v48 = v73;

      FormatOptionCollection.subscript.getter(v35, v46, v8);
      if ((*(v67 + 48))(v8, 1, v9) == 1)
      {
        sub_1D5D28308(v8, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v49 = v64;
        *v64 = v35;
        *(v49 + 8) = v46;
        swift_storeEnumTagMultiPayload();
        v50 = *(v48 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v52 = swift_allocError();
        if (v50)
        {
          sub_1D61E0EAC(v49, v51);
          v53 = v62;
          sub_1D725855C();
          v55 = v68;
          v54 = v69;
          if ((*(v68 + 48))(v53, 1, v69) == 1)
          {
            __break(1u);
          }

          else
          {
            sub_1D5C0AF00(v49, type metadata accessor for FormatLayoutError);
            (*(v55 + 32))(v65, v53, v54);
          }
        }

        else
        {
          sub_1D61E0EAC(v49, v51);
          swift_willThrow();
          sub_1D5C0AF00(v49, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {

        v56 = v8;
        v57 = v63;
        sub_1D5D247E0(v56, v63);

        v58 = v70;
        sub_1D6B744A8(v48, &v71);
        if (!v58)
        {

          sub_1D6B80238(v71, v35, v46, v47, v48, v65);
        }

        sub_1D5C0AF00(v57, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v40 = v70;
    sub_1D6B7C374(*(v73 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v34);
    if (!v40)
    {
      LOBYTE(v71) = v35;
      sub_1D6B44234(v34, v22);
      v42 = v68;
      v41 = v69;
      if ((*(v68 + 48))(v22, 1, v69) == 1)
      {
        sub_1D5D28308(v22, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v44 = v43;
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000036, 0x80000001D73ED3D0);
        MEMORY[0x1DA6F9910](*v34, v34[1]);
        MEMORY[0x1DA6F9910](46, 0xE100000000000000);
        v45 = v72;
        *v44 = v71;
        v44[1] = v45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5C0AF00(v34, type metadata accessor for FeedHeadline);
      }

      else
      {
        sub_1D5C0AF00(v34, type metadata accessor for FeedHeadline);
        v60 = *(v42 + 32);
        v60(v30, v22, v41);
        v60(v65, v30, v41);
      }
    }
  }
}

BOOL _s8NewsFeed28FormatVideoPlayerNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1D62B628C(*a1, v3, v4, 0);
      sub_1D62B628C(v6, v7, v8, 0);
      return v6 == v2;
    }

    goto LABEL_20;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v12 = v2 == v6 && v3 == v7;
      if (v12 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D62B6240(v6, v7, v8, 2);
        sub_1D62B6240(v2, v3, v4, 2);
        sub_1D62B6240(v6, v7, v8, 2);
        sub_1D62B6240(v2, v3, v4, 2);
        v13 = sub_1D6341C50(v4, v8);
        sub_1D62B628C(v2, v3, v4, 2);
        sub_1D62B628C(v6, v7, v8, 2);
        sub_1D62B628C(v6, v7, v8, 2);
        sub_1D62B628C(v2, v3, v4, 2);
        return (v13 & 1) != 0;
      }

      sub_1D62B6240(v6, v7, v8, 2);
      sub_1D62B6240(v2, v3, v4, 2);
      sub_1D62B628C(v2, v3, v4, 2);
      v14 = v6;
      v15 = v7;
      v16 = v8;
      v17 = 2;
LABEL_21:
      sub_1D62B628C(v14, v15, v16, v17);
      return 0;
    }

LABEL_20:
    sub_1D62B6240(v6, v7, v8, v9);
    sub_1D62B628C(v2, v3, v4, v5);
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    goto LABEL_21;
  }

  if (v9 != 1)
  {
    goto LABEL_20;
  }

  v10 = *a2;
  sub_1D62B628C(*a1, v3, v4, 1);
  sub_1D62B628C(v6, v7, v8, 1);
  if (!(v2 >> 6))
  {
    return v10 < 0x40 && (v6 & 0x3F) == v2;
  }

  if (v2 >> 6 != 1)
  {
    return (v10 & 0xC0) == 0x80;
  }

  return (v10 & 0xC0) == 0x40 && ((v6 ^ v2) & 1) == 0;
}

void sub_1D6C09C54(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  if (*(v1 + 24) >= 2u)
  {
    v32 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v33[0] = *v1;
    v33[1] = v19;
    v33[2] = v18;
    v34 = 6;

    v21 = sub_1D703E0C8(v33, &v34);
    if (!v3)
    {
      v31 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v32 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D28308(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(a1 + 48))
        {
          v22 = 1;
LABEL_8:
          (*(v32 + 56))(v17, v22, 1, v5);
          sub_1D5D28308(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
          return;
        }

        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v24 = v20;
        v24[1] = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v33[0] = v9[2];
        v23 = v31;

        FormatOptionValue.type.getter(&v34);
        if (sub_1D6183C84(v34, v23))
        {
          swift_bridgeObjectRelease_n();
          sub_1D5D247E0(v9, v17);
          v22 = 0;
          goto LABEL_8;
        }

        type metadata accessor for FormatDerivedDataError();
        sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v26 = v25;
        v28 = *v9;
        v27 = v9[1];
        v33[0] = v9[2];

        FormatOptionValue.type.getter(&v34);
        v29 = v34;
        *v26 = v28;
        *(v26 + 8) = v27;
        *(v26 + 16) = v29;
        *(v26 + 24) = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5C0AF00(v9, type metadata accessor for FormatOption);
      }
    }
  }
}

unint64_t sub_1D6C0A054(uint64_t a1)
{
  result = sub_1D6C0A07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C0A07C()
{
  result = qword_1EC893888;
  if (!qword_1EC893888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893888);
  }

  return result;
}

unint64_t sub_1D6C0A0D0(void *a1)
{
  a1[1] = sub_1D66CE964();
  a1[2] = sub_1D66F5C80();
  result = sub_1D6C0A108();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C0A108()
{
  result = qword_1EC893890;
  if (!qword_1EC893890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893890);
  }

  return result;
}

uint64_t _s8NewsFeed22PublisherLogoProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, v14);
  sub_1D61BA350();
  type metadata accessor for PublisherLogoProcessorRequest(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle), *(v13 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle + 24));
  result = sub_1D725D2CC();
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v4 = sub_1D726203C();

  v5 = [v3 initWithContentsOfFile_];

  if (!v5)
  {

    return 0;
  }

  if (*(v13 + 64) == 1 && (*(v13 + 65) & 1) == 0)
  {
    v6 = [v5 imageWithRenderingMode_];

    v7 = [objc_opt_self() whiteColor];
    v5 = sub_1D726366C();
  }

  v9 = *(v13 + 40);
  v8 = *(v13 + 48);
  [v5 size];
  if (v8 >= v10 && ([v5 size], v9 >= v11))
  {

    return v5;
  }

  else
  {
    v12 = sub_1D726360C();

    return v12;
  }
}

id _s8NewsFeed22PublisherLogoProcessorC7process_14imageFromCacheSo7UIImageC5TeaUI25ProcessedImageRequestType_p_AGtF_0(uint64_t a1, void *a2)
{
  sub_1D5B68374(a1, v6);
  sub_1D61BA350();
  type metadata accessor for PublisherLogoProcessorRequest(0);
  if (swift_dynamicCast())
  {
    if (*(v5 + 64) == 1)
    {
      v2 = [a2 imageWithRenderingMode_];

      return v2;
    }
  }

  return a2;
}

uint64_t sub_1D6C0A4BC(uint64_t a1, void *a2, uint64_t *a3)
{
  v25 = a2;
  v5 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for FormatLayoutViewRoute();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  sub_1D6C0CEBC(a1, v16, type metadata accessor for FormatLayoutViewRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D61CCC84();
    v22 = *(v21 + 48);
    sub_1D5C21C8C(v16, v8, type metadata accessor for FeedItem);
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_1D6C0A6D4(v8, v25, &v26);
    sub_1D6C0CE08(v8, type metadata accessor for FeedItem);
    v23 = &v16[v22];
  }

  else
  {
    sub_1D5C21C8C(v16, v12, type metadata accessor for FeedItem);
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_1D6C0A6D4(v12, v25, &v26);
    v23 = v12;
  }

  return sub_1D6C0CE08(v23, type metadata accessor for FeedItem);
}

uint64_t sub_1D6C0A6D4(uint64_t a1, void *a2, uint64_t *a3)
{
  v286 = a2;
  v290 = a1;
  v4 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v280 = (&v241 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = type metadata accessor for WebEmbedDataVisualization();
  v252 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254, v7);
  v248 = (&v241 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6C0CE68(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v253 = &v241 - v11;
  sub_1D6C0CE68(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v262 = &v241 - v14;
  v279 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v279, v15);
  v281 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0CE68(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v277 = &v241 - v19;
  v275 = type metadata accessor for FormatCustomItem.Action();
  v273 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275, v20);
  v260 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v261 = &v241 - v24;
  v271 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v271, v25);
  v278 = &v241 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_1D72585BC();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289, v27);
  v264 = &v241 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v245 = &v241 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v247 = &v241 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v243 = &v241 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v258 = &v241 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v259 = &v241 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v276 = &v241 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v274 = &v241 - v49;
  sub_1D6C0CE68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v263 = &v241 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v268 = &v241 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v270 = &v241 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v269 = &v241 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v272 = &v241 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v244 = &v241 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v246 = &v241 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v242 = &v241 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v250 = &v241 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v251 = &v241 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v256 = &v241 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v241 - v85;
  MEMORY[0x1EEE9AC00](v87, v88);
  v257 = &v241 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v265 = &v241 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v267 = &v241 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v266 = &v241 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v102 = &v241 - v101;
  MEMORY[0x1EEE9AC00](v103, v104);
  v106 = &v241 - v105;
  MEMORY[0x1EEE9AC00](v107, v108);
  v110 = &v241 - v109;
  v111 = type metadata accessor for FeedHeadline(0);
  v255 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v112);
  v249 = &v241 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = (&v241 - v116);
  v118 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v241 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a3[1];
  v282 = *a3;
  v283 = v122;
  v123 = a3[3];
  v284 = a3[2];
  v285 = v123;
  sub_1D6C0CEBC(v290, v121, type metadata accessor for FeedItem);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 3:
      sub_1D5C21C8C(v121, v117, type metadata accessor for FeedHeadline);
      v164 = [v117[5] identifier];
      if (!v164)
      {
        sub_1D726207C();
        v164 = sub_1D726203C();
      }

      v165 = [objc_opt_self() nss:v164 NewsURLForArticleID:?];

      if (v165)
      {
        sub_1D72584EC();

        v166 = 0;
      }

      else
      {
        v166 = 1;
      }

      v201 = v286;
      (*(v288 + 56))(v106, v166, 1, v289);
      sub_1D5EB8540(v106, v110);
      sub_1D6C0C908(v110, v287, v201, v282, v283, v284, v285);
      sub_1D6C0CF24(v110, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v202 = type metadata accessor for FeedHeadline;
      goto LABEL_56;
    case 4:
      v144 = v281;
      sub_1D5C21C8C(v121, v281, type metadata accessor for FeedWebEmbed);
      v145 = v279;
      sub_1D6C0CF80(v144 + *(v279 + 36), v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v146 = v288;
      v147 = v289;
      if ((*(v288 + 48))(v86, 1, v289) != 1)
      {
        v189 = v258;
        (*(v146 + 32))(v258, v86, v147);
        v190 = v256;
        (*(v146 + 16))(v256, v189, v147);
        (*(v146 + 56))(v190, 0, 1, v147);
        sub_1D6C0C908(v190, v287, v286, v282, v283, v284, v285);
        sub_1D6C0CF24(v190, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        (*(v146 + 8))(v189, v147);
        goto LABEL_45;
      }

      sub_1D6C0CF24(v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v148 = v262;
      sub_1D6C0CF80(v144 + *(v145 + 48), v262, qword_1EDF42030, type metadata accessor for FeedHeadline);
      if ((*(v255 + 48))(v148, 1, v111) != 1)
      {
        v208 = v249;
        sub_1D5C21C8C(v148, v249, type metadata accessor for FeedHeadline);
        v209 = objc_opt_self();
        v210 = sub_1D726203C();
        v211 = [v209 nss:v210 NewsURLForArticleID:?];

        if (v211)
        {
          v212 = v250;
          sub_1D72584EC();

          v213 = 0;
          v214 = v285;
          v215 = v284;
          v216 = v251;
        }

        else
        {
          v213 = 1;
          v214 = v285;
          v215 = v284;
          v216 = v251;
          v212 = v250;
        }

        (*(v146 + 56))(v212, v213, 1, v147);
        sub_1D5EB8540(v212, v216);
        sub_1D6C0C908(v216, v287, v286, v282, v283, v215, v214);
        sub_1D6C0CF24(v216, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D6C0CE08(v144, type metadata accessor for FeedWebEmbed);
        v126 = type metadata accessor for FeedHeadline;
        v127 = v208;
        return sub_1D6C0CE08(v127, v126);
      }

      sub_1D6C0CF24(v148, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v149 = v253;
      sub_1D6C0CF80(v144 + *(v145 + 52), v253, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      if ((*(v252 + 48))(v149, 1, v254) == 1)
      {
        sub_1D6C0CF24(v149, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_45:
        v126 = type metadata accessor for FeedWebEmbed;
        v127 = v144;
        return sub_1D6C0CE08(v127, v126);
      }

      v217 = v248;
      sub_1D6C0CEBC(v149, v248, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6C0CE08(v217, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6C0CE08(v149, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_45;
      }

      v218 = *v217;
      sub_1D6C0CE08(v149, type metadata accessor for WebEmbedDataVisualization);
      v219 = v218 >> 61;
      if ((v218 >> 61) > 2)
      {

        goto LABEL_45;
      }

      if (v219)
      {
        if (v219 == 1)
        {
          v220 = *((v218 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          if (*(v220 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8) && (v221 = *(v220 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16)) != 0 || (v221 = *(v220 + 56)) != 0)
          {
            swift_unknownObjectRetain();

            v222 = [v221 identifier];
            v223 = v247;
            if (!v222)
            {
              sub_1D726207C();
              v222 = sub_1D726203C();
            }

            v224 = [objc_opt_self() nss:v222 NewsURLForTagID:4 feedConfiguration:?];

            sub_1D72584EC();
            v225 = v246;
            v226 = v289;
            (*(v146 + 16))(v246, v223, v289);
            (*(v146 + 56))(v225, 0, 1, v226);
            sub_1D6C0C908(v225, v287, v286, v282, v283, v284, v285);
            swift_unknownObjectRelease();

            sub_1D6C0CF24(v225, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            (*(v146 + 8))(v223, v226);
          }

          v227 = v144;
LABEL_85:
          sub_1D6C0CE08(v227, type metadata accessor for FeedWebEmbed);
        }

        v234 = v287;

        v235 = SportsBracketGroupDataVisualization.routeTag.getter();
        if (v235)
        {
          v236 = [v235 identifier];
          if (!v236)
          {
            sub_1D726207C();
            v236 = sub_1D726203C();
          }

          v237 = [objc_opt_self() nss:v236 NewsURLForTagID:7 feedConfiguration:?];

          v238 = v245;
          sub_1D72584EC();

          v239 = v244;
          v240 = v289;
          (*(v146 + 16))(v244, v238, v289);
          (*(v146 + 56))(v239, 0, 1, v240);
          sub_1D6C0C908(v239, v234, v286, v282, v283, v284, v285);
          swift_unknownObjectRelease();

          sub_1D6C0CF24(v239, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          (*(v146 + 8))(v238, v240);
          v227 = v281;
          goto LABEL_85;
        }

        sub_1D6C0CE08(v144, type metadata accessor for FeedWebEmbed);
      }

      else
      {
        v228 = *(*(v218 + 16) + 56);
        if (v228)
        {

          if ([swift_unknownObjectRetain() isRouteable])
          {
            v229 = [v228 identifier];
            if (!v229)
            {
              sub_1D726207C();
              v229 = sub_1D726203C();
            }

            v230 = [objc_opt_self() nss:v229 NewsURLForTagID:?];

            v231 = v243;
            sub_1D72584EC();

            v232 = v242;
            v233 = v289;
            (*(v146 + 16))(v242, v231, v289);
            (*(v146 + 56))(v232, 0, 1, v233);
            sub_1D6C0C908(v232, v287, v286, v282, v283, v284, v285);

            swift_unknownObjectRelease();
            sub_1D6C0CF24(v232, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            (*(v146 + 8))(v231, v233);
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        sub_1D6C0CE08(v144, type metadata accessor for FeedWebEmbed);
      }

    case 5:
      v150 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v150;
      *&v298[9] = *(v121 + 121);
      v151 = *(v121 + 1);
      v291 = *v121;
      v292 = v151;
      v152 = *(v121 + 3);
      v293 = *(v121 + 2);
      v153 = *(v121 + 4);
      v296 = *(v121 + 5);
      v294 = v152;
      v295 = v153;
      v154 = [v291 identifier];
      if (!v154)
      {
        sub_1D726207C();
        v154 = sub_1D726203C();
      }

      v155 = [objc_opt_self() nss:v154 NewsURLForIssueID:?];

      v156 = v265;
      if (v155)
      {
        sub_1D72584EC();

        v157 = 0;
      }

      else
      {
        v157 = 1;
      }

      v199 = v286;
      (*(v288 + 56))(v156, v157, 1, v289);
      v200 = v267;
      sub_1D5EB8540(v156, v267);
      sub_1D6C0C908(v200, v287, v199, v282, v283, v284, v285);
      sub_1D6C0CF24(v200, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      return sub_1D5ECF320(&v291);
    case 7:
      v128 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v128;
      *&v298[16] = *(v121 + 8);
      LOBYTE(v299) = v121[144];
      v129 = *(v121 + 3);
      v293 = *(v121 + 2);
      v130 = *(v121 + 4);
      v131 = *(v121 + 5);
      v294 = v129;
      v295 = v130;
      v296 = v131;
      v132 = *(v121 + 1);
      v291 = *v121;
      v292 = v132;
      v133 = [v132 identifier];
      if (!v133)
      {
        sub_1D726207C();
        v133 = sub_1D726203C();
      }

      v134 = [objc_opt_self() nss:v133 NewsURLForTagID:?];

      v135 = v274;
      sub_1D72584EC();

      v136 = v288;
      v137 = v289;
      (*(v288 + 16))(v102, v135, v289);
      (*(v136 + 56))(v102, 0, 1, v137);
      sub_1D6C0C908(v102, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v102, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v136 + 8))(v135, v137);
      return sub_1D5EE5B54(&v291);
    case 8:
      v167 = v121;
      v121 = v278;
      sub_1D5C21C8C(v167, v278, type metadata accessor for FeedCustomItem);
      v168 = *(v271 + 20);
      v169 = &v121[v168 + *(type metadata accessor for FormatCustomItem.Resolved() + 24)];
      v170 = v277;
      sub_1D6C0CF80(v169, v277, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      if ((*(v273 + 48))(v170, 1, v275) == 1)
      {
        sub_1D6C0CE08(v121, type metadata accessor for FeedCustomItem);
        return sub_1D6C0CF24(v170, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      }

      v191 = v261;
      sub_1D5C21C8C(v170, v261, type metadata accessor for FormatCustomItem.Action);
      v192 = v260;
      sub_1D6C0CEBC(v191, v260, type metadata accessor for FormatCustomItem.Action);
      v193 = v288;
      v194 = v259;
      v195 = v192;
      v196 = v289;
      (*(v288 + 32))(v259, v195, v289);
      v197 = v257;
      (*(v193 + 16))(v257, v194, v196);
      (*(v193 + 56))(v197, 0, 1, v196);
      sub_1D6C0C908(v197, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v197, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v193 + 8))(v194, v196);
      sub_1D6C0CE08(v191, type metadata accessor for FormatCustomItem.Action);
      v125 = type metadata accessor for FeedCustomItem;
LABEL_3:
      v126 = v125;
      v127 = v121;
      return sub_1D6C0CE08(v127, v126);
    case 12:
      v117 = v280;
      sub_1D5C21C8C(v121, v280, type metadata accessor for FeedRecipe);
      v171 = v117[7];
      v172 = [v171 identifier];
      if (!v172)
      {
        sub_1D726207C();
        v172 = sub_1D726203C();
      }

      v173 = [v171 articles];
      sub_1D5B5D6A0();
      v174 = sub_1D726267C();

      if (v174 >> 62)
      {
        result = sub_1D7263BFC();
      }

      else
      {
        result = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v175 = v288;
      if (!result)
      {
        v177 = 0;
        v178 = v289;
        goto LABEL_54;
      }

      if ((v174 & 0xC000000000000001) != 0)
      {
        v176 = MEMORY[0x1DA6FB460](0, v174);
      }

      else
      {
        if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v176 = *(v174 + 32);
        swift_unknownObjectRetain();
      }

      v177 = [v176 identifier];
      swift_unknownObjectRelease();
      v178 = v289;
      if (!v177)
      {
        sub_1D726207C();
        v177 = sub_1D726203C();
LABEL_54:
      }

      v203 = [objc_opt_self() nss:v172 NewsURLForRecipeID:v177 articleID:?];

      v204 = v264;
      sub_1D72584EC();

      v205 = v263;
      (*(v175 + 16))(v263, v204, v178);
      (*(v175 + 56))(v205, 0, 1, v178);
      sub_1D6C0C908(v205, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v205, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      (*(v175 + 8))(v204, v178);
      v202 = type metadata accessor for FeedRecipe;
LABEL_56:
      v126 = v202;
      v127 = v117;
      return sub_1D6C0CE08(v127, v126);
    case 13:
      v158 = [*(v121 + 2) identifier];
      if (!v158)
      {
        sub_1D726207C();
        v158 = sub_1D726203C();
      }

      v159 = [objc_opt_self() nss:v158 NewsURLForTagID:?];

      v160 = v276;
      sub_1D72584EC();

      v161 = v288;
      v162 = v266;
      v163 = v289;
      (*(v288 + 16))(v266, v160, v289);
      (*(v161 + 56))(v162, 0, 1, v163);
      sub_1D6C0C908(v162, v287, v286, v282, v283, v284, v285);
      swift_unknownObjectRelease();

      sub_1D6C0CF24(v162, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      return (*(v161 + 8))(v160, v163);
    case 14:
      v179 = *(v121 + 11);
      v300 = *(v121 + 10);
      v301 = v179;
      v302 = *(v121 + 12);
      v180 = *(v121 + 7);
      v297 = *(v121 + 6);
      *v298 = v180;
      v181 = *(v121 + 9);
      *&v298[16] = *(v121 + 8);
      v299 = v181;
      v182 = *(v121 + 3);
      v293 = *(v121 + 2);
      v183 = *(v121 + 4);
      v296 = *(v121 + 5);
      v294 = v182;
      v295 = v183;
      v184 = *v121;
      v292 = *(v121 + 1);
      v291 = v184;
      v185 = [*(&v182 + 1) identifier];
      if (!v185)
      {
        sub_1D726207C();
        v185 = sub_1D726203C();
      }

      v186 = [objc_opt_self() nss:v185 NewsURLForPuzzleID:?];

      v187 = v269;
      if (v186)
      {
        sub_1D72584EC();

        v188 = 0;
      }

      else
      {
        v188 = 1;
      }

      v206 = v286;
      (*(v288 + 56))(v187, v188, 1, v289);
      v207 = v272;
      sub_1D5EB8540(v187, v272);
      sub_1D6C0C908(v207, v287, v206, v282, v283, v284, v285);
      sub_1D6C0CF24(v207, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      return sub_1D5F2DF58(&v291);
    case 15:
      v139 = *(v121 + 3);
      v138 = *(v121 + 4);
      v140 = [*(v121 + 7) identifier];
      if (!v140)
      {
        sub_1D726207C();
        v140 = sub_1D726203C();
      }

      v141 = [objc_opt_self() nss:v140 NewsURLForPuzzleTypeID:?];

      v142 = v268;
      if (v141)
      {
        sub_1D72584EC();

        v143 = 0;
      }

      else
      {
        v143 = 1;
      }

      v198 = v270;
      (*(v288 + 56))(v142, v143, 1, v289);
      sub_1D5EB8540(v142, v198);
      sub_1D6C0C908(v198, v287, v286, v282, v283, v284, v285);
      sub_1D6C0CF24(v198, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5BF6680(v139, v138);
      swift_unknownObjectRelease();

    case 18:
      return result;
    default:
      v125 = type metadata accessor for FeedItem;
      goto LABEL_3;
  }
}

uint64_t sub_1D6C0C908(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v35 = a2;
  v36 = a5;
  v30 = a4;
  v34 = a3;
  v8 = sub_1D725E84C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  sub_1D6C0CE68(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v37 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = sub_1D72585BC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C0CF80(a1, v19, &qword_1EDF45B40, v12);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1D6C0CF24(v19, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v21 + 32))(v24, v19, v20);
  (*(v9 + 104))(v33, *MEMORY[0x1E69D7FB8], v8);
  v26 = *(v35 + 32);
  v39 = sub_1D725A60C();
  v40 = sub_1D61CAB08();
  v38 = v26;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  sub_1D725E36C();
  swift_allocObject();

  v27 = v34;
  sub_1D725E34C();
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v28 = v37;
  if (v36)
  {
    sub_1D69F65B4(v24, v30, v36, v31, v32, v37);
  }

  else
  {
    (*(v21 + 16))(v37, v24, v20);
  }

  swift_getObjectType();
  (*(v21 + 56))(v28, 0, 1, v20);

  sub_1D725D97C();

  sub_1D6C0CF24(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1D6C0CD40()
{
  swift_unknownObjectRelease();

  sub_1D6C0CF24(v0 + 40, &unk_1EDF232F0, sub_1D6C0CDA4);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6C0CDA4()
{
  result = qword_1EDF23300;
  if (!qword_1EDF23300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF23300);
  }

  return result;
}

uint64_t sub_1D6C0CE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C0CE68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C0CEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C0CF24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6C0CE68(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C0CF80(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D6C0CE68(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1D6C0CFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a5;
  v45 = a2;
  v46 = a4;
  v9 = sub_1D726378C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v17 = [v16 initWithFrame_];
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = v17;
  sub_1D6C0E168();
  v50 = 0;
  v51 = 0;
  aBlock = 0;
  swift_allocObject();
  v5[6] = sub_1D725B2FC();
  v5[7] = 1;
  sub_1D5B5A498(0, &qword_1EC87FF58);
  v5[8] = 0;
  v5[9] = 0;
  v18 = a1;
  sub_1D726388C();
  v19 = v18;
  sub_1D726384C();
  v20 = objc_opt_self();
  v21 = [v20 secondaryLabelColor];
  sub_1D726380C();
  v22 = [v20 clearColor];
  sub_1D72637FC();
  (*(v10 + 104))(v13, *MEMORY[0x1E69DC500], v9);
  sub_1D726379C();
  v47 = v19;

  v23 = sub_1D72638AC();
  v6[2] = v23;
  [v23 setShowsMenuAsPrimaryAction_];
  [v6[2] setPreferredBehavioralStyle_];
  v24 = v6[2];
  v53 = sub_1D6C0DB14;
  v54 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1D5C38428;
  v52 = &block_descriptor_86;
  v25 = _Block_copy(&aBlock);
  v26 = v24;

  [v26 setConfigurationUpdateHandler_];
  _Block_release(v25);

  if (a3)
  {
    v27 = v6[2];
    sub_1D5B5A498(0, &qword_1EC885090);
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D72816C0;
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    v31 = v48;
    *(v30 + 16) = v46;
    *(v30 + 24) = v31;
    v53 = sub_1D6C0E730;
    v54 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1D6C0D5DC;
    v52 = &block_descriptor_12_1;
    v32 = _Block_copy(&aBlock);

    v33 = v27;

    v34 = [v29 elementWithUncachedProvider_];
    _Block_release(v32);
    *(v28 + 32) = v34;
    v35 = sub_1D726340C();
  }

  else
  {
    v36 = v6[2];
    sub_1D5B5A498(0, &qword_1EC885090);
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D72816C0;
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    v40 = v48;
    *(v39 + 16) = v46;
    *(v39 + 24) = v40;
    v53 = sub_1D6C0E1E4;
    v54 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1D6C0D5DC;
    v52 = &block_descriptor_6_2;
    v41 = _Block_copy(&aBlock);
    v33 = v36;

    v42 = [v38 elementWithUncachedProvider_];
    _Block_release(v41);
    *(v37 + 32) = v42;
    v35 = sub_1D72633FC();
  }

  v43 = v35;
  [v33 setMenu_];

  return v6;
}

uint64_t sub_1D6C0D5DC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D6C0E244, v4);
}

void sub_1D6C0D670(uint64_t a1, uint64_t a2)
{
  sub_1D5B5A498(0, &qword_1EC883280);
  v3 = sub_1D726265C();
  (*(a2 + 16))(a2, v3);
}

void *sub_1D6C0D6EC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v40 = a4;
  v10 = sub_1D726378C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = v17;
  sub_1D6C0E168();
  v42 = 0;
  v43 = 0;
  aBlock = 0;
  swift_allocObject();
  v5[6] = sub_1D725B2FC();
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v37 = sub_1D5B5A498(0, &qword_1EC87FF58);
  swift_getObjectType();
  aBlock = a1;
  v39 = a1;
  v18 = a3;
  v19 = sub_1D725CC2C();
  sub_1D726388C();
  v20 = v19;
  sub_1D726384C();
  v21 = objc_opt_self();
  v22 = [v21 secondaryLabelColor];
  sub_1D726380C();
  v23 = [v21 clearColor];
  sub_1D72637FC();
  v24 = v10;
  v25 = v38;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DC500], v24);
  sub_1D726379C();

  sub_1D5B5A498(0, &qword_1EDF04350);
  v26 = swift_allocObject();
  *(v26 + 16) = v40;
  *(v26 + 24) = v25;

  sub_1D726375C();
  v27 = sub_1D72638AC();
  v6[2] = v27;
  v45 = sub_1D6C0DB14;
  v46 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1D5C38428;
  v44 = &block_descriptor_27_3;
  v28 = _Block_copy(&aBlock);
  v29 = v27;

  [v29 setConfigurationUpdateHandler_];
  _Block_release(v28);

  [v6[2] setPreferredBehavioralStyle_];
  v30 = v6[7];
  if (v30 >= 2)
  {
    v31 = v39;
    v32 = sub_1D725E67C();
    if (v32)
    {
      v33 = v32;

      v34 = v33 == v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = v6[2];
    [v35 setSelected_];
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1D6C0DB14(void *a1)
{
  sub_1D6C0E24C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  *&v28 = MEMORY[0x1EEE9AC00](v26, v27).n128_u64[0];
  v30 = &v43 - v29;
  v31 = [a1 state];
  if (v31 == 2)
  {
    sub_1D72638BC();
    v34 = sub_1D726389C();
    v35 = *(*(v34 - 8) + 48);
    if (v35(v17, 1, v34))
    {
      sub_1D6C0E2A4(v17, v25);
      sub_1D72638CC();
      sub_1D6C0E308(v17);
    }

    else
    {
      sub_1D5B5A498(0, qword_1EDF1A6A0);
      sub_1D72635DC();
      sub_1D726380C();
      sub_1D72638CC();
    }

    sub_1D72638BC();
    if (v35(v13, 1, v34))
    {
      sub_1D6C0E2A4(v13, v25);
      sub_1D72638CC();
      return sub_1D6C0E308(v13);
    }
  }

  else
  {
    if (v31 == 4)
    {
      sub_1D72638BC();
      v32 = sub_1D726389C();
      v33 = *(*(v32 - 8) + 48);
      if (v33(v30, 1, v32))
      {
        sub_1D6C0E2A4(v30, v25);
        sub_1D72638CC();
        sub_1D6C0E308(v30);
      }

      else
      {
        v38 = [objc_opt_self() labelColor];
        sub_1D726380C();
        sub_1D72638CC();
      }

      sub_1D72638BC();
      if (v33(v21, 1, v32))
      {
        sub_1D6C0E2A4(v21, v25);
        sub_1D72638CC();
        return sub_1D6C0E308(v21);
      }

      v40 = [objc_opt_self() systemFillColor];
      sub_1D72637FC();
      return sub_1D72638CC();
    }

    sub_1D72638BC();
    v36 = sub_1D726389C();
    v37 = *(*(v36 - 8) + 48);
    if (v37(v9, 1, v36))
    {
      sub_1D6C0E2A4(v9, v25);
      sub_1D72638CC();
      sub_1D6C0E308(v9);
    }

    else
    {
      v41 = [objc_opt_self() secondaryLabelColor];
      sub_1D726380C();
      sub_1D72638CC();
    }

    sub_1D72638BC();
    if (v37(v5, 1, v36))
    {
      sub_1D6C0E2A4(v5, v25);
      sub_1D72638CC();
      return sub_1D6C0E308(v5);
    }
  }

  v42 = [objc_opt_self() clearColor];
  sub_1D72637FC();
  return sub_1D72638CC();
}

uint64_t sub_1D6C0DFEC()
{
  sub_1D5B74328(*(v0 + 32));

  sub_1D6C0E6DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25DebugFormatDockButtonItemC5Model33_04B0F6CACC242E5537990CDC3D0E42EDLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6C0E084(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6C0E0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D6C0E138(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_1D6C0E168()
{
  if (!qword_1EC8938A8)
  {
    sub_1D5B49E48(255, &qword_1EC8938B0, &type metadata for DebugFormatDockBadge, MEMORY[0x1E69E6720]);
    v0 = sub_1D725B36C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8938A8);
    }
  }
}

uint64_t sub_1D6C0E1E8(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();
}

void sub_1D6C0E24C()
{
  if (!qword_1EC892D70)
  {
    sub_1D726389C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892D70);
    }
  }
}

uint64_t sub_1D6C0E2A4(uint64_t a1, uint64_t a2)
{
  sub_1D6C0E24C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C0E308(uint64_t a1)
{
  sub_1D6C0E24C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D6C0E364(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_1D726378C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D726389C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = v14;
  sub_1D6C0E168();
  v28 = 0;
  v29 = 0;
  aBlock = 0;
  swift_allocObject();
  v3[6] = sub_1D725B2FC();
  sub_1D5B5A498(0, &qword_1EC87FF58);
  v3[8] = 0;
  v3[9] = 0;
  v3[7] = 0;
  v15 = a1;
  sub_1D726388C();
  v16 = v15;
  sub_1D726384C();
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  sub_1D726380C();
  v19 = [v17 clearColor];
  sub_1D72637FC();
  (*(v8 + 104))(v11, *MEMORY[0x1E69DC500], v7);
  sub_1D726379C();

  sub_1D5B5A498(0, &qword_1EDF04350);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = a3;

  sub_1D726375C();
  v21 = sub_1D72638AC();
  v4[2] = v21;
  v31 = sub_1D6C0DB14;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D5C38428;
  v30 = &block_descriptor_21_1;
  v22 = _Block_copy(&aBlock);
  v23 = v21;

  [v23 setConfigurationUpdateHandler_];
  _Block_release(v22);

  [v4[2] setPreferredBehavioralStyle_];
  return v4;
}

void sub_1D6C0E6DC(void *a1, uint64_t a2, void *a3)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1D6C0E734()
{
  v1 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = *(v0 + 16);
  if (*(v0 + 32) == 1)
  {
    sub_1D6C0E8E8();
    swift_allocObject();
    v4 = v3;
    return sub_1D725BAFC();
  }

  else
  {
    v6 = *(v0 + 24);
    sub_1D5E3E824(v3, v6);
    sub_1D72620CC();
    sub_1D604FB70();
    sub_1D72620AC();
    sub_1D6C0E8E8();
    swift_allocObject();
    v7 = sub_1D725BB1C();
    sub_1D69DEE44(v3, v6, 0);
    return v7;
  }
}

uint64_t sub_1D6C0E854()
{
  sub_1D69DEE44(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1D6C0E8E8()
{
  if (!qword_1EC8938B8)
  {
    sub_1D5B58D88();
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8938B8);
    }
  }
}

void sub_1D6C0E9D8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView];
    v6 = [objc_opt_self() monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
    [v5 setFont_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      MEMORY[0x1EEE9AC00](v9, v10);
      sub_1D5B5D53C(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      sub_1D725BDCC();
      sub_1D5B5DA7C();
      v11 = sub_1D726308C();
      sub_1D725BAAC();

      v12 = sub_1D726308C();
      sub_1D725BADC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D6C0EC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView);
  if (*(a1 + 8))
  {
    v3 = sub_1D726203C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];
}

void sub_1D6C0ECB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView);
  MEMORY[0x1DA6F9910](0xA3A64656C696146, 0xE90000000000000ALL);
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  v3 = sub_1D726203C();

  [v2 setText_];
}

void sub_1D6C0F050()
{
  sub_1D5B5D53C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72816C0;
  v2 = sub_1D726203C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v3 style:0 target:v0 action:sel_doDismiss];

    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6C0F150()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1D6C0F1D4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

void sub_1D6C0F318()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725FB0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725FB1C();
  v70 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v69 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83.receiver = v0;
  v83.super_class = ObjectType;
  objc_msgSendSuper2(&v83, sel_viewDidLoad, v10);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v67 = v7;
  v71 = v8;
  v72 = v4;
  v73 = v3;
  v14 = [objc_opt_self() systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v1 navigationItem];
  v17 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24];
  v16 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem], v17);
  (*(*(v16 + 8) + 40))(&v81, v17);
  v19 = v81;
  v18 = v82;
  v79 = v81;
  v80 = v82;
  v20 = FeedItem.Kind.description.getter();
  v22 = v21;
  sub_1D5BF6680(v19, v18);
  v23 = sub_1D5C73AB0(v20, v22);
  if (v24)
  {
    v77 = v23;
    v78 = v24;
    sub_1D5BF4D9C();
    v25 = sub_1D7263A0C();
    v27 = v26;

    v28 = sub_1D5FD24A4(1uLL, v20, v22);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
    v37 = v36;

    v75 = v25;
    v76 = v27;

    MEMORY[0x1DA6F9910](v35, v37);
  }

  v68 = ObjectType;
  v38 = sub_1D726203C();

  [v15 setTitle_];

  v39 = [v1 navigationItem];
  [v39 setLeftItemsSupplementBackButton_];

  v40 = [v1 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0);
  v41 = swift_allocObject();
  v74 = xmmword_1D72816C0;
  *(v41 + 16) = xmmword_1D72816C0;
  v42 = sub_1D726203C();
  v43 = objc_opt_self();
  v44 = [v43 systemImageNamed_];

  if (!v44)
  {
    goto LABEL_9;
  }

  v45 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v46 = v1;
  v47 = [v45 initWithImage:v44 style:0 target:v46 action:sel_doTapToRadar];

  *(v41 + 32) = v47;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v48 = sub_1D726265C();

  [v40 setLeftBarButtonItems_];

  v49 = [v46 &_OBJC_LABEL_PROTOCOL___FCAssetDataProvider + 2];
  v50 = swift_allocObject();
  *(v50 + 16) = v74;
  v51 = sub_1D726203C();
  v52 = [v43 systemImageNamed_];

  if (!v52)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v52 style:2 target:v46 action:sel_doDismiss];

  *(v50 + 32) = v53;
  v54 = sub_1D726265C();

  [v49 setRightBarButtonItems_];

  v55 = [v46 view];
  v57 = v72;
  v56 = v73;
  v58 = v71;
  if (v55)
  {
    v59 = v55;
    v60 = *&v46[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView];
    [v55 addSubview_];

    [v60 setDelegate_];
    [v60 setDataSource_];
    [v60 setAlwaysBounceVertical_];
    sub_1D5B5A498(0, &qword_1EC88DCB0);
    sub_1D7262DAC();
    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    sub_1D725D78C();
    v61 = v69;
    static CoverView.loading.getter(v69);
    v62 = v67;
    (*(v57 + 104))(v67, *MEMORY[0x1E69D8850], v56);
    sub_1D725D77C();
    (*(v57 + 8))(v62, v56);
    (*(v70 + 8))(v61, v58);
    sub_1D6C6DDB0();
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v63 = sub_1D726308C();
    sub_1D725BAAC();

    v64 = sub_1D726308C();
    sub_1D725BADC();

    v65 = sub_1D726308C();
    sub_1D725BB3C();

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1D6C0FB30(__int128 *a1, uint64_t a2)
{
  sub_1D6C12108(0, &qword_1EC893918, type metadata accessor for DebugInspectionItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v57 - v10;
  v12 = type metadata accessor for DebugInspectionItem();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v74 = a1[2];
  v75 = v15;
  v76 = a1[4];
  v16 = a1[1];
  v72 = *a1;
  v73 = v16;
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC9BAD28;
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v57[1] = v18;
  v19 = swift_allocObject();
  v61 = xmmword_1D7273AE0;
  *(v19 + 16) = xmmword_1D7273AE0;
  v60 = a2;
  v20 = (a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem);
  v22 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24);
  v21 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32);
  __swift_project_boxed_opaque_existential_1(v20, v22);
  v23 = (*(*(v21 + 8) + 8))(v22);
  v25 = v24;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v57[0] = sub_1D5B7E2C0();
  *(v19 + 64) = v57[0];
  *(v19 + 32) = v23;
  *(v19 + 40) = v25;
  sub_1D7262EDC();
  v57[2] = v17;
  sub_1D725C30C();

  v26 = v20[3];
  v27 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v26);
  v28 = (*(*(v27 + 8) + 8))(v26);
  v29 = a1[3];
  v69 = a1[2];
  v70 = v29;
  v71 = a1[4];
  v30 = a1[1];
  v67 = *a1;
  v68 = v30;
  sub_1D6B64124(v28, v31, v7);

  v32 = v59;
  v33 = *(v59 + 48);
  if (v33(v7, 1, v12) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v34 = sub_1D725AA4C();
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v63 = v73;
    v62 = v72;
    sub_1D6B64124(v34, v35, v11);

    if (v33(v7, 1, v12) != 1)
    {
      sub_1D6C1228C(v7, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    }
  }

  else
  {
    sub_1D6C1216C(v7, v11);
    (*(v32 + 56))(v11, 0, 1, v12);
  }

  if (v33(v11, 1, v12) == 1)
  {
    sub_1D6C1228C(v11, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    sub_1D7262EBC();
    v36 = swift_allocObject();
    *(v36 + 16) = v61;
    v38 = v20[3];
    v37 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v38);
    v39 = (*(*(v37 + 8) + 8))(v38);
    v40 = v57[0];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = v40;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    sub_1D725C30C();

    sub_1D5B5D358(0, &qword_1EC88EF80);
    v42 = swift_allocObject();
    *(v42 + 16) = v61;
    sub_1D5B5D358(0, &qword_1EC893920);
    v43 = swift_allocObject();
    *(v43 + 16) = v61;
    v45 = v20[3];
    v44 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v45);
    v46 = (*(*(v44 + 8) + 8))(v45);
    v48 = v47;
    sub_1D6C12358();
    v49 = swift_allocError();
    *v50 = v46;
    *(v50 + 8) = v48;
    *(v50 + 16) = 0;
    *(v43 + 32) = v49;
    *(v43 + 88) = 1;
    *(v42 + 32) = 0x726F727245;
    *(v42 + 40) = 0xE500000000000000;
    *(v42 + 48) = v43;
    v51 = v60;
    *(v60 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v42;
  }

  else
  {
    v52 = v58;
    sub_1D6C1216C(v11, v58);
    sub_1D7116318(&v67);
    v53 = *(&v68 + 1);
    v54 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v55 = (*(v54 + 8))(v53, v54);
    sub_1D6C122FC(v52);
    v51 = v60;
    *(v60 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v55;

    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  return [*(v51 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView) reloadData];
}

id sub_1D6C101F0(void *a1, uint64_t a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  v6 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24);
  v5 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem), v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D5B7E2C0();
  *(v4 + 64) = v11;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v4 + 96) = v10;
  *(v4 + 104) = v11;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_1D725C30C();

  sub_1D5B5D358(0, &qword_1EC88EF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  sub_1D5B5D358(0, &qword_1EC893920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  *(v13 + 32) = a1;
  *(v13 + 88) = 1;
  *(v12 + 32) = 0x726F727245;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 48) = v13;
  *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v12;
  v14 = a1;

  return [*(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView) reloadData];
}

uint64_t sub_1D6C10468()
{
  v0 = sub_1D725FB0C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725FB1C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69D8828], v5, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D8848], v0);
  sub_1D725D77C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

void sub_1D6C108C8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0);
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

void sub_1D6C10B20(__int128 *a1, char *a2, uint64_t a3)
{
  v79 = a3;
  v76 = sub_1D725D52C();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v5);
  v70 = (v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_1D725D7FC();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v7);
  v72 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D6C12108(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v78 = v69 - v12;
  sub_1D6C12108(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v9);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v74 = v69 - v15;
  sub_1D6C12108(0, &qword_1EC893918, type metadata accessor for DebugInspectionItem, v9);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v69 - v18;
  v84 = type metadata accessor for DebugInspectionItem();
  v20 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v21);
  v77 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[2];
  v24 = a1[4];
  v94 = a1[3];
  v95 = v24;
  v25 = *a1;
  v92 = a1[1];
  v93 = v23;
  v91 = v25;
  v26 = a2;
  v27 = [a2 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D72816C0;
  v29 = sub_1D726203C();
  v30 = [objc_opt_self() systemImageNamed_];

  if (!v30)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v30 style:0 target:v26 action:sel_doTapToRadar];

  *(v28 + 32) = v31;
  sub_1D5B5A498(0, &qword_1EDF04590);
  v32 = sub_1D726265C();

  [v27 setLeftBarButtonItems_];

  v33 = *&v26[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24];
  v34 = *&v26[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32];
  __swift_project_boxed_opaque_existential_1(&v26[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem], v33);
  v35 = (*(*(v34 + 8) + 8))(v33);
  v88 = v93;
  v89 = v94;
  v90 = v95;
  v86 = v91;
  v87 = v92;
  sub_1D6B64124(v35, v36, v19);

  v37 = v84;
  if ((*(v20 + 48))(v19, 1, v84) == 1)
  {
    sub_1D6C1228C(v19, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    return;
  }

  v38 = v19;
  v39 = v77;
  sub_1D6C1216C(v38, v77);
  v40 = *&v26[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter + 8];
  v69[3] = *&v26[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter];
  sub_1D725F82C();
  v41 = sub_1D725F7DC();
  v42 = sub_1D725D19C();
  (*(*(v42 - 8) + 56))(v78, 1, 1, v42);
  sub_1D6C12108(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
  v43 = v75;
  v44 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v96 = *(v75 + 72);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D7273AE0;
  v46 = swift_allocObject();
  v46[5] = v37;
  v46[6] = sub_1D6C121D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46 + 2);
  sub_1D6C12228(v39, boxed_opaque_existential_1);
  v46[7] = 0xD000000000000014;
  v46[8] = 0x80000001D73ED630;
  *(v45 + v44) = v46;
  v48 = *MEMORY[0x1E69D7950];
  v49 = *(v43 + 104);
  v84 = v44;
  v50 = v76;
  v83 = v43 + 104;
  v82 = v49;
  v49((v45 + v44), v48, v76);
  v51 = [*(v79 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext) filePathsForDebugAttachments];
  if (!v51)
  {
    goto LABEL_16;
  }

  v52 = v51;
  v69[2] = v40;
  v53 = sub_1D726267C();

  v54 = *(v53 + 16);
  v55 = v70;
  if (v54)
  {
    v69[0] = v45;
    v69[1] = v41;
    *&v86 = MEMORY[0x1E69E7CC0];
    sub_1D6999E2C(0, v54, 0);
    v56 = v86;
    v81 = *MEMORY[0x1E69D7968];
    v75 = v53;
    v57 = (v53 + 40);
    do
    {
      v59 = *(v57 - 1);
      v58 = *v57;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v58;
      *v55 = v60;
      v82(v55, v81, v50);
      *&v86 = v56;
      v62 = *(v56 + 16);
      v61 = *(v56 + 24);

      if (v62 >= v61 >> 1)
      {
        sub_1D6999E2C(v61 > 1, v62 + 1, 1);
        v56 = v86;
      }

      *(v56 + 16) = v62 + 1;
      (*(v43 + 32))(v56 + v84 + v62 * v96, v55, v50);
      v57 += 2;
      --v54;
    }

    while (v54);

    v63 = v80;
    v45 = v69[0];
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
    v63 = v80;
  }

  swift_getObjectType();
  v85 = v45;
  sub_1D6988494(v56);
  v64 = *(v79 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider + 24);
  v65 = *(v79 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider), v64);
  v66 = (*(v65 + 8))(v64, v65);
  sub_1D6988494(v66);
  (*(v71 + 104))(v72, *MEMORY[0x1E69D79C8], v73);
  v67 = v74;
  sub_1D725F61C();
  v68 = sub_1D725F62C();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_1D725D9CC();
  if (v63)
  {
  }

  sub_1D6C1228C(v67, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  sub_1D6C122FC(v77);
}

void sub_1D6C1156C(uint64_t a1, void *a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
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
  sub_1D5B5D358(0, &qword_1EDF194C0);
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

unint64_t sub_1D6C119BC()
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(v2 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (result < *(v3 + 16))
  {
    sub_1D6C12004(v3 + (result << 6) + 32, v40);

    sub_1D6C12004(v40, &v35);
    if (v39)
    {
      v4 = v35;
      sub_1D5B5A498(0, &qword_1EC88DCB0);
      v5 = sub_1D7262D8C();
      v6 = [v5 textLabel];
      if (v6)
      {
        v7 = v6;
        sub_1D5EE763C(v4);
        v8 = sub_1D726203C();

        [v7 setText_];
      }

      v9 = [v5 textLabel];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() systemFontOfSize_];
        [v10 setFont_];
      }

      v12 = [v5 textLabel];
      if (!v12)
      {
        sub_1D6C12060(v40);

        return v5;
      }

      v13 = v12;
      [v12 setNumberOfLines_];
    }

    else
    {
      v33[0] = v36;
      v33[1] = v37;
      v34 = v38;
      type metadata accessor for SubtitleTableViewCell();
      v5 = sub_1D7262D8C();
      v14 = [v5 textLabel];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1D726203C();

        [v15 setText_];
      }

      else
      {
      }

      v17 = [v5 textLabel];
      if (v17)
      {
        v18 = v17;
        v19 = [objc_opt_self() systemFontOfSize_];
        [v18 setFont_];
      }

      v20 = [v5 detailTextLabel];
      if (v20)
      {
        v21 = v20;
        sub_1D5F17E90(v33, v31);
        if (v32)
        {
          __swift_project_boxed_opaque_existential_1(v31, v32);
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(v31);
        }

        else
        {
          sub_1D5F17DCC(v31);
        }

        v22 = sub_1D726203C();

        [v21 setText_];
      }

      v23 = [v5 detailTextLabel];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() secondaryLabelColor];
        [v24 setTextColor_];
      }

      v26 = [v5 detailTextLabel];
      if (v26)
      {
        v27 = v26;
        [v26 setNumberOfLines_];
      }

      v28 = [v5 detailTextLabel];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_opt_self() systemFontOfSize_];
        [v29 setFont_];
      }

      sub_1D5F17DCC(v33);
    }

    sub_1D6C12060(v40);
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1D6C12108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C1216C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugInspectionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6C121D0()
{
  result = qword_1EC892968;
  if (!qword_1EC892968)
  {
    type metadata accessor for DebugInspectionItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892968);
  }

  return result;
}

uint64_t sub_1D6C12228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugInspectionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C1228C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C12108(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C122FC(uint64_t a1)
{
  v2 = type metadata accessor for DebugInspectionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6C12358()
{
  result = qword_1EC893928;
  if (!qword_1EC893928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893928);
  }

  return result;
}

uint64_t FeedCursorGroup.identifier.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1D725AA4C();
}

uint64_t sub_1D6C12480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D6D92DCC(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = *(a2 - 8);
  (*(v11 + 16))(a3, v3, a2);
  v9 = *(v11 + 56);

  return v9(a3, 0, 1, a2);
}

uint64_t FeedCursorGroup.init(createdDate:group:configIdentifier:serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = sub_1D725891C();
  (*(*(v13 - 8) + 32))(a7, a1, v13);
  v14 = type metadata accessor for FeedCursorGroup();
  v15 = v14[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v15, a2, AssociatedTypeWitness);
  v17 = (a7 + v14[10]);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(*(a6 - 8) + 32);
  v19 = a7 + v14[11];

  return v18(v19, a5, a6);
}

uint64_t static FeedCursorGroup.tags(from:excluding:)()
{
  type metadata accessor for FeedCursorGroup();
  sub_1D72627FC();
  sub_1D5B65AF4();
  swift_getWitnessTable();
  return sub_1D726242C();
}

uint64_t FeedCursorGroup.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedCursorGroup.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedCursorGroup.configIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t static FeedCursorGroup.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for FeedCursorGroup();
  swift_getAssociatedConformanceWitness();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6C12B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a3;
  v14[1] = a2;
  v16 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = v14 - v7;
  v9 = *(type metadata accessor for FeedCursorGroup() + 36);
  v10 = *(AssociatedConformanceWitness + 64);
  v11 = swift_checkMetadataState();
  v14[0] = v9;
  v10(v11, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v12 = sub_1D7262B9C();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  result = 0;
  if ((v12 & 1) == 0)
  {
    result = (*(AssociatedConformanceWitness + 104))(v11, AssociatedConformanceWitness);
  }

  *v15 = result;
  return result;
}

uint64_t sub_1D6C12DCC()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6C12EE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (v13 <= *(v14 + 84))
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v13;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v15;
  v21 = v16 + 7;
  v22 = v17 + 16;
  if (a2 <= v19)
  {
    goto LABEL_34;
  }

  v23 = ((v22 + ((v21 + (v20 & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(*(v9 - 8) + 64);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_13;
  }

  v27 = ((a2 - v19 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_34;
      }

LABEL_21:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = ((v22 + ((v21 + (v20 & ~v15)) & 0xFFFFFFF8)) & ~v17) + *(*(v9 - 8) + 64);
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      return v19 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v8 == v19)
  {
    v31 = *(v7 + 48);
    v32 = a1;
    v33 = v8;
    v34 = v6;
LABEL_36:

    return v31(v32, v33, v34);
  }

  v35 = (a1 + v20) & ~v15;
  if (v12 == v19)
  {
    v36 = *(v11 + 48);

    return v36(v35);
  }

  else
  {
    v37 = (v21 + v35) & 0xFFFFFFFFFFFFFFF8;
    if ((v18 & 0x80000000) != 0)
    {
      v31 = *(v14 + 48);
      v32 = ((v22 + v37) & ~v17);
      v33 = *(v14 + 84);
      v34 = v9;
      goto LABEL_36;
    }

    v38 = *(v37 + 8);
    if (v38 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}