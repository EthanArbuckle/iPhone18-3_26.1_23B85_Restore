uint64_t sub_18E6E7304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for CombinerElement() + 36);
  v7 = type metadata accessor for CombinerElement.State();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_18E6E73D4(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = type metadata accessor for CombinerElement.State();
  if (*(v2 + *(result + 36)) == 1)
  {
    (*(*(result - 8) + 8))(v2, result);
    sub_18E6E9F5C(v2);
    v6 = *(v4 + 24);

    return v6(v3, v4);
  }

  return result;
}

uint64_t sub_18E6E749C(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(v2 + *(type metadata accessor for CombinerElement.State() + 36)) = 1;
  v5 = *(v4 + 32);

  return v5(v3, v4);
}

uint64_t sub_18E6E7520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput();
  v10 = sub_18E72B438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  v16 = *(v9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v23 - v18;
  v20 = v5 + *(a2 + 36);
  *(v20 + *(type metadata accessor for CombinerElement.State() + 36)) = 1;
  (*(v11 + 16))(v15, v20, v10);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    (*(v16 + 32))(v19, v15, v9);
    v21 = GestureOutput.isFinal.getter(v9);
    (*(v16 + 8))(v19, v9);
    if (v21)
    {
      return 0;
    }
  }

  return (*(v7 + 40))(v24, v25, v26, v8, v7);
}

uint64_t sub_18E6E7788@<X0>(uint64_t *a1@<X0>, int a2@<W1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v59 = a3;
  v60 = a2;
  v61 = a8;
  v62 = a1;
  if (a4 == 1)
  {
    v12 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v13 = *(a7 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v11)
    {
      v17 = (a5 & 0xFFFFFFFFFFFFFFFELL);
      v18 = (a7 & 0xFFFFFFFFFFFFFFFELL);
      v19 = (&v54 - v16);
      v20 = v11;
      do
      {
        v21 = *v17++;
        v22 = *v18++;
        *v19++ = type metadata accessor for CombinerElement();
        --v20;
      }

      while (v20);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v64 = TupleTypeMetadata;
  v57 = *(TupleTypeMetadata - 8);
  v23 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v66 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v11;
  v70 = a5;
  v63 = a5;
  v71 = a6;
  v72 = a7;
  v25 = type metadata accessor for CombinerComponent();
  v58 = &v54;
  v55 = *(v25 - 8);
  v56 = v25;
  v26 = *(v55 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v54 = &v54 - v28;
  if (v11)
  {
    v29 = (v63 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v64 + 32);
    v32 = v62;
    v33 = v11;
    v65 = v11;
    do
    {
      if (v11 == 1)
      {
        v67 = 0;
      }

      else
      {
        v67 = *v31;
      }

      v68 = &v54;
      v35 = *v29++;
      v34 = v35;
      v36 = *v30++;
      v37 = *v32++;
      v38 = *(*(v34 - 8) + 64);
      MEMORY[0x1EEE9AC00](v27);
      v40 = &v54 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v40);
      v42 = type metadata accessor for CombinerElement.State();
      v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v42 - 8);
      v45 = &v54 - v44;
      sub_18E6E9F5C(&v54 - v44);
      v27 = sub_18E6E7304(v40, v45, v34, &v66[v67]);
      v31 += 4;
      --v33;
      v11 = v65;
    }

    while (v33);
  }

  v46 = v54;
  (*(v57 + 32))(v54, v66, v64);
  v47 = v56;
  v48 = &v46[*(v56 + 52)];
  v49 = v59;
  v50 = v59[1];
  *v48 = *v59;
  *(v48 + 1) = v50;
  *(v48 + 2) = v49[2];
  v46[*(v47 + 56)] = v60 & 1;
  result = (*(v55 + 32))(v61, v46);
  if (v11)
  {
    v52 = (v63 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v53 = v62 - 1;
    do
    {
      result = (*(*(*(v52 + 8 * v11) - 8) + 8))(v53[v11]);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_18E6E7BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  v135 = a3;
  v4 = a2[2];
  v5 = 8 * v4;
  v173 = v4;
  v157 = a2;
  v145 = 8 * v4;
  if (v4 == 1)
  {
    v6 = a2;
    v7 = *(a2[3] & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(a2[5] & 0xFFFFFFFFFFFFFFFELL);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for GestureOutput();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v4)
    {
      v11 = (v157[3] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (v157[5] & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10;
      v14 = v173;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        swift_getAssociatedTypeWitness();
        *v13++ = type metadata accessor for GestureOutput();
        --v14;
      }

      while (v14);
    }

    v4 = v173;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = v157;
    v5 = v145;
  }

  v141 = &v134;
  v143 = TupleTypeMetadata;
  v134 = *(TupleTypeMetadata - 8);
  v17 = *(v134 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v159 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 1)
  {
    v20 = *(v6[3] & 0xFFFFFFFFFFFFFFFELL);
    v21 = *(v6[5] & 0xFFFFFFFFFFFFFFFELL);
    v22 = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v18);
    v23 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = v4;
    if (v4)
    {
      v25 = (v157[3] & 0xFFFFFFFFFFFFFFFELL);
      v26 = (v157[5] & 0xFFFFFFFFFFFFFFFELL);
      v27 = v23;
      v28 = v24;
      do
      {
        v29 = *v25++;
        v30 = *v26++;
        *v27++ = type metadata accessor for CombinerElement();
        --v28;
      }

      while (v28);
    }

    v4 = v24;
    v22 = swift_getTupleTypeMetadata();
    v6 = v157;
    v5 = v145;
  }

  v140 = &v134;
  v148 = v22;
  v146 = *(v22 - 8);
  v31 = *(v146 + 64);
  v32 = MEMORY[0x1EEE9AC00](v22);
  v158 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = &v134;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v163 = &v134 - v35;
  if (v4 == 1)
  {
    v36 = *(v6[3] & 0xFFFFFFFFFFFFFFFELL);
    v37 = *(v6[5] & 0xFFFFFFFFFFFFFFFELL);
    type metadata accessor for CombinerElement();
    swift_getAssociatedTypeWitness();
    type metadata accessor for GestureOutput();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v39 = TupleTypeMetadata2;
    v40 = 1;
  }

  else
  {
    v164 = v3;
    v161 = &v134;
    MEMORY[0x1EEE9AC00](v34);
    v165 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v41 = (v157[3] & 0xFFFFFFFFFFFFFFFELL);
      v42 = (v157[5] & 0xFFFFFFFFFFFFFFFELL);
      v43 = v165;
      v44 = v173;
      do
      {
        v45 = *v41++;
        v46 = *v42++;
        type metadata accessor for CombinerElement();
        swift_getAssociatedTypeWitness();
        type metadata accessor for GestureOutput();
        *v43++ = swift_getTupleTypeMetadata2();
        --v44;
      }

      while (v44);
    }

    v40 = v173;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
    v39 = TupleTypeMetadata2;
    v3 = v164;
  }

  v138 = &v134;
  v147 = *(v39 - 8);
  v47 = v147[8];
  v48 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v161 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = &v134;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v160 = &v134 - v51;
  v136 = &v134;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v134 - v52;
  v54 = *v3;
  v155 = *(v3 + 1);
  v154 = v54;
  v55 = v3[5];
  v153 = v3[4];
  v152 = v55;
  v151 = v3[6];
  (*(v146 + 16))(v163, v156, v148);
  v144 = v39;
  if (v40)
  {
    v56 = 0;
    v57 = v157[5];
    v150 = v157[3] & 0xFFFFFFFFFFFFFFFELL;
    v149 = v57 & 0xFFFFFFFFFFFFFFFELL;
    v58 = (v39 + 16);
    v165 = 32;
    while (1)
    {
      if (v40 == 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58[4];
      }

      v60 = *(v150 + 8 * v56);
      v61 = *(v149 + 8 * v56);
      v62 = type metadata accessor for CombinerElement();
      swift_getAssociatedTypeWitness();
      type metadata accessor for GestureOutput();
      v63 = swift_getTupleTypeMetadata2();
      if (v40 != 1)
      {
        v64 = *(v148 + v165);
      }

      v65 = v53;
      v66 = &v53[v59];
      v164 = *(v63 + 48);
      v67 = *(v62 - 8);
      v68 = *(v67 + 64);
      MEMORY[0x1EEE9AC00](v63);
      v70 = &v134 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v67 + 16))(v70, &v163[v71], v62);
      v166[1] = v155;
      v166[0] = v154;
      v167 = v153;
      v168 = v152;
      v169 = v151;
      v72 = v156[*(v157 + 14)];
      WitnessTable = swift_getWitnessTable();
      v74 = v162;
      sub_18E6E8C60(v66, v164 + v66, v70, v166, v72, v62, WitnessTable);
      v162 = v74;
      if (v74)
      {
        break;
      }

      (*(v67 + 8))(v70, v62);
      ++v56;
      v58 += 4;
      v165 += 16;
      v40 = v173;
      v53 = v65;
      if (v173 == v56)
      {
        goto LABEL_28;
      }
    }

    v158 = &v134;
    (*(v67 + 8))(v70, v62);
    if (v56)
    {
      v125 = v150 - 8;
      v126 = v149 - 8;
      do
      {
        v127 = *(v125 + 8 * v56);
        v128 = *(v126 + 8 * v56);
        v129 = *v58;
        v58 -= 4;
        type metadata accessor for CombinerElement();
        swift_getAssociatedTypeWitness();
        type metadata accessor for GestureOutput();
        v130 = swift_getTupleTypeMetadata2();
        (*(*(v130 - 8) + 8))(&v65[v129], v130);
        --v56;
      }

      while (v56);
    }

    return (*(v146 + 8))(v163, v148);
  }

  else
  {
LABEL_28:
    v75 = v148;
    (*(v146 + 8))(v163, v148);
    v76 = v147[2];
    v77 = v144;
    *&v155 = v147 + 2;
    *&v154 = v76;
    v76(v160, v53, v144);
    v142 = v53;
    if (v40)
    {
      v78 = v40;
      v79 = (v157[3] & 0xFFFFFFFFFFFFFFFELL);
      v80 = (v157[5] & 0xFFFFFFFFFFFFFFFELL);
      v81 = (v77 + 32);
      v82 = (v75 + 32);
      do
      {
        if (v173 == 1)
        {
          v164 = 0;
          v165 = v158;
        }

        else
        {
          v165 = &v158[*v82];
          v164 = *v81;
        }

        v83 = *v79++;
        v84 = *v80++;
        v85 = type metadata accessor for CombinerElement();
        swift_getAssociatedTypeWitness();
        v86 = type metadata accessor for GestureOutput();
        v87 = swift_getTupleTypeMetadata2();
        v163 = &v134;
        v88 = *(*(v87 - 8) + 64);
        MEMORY[0x1EEE9AC00](v87);
        v90 = &v134 - v89;
        (*(v91 + 16))(&v134 - v89, v164 + v160, v87);
        v92 = *(v87 + 48);
        (*(*(v85 - 8) + 32))(v165, v90, v85);
        (*(*(v86 - 8) + 8))(&v90[v92], v86);
        v81 += 4;
        v82 += 4;
        --v78;
      }

      while (v78);
    }

    v93 = v156;
    (*(v146 + 40))(v156, v158, v148);
    v94 = v147[1];
    v95 = v144;
    ++v147;
    v96 = (v94)(v160, v144);
    v97 = v157;
    v98 = &v93[*(v157 + 13)];
    v99 = *(v98 + 1);
    v170 = *v98;
    v171 = v99;
    v172 = *(v98 + 2);
    v100 = v145;
    MEMORY[0x1EEE9AC00](v96);
    v164 = (&v134 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    v101 = (v154)(v161, v142, v95);
    v102 = v173;
    if (v173)
    {
      v156 = v94;
      v158 = &v134;
      v103 = 0;
      v104 = v97[5];
      v163 = (v97[3] & 0xFFFFFFFFFFFFFFFELL);
      v160 = (v104 & 0xFFFFFFFFFFFFFFFELL);
      v105 = (v95 + 32);
      v106 = (v143 + 32);
      do
      {
        if (v102 == 1)
        {
          v165 = 0;
          v107 = v159;
        }

        else
        {
          v107 = &v159[*v106];
          v165 = *v105;
        }

        v108 = *&v163[8 * v103];
        v109 = *&v160[8 * v103];
        v110 = type metadata accessor for CombinerElement();
        swift_getAssociatedTypeWitness();
        v111 = type metadata accessor for GestureOutput();
        v112 = swift_getTupleTypeMetadata2();
        v113 = *(*(v112 - 8) + 64);
        MEMORY[0x1EEE9AC00](v112);
        v115 = &v134 - v114;
        (*(v116 + 16))(&v134 - v114, &v161[v165], v112);
        (*(*(v111 - 8) + 32))(v107, &v115[*(v112 + 48)], v111);
        v164[v103] = v107;
        v117 = (*(*(v110 - 8) + 8))(v115, v110);
        ++v103;
        v105 += 4;
        v106 += 4;
        v102 = v173;
      }

      while (v173 != v103);
      MEMORY[0x1EEE9AC00](v117);
      v119 = &v134 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
      v120 = 0;
      v121 = v163;
      v122 = v160;
      do
      {
        v123 = *&v121[8 * v120];
        v124 = *&v122[8 * v120];
        *&v119[8 * v120++] = swift_getAssociatedTypeWitness();
      }

      while (v102 != v120);
      v97 = v157;
      v95 = v144;
      v94 = v156;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v101);
    }

    v132 = v97[4];
    v133 = type metadata accessor for GestureOutputCombiner();
    sub_18E701D38(v164, v133, v135);
    (*(v134 + 8))(v159, v143);
    (v94)(v161, v95);
    return (v94)(v142, v95);
  }
}

uint64_t sub_18E6E8C60(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v17 + 32);
  v18 = *(v17 + 48);
  (*(v13 + 16))(v16, v19, v20);
  v21 = *a4;
  v25[1] = a4[1];
  v25[0] = v21;
  v25[2] = v24;
  v26 = v18;
  GestureComponent.tracingUpdate(context:)(v25, a6, a7, a2);
  if (v7)
  {
    return (*(v13 + 8))(v16, a6);
  }

  if (v27)
  {
    swift_getAssociatedTypeWitness();
    v23 = type metadata accessor for GestureOutput();
    if (GestureOutput.isFinal.getter(v23))
    {
      (*(a7 + 24))(a6, a7);
    }
  }

  return (*(v13 + 32))(a1, v16, a6);
}

