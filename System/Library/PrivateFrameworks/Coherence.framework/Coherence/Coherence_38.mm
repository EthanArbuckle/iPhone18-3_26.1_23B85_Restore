BOOL sub_1AE18B234(char *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v34 = a3;
  v5 = a3[2];
  v6 = sub_1AE23D7CC();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v33 = *v3;
  v32 = *(v3 + 2);
  v18 = *(v10 + 16);
  v10 += 16;
  v29 = v18;
  v18(&v27 - v16, a1, v5);
  v19 = (v10 - 8);
  v20 = (v10 + 32);
  v30 = v10;
  v21 = (v10 + 16);
  while (1)
  {
    v35 = v33;
    v36 = v32;
    CRUnorderedTree.parent(of:)(v34, v9);
    v22 = *v19;
    (*v19)(v17, v5);
    v23 = (*v20)(v9, 1, v5);
    if (v23 == 1)
    {
      break;
    }

    (*v21)(v14, v9, v5);
    v29(v17, v14, v5);
    v24 = *(v34[4] + 8);
    v25 = sub_1AE23CCBC();
    v22(v14, v5);
    if (v25)
    {
      v22(v17, v5);
      return v23 != 1;
    }
  }

  (*(v27 + 8))(v9, v28);
  return v23 != 1;
}

uint64_t sub_1AE18B4D8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v5 = a1[2];
  v6 = a1[4];
  v92 = a1[3];
  v102 = v6;
  v7 = type metadata accessor for TreeNode();
  v104 = *(v7 - 8);
  v8 = *(v104 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v67 - v9;
  v91 = v10;
  v11 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v67 - v13;
  v103 = v11;
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v75 = sub_1AE23D7CC();
  v69 = *(v75 - 8);
  v23 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v25 = &v67 - v24;
  v26 = *(v5 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v101 = *v3;
  v32 = *(v3 + 2);
  v33 = *(v26 + 16);
  v26 += 16;
  v105 = &v67 - v34;
  v98 = v33;
  v33();
  v35 = a1;
  v36 = (v26 - 8);
  v100 = (v26 + 32);
  v37 = (v26 + 16);
  v95 = (v26 + 40);
  v86 = (v104 + 56);
  v85 = (v14 + 16);
  v84 = (v104 + 48);
  v71 = (v104 + 32);
  v73 = (v104 + 8);
  v87 = (v14 + 8);
  v83 = v101;
  v99 = v22;
  v93 = v5;
  v82 = v35;
  v81 = v25;
  v89 = v30;
  v88 = (v26 + 16);
  v80 = v26;
  v79 = v32;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v107 = v101;
        v108 = v32;
        v38 = v105;
        v39 = v35;
        CRUnorderedTree.parent(of:)(v35, v25);
        v40 = *v36;
        (*v36)(v38, v5);
        if ((*v100)(v25, 1, v5) == 1)
        {
          (*(v69 + 8))(v25, v75);
          return (*v95)(v70, 1, 1, v5);
        }

        v104 = v40;
        v41 = *v37;
        (*v37)(v30, v25, v5);
        (v98)(v105, v30, v5);
        v42 = v102;
        if (sub_1AE23D37C())
        {
          break;
        }

        (v104)(v30, v5);
        v35 = v39;
      }

      v78 = v41;
      v112 = v83;
      v43 = v91;
      WitnessTable = swift_getWitnessTable();
      *&v107 = v5;
      *(&v107 + 1) = v43;
      v108 = v92;
      v109 = v42;
      v110 = &off_1F23C93F8;
      v111 = WitnessTable;
      type metadata accessor for CRDictionary();
      v45 = v99;
      CRDictionary.subscript.getter(v99);
      v46 = v96;
      v77 = *v95;
      v77(v96, 1, 1, v5);
      (*v86)(v46, 0, 1, v43);
      v47 = *(TupleTypeMetadata2 + 48);
      v48 = *v85;
      v49 = v90;
      v50 = v103;
      (*v85)(v90, v45, v103);
      v97 = v47;
      v48(&v49[v47], v46, v50);
      v51 = *v84;
      if ((*v84)(v49, 1, v43) != 1)
      {
        break;
      }

      v52 = *v87;
      v53 = v46;
      v54 = v103;
      (*v87)(v53, v103);
      v52(v99, v54);
      v30 = v89;
      (v104)(v89, v5);
      v55 = v51(&v49[v97], 1, v43) == 1;
      v56 = v49;
      if (!v55)
      {
        goto LABEL_14;
      }

      v52(v49, v103);
      v35 = v82;
      v25 = v81;
      v37 = v88;
      v5 = v93;
      v32 = v79;
    }

    v57 = v74;
    v48(v74, v49, v103);
    v58 = v97;
    if (v51(&v49[v97], 1, v43) == 1)
    {
      break;
    }

    v59 = v72;
    (*v71)(v72, &v49[v58], v43);
    swift_getWitnessTable();
    v106 = *(v102 + 8);
    swift_getWitnessTable();
    LODWORD(v97) = sub_1AE23E0AC();
    v76 = *v73;
    v76(v59, v43);
    v60 = *v87;
    v61 = v103;
    (*v87)(v96, v103);
    v60(v99, v61);
    v30 = v89;
    v62 = v57;
    v5 = v93;
    (v104)(v89, v93);
    v76(v62, v43);
    v60(v49, v61);
    v35 = v82;
    v25 = v81;
    v37 = v88;
    v32 = v79;
    if ((v97 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v64 = *v87;
  v65 = v103;
  (*v87)(v96, v103);
  v64(v99, v65);
  (v104)(v89, v93);
  (*v73)(v57, v43);
  v56 = v49;
LABEL_14:
  (*(v68 + 8))(v56, TupleTypeMetadata2);
  v5 = v93;
LABEL_15:
  v66 = v70;
  v78(v70, v105, v5);
  return v77(v66, 0, 1, v5);
}

BOOL CRUnorderedTree.contains(_:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for TreeNode();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v15[7] = *v2;
  WitnessTable = swift_getWitnessTable();
  v15[1] = v3;
  v15[2] = v6;
  v15[3] = v4;
  v15[4] = v5;
  v15[5] = &off_1F23C93F8;
  v15[6] = WitnessTable;
  type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(v11);
  v13 = (*(*(v6 - 8) + 48))(v11, 1, v6) != 1;
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t CRUnorderedTree.remove(_:)(uint64_t a1, void *a2)
{
  v82 = a1;
  v4 = a2[2];
  v74 = sub_1AE23D7CC();
  v73 = *(v74 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = a2;
  v76 = v62 - v9;
  v10 = a2[3];
  v11 = a2[4];
  v12 = type metadata accessor for TreeNode();
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  v20 = *(v12 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v72 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = v62 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v78 = v62 - v27;
  WitnessTable = swift_getWitnessTable();
  v87 = v4;
  v88 = v12;
  v89 = v10;
  v90 = v11;
  v77 = v11;
  v91 = &off_1F23C93F8;
  v92 = WitnessTable;
  v29 = type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(v19);
  if ((*(v20 + 48))(v19, 1, v12) == 1)
  {
    return (*(v14 + 8))(v19, v13);
  }

  v63 = v29;
  v65 = v14;
  v64 = v13;
  v67 = v10;
  v66 = v20;
  v31 = *(v20 + 32);
  v69 = v12;
  v31(v78, v19, v12);
  v32 = *v2;
  v33 = v2[1];
  v68 = v2 + 1;
  v83 = v2;
  v34 = v76;
  v35 = v2[2];
  v62[1] = v2 + 2;
  v87 = v32;
  v88 = v33;
  v89 = v35;
  v36 = *(v4 - 8);
  v79 = *(v36 + 16);
  v80 = v36 + 16;
  v79(v76, v82, v4);
  v81 = v36;
  v84 = *(v36 + 56);
  v85 = v36 + 56;
  v84(v34, 0, 1, v4);

  v37 = v75;
  v38 = CRUnorderedTree.children(of:)(v34, v75);
  (*(v73 + 8))(v34, v74);

  if ((v38 & 0xC000000000000001) != 0)
  {
    sub_1AE23D93C();
    result = sub_1AE23D36C();
    v38 = v87;
    v39 = v88;
    v40 = v89;
    v41 = v90;
    v42 = v91;
  }

  else
  {
    v41 = 0;
    v43 = -1 << *(v38 + 32);
    v39 = v38 + 56;
    v40 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v42 = v45 & *(v38 + 56);
  }

  v75 = v40;
  v46 = (v40 + 64) >> 6;
  v47 = (v81 + 8);
  while (v38 < 0)
  {
    if (!sub_1AE23D9AC())
    {
LABEL_22:
      v84(v7, 1, 1, v4);
      sub_1ADDDCE74();
      v51 = v66;
      v52 = v70;
      (*(v66 + 16))(v70, v78, v69);
      v53 = sub_1AE23D38C();
      swift_getWitnessTable();
      sub_1AE23CB1C();
      v54 = sub_1AE23CB6C();
      v56 = v82;
      v57 = v64;
      if (*v55)
      {
        sub_1ADFB1024(v82, v53);
      }

      v54(v86, 0);
      v58 = *(v51 + 8);
      v59 = v69;
      v58(v52, v69);
      v60 = v71;
      CRDictionary.removeValue(forKey:)(v56, v63, v71);
      (*(v65 + 8))(v60, v57);
      sub_1ADFB1024(v56, v53);
      v61 = v76;
      v79(v76, v56, v4);
      v84(v61, 0, 1, v4);
      sub_1ADE1E114(v61, v4, v72);
      v86[0] = 0;
      sub_1AE23CB8C();
      return (v58)(v78, v59);
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_12:
    v84(v7, 0, 1, v4);
    CRUnorderedTree.remove(_:)(v7, v37);
    result = (*v47)(v7, v4);
  }

  if (v42)
  {
    v48 = v41;
LABEL_11:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v79(v7, *(v38 + 48) + *(v81 + 72) * (v49 | (v48 << 6)), v4);
    goto LABEL_12;
  }

  v50 = v41;
  while (1)
  {
    v48 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v48 >= v46)
    {
      goto LABEL_22;
    }

    v42 = *(v39 + 8 * v48);
    ++v50;
    if (v42)
    {
      v41 = v48;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t CRUnorderedTree.parent(of:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = type metadata accessor for TreeNode();
  v8 = sub_1AE23D7CC();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v2;
  v13 = v2[2];
  if (sub_1AE23D37C())
  {
    v14 = *(*(v4 - 8) + 56);

    return v14(a2, 1, 1, v4);
  }

  else
  {
    v19 = a2;
    v27 = v12;
    WitnessTable = swift_getWitnessTable();
    v21 = v4;
    v22 = v7;
    v23 = v5;
    v24 = v6;
    v25 = &off_1F23C93F8;
    v26 = WitnessTable;
    type metadata accessor for CRDictionary();
    CRDictionary.subscript.getter(v11);
    v17 = *(v7 - 8);
    if ((*(v17 + 48))(v11, 1, v7) == 1)
    {
      (*(v20 + 8))(v11, v8);
      return (*(*(v4 - 8) + 56))(v19, 1, 1, v4);
    }

    else
    {
      sub_1ADE17570(v7, v19);
      return (*(v17 + 8))(v11, v7);
    }
  }
}

uint64_t sub_1AE18CB30(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v61 = a2[4];
  v62 = v4;
  v6 = type metadata accessor for TreeNode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v45 - v11;
  v49 = *(v5 - 8);
  v12 = v49[8];
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AE23D7CC();
  v15 = *(v63 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v59 = *v2;
  sub_1AE23DDAC();
  v24 = *(v7 + 72);
  v25 = v7;
  v26 = *(v7 + 80);
  swift_allocObject();
  v27 = sub_1AE23CFFC();
  v28 = *(v7 + 16);
  v28(v29, a1, v6);
  sub_1ADE0FCBC();
  v75 = v27;
  v58 = a1;
  v55 = v25 + 16;
  v54 = v28;
  v28(v23, a1, v6);
  v30 = *(v25 + 56);
  v53 = v25 + 56;
  v52 = v30;
  v30(v23, 0, 1, v6);
  v31 = v15[2];
  v51 = v15 + 2;
  v50 = v31;
  v31(v20, v23, v63);
  v64 = *(v25 + 48);
  v65 = v25 + 48;
  if (v64(v20, 1, v6) == 1)
  {
    v32 = v15[1];
LABEL_3:
    v33 = v63;
    v32(v23, v63);
    v32(v20, v33);
  }

  else
  {
    v48 = v49[6];
    v46 = (v49 + 4);
    v45 = v25;
    v34 = (v25 + 32);
    v47 = (v49 + 1);
    v49 = v15 + 1;
    while (1)
    {
      if (v48(v20, 1, v5) == 1)
      {
        (*v49)(v23, v63);
        (*(v45 + 8))(v20, v6);
        return v75;
      }

      (*v46)(v66, v20, v5);
      v74 = v59;
      WitnessTable = swift_getWitnessTable();
      v68 = v5;
      v69 = v6;
      v36 = v61;
      v70 = v62;
      v71 = v61;
      v72 = &off_1F23C93F8;
      v73 = WitnessTable;
      type metadata accessor for CRDictionary();
      v37 = v60;
      CRDictionary.subscript.getter(v60);
      v38 = v37;
      if (v64(v37, 1, v6) == 1)
      {
        (*v47)(v66, v5);
        v42 = *v49;
        v43 = v63;
        (*v49)(v23, v63);
        v42(v37, v43);
        return v75;
      }

      v39 = *v34;
      v40 = v57;
      (*v34)(v57, v38, v6);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v67 = *(v36 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        break;
      }

      v54(v56, v40, v6);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      (*v47)(v66, v5);
      v32 = *v49;
      v41 = v63;
      (*v49)(v23, v63);
      v39(v23, v40, v6);
      v52(v23, 0, 1, v6);
      v50(v20, v23, v41);
      if (v64(v20, 1, v6) == 1)
      {
        goto LABEL_3;
      }
    }

    (*(v45 + 8))(v40, v6);
    (*v47)(v66, v5);
    (*v49)(v23, v63);
  }

  return v75;
}

uint64_t sub_1AE18D284(uint64_t a1, void *a2)
{
  v158 = type metadata accessor for FinalizedTimestamp(0);
  v193 = *(v158 - 8);
  v4 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v149 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v142 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v142 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v151 = &v142 - v14;
  v15 = a2[2];
  v170 = sub_1AE23D7CC();
  v16 = *(v170 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v160 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v142 - v20;
  v21 = a2[3];
  v22 = a2[4];
  v144 = a2;
  v177 = v21;
  v23 = type metadata accessor for TreeNode();
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v176 = &v142 - v26;
  v27 = *(v23 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v180 = &v142 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v195 = &v142 - v34;
  v142 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v157 = &v142 - v37;
  v38 = *(v15 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v148 = &v142 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v166 = &v142 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v182 = &v142 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v178 = &v142 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v197 = &v142 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v156 = &v142 - v53;
  v198 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v143 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v173 = &v142 - v56;
  v206 = sub_1AE23C9EC();
  if (!sub_1AE23D0AC())
  {
  }

  v57 = 0;
  v163 = *(TupleTypeMetadata2 + 48);
  v164 = v55;
  v165 = (v55 + 16);
  v194 = (v38 + 32);
  v186 = (v27 + 32);
  v189 = (v27 + 16);
  v183 = v38 + 16;
  v196 = v38 + 48;
  v154 = v38;
  v58 = (v38 + 8);
  v174 = (v27 + 48);
  v159 = v27;
  v192 = (v27 + 8);
  v169 = (v16 + 8);
  v146 = (v193 + 56);
  v153 = (v193 + 48);
  v59 = v180;
  v60 = v157;
  v61 = v156;
  v162 = a1;
  v161 = TupleTypeMetadata2;
  v171 = v58;
  v191 = v22;
  while (1)
  {
    v63 = TupleTypeMetadata2;
    v64 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v64)
    {
      result = (*(v164 + 16))(v173, a1 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v57, v63);
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v143 != 8)
      {
        goto LABEL_56;
      }

      v199 = result;
      (*v165)(v173, &v199, v63);
      result = swift_unknownObjectRelease();
    }

    v66 = __OFADD__(v57, 1);
    v67 = v57 + 1;
    v68 = v171;
    if (v66)
    {
      break;
    }

    v172 = v67;
    v69 = v173;
    v193 = *v194;
    (v193)(v61, v173, v15);
    v185 = *v186;
    (v185)(v60, &v69[v163], v198);
    v70 = v60;
    v187 = v190[2];
    if ((sub_1AE23D37C() & 1) == 0)
    {
      v71 = *v189;
      v72 = v61;
      v73 = v195;
      v74 = v198;
      (*v189)(v195, v70, v198);
      v75 = sub_1ADE0FC48(v15, v15);
      v76 = *(v75 + 52);
      v77 = v154;
      v78 = *(v154 + 72);
      v79 = (*(v154 + 80) + *(v75 + 48)) & ~*(v154 + 80);
      swift_allocObject();
      v80 = sub_1AE23CFFC();
      v184 = *(v77 + 16);
      v184(v81, v72, v15);
      sub_1ADE0FCBC();
      v199 = v80;
      sub_1AE23D11C();
      swift_getWitnessTable();
      v82 = v191;
      v205 = sub_1AE23D39C();
      v188 = v71;
      v71(v59, v73, v74);
      v83 = *(v77 + 48);
      if (v83(v59, 1, v15) == 1)
      {
        v84 = *v192;
LABEL_25:
        v110 = v198;
        v84(v195, v198);
        v60 = v157;
        v84(v157, v110);
        v61 = v156;
        (*v68)(v156, v15);

        v84(v59, v110);
        goto LABEL_4;
      }

      v152 = (v192 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v181 = v83;
      v85 = v182;
      v86 = v82;
      while (2)
      {
        (v193)(v197, v59, v15);
        if (sub_1AE23D37C())
        {
          v91 = *v68;
          (*v68)(v197, v15);
        }

        else
        {
          v88 = v184;
          v184(v85, v197, v15);
          sub_1AE23D38C();
          v89 = v178;
          v90 = sub_1AE23D33C();
          v91 = *v68;
          (*v68)(v89, v15);
          if (v90)
          {
            v92 = v88;
            v93 = v198;
            v92(v85, v197, v15);
            sub_1AE23D33C();
            v94 = v91;
            v91(v89, v15);
            WitnessTable = swift_getWitnessTable();
            v199 = v15;
            v200 = v93;
            v201 = v177;
            v202 = v86;
            v203 = &off_1F23C93F8;
            v204 = WitnessTable;
            v96 = type metadata accessor for CRDictionary();
            v97 = v176;
            CRDictionary.subscript.getter(v176);
            result = (*v174)(v97, 1, v93);
            if (result == 1)
            {
              goto LABEL_55;
            }

            v84 = *v192;
            v98 = v195;
            v99 = v198;
            (*v192)(v195, v198);
            (v185)(v98, v97, v99);
            v100 = v175;
            sub_1ADE17570(v99, v175);
            v101 = v100;
            v102 = v181;
            v103 = v181(v100, 1, v15);
            v104 = v179;
            if (v103 == 1)
            {
              v94(v197, v15);
              (*v169)(v101, v170);
              goto LABEL_14;
            }

            v168 = v96;
            v105 = v166;
            (v193)();
            v106 = v205;
            if ((sub_1AE23D37C() & 1) == 0)
            {
              v94(v105, v15);
              v94(v197, v15);
LABEL_14:
              v59 = v180;
              v188(v180, v195, v198);
              v87 = v102(v59, 1, v15);
              v86 = v191;
              v85 = v182;
              if (v87 == 1)
              {
                goto LABEL_25;
              }

              continue;
            }

            v152 = v94;
            v185 = v84;
            v111 = v190[1];
            v112 = v190[2];
            v199 = *v190;
            v200 = v111;
            v201 = v112;

            v113 = sub_1AE18CB30(v195, v144);

            v184(v148, v166, v15);
            v184 = *v146;
            (v184)(v151, 1, 1, v158);
            if (sub_1AE23D0AC())
            {
              v114 = 0;
              v150 = v106;
              do
              {
                v115 = sub_1AE23D08C();
                sub_1AE23D00C();
                if (v115)
                {
                  result = (v188)(v167, v113 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v114, v198);
                  v116 = v160;
                  v117 = v185;
                  v118 = v114 + 1;
                  if (__OFADD__(v114, 1))
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  result = sub_1AE23DAAC();
                  v116 = v160;
                  v117 = v185;
                  if (v142 != 8)
                  {
                    goto LABEL_57;
                  }

                  v199 = result;
                  v188(v167, &v199, v198);
                  result = swift_unknownObjectRelease();
                  v118 = v114 + 1;
                  if (__OFADD__(v114, 1))
                  {
                    goto LABEL_54;
                  }
                }

                v187 = v118;
                v119 = v113;
                v120 = v198;
                v121 = v167;
                sub_1ADE17570(v198, v116);
                v117(v121, v120);
                if (v102(v116, 1, v15) == 1)
                {
                  (*v169)(v116, v170);
                  v113 = v119;
                }

                else
                {
                  v122 = v155;
                  (v193)();
                  v199 = *v190;
                  sub_1ADE17038(v104);
                  v123 = *v153;
                  v113 = v119;
                  if ((*v153)(v104, 1, v158) != 1)
                  {
                    v124 = v149;
                    sub_1ADE172E4(v104, v149);
                    v125 = v151;
                    v126 = v147;
                    sub_1ADE17348(v151, v147);
                    v127 = v158;
                    v128 = v123(v126, 1, v158);
                    sub_1ADE1727C(v126);
                    v129 = v128 == 1;
                    v130 = v152;
                    if (!v129)
                    {
                      v132 = v145;
                      sub_1ADE17348(v125, v145);
                      result = (v123)(v132, 1, v127);
                      if (result == 1)
                      {
                        goto LABEL_58;
                      }

                      v133 = *(v127 + 20);
                      v134 = *(v132 + v133);
                      v124 = v149;
                      v135 = *(v149 + v133);
                      if (v134 == v135)
                      {
                        v136 = sub_1ADF5EB00();
                        sub_1ADE173B8(v132);
                        v127 = v158;
                        v125 = v151;
                        if ((v136 & 1) == 0)
                        {
LABEL_43:
                          sub_1ADE173B8(v124);
                          v130(v155, v15);
                          goto LABEL_44;
                        }
                      }

                      else
                      {
                        sub_1ADE173B8(v132);
                        v137 = v134 < v135;
                        v127 = v158;
                        v125 = v151;
                        if (!v137)
                        {
                          goto LABEL_43;
                        }
                      }
                    }

                    sub_1ADE1727C(v125);
                    v131 = v148;
                    v130(v148, v15);
                    sub_1ADE172E4(v124, v125);
                    (v184)(v125, 0, 1, v127);
                    (v193)(v131, v155, v15);
LABEL_44:
                    v104 = v179;
                    goto LABEL_29;
                  }

                  v152(v122, v15);
                  sub_1ADE1727C(v104);
                }

LABEL_29:
                ++v114;
              }

              while (v187 != sub_1AE23D0AC());
            }

            v138 = v148;
            sub_1ADFB14A8(v148, v144);
            sub_1ADE1727C(v151);
            v139 = v152;
            v152(v138, v15);
            v139(v166, v15);
            v139(v197, v15);
            v140 = v198;
            v141 = v185;
            v185(v195, v198);
            v60 = v157;
            v141(v157, v140);
            v61 = v156;
            v139(v156, v15);
            a1 = v162;
LABEL_24:
            v59 = v180;
            goto LABEL_5;
          }

          v91(v197, v15);
        }

        break;
      }

      v107 = *v192;
      v108 = v198;
      (*v192)(v195, v198);
      v109 = v157;
      v107(v157, v108);
      v60 = v109;
      v61 = v156;
      v91(v156, v15);

      a1 = v162;
      goto LABEL_24;
    }

    (*v192)(v60, v198);
    (*v68)(v61, v15);
LABEL_4:
    a1 = v162;
LABEL_5:
    TupleTypeMetadata2 = v161;
    v62 = sub_1AE23D0AC();
    v57 = v172;
    if (v172 == v62)
    {
    }
  }

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
  return result;
}

uint64_t sub_1AE18E6C0(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v22 = sub_1AE23D7CC();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AE2418F0;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1AE23DFCC();
  v14 = v30;
  *(v13 + 32) = v29;
  *(v13 + 40) = v14;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v15 = *(v5 - 8);
  (*(v15 + 16))(v9, a1, v5);
  (*(v15 + 56))(v9, 0, 1, v5);
  v16 = CRUnorderedTree.children(of:)(v9, a2);
  (*(v6 + 8))(v9, v22);
  v29 = v16;
  v18 = a2[3];
  v17 = a2[4];
  v23 = v5;
  v24 = v18;
  v25 = v17;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  sub_1AE23D38C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38);
  v19 = sub_1AE23CF3C();

  v29 = v13;
  sub_1ADFB6F58(v19);
  return v29;
}

uint64_t sub_1AE18E944@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRUnorderedTree();
  v5 = sub_1AE18E6C0(a1, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v6, 0);
    v7 = v15;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      MEMORY[0x1B26FB670](v9, v10);

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ADE0B11C((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = 8224;
      *(v13 + 40) = 0xE200000000000000;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  return result;
}

uint64_t CRUnorderedTree.description.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *v1;
  v7 = *(v1 + 2);
  sub_1AE23D38C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38);
  sub_1AE23CF3C();

  sub_1AE18F584(&qword_1EB5B8C10);
  v2 = sub_1AE23CBFC();

  return v2;
}

uint64_t CRUnorderedTree.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v7 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v5 = type metadata accessor for CRDictionary.MergeableDelta();
  return CRDictionary.MergeableDelta.visitReferences(_:)(a1, v5);
}

uint64_t sub_1AE18ECF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v4 = type metadata accessor for CRDictionary.MergeableDelta();
  return (*(*(v4 - 8) + 32))(a2, a1, v4);
}

uint64_t CRUnorderedTree.MergeableDelta.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v9 = type metadata accessor for TreeNode();
  WitnessTable = swift_getWitnessTable();
  v21 = a2;
  v22 = v9;
  v23 = a3;
  v24 = a4;
  v25 = &off_1F23C93F8;
  v26 = WitnessTable;
  v11 = type metadata accessor for CRDictionary.MergeableDelta();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = swift_checkMetadataState();
  v17 = v27;
  result = CRDictionary.MergeableDelta.init(from:)(a1, a2, v16, a3, a4, &off_1F23C93F8, WitnessTable, v15);
  if (!v17)
  {
    return (*(v12 + 32))(v20, v15, v11);
  }

  return result;
}

uint64_t CRUnorderedTree.MergeableDelta.encode(to:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v7 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v5 = type metadata accessor for CRDictionary.MergeableDelta();
  return CRDictionary.MergeableDelta.encode(to:)(a1, v5);
}

uint64_t CRUnorderedTree<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v12 = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary();
  WitnessTable = swift_getWitnessTable();
  CRDictionary<>.encode(to:)(a1, v9, a3, WitnessTable);
}

uint64_t sub_1AE18F13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  if (sub_1AE23D0AC())
  {
    sub_1AE23DA0C();
    v16 = sub_1AE23D9FC();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1AE23D0AC();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_1AE23CBBC();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1AE23CCBC();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1AE18F510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v12 = *(v2 + 64);
  v8 = type metadata accessor for CROrderedTree();
  result = sub_1AE188C74(a1, v8);
  *a2 = result;
  return result;
}

uint64_t sub_1AE18F584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE18F5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 56);
  v8 = type metadata accessor for CRUnorderedTree();
  result = sub_1AE18E6C0(a1, v8);
  *a2 = result;
  return result;
}

void sub_1AE18F644(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  type metadata accessor for CRDictionary.MergeableDelta();
  sub_1ADFAF3A4();
}

uint64_t sub_1AE18F6DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE18F730()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVyxAA8TreeNodeOyxG_GSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE18F79C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v5 = a1[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  result = type metadata accessor for CRDictionary.MergeableDelta();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE18F894()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE18F8E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1AE18E944(a1, a2);
}

uint64_t sub_1AE18F90C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  return sub_1AE188F00(a1, a2);
}

double Anonymous.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v24 = type metadata accessor for Timestamp(0);
  v6 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Anonymous();
  v14 = *(v23 + 36);
  v15 = *(a2 - 8);
  v16 = *(v15 + 16);
  v25 = a1;
  v26 = a3;
  v16(a3 + v14, a1, a2);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v27 = sub_1ADDCC6B4(&unk_1F23BC168);
  *(&v27 + 1) = v17;
  v18 = sub_1ADDD8E0C();
  v20 = v19;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v18, v20);
  (*(v10 + 8))(v13, v9);
  v21 = v26;
  *v26 = v27;
  *&v27 = MEMORY[0x1E69E7CC8];
  *(&v27 + 1) = MEMORY[0x1E69E7CC8];
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v8[*(type metadata accessor for Replica() + 20)] = 0;
  *&v8[*(v24 + 20)] = 0;
  sub_1ADDD8290(v8);
  (*(v15 + 8))(v25, a2);
  sub_1AE017AB8(v8);
  result = *&v27;
  *(v21 + *(v23 + 40)) = v27;
  return result;
}

uint64_t Anonymous.mutate.setter(uint64_t a1, uint64_t a2)
{
  v4.n128_f64[0] = sub_1AE19117C(a1, a2);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1, v4);
}

void (*Anonymous.mutate.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v13 = *(a2 + 36);
  (*(v10 + 16))();
  return sub_1AE18FF20;
}

void sub_1AE18FF20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    v9 = sub_1AE19117C(v3, v8);
    v10 = *(v6 + 8);
    v10(v3, v5, v9);
    (v10)(v4, v5);
  }

  else
  {
    v11 = sub_1AE19117C((*a1)[5], v8);
    (*(v6 + 8))(v4, v5, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Anonymous.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v86 = a3;
  v9 = type metadata accessor for Timestamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23D7CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - v15;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 72);
  if (!v24)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v36 = 0xD000000000000017;
    *(v36 + 8) = 0x80000001AE25FB70;
    *(v36 + 16) = 0;
    swift_willThrow();
  }

  v75 = v21;
  v76 = v20;
  v77 = v23;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v25 = *(v24 + 16);
  v78 = a4;
  v79 = v17;
  v73 = v12;
  v72 = v9;
  if ((~v25 & 0xF000000000000007) != 0 && ((v25 >> 59) & 0x1E | (v25 >> 2) & 1) == 7)
  {
    v26 = a1;
    v27 = a2;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v26 = a1;
    v27 = a2;
    v28 = &unk_1ED966F48;
  }

  swift_beginAccess();
  v29 = v28[8];
  v30 = v28[9];
  v31 = v28[10];
  if (v29)
  {
    v32 = v28[8];
    v33 = v28[9];
  }

  else
  {
    v33 = 0;
  }

  if (v29)
  {
    v34 = v28[10];
  }

  else
  {
    v34 = 0xC000000000000000;
  }

  swift_retain_n();
  sub_1ADE56F74(v29, v30, v31);
  result = sub_1ADDE94BC(v33, v34, &v83);
  if (v5)
  {
  }

  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_54;
  }

  v37 = v83;
  v82 = v83;

  v38 = v27;
  sub_1AE1DE524(v27, &v82);
  v39 = v79;
  v71 = v37;

  v40 = *(&v84 + 1);
  v41 = v85;
  v70 = v84;
  v69 = v83;
  if (v84)
  {
    if (v83)
    {
      (*(*v83 + 88))(&v83, result);
      goto LABEL_20;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v83 = 0u;
  v84 = 0u;
LABEL_20:
  v68 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  v42 = swift_dynamicCast();
  v43 = *(v39 + 56);
  if (v42)
  {
    v76 = v41;
    v43(v16, 0, 1, v38);
    v44 = v77;
    (*(v39 + 32))(v77, v16, v38);
    v45 = type metadata accessor for Anonymous();
    v46 = v78;
    result = (*(v39 + 16))(v78 + *(v45 + 36), v44, v38);
    v47 = *(&v71 + 1);
    *v46 = v71;
    v46[1] = v47;
    v48 = *(v26 + 72);
    if (v48)
    {
      v49 = *(v48 + 16);
      if ((~v49 & 0xF000000000000007) != 0 && ((v49 >> 59) & 0x1E | (v49 >> 2) & 1) == 7)
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v50 = &unk_1ED966F48;
      }

      swift_beginAccess();
      if (!v50[5] || ((v57 = *(v48 + 16), (~v57 & 0xF000000000000007) == 0) || ((v57 >> 59) & 0x1E | (v57 >> 2) & 1) != 7 ? (v58 = &unk_1ED966F48) : (v58 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10)), (result = swift_beginAccess(), (v59 = v58[5]) == 0) || !*(v59 + 16)))
      {
        *&v80 = MEMORY[0x1E69E7CC8];
        *(&v80 + 1) = MEMORY[0x1E69E7CC8];
        if (qword_1ED96AC50 != -1)
        {
          swift_once();
        }

        sub_1ADDD0F70();
        v63 = v73;
        sub_1AE23BFBC();
        *(v63 + *(type metadata accessor for Replica() + 20)) = 0;
        *(v63 + *(v72 + 20)) = 0;
        sub_1ADDD8290(v63);

        sub_1ADDDC21C(v69, *(&v69 + 1), v70);

        sub_1AE017AB8(v63);
        result = (*(v39 + 8))(v77, v38);
        v64 = *(v45 + 40);
        v65 = v80;
        goto LABEL_47;
      }

      v60 = *(v26 + 72);
      if (v60)
      {
        v61 = *(v60 + 16);
        if ((~v61 & 0xF000000000000007) != 0 && ((v61 >> 59) & 0x1E | (v61 >> 2) & 1) == 7)
        {
          v62 = *((v61 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v62 = &unk_1ED966F48;
        }

        swift_beginAccess();
        v66 = v62[5];
        if (v66)
        {
          v67 = v62[6];
        }

        else
        {
          v66 = MEMORY[0x1E69E7CC0];
          v67 = MEMORY[0x1E69E7CC0];
        }

        sub_1ADDD6748(v66, v67, v26, &v81);
        (*(v39 + 8))(v77, v38);
        sub_1ADDDC21C(v69, *(&v69 + 1), v70);

        v64 = *(v45 + 40);
        v65 = v81;
LABEL_47:
        *(v78 + v64) = v65;
        return result;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  v43(v16, 1, 1, v38);
  (*(v75 + 8))(v16, v76);
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  sub_1AE23DA2C();

  *&v83 = 0xD000000000000022;
  *(&v83 + 1) = 0x80000001AE262940;
  v51 = v70;
  if (v70)
  {
    v52 = 0xD000000000000011;
  }

  else
  {
    v52 = 7104878;
  }

  if (v70)
  {
    v53 = 0x80000001AE262970;
  }

  else
  {
    v53 = 0xE300000000000000;
  }

  MEMORY[0x1B26FB670](v52, v53);

  MEMORY[0x1B26FB670](0x20746F6E20736920, 0xE800000000000000);
  v54 = sub_1AE23E40C();
  MEMORY[0x1B26FB670](v54);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  v55 = v83;
  sub_1ADE42E40();
  swift_allocError();
  *v56 = v55;
  *(v56 + 16) = 0;
  swift_willThrow();

  sub_1ADDDC21C(v69, *(&v69 + 1), v51);
  sub_1ADDCC35C(v71, *(&v71 + 1));
}

uint64_t Anonymous.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v45[-v9];
  if (*(a1 + 104) < 3u)
  {
    result = sub_1ADE71C08();
    if (!v3)
    {
      v13 = result;
      v47 = a2;
      v14 = *v2;
      v15 = v2[1];

      sub_1ADDD86D8(v14, v15);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v16 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v14, v15);

      sub_1ADDCC35C(v14, v15);
      swift_beginAccess();
      v17 = *(*(v13 + 24) + 16);
      if ((~v17 & 0xF000000000000007) != 0 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 7)
      {
        inited = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v20 = sub_1ADDE4C34(inited);
        v16 = MEMORY[0x1E69E7CC0];
        inited = v20;
      }

      swift_beginAccess();
      v21 = inited[8];
      v22 = inited[9];
      v23 = inited[10];
      inited[8] = v16;
      inited[9] = v14;
      inited[10] = v15;
      sub_1ADE73D6C(v21, v22, v23);
      sub_1AE1B76EC(inited);
      swift_endAccess();
      v46 = *v4;
      CRKeyPath.uuid.getter(v10);
      v24 = sub_1AE23BFEC();
      v25 = *(v24 - 8);
      result = (*(v25 + 48))(v10, 1, v24);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1ADDF66A8(v10);
        (*(v25 + 8))(v10, v24);
        swift_beginAccess();
        v27 = *(*(v13 + 24) + 16);
        if ((~v27 & 0xF000000000000007) != 0 && ((v27 >> 59) & 0x1E | (v27 >> 2) & 1) == 7)
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v28 = swift_initStaticObject();
        }

        v29 = v47;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v28 = sub_1ADDE4C34(v28);
        }

        swift_beginAccess();
        *(v28 + 16) = v26;
        sub_1AE1B76EC(v28);
        swift_endAccess();
        v30 = (v4 + *(v29 + 40));
        v31 = v30[1];
        *&v46 = *v30;
        *(&v46 + 1) = v31;

        v32 = sub_1ADDF5C7C(a1);
        v34 = v33;

        swift_beginAccess();
        v35 = *(*(v13 + 24) + 16);
        if ((~v35 & 0xF000000000000007) != 0 && ((v35 >> 59) & 0x1E | (v35 >> 2) & 1) == 7)
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v36 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v36 = sub_1ADDE4C34(v36);
        }

        swift_beginAccess();
        v37 = *(v36 + 40);
        v38 = *(v36 + 48);
        *(v36 + 40) = v32;
        *(v36 + 48) = v34;
        sub_1ADE42CB8(v37);
        sub_1AE1B76EC(v36);
        v39 = swift_endAccess();
        v40 = *(*(v13 + 24) + 16);
        if ((~v40 & 0xF000000000000007) != 0 && ((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 7)
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_Reference._StorageClass();
          v39 = swift_initStaticObject();
          v41 = v39;
        }

        MEMORY[0x1EEE9AC00](v39);
        *&v45[-32] = *(v29 + 16);
        *&v45[-16] = v4;
        *&v45[-8] = a1;

        v42 = sub_1ADE6B9FC(sub_1AE191340, &v45[-48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v41 = sub_1ADDE4C34(v41);
        }

        swift_beginAccess();
        v43 = *(v41 + 56);
        *(v41 + 56) = v42;

        swift_beginAccess();

        MEMORY[0x1B26FB860](v44);
        if (*(*(a1 + 96) + 16) >= *(*(a1 + 96) + 24) >> 1)
        {
          sub_1AE23D03C();
        }

        sub_1AE23D09C();
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = 0x80000001AE262990;
    *(v11 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

double sub_1AE19117C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Timestamp(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(a2 + 16) - 8) + 24))(v3 + *(a2 + 36), a1, v8);
  *&v15 = MEMORY[0x1E69E7CC8];
  *(&v15 + 1) = MEMORY[0x1E69E7CC8];
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v10[*(type metadata accessor for Replica() + 20)] = 0;
  *&v10[*(v6 + 20)] = 0;
  sub_1ADDD8290(v10);
  sub_1AE017AB8(v10);
  v11 = (v3 + *(a2 + 40));
  v13 = *v11;
  v12 = v11[1];

  result = *&v15;
  *v11 = v15;
  return result;
}

uint64_t sub_1AE191340()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(type metadata accessor for Anonymous() + 36);
  return (*(*(*(v2 + 16) + 8) + 16))(v3, v1);
}

uint64_t sub_1AE1913B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE1913F4(uint64_t a1)
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

uint64_t sub_1AE19147C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1AE1915D4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_1AE1917BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v5 = v12 + BYTE6(a2);
      goto LABEL_9;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v8 = sub_1AE197138(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v12, 0, 14);
  v5 = v12;
LABEL_9:
  sub_1AE193AA8(v12, v5, a3, &v11);
  v8 = v3;

  if (!v3)
  {
    v8 = v11;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1AE191938(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADF7AFCC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1AE194A50(v5);
  *a1 = v3;
}

uint64_t sub_1AE1919EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext;
  if (*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext);
  }

  else
  {
    v7 = sub_1AE23BDDC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v6 = sub_1ADDCFD3C(v4);
    v8 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1AE191B0C()
{
  v0 = sub_1AE23BDDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1AE23BC1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE23BC0C();
  sub_1AE23BBFC();
  sub_1AE23BCEC();
  sub_1AE23BD0C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

sqlite3_stmt *sub_1AE191CB8()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      return sqlite3_finalize(v3);
    }

    if (v4 == 5)
    {
      sub_1ADE47024();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = 5;
    }

    else
    {
      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = sub_1AE23CDEC();
      v9 = v8;
      sub_1ADE47024();
      swift_allocError();
      *v5 = v7;
      *(v5 + 8) = v9;
      v6 = 2;
    }

    *(v5 + 16) = v6;
    swift_willThrow();
    return sqlite3_finalize(v3);
  }

  return result;
}

void sub_1AE191DAC(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(v3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy))
  {
    sub_1AE1919EC();
    sub_1AE1A2F08(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1ADE442A4(0, sub_1AE1971E4, a2, a3);
  }
}