uint64_t sub_18E6E8E30(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  if (v4 == 1)
  {
    v5 = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(a1[5] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
    v8 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v10 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v11 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v4;
      do
      {
        v14 = *v10++;
        v15 = *v11++;
        *v12++ = type metadata accessor for CombinerElement();
        --v13;
      }

      while (v13);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v16 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v41[1] = v41;
  v18 = MEMORY[0x1EEE9AC00](v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v41 - v19;
  v47 = v18;
  v42 = v20;
  v43 = v2;
  v21 = *(v20 + 16);
  v44 = v22;
  v21(v18, v2);
  if (v4)
  {
    v23 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v24 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v44 + 32);
    v26 = v4;
    v45 = v4;
    do
    {
      v49 = v26;
      if (v4 == 1)
      {
        v27 = 0;
        v28 = v46;
      }

      else
      {
        v27 = *v25;
        v28 = &v46[v27];
      }

      v29 = *v23++;
      v30 = *v24++;
      v31 = type metadata accessor for CombinerElement();
      v48 = v41;
      v32 = *(v31 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x1EEE9AC00](v31);
      v35 = v41 - v34;
      v36 = *(v32 + 16);
      v36(v41 - v34, v47 + v27, v31);
      WitnessTable = swift_getWitnessTable();
      v36(v28, v35, v31);
      (*(WitnessTable + 24))(v31, WitnessTable);
      (*(v32 + 8))(v35, v31);
      v25 += 4;
      v26 = v49 - 1;
      v4 = v45;
    }

    while (v49 != 1);
  }

  v38 = v42;
  v39 = v44;
  (*(v42 + 40))(v43, v46, v44);
  return (*(v38 + 8))(v47, v39);
}

uint64_t sub_18E6E91AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v44 = a2;
  if (v5 == 1)
  {
    v6 = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v7 = *(a1[5] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
    v9 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v11 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
      v13 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v5;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        *v13++ = type metadata accessor for CombinerElement();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v17 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v41[1] = v41;
  v19 = MEMORY[0x1EEE9AC00](v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v41 - v20;
  v48 = v19;
  v49 = 0;
  v42 = v21;
  v43 = v3;
  v22 = *(v21 + 16);
  v45 = v23;
  v22(v19, v3);
  if (v5)
  {
    v24 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v25 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v45 + 32);
    v27 = v5;
    v46 = v5;
    do
    {
      if (v5 == 1)
      {
        v28 = 0;
        v29 = v47;
      }

      else
      {
        v28 = *v26;
        v29 = &v47[v28];
      }

      v30 = *v24++;
      v31 = *v25++;
      v32 = type metadata accessor for CombinerElement();
      v33 = *(v32 - 8);
      v34 = *(v33 + 64);
      MEMORY[0x1EEE9AC00](v32);
      v36 = v41 - v35;
      (*(v33 + 16))(v41 - v35, v48 + v28, v32);
      WitnessTable = swift_getWitnessTable();
      sub_18E6E9510(v36, &v49, v32, WitnessTable, v29);
      (*(v33 + 8))(v36, v32);
      v26 += 4;
      --v27;
      v5 = v46;
    }

    while (v27);
  }

  v38 = v42;
  v39 = v45;
  (*(v42 + 40))(v43, v47, v45);
  result = (*(v38 + 8))(v48, v39);
  *v44 = v49;
  return result;
}

void *sub_18E6E9510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = *a2;
  result = (*(a4 + 32))(&v12, a3, a4);
  v10 = v12;
  if (v8)
  {
    v11[1] = v8;
    if (v12)
    {
      v11[0] = v12;
      sub_18E70A628(v11, &v13);

      v8 = v13;
    }

    v10 = v8;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_18E6E95E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v106 = a3;
  v107 = a4;
  v105 = a1;
  v6 = a2[2];
  if (v6 == 1)
  {
    v7 = *(a2[3] & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(a2[5] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
    v10 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v12 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
      v13 = (a2[5] & 0xFFFFFFFFFFFFFFFELL);
      v14 = (v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = v6;
      do
      {
        v16 = *v12++;
        v17 = *v13++;
        *v14++ = type metadata accessor for CombinerElement();
        --v15;
      }

      while (v15);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v101 = *(v10 - 8);
  v18 = *(v101 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v108 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = v98 - v22;
  v117 = v6;
  v100 = a2;
  v98[3] = v23;
  if (v6 == 1)
  {
    v24 = *(a2[3] & 0xFFFFFFFFFFFFFFFELL);
    v25 = *(a2[5] & 0xFFFFFFFFFFFFFFFELL);
    type metadata accessor for CombinerElement();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    if (v6)
    {
      v28 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
      v29 = (a2[5] & 0xFFFFFFFFFFFFFFFELL);
      v30 = (v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = v117;
      do
      {
        v32 = *v28++;
        v33 = *v29++;
        type metadata accessor for CombinerElement();
        *v30++ = swift_getTupleTypeMetadata2();
        --v31;
      }

      while (v31);
    }

    v6 = v117;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
  }

  v98[2] = v98;
  v103 = *(TupleTypeMetadata2 - 8);
  v104 = TupleTypeMetadata2;
  v34 = v103[8];
  v35 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v109 = v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98[1] = v98;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v111 = v98 - v38;
  v98[0] = v98;
  MEMORY[0x1EEE9AC00](v37);
  v112 = v98 - v39;
  v40 = *(v101 + 16);
  v99 = v4;
  v102 = v10;
  v40(v110, v4, v10);
  if (v6)
  {
    v41 = (v100[3] & 0xFFFFFFFFFFFFFFFELL);
    v42 = (v100[5] & 0xFFFFFFFFFFFFFFFELL);
    v43 = (v102 + 32);
    v44 = (v104 + 32);
    v45 = v6;
    do
    {
      v116 = v44;
      if (v6 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = *v44;
      }

      v115 = v45;
      v57 = *v41;
      v58 = *v42;
      v59 = type metadata accessor for CombinerElement();
      v60 = swift_getTupleTypeMetadata2();
      if (v6 != 1)
      {
        v61 = *v43;
      }

      v114 = v98;
      v46 = &v112[v56];
      v113 = *(v60 + 48);
      v47 = *(v59 - 8);
      v48 = *(v47 + 64);
      MEMORY[0x1EEE9AC00](v60);
      v50 = v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = v43;
      v52 = *(v47 + 16);
      v52(v50, &v110[v53], v59);
      WitnessTable = swift_getWitnessTable();
      v52(v46, v50, v59);
      v55 = (*(WitnessTable + 40))(v105, v106, v107, v59, WitnessTable);
      (*(v47 + 8))(v50, v59);
      *&v46[v113] = v55;
      v43 = v51 + 4;
      v44 = (v116 + 2);
      ++v42;
      ++v41;
      v45 = v115 - 1;
      v6 = v117;
    }

    while (v115 != 1);
  }

  (*(v101 + 8))(v110, v102);
  v115 = v103[2];
  v116 = v103 + 2;
  (v115)(v111, v112, v104);
  if (v6)
  {
    v62 = (v100[3] & 0xFFFFFFFFFFFFFFFELL);
    v63 = (v100[5] & 0xFFFFFFFFFFFFFFFELL);
    v64 = (v104 + 32);
    v65 = (v102 + 32);
    v66 = v6;
    do
    {
      if (v6 == 1)
      {
        v67 = 0;
        v68 = v108;
      }

      else
      {
        v68 = &v108[*v65];
        v67 = *v64;
      }

      v69 = *v62++;
      v70 = *v63++;
      v71 = type metadata accessor for CombinerElement();
      v72 = swift_getTupleTypeMetadata2();
      v73 = *(*(v72 - 8) + 64);
      MEMORY[0x1EEE9AC00](v72);
      v75 = v98 - v74;
      (*(v76 + 16))(v98 - v74, &v111[v67]);
      (*(*(v71 - 8) + 32))(v68, v75, v71);
      v64 += 4;
      v65 += 4;
      --v66;
      v6 = v117;
    }

    while (v66);
  }

  (*(v101 + 40))(v99, v108, v102);
  v77 = v104;
  v78 = v103[1];
  ++v103;
  v114 = v78;
  v78(v111, v104);
  (v115)(v109, v112, v77);
  v79 = 0;
  if (v6)
  {
    v80 = (v100[3] & 0xFFFFFFFFFFFFFFFELL);
    v81 = (v100[5] & 0xFFFFFFFFFFFFFFFELL);
    v82 = (v77 + 32);
    v83 = v6;
    while (1)
    {
      v84 = v6 == 1 ? 0 : *v82;
      v85 = *v80;
      v86 = *v81;
      v87 = type metadata accessor for CombinerElement();
      v88 = swift_getTupleTypeMetadata2();
      v89 = *(*(v88 - 8) + 64);
      MEMORY[0x1EEE9AC00](v88);
      v91 = v98 - v90;
      result = (*(v92 + 16))(v98 - v90, &v109[v84], v88);
      v94 = *&v91[*(v88 + 48)];
      v95 = __OFADD__(v79, v94);
      v79 += v94;
      if (v95)
      {
        break;
      }

      (*(*(v87 - 8) + 8))(v91, v87);
      v82 += 4;
      ++v81;
      ++v80;
      --v83;
      v6 = v117;
      if (!v83)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    v96 = v104;
    v97 = v114;
    v114(v109, v104);
    v97(v112, v96);
    return v79;
  }

  return result;
}

uint64_t sub_18E6E9F5C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GestureOutput();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for CombinerElement.State();
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18E6EA004@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_18E6E9F5C(a1);
}

uint64_t sub_18E6EA010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6EA064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6EA0B8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6EA118@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v58 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput();
  v10 = sub_18E72B438();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v19 = *(*(v9 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v66 = &v51 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v26 = *a1;
  v63 = a1[1];
  v59 = v26;
  v27 = *(a1 + 4);
  v61 = *(a1 + 5);
  v62 = v27;
  v60 = *(a1 + 6);
  v28 = *(a2 + 36);
  v67 = v4;
  v29 = v4 + v28;
  v64 = v7;
  v65 = v8;
  v31 = v30;
  *(v29 + *(type metadata accessor for CombinerElement.State() + 36)) = 1;
  v32 = v74;
  v33 = *(v74 + 16);
  v56 = v29;
  v52 = v33;
  v33(v18, v29, v10);
  v51 = *(v31 + 48);
  v34 = v51(v18, 1, v9);
  v57 = v10;
  if (v34 == 1)
  {
    (*(v32 + 8))(v18, v10);
  }

  else
  {
    v35 = *(v31 + 32);
    v35(v25, v18, v9);
    if (GestureOutput.isFinal.getter(v9))
    {
      return (v35)(v58, v25, v9);
    }

    (*(v31 + 8))(v25, v9);
  }

  v37 = v9;
  v69 = v59;
  v70 = v63;
  v71 = v62;
  v72 = v61;
  v73 = v60;
  v38 = v66;
  v39 = v68;
  result = GestureComponent.tracingUpdate(context:)(&v69, v64, v65, v66);
  if (!v39)
  {
    if ((GestureOutput.isEmpty.getter(v9) & 1) == 0)
    {
      v42 = v53;
      sub_18E6FF508(v37, v53);
      (*(v31 + 56))(v42, 0, 1, v37);
      (*(v74 + 40))(v56, v42, v57);
      return (*(v31 + 32))(v58, v38, v37);
    }

    v40 = v54;
    v41 = v57;
    v52(v54, v56, v57);
    if (v51(v40, 1, v9) == 1)
    {
      (*(v74 + 8))(v40, v41);
      return (*(v31 + 32))(v58, v38, v37);
    }

    v43 = v58;
    (*(v31 + 32))(v55, v40, v9);
    sub_18E6FED28(v9, &v69);
    v44 = v69;
    if (v69)
    {
      v46 = *(&v70 + 1);
      v45 = v70;
      v47 = *(&v69 + 1);
    }

    else
    {
      v46 = 0;
      v45 = 0;
      v47 = MEMORY[0x1E69E7CC0];
      v44 = MEMORY[0x1E69E7CC0];
    }

    *&v69 = v44;
    *(&v69 + 1) = v47;
    *&v70 = v45;
    *(&v70 + 1) = v46;
    v48 = v43;
    v49 = v55;
    sub_18E6FF750(&v69, v37, v48);
    v50 = *(v31 + 8);
    v50(v49, v37);
    v50(v38, v37);
  }

  return result;
}

uint64_t sub_18E6EA694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CombinerElement.State();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_18E6EA70C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for CombinerElement.State();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*sub_18E6EA788(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t static Timestamp.- infix(_:_:)()
{
  sub_18E72B9B8();
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();

  return _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
}

void *DispatchTimeScheduler.__allocating_init(queue:timeSource:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_18E6EB91C(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

Swift::Double __swiftcall Duration.asTimeInterval()()
{
  v0 = sub_18E72B938();
  sub_18E72B938();
  return v1 / 1.0e18 + v0;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t Timestamp.hashValue.getter()
{
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E6EAA98()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E6EAAE4()
{
  v1 = *v0;
  v2 = v0[1];
  return _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_18E6EAAEC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E6EAB34()
{
  v1 = *v0;
  v2 = v0[1];
  return _s8Gestures9TimestampV11descriptionSSvg_0();
}

uint64_t sub_18E6EAB3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return _s8Gestures9TimestampV2eeoiySbAC_ACtFZ_0();
}

uint64_t TimeSchedulerToken.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t DispatchTimeScheduler.timestamp.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

void *DispatchTimeScheduler.init(queue:timeSource:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_18E6EB898(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v12;
}

unint64_t DispatchTimeScheduler.schedule(after:handler:cancelHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v34 = a5;
  v35 = a6;
  v33[0] = a1;
  v33[1] = a2;
  v36 = a7;
  v11 = sub_18E72AE58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - v17;
  v19 = sub_18E72AE38();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E6EB030;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v37 = MEMORY[0x1E69E7CC0];
  sub_18E6EBA44();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED70, &qword_18E72F2F0);
  sub_18E6EBA9C();
  sub_18E72B488();
  v21 = sub_18E72AE98();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_18E72AE78();

  v25 = *(v7 + 16);
  sub_18E72AE48();
  sub_18E72B938();
  sub_18E72B938();
  sub_18E72AEA8();
  v26 = *(v12 + 8);
  v26(v16, v11);
  sub_18E72B3F8();
  v26(v18, v11);
  v27 = *(v8 + 72) + 1;
  *(v8 + 72) = v27;
  v29 = v34;
  v28 = v35;
  sub_18E68CB70(v34);
  v30 = *(v8 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *(v8 + 64);
  *(v8 + 64) = 0x8000000000000000;
  result = sub_18E6B73C0(v24, v29, v28, v27, isUniquelyReferenced_nonNull_native);
  *(v8 + 64) = aBlock[0];
  *v36 = v27;
  return result;
}

uint64_t sub_18E6EB030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall DispatchTimeScheduler.cancel(token:)(Gestures::TimeSchedulerToken token)
{
  v2 = *(v1 + 64);
  if (!*(v2 + 16))
  {
    return;
  }

  v3 = sub_18E6EB33C(*token.rawValue);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = (*(v2 + 56) + 24 * v3);
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];

  sub_18E68CB70(v6);
  if (sub_18E72AE68())
  {
    goto LABEL_6;
  }

  v9 = sub_18E72AE88();
  if (v6)
  {
    v6(v9);
LABEL_6:

    sub_18E6826D0(v6);
    return;
  }
}

uint64_t DispatchTimeScheduler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t DispatchTimeScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_18E6EB1D0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_18E6EB228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return _s8Gestures9TimestampV1loiySbAC_ACtFZ_0();
}

BOOL sub_18E6EB23C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0;
}

BOOL sub_18E6EB264(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0;
}

uint64_t sub_18E6EB294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return _s8Gestures9TimestampV1loiySbAC_ACtFZ_0();
}

uint64_t static Timestamp.+= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static Timestamp.-= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_18E72B9B8();
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  result = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_18E6EB33C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  v4 = sub_18E72B8E8();
  return sub_18E687A3C(a1, v4);
}

unint64_t sub_18E6EB3A4(unsigned int a1)
{
  v3 = *(v1 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  sub_18E72B8A8();
  if ((a1 & 0xFF0000) != 0x20000)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  v4 = sub_18E72B8E8();

  return sub_18E6EB618(a1 & 0xFF01FF, v4);
}

unint64_t sub_18E6EB450(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_18E72B878();
  return sub_18E687A3C(a1, v4);
}

unint64_t sub_18E6EB48C(int *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  sub_18E72B888();
  sub_18E72B8C8();
  v5 = sub_18E72B8E8();

  return sub_18E6EB6D4(a1, v5);
}

unint64_t sub_18E6EB4FC(int a1)
{
  v3 = *(v1 + 40);
  sub_18E72B888();
  sub_18E72B8C8();
  v4 = sub_18E72B8E8();
  return sub_18E6EB74C(a1, v4);
}

unint64_t sub_18E6EB564(unsigned __int16 a1)
{
  v3 = MEMORY[0x193AD1DC0](*(v1 + 40), a1, 2);

  return sub_18E6EB7B8(a1, v3);
}

unint64_t sub_18E6EB5AC(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v4);
  v5 = sub_18E72B8E8();
  return sub_18E6EB828(a1, v5);
}

unint64_t sub_18E6EB618(unsigned int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xFF0000;
    do
    {
      v8 = (*(v2 + 48) + 3 * result);
      if (*v8 == a1 && ((v8[1] ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        v9 = v8[2];
        if (v9 == 2)
        {
          if (v7 == 0x20000)
          {
            return result;
          }
        }

        else if (v7 != 0x20000 && (HIWORD(a1) & 1) == (v9 & 1))
        {
          return result;
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB6D4(int *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    do
    {
      if (*(*(v2 + 48) + 56 * result) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB74C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB7B8(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB828(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_18E6EB898(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  a3[8] = MEMORY[0x1E69E7CC8];
  a3[9] = 0;
  a3[2] = a1;
  return a3;
}

void *sub_18E6EB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v13[6] = a4;
  v13[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13 + 3);
  (*(v9 + 32))(boxed_opaque_existential_0, v12, a4);
  v13[8] = MEMORY[0x1E69E7CC8];
  v13[9] = 0;
  v13[2] = a1;
  return v13;
}

unint64_t sub_18E6EBA44()
{
  result = qword_1EAC8ED68;
  if (!qword_1EAC8ED68)
  {
    sub_18E72AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED68);
  }

  return result;
}

unint64_t sub_18E6EBA9C()
{
  result = qword_1EAC8ED78;
  if (!qword_1EAC8ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8ED70, &qword_18E72F2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED78);
  }

  return result;
}

unint64_t sub_18E6EBB00()
{
  result = qword_1EAC8ED80;
  if (!qword_1EAC8ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED80);
  }

  return result;
}

unint64_t sub_18E6EBB58()
{
  result = qword_1EAC8ED88;
  if (!qword_1EAC8ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED88);
  }

  return result;
}

uint64_t destroy for ScheduledJob(uint64_t *a1)
{
  v2 = *a1;

  if (a1[1])
  {
    v4 = a1[2];
  }

  return result;
}

void *sub_18E6EBCCC(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  return a1;
}

void *assignWithCopy for ScheduledJob(void *a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  if (!a1[1])
  {
    if (v5)
    {
      v8 = a2[2];
      a1[1] = v5;
      a1[2] = v8;

      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v5)
  {
    v9 = a1[2];

    goto LABEL_7;
  }

  v6 = a2[2];
  v7 = a1[2];
  a1[1] = v5;
  a1[2] = v6;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *assignWithTake for ScheduledJob(void *a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  if (!a1[1])
  {
    if (v5)
    {
      v8 = a2[2];
      a1[1] = v5;
      a1[2] = v8;
      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v5)
  {
    v9 = a1[2];

    goto LABEL_7;
  }

  v6 = a2[2];
  v7 = a1[2];
  a1[1] = v5;
  a1[2] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScheduledJob(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ScheduledJob(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AnyGestureNode.debugLabel.getter()
{
  v1 = v0;
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *(v0 + 128);

    v4 = v2(v0);
    v6 = v5;
    sub_18E6826D0(v2);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v50 = sub_18E72B9C8();
    v53 = v7;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    sub_18E6A9FC4();
    v8 = sub_18E72B098();
    MEMORY[0x193AD15C0](v8);

    MEMORY[0x193AD15C0](30768, 0xE200000000000000);

    v4 = v50;
    v6 = v53;
  }

  v9 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_18E6ED4A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v4;
  *(v12 + 5) = v6;
  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = *(v1 + 24);

    MEMORY[0x193AD15C0](v14, v13);
    MEMORY[0x193AD15C0](34, 0xE100000000000000);

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    if (v16 >= v15 >> 1)
    {
      v9 = sub_18E6ED4A8((v15 > 1), v16 + 1, 1, v9);
    }

    *(v9 + 2) = v16 + 1;
    v17 = &v9[16 * v16];
    *(v17 + 4) = 34;
    *(v17 + 5) = 0xE100000000000000;
  }

  v51 = *(v1 + 16);
  v18 = sub_18E72B778();
  v20 = v19;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_18E6ED7EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_18E6ED7EC((v23 > 1), v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  v25 = &v22[4 * v24];
  v25[4] = 25705;
  v25[5] = 0xE200000000000000;
  v25[6] = v18;
  v25[7] = v20;
  sub_18E6ECCD8();
  v29 = v22[2];
  v28 = v22[3];
  if (v29 >= v28 >> 1)
  {
    v45 = v26;
    v46 = v27;
    v47 = sub_18E6ED7EC((v28 > 1), v29 + 1, 1, v22);
    v27 = v46;
    v22 = v47;
    v26 = v45;
  }

  v22[2] = v29 + 1;
  v30 = &v22[4 * v29];
  v30[4] = 0x6573616870;
  v30[5] = 0xE500000000000000;
  v30[6] = v26;
  v30[7] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v31 = sub_18E72AF58();
  v33 = v32;

  v34 = v22[2];
  if (v34)
  {
    v48 = v31;
    v49 = v33;
    sub_18E6EE308(0, v34, 0);
    v35 = v22 + 7;
    do
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      v52 = *(v35 - 3);
      v54 = *(v35 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x193AD15C0](2112800, 0xE300000000000000);
      MEMORY[0x193AD15C0](v37, v36);

      v39 = *(v21 + 16);
      v38 = *(v21 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_18E6EE308((v38 > 1), v39 + 1, 1);
      }

      *(v21 + 16) = v39 + 1;
      v40 = v21 + 16 * v39;
      *(v40 + 32) = v52;
      *(v40 + 40) = v54;
      v35 += 4;
      --v34;
    }

    while (v34);

    v33 = v49;
    v31 = v48;
  }

  else
  {
  }

  v41 = sub_18E72AF58();
  v43 = v42;

  MEMORY[0x193AD15C0](v31, v33);

  MEMORY[0x193AD15C0](8251, 0xE200000000000000);

  MEMORY[0x193AD15C0](v41, v43);

  MEMORY[0x193AD15C0](62, 0xE100000000000000);

  return 60;
}

uint64_t GestureNode.latestPhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 368);
  v4 = type metadata accessor for GesturePhase();
  v5 = sub_18E72B438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = type metadata accessor for RingBuffer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_18E67DBC8(&v18 - v13);
  sub_18E67DE08(v10, v9);
  (*(v11 + 8))(v14, v10);
  v15 = *(v4 - 8);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v4) != 1)
  {
    return (*(v15 + 32))(a1, v9, v4);
  }

  GestureNode.phase.getter(a1);
  result = (v16)(v9, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_18E6EC688()
{
  v1 = v0;
  v2 = *(*v0 + 368);
  v3 = type metadata accessor for GesturePhase();
  v4 = type metadata accessor for RingBuffer();
  v5 = sub_18E72B438();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = sub_18E72B438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = v0[3];
  v15 = v1[4];

  sub_18E6A7CBC(v14, v15, 6775156, 0xE300000000000000);

  GestureNode.phase.getter(v13);
  (*(*(v3 - 8) + 56))(v13, 0, 1, v3);
  sub_18E6C9080(v13, 0x6573616870, 0xE500000000000000, v3);
  (*(v10 + 8))(v13, v9);
  sub_18E67DBC8(v8);
  (*(*(v4 - 8) + 56))(v8, 0, 1, v4);
  sub_18E6C9080(v8, 0x50676E69646E6570, 0xED00007365736168, v4);
  (*(v37 + 8))(v8, v38);
  v16 = v1[5];

  sub_18E6A65D8(v17, 0x737469617274, 0xE600000000000000);

  GestureNode.options.getter(&v42);
  if (v42)
  {
    GestureNode.options.getter(&v42);
    sub_18E6A7E18(v42, 0, 0x736E6F6974706FLL, 0xE700000000000000);
  }

  v18 = 7104878;
  v19 = v1[19];
  v20 = v1[20];
  v21 = v1[21];

  sub_18E6A7F8C(v19, v20, v21, 0x6E6F6974616C6572, 0xE900000000000073);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v42 = sub_18E72B9C8();
    v43 = v24;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    v40 = 30768;
    v41 = 0xE200000000000000;
    v39 = v23;
    sub_18E6A9FC4();
    v25 = sub_18E72B098();
    MEMORY[0x193AD15C0](v25);

    MEMORY[0x193AD15C0](v40, v41);
    swift_unknownObjectRelease_n();

    v26 = v42;
    v27 = v43;
  }

  else
  {
    v27 = 0xE300000000000000;
    v26 = 7104878;
  }

  sub_18E6A647C(v26, v27, 0x65746167656C6564, 0xE800000000000000);

  v28 = GestureNode.container.getter();
  if (v28)
  {
    v29 = v28;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v42 = sub_18E72B9C8();
    v43 = v30;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    v40 = 30768;
    v41 = 0xE200000000000000;
    v39 = v29;
    sub_18E6A9FC4();
    v31 = sub_18E72B098();
    MEMORY[0x193AD15C0](v31);

    MEMORY[0x193AD15C0](v40, v41);
    swift_unknownObjectRelease_n();

    v18 = v42;
    v32 = v43;
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  sub_18E6A647C(v18, v32, 0x656E6961746E6F63, 0xE900000000000072);

  v33 = v1[22];

  sub_18E6A82E8(v34, 0x4564656B63617274, 0xED000073746E6576);
}

uint64_t sub_18E6ECC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6ECC84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void sub_18E6ECCD8()
{
  v1 = (*(*v0 + 312))(v44);
  v2 = v44[1];
  v3 = v45;
  v4 = v46;
  if (v44[1])
  {
    v41 = v44[2];
    v39 = v46;
    v40 = v45;
    v5 = v44[0];
    v42 = v47;
    (*(*v0 + 296))(v44, v1);
    v6 = v44[0];
    v7 = v44[1];
    v8 = sub_18E6C5B28(v44[0], v44[1]);
    v10 = v9;
    sub_18E69E818(v6, v7);
    v44[0] = v8;
    v44[1] = v10;

    MEMORY[0x193AD15C0](2128928, 0xE300000000000000);

    v12 = v44[0];
    v11 = v44[1];
    v43 = MEMORY[0x1E69E7CC0];
    sub_18E6EE308(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      goto LABEL_53;
    }

    if (v5)
    {
      v37 = v12;
      v38 = v11;
      v13 = 0;
      v14 = v41;
      while (1)
      {
        if (v2 == v13)
        {
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
          break;
        }

        v15 = v42 + v13;
        if (__OFADD__(v42, v13))
        {
          goto LABEL_49;
        }

        if (v15 == 0x8000000000000000 && v5 == -1)
        {
          goto LABEL_52;
        }

        v16 = v15 % v5;
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v16 >= *(v14 + 16))
        {
          goto LABEL_51;
        }

        v17 = v41 + 32 + 16 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        if (v19 <= 1)
        {
          if (v19)
          {
            sub_18E6AA03C(v18, 1);
            v23 = 0xE600000000000000;
            v24 = 0x657669746361;
          }

          else
          {
            strcpy(v44, "blocked(by: ");
            BYTE5(v44[1]) = 0;
            HIWORD(v44[1]) = -5120;
            sub_18E6AA03C(v18, 0);
            sub_18E6AA03C(v18, 0);
            v22 = sub_18E72B778();
            MEMORY[0x193AD15C0](v22);

            MEMORY[0x193AD15C0](41, 0xE100000000000000);
            v14 = v41;
            sub_18E69E818(v18, 0);
            v24 = v44[0];
            v23 = v44[1];
          }
        }

        else if (v19 == 2)
        {
          sub_18E6AA03C(v18, 2);
          v23 = 0xE500000000000000;
          v24 = 0x6465646E65;
        }

        else
        {
          if (v19 == 3)
          {
            v20 = v18 >> 62;
            if ((v18 >> 62) > 1)
            {
              if (v20 == 2)
              {
                v44[0] = 0;
                v44[1] = 0xE000000000000000;
                swift_getErrorValue();
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                sub_18E72B798();
                goto LABEL_27;
              }

              if (v18 <= 0xC000000000000001)
              {
                if (v18 == 0xC000000000000000)
                {
                  sub_18E6AA03C(0xC000000000000000, 3);
                  sub_18E6AA03C(0xC000000000000000, 3);
                  v27 = 0xE800000000000000;
                  v26 = 0x64656C6261736964;
                }

                else
                {
                  sub_18E6AA03C(0xC000000000000001, 3);
                  sub_18E6AA03C(0xC000000000000001, 3);
                  v26 = 0xD000000000000014;
                  v27 = 0x800000018E73A870;
                }
              }

              else if (v18 == 0xC000000000000002)
              {
                sub_18E6AA03C(0xC000000000000002, 3);
                sub_18E6AA03C(0xC000000000000002, 3);
                v26 = 0xD000000000000010;
                v27 = 0x800000018E73A850;
              }

              else if (v18 == 0xC000000000000003)
              {
                sub_18E6AA03C(0xC000000000000003, 3);
                sub_18E6AA03C(0xC000000000000003, 3);
                v27 = 0xE700000000000000;
                v26 = 0x646574726F6261;
              }

              else
              {
                sub_18E6AA03C(0xC000000000000004, 3);
                sub_18E6AA03C(0xC000000000000004, 3);
                v26 = 0xD000000000000012;
                v27 = 0x800000018E73A830;
              }
            }

            else
            {
              if (v20)
              {
                v44[0] = 0;
                v44[1] = 0xE000000000000000;
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                sub_18E72B5C8();

                v44[0] = 0xD000000000000016;
                v44[1] = 0x800000018E73A890;
                v25 = sub_18E72B778();
                MEMORY[0x193AD15C0](v25);

                MEMORY[0x193AD15C0](41, 0xE100000000000000);
              }

              else
              {
                strcpy(v44, "excluded(by: ");
                HIWORD(v44[1]) = -4864;
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                v21 = sub_18E72B778();
                MEMORY[0x193AD15C0](v21);
              }

LABEL_27:
              v26 = v44[0];
              v27 = v44[1];
            }

            v28 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v28 = v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v28)
            {
              strcpy(v44, "failed(");
              v44[1] = 0xE700000000000000;
              MEMORY[0x193AD15C0]();

              MEMORY[0x193AD15C0](41, 0xE100000000000000);
              sub_18E69E818(v18, 3);
              sub_18E69E818(v18, 3);
              v24 = v44[0];
              v23 = v44[1];
            }

            else
            {

              sub_18E69E818(v18, 3);
              sub_18E69E818(v18, 3);
              v23 = 0xE600000000000000;
              v24 = 0x64656C696166;
            }

            v14 = v41;
            goto LABEL_34;
          }

          if (v18)
          {
            sub_18E6AA03C(1uLL, 4);
            v23 = 0xE800000000000000;
            v24 = 0x656C626973736F70;
          }

          else
          {
            sub_18E6AA03C(0, 4);
            v23 = 0xE400000000000000;
            v24 = 1701602409;
          }
        }

LABEL_34:
        v30 = *(v43 + 16);
        v29 = *(v43 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_18E6EE308((v29 > 1), v30 + 1, 1);
          v14 = v41;
        }

        ++v13;
        *(v43 + 16) = v30 + 1;
        v31 = v43 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        if (v2 == v13)
        {
          v44[0] = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
          sub_18E6A9E68();
          v32 = sub_18E72AF58();
          v34 = v33;

          v44[0] = v37;
          v44[1] = v38;

          MEMORY[0x193AD15C0](v32, v34);

          sub_18E69E818(v40, v39);
          return;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(*v0 + 296))(v44, v1);
    v35 = v44[0];
    v36 = v44[1];
    sub_18E6C5B28(v44[0], v44[1]);
    sub_18E69E818(v35, v36);

    sub_18E69E818(v3, v4);
  }
}

char *sub_18E6ED4A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE18, &unk_18E732000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6ED5B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDA8, &qword_18E72F5D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_18E6ED6B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDD0, &qword_18E72F5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8DD60, &unk_18E7318B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E6ED7EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE08, &qword_18E72F620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE10, &qword_18E72F628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6ED920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED90, &unk_18E731FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EDA4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size(v12);
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
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_18E6EDB48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDC8, &qword_18E731FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EDC4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF8, &qword_18E72F610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EDD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED98, &qword_18E72F5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6EDE80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDA0, &qword_18E72F5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_18E6EDF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE00, &qword_18E72F618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EE080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF0, &qword_18E731FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EE18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDE8, &qword_18E72F608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_18E6EE2A8(void *a1, int64_t a2, char a3)
{
  result = sub_18E725BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE2C8(char *a1, int64_t a2, char a3)
{
  result = sub_18E725BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18E6EE2E8(void *a1, int64_t a2, char a3)
{
  result = sub_18E725CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE308(char *a1, int64_t a2, char a3)
{
  result = sub_18E725E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E6EE328(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

char *sub_18E6EE388(char *a1, int64_t a2, char a3)
{
  result = sub_18E726174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE3A8(char *a1, int64_t a2, char a3)
{
  result = sub_18E726280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E6EE3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDC0, &unk_18E731720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E6EE430(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E6F0738(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 4 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18E6EE4B8(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18E72B518();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_18E6EE3A8(0, v2 & ~(v2 >> 63), 0);
  v3 = v36;
  if (v31)
  {
    result = sub_18E72B4C8();
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    result = sub_18E72B498();
    v5 = *(v1 + 36);
  }

  v33 = result;
  v34 = v5;
  v35 = v31 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v29 = v1 + 56;
    v28 = v1 + 64;
    v30 = v2;
    while (v7 < v2)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_36;
      }

      v11 = v33;
      v10 = v34;
      v12 = v35;
      v13 = v1;
      v14 = *(sub_18E6F1E10(v33, v34, v35, v1) + 16);

      v36 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_18E6EE3A8((v15 > 1), v16 + 1, 1);
        v3 = v36;
      }

      *(v3 + 16) = v16 + 1;
      *(v3 + 4 * v16 + 32) = v14;
      if (v31)
      {
        if (!v12)
        {
          goto LABEL_41;
        }

        v1 = v13;
        v17 = v3;
        if (sub_18E72B4E8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE20, &unk_18E72F6E0);
        v8 = sub_18E72B2C8();
        sub_18E72B568();
        result = v8(v32, 0);
      }

      else
      {
        if (v12)
        {
          goto LABEL_42;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v17 = v3;
        v1 = v13;
        v18 = 1 << *(v13 + 32);
        if (v11 >= v18)
        {
          goto LABEL_37;
        }

        v19 = v11 >> 6;
        v20 = *(v29 + 8 * (v11 >> 6));
        if (((v20 >> v11) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(v13 + 36) != v10)
        {
          goto LABEL_39;
        }

        v21 = v20 & (-2 << (v11 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v19 << 6;
          v23 = v19 + 1;
          v24 = (v28 + 8 * v19);
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_18E6C87A0(v11, v10, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_32;
            }
          }

          result = sub_18E6C87A0(v11, v10, 0);
        }

LABEL_32:
        v27 = *(v13 + 36);
        v33 = v18;
        v34 = v27;
        v35 = 0;
        v2 = v30;
      }

      v3 = v17;
      if (v7 == v2)
      {
        sub_18E6C87A0(v33, v34, v35);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t GestureNodeCoordinator.enqueueUpdates(nodes:reason:closure:)(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = v4;
  v7 = result;
  v28 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
LABEL_17:
    result = sub_18E72B518();
    v8 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v26 = a4;
      v9 = 0;
      a4 = (v7 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          result = MEMORY[0x193AD1B60](v9, v7);
          v10 = result;
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v14 = v28;
            a4 = v26;
            goto LABEL_19;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v12 = (*(*v10 + 168))(&v27);
        if ((v27 & 1) != 0 || !(*(*v10 + 192))(v12))
        {
        }

        else
        {
          swift_unknownObjectRelease();
          sub_18E72B628();
          v13 = *(v28 + 16);
          sub_18E72B668();
          sub_18E72B678();
          result = sub_18E72B638();
        }

        ++v9;
        if (v11 == v8)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v15)
  {
    result = sub_18E72B518();
    v16 = result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_35;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x193AD1B60](i, v14);
    }

    else
    {
      v18 = *(v14 + 8 * i + 32);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if (!Strong || (v20 = Strong, swift_unknownObjectRelease(), v20 != v5))
    {
      sub_18E69F494(v18);
    }
  }

LABEL_35:
  if (v15)
  {
    result = sub_18E72B518();
    v21 = result;
    if (!result)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  v21 = *(v14 + 16);
  if (v21)
  {
LABEL_39:
    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AD1B60](j, v14);
        }

        else
        {
          v23 = *(v14 + 8 * j + 32);
        }

        v24 = swift_unknownObjectUnownedLoadStrong();
        if (v24)
        {
          v25 = v24;
          swift_unknownObjectRelease();
          if (v25 == v5)
          {
            a4(v23);
          }
        }
      }

      goto LABEL_48;
    }

LABEL_52:
    __break(1u);
    return result;
  }

LABEL_48:
}

uint64_t sub_18E6EEB00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3);
}

uint64_t sub_18E6EEB84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_18E68CB70(v3);

  return sub_18E6826D0(v8);
}

uint64_t GestureNodeCoordinator.willUpdate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18E68CB70(v1);
  return v1;
}

uint64_t GestureNodeCoordinator.willUpdate.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_18E6826D0(v3);
}

uint64_t sub_18E6EEC80@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3);
}

uint64_t sub_18E6EED04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_18E68CB70(v3);

  return sub_18E6826D0(v8);
}

uint64_t GestureNodeCoordinator.willProcessUpdateQueue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_18E68CB70(v1);
  return v1;
}

uint64_t GestureNodeCoordinator.willProcessUpdateQueue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_18E6826D0(v3);
}

uint64_t sub_18E6EEE00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6909AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3);
}

uint64_t sub_18E6EEE84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F22C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_18E68CB70(v3);

  return sub_18E6826D0(v8);
}

uint64_t GestureNodeCoordinator.didUpdate.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_18E68CB70(v1);
  return v1;
}

uint64_t GestureNodeCoordinator.didUpdate.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_18E6826D0(v3);
}

uint64_t GestureNodeCoordinator.__allocating_init(timeSource:updateDriver:shouldTrackTransitiveDependencies:)(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_18E6F2190(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t GestureNodeCoordinator.init(timeSource:updateDriver:shouldTrackTransitiveDependencies:)(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_18E6F1FD8(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t GestureNodeCoordinator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 64);
    }

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v2 = v34;
    v5 = v35;
    v6 = v36;
    v7 = v37;
    v8 = v38;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
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

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 64);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_18E687EE8();
      if ((*(v1 + 204) & 1) == 0)
      {
        v18 = *(v1 + 200);
        v19 = *(v1 + 184);
        v20 = *(v1 + 192);
        __swift_project_boxed_opaque_existential_1((v1 + 160), v19);
        (*(v20 + 16))(v18, v19, v20);
        *(v1 + 200) = 0;
        *(v1 + 204) = 1;
      }

      v21 = *(v1 + 24);
      sub_18E6826D0(*(v1 + 16));
      v22 = *(v1 + 40);
      sub_18E6826D0(*(v1 + 32));
      v23 = *(v1 + 56);
      sub_18E6826D0(*(v1 + 48));
      v24 = *(v1 + 64);

      __swift_destroy_boxed_opaque_existential_0((v1 + 72));
      v25 = *(v1 + 112);

      v26 = *(v1 + 120);

      v27 = *(v1 + 128);

      v28 = *(v1 + 136);

      v29 = *(v1 + 152);

      __swift_destroy_boxed_opaque_existential_0((v1 + 160));
      v30 = *(v1 + 208);
      v31 = *(v1 + 240);

      return v1;
    }

    while (1)
    {
      v17[18] = 0;
      swift_unknownObjectUnownedAssign();
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      (*(*v17 + 224))(v32);

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_18E72B548())
      {
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
        v17 = *&v32[0];
        v15 = v7;
        v16 = v8;
        if (*&v32[0])
        {
          continue;
        }
      }

      goto LABEL_20;
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
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureNodeCoordinator.__deallocating_deinit()
{
  GestureNodeCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 248, 7);
}

uint64_t sub_18E6EF3F8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 304))(&v13);
  v5 = v14;
  if (v14 == 255)
  {
    (*(*a1 + 296))(&v15, v4);
    v5 = v16;
    v6 = v15;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = v13;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if (v5 == 4)
  {
    v7 = v6;
    sub_18E69E818(v6, 4);
    if (v7 <= 1)
    {
      return 0;
    }
  }

  else
  {
    sub_18E69E818(v6, v5);
  }

  v8 = (*(*a2 + 304))(&v11);
  v5 = v12;
  if (v12 != 255)
  {
    v6 = v11;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:
    sub_18E69E818(v6, v5);
    return 0;
  }

  (*(*a2 + 296))(&v13, v8);
  v5 = v14;
  v6 = v13;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v5 == 4)
  {
    v9 = v6;
    sub_18E69E818(v6, 4);
    if (v9 <= 1)
    {
      return 0;
    }
  }

  else
  {
    sub_18E69E818(v6, v5);
  }

  return _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_18E6EF5C4(unsigned int *a1)
{

  sub_18E6A2C3C(a1, v1 + 26, v1);
}

void sub_18E6EF610(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E72AE18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 2)
  {
    return;
  }

  v10 = a1[2];
  v75 = a1[1];
  v76 = v10;
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = &v83;
  sub_18E68737C(&v83);
  v15 = v84;
  if (v84 == 255)
  {
    v14 = &v85;
    sub_18E687170(&v85);
    v15 = v86;
  }

  v16 = *v14;
  v17 = v15 & 0xFE;
  sub_18E69E818(v16, v15);
  if (v17 == 2)
  {
    return;
  }

  v73 = v7;
  v74 = v6;
  v18 = *(v80 + 64);
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v12;
  *(v19 + 32) = v13;
  *(v19 + 40) = a2;

  sub_18E67EEC4(v11, v12, v13);

  sub_18E6F0618(v18, sub_18E6F2360, v19, &v85);
  v20 = v85;
  v21 = v86;
  v22 = v88;
  v23 = v89;
  v78 = v90;
  v79 = v91;
  v72 = v87;
  v24 = (v87 + 64) >> 6;
  if ((v85 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v25 = sub_18E72B548();
  if (v25)
  {
    v81 = v25;
    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v26 = v82;
    v27 = v22;
    v28 = v23;
    if (v82)
    {
      while (1)
      {
        v83 = v26;
        if ((v78(&v83) & 1) == 0 || v26 == a2)
        {
          goto LABEL_26;
        }

        v31 = *(v80 + 112);
        (*(*v26 + 168))(&v83);
        if ((v83 & 4) != 0)
        {
          goto LABEL_23;
        }

        GestureNode.options.getter(&v83);
        if ((v83 & 4) != 0)
        {
          goto LABEL_23;
        }

        v71 = v31;
        v32 = (*(*v26 + 192))();
        if (!v32)
        {
          goto LABEL_26;
        }

        v34 = v32;
        v70 = v33;
        v35 = GestureNode.container.getter();
        if (v35)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_27:
        v22 = v27;
        v23 = v28;
        if (v20 < 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        v29 = v22;
        v30 = v23;
        v27 = v22;
        if (!v23)
        {
          while (1)
          {
            v27 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v27 >= v24)
            {
              goto LABEL_45;
            }

            v30 = *(v21 + 8 * v27);
            ++v29;
            if (v30)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
LABEL_47:
          v53 = qword_1EAC8E570;
          goto LABEL_51;
        }

LABEL_13:
        v28 = (v30 - 1) & v30;
        v26 = *(*(v20 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v30)))));

        if (!v26)
        {
          goto LABEL_45;
        }
      }

      v37 = v35;
      v38 = v36;
      ObjectType = swift_getObjectType();
      if (v34 == v37 || (v68 = ObjectType, v40 = swift_getObjectType(), v41 = *(v70 + 16), v69 = v38, (v41(v37, v38, a2, v40) & 1) != 0))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v31 = v71;
      }

      else
      {
        v52 = (*(v69 + 16))(v34, v70, v26, v68);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v31 = v71;
        if ((v52 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      LOBYTE(v83) = 2;
      v42 = v75;
      BYTE1(v83) = v75;
      BYTE2(v83) = v76;
      sub_18E69A038(&v83, v26, &v82);
      if (v82 == 2)
      {
        goto LABEL_26;
      }

      if (v82)
      {
        goto LABEL_26;
      }

      LOBYTE(v83) = 2;
      BYTE1(v83) = v42;
      BYTE2(v83) = v76;
      if (sub_18E69C160(&v83, v26))
      {
        goto LABEL_26;
      }

      v43 = v42 == 0;
      if (v42)
      {
        v44 = v26;
      }

      else
      {
        v44 = a2;
      }

      v45 = v31;
      if (v43)
      {
        v46 = v26;
      }

      else
      {
        v46 = a2;
      }

      v47 = *(v45 + 16);
      v71 = v45 + 16;
      v69 = *(v45 + 24);
      v70 = v47;
      v48 = *(v47 + 16);

      if (v48)
      {

        v68 = v44;
        v49 = sub_18E6879CC(v44);
        if (v50)
        {
          v51 = *(*(v70 + 56) + 8 * v49);

          v67 = sub_18E68CE2C(v46, v51);

          v44 = v68;
          if (v67)
          {
            goto LABEL_42;
          }
        }

        else
        {

          v44 = v68;
        }
      }

      sub_18E69C730(v46, v44);
LABEL_42:

LABEL_26:

      goto LABEL_27;
    }
  }

LABEL_45:
  sub_18E687EE8();

  if (sub_18E680FFC())
  {
    v24 = v73;
    a2 = v74;
    v22 = v77;
    v21 = v80;
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  v24 = v73;
  a2 = v74;
  v22 = v77;
  v21 = v80;
  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v53 = qword_1ED6F7FA0;
LABEL_51:
  v54 = __swift_project_value_buffer(a2, v53);
  (*(v24 + 16))(v22, v54, a2);

  v55 = sub_18E72ADF8();
  v56 = sub_18E72B3E8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v83 = v58;
    *v57 = 136315138;
    v59 = *(v21 + 112);
    v60 = *(v59 + 16);
    v61 = *(v59 + 24);

    v62 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v60);
    v64 = v63;

    v65 = sub_18E6C5E8C(v62, v64, &v83);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_18E67C000, v55, v56, "Updated failure deps:\n%s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x193AD25C0](v58, -1, -1);
    MEMORY[0x193AD25C0](v57, -1, -1);

    (*(v24 + 8))(v77, v74);
  }

  else
  {

    (*(v24 + 8))(v22, a2);
  }
}

uint64_t sub_18E6EFDD8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E72AE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  if (*a1 != 2)
  {
    return result;
  }

  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = result;
  v61 = a1[1];
  v14 = *a3;
  v13 = *(a3 + 8);
  v15 = *(v4 + 64);
  v16 = *(a3 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v13;
  *(v17 + 32) = v16;
  *(v17 + 40) = a2;

  sub_18E67EEC4(v14, v13, v16);
  v63 = a2;

  sub_18E6F0618(v15, sub_18E6AA018, v17, v71);
  v18 = v71[0];
  v19 = v71[1];
  v20 = v73;
  v21 = v74;
  v64 = v75;
  v65 = v76;
  v57 = v72;
  v22 = (v72 + 64) >> 6;
  v56 = xmmword_18E72D720;
  v62 = v4;
  v60 = v71[0];
  while (1)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      v23 = v20;
      v24 = v21;
      v25 = v20;
      if (!v21)
      {
        while (1)
        {
          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            goto LABEL_27;
          }

          v24 = *(v19 + 8 * v25);
          ++v23;
          if (v24)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_8:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v18 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
        break;
      }

      goto LABEL_12;
    }

    v28 = sub_18E72B548();
    if (!v28)
    {
      break;
    }

    v67 = v28;
    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v27 = v68;
    v25 = v20;
    v26 = v21;
    if (!v68)
    {
      break;
    }

LABEL_12:
    v66 = v26;
    v69 = v27;
    if ((v64(&v69) & 1) == 0 || v27 == v63)
    {
LABEL_22:

      v20 = v25;
      v21 = v66;
    }

    else
    {
      v29 = *(v4 + 112);
      if (v61)
      {
        v30 = v27;
      }

      else
      {
        v30 = v63;
      }

      if (v61)
      {
        v31 = v63;
      }

      else
      {
        v31 = v27;
      }

      if (sub_18E690224(v32, v30))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8EE28, &unk_18E72F6F0);
        inited = swift_initStackObject();
        *(inited + 16) = v56;
        v55 = v9;
        *(inited + 32) = v30;
        *(inited + 40) = v31;

        sub_18E687F10(inited);

        swift_setDeallocating();
        v9 = v55;
        v34 = sub_18E6F22C8(inited + 32);
      }

      else
      {
      }

      (*(*v27 + 296))(&v69, v34);
      v35 = v70 & 0xFE;
      sub_18E69E818(v69, v70);
      v18 = v60;
      if (v35 == 2)
      {
        v4 = v62;
        sub_18E6880B0(&v69, v27);
        goto LABEL_22;
      }

      v20 = v25;
      v21 = v66;
      v4 = v62;
    }
  }

LABEL_27:
  sub_18E687EE8();

  v36 = v63;
  sub_18E687170(&v69);
  v37 = v70 & 0xFE;
  sub_18E69E818(v69, v70);
  if (v37 == 2)
  {

    sub_18E6880B0(&v69, v36);
  }

  v38 = sub_18E680FFC();
  v22 = v58;
  v20 = v59;
  if (v38)
  {
    if (qword_1EAC8D8F8 == -1)
    {
LABEL_31:
      v39 = qword_1EAC8E570;
      goto LABEL_35;
    }

LABEL_40:
    swift_once();
    goto LABEL_31;
  }

  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED6F7FA0;
LABEL_35:
  v40 = __swift_project_value_buffer(v22, v39);
  (*(v9 + 16))(v20, v40, v22);

  v41 = sub_18E72ADF8();
  v42 = sub_18E72B3E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v4;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v69 = v45;
    *v44 = 136315138;
    v46 = *(v43 + 112);
    v47 = v9;
    v48 = *(v46 + 16);
    v49 = *(v46 + 24);

    v50 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v48);
    v52 = v51;

    v53 = sub_18E6C5E8C(v50, v52, &v69);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_18E67C000, v41, v42, "Updated failure deps:\n%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x193AD25C0](v45, -1, -1);
    MEMORY[0x193AD25C0](v44, -1, -1);

    return (*(v47 + 8))(v59, v22);
  }

  else
  {

    return (*(v9 + 8))(v20, v22);
  }
}

uint64_t sub_18E6F045C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {

      return a1;
    }

    else
    {
      return 0x656C756465686373;
    }
  }

  else
  {
    sub_18E72B5C8();

    v5 = sub_18E72B778();
    MEMORY[0x193AD15C0](v5);

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0xD000000000000015;
  }
}