uint64_t sub_1AE1920AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45[1] = a1;
  *&v46 = a3;
  v47 = a2;
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v45 - v7;
  v9 = sub_1AE23BFEC();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v51 = type metadata accessor for Replica();
  v16 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v45 - v21;
  v23 = type metadata accessor for Timestamp(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v45 - v29;
  v50 = v4;
  if ((*(v4 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) & 1) == 0)
  {
    v46 = *v46;
    sub_1ADDCEE40(v47, v22, &qword_1EB5BA480, &qword_1AE25AAE0);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1ADDCEDE0(v22, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    else
    {
      sub_1ADDDE610(v22, v30, type metadata accessor for Timestamp);
      if (*&v30[*(v51 + 20)] <= 0)
      {
        sub_1ADDDE768(v30, v18);
        v39 = sub_1ADDD8E0C();
        v40 = v50;
        v41 = v39;
        v43 = v42;

        v44 = sub_1AE1917BC(v41, v43, v40);
        sub_1ADDCC35C(v41, v43);
        (*(v48 + 8))(v18, v49);
        if (v44 >= 1)
        {
          v38 = v30;
          return sub_1ADDDE610(v38, v52, type metadata accessor for Replica);
        }
      }

      sub_1ADDE50B8(v30, type metadata accessor for Timestamp);
    }

    if (!v46)
    {
      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v37 = v52;
      result = sub_1AE23BFBC();
      goto LABEL_14;
    }

    v53 = v46;
    sub_1AE192680(&v53, v27);
    v38 = v27;
    return sub_1ADDDE610(v38, v52, type metadata accessor for Replica);
  }

  v31 = sub_1AE1919EC();
  v32 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  sub_1ADDCEE40(v31 + v32, v8, &qword_1EB5BDC68, &unk_1AE253C20);
  v33 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  result = (*(*(v33 - 8) + 48))(v8, 1, v33);
  if (result != 1)
  {
    v36 = v48;
    v35 = v49;
    (*(v48 + 16))(v12, v8, v49);
    sub_1ADDE50B8(v8, type metadata accessor for CRReplicaDatabase.ReplicaDb);
    sub_1ADDE3CD8();

    (*(v36 + 8))(v12, v35);
    v37 = v52;
    result = (*(v36 + 32))(v52, v15, v35);
LABEL_14:
    *(v37 + *(v51 + 20)) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE192680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v128 = a1;
  v142 = *MEMORY[0x1E69E9840];
  v5 = sub_1AE23C0EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC58, &unk_1AE253C08);
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  v131 = sub_1AE23BFEC();
  v118 = *(v131 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v20 = *(v19 - 8);
  v129 = v19;
  v130 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v103 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v126 = &v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC60, &qword_1AE253C18);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v109 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v103 - v37;
  v127 = v3;
  v125 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy;
  if ((v3[OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy] & 1) == 0)
  {
    v115 = v38;
    v104 = v9;
    v105 = v16;
    v106 = v6;
    v107 = v5;
    v108 = v13;
    v110 = a2;
    v40 = *v128;
    v41 = *(*v128 + 16);
    v128 = v10;
    v121 = &v103 - v37;
    if (v41)
    {
      v42 = sub_1AE1940C8(v41, 0);
      sub_1AE03A354(&v134, v42 + ((*(v130 + 80) + 32) & ~*(v130 + 80)), v41, v40);
      v44 = v43;
      v45 = v134;

      sub_1ADDDCE74();
      if (v44 != v41)
      {
        goto LABEL_53;
      }

      v10 = v128;
      v39 = v121;
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    v134 = v42;
    sub_1AE191938(&v134);
    v46 = v133;
    v45 = v134;
    v47 = *(v116 + 56);
    v112 = v116 + 56;
    v111 = v47;
    v47(v39, 1, 1, v10);
    v119 = v45[2];
    if (!v119)
    {
LABEL_41:

      v45 = v121;
      v87 = v109;
      sub_1ADDCEE40(v121, v109, &qword_1EB5BDC60, &qword_1AE253C18);
      if ((*(v116 + 48))(v87, 1, v10) == 1)
      {
        sub_1ADDCEDE0(v87, &qword_1EB5BDC60, &qword_1AE253C18);
        v29 = v110;
      }

      else
      {
        v88 = v105;
        sub_1ADDD2198(v87, v105, &qword_1EB5BDC58, &unk_1AE253C08);
        v89 = v108;
        sub_1ADDCEE40(v88, v108, &qword_1EB5BDC58, &unk_1AE253C08);
        v90 = v129;
        v91 = *(v129 + 48);
        v92 = v104;
        sub_1AE23C10C();
        v93 = sub_1AE23C12C();
        v133 = *(*(v93 - 8) + 8);
        (v133)(v89 + v91, v93);
        sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30]);
        v94 = v107;
        sub_1AE23D41C();
        sub_1AE23D46C();
        v95 = sub_1AE23D45C();
        (*(v106 + 8))(v92, v94);
        sub_1ADDE50B8(v89, type metadata accessor for Replica);
        v29 = v110;
        if (v95 <= 7)
        {
          sub_1ADDCEDE0(v121, &qword_1EB5BDC60, &qword_1AE253C18);
          sub_1ADDCEE40(v88, v89, &qword_1EB5BDC58, &unk_1AE253C08);
          v96 = *(v90 + 48);
          v97 = *(v88 + *(v10 + 48));
          sub_1ADDCEDE0(v88, &qword_1EB5BDC58, &unk_1AE253C08);
          sub_1ADDDE610(v89, v29, type metadata accessor for Replica);
          *&v29[*(type metadata accessor for Timestamp(0) + 20)] = v97;
          result = (v133)(v89 + v96, v93);
LABEL_48:
          v99 = *MEMORY[0x1E69E9840];
          return result;
        }

        sub_1ADDCEDE0(v88, &qword_1EB5BDC58, &unk_1AE253C08);
        v45 = v121;
      }

      if (qword_1ED96AC50 == -1)
      {
LABEL_47:
        sub_1ADDD0F70();
        sub_1AE23BFBC();
        sub_1ADDCEDE0(v45, &qword_1EB5BDC60, &qword_1AE253C18);
        *&v29[*(type metadata accessor for Replica() + 20)] = 0;
        result = type metadata accessor for Timestamp(0);
        *&v29[*(result + 20)] = 0;
        goto LABEL_48;
      }

LABEL_54:
      swift_once();
      goto LABEL_47;
    }

    v48 = 0;
    v49 = *(v129 + 48);
    v123 = v45 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v124 = v49;
    v122 = (v118 + 16);
    v114 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement;
    v118 += 8;
    v113 = (v116 + 48);
    v117 = v45;
    while (v48 < v45[2])
    {
      v50 = v126;
      sub_1ADDCEE40(&v123[*(v130 + 72) * v48], v126, &qword_1EB5BA2A0, &unk_1AE242200);
      v10 = v129;
      v51 = *(v129 + 48);
      sub_1ADDDE610(v50, v29, type metadata accessor for Replica);
      v52 = sub_1AE23C12C();
      v53 = *(v52 - 8);
      (*(v53 + 32))(&v29[v51], v50 + v124, v52);
      v54 = v132;
      sub_1ADDCEE40(v29, v132, &qword_1EB5BA2A0, &unk_1AE242200);
      (*v122)(v46, v54, v131);
      sub_1ADDE50B8(v54, type metadata accessor for Replica);
      v45 = v127;
      if (*(v127 + v125) == 1)
      {
        v55 = sub_1AE1919EC();
        swift_beginAccess();
        v56 = *(v55 + 120);
        if (*(v56 + 16) && (v57 = sub_1ADDDF300(v46), (v58 & 1) != 0))
        {
          v59 = *(*(v56 + 56) + 8 * v57);
        }

        else
        {
          v59 = 0;
        }

        swift_endAccess();
        (*v118)(v133, v131);
      }

      else
      {
        v134 = sub_1AE23BFCC();
        v135 = v60;
        v136 = v61;
        v137 = v62;
        v138 = v63;
        v139 = v64;
        v140 = v65;
        v141 = v66;
        sub_1AE23BFCC();
        v67 = sub_1AE23BBCC();
        v68 = *(v67 + 48);
        v69 = *(v67 + 52);
        swift_allocObject();
        sub_1AE23BB6C();
        v70 = sub_1AE23BB7C();
        if (v70)
        {
          v71 = sub_1AE23BBAC();
          v72 = v114;
          if (__OFSUB__(0, v71))
          {
            goto LABEL_52;
          }

          v70 -= v71;
        }

        else
        {
          v72 = v114;
        }

        v73 = sub_1AE23BB9C();
        if (v73 >= 16)
        {
          v74 = 16;
        }

        else
        {
          v74 = v73;
        }

        if (v70)
        {
          if (v74 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          LODWORD(v74) = 0;
        }

        sqlite3_bind_blob(*(v45 + v72), 1, v70, v74, v45[9]);
        v75 = sqlite3_step(*(v45 + v72));
        v76 = *(v45 + v72);
        if (v75 == 100)
        {
          v77 = v72;
          v59 = sqlite3_column_int(v76, 0);
          v76 = *(v45 + v77);
        }

        else
        {
          v59 = 0;
        }

        sqlite3_reset(v76);

        (*v118)(v133, v131);
      }

      v78 = *(v53 + 8);
      v78(v132 + *(v10 + 48), v52);
      v79 = v120;
      sub_1ADDCEE40(v29, v120, &qword_1EB5BA2A0, &unk_1AE242200);
      v80 = *(v10 + 48);
      v45 = sub_1AE23C03C();
      v82 = v81;
      v78(v79 + v80, v52);
      if (v82)
      {
        v45 = 0;
      }

      sub_1ADDE50B8(v79, type metadata accessor for Replica);
      v83 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_51;
      }

      if (v59 == v83)
      {
        sub_1ADDCEDE0(v121, &qword_1EB5BDC60, &qword_1AE253C18);

        v100 = v103;
        sub_1ADDD2198(v29, v103, &qword_1EB5BA2A0, &unk_1AE242200);
        v101 = *(v129 + 48);
        v102 = v110;
        sub_1ADDDE610(v100, v110, type metadata accessor for Replica);
        *(v102 + *(type metadata accessor for Timestamp(0) + 20)) = v59;
        result = (v78)(v100 + v101, v52);
        goto LABEL_48;
      }

      if (v83 >= v59)
      {
        sub_1ADDCEDE0(v29, &qword_1EB5BA2A0, &unk_1AE242200);
        v10 = v128;
      }

      else
      {
        v84 = v121;
        v85 = v115;
        sub_1ADDCEE40(v121, v115, &qword_1EB5BDC60, &qword_1AE253C18);
        v10 = v128;
        if ((*v113)(v85, 1, v128) == 1)
        {
          sub_1ADDCEDE0(v84, &qword_1EB5BDC60, &qword_1AE253C18);
          sub_1ADDCEDE0(v85, &qword_1EB5BDC60, &qword_1AE253C18);
          v86 = *(v10 + 48);
          sub_1ADDD2198(v29, v84, &qword_1EB5BA2A0, &unk_1AE242200);
          *(v84 + v86) = v59;
          v111(v84, 0, 1, v10);
        }

        else
        {
          sub_1ADDCEDE0(v29, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v85, &qword_1EB5BDC60, &qword_1AE253C18);
        }
      }

      v45 = v117;
      ++v48;
      v46 = v133;
      if (v119 == v48)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    __break(1u);
    goto LABEL_54;
  }

  sub_1AE1919EC();
  sub_1AE23DC5C();
  __break(1u);

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1AE1935B8()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement) = result;
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement) = sub_1ADDD1E30();
    result = sub_1ADDD1E30();
    *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement) = result;
  }

  return result;
}

uint64_t sub_1AE193658()
{
  sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement));
  sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement));
  v1 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);

  return sqlite3_finalize(v1);
}

uint64_t sub_1AE1936A8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_1AE23C0EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v34 = a1;
  sub_1ADDCEE40(a1, v31 - v12, &qword_1EB5BA2A0, &unk_1AE242200);
  v14 = *(v8 + 48);
  sub_1AE23C10C();
  v37 = sub_1AE23C12C();
  v15 = *(v37 - 8);
  v38 = *(v15 + 8);
  v16 = v15 + 8;
  v38(&v13[v14], v37);
  sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D41C();
  sub_1AE23D46C();
  v17 = sub_1AE23D45C();
  v18 = *(v4 + 8);
  v35 = v4 + 8;
  v36 = v17;
  v18(v7, v3);
  sub_1ADDE50B8(v13, type metadata accessor for Replica);
  sub_1ADDCEE40(v39, v13, &qword_1EB5BA2A0, &unk_1AE242200);
  v32 = v8;
  v19 = *(v8 + 48);
  sub_1AE23C10C();
  v20 = &v13[v19];
  v21 = v37;
  v31[1] = v16;
  v38(v20, v37);
  sub_1AE23D41C();
  sub_1AE23D46C();
  v22 = sub_1AE23D45C();
  v18(v7, v3);
  sub_1ADDE50B8(v13, type metadata accessor for Replica);
  if (v36 < v22)
  {
    return 1;
  }

  if (v36 != v22)
  {
    return 0;
  }

  sub_1ADDCEE40(v34, v13, &qword_1EB5BA2A0, &unk_1AE242200);
  v24 = v32;
  v25 = *(v32 + 48);
  v36 = sub_1AE23C04C();
  v26 = v38;
  v38(&v13[v25], v21);
  v27 = v33;
  sub_1ADDCEE40(v39, v33, &qword_1EB5BA2A0, &unk_1AE242200);
  v28 = *(v24 + 48);
  v29 = sub_1AE23C04C();
  v26(v27 + v28, v21);
  v30 = v29 < v36;
  sub_1ADDE50B8(v27, type metadata accessor for Replica);
  sub_1ADDE50B8(v13, type metadata accessor for Replica);
  return v30;
}

const void *sub_1AE193AA8@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement;
  sqlite3_bind_blob(*(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement), 1, result, v5, *(a3 + 72));
  if (sqlite3_step(*(a3 + v7)) == 100)
  {
    v8 = sqlite3_column_int(*(a3 + v7), 0);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return sqlite3_reset(*(a3 + v7));
}

uint64_t sub_1AE193B58(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  if (*(v3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy))
  {
    sub_1AE1919EC();
    sub_1ADDE5A8C(a1, a2);
  }

  else
  {
    v8 = v3;
    v9 = sub_1ADDD8E0C();
    v11 = v10;

    sub_1AE19454C(v9, v11, v8, a2, a3);
    return sub_1ADDCC35C(v9, v11);
  }
}

uint64_t sub_1AE193C50()
{
  v1 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase__uuid;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext);
}

uint64_t sub_1AE193CC8()
{
  if ((*(v0 + 40) & 1) == 0 && (*(v0 + 40) = 1, sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement)), sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement)), sqlite3_finalize(*(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement)), sqlite3_close(*(v0 + 32))))
  {
    sub_1AE23DA2C();

    v8 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v8);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    result = sub_1AE23DC5C();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    v2 = *(v0 + 48);

    v3 = *(v0 + 56);

    v4 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase__uuid;
    v5 = sub_1AE23BFEC();
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    v6 = *(v0 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext);

    return v0;
  }

  return result;
}

uint64_t sub_1AE193E58()
{
  sub_1AE193CC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRSharedReplicaDatabase()
{
  result = qword_1EB5BDC48;
  if (!qword_1EB5BDC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE193F04()
{
  result = sub_1AE23BFEC();
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

uint64_t sub_1AE193FD8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) == 1)
  {
    v3 = sub_1AE1919EC();
    swift_beginAccess();
    v4 = *(v3 + 120);
    if (*(v4 + 16) && (v5 = sub_1ADDDF300(a1), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }

    swift_endAccess();
  }

  else
  {
    v8 = sub_1ADDD8E0C();
    v10 = v9;

    v7 = sub_1AE1917BC(v8, v10, v1);
    sub_1ADDCC35C(v8, v10);
  }

  return v7;
}

size_t sub_1AE1940C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA298, &qword_1AE2421F8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AE1941D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1AE194254(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA230, &qword_1AE253C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1AE1942D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1AE19434C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1AE1943C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_1AE194450(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA318, &unk_1AE2422D0);
  v4 = *(type metadata accessor for Replica() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE19454C(const char *a1, unint64_t a2, uint64_t a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v30[0] = a1;
    LOWORD(v30[1]) = a2;
    BYTE2(v30[1]) = BYTE2(a2);
    BYTE3(v30[1]) = BYTE3(a2);
    BYTE4(v30[1]) = BYTE4(a2);
    BYTE5(v30[1]) = BYTE5(a2);
    v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
    v10 = *(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);
    v11 = *(a3 + 72);
    swift_retain_n();
    sqlite3_bind_blob(v10, 1, v30, 16, v11);
    sqlite3_bind_int64(*(a3 + v9), 2, a4);
    sqlite3_bind_int64(*(a3 + v9), 3, a5);
    if (sqlite3_step(*(a3 + v9)) == 101)
    {
LABEL_24:
      sqlite3_reset(*(a3 + v9));

      v29 = *MEMORY[0x1E69E9840];
      return result;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1AE23DA2C();

    v31 = 0xD000000000000010;
    v32 = 0x80000001AE262AE0;
    a1 = sqlite3_errmsg(*(a3 + 32));
    if (a1)
    {
LABEL_23:
      v25 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v25);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v26 = v31;
      v27 = v32;
      sub_1ADE47024();
      swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = 2;
      swift_willThrow();
      goto LABEL_24;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    memset(v30, 0, 14);
    v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
    v23 = *(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement);
    v24 = *(a3 + 72);
    swift_retain_n();
    sqlite3_bind_blob(v23, 1, v30, 16, v24);
    sqlite3_bind_int64(*(a3 + v9), 2, a4);
    sqlite3_bind_int64(*(a3 + v9), 3, a5);
    if (sqlite3_step(*(a3 + v9)) == 101)
    {
      goto LABEL_24;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1AE23DA2C();

    v31 = 0xD000000000000010;
    v32 = 0x80000001AE262AE0;
    result = sqlite3_errmsg(*(a3 + 32));
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v12 = *(a1 + 2);
  swift_retain_n();
  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v14 = sub_1AE23BBAC();
    if (__OFSUB__(v12, v14))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 += v12 - v14;
  }

  sub_1AE23BB9C();
  v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
  sqlite3_bind_blob(*(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement), 1, v13, 16, *(a3 + 72));
  sqlite3_bind_int64(*(a3 + v9), 2, a4);
  sqlite3_bind_int64(*(a3 + v9), 3, a5);
  if (sqlite3_step(*(a3 + v9)) == 101)
  {
    goto LABEL_24;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1AE23DA2C();

  v31 = 0xD000000000000010;
  v32 = 0x80000001AE262AE0;
  a1 = sqlite3_errmsg(*(a3 + 32));
  if (a1)
  {
LABEL_19:
    v19 = sub_1AE23CDEC();
    MEMORY[0x1B26FB670](v19);

    MEMORY[0x1B26FB670](46, 0xE100000000000000);
    v20 = v31;
    v21 = v32;
    sub_1ADE47024();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 2;
    swift_willThrow();
    goto LABEL_24;
  }

  __break(1u);
LABEL_13:
  v15 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_26;
  }

  swift_retain_n();
  v16 = sub_1AE23BB7C();
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1AE23BBAC();
  if (__OFSUB__(v15, v17))
  {
LABEL_27:
    __break(1u);
  }

  v16 += v15 - v17;
LABEL_17:
  sub_1AE23BB9C();
  v9 = OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement;
  sqlite3_bind_blob(*(a3 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement), 1, v16, 16, *(a3 + 72));
  sqlite3_bind_int64(*(a3 + v9), 2, a4);
  sqlite3_bind_int64(*(a3 + v9), 3, a5);
  if (sqlite3_step(*(a3 + v9)) == 101)
  {
    goto LABEL_24;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1AE23DA2C();

  v31 = 0xD000000000000010;
  v32 = 0x80000001AE262AE0;
  result = sqlite3_errmsg(*(a3 + 32));
  if (result)
  {
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1AE194A50(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AE23DD7C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AE195240(v8, v9, a1, v4);
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
    sub_1AE194B94(0, v2, 1, a1);
  }
}

void sub_1AE194B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = sub_1AE23C0EC();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v66 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v56[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v56[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56[-v22];
  v58 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v21 + 72);
    v67 = (v8 + 8);
    v26 = v24 + v25 * (a3 - 1);
    v64 = -v25;
    v65 = v24;
    v27 = a1 - a3;
    v57 = v25;
    v28 = v24 + v25 * a3;
    v71 = v19;
    v72 = &v56[-v22];
LABEL_5:
    v62 = a3;
    v59 = v28;
    v60 = v27;
    v29 = v27;
    v61 = v26;
    while (1)
    {
      v75 = v29;
      v76 = v28;
      sub_1ADDCEE40(v28, v23, &qword_1EB5BA2A0, &unk_1AE242200);
      v74 = v26;
      sub_1ADDCEE40(v26, v19, &qword_1EB5BA2A0, &unk_1AE242200);
      v30 = v73;
      sub_1ADDCEE40(v23, v73, &qword_1EB5BA2A0, &unk_1AE242200);
      v31 = *(v82 + 48);
      v32 = v68;
      sub_1AE23C10C();
      v33 = sub_1AE23C12C();
      v34 = *(v33 - 8);
      v35 = *(v34 + 8);
      v80 = v34 + 8;
      v81 = v35;
      v35(&v30[v31], v33);
      sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30]);
      v36 = v69;
      sub_1AE23D41C();
      sub_1AE23D46C();
      v37 = sub_1AE23D45C();
      v78 = *v67;
      v79 = v37;
      v78(v32, v36);
      v77 = type metadata accessor for Replica;
      sub_1ADDE50B8(v30, type metadata accessor for Replica);
      sub_1ADDCEE40(v19, v30, &qword_1EB5BA2A0, &unk_1AE242200);
      v38 = *(v82 + 48);
      sub_1AE23C10C();
      v70 = v33;
      v81(&v30[v38], v33);
      sub_1AE23D41C();
      sub_1AE23D46C();
      v39 = sub_1AE23D45C();
      v78(v32, v36);
      sub_1ADDE50B8(v30, v77);
      if (v79 >= v39)
      {
        v43 = v71;
        v23 = v72;
        if (v79 != v39)
        {
          v19 = v71;
          sub_1ADDCEDE0(v71, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v23, &qword_1EB5BA2A0, &unk_1AE242200);
LABEL_4:
          a3 = v62 + 1;
          v26 = v61 + v57;
          v27 = v60 - 1;
          v28 = v59 + v57;
          if (v62 + 1 == v58)
          {
            return;
          }

          goto LABEL_5;
        }

        v44 = v73;
        sub_1ADDCEE40(v72, v73, &qword_1EB5BA2A0, &unk_1AE242200);
        v45 = v82;
        v46 = *(v82 + 48);
        v79 = sub_1AE23C04C();
        v47 = v70;
        v48 = v81;
        v81(&v44[v46], v70);
        v49 = v63;
        sub_1ADDCEE40(v43, v63, &qword_1EB5BA2A0, &unk_1AE242200);
        v50 = *(v45 + 48);
        v51 = sub_1AE23C04C();
        v48(&v49[v50], v47);
        v52 = v49;
        v19 = v71;
        v23 = v72;
        sub_1ADDE50B8(v52, type metadata accessor for Replica);
        sub_1ADDE50B8(v44, type metadata accessor for Replica);
        sub_1ADDCEDE0(v19, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v23, &qword_1EB5BA2A0, &unk_1AE242200);
        v53 = v51 < v79;
        v41 = v75;
        v40 = v76;
        v42 = v74;
        if (!v53)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v71;
        sub_1ADDCEDE0(v71, &qword_1EB5BA2A0, &unk_1AE242200);
        v23 = v72;
        sub_1ADDCEDE0(v72, &qword_1EB5BA2A0, &unk_1AE242200);
        v41 = v75;
        v40 = v76;
        v42 = v74;
      }

      if (!v65)
      {
        break;
      }

      v54 = v66;
      sub_1ADDD2198(v40, v66, &qword_1EB5BA2A0, &unk_1AE242200);
      swift_arrayInitWithTakeFrontToBack();
      sub_1ADDD2198(v54, v42, &qword_1EB5BA2A0, &unk_1AE242200);
      v26 = v42 + v64;
      v28 = v40 + v64;
      v55 = __CFADD__(v41, 1);
      v29 = v41 + 1;
      if (v55)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1AE195240(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v159 = a1;
  v180 = sub_1AE23C0EC();
  v6 = *(v180 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v168 = *(v191 - 8);
  v9 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v162 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v177 = &v155 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v155 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v155 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v174 = &v155 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v155 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v155 - v26;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v169 = a3;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v6 = *v159;
    if (!*v159)
    {
      goto LABEL_147;
    }

    a3 = v33;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v149 = a3;
    }

    else
    {
LABEL_141:
      v149 = sub_1ADF7ACAC(a3);
    }

    v192 = v149;
    a3 = *(v149 + 2);
    if (a3 >= 2)
    {
      while (*v169)
      {
        v150 = *&v149[16 * a3];
        v151 = v149;
        v152 = *&v149[16 * a3 + 24];
        v153 = v172;
        sub_1AE196450(*v169 + *(v168 + 72) * v150, *v169 + *(v168 + 72) * *&v149[16 * a3 + 16], *v169 + *(v168 + 72) * v152, v6);
        v172 = v153;
        if (v153)
        {
          goto LABEL_118;
        }

        if (v152 < v150)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_1ADF7ACAC(v151);
        }

        if (a3 - 2 >= *(v151 + 2))
        {
          goto LABEL_135;
        }

        v154 = &v151[16 * a3];
        *v154 = v150;
        *(v154 + 1) = v152;
        v192 = v151;
        sub_1ADF7AC20(a3 - 1);
        v149 = v192;
        a3 = *(v192 + 2);
        if (a3 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_145;
    }

LABEL_118:

    return;
  }

  v156 = &v155 - v29;
  v157 = v30;
  v32 = 0;
  v178 = (v6 + 8);
  v33 = MEMORY[0x1E69E7CC0];
  v158 = a4;
  v188 = v15;
  v181 = v18;
  while (1)
  {
    v163 = v33;
    v160 = v32;
    if (v32 + 1 >= v31)
    {
      v43 = v32 + 1;
      goto LABEL_32;
    }

    v170 = v31;
    v34 = *v169;
    v6 = *(v168 + 72);
    v187 = *v169 + v6 * (v32 + 1);
    v35 = v156;
    a3 = &unk_1AE242200;
    sub_1ADDCEE40(v187, v156, &qword_1EB5BA2A0, &unk_1AE242200);
    v36 = v157;
    sub_1ADDCEE40(v34 + v6 * v32, v157, &qword_1EB5BA2A0, &unk_1AE242200);
    v37 = v172;
    LODWORD(v167) = sub_1AE1936A8(v35, v36);
    v172 = v37;
    if (v37)
    {
      sub_1ADDCEDE0(v36, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDCEDE0(v35, &qword_1EB5BA2A0, &unk_1AE242200);
      goto LABEL_118;
    }

    sub_1ADDCEDE0(v36, &qword_1EB5BA2A0, &unk_1AE242200);
    sub_1ADDCEDE0(v35, &qword_1EB5BA2A0, &unk_1AE242200);
    v38 = v32 + 2;
    v39 = v34 + v6 * v38;
    v176 = v6;
    v40 = v187;
    while (1)
    {
      v43 = v170;
      if (v170 == v38)
      {
        break;
      }

      v185 = v39;
      v186 = v38;
      v44 = v171;
      sub_1ADDCEE40(v39, v171, &qword_1EB5BA2A0, &unk_1AE242200);
      v187 = v40;
      sub_1ADDCEE40(v40, v173, &qword_1EB5BA2A0, &unk_1AE242200);
      v45 = v182;
      sub_1ADDCEE40(v44, v182, &qword_1EB5BA2A0, &unk_1AE242200);
      v46 = v191;
      v47 = *(v191 + 48);
      v48 = v179;
      sub_1AE23C10C();
      v49 = sub_1AE23C12C();
      v50 = *(v49 - 8);
      v51 = *(v50 + 8);
      v189 = v50 + 8;
      v190 = v51;
      v51(v45 + v47, v49);
      sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30]);
      v52 = v180;
      sub_1AE23D41C();
      sub_1AE23D46C();
      v53 = sub_1AE23D45C();
      v183 = *v178;
      v184 = v53;
      (v183)(v48, v52);
      sub_1ADDE50B8(v45, type metadata accessor for Replica);
      sub_1ADDCEE40(v173, v45, &qword_1EB5BA2A0, &unk_1AE242200);
      v54 = *(v46 + 48);
      sub_1AE23C10C();
      v175 = v49;
      v190(v45 + v54, v49);
      sub_1AE23D41C();
      sub_1AE23D46C();
      v55 = sub_1AE23D45C();
      (v183)(v48, v52);
      sub_1ADDE50B8(v45, type metadata accessor for Replica);
      if (v184 < v55)
      {
        a3 = 1;
      }

      else
      {
        if (v184 == v55)
        {
          v56 = v182;
          sub_1ADDCEE40(v171, v182, &qword_1EB5BA2A0, &unk_1AE242200);
          v57 = v191;
          v58 = *(v191 + 48);
          v59 = sub_1AE23C04C();
          v60 = v175;
          v61 = v190;
          v190(v56 + v58, v175);
          v62 = v174;
          sub_1ADDCEE40(v173, v174, &qword_1EB5BA2A0, &unk_1AE242200);
          v63 = *(v57 + 48);
          v64 = sub_1AE23C04C();
          v61(v62 + v63, v60);
          a3 = v64 < v59;
          sub_1ADDE50B8(v62, type metadata accessor for Replica);
          sub_1ADDE50B8(v56, type metadata accessor for Replica);
          v15 = v188;
          v18 = v181;
          goto LABEL_9;
        }

        a3 = 0;
      }

      v15 = v188;
      v18 = v181;
LABEL_9:
      v6 = v176;
      v42 = v186;
      v41 = v187;
      sub_1ADDCEDE0(v173, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDCEDE0(v171, &qword_1EB5BA2A0, &unk_1AE242200);
      v38 = (v42 + 1);
      v39 = v185 + v6;
      v40 = v41 + v6;
      if ((v167 ^ a3))
      {
        v43 = v38 - 1;
        break;
      }
    }

    a4 = v158;
    if ((v167 & 1) == 0)
    {
      goto LABEL_32;
    }

    v65 = v43;
    if (v43 < v160)
    {
      goto LABEL_140;
    }

    if (v160 < v43)
    {
      a3 = v6 * (v43 - 1);
      v66 = v43 * v6;
      v170 = v43;
      v67 = v160;
      v68 = v160 * v6;
      do
      {
        if (v67 != --v65)
        {
          v69 = *v169;
          if (!*v169)
          {
            goto LABEL_144;
          }

          sub_1ADDD2198(v69 + v68, v162, &qword_1EB5BA2A0, &unk_1AE242200);
          if (v68 < a3 || v69 + v68 >= v69 + v66)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1ADDD2198(v162, v69 + a3, &qword_1EB5BA2A0, &unk_1AE242200);
          v6 = v176;
        }

        ++v67;
        a3 -= v6;
        v66 -= v6;
        v68 += v6;
      }

      while (v67 < v65);
      a4 = v158;
      v43 = v170;
    }

LABEL_32:
    v70 = v169[1];
    if (v43 >= v70)
    {
      goto LABEL_54;
    }

    v71 = v43;
    v72 = v43 - v160;
    if (__OFSUB__(v71, v160))
    {
      goto LABEL_137;
    }

    if (v72 >= a4)
    {
      v43 = v71;
      goto LABEL_54;
    }

    if (__OFADD__(v160, a4))
    {
      goto LABEL_138;
    }

    if (v160 + a4 < v70)
    {
      v70 = v160 + a4;
    }

    if (v70 < v160)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v43 = v71;
    if (v71 == v70)
    {
      goto LABEL_54;
    }

    v164 = v70;
    v73 = *v169;
    v74 = *(v168 + 72);
    v75 = *v169 + v74 * (v43 - 1);
    v175 = -v74;
    v76 = v160 - v43;
    v176 = v73;
    v161 = v74;
    a3 = v73 + v43 * v74;
LABEL_42:
    v170 = v43;
    v165 = a3;
    v166 = v76;
    v77 = v76;
    v167 = v75;
LABEL_43:
    v184 = a3;
    v185 = v77;
    sub_1ADDCEE40(a3, v18, &qword_1EB5BA2A0, &unk_1AE242200);
    v183 = v75;
    sub_1ADDCEE40(v75, v15, &qword_1EB5BA2A0, &unk_1AE242200);
    v78 = v182;
    sub_1ADDCEE40(v18, v182, &qword_1EB5BA2A0, &unk_1AE242200);
    v79 = *(v191 + 48);
    v80 = v179;
    sub_1AE23C10C();
    v81 = sub_1AE23C12C();
    v82 = *(v81 - 8);
    v83 = *(v82 + 8);
    v189 = v82 + 8;
    v190 = v83;
    v83(v78 + v79, v81);
    sub_1AE197234(&qword_1ED96A708, MEMORY[0x1E6969B30]);
    v84 = v180;
    sub_1AE23D41C();
    sub_1AE23D46C();
    v85 = sub_1AE23D45C();
    v186 = *v178;
    v187 = v85;
    (v186)(v80, v84);
    v6 = type metadata accessor for Replica;
    sub_1ADDE50B8(v78, type metadata accessor for Replica);
    sub_1ADDCEE40(v188, v78, &qword_1EB5BA2A0, &unk_1AE242200);
    v86 = *(v191 + 48);
    sub_1AE23C10C();
    v87 = v78 + v86;
    v88 = v81;
    v190(v87, v81);
    sub_1AE23D41C();
    sub_1AE23D46C();
    v89 = sub_1AE23D45C();
    (v186)(v80, v84);
    sub_1ADDE50B8(v78, type metadata accessor for Replica);
    if (v187 < v89)
    {
      v15 = v188;
      sub_1ADDCEDE0(v188, &qword_1EB5BA2A0, &unk_1AE242200);
      v18 = v181;
      sub_1ADDCEDE0(v181, &qword_1EB5BA2A0, &unk_1AE242200);
      goto LABEL_48;
    }

    if (v187 == v89)
    {
      break;
    }

    v15 = v188;
    sub_1ADDCEDE0(v188, &qword_1EB5BA2A0, &unk_1AE242200);
    v18 = v181;
    sub_1ADDCEDE0(v181, &qword_1EB5BA2A0, &unk_1AE242200);
LABEL_41:
    v43 = v170 + 1;
    v75 = v167 + v161;
    v76 = v166 - 1;
    a3 = v165 + v161;
    if (v170 + 1 != v164)
    {
      goto LABEL_42;
    }

    v43 = v164;
LABEL_54:
    v101 = v160;
    if (v43 < v160)
    {
      goto LABEL_136;
    }

    v164 = v43;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = v163;
    }

    else
    {
      v33 = sub_1ADE5522C(0, *(v163 + 2) + 1, 1, v163);
    }

    v6 = *(v33 + 2);
    v102 = *(v33 + 3);
    a3 = v6 + 1;
    if (v6 >= v102 >> 1)
    {
      v33 = sub_1ADE5522C((v102 > 1), v6 + 1, 1, v33);
    }

    *(v33 + 2) = a3;
    v103 = &v33[16 * v6];
    v104 = v164;
    *(v103 + 4) = v101;
    *(v103 + 5) = v104;
    v105 = *v159;
    if (!*v159)
    {
      goto LABEL_146;
    }

    if (v6)
    {
      while (2)
      {
        v106 = a3 - 1;
        if (a3 >= 4)
        {
          v111 = &v33[16 * a3 + 32];
          v112 = *(v111 - 64);
          v113 = *(v111 - 56);
          v117 = __OFSUB__(v113, v112);
          v114 = v113 - v112;
          if (v117)
          {
            goto LABEL_123;
          }

          v116 = *(v111 - 48);
          v115 = *(v111 - 40);
          v117 = __OFSUB__(v115, v116);
          v109 = v115 - v116;
          v110 = v117;
          if (v117)
          {
            goto LABEL_124;
          }

          v118 = &v33[16 * a3];
          v120 = *v118;
          v119 = *(v118 + 1);
          v117 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v117)
          {
            goto LABEL_126;
          }

          v117 = __OFADD__(v109, v121);
          v122 = v109 + v121;
          if (v117)
          {
            goto LABEL_129;
          }

          if (v122 >= v114)
          {
            v140 = &v33[16 * v106 + 32];
            v142 = *v140;
            v141 = *(v140 + 1);
            v117 = __OFSUB__(v141, v142);
            v143 = v141 - v142;
            if (v117)
            {
              goto LABEL_133;
            }

            if (v109 < v143)
            {
              v106 = a3 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v110)
            {
              goto LABEL_125;
            }

            v123 = &v33[16 * a3];
            v125 = *v123;
            v124 = *(v123 + 1);
            v126 = __OFSUB__(v124, v125);
            v127 = v124 - v125;
            v128 = v126;
            if (v126)
            {
              goto LABEL_128;
            }

            v129 = &v33[16 * v106 + 32];
            v131 = *v129;
            v130 = *(v129 + 1);
            v117 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v117)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v127, v132))
            {
              goto LABEL_132;
            }

            if (v127 + v132 < v109)
            {
              goto LABEL_88;
            }

            if (v109 < v132)
            {
              v106 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v107 = *(v33 + 4);
            v108 = *(v33 + 5);
            v117 = __OFSUB__(v108, v107);
            v109 = v108 - v107;
            v110 = v117;
            goto LABEL_74;
          }

          v133 = &v33[16 * a3];
          v135 = *v133;
          v134 = *(v133 + 1);
          v117 = __OFSUB__(v134, v135);
          v127 = v134 - v135;
          v128 = v117;
LABEL_88:
          if (v128)
          {
            goto LABEL_127;
          }

          v136 = &v33[16 * v106];
          v138 = *(v136 + 4);
          v137 = *(v136 + 5);
          v117 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v117)
          {
            goto LABEL_130;
          }

          if (v139 < v127)
          {
            break;
          }
        }

        v6 = v106 - 1;
        if (v106 - 1 >= a3)
        {
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
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v169)
        {
          goto LABEL_143;
        }

        v144 = v33;
        a3 = *&v33[16 * v6 + 32];
        v145 = *&v33[16 * v106 + 40];
        v146 = v172;
        sub_1AE196450(*v169 + *(v168 + 72) * a3, *v169 + *(v168 + 72) * *&v33[16 * v106 + 32], *v169 + *(v168 + 72) * v145, v105);
        v172 = v146;
        if (v146)
        {
          goto LABEL_118;
        }

        if (v145 < a3)
        {
          goto LABEL_121;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v147 = v144;
        }

        else
        {
          v147 = sub_1ADF7ACAC(v144);
        }

        if (v6 >= *(v147 + 2))
        {
          goto LABEL_122;
        }

        v148 = &v147[16 * v6];
        *(v148 + 4) = a3;
        *(v148 + 5) = v145;
        v192 = v147;
        sub_1ADF7AC20(v106);
        v33 = v192;
        a3 = *(v192 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v31 = v169[1];
    v32 = v164;
    a4 = v158;
    if (v164 >= v31)
    {
      goto LABEL_107;
    }
  }

  v90 = v182;
  sub_1ADDCEE40(v181, v182, &qword_1EB5BA2A0, &unk_1AE242200);
  v91 = v191;
  v92 = *(v191 + 48);
  v187 = sub_1AE23C04C();
  v6 = v190;
  v190(v90 + v92, v81);
  v93 = v188;
  v94 = v174;
  sub_1ADDCEE40(v188, v174, &qword_1EB5BA2A0, &unk_1AE242200);
  v95 = *(v91 + 48);
  v96 = sub_1AE23C04C();
  (v6)(v94 + v95, v88);
  sub_1ADDE50B8(v94, type metadata accessor for Replica);
  v18 = v181;
  sub_1ADDE50B8(v90, type metadata accessor for Replica);
  v15 = v93;
  sub_1ADDCEDE0(v93, &qword_1EB5BA2A0, &unk_1AE242200);
  sub_1ADDCEDE0(v18, &qword_1EB5BA2A0, &unk_1AE242200);
  if (v96 >= v187)
  {
    goto LABEL_41;
  }

LABEL_48:
  v97 = v185;
  if (v176)
  {
    v98 = v184;
    v6 = v177;
    sub_1ADDD2198(v184, v177, &qword_1EB5BA2A0, &unk_1AE242200);
    v99 = v183;
    swift_arrayInitWithTakeFrontToBack();
    sub_1ADDD2198(v6, v99, &qword_1EB5BA2A0, &unk_1AE242200);
    v75 = v99 + v175;
    a3 = v98 + v175;
    v100 = __CFADD__(v97, 1);
    v77 = v97 + 1;
    if (v100)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1AE196450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = a2;
  v24 = a1;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v26 = (a2 - a1) / v22;
    v77 = a1;
    v27 = a4;
    v76 = a4;
    if (v26 < v25 / v22)
    {
      v28 = v26 * v22;
      if (a4 < v24 || v24 + v28 <= a4)
      {
        v29 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v24)
        {
          goto LABEL_17;
        }

        v29 = v24;
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = v29;
      v27 = a4;
      v23 = a2;
LABEL_17:
      v73 = v4;
      v71 = v27 + v28;
      v75 = v27 + v28;
      if (v28 >= 1 && v23 < a3)
      {
        v69 = v16;
        v70 = v20;
        v68 = a3;
        while (1)
        {
          v74 = v24;
          v34 = v22;
          v35 = v23;
          v36 = v70;
          sub_1ADDCEE40(v23, v70, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEE40(v27, v16, &qword_1EB5BA2A0, &unk_1AE242200);
          v37 = v73;
          v38 = sub_1AE1936A8(v36, v16);
          v73 = v37;
          if (v37)
          {
            sub_1ADDCEDE0(v16, &qword_1EB5BA2A0, &unk_1AE242200);
            sub_1ADDCEDE0(v36, &qword_1EB5BA2A0, &unk_1AE242200);
            goto LABEL_65;
          }

          v39 = v38;
          sub_1ADDCEDE0(v16, &qword_1EB5BA2A0, &unk_1AE242200);
          sub_1ADDCEDE0(v36, &qword_1EB5BA2A0, &unk_1AE242200);
          if ((v39 & 1) == 0)
          {
            v22 = v34;
            v41 = v27;
            v27 += v34;
            v40 = v74;
            if (v74 < v41 || v74 >= v27)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v74;
            }

            else if (v74 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
              v40 = v74;
            }

            v76 = v27;
            v23 = v35;
            goto LABEL_37;
          }

          v22 = v34;
          v40 = v74;
          if (v74 < v35 || v74 >= v35 + v34)
          {
            break;
          }

          if (v74 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v40 = v74;
          }

          v23 = v35 + v34;
LABEL_37:
          v24 = v40 + v22;
          v77 = v24;
          if (v27 < v71)
          {
            v16 = v69;
            if (v23 < v68)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v30 = v25 / v22 * v22;
    v70 = v18;
    if (a4 < v23 || v23 + v30 <= a4)
    {
      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v23)
      {
LABEL_42:
        v42 = v27 + v30;
        if (v30 < 1)
        {
LABEL_60:
          v73 = v5;
          v77 = v23;
          v75 = v42;
          goto LABEL_65;
        }

        v43 = -v22;
        v44 = &qword_1EB5BA2A0;
        v45 = v27 + v30;
        v46 = &unk_1AE242200;
        v66 = v27;
        v74 = v24;
        v69 = -v22;
LABEL_44:
        v64 = v42;
        v47 = v23 + v43;
        v67 = v23 + v43;
        v68 = v23;
        while (1)
        {
          if (v23 <= v24)
          {
            v73 = v5;
            v77 = v23;
            v75 = v64;
            goto LABEL_65;
          }

          v48 = a3;
          v65 = v42;
          v50 = v69;
          v49 = v70;
          v71 = v45;
          v51 = v45 + v69;
          v52 = v5;
          v53 = v44;
          v54 = v46;
          sub_1ADDCEE40(v45 + v69, v70, v44, v46);
          sub_1ADDCEE40(v47, v12, v53, v54);
          v55 = sub_1AE1936A8(v49, v12);
          v56 = v12;
          if (v52)
          {
            break;
          }

          v57 = v55;
          a3 = v48 + v50;
          v58 = v56;
          sub_1ADDCEDE0(v56, v53, v54);
          sub_1ADDCEDE0(v49, v53, v54);
          if (v57)
          {
            v73 = 0;
            if (v48 < v68 || a3 >= v68)
            {
              v62 = v67;
              swift_arrayInitWithTakeFrontToBack();
              v12 = v58;
              v23 = v62;
              v24 = v74;
            }

            else
            {
              v12 = v58;
              v23 = v67;
              v24 = v74;
              if (v48 != v68)
              {
                v60 = v67;
                v61 = v74;
                swift_arrayInitWithTakeBackToFront();
                v24 = v61;
                v23 = v60;
              }
            }

            v42 = v65;
            v45 = v71;
            v43 = v69;
            v44 = v53;
            v46 = v54;
            v5 = v73;
            if (v71 <= v66)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v42 = v51;
          if (v48 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v51;
            v12 = v58;
            v24 = v74;
          }

          else
          {
            v12 = v58;
            v24 = v74;
            if (v48 != v71)
            {
              v59 = v74;
              swift_arrayInitWithTakeBackToFront();
              v24 = v59;
              v42 = v51;
            }
          }

          v45 = v42;
          v47 = v67;
          v44 = v53;
          v46 = v54;
          v5 = 0;
          v23 = v68;
          if (v51 <= v66)
          {
            goto LABEL_60;
          }
        }

        sub_1ADDCEDE0(v12, &qword_1EB5BA2A0, &unk_1AE242200);
        sub_1ADDCEDE0(v49, &qword_1EB5BA2A0, &unk_1AE242200);
        v77 = v68;
        v75 = v65;
LABEL_65:
        sub_1ADF7ACC0(&v77, &v76, &v75);
        return;
      }

      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v32;
    v27 = a4;
    v23 = v31;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_1AE196B1C(uint64_t a1)
{
  v3 = sub_1AE23C88C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1AE23C8CC();
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C89C();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v33 - v14;
  sub_1ADDCEE40(a1, &v33 - v14, &qword_1EB5B9DC0, &qword_1AE240B90);
  v16 = sub_1AE23BDDC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v18 = 0x656D3A3A656C6966;
    sub_1ADDCEDE0(v15, &qword_1EB5B9DC0, &qword_1AE240B90);
    v19 = 0xED00003A79726F6DLL;
  }

  else
  {
    v18 = sub_1AE23BDAC();
    v19 = v20;
    (*(v17 + 8))(v15, v16);
  }

  v21 = type metadata accessor for CRSharedReplicaDatabase();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_1AE23BFDC();
  *(v24 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_countersQueryStatement) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterGetQueryStatement) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_counterSetStatement) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase_isBusy) = 0;
  *(v24 + OBJC_IVAR____TtC9Coherence23CRSharedReplicaDatabase____lazy_storage___transientContext) = 0;
  *(v24 + 24) = v19;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 64) = 0;
  *(v24 + 66) = 1;
  *(v24 + 68) = 0;
  *(v24 + 70) = 1;
  *(v24 + 72) = 0;
  *(v24 + 80) = -1;
  *(v24 + 16) = v18;
  *(v24 + 41) = 0;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;

  sub_1ADDD16D4();
  if (v1)
  {
    sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  else
  {
    if (v18 == 0x656D3A3A656C6966 && v19 == 0xED00003A79726F6DLL || (sub_1AE23E00C() & 1) != 0)
    {
      sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);

      return v24;
    }

    sub_1ADDCED94();
    v26 = v34;
    (*(v34 + 104))(v11, *MEMORY[0x1E69E7F98], v8);

    v33 = sub_1AE23D6DC();
    (*(v26 + 8))(v11, v8);
    v27 = swift_allocObject();
    *(v27 + 16) = v18;
    *(v27 + 24) = v19;
    aBlock[4] = sub_1AE19722C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_12;
    v28 = _Block_copy(aBlock);
    v29 = v35;
    sub_1AE23C8AC();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1AE197234(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v30 = v37;
    v31 = v40;
    sub_1AE23D8DC();
    v32 = v33;
    MEMORY[0x1B26FBF60](0, v29, v30, v28);

    _Block_release(v28);

    sub_1ADDCEDE0(a1, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v29, v38);
  }

  return v24;
}

uint64_t sub_1AE197138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23BB7C();
  v9 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = &v9[v13];
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = sub_1AE193AA8(v9, v15, a4, &v16);
  if (!v4)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1AE1971E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1AE197214(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1AE19722C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AE191B0C();
}

uint64_t sub_1AE197234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FinalizedTimestamp.init(replica:counter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AE23BFEC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for FinalizedTimestamp(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static FinalizedTimestamp.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    return v5 < v6;
  }

  return sub_1ADF5EB00();
}

uint64_t static FinalizedTimestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  return sub_1AE23BF8C();
}

uint64_t FinalizedTimestamp.nextUnique()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  result = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(result + 20);
  v5 = *(v1 + v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v4) = v7;
  }

  return result;
}

uint64_t static FinalizedTimestamp.unique()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  result = type metadata accessor for FinalizedTimestamp(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t FinalizedTimestamp.replica.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AE23BFEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FinalizedTimestamp.hash(into:)()
{
  sub_1AE23BFAC();
  v1 = type metadata accessor for FinalizedTimestamp(0);
  return MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
}

uint64_t static FinalizedTimestamp.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FinalizedTimestamp(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74D0);

  return sub_1ADED0548(v3, a1);
}

uint64_t FinalizedTimestamp.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v2 = MEMORY[0x1E69E7508];
  v3 = MEMORY[0x1E69E7558];
  *(v1 + 56) = MEMORY[0x1E69E7508];
  *(v1 + 64) = v3;
  *(v1 + 32) = v4;
  sub_1AE23BFCC();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v5;
  v9 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  v8 = *(v0 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
  v6 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v6);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return v9;
}

uint64_t FinalizedTimestamp.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v1 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1B26FCBD0](*(v0 + *(v1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE197844(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*(v1 + *(a1 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE1978D8(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*(v2 + *(a2 + 20)));
  return sub_1AE23E34C();
}

uint64_t sub_1AE197928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    return sub_1ADF5EB00();
  }

  else
  {
    return v4 < v5;
  }
}

BOOL sub_1AE197948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v6 = sub_1ADF5EB00();
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1AE197994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v6 = sub_1ADF5EB00();
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1AE1979D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    return sub_1ADF5EB00();
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t sub_1AE197A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    return sub_1AE23BF8C();
  }

  else
  {
    return 0;
  }
}

uint64_t FinalizedTimestamp.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
    if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 9)
    {
      v5 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    return sub_1ADE058D4(v6, v7, a1, a2);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x80000001AE25FB70;
    *(v9 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t FinalizedTimestamp.encode(to:)()
{
  v2 = sub_1ADDF66A8(v0);
  v3 = *(v0 + *(type metadata accessor for FinalizedTimestamp(0) + 20));
  result = sub_1ADE71C08();
  if (!v1)
  {
    swift_beginAccess();

    sub_1AE1B6B44(v2, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AE197BC4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ADDF66A8(v2);
  v6 = *(v2 + *(a2 + 20));
  result = sub_1ADE71C08();
  if (!v3)
  {
    swift_beginAccess();

    sub_1AE1B6B44(v5, v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AE197F48(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1ADED0548(v1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, &v16 - v9);
  sub_1ADED0548(a1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v7);
  v11 = *(v4 + 28);
  v12 = *&v7[v11];
  v13 = *&v10[v11];
  if (v12 == v13)
  {
    v14 = sub_1ADF5EB00();
  }

  else
  {
    v14 = v12 < v13;
  }

  sub_1ADE173B8(v7);
  sub_1ADE173B8(v10);
  return v14 & 1;
}

id sub_1AE198198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCFinalizedTimestamp(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AE1981D0()
{
  result = qword_1EB5B8F18[0];
  if (!qword_1EB5B8F18[0])
  {
    type metadata accessor for FinalizedTimestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8F18);
  }

  return result;
}

uint64_t sub_1AE198234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1ADE6F35C(0, v9, 0);
  v11 = v54;
  v49 = v8;
  v50 = v7;
  v47 = a2;
  v48 = v9;
  v46 = a1;
  if (v9)
  {
    v12 = (a1 + 32);
    v13 = (a2 + 32);
    v14 = v9;
    v15 = v7;
    while (v15)
    {
      if (!v8)
      {
        goto LABEL_27;
      }

      v16 = v11;
      v52 = v13;
      v53 = v12;
      v17 = *v12;
      v18 = *v13;

      v19 = a3(v17, v18);
      if (v4)
      {
LABEL_23:

        return v18;
      }

      v22 = v19;
      v23 = v20;
      v24 = v21;

      v11 = v16;
      v55 = v16;
      v25 = *(v16 + 16);
      v26 = *(v11 + 24);
      v27 = v25 + 1;
      v28 = v14;
      if (v25 >= v26 >> 1)
      {
        result = sub_1ADE6F35C((v26 > 1), v25 + 1, 1);
        v27 = v25 + 1;
        v11 = v55;
      }

      *(v11 + 16) = v27;
      v29 = (v11 + 24 * v25);
      --v8;
      v29[4] = v22;
      v29[5] = v23;
      v29[6] = v24;
      --v15;
      v13 = v52 + 1;
      v12 = v53 + 1;
      --v14;
      v4 = 0;
      if (v28 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_12:
  v31 = v49;
  v30 = v50;
  if (v50 > v49)
  {
    v32 = v48;
    v18 = v11;
    while (v32 < v30)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_29;
      }

      if (v31 == v32)
      {
        return v18;
      }

      if (v32 >= v31)
      {
        goto LABEL_30;
      }

      v34 = *(v46 + 32 + 8 * v32);
      v35 = *(v47 + 32 + 8 * v32);

      v36 = a3(v34, v35);
      if (v4)
      {
        goto LABEL_23;
      }

      v39 = v36;
      v40 = v37;
      v41 = v38;

      v43 = *(v18 + 16);
      v42 = *(v18 + 24);
      v44 = v18;
      if (v43 >= v42 >> 1)
      {
        result = sub_1ADE6F35C((v42 > 1), v43 + 1, 1);
        v44 = v18;
      }

      *(v44 + 16) = v43 + 1;
      v45 = (v44 + 24 * v43);
      v45[4] = v39;
      v45[5] = v40;
      v45[6] = v41;
      ++v32;
      v31 = v49;
      v30 = v50;
      v4 = 0;
      v18 = v44;
      if (v33 == v50)
      {
        return v18;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  return v11;
}

uint64_t sub_1AE1984E0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[6];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_13:
    v1 = sub_1ADDE4ECC(0, v1[2] + 1, 1, v1);
    v3[2] = v1;
    goto LABEL_8;
  }

  v1[6] = v12;
  swift_beginAccess();
  v13 = v1[3];
  if (*(v13 + 16))
  {
    v14 = v3[3];

    v15 = sub_1ADDDF300(a1);
    if (v16)
    {
      v2 = *(*(v13 + 56) + 8 * v15);

      if ((v2 & 0x8000000000000000) == 0)
      {
        return v2;
      }

      __break(1u);
    }
  }

  v2 = *(v3[2] + 16);
  swift_beginAccess();
  v17 = v3[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v3[3];
  v3[3] = 0x8000000000000000;
  sub_1ADDFC5B0(v2, a1, isUniquelyReferenced_nonNull_native);
  v3[3] = v24;
  swift_endAccess();
  (*(v6 + 16))(v9, a1, v5);
  v1 = v3[2];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v1;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v1[2];
  v20 = v1[3];
  if (v21 >= v20 >> 1)
  {
    v1 = sub_1ADDE4ECC(v20 > 1, v21 + 1, 1, v1);
  }

  v1[2] = v21 + 1;
  (*(v6 + 32))(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v9, v5);
  v3[2] = v1;
  return v2;
}

uint64_t sub_1AE198720(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1AE23CDBC();
  v8 = *(v2 + 7);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    __break(1u);
LABEL_13:
    v2 = sub_1ADE55240(0, *(v2 + 2) + 1, 1, v2);
    *(v4 + 4) = v2;
    goto LABEL_8;
  }

  *(v2 + 7) = v10;
  swift_beginAccess();
  v11 = *(v2 + 5);
  if (*(v11 + 16))
  {
    v12 = *(v4 + 5);

    v13 = sub_1ADDD7A10(a1, a2);
    if (v14)
    {
      v3 = *(*(v11 + 56) + 8 * v13);

      if ((v3 & 0x8000000000000000) == 0)
      {
        return v3;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v3 = *(*(v4 + 4) + 16);
  swift_beginAccess();
  v15 = *(v4 + 5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 5);
  *(v4 + 5) = 0x8000000000000000;
  sub_1ADEBF270(v3, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 5) = v22;
  swift_endAccess();
  swift_beginAccess();
  v2 = *(v4 + 4);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 4) = v2;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1ADE55240((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = a1;
  *(v20 + 5) = a2;
  *(v4 + 4) = v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1AE1988E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    inited = a2;
  }

  else
  {
    type metadata accessor for Proto4_CRDT._StorageClass();
    inited = swift_initStaticObject();
  }

  v13 = sub_1AE1990E0(inited);

  if (v4)
  {
    v67 = 0xF000000000000007;
    v68 = 0;
    v69 = 0;
    v70 = MEMORY[0x1E69E7CC0];
    v72 = xmmword_1AE241910;
    v71 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    result = sub_1ADE6AF00(&v67);
  }

  else
  {
    v53 = v13;
    v54 = v3;
    sub_1ADE73AC8(0xF000000000000007);
    v15 = *(a1 + 16);
    v52 = a3;
    if (v15)
    {
      v67 = MEMORY[0x1E69E7CC0];
      sub_1AE23DB1C();
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;

        sub_1AE19D1A0(v18);

        sub_1AE23DAEC();
        v19 = *(v67 + 16);
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        ++v16;
        --v15;
      }

      while (v15);

      v20 = v67;
      a3 = v52;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = v54;
    v22 = *(*(v54 + 16) + 16);
    if (v22 >> 59)
    {
      __break(1u);
    }

    v51 = v20;
    v24 = sub_1ADDF6E48(16 * v22);
    v65 = v24;
    v66 = v23;
    v25 = *(v21 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      v50[1] = *(v21 + 16);
      v50[2] = 0;
      v27 = v8;
      v29 = *(v56 + 16);
      v28 = v56 + 16;
      v30 = v25 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v55 = *(v56 + 72);
      v56 = v29;

      do
      {
        (v56)(v11, v30, v27);
        v67 = sub_1AE23BFCC();
        LOWORD(v68) = v31;
        BYTE2(v68) = v32;
        BYTE3(v68) = v33;
        BYTE4(v68) = v34;
        BYTE5(v68) = v35;
        BYTE6(v68) = v36;
        HIBYTE(v68) = v37;
        sub_1AE23BFCC();
        v38 = sub_1AE23BBCC();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        sub_1AE23BB6C();
        sub_1AE23BEEC();

        (*(v28 - 8))(v11, v27);
        v30 += v55;
        --v26;
      }

      while (v26);

      v24 = v65;
      v41 = v66;
      a3 = v52;
    }

    else
    {
      v41 = v23;
    }

    sub_1ADDD86D8(v24, v41);
    sub_1ADE73C1C(0, 0, 0);
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1ADE73B5C(0, 0, 0);
    v42 = v54;
    swift_beginAccess();
    v43 = *(v42 + 32);

    v44 = MEMORY[0x1E69E7CC0];
    sub_1ADE73C1C(v24, v41, MEMORY[0x1E69E7CC0]);
    sub_1ADDCC35C(v24, v41);

    sub_1ADE73B5C(v24, v41, v44);
    v58 = v53;
    *&v59 = 0;
    *(&v59 + 1) = v51;
    *(v60 + 8) = xmmword_1AE241910;
    *&v60[0] = v44;
    *(&v60[1] + 1) = v44;
    v61 = 0uLL;
    *&v62 = v24;
    *(&v62 + 1) = v41;
    *&v63 = v43;
    *(&v63 + 1) = v44;
    v64 = 0uLL;
    v67 = v53;
    v68 = 0;
    v69 = 0;
    v70 = v51;
    v72 = xmmword_1AE241910;
    v71 = v44;
    v73 = v44;
    v74 = 0uLL;
    *&v75 = v24;
    *(&v75 + 1) = v41;
    *&v76 = v43;
    *(&v76 + 1) = v44;
    v77 = 0uLL;
    sub_1ADE73B00(&v58, &v57);
    result = sub_1ADE6AF00(&v67);
    v45 = v62;
    a3[4] = v61;
    a3[5] = v45;
    v46 = v64;
    a3[6] = v63;
    a3[7] = v46;
    v47 = v59;
    *a3 = v58;
    a3[1] = v47;
    v48 = v60[1];
    a3[2] = v60[0];
    a3[3] = v48;
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE198E38(uint64_t *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  v5 = a1[10];
  v4 = a1[11];
  if (v2)
  {
    v6 = a1[10];
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = a1[11];
  }

  else
  {
    v7 = 0xC000000000000000;
  }

  if (v2)
  {
    v8 = a1[12];
    v9 = a1[13];
  }

  sub_1ADE73C1C(a1[10], v4, v2);
  sub_1ADE73C1C(v5, v4, v2);
  sub_1ADDD86D8(v6, v7);
  sub_1ADDCC35C(v6, v7);

  v10 = sub_1ADDE70B0(v6, v7);
  if (v25)
  {
    sub_1ADE73B5C(v5, v4, v2);
    return sub_1ADDCC35C(v6, v7);
  }

  else
  {
    v12 = v10;
    sub_1ADDCC35C(v6, v7);
    v13 = *(v24 + 16);
    *(v24 + 16) = v12;

    if (v2)
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    if (!v2)
    {
      v4 = 0xC000000000000000;
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDCC35C(v14, v4);

    swift_beginAccess();
    v15 = *(v24 + 32);
    *(v24 + 32) = v2;

    inited = *a1;
    if (*a1 >> 62 || (inited & 0xF000000000000007) == 0xF000000000000007)
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    else
    {
      v17 = *a1;
    }

    sub_1AE1997B0(inited);

    v18 = a1[3];
    v19 = *(v18 + 16);
    result = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1AE23DB1C();
      v20 = (v18 + 32);
      do
      {
        v21 = *v20;

        sub_1AE19D5F8(v22);

        sub_1AE23DAEC();
        v23 = *(v26 + 16);
        sub_1AE23DB2C();
        sub_1AE23DB3C();
        sub_1AE23DAFC();
        ++v20;
        --v19;
      }

      while (v19);
      return v26;
    }
  }

  return result;
}

uint64_t sub_1AE1990E0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 255)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v3 = xmmword_1AE253DB0;
LABEL_3:
    *(v3 + 16) = 0;
    swift_willThrow();
    return v2;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 2u);
        sub_1AE19B8D0(v4, v5, v7, v6, v51);
        sub_1ADE52030(v4, v5, v7, v6, v9, v8, 2u);
        if (v1)
        {
          return v2;
        }

        v2 = inited;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = swift_allocObject();
          v17 = *(v2 + 16);
          *(v16 + 16) = v17;
          sub_1ADE5215C(v17);

          v2 = v16;
        }

        v18 = swift_allocObject();
        v19 = v51[3];
        *(v18 + 48) = v51[2];
        *(v18 + 64) = v19;
        *(v18 + 80) = v51[4];
        v20 = v51[1];
        *(v18 + 16) = v51[0];
        *(v18 + 32) = v20;
        v15 = v18 | 0x2000000000000000;
      }

      else
      {
        sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 3u);
        v49 = sub_1AE19C22C(v4);
        v2 = v36;
        v38 = v37;
        sub_1ADE52030(v4, v5, v7, v6, v9, v8, 3u);
        if (v1)
        {
          return v2;
        }

        v39 = v2;
        v2 = inited;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = swift_allocObject();
          v41 = *(inited + 16);
          *(v40 + 16) = v41;
          sub_1ADE5215C(v41);

          v2 = v40;
        }

        v42 = swift_allocObject();
        *(v42 + 16) = v49;
        *(v42 + 24) = v39;
        *(v42 + 32) = v38;
        v15 = v42 | 0x3000000000000000;
      }
    }

    else if (v2)
    {
      sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 1u);
      sub_1AE19B8D0(v4, v5, v7, v6, v50);
      sub_1ADE52030(v4, v5, v7, v6, v9, v8, 1u);
      if (v1)
      {
        return v2;
      }

      v2 = inited;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = swift_allocObject();
        v32 = *(v2 + 16);
        *(v31 + 16) = v32;
        sub_1ADE5215C(v32);

        v2 = v31;
      }

      v33 = swift_allocObject();
      v34 = v50[3];
      *(v33 + 48) = v50[2];
      *(v33 + 64) = v34;
      *(v33 + 80) = v50[4];
      v35 = v50[1];
      *(v33 + 16) = v50[0];
      *(v33 + 32) = v35;
      v15 = v33 | 0x1000000000000000;
    }

    else
    {
      sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 0);
      v12 = sub_1AE19B33C(v4);
      sub_1ADE52030(v4, v5, v7, v6, v9, v8, 0);
      if (v1)
      {
        return v2;
      }

      v2 = inited;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = swift_allocObject();
        v14 = *(inited + 16);
        *(v13 + 16) = v14;
        sub_1ADE5215C(v14);

        v2 = v13;
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v12;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 != 4)
    {
      v10 = 0x80000001AE262DC0;
      sub_1ADE42E40();
      swift_allocError();
      v11 = 0xD000000000000018;
      goto LABEL_43;
    }

    *&v56 = v4;
    *(&v56 + 1) = v5;
    v57 = v7;
    v58 = v6;
    v59 = v9;
    v60 = v8;
    sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 4u);
    sub_1AE19C508(&v56, v52);
    sub_1ADE52030(v4, v5, v7, v6, v9, v8, 4u);
    if (v1)
    {
      return v2;
    }

    v2 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = swift_allocObject();
      v22 = *(v2 + 16);
      *(v21 + 16) = v22;
      sub_1ADE5215C(v22);

      v2 = v21;
    }

    v23 = swift_allocObject();
    v24 = v52[5];
    *(v23 + 80) = v52[4];
    *(v23 + 96) = v24;
    *(v23 + 112) = v53;
    v25 = v52[1];
    *(v23 + 16) = v52[0];
    *(v23 + 32) = v25;
    v26 = v52[3];
    v15 = v23 | 0x4000000000000000;
    *(v23 + 48) = v52[2];
    *(v23 + 64) = v26;
  }

  else if (v2 == 6)
  {
    sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 6u);
    sub_1AE19C9C4(v4, v5, v7, v6, v54);
    sub_1ADE52030(v4, v5, v7, v6, v9, v8, 6u);
    v2 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = swift_allocObject();
      v28 = *(v2 + 16);
      *(v27 + 16) = v28;
      sub_1ADE5215C(v28);

      v2 = v27;
    }

    v29 = swift_allocObject();
    v30 = v54[1];
    *(v29 + 16) = v54[0];
    *(v29 + 32) = v30;
    *(v29 + 48) = v55;
    v15 = v29 | 0x7000000000000000;
  }

  else
  {
    if (v2 == 7)
    {
      v10 = 0x80000001AE262DA0;
      sub_1ADE42E40();
      swift_allocError();
      v11 = 0xD00000000000001ALL;
LABEL_43:
      *v3 = v11;
      *(v3 + 8) = v10;
      goto LABEL_3;
    }

    sub_1ADE51F04(v4, v5, v7, v6, v9, v8, 8u);
    v43 = sub_1AE19CDB0(v4);
    sub_1ADE52030(v4, v5, v7, v6, v9, v8, 8u);
    v2 = inited;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = swift_allocObject();
      v45 = *(inited + 16);
      *(v44 + 16) = v45;
      sub_1ADE5215C(v45);

      v2 = v44;
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v15 = v46 | 0x9000000000000000;
  }

  v47 = *(v2 + 16);
  *(v2 + 16) = v15;
  sub_1ADE52174(v47);
  return v2;
}