uint64_t sub_18E6F0548(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = sub_18E687600(a1);
  v4 = *(v3 + 2);
  if (v4)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18E72B658();
    v5 = 32;
    do
    {
      v6 = *&v3[v5];

      sub_18E72B628();
      v7 = *(v9 + 16);
      sub_18E72B668();
      sub_18E72B678();
      sub_18E72B638();
      v5 += 16;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18E6F0618@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_18E6F0760(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v130 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v10 = *v130;
    if (!*v130)
    {
      goto LABEL_190;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_154:
      v149 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v122 = *(result + 16 * v4);
          v123 = result;
          v124 = *(result + 16 * (v4 - 1) + 40);
          sub_18E6F147C((*a3 + 8 * v122), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v124), v10);
          if (v6)
          {
          }

          if (v124 < v122)
          {
            goto LABEL_177;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_18E7290FC(v123);
          }

          if (v4 - 2 >= *(v123 + 2))
          {
            goto LABEL_178;
          }

          v125 = &v123[16 * v4];
          *v125 = v122;
          *(v125 + 1) = v124;
          v149 = v123;
          sub_18E729070(v4 - 1);
          result = v149;
          v4 = *(v149 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_188;
      }
    }

LABEL_184:
    result = sub_18E7290FC(v4);
    goto LABEL_154;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8 + 1;
    v132 = v8;
    if (v8 + 1 < v7)
    {
      v128 = v9;
      v11 = *a3;
      v4 = *(*a3 + 8 * v10);
      v12 = *(*a3 + 8 * v8);

      v141 = sub_18E6EF3F8(v4, v12);

      v10 = v8 + 2;
      if (v8 + 2 < v7)
      {
        v13 = v11 + 8 * v8 + 16;
        v139 = v7;
        while (1)
        {
          v14 = *(v13 - 8);
          v15 = *v13;
          v16 = *(**v13 + 304);
          v4 = **v13 + 304;

          v18 = v16(&v145, v17);
          v19 = v146;
          if (v146 == 255)
          {
            (*(*v15 + 296))(&v147, v18);
            v20 = v147;
            v19 = v148;
            if (!v148)
            {
LABEL_16:
              sub_18E69E818(v20, v19);
LABEL_17:

LABEL_18:
              v8 = v132;
              v7 = v139;
              if (v141)
              {
                goto LABEL_48;
              }

              goto LABEL_9;
            }
          }

          else
          {
            v20 = v145;
            v147 = v145;
            if (!v146)
            {
              goto LABEL_16;
            }
          }

          if (v19 == 4)
          {
            v4 = v20;
            sub_18E69E818(v20, 4);
            if (v4 <= 1)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_18E69E818(v20, v19);
          }

          v4 = &v143;
          v21 = (*(*v14 + 304))(&v143);
          v22 = v144;
          if (v144 == 255)
          {
            v4 = &v145;
            (*(*v14 + 296))(&v145, v21);
            v22 = v146;
          }

          v23 = *v4;
          if (!v22)
          {
            sub_18E69E818(v23, 0);
LABEL_8:

            v8 = v132;
            if (v141)
            {
              v9 = v128;
              if (v10 < v132)
              {
                goto LABEL_181;
              }

              goto LABEL_51;
            }

            goto LABEL_9;
          }

          if (v22 == 4)
          {
            v4 = *v4;
            sub_18E69E818(v23, 4);
            if (v4 <= 1)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_18E69E818(v23, v22);
          }

          v24 = (*(*v15 + 192))();
          if (v24)
          {
            v26 = v24;
            v27 = v25;
            v28 = (*(*v14 + 192))();
            if (v28)
            {
              v4 = v28;
              v30 = v29;
              ObjectType = swift_getObjectType();
              if (v26 != v4)
              {
                v35 = (*(v30 + 24))(v26, v27, v15, ObjectType, v30);

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                goto LABEL_40;
              }

              v134 = ObjectType;
              v32 = swift_getObjectType();
              v33 = (*(v27 + 8))(v15, v32, v27);
              if (v34)
              {

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
              }

              else
              {
                v36 = v33;
                v136 = (*(v30 + 8))(v14, v134);
                v38 = v37;

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                if ((v38 & 1) == 0)
                {
                  v35 = v36 < v136;
LABEL_40:
                  v8 = v132;
                  v7 = v139;
                  if ((v141 ^ v35))
                  {
                    break;
                  }

                  goto LABEL_9;
                }
              }

              goto LABEL_18;
            }

            v24 = swift_unknownObjectRelease();
          }

          v4 = (*(*v14 + 192))(v24);

          v7 = v139;
          if (v4)
          {
            result = swift_unknownObjectRelease();
            v8 = v132;
            if ((v141 & 1) == 0)
            {
              v9 = v128;
              goto LABEL_57;
            }
          }

          else
          {
            v8 = v132;
            if (v141)
            {
LABEL_48:
              v9 = v128;
              if (v10 < v8)
              {
                goto LABEL_181;
              }

              goto LABEL_51;
            }
          }

LABEL_9:
          ++v10;
          v13 += 8;
          if (v7 == v10)
          {
            v10 = v7;
            break;
          }
        }
      }

      v9 = v128;
      if (v141)
      {
        if (v10 < v8)
        {
          goto LABEL_181;
        }

LABEL_51:
        if (v8 < v10)
        {
          v39 = 8 * v10 - 8;
          v40 = 8 * v8;
          v41 = v10;
          v42 = v8;
          do
          {
            if (v42 != --v41)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v44 = *(v43 + v40);
              *(v43 + v40) = *(v43 + v39);
              *(v43 + v39) = v44;
            }

            ++v42;
            v39 -= 8;
            v40 += 8;
          }

          while (v42 < v41);
        }
      }
    }

LABEL_57:
    v45 = a3[1];
    if (v10 < v45)
    {
      if (__OFSUB__(v10, v8))
      {
        goto LABEL_180;
      }

      if (v10 - v8 < a4)
      {
        break;
      }
    }

LABEL_99:
    if (v10 < v8)
    {
      goto LABEL_179;
    }

    v75 = v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v75;
    }

    else
    {
      result = sub_18E6ED5B4(0, *(v75 + 16) + 1, 1, v75);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v76 = *(v9 + 24);
    v77 = v4 + 1;
    if (v4 >= v76 >> 1)
    {
      result = sub_18E6ED5B4((v76 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v77;
    v78 = v9 + 16 * v4;
    *(v78 + 32) = v8;
    *(v78 + 40) = v10;
    v79 = *v130;
    if (!*v130)
    {
      goto LABEL_189;
    }

    v8 = v10;
    if (v4)
    {
      while (1)
      {
        v80 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v81 = *(v9 + 32);
          v82 = *(v9 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_119:
          if (v84)
          {
            goto LABEL_168;
          }

          v97 = (v9 + 16 * v77);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_171;
          }

          v103 = (v9 + 32 + 16 * v80);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_174;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_175;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v80 = v77 - 2;
            }

            goto LABEL_140;
          }

          goto LABEL_133;
        }

        v107 = (v9 + 16 * v77);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_133:
        if (v102)
        {
          goto LABEL_170;
        }

        v110 = v9 + 16 * v80;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_173;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_140:
        v4 = v80 - 1;
        if (v80 - 1 >= v77)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        if (!*a3)
        {
          goto LABEL_186;
        }

        v118 = v9;
        v119 = *(v9 + 32 + 16 * v4);
        v120 = *(v9 + 32 + 16 * v80 + 8);
        sub_18E6F147C((*a3 + 8 * v119), (*a3 + 8 * *(v9 + 32 + 16 * v80)), (*a3 + 8 * v120), v79);
        if (v6)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_18E7290FC(v118);
        }

        if (v4 >= *(v118 + 2))
        {
          goto LABEL_165;
        }

        v121 = &v118[16 * v4];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v149 = v118;
        result = sub_18E729070(v80);
        v9 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v9 + 32 + 16 * v77;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_166;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_167;
      }

      v92 = (v9 + 16 * v77);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_169;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_172;
      }

      if (v96 >= v88)
      {
        v114 = (v9 + 32 + 16 * v80);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_176;
        }

        if (v83 < v117)
        {
          v80 = v77 - 2;
        }

        goto LABEL_140;
      }

      goto LABEL_119;
    }