uint64_t sub_1AE1997B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    type metadata accessor for Proto4_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v7 = v3 >> 60;
    if ((v3 >> 60) > 2)
    {
      if (v7 == 3)
      {
        v35 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v36 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v37 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        sub_1ADE5215C(v3);

        v38 = sub_1AE198234(v35, v36, sub_1AE19E3D4);

        if (!v1)
        {
          v87 = v38;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v18 = *(inited + 16);
            v19 = *(inited + 24);
            v20 = *(inited + 32);
            v21 = *(inited + 40);
            v22 = *(inited + 48);
            v23 = *(inited + 56);
            v24 = *(inited + 64);
          }

          else
          {
            v60 = swift_allocObject();
            v62 = *(inited + 16);
            v61 = *(inited + 24);
            v72 = *(inited + 40);
            v76 = *(inited + 32);
            v64 = *(inited + 48);
            v63 = *(inited + 56);
            v65 = *(inited + 64);
            sub_1ADE51F04(v62, v61, v76, v72, v64, v63, v65);
            *(v60 + 16) = v62;
            *(v60 + 24) = v61;
            *(v60 + 32) = v76;
            *(v60 + 40) = v72;
            *(v60 + 48) = v64;
            *(v60 + 56) = v63;
            *(v60 + 64) = v65;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v24 = v65;
            v23 = v63;
            v22 = v64;
            v21 = v72;
            v20 = v76;
            v19 = v61;
            v18 = v62;
            inited = v60;
          }

          *(inited + 16) = v87;
          *(inited + 24) = 0u;
          *(inited + 40) = 0u;
          *(inited + 56) = 0;
          v46 = 3;
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v7 == 7)
      {
        v25 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v82[0] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v82[1] = v25;
        v83 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v26 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v85 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v86[0] = v26;
        sub_1ADE5215C(v3);
        sub_1ADDCEE40(&v85, v81, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1ADDCEE40(v86, v81, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1AE19CB60(v82);
        v28 = v27;
        v87 = v29;
        v78 = v31;
        v80 = v30;
        sub_1ADDCEDE0(&v85, &qword_1EB5BDA20, &qword_1AE253910);
        sub_1ADDCEDE0(v86, &qword_1EB5BDA20, &qword_1AE253910);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(inited + 16);
          v19 = *(inited + 24);
          v20 = *(inited + 32);
          v21 = *(inited + 40);
          v22 = *(inited + 48);
          v23 = *(inited + 56);
          v24 = *(inited + 64);
        }

        else
        {
          v73 = v28;
          v39 = swift_allocObject();
          v40 = *(inited + 16);
          v41 = *(inited + 24);
          v67 = *(inited + 40);
          v69 = *(inited + 32);
          v42 = *(inited + 48);
          v43 = *(inited + 56);
          v44 = *(inited + 64);
          sub_1ADE51F04(v40, v41, v69, v67, v42, v43, v44);
          *(v39 + 16) = v40;
          *(v39 + 24) = v41;
          *(v39 + 32) = v69;
          *(v39 + 40) = v67;
          *(v39 + 48) = v42;
          *(v39 + 56) = v43;
          *(v39 + 64) = v44;
          sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

          v24 = v44;
          v23 = v43;
          v22 = v42;
          v21 = v67;
          v20 = v69;
          v19 = v41;
          v18 = v40;
          inited = v39;
          v28 = v73;
        }

        v45 = v87;
        *(inited + 16) = v28;
        *(inited + 24) = v45;
        *(inited + 32) = v80;
        *(inited + 40) = v78;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v46 = 6;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v7)
      {
        v32 = *(v3 + 16);
        sub_1ADE5215C(v3);

        v34 = sub_1AE19B610(v33);

        if (!v1)
        {
          v87 = v34;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v18 = *(inited + 16);
            v19 = *(inited + 24);
            v20 = *(inited + 32);
            v21 = *(inited + 40);
            v22 = *(inited + 48);
            v23 = *(inited + 56);
            v24 = *(inited + 64);
          }

          else
          {
            v54 = swift_allocObject();
            v55 = *(inited + 16);
            v56 = *(inited + 24);
            v71 = *(inited + 40);
            v75 = *(inited + 32);
            v57 = *(inited + 48);
            v58 = *(inited + 56);
            v59 = *(inited + 64);
            sub_1ADE51F04(v55, v56, v75, v71, v57, v58, v59);
            *(v54 + 16) = v55;
            *(v54 + 24) = v56;
            *(v54 + 32) = v75;
            *(v54 + 40) = v71;
            *(v54 + 48) = v57;
            *(v54 + 56) = v58;
            *(v54 + 64) = v59;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v24 = v59;
            v23 = v58;
            v22 = v57;
            v21 = v71;
            v20 = v75;
            v19 = v56;
            v18 = v55;
            inited = v54;
          }

          *(inited + 16) = v87;
          *(inited + 24) = 0u;
          *(inited + 40) = 0u;
          *(inited + 49) = 0u;
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      if (v7 == 2)
      {
        v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v84[1] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v84[2] = v8;
        v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v84[3] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v84[4] = v9;
        v84[0] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v3);
        sub_1ADFAEE10(v84, v81);
        sub_1AE19BD90(v84);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        sub_1ADFAECE8(v84);
        if (!v1)
        {
          v77 = v17;
          v79 = v15;
          v87 = v13;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v18 = *(inited + 16);
            v19 = *(inited + 24);
            v20 = *(inited + 32);
            v21 = *(inited + 40);
            v22 = *(inited + 48);
            v23 = *(inited + 56);
            v24 = *(inited + 64);
          }

          else
          {
            v74 = v11;
            v47 = swift_allocObject();
            v48 = *(inited + 16);
            v49 = *(inited + 24);
            v68 = *(inited + 40);
            v70 = *(inited + 32);
            v50 = *(inited + 48);
            v51 = *(inited + 56);
            v52 = *(inited + 64);
            sub_1ADE51F04(v48, v49, v70, v68, v50, v51, v52);
            *(v47 + 16) = v48;
            *(v47 + 24) = v49;
            *(v47 + 32) = v70;
            *(v47 + 40) = v68;
            *(v47 + 48) = v50;
            *(v47 + 56) = v51;
            *(v47 + 64) = v52;
            sub_1ADE52030(0, 0, 0, 0, 0, 0, 0xFFu);

            v24 = v52;
            v23 = v51;
            v22 = v50;
            v21 = v68;
            v20 = v70;
            v19 = v49;
            v18 = v48;
            inited = v47;
            v11 = v74;
          }

          v53 = v87;
          *(inited + 16) = v11;
          *(inited + 24) = v53;
          *(inited + 32) = v79;
          *(inited + 40) = v77;
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v46 = 2;
LABEL_30:
          *(inited + 64) = v46;
LABEL_31:
          sub_1ADE52030(v18, v19, v20, v21, v22, v23, v24);
          sub_1ADE52174(v3);
          return inited;
        }

LABEL_19:
        sub_1ADE52174(v3);
        return inited;
      }
    }

    v4 = 0x80000001AE262D40;
    sub_1ADE42E40();
    swift_allocError();
    v6 = 0xD00000000000001FLL;
    goto LABEL_3;
  }

  v4 = 0x80000001AE262D80;
  sub_1ADE42E40();
  swift_allocError();
  v6 = 0xD000000000000011;
LABEL_3:
  *v5 = v6;
  *(v5 + 8) = v4;
  *(v5 + 16) = 0;
  swift_willThrow();
  return inited;
}

uint64_t sub_1AE199E14(uint64_t inited)
{
  v2 = sub_1AE23C2FC();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v76 - v7;
  v9 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v76 - v15;
  v17 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
  swift_beginAccess();
  sub_1ADDCEE40(inited + v17, v8, &qword_1EB5BA028, &qword_1AE241808);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1ADDCEDE0(v8, &qword_1EB5BA028, &qword_1AE241808);
    sub_1ADE42E40();
    swift_allocError();
    *v18 = xmmword_1AE253DB0;
    *(v18 + 16) = 0;
    swift_willThrow();
    return inited;
  }

  sub_1ADEA84F0(v8, v16);
  type metadata accessor for Proto_Value._StorageClass();
  inited = swift_initStaticObject();
  sub_1ADEA8554(v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v16;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1ADEA8494(v16);
        v52 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = swift_allocObject();
          v54 = *(inited + 16);
          *(v53 + 16) = v54;
          sub_1ADE51B2C(v54);

          inited = v53;
        }

        v55 = swift_allocObject();
        *(v55 + 16) = v52;
        v25 = v55 | 4;
      }

      else
      {
        sub_1ADEA8494(v16);
        v21 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = swift_allocObject();
          v23 = *(inited + 16);
          *(v22 + 16) = v23;
          sub_1ADE51B2C(v23);

          inited = v22;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        v25 = v24 | 0x2000000000000000;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v37 = sub_1AE198720(*v14, v14[1]);

      sub_1ADEA8494(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = swift_allocObject();
        v39 = *(inited + 16);
        *(v38 + 16) = v39;
        sub_1ADE51B2C(v39);

        inited = v38;
      }

      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      v25 = v40 | 0x1000000000000000;
      goto LABEL_35;
    }

    sub_1ADEA8494(v16);
    v57 = *v14;
    v58 = v14[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = swift_allocObject();
      v60 = *(inited + 16);
      *(v59 + 16) = v60;
      sub_1ADE51B2C(v60);

      inited = v59;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v57;
    *(v36 + 24) = v58;
    goto LABEL_33;
  }

  v26 = v79;
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      sub_1ADEA8494(v14);
      sub_1ADE42E40();
      swift_allocError();
      *v64 = 0xD000000000000019;
      *(v64 + 8) = 0x80000001AE262D60;
      *(v64 + 16) = 0;
      swift_willThrow();
      sub_1ADEA8494(v16);
      return inited;
    }

    v41 = v16;
    v42 = *v14;
    type metadata accessor for Proto_Optional._StorageClass();
    v43 = swift_initStaticObject();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = swift_allocObject();
      v45 = *(inited + 16);
      *(v44 + 16) = v45;
      sub_1ADE51B2C(v45);

      inited = v44;
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v47 = v46 | 0x4000000000000000;
    v48 = *(inited + 16);
    *(inited + 16) = v47;
    sub_1ADE51B48(v48);
    swift_beginAccess();
    if (!*(v42 + 16))
    {

      sub_1ADEA8494(v16);
      return inited;
    }

    v49 = *(v42 + 16);

    v51 = sub_1AE199E14(v50);
    if (v26)
    {
      sub_1ADEA8494(v16);

      return inited;
    }

    v68 = v51;

    v69 = *(inited + 16);
    if ((~v69 & 0xF000000000000007) != 0)
    {
      v79 = v68;

      v68 = v79;
      if (((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 8)
      {
        sub_1ADEA8494(v41);
        v43 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

LABEL_47:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = swift_allocObject();
          *(v70 + 16) = 0;
          swift_beginAccess();
          v71 = *(v43 + 16);
          swift_beginAccess();
          *(v70 + 16) = v71;

          v43 = v70;
        }

        swift_beginAccess();
        v72 = *(v43 + 16);
        *(v43 + 16) = v68;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = swift_allocObject();
          v74 = *(inited + 16);
          *(v73 + 16) = v74;
          sub_1ADE51B2C(v74);

          inited = v73;
        }

        v75 = swift_allocObject();
        *(v75 + 16) = v43;
        v25 = v75 | 0x4000000000000000;
        goto LABEL_35;
      }
    }

    else
    {
    }

    sub_1ADEA8494(v41);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v56 = sub_1AE19D1A0(*v14);
    if (v26)
    {
      sub_1ADEA8494(v16);

      return inited;
    }

    v65 = v56;

    sub_1ADEA8494(v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = swift_allocObject();
      v67 = *(inited + 16);
      *(v66 + 16) = v67;
      sub_1ADE51B2C(v67);

      inited = v66;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v65;
    v61 = 0x3000000000000004;
    goto LABEL_34;
  }

  v27 = v76;
  v28 = v77;
  v29 = v78;
  (*(v77 + 32))(v76, v14, v78);
  sub_1ADE725D0();
  v30 = sub_1AE23C51C();
  if (!v26)
  {
    v32 = v30;
    v33 = v31;
    (*(v28 + 8))(v27, v29);
    sub_1ADEA8494(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = swift_allocObject();
      v35 = *(inited + 16);
      *(v34 + 16) = v35;
      sub_1ADE51B2C(v35);

      inited = v34;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    *(v36 + 24) = v33;
LABEL_33:
    v61 = 0x1000000000000004;
LABEL_34:
    v25 = v36 | v61;
LABEL_35:
    v62 = *(inited + 16);
    *(inited + 16) = v25;
    sub_1ADE51B48(v62);
    return inited;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE19A6F0(uint64_t a1)
{
  v5 = sub_1AE23C2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v90 - v12);
  v14 = *(a1 + 16);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v15 = xmmword_1AE253DB0;
    *(v15 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v90 = v2;
  v16 = qword_1EB5B9970;

  if (v16 != -1)
  {
    result = swift_once();
  }

  v3 = qword_1EB5BA550;
  v18 = (v14 >> 59) & 0x1E | (v14 >> 2) & 1;
  if (v18 <= 3)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        v31 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        sub_1ADDD86D8(v31, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = type metadata accessor for Proto4_Value._StorageClass(0);
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          v36 = swift_allocObject();
          v37 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          v38 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
          v39 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADDCEE40(v3 + v39, v13, &qword_1EB5BA028, &qword_1AE241808);
          swift_beginAccess();
          sub_1ADEA8654(v13, v36 + v37);
          swift_endAccess();

          v3 = v36;
        }

        *v13 = v31;
        v13[1] = v32;
        v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        goto LABEL_37;
      }

      v45 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if ((v45 & 0x8000000000000000) == 0)
      {
        result = swift_beginAccess();
        v46 = *(v1 + 32);
        if (v45 < *(v46 + 16))
        {
          v47 = v46 + 16 * v45;
          v48 = *(v47 + 32);
          v49 = *(v47 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = type metadata accessor for Proto4_Value._StorageClass(0);
            v51 = *(v50 + 48);
            v52 = *(v50 + 52);
            v53 = swift_allocObject();
            v54 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
            v55 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
            (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
            v56 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
            swift_beginAccess();
            sub_1ADDCEE40(v3 + v56, v13, &qword_1EB5BA028, &qword_1AE241808);
            swift_beginAccess();
            sub_1ADEA8654(v13, v53 + v54);
            swift_endAccess();

            v3 = v53;
          }

          *v13 = v48;
          v13[1] = v49;
          v57 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v57 - 8) + 56))(v13, 0, 1, v57);
          v58 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADEA8654(v13, v3 + v58);
          goto LABEL_39;
        }

        goto LABEL_64;
      }
    }

    else
    {
      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_44;
        }

        v22 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = type metadata accessor for Proto4_Value._StorageClass(0);
          v24 = *(v23 + 48);
          v25 = *(v23 + 52);
          v26 = swift_allocObject();
          v27 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          v28 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
          (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
          v29 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
          swift_beginAccess();
          sub_1ADDCEE40(v3 + v29, v13, &qword_1EB5BA028, &qword_1AE241808);
          swift_beginAccess();
          sub_1ADEA8654(v13, v26 + v27);
          swift_endAccess();

          v3 = v26;
        }

        *v13 = v22;
        v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        goto LABEL_37;
      }

      v44 = *(v14 + 16);
      if ((v44 & 0x8000000000000000) == 0)
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          *v13 = v44;
          v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
LABEL_37:
          swift_storeEnumTagMultiPayload();
          (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
          v66 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
LABEL_38:
          swift_beginAccess();
          sub_1ADEA8654(v13, v3 + v66);
LABEL_39:
          swift_endAccess();
          sub_1ADE51B48(v14);
          return v3;
        }

LABEL_35:
        v59 = type metadata accessor for Proto4_Value._StorageClass(0);
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        v62 = swift_allocObject();
        v63 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        v64 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
        v65 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        sub_1ADDCEE40(v3 + v65, v13, &qword_1EB5BA028, &qword_1AE241808);
        swift_beginAccess();
        sub_1ADEA8654(v13, v62 + v63);
        swift_endAccess();

        v3 = v62;
        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v18 <= 7)
  {
    if (v18 != 4)
    {
      if (v18 != 7)
      {
        goto LABEL_44;
      }

      v40 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v42 = v90;
      v43 = sub_1AE19D5F8(v41);

      if (v42)
      {

LABEL_47:
        sub_1ADE51B48(v14);
        return v3;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = type metadata accessor for Proto4_Value._StorageClass(0);
        v84 = *(v83 + 48);
        v85 = *(v83 + 52);
        v86 = swift_allocObject();
        v87 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        v88 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
        (*(*(v88 - 8) + 56))(v86 + v87, 1, 1, v88);
        v89 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
        swift_beginAccess();
        sub_1ADDCEE40(v3 + v89, v13, &qword_1EB5BA028, &qword_1AE241808);
        swift_beginAccess();
        sub_1ADEA8654(v13, v86 + v87);
        swift_endAccess();

        v3 = v86;
      }

      *v13 = v43;
      v30 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
      goto LABEL_37;
    }

    v44 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v18 == 8)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v20 = xmmword_1AE253DC0;
LABEL_46:
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_47;
  }

  if (v18 != 10)
  {
    if (v18 == 11)
    {
      v19 = 0x80000001AE262D60;
      sub_1ADE42E40();
      swift_allocError();
      v21 = 0xD000000000000019;
LABEL_45:
      *v20 = v21;
      *(v20 + 8) = v19;
      goto LABEL_46;
    }

LABEL_44:
    v19 = 0x80000001AE262D40;
    sub_1ADE42E40();
    swift_allocError();
    v21 = 0xD00000000000001FLL;
    goto LABEL_45;
  }

  v67 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v68 = v67[2];
  if (!v68)
  {
    goto LABEL_63;
  }

  v69 = *(v67[4] + 16);
  if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 4)
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  if (v68 == 1)
  {
    goto LABEL_65;
  }

  v71 = *(v67[5] + 16);
  if ((~v71 & 0xF000000000000007) == 0 || ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) != 4)
  {
LABEL_55:

    sub_1AE23C2DC();
    p_vtable = (_TtCV9Coherence15Proto_ReferenceP33_8F93C82C9C5F20EAB9E21F7119431FBB13_StorageClass + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = type metadata accessor for Proto4_Value._StorageClass(0);
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      v77 = swift_allocObject();
      v78 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
      v79 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
      (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
      v80 = OBJC_IVAR____TtCV9Coherence12Proto4_ValueP33_4A59E951A5EB9D63730C3E01A1047EAB13_StorageClass__taggedOneOf;
      swift_beginAccess();
      sub_1ADDCEE40(v3 + v80, v13, &qword_1EB5BA028, &qword_1AE241808);
      swift_beginAccess();
      v81 = v77 + v78;
      p_vtable = _TtCV9Coherence15Proto_ReferenceP33_8F93C82C9C5F20EAB9E21F7119431FBB13_StorageClass.vtable;
      sub_1ADEA8654(v13, v81);
      swift_endAccess();

      v3 = v77;
    }

    (*(v6 + 32))(v13, v9, v5);
    v82 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v82 - 8) + 56))(v13, 0, 1, v82);
    v66 = p_vtable[55];
    goto LABEL_38;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  if (v72 >= 0xFFFFFFFF80000000)
  {
    if (v72 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    goto LABEL_55;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1AE19B33C(void *a1)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for Proto_Register._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  if (v11 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[4];
  }

  if (v11 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = a1[5];
  }

  if (v11 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1[6];
  }

  v24 = v15;
  sub_1ADDE0F78(v10, v11);
  sub_1ADDD86D8(v13, v14);
  sub_1ADDFE348(v13, v14);
  v25 = v2;
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v26 = v1;
    v16 = sub_1AE1984E0(v8);
    (*(v5 + 8))(v8, v4);
    sub_1ADDCC35C(v13, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE8D20(inited);
    }

    swift_beginAccess();
    v17 = v24;
    *(inited + 16) = v16;
    *(inited + 24) = v17;
    *(inited + 32) = 0;
    swift_beginAccess();
    if (a1[7])
    {
      v18 = a1[7];
    }

    else
    {
      if (qword_1EB5B9970 != -1)
      {
        swift_once();
      }

      v18 = qword_1EB5BA550;
    }

    v19 = v25;
    v20 = sub_1AE199E14(v18);

    if (v19)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE8D20(inited);
      }

      swift_beginAccess();
      v21 = *(inited + 40);
      *(inited + 40) = v20;
    }

    return inited;
  }

  return result;
}