LABEL_3:
    v7 = a3[1];
    if (v10 >= v7)
    {
      goto LABEL_151;
    }
  }

  v46 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_182;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v8)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  if (v10 == v46)
  {
    goto LABEL_99;
  }

  v129 = v9;
  v126 = v6;
  v140 = *a3;
  v47 = (*a3 + 8 * v10 - 8);
  v48 = v8 - v10;
  v131 = v46;
LABEL_69:
  v135 = v47;
  v137 = v10;
  v49 = *(v140 + 8 * v10);
  v133 = v48;
  v50 = v48;
  while (1)
  {
    v51 = *v47;
    v52 = *(*v49 + 304);

    v54 = &v145;
    v55 = v52(&v145, v53);
    v56 = v146;
    if (v146 == 255)
    {
      v54 = &v147;
      (*(*v49 + 296))(&v147, v55);
      v56 = v148;
    }

    v4 = *v54;
    if (v56 == 4)
    {
      sub_18E69E818(v4, 4);
      if (v4 <= 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (!v56)
      {
        goto LABEL_66;
      }

      sub_18E69E818(v4, v56);
    }

    v57 = &v143;
    v58 = (*(*v51 + 304))(&v143);
    v56 = v144;
    if (v144 == 255)
    {
      v57 = &v145;
      (*(*v51 + 296))(&v145, v58);
      v56 = v146;
    }

    v4 = *v57;
    if (v56 != 4)
    {
      if (v56)
      {
        sub_18E69E818(v4, v56);
        goto LABEL_82;
      }

LABEL_66:
      sub_18E69E818(v4, v56);
LABEL_67:

LABEL_68:
      v10 = (v137 + 1);
      v47 = v135 + 1;
      v48 = v133 - 1;
      if (v137 + 1 == v131)
      {
        v10 = v131;
        v6 = v126;
        v9 = v129;
        v8 = v132;
        goto LABEL_99;
      }

      goto LABEL_69;
    }

    sub_18E69E818(v4, 4);
    if (v4 <= 1)
    {
      goto LABEL_67;
    }

LABEL_82:
    v59 = (*(*v49 + 192))();
    if (!v59)
    {
      goto LABEL_90;
    }

    v61 = v59;
    v62 = v60;
    v142 = v50;
    v63 = (*(*v51 + 192))();
    if (!v63)
    {
      swift_unknownObjectRelease();
LABEL_90:
      v4 = (*(*v51 + 192))();

      if (!v4)
      {
        goto LABEL_68;
      }

      result = swift_unknownObjectRelease();
      goto LABEL_93;
    }

    v65 = v63;
    v66 = v64;
    v4 = swift_getObjectType();
    if (v61 != v65)
    {
      v4 = (*(v66 + 24))(v61, v62, v49, v4, v66);

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v50 = v142;
      if ((v4 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_93;
    }

    v67 = swift_getObjectType();
    v68 = (*(v62 + 8))(v49, v67, v62);
    if (v69)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_68;
    }

    v70 = v68;
    v4 = (*(v66 + 8))(v51, v4, v66);
    v72 = v71;

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v72)
    {
      goto LABEL_68;
    }

    v50 = v142;
    if (v70 >= v4)
    {
      goto LABEL_68;
    }

LABEL_93:
    if (!v140)
    {
      break;
    }

    v73 = *v47;
    v49 = v47[1];
    *v47 = v49;
    v47[1] = v73;
    --v47;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_18E6F147C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      v44 = __dst;
      memmove(a4, __dst, 8 * v12);
      __dst = v44;
    }

    v14 = &v4[8 * v12];
    if (v10 < 8 || __dst <= v6)
    {
      goto LABEL_92;
    }

LABEL_53:
    v45 = __dst - 8;
    v5 -= 8;
    v46 = v14;
    v81 = __dst - 8;
    v83 = __dst;
    while (1)
    {
      v90 = v14;
      v48 = *(v46 - 1);
      v46 -= 8;
      v47 = v48;
      v49 = *v45;
      v50 = *(*v48 + 304);

      v52 = &v86;
      v53 = v50(&v86, v51);
      v54 = v87;
      if (v87 == 255)
      {
        v52 = &v88;
        (*(*v47 + 296))(&v88, v53);
        v54 = v89;
      }

      v55 = *v52;
      v14 = v90;
      if (!v54)
      {
        break;
      }

      if (v54 == 4)
      {
        v56 = *v52;
        sub_18E69E818(v55, 4);
        if (v56 <= 1)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_18E69E818(v55, v54);
      }

      v57 = (*(*v49 + 304))(&v84);
      v54 = v85;
      if (v85 == 255)
      {
        (*(*v49 + 296))(&v86, v57);
        v54 = v87;
        v55 = v86;
        if (!v87)
        {
          break;
        }
      }

      else
      {
        v55 = v84;
        if (!v85)
        {
          break;
        }
      }

      if (v54 == 4)
      {
        v58 = v55;
        sub_18E69E818(v55, 4);
        if (v58 <= 1)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_18E69E818(v55, v54);
      }

      v59 = (*(*v47 + 192))();
      if (!v59)
      {
        goto LABEL_79;
      }

      v61 = v59;
      v78 = v60;
      v62 = (*(*v49 + 192))();
      if (!v62)
      {
        v59 = swift_unknownObjectRelease();
LABEL_79:
        v70 = (*(*v49 + 192))(v59);

        v14 = v90;
        if (v70)
        {
          swift_unknownObjectRelease();
LABEL_85:
          if (v5 + 8 != v83)
          {
            *v5 = *v81;
          }

          if (v14 <= v4 || (__dst = v81, v81 <= v6))
          {
            __dst = v81;
            goto LABEL_92;
          }

          goto LABEL_53;
        }

        goto LABEL_70;
      }

      v64 = v62;
      v65 = v63;
      ObjectType = swift_getObjectType();
      if (v61 == v64)
      {
        v75 = ObjectType;
        v67 = swift_getObjectType();
        v68 = (*(v78 + 8))(v47, v67);
        if (v69)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
        }

        else
        {
          v79 = v68;
          v76 = (*(v65 + 8))(v49, v75);
          v73 = v72;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
          if ((v73 & 1) == 0 && v79 < v76)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        v71 = (*(v65 + 24))(v61, v78, v47, ObjectType, v65);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if (v71)
        {
          goto LABEL_85;
        }
      }

LABEL_70:
      if (v5 + 8 != v14)
      {
        *v5 = *v46;
      }

      v5 -= 8;
      v14 = v46;
      v45 = v81;
      if (v46 <= v4)
      {
        v14 = v46;
        __dst = v83;
        goto LABEL_92;
      }
    }

    sub_18E69E818(v55, v54);
LABEL_69:

    goto LABEL_70;
  }

  if (a4 != __src || &__src[8 * v9] <= a4)
  {
    v13 = __dst;
    memmove(a4, __src, 8 * v9);
    __dst = v13;
  }

  v14 = &v4[8 * v9];
  if (v7 >= 8 && __dst < v5)
  {
    v90 = &v4[8 * v9];
    while (1)
    {
      v82 = __dst;
      v15 = *__dst;
      v16 = *v4;
      v17 = *(**__dst + 304);

      v19 = v17(&v86, v18);
      v20 = v87;
      if (v87 == 255)
      {
        (*(*v15 + 296))(&v88, v19);
        v20 = v89;
        v21 = v88;
        if (!v89)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = v86;
        if (!v87)
        {
          goto LABEL_26;
        }
      }

      if (v20 == 4)
      {
        v22 = v21;
        sub_18E69E818(v21, 4);
        if (v22 <= 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_18E69E818(v21, v20);
      }

      v23 = (*(*v16 + 304))(&v84);
      v20 = v85;
      if (v85 == 255)
      {
        (*(*v16 + 296))(&v86, v23);
        v20 = v87;
        v21 = v86;
        if (!v87)
        {
LABEL_26:
          sub_18E69E818(v21, v20);
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v21 = v84;
        if (!v85)
        {
          goto LABEL_26;
        }
      }

      if (v20 == 4)
      {
        v24 = v21;
        sub_18E69E818(v21, 4);
        if (v24 <= 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_18E69E818(v21, v20);
      }

      v27 = (*(*v15 + 192))();
      if (!v27)
      {
        goto LABEL_40;
      }

      v29 = v27;
      v30 = v28;
      v31 = (*(*v16 + 192))();
      if (!v31)
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      v35 = swift_getObjectType();
      if (v29 == v33)
      {
        v77 = v35;
        v36 = swift_getObjectType();
        v37 = (*(v30 + 8))(v15, v36, v30);
        if (v38)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
LABEL_28:
          v25 = v4;
          v26 = v6 == v4;
          v4 += 8;
          __dst = v82;
          if (v26)
          {
            goto LABEL_30;
          }

LABEL_29:
          *v6 = *v25;
          goto LABEL_30;
        }

        v41 = v37;
        v80 = (*(v34 + 8))(v16, v77);
        v43 = v42;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if ((v43 & 1) != 0 || v41 >= v80)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v40 = (*(v34 + 24))(v29, v30, v15, v35, v34);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if ((v40 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_46:
      v25 = v82;
      __dst = v82 + 8;
      if (v6 != v82)
      {
        goto LABEL_29;
      }

LABEL_30:
      v6 += 8;
      if (v4 >= v14 || __dst >= v5)
      {
        goto LABEL_90;
      }
    }

    v27 = swift_unknownObjectRelease();
LABEL_40:
    v39 = (*(*v16 + 192))(v27);

    v14 = v90;
    if (!v39)
    {
      goto LABEL_28;
    }

    swift_unknownObjectRelease();
    goto LABEL_46;
  }

LABEL_90:
  __dst = v6;
LABEL_92:
  if (__dst != v4 || __dst >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dst, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t (*sub_18E6F1D88(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x193AD1B60](a2, a3);
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
    *v3 = v5;
    return sub_18E6F1E08;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6F1E10(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_18E72B4F8();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_18E72B508();
      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      v6 = *(a4 + 40);
      sub_18E72B888();
      v7 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v7);
      v8 = sub_18E72B8E8();
      v9 = -1 << *(a4 + 32);
      v10 = v8 & ~v9;
      if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = ~v9;
        while (*(*(a4 + 48) + 8 * v10) != v14)
        {
          v10 = (v10 + 1) & v11;
          if (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((result & 0x8000000000000000) == 0)
    {
      v10 = 1;
      if (1 << *(a4 + 32) > result)
      {
        if ((*(a4 + 8 * (result >> 6) + 56) >> result))
        {
          if (*(a4 + 36) == a2)
          {
LABEL_20:
            v13 = *(*(a4 + 48) + 8 * result);
          }

          __break(1u);
LABEL_19:
          v12 = v10;

          result = v12;
          goto LABEL_20;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x193AD1A90](result, a2, v5);
  type metadata accessor for AnyGestureNode();
  swift_dynamicCast();
  return v14;
}

uint64_t sub_18E6F1FD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[3] = a5;
  v26[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v12 = MEMORY[0x1E69E7CD0];
  *(a4 + 48) = 0u;
  *(a4 + 64) = v12;
  *(a4 + 128) = v12;
  *(a4 + 136) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(a4 + 144) = 0;
  *(a4 + 152) = v13;
  *(a4 + 200) = 0;
  *(a4 + 204) = 1;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 208) = v13;
  *(a4 + 232) = 1;
  v14 = MEMORY[0x1E69E7CC8];
  *(a4 + 240) = MEMORY[0x1E69E7CC8];
  sub_18E69379C(v26, a4 + 72);
  sub_18E693800(a2, &v21);
  if (v22)
  {
    sub_18E689D58(&v21, &v23);
  }

  else
  {
    updated = type metadata accessor for RunLoopUpdateDriver();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = 1;
    v24 = updated;
    v25 = &off_1F01A61D0;
    *&v23 = v16;
  }

  sub_18E689D58(&v23, a4 + 160);
  type metadata accessor for FailureDependencyGraph();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v14;
  *(v17 + 32) = a3 & 1;
  *(a4 + 112) = v17;
  type metadata accessor for ExclusionPool();
  swift_allocObject();

  v19 = sub_18E6938DC(v18);
  sub_18E68B548(a2, &qword_1EAC8FA80, &unk_18E731690);
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(a4 + 120) = v19;
  return a4;
}

uint64_t sub_18E6F2190(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return sub_18E6F1FD8(v14, a2, a3, v15, a5, a6);
}

uint64_t objectdestroy_34Tm()
{
  sub_18E682A3C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E6F2370(uint64_t a1, uint64_t a2)
{
  result = sub_18E72B318();
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for CGPoint(0);
    v4 = *(a2 + 8);
    sub_18E72B148();
    return sub_18E72B308();
  }

  return result;
}

double sub_18E6F2460()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_18E6F247C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6F2514(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6F2608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6F2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_18E6F2708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6F2784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_18E6F2808(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6F290C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18E6F2AA8(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_18E6F2AB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F2B0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F2B60(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6F2BC4()
{
  result = qword_1EAC8E700;
  if (!qword_1EAC8E700)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E700);
  }

  return result;
}

uint64_t sub_18E6F2C1C(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 36));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t (*sub_18E6F2C54(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *a1 = sub_18E6F2AA8(a2);
  *(a1 + 8) = v4;
  return sub_18E6F2CA0;
}

double sub_18E6F2CCC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[4];
  v6 = *a1;
  v7 = a1[1];
  v8 = *(v5 + 8);
  v9 = *(v2[3] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v6 + v8(AssociatedTypeWitness, v5);
  *a2 = result;
  a2[1] = v7 + v12;
  return result;
}

uint64_t sub_18E6F2D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_18E72B438();
    if (v5 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6F2E38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = ~v7;
  v10 = v6 + v7;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v6 + 1;
  }

  v12 = ((v11 + v7 + ((v6 + v7) & ~v7)) & ~v7) + v6;
  v13 = v7 & 0x100000;
  if (v8 > 7 || v13 != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v8 + 16) & v9));
  }

  else
  {
    v21 = *(v5 + 16);
    v21(a1, a2, v4);
    v18 = (v3 + v10) & v9;
    v19 = ((a2 + v10) & v9);
    if ((*(v5 + 48))(v19, 1, v4))
    {
      memcpy(((v3 + v10) & v9), v19, v11);
    }

    else
    {
      v21(((v3 + v10) & v9), v19, v4);
      (*(v5 + 56))(v18, 0, 1, v4);
    }

    v21(((v18 + v8 + v11) & v9), ((v19 + v8 + v11) & v9), v4);
  }

  return v3;
}

uint64_t sub_18E6F3000(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v12 = *(v4 + 8);
  v12(a1, v3);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64) + v6;
  v8 = ~v6;
  v9 = (v7 + a1) & ~v6;
  if (!(*(v5 + 48))(v9, 1, v3))
  {
    v12(v9, v3);
  }

  v10 = v7 + v9;
  if (!*(v5 + 84))
  {
    ++v10;
  }

  return (v12)(v10 & v8, v3);
}

uint64_t sub_18E6F3130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a2) & ~v9);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    v11 = *(v6 + 84);
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 1;
    }

    memcpy(((v8 + v9 + a1) & ~v9), v10, v12);
  }

  else
  {
    v7((v8 + v9 + a1) & ~v9, v10, v5);
    (*(v6 + 56))((v8 + v9 + a1) & ~v9, 0, 1, v5);
    v11 = *(v6 + 84);
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  v7((((v8 + v9 + a1) & ~v9) + v9 + v13) & ~v9, (v10 + v9 + v13) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F32B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v20 = *(v6 + 24);
  v20(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  v13 = v12(v10, 1, v5);
  v14 = v12(v11, 1, v5);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 16))(v10, v11, v5);
      (*(v7 + 56))(v10, 0, 1, v5);
LABEL_11:
      v17 = v20;
      goto LABEL_12;
    }

    v15 = *(v7 + 84);
LABEL_6:
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v10, v11, v16);
    goto LABEL_11;
  }

  if (v14)
  {
    (*(v7 + 8))(v10, v5);
    v15 = *(v7 + 84);
    goto LABEL_6;
  }

  v17 = v20;
  v20(v10, v11, v5);