uint64_t sub_1AE19B610(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = type metadata accessor for Proto4_Register._StorageClass();
  inited = swift_initStaticObject();
  result = swift_beginAccess();
  v12 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v3 + 16);
  if (v12 >= *(v14 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v5);
  v15 = sub_1ADDD8E0C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  sub_1ADDCC35C(0, 0xC000000000000000);
  sub_1ADDD86D8(v15, v17);
  sub_1ADDCC35C(v15, v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADE9A17C(inited);
  }

  swift_beginAccess();
  v18 = inited[4];
  v19 = inited[5];
  v20 = inited[6];
  inited[4] = v15;
  inited[5] = v17;
  inited[6] = v13;
  sub_1ADDE158C(v18, v19);
  swift_beginAccess();
  if (*(a1 + 40))
  {
    v21 = *(a1 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v21 = swift_initStaticObject();
  }

  v22 = sub_1AE19A6F0(v21);

  if (v2)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADE9A17C(inited);
    }

    swift_beginAccess();
    v23 = inited[7];
    inited[7] = v22;
  }

  return inited;
}

uint64_t sub_1AE19B8D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v47 = a5;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDD86D8(a1, a2);
  sub_1ADDFE348(a1, a2);
  v16 = v6;
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v48 = sub_1AE1984E0(v15);
  (*(v12 + 8))(v15, v11);
  v17 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v49 = v5;
  v19 = sub_1AE19CF10(v18);
  v21 = v20;

  sub_1ADE42CB8(0);
  v22 = *(a3 + 16);
  if (!v22)
  {
    v23 = MEMORY[0x1E69E7CC0];

LABEL_22:
    *&v53 = v48;
    *(&v53 + 1) = v23;
    *&v54 = v17;
    *(&v54 + 1) = v19;
    *&v56 = 0;
    v55 = v21;
    BYTE8(v56) = 1;
    *(&v56 + 9) = *v69;
    HIDWORD(v56) = *&v69[3];
    v57 = 0uLL;
    v58 = v48;
    v59 = v23;
    v60 = v17;
    v61 = v19;
    v63 = 0;
    v64 = 0;
    v62 = v21;
    v65 = 1;
    *v66 = *v69;
    *&v66[3] = *&v69[3];
    v67 = 0;
    v68 = 0;
    sub_1ADFAEE10(&v53, v52);
    result = sub_1ADFAECE8(&v58);
    v41 = v56;
    v42 = v47;
    v47[2] = v55;
    v42[3] = v41;
    v42[4] = v57;
    v43 = v54;
    *v42 = v53;
    v42[1] = v43;
    return result;
  }

  v45 = v19;
  v46 = v21;
  *&v53 = v17;
  sub_1ADE6F03C(0, v22, 0);
  v23 = v53;
  v24 = (a3 + 48);
  while (1)
  {
    v70 = v23;
    v25 = *(v24 - 2);
    v26 = *(v24 - 1);
    v27 = *v24;
    if (v25)
    {

      swift_retain_n();

      v28 = sub_1AE199E14(v25);
      if (v16)
      {

        goto LABEL_25;
      }

      v29 = v28;

      if (!v26)
      {
LABEL_13:
        v51 = v16;
        v32 = 0;
        goto LABEL_14;
      }
    }

    else
    {

      v29 = 0;
      if (!v26)
      {
        goto LABEL_13;
      }
    }

    v31 = sub_1AE1990E0(v30);
    v51 = v16;
    if (v16)
    {
      break;
    }

    v32 = v31;

LABEL_14:
    v50 = v29;
    if (v27)
    {

      v34 = sub_1AE19CF10(v33);
      v36 = v35;
      swift_bridgeObjectRelease_n();
    }

    else
    {

      v34 = 0;
      v36 = 0;
    }

    v23 = v70;
    *&v53 = v70;
    v38 = *(v70 + 16);
    v37 = *(v70 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1ADE6F03C((v37 > 1), v38 + 1, 1);
      v23 = v53;
    }

    v24 += 3;
    *(v23 + 16) = v38 + 1;
    v39 = (v23 + 40 * v38);
    v39[4] = v50;
    v39[5] = v32;
    v39[6] = v34;
    v39[7] = v36;
    v39[8] = 0;
    --v22;
    v16 = v51;
    if (!v22)
    {

      v17 = MEMORY[0x1E69E7CC0];
      v21 = v46;
      v19 = v45;
      goto LABEL_22;
    }
  }

LABEL_25:
  v58 = v48;
  v59 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v61 = v45;
  v62 = v46;
  v63 = 0;
  v64 = 0;
  v65 = 1;
  *v66 = *v69;
  *&v66[3] = *&v69[3];
  v67 = 0;
  v68 = 0;
  return sub_1ADFAECE8(&v58);
}

void sub_1AE19BD90(unint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = *(v4 + 16);
  if (v12 >= *(v13 + 16))
  {
LABEL_28:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v11, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6, v9);
  v14 = sub_1ADDD8E0C();
  v46 = v15;
  v47 = v14;
  (*(v7 + 8))(v11, v6);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v17 = a1[3];
  v16 = a1[4];
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = a1[3];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  if (v17)
  {
    v20 = a1[4];
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v17);
  v21 = v3;
  v22 = sub_1AE19DE8C(v19, v20, v4);
  v23 = v21;

  v24 = a1[1];
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_23:

    v44 = v46;
    v43 = v47;
    sub_1ADDD86D8(v47, v46);

    sub_1ADDCC35C(v43, v44);

    return;
  }

  v45 = v22;
  v53 = v18;
  v48 = v4;
  sub_1ADE6F37C(0, v25, 0);
  v26 = v48;
  v27 = v53;
  v28 = (v24 + 64);
  while (1)
  {
    v52 = v27;
    v29 = *(v28 - 3);
    v30 = *(v28 - 2);
    v31 = *(v28 - 1);
    v32 = *v28;
    if (*(v28 - 4))
    {
      break;
    }

    sub_1ADE42C78(v30);

    v50 = 0;
    v51 = v32;
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_18:
    v37 = 0;
    if (!v30)
    {
LABEL_19:
      v49 = v23;

      v39 = 0;
      goto LABEL_20;
    }

LABEL_16:

    sub_1ADE42C78(v30);
    v38 = v23;
    v39 = sub_1AE19DE8C(v30, v31, v26);
    v49 = v38;

    sub_1ADE42CB8(v30);

LABEL_20:
    v27 = v52;
    v53 = v52;
    v41 = *(v52 + 16);
    v40 = *(v52 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1ADE6F37C((v40 > 1), v41 + 1, 1);
      v26 = v48;
      v27 = v53;
    }

    v28 += 5;
    *(v27 + 16) = v41 + 1;
    v42 = (v27 + 24 * v41);
    v42[4] = v50;
    v42[5] = v37;
    v42[6] = v39;
    --v25;
    v23 = v49;
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  sub_1ADE42C78(v30);

  v34 = sub_1AE19A6F0(v33);
  if (v23)
  {

    sub_1ADE42CB8(v30);

    goto LABEL_26;
  }

  v50 = v34;

  v26 = v48;
  v51 = v32;
  if (!v29)
  {
    goto LABEL_18;
  }

LABEL_14:

  v36 = sub_1AE1997B0(v35);
  if (!v23)
  {
    v37 = v36;

    v26 = v48;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1ADE42CB8(v30);

LABEL_26:

  sub_1ADDCC35C(v47, v46);
}

uint64_t sub_1AE19C22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = v1;
  v21 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F00C(0, v2, 0);
  v5 = v21;
  v19 = a1;
  v6 = (a1 + 48);
  v7 = v2;
  do
  {
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *v6;

    v11 = sub_1AE198720(v8, v9);

    v13 = *(v21 + 16);
    v12 = *(v21 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1ADE6F00C((v12 > 1), v13 + 1, 1);
    }

    v6 += 3;
    *(v21 + 16) = v13 + 1;
    *(v21 + 8 * v13 + 32) = v11;
    --v7;
  }

  while (v7);
  sub_1AE23DB1C();
  v14 = (v19 + 48);
  while (1)
  {
    v15 = *(v14 - 1);
    if (*v14)
    {
      inited = *v14;
    }

    else
    {
      type metadata accessor for Proto4_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    swift_retain_n();

    sub_1AE1990E0(inited);
    if (v20)
    {
      break;
    }

    v14 += 3;

    sub_1AE23DAEC();
    v17 = *(v3 + 16);
    sub_1AE23DB2C();
    sub_1AE23DB3C();
    sub_1AE23DAFC();
    if (!--v2)
    {
      return v5;
    }
  }

  return v5;
}

uint64_t sub_1AE19C454(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = swift_beginAccess();
  v7 = *(a3 + 32);
  if (*(v7 + 16) <= v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = v7 + 16 * v6;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  sub_1AE1997B0(a2);
  if (v3)
  {
  }

  return v10;
}

uint64_t sub_1AE19C508@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = *a1;

  v5 = *(a1 + 2);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    *&v43 = MEMORY[0x1E69E7CC0];
    sub_1AE23DB1C();
    v8 = v5 + 32;
    while (1)
    {
      v9 = *v8;
      if (*(*v8 + 64))
      {
        type metadata accessor for Proto4_Register._StorageClass();
        inited = swift_initStaticObject();
      }

      else
      {
        inited = v9[2];
        sub_1ADE51F18(inited, v9[3], v9[4], v9[5], v9[6], v9[7], 0);
      }

      swift_beginAccess();
      v11 = *(inited + 56);
      if (v11)
      {
      }

      else
      {
        v12 = qword_1EB5B9970;

        if (v12 != -1)
        {
          swift_once();
        }

        v11 = qword_1EB5BA550;
      }

      sub_1AE199E14(v11);
      if (v3)
      {
        break;
      }

      sub_1AE23DAEC();
      v13 = *(v43 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v8 += 8;
      --v6;
      v3 = 0;
      if (!v6)
      {

        v15 = v43;
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }
    }

    v47 = v38;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    return sub_1AE030800(&v47);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];

LABEL_16:
    if (*(a1 + 4))
    {
      v16 = *(a1 + 4);
    }

    else
    {
      v16 = v7;
    }

    *&v41 = sub_1AE19CF10(v16);
    *(&v41 + 1) = v17;

    sub_1ADE42CB8(0);
    if (*(a1 + 5))
    {
      v18 = *(a1 + 5);
    }

    else
    {
      v18 = v7;
    }

    v19 = sub_1AE19CF10(v18);
    v39 = v20;
    v40 = v19;

    sub_1ADE42CB8(0);
    v21 = *(a1 + 3);
    v22 = *(v21 + 16);
    if (v22)
    {
      *&v47 = v7;

      sub_1ADE6F05C(0, v22, 0);
      v23 = v7;
      v24 = (v21 + 40);
      do
      {
        v62 = v23;
        v26 = *v24;
        v25 = v24[1];
        v27 = *(v24 + 32);
        v57 = *(v24 - 2);
        v58 = v26;
        v59 = v25;
        v60 = *(v24 + 1);
        v61 = v27;

        sub_1AE19D930(&v57, v41, v40, v55);

        v23 = v62;

        *&v47 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1ADE6F05C((v28 > 1), v29 + 1, 1);
          v23 = v47;
        }

        *(v23 + 16) = v29 + 1;
        v30 = v23 + 72 * v29;
        *(v30 + 32) = v55[0];
        v31 = v55[1];
        v32 = v55[2];
        v33 = v55[3];
        *(v30 + 96) = v56;
        *(v30 + 64) = v32;
        *(v30 + 80) = v33;
        *(v30 + 48) = v31;
        v24 += 6;
        --v22;
      }

      while (v22);

      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v43 = v38;
    *&v44 = v15;
    *(&v44 + 1) = v23;
    *v45 = v7;
    *&v45[8] = v41;
    *&v45[24] = v40;
    *v46 = v39;
    memset(&v46[8], 0, 32);
    v47 = v38;
    v48 = v15;
    v49 = v23;
    v50 = v7;
    v51 = v41;
    *&v52 = v40;
    *(&v52 + 1) = v39;
    v53 = 0u;
    v54 = 0u;
    sub_1ADE51B64(&v43, v42);
    result = sub_1AE030800(&v47);
    v34 = *&v46[16];
    *(a2 + 64) = *v46;
    *(a2 + 80) = v34;
    *(a2 + 96) = *&v46[32];
    v35 = v44;
    *a2 = v43;
    *(a2 + 16) = v35;
    v36 = *&v45[16];
    *(a2 + 32) = *v45;
    *(a2 + 48) = v36;
  }

  return result;
}

uint64_t sub_1AE19C9C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDD86D8(a1, a2);
  sub_1ADDFE348(a1, a2);
  v15 = sub_1AE1984E0(v14);
  (*(v11 + 8))(v14, v10);
  v16 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1AE19CF10(v17);
  v20 = v19;

  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = v16;
  }

  v22 = sub_1AE19CF10(v21);
  v24 = v23;

  *a5 = v15;
  a5[1] = v18;
  a5[2] = v20;
  a5[3] = v22;
  a5[4] = v24;
  return result;
}

void sub_1AE19CB60(unint64_t *a1)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v1 + 16);
  if (v10 >= *(v11 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v9, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v4, v7);
  v12 = sub_1ADDD8E0C();
  v14 = v13;
  (*(v5 + 8))(v9, v4);
  sub_1ADDCC35C(0, 0xC000000000000000);
  v15 = a1[1];
  v16 = a1[2];
  v17 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v18 = a1[1];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (v15)
  {
    v19 = a1[2];
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v15);
  sub_1AE19DE8C(v18, v19, v2);

  v21 = a1[3];
  v20 = a1[4];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v21)
  {
    v17 = v20;
  }

  sub_1ADE42C78(v21);
  sub_1AE19DE8C(v22, v17, v2);

  sub_1ADDD86D8(v12, v14);

  sub_1ADDCC35C(v12, v14);
}

uint64_t sub_1AE19CDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F07C(0, v1, 0);
  v4 = v17;
  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    sub_1ADDD86D8(v6, v7);

    sub_1ADDD86D8(v6, v7);
    sub_1ADDCC35C(0, 0xC000000000000000);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v2;
    }

    v10 = sub_1AE19CF10(v9);
    v12 = v11;
    sub_1ADDCC35C(v6, v7);

    sub_1ADE42CB8(0);
    v14 = *(v17 + 16);
    v13 = *(v17 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1ADE6F07C((v13 > 1), v14 + 1, 1);
    }

    v5 += 3;
    *(v17 + 16) = v14 + 1;
    v15 = (v17 + 32 * v14);
    v15[4] = v6;
    v15[5] = v7;
    v15[6] = v10;
    v15[7] = v12;
    --v1;
    v2 = MEMORY[0x1E69E7CC0];
  }

  while (v1);
  return v4;
}

uint64_t sub_1AE19CF10(uint64_t a1)
{
  v27 = sub_1AE23BFEC();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = v5;
  sub_1ADE6F00C(0, v6, 0);
  v7 = v28;
  v8 = v29;
  v25 = a1;
  v26 = (v2 + 8);
  v9 = (a1 + 48);
  v10 = v6;
  do
  {
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;
    sub_1ADDD86D8(v11, v12);

    sub_1ADDD86D8(v11, v12);
    sub_1ADDFE348(v11, v12);
    v14 = sub_1AE1984E0(v7);
    v7 = v28;
    v15 = v14;
    sub_1ADDCC35C(v11, v12);

    (*v26)(v7, v27);
    v29 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1ADE6F00C((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v8 = v29;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 8 * v17 + 32) = v15;
    v9 += 3;
    --v10;
  }

  while (v10);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1ADE6EFEC(0, v6, 0);
  v18 = v29;
  v19 = (v25 + 48);
  do
  {
    v20 = *v19;
    v29 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);

    if (v22 >= v21 >> 1)
    {
      sub_1ADE6EFEC((v21 > 1), v22 + 1, 1);
      v18 = v29;
    }

    *(v18 + 16) = v22 + 1;
    *(v18 + 8 * v22 + 32) = v20;
    v19 += 3;
    --v6;
  }

  while (v6);
  return v8;
}

uint64_t sub_1AE19D1A0(void *a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v46 = type metadata accessor for Proto_Reference._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  sub_1ADDD86D8(v11, v12);
  sub_1ADDFE348(v11, v12);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v13 = sub_1AE1984E0(v9);
    v41 = *(v4 + 8);
    v41(v9, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    inited[2] = v13;
    swift_beginAccess();
    if (a1[4])
    {
      v15 = a1[4];

      v17 = sub_1AE19CF10(v16);
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v20 = inited[5];
      v21 = inited[6];
      inited[5] = v17;
      inited[6] = v19;
      sub_1ADE42CB8(v20);
    }

    swift_beginAccess();
    if (a1[5])
    {
      v22 = a1[5];

      v24 = sub_1AE1990E0(v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v25 = inited[7];
      inited[7] = v24;
    }

    v26 = a1[2];
    v27 = a1[3];
    sub_1ADDD86D8(v26, v27);
    v28 = v42;
    sub_1ADDFE348(v26, v27);
    v44 = sub_1ADDCC6B4(&unk_1F23BBB40);
    v45 = v29;
    v30 = sub_1ADDD8E0C();
    v32 = v31;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v30, v32);
    v41(v28, v43);
    v33 = v44;
    v34 = v45;
    sub_1ADDCC35C(0, 0xC000000000000000);
    v35 = MEMORY[0x1E69E7CC0];

    sub_1ADDD86D8(v33, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE4C34(inited);
    }

    swift_beginAccess();
    v36 = inited[8];
    v37 = inited[9];
    v38 = inited[10];
    inited[8] = v35;
    inited[9] = v33;
    inited[10] = v34;
    sub_1ADE73D6C(v36, v37, v38);

    sub_1ADDCC35C(v33, v34);
    return inited;
  }

  return result;
}

uint64_t sub_1AE19D5F8(void *a1)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for Proto4_Reference._StorageClass();
  inited = swift_initStaticObject();
  result = swift_beginAccess();
  v12 = a1[2];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v3 + 16);
    if (v12 < *(v13 + 16))
    {
      (*(v6 + 16))(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v5);
      v14 = sub_1ADDD8E0C();
      v16 = v15;
      (*(v6 + 8))(v9, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        inited = sub_1ADE9D2F4(inited);
      }

      swift_beginAccess();
      v17 = inited[2];
      v18 = inited[3];
      inited[2] = v14;
      inited[3] = v16;
      sub_1ADDCC35C(v17, v18);
      swift_beginAccess();
      if (a1[7])
      {
        v19 = a1[7];

        v21 = sub_1AE1997B0(v20);

        if (v2)
        {

          return inited;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_allocObject();
          inited = sub_1ADE9D2F4(inited);
        }

        swift_beginAccess();
        v22 = inited[5];
        inited[5] = v21;
      }

      swift_beginAccess();
      v23 = a1[5];
      if (v23)
      {
        v24 = a1[6];

        sub_1ADE42C78(v23);
        v25 = sub_1AE19DE8C(v23, v24, v3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_allocObject();
          inited = sub_1ADE9D2F4(inited);
        }

        swift_beginAccess();
        v26 = inited[4];
        inited[4] = v25;
      }

      return inited;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE19D930@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  LOBYTE(v67[0]) = 1;
  v73 = 1;
  v21 = *(a1 + 40);
  v53 = *(a1 + 4);
  v52 = v21;
  if ((v21 & 1) != 0 || (v22 = *(a1 + 3)) == 0)
  {
    sub_1AE23BF5C();
    result = (*(v14 + 48))(v12, 1, v13);
    if (result != 1)
    {
      (*(v14 + 32))(v20, v12, v13);
      v51 = sub_1AE1984E0(v20);
      (*(v14 + 8))(v20, v13);
      goto LABEL_9;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    goto LABEL_30;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 >= *(a2 + 16))
  {
    goto LABEL_32;
  }

  v51 = *(a2 + 8 * v24 + 32);
LABEL_9:
  v73 = 0;
  v50 = *a1;
  v25 = *(a1 + 1);
  v26 = *(v25 + 16);
  if (v26)
  {
    v56 = v13;
    v48 = a1;
    v49 = a4;
    v67[0] = MEMORY[0x1E69E7CC0];
    result = sub_1ADE6F49C(0, v26, 0);
    v59 = v60 + 32;
    v55 = "Coherence/Upgrade.swift";
    v27 = v67[0];
    v54 = (v14 + 48);
    v28 = (v14 + 32);
    v29 = (v14 + 8);
    v30 = (v25 + 40);
    v31 = v58;
    while (1)
    {
      v32 = *(v30 - 1);
      v33 = *v30;
      if (v32)
      {
        v23 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v23)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v34 >= *(v60 + 16))
        {
          goto LABEL_29;
        }

        v35 = *(v59 + 8 * v34);
      }

      else
      {
        sub_1AE23BF5C();
        v36 = v56;
        result = (*v54)(v31, 1, v56);
        if (result == 1)
        {
          goto LABEL_33;
        }

        v37 = v57;
        (*v28)(v57, v31, v36);
        v38 = sub_1AE1984E0(v37);
        v31 = v58;
        v35 = v38;
        result = (*v29)(v37, v36);
      }

      v67[0] = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1ADE6F49C((v39 > 1), v40 + 1, 1);
        v31 = v58;
        v27 = v67[0];
      }

      v30 += 2;
      *(v27 + 16) = v40 + 1;
      v41 = v27 + 16 * v40;
      *(v41 + 32) = v35;
      *(v41 + 40) = v33;
      if (!--v26)
      {

        a4 = v49;
        a1 = v48;
        goto LABEL_23;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];

LABEL_23:
  if (v52)
  {
    v42 = 0;
  }

  else
  {
    v42 = v53;
  }

  v43 = *(a1 + 2);

  v44 = MEMORY[0x1E69E7CC0];

  LODWORD(v62) = v50;
  *(&v62 + 1) = v27;
  *&v63 = v43;
  *(&v63 + 1) = v44;
  *&v64 = 0;
  BYTE8(v64) = 1;
  *(&v64 + 9) = *v74;
  HIDWORD(v64) = *&v74[3];
  *&v65 = v51;
  *(&v65 + 1) = v42;
  v66 = v73;
  LODWORD(v67[0]) = v50;
  v67[1] = v27;
  v67[2] = v43;
  v67[3] = v44;
  v67[4] = 0;
  v68 = 1;
  *v69 = *v74;
  *&v69[3] = *&v74[3];
  v70 = v51;
  v71 = v42;
  v72 = v73;
  sub_1ADE5218C(&v62, v61);
  result = sub_1ADE521E8(v67);
  v45 = v65;
  *(a4 + 32) = v64;
  *(a4 + 48) = v45;
  *(a4 + 64) = v66;
  v46 = v63;
  *a4 = v62;
  *(a4 + 16) = v46;
  return result;
}

uint64_t sub_1AE19DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v86 = *MEMORY[0x1E69E9840];
  v75 = sub_1AE23BFEC();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v9 >= v8)
  {
    v10 = *(a1 + 16);
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v85 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F33C(0, v10, 0);
  result = v85;
  v72 = v5;
  v66 = v9;
  v67 = v8;
  v64 = a2;
  v65 = v10;
  v63 = a1;
  if (v10)
  {
    v12 = (a1 + 32);
    v13 = (a2 + 32);
    v68 = v5 + 8;
    v69 = v5 + 16;
    while (v8)
    {
      if (!v9)
      {
        goto LABEL_26;
      }

      v14 = *v12;
      if ((*v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v15 = *(v71 + 16);
      if (v14 >= *(v15 + 16))
      {
        goto LABEL_28;
      }

      v16 = *v13;
      v17 = v72;
      v18 = v15 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v14;
      v19 = *(v72 + 16);
      v20 = v70;
      v74 = result;
      v19(v70, v18, v75);
      v73 = v16;

      v76 = sub_1AE23BFCC();
      v77 = v21;
      v78 = v22;
      v79 = v23;
      v80 = v24;
      v81 = v25;
      v82 = v26;
      v83 = v27;
      v84 = v28;
      sub_1AE23BFCC();
      v29 = sub_1AE23BBCC();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_1AE23BB6C();
      (*(v17 + 8))(v20, v75);
      sub_1ADDCC35C(0, 0xC000000000000000);

      result = v74;
      v85 = v74;
      v34 = *(v74 + 16);
      v33 = *(v74 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1ADE6F33C((v33 > 1), v34 + 1, 1);
        result = v85;
      }

      *(result + 16) = v34 + 1;
      v35 = (result + 24 * v34);
      --v9;
      v35[4] = 0x1000000000;
      v35[5] = v32 | 0x4000000000000000;
      v35[6] = v73;
      --v8;
      ++v13;
      ++v12;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

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
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_13:
  v37 = v66;
  v36 = v67;
  if (v67 > v66)
  {
    v38 = v65;
    v73 = v64 + 32;
    v74 = v63 + 32;
    v68 = v72 + 8;
    v69 = v72 + 16;
    while (v38 < v36)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_30;
      }

      if (v37 == v38)
      {
        goto LABEL_24;
      }

      if (v38 >= v37)
      {
        goto LABEL_31;
      }

      v40 = *(v74 + 8 * v38);
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v41 = *(v71 + 16);
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_33;
      }

      v42 = v72;
      v43 = *(v73 + 8 * v38);
      v44 = v70;
      v45 = result;
      v46 = v75;
      (*(v72 + 16))(v70, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v40, v75);

      v76 = sub_1AE23BFCC();
      v77 = v47;
      v78 = v48;
      v79 = v49;
      v80 = v50;
      v81 = v51;
      v82 = v52;
      v83 = v53;
      v84 = v54;
      sub_1AE23BFCC();
      v55 = sub_1AE23BBCC();
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();
      v58 = sub_1AE23BB6C();
      (*(v42 + 8))(v44, v46);
      sub_1ADDCC35C(0, 0xC000000000000000);

      result = v45;
      v85 = v45;
      v60 = *(v45 + 16);
      v59 = *(v45 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1ADE6F33C((v59 > 1), v60 + 1, 1);
        result = v85;
      }

      *(result + 16) = v60 + 1;
      v61 = (result + 24 * v60);
      v61[4] = 0x1000000000;
      v61[5] = v58 | 0x4000000000000000;
      v61[6] = v43;
      ++v38;
      v37 = v66;
      v36 = v67;
      if (v39 == v67)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_29;
  }

LABEL_24:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE19E3F0(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v5 = *(a1 + 16);
  swift_beginAccess();
  if (*(*(v3 + 32) + 16) || (swift_beginAccess(), *(*(v3 + 48) + 16)))
  {
    type metadata accessor for CRCounterRef();
    swift_allocObject();

    sub_1AE19E814(v6);
    sub_1AE1A077C();
  }

  else
  {
  }

  sub_1AE1A0F64(a1, v14);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = swift_allocObject();
    v8 = *(inited + 16);
    *(v7 + 16) = v8;
    sub_1ADE5215C(v8);

    inited = v7;
  }

  v9 = swift_allocObject();
  v10 = v14[1];
  *(v9 + 16) = v14[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v15;
  v11 = v9 | 0x7000000000000000;
  v12 = *(inited + 16);
  *(inited + 16) = v11;
  sub_1ADE52174(v12);
  return inited;
}

void *sub_1AE19E550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC8];
  v0[3] = MEMORY[0x1E69E7CC8];
  v0[4] = v11;
  v0[5] = v11;
  v0[6] = v11;
  v0[7] = 0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v12 = type metadata accessor for ReplicaState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v17 = type metadata accessor for Replica();
  v18 = *(*(v17 - 8) + 56);
  v18(v15 + v16, 1, 1, v17);
  (*(v7 + 32))(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v10, v6);
  *(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v18(v5, 1, 1, v17);
  swift_beginAccess();
  sub_1ADDD85E4(v5, v15 + v16);
  swift_endAccess();
  v1[2] = v15;
  return v1;
}

void *sub_1AE19E814(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v1[3] = MEMORY[0x1E69E7CC8];
  v1[5] = v4;
  v1[4] = v4;
  v1[6] = v4;
  v1[7] = 0;
  v5 = a1[2];
  v6 = qword_1ED967EE8;

  if (v6 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v7 = sub_1AE1FEFC0(&dword_1ED96F1F8, v5);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v1[2] = v7;
  swift_beginAccess();
  v8 = a1[3];
  v9 = a1[4];
  swift_beginAccess();
  v10 = v1[3];
  v11 = v1[4];
  v1[3] = v8;
  v1[4] = v9;

  swift_beginAccess();
  v12 = a1[5];
  v13 = a1[6];
  swift_beginAccess();
  v14 = v1[5];
  v15 = v2[6];
  v2[5] = v12;
  v2[6] = v13;

  v2[7] = a1[7];
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v16 = v2[3];
  v17 = v2[4];

  swift_bridgeObjectRetain_n();
  sub_1ADF8D974(v17);
  swift_bridgeObjectRelease_n();

  v18 = v2[5];
  v19 = v2[6];

  swift_bridgeObjectRetain_n();
  sub_1ADF8D974(v19);

  swift_bridgeObjectRelease_n();

  return v2;
}

uint64_t sub_1AE19EA44()
{
  v1 = v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = v0[4];
  v11[0] = v0[3];
  v11[1] = v2;

  sub_1ADDF8100(v11);

  swift_beginAccess();
  v3 = v0[6];
  v10[0] = v0[5];
  v10[1] = v3;

  sub_1ADDF8100(v10);

  v4 = v0[2];

  v6 = v0[3];
  v5 = v1[4];

  v8 = v1[5];
  v7 = v1[6];

  return swift_deallocClassInstance();
}

void sub_1AE19EB64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Replica();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  if (a1 < 1)
  {
    if (a1 < 0)
    {
      v2 = &OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter;
      v18 = *(v3 + 16);
      v14 = *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter);
      v21 = qword_1ED967EE8;

      if (v21 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    return;
  }

  v15 = &OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter;
  v16 = *(v3 + 16);
  v11 = *(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v17 = qword_1ED967EE8;

  if (v17 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v18 = &dword_1ED96F1F8;
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v16, v14);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v8 = &v11[a1];
    if (__OFADD__(v11, a1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v8 < v11)
    {
      goto LABEL_24;
    }

    v18 = (v3 + 24);
    swift_beginAccess();
    if (*&v14[*(v5 + 20)])
    {
      v5 = v3 + 32;
    }

    else
    {
      v5 = v3 + 24;
    }

    sub_1ADE0DA80(v14, v11);
    swift_endAccess();
    sub_1ADDF1F8C(v14);
    v19 = (*(v3 + 16) + *v15);
    v20 = *v19 + a1;
    if (!__OFADD__(*v19, a1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_12:
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v18, v8);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
    if (qword_1EB5B9C20 != -1)
    {
      swift_once();
    }

    v22 = sub_1AE23BFEC();
    __swift_project_value_buffer(v22, qword_1EB5D7CE0);
    sub_1ADDE3CD8();
    (*(*(v22 - 8) + 8))(v8, v22);
    os_unfair_lock_lock(&dword_1ED96F1F8);
    sub_1AE1FEC4C(v18, v8);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v15 = *&v8[*(v5 + 20)];
    sub_1ADDF1F8C(v8);
    *&v11[*(v5 + 20)] = v15;
    if (__OFSUB__(v14, a1))
    {
      break;
    }

    if (&v14[-a1] < v14)
    {
      goto LABEL_28;
    }

    v16 = v3 + 40;
    swift_beginAccess();
    if (v15)
    {
      v5 = v3 + 48;
    }

    else
    {
      v5 = v3 + 40;
    }

    sub_1ADE0DA80(v11, v14);
    swift_endAccess();
    sub_1ADDF1F8C(v11);
    v19 = (*(v3 + 16) + *v2);
    v20 = *v19 - a1;
    if (!__OFSUB__(*v19, a1))
    {
LABEL_9:
      *v19 = v20;
      return;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1AE19EF08@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v3 = v2;
  v155 = a2;
  v5 = *v2;
  v6 = sub_1AE23C88C();
  v168 = *(v6 - 8);
  v169 = v6;
  v7 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v166 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1AE23C8CC();
  v165 = *(v167 - 8);
  v9 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v161 = *(v11 - 8);
  v12 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v152 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v152 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v171 = &v152 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v152 - v23;
  v163 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v152 - v27;
  v157 = sub_1AE23BFEC();
  v178 = *(v157 - 8);
  v28 = v178[8];
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v160 = &v152 - v31;
  v32 = v3[7];
  v33 = a1[7];
  v173 = v14;
  v174 = v17;
  v172 = v24;
  if (v32 == v33)
  {

    v34 = a1;
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v35 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v36 = v180;
    v37 = v181;
    v38 = v182;
    v34 = swift_allocObject();

    sub_1AE19E814(v39);
    swift_beginAccess();
    sub_1ADDF8898(v36, v37, v38);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v36, v37, v38);
    swift_endAccess();
    v34[7] = v36;
    swift_beginAccess();
    sub_1ADDF8898(v36, v37, v38);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v36, v37, v38);
    swift_endAccess();

    v3[7] = v36;
  }

  swift_beginAccess();
  v175 = v3[4];
  v159 = v3 + 4;
  swift_beginAccess();
  v176 = v3[6];
  v158 = v3 + 6;
  v40 = v3[2];
  v41 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v42 = v178 + 2;
  v43 = v178[2];
  v44 = v40 + v41;
  v45 = v160;
  v46 = v157;
  v43(v160, v44, v157);
  v47 = v3;
  v48 = v34[2];
  v49 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v50 = v48 + v49;
  v51 = v47;
  v52 = v156;
  v153 = v43;
  v154 = v42;
  v43(v156, v50, v46);
  sub_1AE1A2EB4(&qword_1ED96A710, MEMORY[0x1E69695A8]);

  LOBYTE(v43) = sub_1AE23CCBC();
  v53 = v178[1];
  v53(v52, v46);
  result = (v53)(v45, v46);
  v170 = v34;
  v55 = v34;
  if (v43)
  {
    goto LABEL_17;
  }

  v56 = *(v51[3] + 16);
  v57 = *(*v159 + 16);
  v58 = __OFADD__(v56, v57);
  v59 = v56 + v57;
  if (v58)
  {
    __break(1u);
    goto LABEL_31;
  }

  v60 = *(v51[5] + 16);
  v61 = *(*v158 + 16);
  v58 = __OFADD__(v60, v61);
  v62 = v60 + v61;
  if (v58)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v63 = v59 + v62;
  if (__OFADD__(v59, v62))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = swift_beginAccess();
  v64 = *(v34[3] + 16);
  v65 = *(v34[4] + 16);
  v66 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = swift_beginAccess();
  v67 = *(v34[5] + 16);
  v68 = *(v34[6] + 16);
  v58 = __OFADD__(v67, v68);
  v69 = v67 + v68;
  if (v58)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v58 = __OFADD__(v66, v69);
  v70 = v66 + v69;
  if (v58)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v55 = v170;
  if (v63 < v70)
  {
    goto LABEL_14;
  }

  if (v63 == v70)
  {
    v82 = v51[2];
    v83 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    v84 = v157;
    v85 = v153;
    v153(v160, v82 + v83, v157);
    v86 = v170[2];
    v87 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    v88 = v86 + v87;
    v55 = v170;
    v89 = v156;
    v85(v156, v88, v84);
    v90 = v160;
    LOBYTE(v86) = sub_1ADF5EB00();
    v53(v89, v84);
    v53(v90, v84);
    if (v86)
    {
LABEL_14:
      v71 = v51[2];
      v72 = v55[2];
      v73 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
      swift_beginAccess();
      v74 = v160;
      v75 = v157;
      v153(v160, v72 + v73, v157);
      v76 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
      swift_beginAccess();
      v77 = v178[5];

      v77(v71 + v76, v74, v75);
      swift_endAccess();

      v78 = v51[2];
      v79 = type metadata accessor for Replica();
      v80 = v177;
      (*(*(v79 - 8) + 56))(v177, 1, 1, v79);
      v81 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
      swift_beginAccess();

      sub_1ADDD85E4(v80, v78 + v81);
      swift_endAccess();
    }
  }

LABEL_17:
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  v192 = word_1ED96F220;
  v193 = byte_1ED96F222;
  swift_beginAccess();
  v91 = v55;
  v92 = v55[3];
  v93 = v55[4];
  swift_beginAccess();

  v95 = v159;
  sub_1ADF5F770(v94, &v188);
  sub_1ADF5F770(v92, &v179);
  v190 = v179;
  v191 = BYTE2(v179);
  v96 = &v190;
  MergeResult.merge(_:)(v96);
  v97 = v188;
  v98 = v189;
  swift_endAccess();

  LOWORD(v180) = v97;
  BYTE2(v180) = v98;
  v99 = &v180;
  MergeResult.merge(_:)(v99);
  swift_beginAccess();
  v100 = v91[5];
  v101 = v91[6];
  swift_beginAccess();

  v103 = v158;
  sub_1ADF5F770(v102, &v179);
  sub_1ADF5F770(v100, &v190);
  v186 = v190;
  v187 = v191;
  v104 = &v186;
  MergeResult.merge(_:)(v104);
  v105 = v179;
  v106 = BYTE2(v179);
  swift_endAccess();

  LOWORD(v180) = v105;
  BYTE2(v180) = v106;
  v107 = &v180;
  MergeResult.merge(_:)(v107);
  v108 = *v103;
  v109 = qword_1ED96B308;
  v110 = *v95;

  v178 = v108;

  if (v109 != -1)
  {
    swift_once();
  }

  v111 = qword_1ED96F2F8;
  v112 = type metadata accessor for Replica();
  v113 = *(v112 - 8);
  v114 = *(v113 + 56);
  v115 = (v113 + 56);
  v116 = v172;
  v114(v172, 1, 1, v112);
  v117 = v171;
  v159 = v112;
  v160 = v115;
  v114(v171, 1, 1, v112);
  v118 = v175;
  v119 = *(v175 + 16);
  v120 = MEMORY[0x1E69E7CC8];
  v158 = v111;
  if (v119 || *(v110 + 16))
  {
    v156 = *(v111 + 40);
    v157 = v114;
    v121 = v177;
    sub_1ADDD7E88(v116, v177);
    v122 = v117;
    v123 = v162;
    sub_1ADDD7E88(v122, v162);
    v124 = *(v161 + 80);
    v125 = (v124 + 56) & ~v124;
    v126 = (v163 + v124 + v125) & ~v124;
    v127 = swift_allocObject();
    v127[2] = v120;
    v127[3] = v118;
    v127[4] = v120;
    v127[5] = v110;
    v127[6] = v111;
    sub_1ADECD978(v121, v127 + v125);
    sub_1ADECD978(v123, v127 + v126);
    v184 = sub_1ADE4315C;
    v185 = v127;
    v180 = MEMORY[0x1E69E9820];
    v181 = 1107296256;
    v182 = sub_1ADDD2200;
    v183 = &block_descriptor_22;
    v128 = _Block_copy(&v180);
    swift_bridgeObjectRetain_n();

    v129 = v164;
    sub_1AE23C8AC();
    v179 = MEMORY[0x1E69E7CC0];
    sub_1AE1A2EB4(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v130 = v166;
    v131 = v169;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v129, v130, v128);
    _Block_release(v128);
    v120 = MEMORY[0x1E69E7CC8];

    swift_bridgeObjectRelease_n();
    v132 = v130;
    v114 = v157;
    (*(v168 + 8))(v132, v131);
    (*(v165 + 8))(v129, v167);
    sub_1ADDCEDE0(v171, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v172, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v117, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v116, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  v133 = v174;
  v134 = v159;
  v114(v174, 1, 1, v159);
  v135 = v173;
  v114(v173, 1, 1, v134);
  v136 = v176;
  if (*(v176 + 16) || v178[2])
  {
    v137 = v158;
    v175 = v158[5];
    v138 = v177;
    sub_1ADDD7E88(v133, v177);
    v139 = v135;
    v140 = v162;
    sub_1ADDD7E88(v139, v162);
    v141 = *(v161 + 80);
    v142 = (v141 + 56) & ~v141;
    v143 = (v163 + v141 + v142) & ~v141;
    v144 = swift_allocObject();
    v144[2] = v120;
    v144[3] = v136;
    v145 = v178;
    v144[4] = v120;
    v144[5] = v145;
    v144[6] = v137;
    sub_1ADECD978(v138, v144 + v142);
    sub_1ADECD978(v140, v144 + v143);
    v184 = sub_1ADE42B98;
    v185 = v144;
    v180 = MEMORY[0x1E69E9820];
    v181 = 1107296256;
    v182 = sub_1ADDD2200;
    v183 = &block_descriptor_13;
    v146 = _Block_copy(&v180);

    swift_bridgeObjectRetain_n();

    v147 = v164;
    sub_1AE23C8AC();
    v179 = MEMORY[0x1E69E7CC0];
    sub_1AE1A2EB4(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADF92ED8();
    v148 = v166;
    v149 = v169;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v147, v148, v146);
    _Block_release(v146);

    swift_bridgeObjectRelease_n();
    (*(v168 + 8))(v148, v149);
    (*(v165 + 8))(v147, v167);
    sub_1ADDCEDE0(v173, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v174, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v135, &unk_1EB5B9E70, &unk_1AE240EC0);
    result = sub_1ADDCEDE0(v133, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  v150 = v155;
  v151 = v193;
  *v155 = v192;
  *(v150 + 2) = v151;
  return result;
}