LABEL_12:
  if (*(v7 + 84))
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  v17((v10 + v9 + v18) & ~v9, (v11 + v9 + v18) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F34BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a2) & ~v9);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    v11 = *(v6 + 84);
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 1;
    }

    memcpy(((v8 + v9 + a1) & ~v9), v10, v12);
  }

  else
  {
    v7((v8 + v9 + a1) & ~v9, v10, v5);
    (*(v6 + 56))((v8 + v9 + a1) & ~v9, 0, 1, v5);
    v11 = *(v6 + 84);
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  v7((((v8 + v9 + a1) & ~v9) + v9 + v13) & ~v9, (v10 + v9 + v13) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v20 = *(v6 + 40);
  v20(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  v13 = v12(v10, 1, v5);
  v14 = v12(v11, 1, v5);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 32))(v10, v11, v5);
      (*(v7 + 56))(v10, 0, 1, v5);
LABEL_11:
      v17 = v20;
      goto LABEL_12;
    }

    v15 = *(v7 + 84);
LABEL_6:
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v10, v11, v16);
    goto LABEL_11;
  }

  if (v14)
  {
    (*(v7 + 8))(v10, v5);
    v15 = *(v7 + 84);
    goto LABEL_6;
  }

  v17 = v20;
  v20(v10, v11, v5);
LABEL_12:
  if (*(v7 + 84))
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  v17((v10 + v9 + v18) & ~v9, (v11 + v9 + v18) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F3848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = v6 + v7;
  if (v5)
  {
    v9 = v6 + v7;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v11 = ((v9 + (v8 & ~v7)) & ~v7) + v6;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v5 + (v11 | v15) + 1;
}

char *sub_18E6F39A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = v7 + v8;
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + ((v7 + v8) & ~v8)) & ~v8) + v7;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t sub_18E6F3BE8(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = a1[3];
    v6 = a1[4];
    result = type metadata accessor for ValueTracker.State();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6F3CC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = *(v7 + 64) + 1;
  }

  v12 = ((((v11 + v8) & ~v8) + v11 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v8 | *(v4 + 80) & 0xF8;
  if (v13 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v29 = ((v11 + v8) & ~v8) + v11;
    v18 = ~v8;
    (*(v4 + 16))(a1);
    v20 = ((a1 + v9) & ~v8);
    v21 = ((a2 + v9) & ~v8);
    v22 = *(v7 + 48);
    v30 = a1;
    if (v22(v21, 1, v6))
    {
      memcpy(v20, v21, v11);
    }

    else
    {
      (*(v7 + 16))(v20, v21, v6);
      (*(v7 + 56))(v20, 0, 1, v6);
    }

    v23 = &v20[v8 + v11];
    v24 = &v21[v8 + v11];
    if (v22((v24 & v18), 1, v6))
    {
      memcpy((v23 & v18), (v24 & v18), v11);
    }

    else
    {
      (*(v7 + 16))(v23 & v18, v24 & v18, v6);
      (*(v7 + 56))(v23 & v18, 0, 1, v6);
    }

    v17 = v30;
    v25 = (&v21[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
    v26 = v25[1];
    v27 = (&v20[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v27[1] = v26;
  }

  return v17;
}

uint64_t sub_18E6F3F74(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v5 + a1 + v8) & ~v8;
  v11 = *(v7 + 48);
  if (!v11(v10, 1, v6))
  {
    (*(v7 + 8))(v10, v6);
  }

  if (*(v7 + 84))
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = v10 + v8 + v12;
  if (!v11(v13 & v9, 1, v6))
  {
    (*(v7 + 8))(v13 & v9, v6);
  }

  v14 = *(((v10 + v12 + ((v12 + v8) & v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_18E6F40E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v26 = *(v8 + 48);
  v27 = a1;
  if (v26(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v8 + 16))(v12, v13, v7);
    (*(v8 + 56))(v12, 0, 1, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (!v14)
  {
    ++v15;
  }

  v17 = &v12[v9 + v15];
  v18 = &v13[v9 + v15];
  if (v26((v18 & v11), 1, v7))
  {
    memcpy((v17 & v11), (v18 & v11), v15);
  }

  else
  {
    (*(v8 + 16))(v17 & v11, v18 & v11, v7);
    (*(v8 + 56))(v17 & v11, 0, 1, v7);
  }

  v19 = ((v15 + v9) & v11) + v15;
  v20 = &v12[v19 + 7];
  v21 = (&v13[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
  v23 = *v21;
  v22 = v21[1];
  v24 = (v20 & 0xFFFFFFFFFFFFFFF8);
  *v24 = v23;
  v24[1] = v22;

  return v27;
}

uint64_t sub_18E6F42FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v31 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  LODWORD(a1) = v14(v12, 1, v7);
  v15 = v14(v13, 1, v7);
  v32 = v13;
  if (a1)
  {
    if (!v15)
    {
      (*(v8 + 16))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v30 = v12;
  v20 = &v12[v9 + v19];
  v21 = &v13[v9 + v19];
  v22 = v14((v20 & v11), 1, v7);
  v23 = v14((v21 & v11), 1, v7);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 24))(v20 & v11, v21 & v11, v7);
      goto LABEL_21;
    }

    (*(v8 + 8))(v20 & v11, v7);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v11), (v21 & v11), v19);
    goto LABEL_21;
  }

  (*(v8 + 16))(v20 & v11, v21 & v11, v7);
  (*(v8 + 56))(v20 & v11, 0, 1, v7);
LABEL_21:
  v24 = ((v19 + v9) & v11) + v19;
  v25 = (&v30[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
  v26 = (&v32[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
  v27 = v26[1];
  v28 = v25[1];
  *v25 = *v26;
  v25[1] = v27;

  return v31;
}

uint64_t sub_18E6F4600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v20 = *(v8 + 48);
  v21 = a1;
  if (v20(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v8 + 32))(v12, v13, v7);
    (*(v8 + 56))(v12, 0, 1, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (!v14)
  {
    ++v15;
  }

  v17 = &v12[v9 + v15];
  v18 = &v13[v9 + v15];
  if (v20((v18 & v11), 1, v7))
  {
    memcpy((v17 & v11), (v18 & v11), v15);
  }

  else
  {
    (*(v8 + 32))(v17 & v11, v18 & v11, v7);
    (*(v8 + 56))(v17 & v11, 0, 1, v7);
  }

  *(&v12[((v15 + v9) & v11) + 7 + v15] & 0xFFFFFFFFFFFFFFF8) = *(&v13[((v15 + v9) & v11) + 7 + v15] & 0xFFFFFFFFFFFFFFF8);
  return v21;
}

uint64_t sub_18E6F4818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v29 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  LODWORD(a1) = v14(v12, 1, v7);
  v15 = v14(v13, 1, v7);
  v30 = v13;
  if (a1)
  {
    if (!v15)
    {
      (*(v8 + 32))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v28 = v12;
  v20 = &v12[v9 + v19];
  v21 = &v13[v9 + v19];
  v22 = v14((v20 & v11), 1, v7);
  v23 = v14((v21 & v11), 1, v7);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 40))(v20 & v11, v21 & v11, v7);
      goto LABEL_21;
    }

    (*(v8 + 8))(v20 & v11, v7);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v11), (v21 & v11), v19);
    goto LABEL_21;
  }

  (*(v8 + 32))(v20 & v11, v21 & v11, v7);
  (*(v8 + 56))(v20 & v11, 0, 1, v7);
LABEL_21:
  v24 = ((v19 + v9) & v11) + v19;
  v25 = &v28[v24 + 7] & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v25 = *(&v30[v24 + 7] & 0xFFFFFFFFFFFFFFF8);

  return v29;
}

uint64_t sub_18E6F4B14(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = ((v13 + v12) & ~v12) + v13;
  if (v11 < a2)
  {
    v16 = ((v15 + (v14 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v29 = (*(v8 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v27 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

_DWORD *sub_18E6F4D34(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = ((v12 + v11) & ~v11) + v12;
  v17 = ((v16 + (v15 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((v16 + (v15 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26);
    }

    else
    {
      v27 = ((result + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_18E6F4FE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = sub_18E72B438();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6F5078(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = v7 + v8;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((v7 + v8) & ~v8) + v7 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 + 16) & v9));
  }

  else
  {
    v14 = *(v6 + 48);
    if (v14(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = a1 + v10;
    v16 = a2 + v10;
    if (v14((v16 & v9), 1, v5))
    {
      memcpy((v15 & v9), (v16 & v9), v7);
    }

    else
    {
      (*(v6 + 16))(v15 & v9, v16 & v9, v5);
      (*(v6 + 56))(v15 & v9, 0, 1, v5);
    }
  }

  return a1;
}

uint64_t sub_18E6F5250(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v10 = *(v3 - 8);
  v4 = *(v10 + 48);
  if (!v4(a1, 1, v3))
  {
    (*(v10 + 8))(a1, v3);
  }

  v5 = *(v10 + 80);
  v6 = *(v10 + 64) + a1;
  if (!*(v10 + 84))
  {
    ++v6;
  }

  v7 = v6 + v5;
  result = (v4)((v6 + v5) & ~v5, 1, v3);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v5, v3);
  }

  return result;
}

char *sub_18E6F5384(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = &a1[v11 + v12];
  v14 = &a2[v11 + v12];
  if (v7((v14 & ~v12), 1, v5))
  {
    memcpy((v13 & ~v12), (v14 & ~v12), v11);
  }

  else
  {
    (*(v6 + 16))(v13 & ~v12, v14 & ~v12, v5);
    (*(v6 + 56))(v13 & ~v12, 0, 1, v5);
  }

  return a1;
}

char *sub_18E6F5528(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = &a1[v13 + v14];
  v16 = &a2[v13 + v14];
  v17 = v7((v15 & ~v14), 1, v5);
  v18 = v7((v16 & ~v14), 1, v5);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 24))(v15 & ~v14, v16 & ~v14, v5);
      return a1;
    }

    (*(v6 + 8))(v15 & ~v14, v5);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy((v15 & ~v14), (v16 & ~v14), v13);
    return a1;
  }

  (*(v6 + 16))(v15 & ~v14, v16 & ~v14, v5);
  (*(v6 + 56))(v15 & ~v14, 0, 1, v5);
  return a1;
}

char *sub_18E6F5794(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = &a1[v11 + v12];
  v14 = &a2[v11 + v12];
  if (v7((v14 & ~v12), 1, v5))
  {
    memcpy((v13 & ~v12), (v14 & ~v12), v11);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v12, v14 & ~v12, v5);
    (*(v6 + 56))(v13 & ~v12, 0, 1, v5);
  }

  return a1;
}

char *sub_18E6F5938(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = &a1[v13 + v14];
  v16 = &a2[v13 + v14];
  v17 = v7((v15 & ~v14), 1, v5);
  v18 = v7((v16 & ~v14), 1, v5);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 40))(v15 & ~v14, v16 & ~v14, v5);
      return a1;
    }

    (*(v6 + 8))(v15 & ~v14, v5);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy((v15 & ~v14), (v16 & ~v14), v13);
    return a1;
  }

  (*(v6 + 32))(v15 & ~v14, v16 & ~v14, v5);
  (*(v6 + 56))(v15 & ~v14, 0, 1, v5);
  return a1;
}

uint64_t sub_18E6F5BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18E6F5D2C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t sub_18E6F5F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ValueTracker();
  sub_18E6F615C(a5, a6 + *(v12 + 44));
  result = (*(*(a4 - 8) + 32))(a6, a1, a4);
  v14 = (a6 + *(v12 + 48));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t sub_18E6F6028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_18E6F5F68(v8, sub_18E6F7130, v11, a1, AssociatedTypeWitness, a3);
}

uint64_t sub_18E6F615C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *(*(a1 - 8) + 56);
  (v6)((a1 - 8), a2, 1, 1, a1);
  v4 = a2 + *(type metadata accessor for ValueTracker.State() + 44);

  return v6(v4, 1, 1, a1);
}

uint64_t sub_18E6F621C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  v3 = a1[4];
  return sub_18E6F615C(a1[3], a2);
}

uint64_t sub_18E6F622C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F6280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F6300@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a3;
  v67 = a2;
  v80 = a1;
  v68 = a4;
  v7 = *(a3 + 24);
  v69 = type metadata accessor for TrackedValue();
  v66 = *(v69 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v60 - v9;
  v10 = sub_18E72B438();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v60 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v74 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v78 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v82 = *(v7 - 8);
  v24 = v82;
  v25 = v82[8];
  v26 = MEMORY[0x1EEE9AC00](v21);
  v77 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v60 - v28;
  v30 = v4 + *(v6 + 48);
  v31 = *(v30 + 8);
  (*v30)(v80);
  v73 = v6;
  v32 = (v5 + *(v6 + 44));
  v79 = v11[2];
  v80 = v11 + 2;
  v79(v23, v32, v10);
  v64 = v24;
  v72 = v24[6];
  LODWORD(v6) = v72(v23, 1, v7);
  v33 = v23;
  v34 = v11[1];
  v34(v33, v10);
  v75 = v34;
  v76 = v11 + 1;
  v71 = v24 + 6;
  if (v6 == 1)
  {
    v34(v32, v10);
    v35 = v82;
    v36 = v82[2];
    v36(v32, v29, v7);
    (v35[7])(v32, 0, 1, v7);
  }

  else
  {
    v36 = v82[2];
  }

  v63 = v29;
  v36(v77, v29, v7);
  v37 = *(v73 + 16);
  v38 = *(v73 + 32);
  v73 = *(type metadata accessor for ValueTracker.State() + 44);
  v39 = &v32[v73];
  v40 = v74;
  v41 = v10;
  v42 = v10;
  v43 = v32;
  v44 = v79;
  v79(v74, v39, v41);
  v45 = v72;
  v46 = v72(v40, 1, v7);
  v47 = v78;
  if (v46 == 1)
  {
    v48 = v62;
    v60 = v43;
    v61 = v42;
    v44(v62, v43, v42);
    result = v45(v48, 1, v7);
    if (result == 1)
    {
      goto LABEL_14;
    }

    v50 = v82;
    v62 = v82[4];
    (v62)(v78, v48, v7);
    if (v45(v40, 1, v7) == 1)
    {
      v42 = v61;
    }

    else
    {
      v53 = v61;
      v75(v40, v61);
      v42 = v53;
    }

    v51 = v60;
    v52 = v78;
  }

  else
  {
    v50 = v82;
    v62 = v82[4];
    (v62)(v78, v40, v7);
    v51 = v43;
    v52 = v47;
  }

  v54 = v50[7];
  v54(v52, 0, 1, v7);
  v55 = v70;
  v79(v70, v51, v42);
  result = v45(v55, 1, v7);
  if (result != 1)
  {
    v56 = v42;
    v57 = v65;
    sub_18E6F6974(v77, v52, v55, v7, v65);
    v58 = v73;
    v75(&v51[v73], v56);
    (v62)(&v51[v58], v63, v7);
    v54(&v51[v58], 0, 1, v7);
    memset(v81, 0, 32);
    v59 = v69;
    sub_18E6FEC1C(v57, v81, v69, v68);
    return (*(v66 + 8))(v57, v59);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18E6F6974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *(*(a4 - 8) + 32);
  v14(a5, a1, a4);
  v9 = type metadata accessor for TrackedValue();
  v10 = *(v9 + 28);
  v11 = sub_18E72B438();
  (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  v12 = a5 + *(v9 + 32);

  return (v14)(v12, a3, a4);
}

uint64_t sub_18E6F6A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for ValueTracker.State();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t sub_18E6F6B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = type metadata accessor for ValueTracker.State();
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

uint64_t sub_18E6F6B94(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6F6BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F6C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18E72B438();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v35 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v35 - v18;
  if ((sub_18E72AFB8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v36 = v11;
  v42 = a4;
  v20 = type metadata accessor for TrackedValue();
  v21 = a1;
  v37 = v20;
  v38 = a1;
  v22 = *(v20 + 28);
  v23 = *(TupleTypeMetadata2 + 48);
  v40 = v13;
  v24 = *(v13 + 16);
  v24(v19, v21 + v22, v12);
  v39 = a2;
  v24(&v19[v23], a2 + v22, v12);
  v41 = v8;
  v25 = *(v8 + 48);
  if (v25(v19, 1, a3) == 1)
  {
    if (v25(&v19[v23], 1, a3) == 1)
    {
      (*(v40 + 8))(v19, v12);
LABEL_11:
      v34 = *(v37 + 32);
      v27 = sub_18E72AFB8();
      return v27 & 1;
    }

    goto LABEL_7;
  }

  v26 = v44;
  v24(v44, v19, v12);
  if (v25(&v19[v23], 1, a3) == 1)
  {
    (*(v41 + 8))(v26, a3);
LABEL_7:
    (*(v43 + 8))(v19, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v29 = v41;
  v30 = &v19[v23];
  v31 = v36;
  (*(v41 + 32))(v36, v30, a3);
  v32 = sub_18E72AFB8();
  v33 = *(v29 + 8);
  v33(v31, a3);
  v33(v26, a3);
  (*(v40 + 8))(v19, v12);
  if (v32)
  {
    goto LABEL_11;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

double sub_18E6F70A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = v4(v5);
  v7 = *(a1 + 32);
  return v6 - (v4)(v5, a2);
}

uint64_t sub_18E6F7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, a1, AssociatedTypeWitness);
}

void sub_18E6F71BC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);

    v5 = sub_18E6F9190(v3, v1, v2, 0, 0xE000000000000000, 0, 0xE000000000000000);
    v7 = v6;

    if (qword_1EAC8D8F0 != -1)
    {
      swift_once();
    }

    v8 = sub_18E72AE18();
    __swift_project_value_buffer(v8, qword_1EAC99288);

    oslog = sub_18E72ADF8();
    v9 = sub_18E72B3D8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_18E6C5E8C(v5, v7, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_18E67C000, oslog, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AD25C0](v11, -1, -1);
      MEMORY[0x193AD25C0](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18E6F7398()
{
  if (*(v0 + 16))
  {
    *(v0 + 16) = 0;
    v1 = *(v0 + 32);
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;

    v2 = *(v0 + 40);
    *(v0 + 40) = MEMORY[0x1E69E7CC0];

    v3 = *(v0 + 48);

    v4 = MEMORY[0x1E69E7CC8];
    *(v0 + 48) = MEMORY[0x1E69E7CC8];
    v5 = *(v0 + 56);

    *(v0 + 56) = v4;
  }

  return result;
}

uint64_t GestureComponent.tracingUpdate(context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GestureOutput();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v28 = v6;
  v7 = sub_18E72B928();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - v11;
  v13 = *a1;
  v12 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v17 = a1[4];
  v16 = a1[5];
  v18 = a1[6];
  if (v16)
  {
    v27 = a4;

    sub_18E6F77F0();
    v35 = v13;
    v36 = v12;
    v37 = v15;
    v38 = v14;
    v39 = v17;
    v40 = v16;
    v41 = v18;
    v19 = v29;
    v21 = v33;
    v20 = v34;
    sub_18E72246C(&v35, v33, v34);
    sub_18E6F7A98(v19, v21, v20, &v42);
    sub_18E6F7F88(&v42);

    v22 = v30;
    v23 = v31;
    v24 = v32;
    (*(v31 + 16))(v30, v19, v32);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      swift_willThrow();

      return (*(v23 + 8))(v19, v24);
    }

    else
    {
      (*(v23 + 8))(v19, v24);

      return (*(*(v28 - 8) + 32))(v27, v22);
    }
  }

  else
  {
    v35 = *a1;
    v36 = v12;
    v37 = v15;
    v38 = v14;
    v39 = v17;
    v40 = 0;
    v41 = v18;
    return (*(v34 + 16))(&v35, v33);
  }
}