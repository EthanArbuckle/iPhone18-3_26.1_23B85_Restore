uint64_t sub_1CF07CB20(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v16 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *(v2 + 16);
  v12(&v16 - v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 12)
  {
    (v12)(v6, v11, a1);
    v14 = v6[1];
    if (v14 != 5 && v14 != 2)
    {
      v16 = *(v6 + 8);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (v12)(v9, v11, a1);
    v16 = *v9;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_8:
    v16 = 0u;
    goto LABEL_9;
  }

  (v12)(v9, v11, a1);
  v16 = *(v9 + 8);
LABEL_9:
  (*(v2 + 8))(v11, a1);
  return v16;
}

BOOL sub_1CF07CD0C(uint64_t a1)
{
  if (!sub_1CF07CD80(a1))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  if (*(v1 + *(type metadata accessor for ItemReconciliationHalf() + 36)))
  {
    return 0;
  }

  v6 = v1 + *(a1 + 52);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  return *(v6 + *(type metadata accessor for ItemReconciliationHalf() + 36)) == 0;
}

BOOL sub_1CF07CD80(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(v15 + 16))(&v21 - v17, v1, v14);
  LODWORD(v13) = (*(*(v13 - 8) + 48))(v18, 1, v13);
  (*(v15 + 8))(v18, v14);
  if (v13 == 1)
  {
    return 0;
  }

  (*(v7 + 16))(v10, v1 + *(a1 + 52), v6);
  v19 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness) != 1;
  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t sub_1CF07CFF8(void *a1)
{
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = swift_getAssociatedConformanceWitness();
  v51 = type metadata accessor for FileItemVersion();
  v52 = sub_1CF9E75D8();
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v49 - v5;
  v61 = a1;
  v6 = a1[4];
  v7 = a1[2];
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v8;
  v63 = v9;
  AssociatedConformanceWitness = v10;
  v65 = v11;
  v57 = type metadata accessor for FileItemVersion();
  v58 = sub_1CF9E75D8();
  v56 = *(v58 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - v13;
  v53 = v3;
  v54 = v2;
  v59 = swift_getAssociatedTypeWitness();
  v60 = sub_1CF9E75D8();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v17 = &v49 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = v66;
  (*(v20 + 16))(&v49 - v22, v66, v19);
  LODWORD(v18) = (*(*(v18 - 8) + 48))(v23, 1, v18);
  (*(v20 + 8))(v23, v19);
  v25 = v61;
  if (v18 == 1)
  {
    v26 = v60;
    (*(v14 + 16))(v17, v24 + *(v61 + 13), v60);
    v27 = (*(*(v59 - 8) + 48))(v17, 1);
    (*(v14 + 8))(v17, v26);
    if (v27 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v29 = v28;
      AssociatedTypeWitness = 0;
      v63 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v30 = v63;
      *v29 = AssociatedTypeWitness;
      *(v29 + 8) = v30;
      v31 = 5;
LABEL_13:
      *(v29 + 48) = v31;
      return swift_willThrow();
    }
  }

  if (*(v24 + *(v25 + 56)) == 4)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v29 = v32;
    AssociatedTypeWitness = 0;
    v63 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v33 = v63;
    *v29 = AssociatedTypeWitness;
    *(v29 + 8) = v33;
    v31 = 6;
    goto LABEL_13;
  }

  if (sub_1CF07CD80(v25))
  {
    v34 = type metadata accessor for ItemReconciliationHalf();
    v36 = v55;
    v35 = v56;
    v37 = v58;
    (*(v56 + 16))(v55, v24 + *(v34 + 48), v58);
    v38 = (*(*(v57 - 8) + 48))(v36, 1);
    (*(v35 + 8))(v36, v37);
    if (v38 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v29 = v39;
      AssociatedTypeWitness = 0;
      v63 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v40 = AssociatedTypeWitness;
      v41 = v63;
      *v29 = 0;
LABEL_12:
      *(v29 + 8) = v40;
      *(v29 + 16) = v41;
      v31 = 7;
      goto LABEL_13;
    }
  }

  result = sub_1CF07CD80(v25);
  if (result)
  {
    v43 = v24 + *(v25 + 52);
    v44 = type metadata accessor for ItemReconciliationHalf();
    v46 = v49;
    v45 = v50;
    v47 = v52;
    (*(v50 + 16))(v49, v43 + *(v44 + 48), v52);
    LODWORD(v43) = (*(*(v51 - 8) + 48))(v46, 1);
    result = (*(v45 + 8))(v46, v47);
    if (v43 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v29 = v48;
      AssociatedTypeWitness = 0;
      v63 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v40 = AssociatedTypeWitness;
      v41 = v63;
      *v29 = 1;
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1CF07D89C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  v12 = *(a5 + 32);
  v11 = *(a5 + 40);
  v59 = *(a5 + 24);
  v74 = v59;
  *&v75 = v10;
  v67 = v10;
  v58[1] = v11;
  *(&v75 + 1) = v11;
  v76 = v12;
  v66 = v12;
  v13 = type metadata accessor for ItemReconciliation();
  v69 = *(v13 - 1);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = v58 - v17;
  v18 = sub_1CF9E75D8();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v65 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v58 - v22;
  v63 = *a2;
  v24 = *a3;
  v26 = v25;
  v58[0] = v24;
  v27 = *(v25 + 16);
  v68 = a1;
  v64 = v27;
  v27(v58 - v22, a1, v18);
  v28 = *(a5 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v23, 1, a5);
  v60 = v26;
  if (v30 == 1)
  {
    (*(v26 + 8))(v23, v18);
    v31 = 0uLL;
    v32 = 89;
    v33 = v71;
  }

  else
  {
    v33 = v71;
    sub_1CF07DE7C(a4, 1, a5, &v74);
    (*(v28 + 8))(v23, a5);
    if (v33)
    {
      return v34 & 1;
    }

    v32 = v74;
    if (v74 == 89)
    {
      v31 = 0uLL;
    }

    else
    {
      v31 = v75;
    }
  }

  v74 = v32;
  v75 = v31;
  sub_1CF07DE7C(a4, 1, a5, &v72);
  if (!v33)
  {
    v35 = vdup_n_s32(v72 == 89);
    v36.i64[0] = v35.u32[0];
    v36.i64[1] = v35.u32[1];
    v71 = 0;
    v72 = v72;
    v73 = vandq_s8(v73, vcgezq_s64(vshlq_n_s64(v36, 0x3FuLL)));
    v77 = v63;
    v37 = type metadata accessor for ItemReconciliationHalf();
    LODWORD(v67) = sub_1CF07ECB8(&v74, &v72, &v77, v37);
    v38 = v65;
    v64(v65, v68, v18);
    if (v29(v38, 1, a5) == 1)
    {
      (*(v60 + 8))(v38, v18);
      v39 = 0uLL;
      v40 = 89;
      v42 = v69;
      v41 = v70;
      v43 = a4;
    }

    else
    {
      v45 = v61;
      sub_1CF07EE34(a5, v61);
      v46 = (*(v28 + 8))(v38, a5);
      v43 = a4;
      v47 = (*(*a4 + 176))(v46);
      v41 = v70;
      v48 = v71;
      sub_1CF07DE7C(v47, 1, v70, &v74);
      v71 = v48;
      if (v48)
      {
        (*(v69 + 8))(v45, v41);

        return v34 & 1;
      }

      v42 = v69;
      (*(v69 + 8))(v45, v41);

      v40 = v74;
      if (v74 == 89)
      {
        v39 = 0uLL;
      }

      else
      {
        v39 = v75;
      }
    }

    v49 = v62;
    v74 = v40;
    v75 = v39;
    v50 = sub_1CF07EE34(a5, v62);
    v51 = (*(*v43 + 176))(v50);
    v52 = v71;
    sub_1CF07DE7C(v51, 1, v41, &v72);
    (*(v42 + 8))(v49, v41);

    if (!v52)
    {
      v53 = vdup_n_s32(v72 == 89);
      v54.i64[0] = v53.u32[0];
      v54.i64[1] = v53.u32[1];
      v72 = v72;
      v73 = vandq_s8(v73, vcgezq_s64(vshlq_n_s64(v54, 0x3FuLL)));
      v77 = v58[0];
      v55 = *(a5 + 52);
      v56 = type metadata accessor for ItemReconciliationHalf();
      v57 = sub_1CF07ECB8(&v74, &v72, &v77, v56);
      v34 = v67 | v57;
    }
  }

  return v34 & 1;
}

uint64_t sub_1CF07DE7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v112 = a1;
  v119 = a4;
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v117 = a3[5];
  v118 = v8;
  v120 = v8;
  v121 = v9;
  v122 = v117;
  v123 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v114 = *(v11 - 8);
  v115 = v11;
  v12 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v107 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v107 - v17;
  if (a2)
  {
    v19 = a3;
    result = sub_1CF07CFF8(a3);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v19 = a3;
  }

  result = type metadata accessor for ItemReconciliationHalf();
  if (*(v4 + *(result + 64) + 16) == 2 || *(v4 + *(result + 52)) == 1)
  {
    goto LABEL_7;
  }

  v109 = *(v4 + *(result + 52));
  v110 = result;
  v111 = v5;
  v22 = v116;
  v23 = v4;
  (*(v116 + 16))(v18, v4, v15);
  v24 = (*(*(AssociatedTypeWitness - 8) + 48))(v18, 1, AssociatedTypeWitness);
  (*(v22 + 8))(v18, v15);
  if (v24 == 1)
  {
    v25 = v23 + *(v19 + 13);
    result = type metadata accessor for ItemReconciliationHalf();
    if (*(v25 + *(result + 36)))
    {
LABEL_11:
      if (qword_1EDEABDE0 != -1)
      {
        result = swift_once();
      }

      v26 = qword_1EDEABDE8;
      v27 = v119;
      *v119 = 2;
      v27[1] = v26;
      v27[2] = 0;
      return result;
    }

LABEL_7:
    v21 = v119;
    v119[1] = 0;
    v21[2] = 0;
    *v21 = 89;
    return result;
  }

  v116 = v19;
  v124 = *(v23 + *(v19 + 15));
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v120 = AssociatedTypeWitness;
  v121 = v28;
  v122 = AssociatedConformanceWitness;
  v123 = v30;
  type metadata accessor for ReconciliationID();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  result = sub_1CF9E7128();
  if ((result & 1) == 0)
  {
    goto LABEL_122;
  }

  v31 = v116;
  v32 = v23 + *(v116 + 52);
  result = type metadata accessor for ItemReconciliationHalf();
  v33 = *(v32 + *(result + 76));
  if ((v33 & 3) != 0)
  {
    goto LABEL_7;
  }

  v34 = *(v23 + v110[9]);
  v35 = v23;
  if ((v34 & 0x55) == 0)
  {
    v38 = v110[10];
    v39 = *(v23 + v38);
    v40 = *(v32 + *(result + 56));
    if (v40 == 4)
    {
      v41 = v109;
      if (v109 == 2)
      {
        v42 = *(v32 + *(result + 44));
        if (*(v32 + *(result + 44)))
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v45 = *(v35 + v110[14]);
      v41 = v109;
      if (v45 != 3)
      {
        if (v45 == 6 && v40 == 6)
        {
          v42 = *(v32 + *(result + 44));
        }

        else
        {
          v42 = 5;
        }

        goto LABEL_40;
      }

      if (v109 == 2)
      {
        goto LABEL_7;
      }
    }

    v42 = 0;
LABEL_40:
    v46 = 1843460;
    v118 = v35;
    if ((v39 & 0x10000000000) != 0)
    {
      v49 = *(v35 + *(v31 + 56));
      if (v49 == 4)
      {
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      if (!v41 && v49 == 2)
      {
        goto LABEL_51;
      }
    }

    if (v42 > 2)
    {
      if (v42 == 3)
      {
        if ((*(v32 + *(result + 40)) & 8) == 0 && (*(v32 + *(result + 36)) & 0x51) == 0)
        {
          goto LABEL_44;
        }

        v46 = 1843456;
        if (!v39)
        {
          if ((~v33 & 0xC) != 0)
          {
            goto LABEL_7;
          }

          v108 = v40;
          v117 = v38;
LABEL_94:
          v48 = result;
          v50 = 0;
LABEL_95:
          result = sub_1CF07CD80(v31);
          if ((result & 1) != 0 && (*(v32 + v48[9]) & 1) == 0)
          {
            v67 = v46 | 0x402;
            if ((v50 & 2) == 0)
            {
              v67 = v46;
            }

            v68 = v67 | ((v50 & 1) << 10);
            v69 = (v50 >> 4) & 1;
            if (v39 != 0x10000)
            {
              LODWORD(v69) = 1;
            }

            if (v69)
            {
              v70 = v68;
            }

            else
            {
              v70 = v68 | 0x1000;
            }

            v71 = v110;
            v72 = v118;
            if ((v39 & 0x100000000000) != 0 && !*(v118 + v110[11]))
            {
              v70 |= 0x4000uLL;
            }

            v73 = *(v118 + v110[19]);
            if ((v33 & 0xC) == 4 || (v73 & 4) != 0)
            {
              if ((v73 & 0x30) == 0)
              {
                if (qword_1EDEABDE0 != -1)
                {
                  v106 = v70;
                  result = swift_once();
                  v70 = v106;
                }

                v91 = v50 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
                if (v91)
                {
                  v92 = v119;
                  *v119 = 1;
                  v92[1] = v91;
                  v92[2] = v70;
                  return result;
                }

                goto LABEL_7;
              }

              v107 = v33 & 0xC;
              v112 = v70;
            }

            else
            {
              v112 = v70;
              v107 = v33 & 0xC;
              if (v107 == 12)
              {
                v74 = unk_1F4BEC680;
                if ((unk_1F4BEC680 & ~qword_1F4BEC678) == 0)
                {
                  v74 = 0;
                }

                v75 = qword_1F4BEC688;
                if ((qword_1F4BEC688 & ~(v74 | qword_1F4BEC678)) == 0)
                {
                  v75 = 0;
                }

                v50 |= v75 | v74 | qword_1F4BEC678;
              }
            }

            if ((v50 & 0x200000010918) != 0)
            {
              v82 = v113;
              sub_1CF07EE34(v31, v113);
              v83 = v115;
              v84 = sub_1CF07F1A0(v115);
              result = (*(v114 + 8))(v82, v83);
              v72 = v118;
              v71 = v110;
              if (v84)
              {
                if (*(v32 + v48[11]))
                {
                  if (qword_1EDEABDE0 != -1)
                  {
                    result = swift_once();
                  }

                  v85 = v50 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
                  if (!v85)
                  {
                    goto LABEL_7;
                  }

LABEL_145:
                  v86 = v119;
                  *v119 = 1;
                  v86[1] = v85;
                  v86[2] = v112;
                  return result;
                }
              }
            }

            if ((v50 & 8) == 0)
            {
LABEL_143:
              if ((v50 & 0x10) != 0)
              {
                v90 = v119;
                *v119 = xmmword_1CFA1B840;
                v90[2] = v112;
                return result;
              }

              v85 = *(v72 + v117);
              goto LABEL_145;
            }

            v87 = v112 & 0xFFFFF;
            if (v109 <= 1)
            {
              if (v109)
              {
                goto LABEL_7;
              }
            }

            else if (v109 != 3)
            {
              v88 = *(v72 + *(v31 + 56));
              if (v88 == 1)
              {
                v102 = *(v72 + v71[17] + 24) >> 60 == 11;
                goto LABEL_178;
              }

              if (v88 != 4)
              {
                if (*(v118 + v110[17] + 24) >> 60 == 11)
                {
                  v89 = &unk_1F4BEC690;
LABEL_175:
                  result = sub_1CEFF5464(v89, &v120);
                  v100 = v119;
                  v101 = v120 & v50;
                  *v119 = 23;
                  v100[1] = v101;
                  v100[2] = v87;
                  return result;
                }

                v102 = 0;
                v72 = v118;
LABEL_178:
                if (v107 == 12 && !v102)
                {
                  result = sub_1CEFF5464(&unk_1F4BEC6D0, &v120);
                  v103 = v119;
                  v104 = v120 | v39;
                  *v119 = 1;
                  v103[1] = v104;
                  v103[2] = v112;
                  return result;
                }

                goto LABEL_143;
              }

              goto LABEL_186;
            }

            if (v108 == 3)
            {
              goto LABEL_7;
            }

            v99 = *(v72 + *(v31 + 56));
            if (v99 == 1)
            {
              result = sub_1CEFF8C8C(&unk_1F4BEC730);
              v105 = v119;
              *v119 = 6;
              v105[1] = v50 & 0x10;
              v105[2] = result;
              return result;
            }

            if (v99 != 4)
            {
              v89 = &unk_1F4BEC700;
              goto LABEL_175;
            }

LABEL_187:
            __break(1u);
            return result;
          }

          result = sub_1CF07CD80(v31);
          if (result & 1) != 0 && (v76 = *(v32 + v48[9]), (v76) && (v39 & 8) == 0 && ((result = (*(*v112 + 152))(), (v76 & 0x80) == 0) || (result & 0x4000) == 0 || (v50 & 2) == 0) || (v77 = v118, v78 = *(v118 + v110[14]), v78 == 5))
          {
LABEL_122:
            v79 = v119;
            v119[1] = 0;
            v79[2] = 0;
            *v79 = 89;
            return result;
          }

          v80 = *(v118 + *(v31 + 56));
          if (v80 == 1)
          {
            result = sub_1CF07CD80(v31);
            v77 = v118;
            if (v78 != 6 && (result & 1) != 0 && !v39)
            {
              goto LABEL_7;
            }

            goto LABEL_169;
          }

          if (v80 != 4)
          {
            if ((v109 - 3) < 2)
            {
              goto LABEL_7;
            }

            if (v109)
            {
              if (*(v118 + v110[14]) || (*(v118 + v110[15]) & 1) == 0)
              {
                result = sub_1CF07CD80(v31);
                if ((result & 1) != 0 && (*(v32 + v48[13]) | 4) == 4)
                {
                  goto LABEL_122;
                }

                v77 = v118;
                if (*(v118 + v110[17] + 24) >> 60 == 11)
                {
                  if (*(v118 + v110[11]))
                  {
                    result = sub_1CEFF8C8C(&unk_1F4BEC580);
                    v96 = v119;
                    *v119 = xmmword_1CFA04E90;
                    v96[2] = result;
                    return result;
                  }

                  goto LABEL_122;
                }
              }
            }

            else if (v80 == 2)
            {
              result = sub_1CEFF8C8C(&unk_1F4BEC5C8);
              v81 = v119;
              *v119 = xmmword_1CFA04E90;
              v81[2] = result;
              return result;
            }

LABEL_169:
            v97 = *(v77 + v117);
            result = sub_1CEFF8C8C(&unk_1F4BEC610);
            v98 = v119;
            *v119 = 0;
            v98[1] = v97;
            v98[2] = result;
            return result;
          }

          goto LABEL_183;
        }

        v108 = v40;
        v117 = v38;
        goto LABEL_74;
      }

      if (v42 != 5)
      {
        v59 = unk_1F4BEC568;
        if ((unk_1F4BEC568 & ~qword_1F4BEC560) == 0)
        {
          v59 = 0;
        }

        v60 = v59 | qword_1F4BEC560;
        v62 = qword_1F4BEC570;
        v61 = unk_1F4BEC578;
        if ((qword_1F4BEC570 & ~v60) == 0)
        {
          v62 = 0;
        }

        v63 = v62 | v60;
        if ((unk_1F4BEC578 & ~v63) == 0)
        {
          v61 = 0;
        }

        v64 = v61 | v63;
        v65 = v119;
        *v119 = xmmword_1CFA04E80;
        v65[2] = v64;
        return result;
      }
    }

    else
    {
      if (!v42)
      {
LABEL_51:
        v108 = v40;
        v117 = v38;
        v48 = result;
        v50 = 24;
        goto LABEL_95;
      }

      if (v42 == 1)
      {
LABEL_44:
        v47 = *(v35 + *(v31 + 56));
        if ((v39 & 0x10000) != 0)
        {
          if (v47 != 1)
          {
            if (v47 != 4)
            {
              v66 = v119;
              *v119 = xmmword_1CFA00360;
              v66[2] = 1843456;
              return result;
            }

            goto LABEL_185;
          }
        }

        else if (v47 != 1)
        {
          v108 = v40;
          v117 = v38;
          if (v47 == 4)
          {
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v48 = result;
          v46 = 1876224;
          goto LABEL_88;
        }

        v108 = v40;
        v117 = v38;
        v48 = result;
        v46 = 1876244;
LABEL_88:
        v50 = 16;
        goto LABEL_95;
      }
    }

    v117 = v38;
    v108 = v40;
    if (v41 == 4)
    {
      goto LABEL_60;
    }

    if (!v41)
    {
      v51 = v113;
      v107 = result;
      sub_1CF07EE34(v31, v113);
      v52 = v115;
      v53 = sub_1CF07F1A0(v115);
      v54 = v51;
      v38 = v117;
      (*(v114 + 8))(v54, v52);
      v35 = v118;
      result = v107;
      if (!v53)
      {
        goto LABEL_60;
      }
    }

    if ((*(v32 + *(result + 52)) & 0xFB) != 0)
    {
      v46 = 1876224;
      if (!v39)
      {
LABEL_62:
        if ((~v33 & 0xC) != 0)
        {
          goto LABEL_7;
        }

        goto LABEL_94;
      }
    }

    else
    {
LABEL_60:
      v46 = 1876224;
      if ((v39 & 8) != 0)
      {
        v50 = v39 & 0xFFFFFFFFFFFFFFF7;
        if ((v39 & 0xFFFFFFFFFFFFFFF7) == 0)
        {
          v93 = *(v35 + v38);
          v94 = v119;
          *v119 = 1;
          v94[1] = v93;
          v94[2] = 794880;
          return result;
        }

        v48 = result;
        goto LABEL_95;
      }

      if (!v39)
      {
        goto LABEL_62;
      }
    }

LABEL_74:
    v48 = result;
    v50 = v39;
    goto LABEL_95;
  }

  if ((v34 & 0x51) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v23 + v110[9]) & 0x41) == 0x40)
  {
    if (qword_1EDEABDE0 != -1)
    {
      result = swift_once();
    }

    v36 = qword_1EDEABDE8;
    v37 = v119;
    *v119 = 12;
    v37[1] = v36;
    v37[2] = 1310976;
  }

  else
  {
    if ((*(v32 + *(result + 36)) & 0x51) != 0)
    {
      goto LABEL_11;
    }

    result = sub_1CF07CD80(v31);
    if ((v34 & 0x10) != 0)
    {
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      if (qword_1EDEABDE0 != -1)
      {
        result = swift_once();
      }

      v55 = qword_1EDEABDE8;
      v56 = unk_1F4BEC4B8;
      if ((unk_1F4BEC4B8 & ~qword_1F4BEC4B0) == 0)
      {
        v56 = 0;
      }

      v57 = v56 | qword_1F4BEC4B0;
      v58 = v119;
      *v119 = 2;
      v58[1] = v55;
      v58[2] = v57;
    }

    else
    {
      if (result)
      {
        if ((v34 & 2) != 0)
        {
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v43 = qword_1EDEABDE8;
          v44 = &unk_1F4BEC4C0;
        }

        else
        {
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v43 = qword_1EDEABDE8;
          v44 = &unk_1F4BEC500;
        }
      }

      else
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v43 = qword_1EDEABDE8;
        v44 = MEMORY[0x1E69E7CC0];
      }

      result = sub_1CEFF8C8C(v44);
      v95 = v119;
      *v119 = 2;
      v95[1] = v43;
      v95[2] = result;
    }
  }

  return result;
}

uint64_t sub_1CF07ECB8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a2;
  if (v5 == 89)
  {
    v6 = v4 + *(a4 + 64);
    v7 = *(v6 + 16);
    if (v7 <= 1)
    {
      sub_1CF03D7A8(*v6, *(v6 + 8), v7);
      result = 0;
      *v6 = xmmword_1CF9FD920;
      *(v6 + 16) = 4;
      return result;
    }

    return 0;
  }

  v9 = *a1;
  v10 = *(a2 + 2);
  if (v9 != 89 && qword_1CFA1C4B0[v5] == qword_1CFA1C4B0[v9])
  {
    v11 = *(a1 + 2);
    v12 = *a3;
    v13 = v4 + *(a4 + 64);
    if (*(v13 + 16) == 1)
    {
      v15 = (v10 & v11) == 0;
    }

    else
    {
      v14 = *(a2 + 2);
      if (*(v13 + 16))
      {
        goto LABEL_13;
      }

      v11 &= ~*v13;
      v15 = (v11 & v10) == 0;
    }

    v16 = v10 & ~v11;
    if (v15)
    {
      v14 = *(a2 + 2);
    }

    else
    {
      v14 = v16;
    }

LABEL_13:
    v17 = (v10 & 2) == 0 || (*a3 & 2) == 0;
    v18 = v14 | 2;
    if (v17)
    {
      v18 = v14;
    }

    if ((v10 & 0x400) == 0 || (*a3 & 3) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v18 | 0x400;
    }
  }

  v20 = v4 + *(a4 + 64);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      return 0;
    }

    if (v23 != 3)
    {
      if (v10)
      {
LABEL_28:
        *v20 = v10;
        *(v20 + 8) = 0;
        result = 1;
        *(v20 + 16) = 0;
        return result;
      }

      goto LABEL_34;
    }

LABEL_33:
    sub_1CF03D7A8(v21, v22, v23);
    if (v10)
    {
      goto LABEL_28;
    }

LABEL_34:
    *v20 = 0;
    *(v20 + 8) = 0;
    result = 1;
    *(v20 + 16) = 1;
    return result;
  }

  if (*(v20 + 16))
  {
    goto LABEL_33;
  }

  sub_1CF03D7A8(v21, v22, 0);
  result = 0;
  if (v10)
  {
    *v20 = v10;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
  }

  else
  {
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
  }

  return result;
}

uint64_t sub_1CF07EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ItemReconciliationHalf();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  v33 = v32 - v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 24);
  v14 = type metadata accessor for ItemReconciliationHalf();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v34 = v32 - v16;
  v17 = *(a1 + 52);
  (*(v18 + 16))();
  (*(v8 + 16))(v11, v3, v7);
  v19 = *(a1 + 60);
  v44[0] = *(v3 + *(a1 + 56));
  v32[0] = *(v3 + v19);
  *&v20 = v6;
  *(&v20 + 1) = v13;
  v43 = v32[0];
  *&v21 = v5;
  *(&v21 + 1) = v12;
  v37 = v20;
  v38 = v21;
  v32[2] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[1] = v12;
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();

  v39 = AssociatedTypeWitness;
  v40 = v23;
  v41 = AssociatedConformanceWitness;
  v42 = v25;
  type metadata accessor for ReconciliationID();
  v26 = sub_1CF9E6E58();
  v39 = v23;
  v40 = AssociatedTypeWitness;
  v41 = v25;
  v42 = AssociatedConformanceWitness;
  v27 = type metadata accessor for ReconciliationID();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1CF054A5C(sub_1CF95EA1C, v36, v26, v27, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);

  return sub_1CF023FF0(v34, v33, v44, v30, *(v3 + *(a1 + 64)), *(v3 + *(a1 + 64) + 8), *(v3 + *(a1 + 68)), *(v3 + *(a1 + 72)), v35, *(v3 + *(a1 + 76)), *(v3 + *(a1 + 80)));
}

BOOL sub_1CF07F1A0(uint64_t a1)
{
  if (!sub_1CF07CD80(a1))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  if (*(v1 + *(type metadata accessor for ItemReconciliationHalf() + 68) + 24) >> 60 == 11)
  {
    return 0;
  }

  v6 = v1 + *(a1 + 52);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  return *(v6 + *(type metadata accessor for ItemReconciliationHalf() + 52)) == 0;
}

uint64_t sub_1CF07F238()
{
  v1 = *(*v0 + 112);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  v2 = type metadata accessor for ItemReconciliation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1CF07F2E4()
{
  sub_1CF07F238();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF07F368(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  sub_1CF07F38C(a2, *a1, a3, a5);
}

void sub_1CF07F38C(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 0x1Eu)
  {
    if (a2 != 28 && a2 != 29)
    {
      if (a2 == 30)
      {
        a4[3] = &type metadata for Filename;
        v8 = [a1 stringAtIndex_];
        v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v11 = v10;

        *a4 = v9;
        a4[1] = v11;
        return;
      }

      goto LABEL_14;
    }

LABEL_17:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = *(swift_getAssociatedConformanceWitness() + 8);
    v16 = *(v15 + 16);
    a4[3] = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(a4);
    v16(a1, a3, AssociatedTypeWitness, v15);
    if (v4)
    {
      __swift_deallocate_boxed_opaque_existential_0(a4);
    }

    return;
  }

  if (a2 > 0x20u)
  {
    if (a2 != 33 && a2 != 34)
    {
LABEL_14:
      sub_1CF07F730(a2, a1, a3, a4);
      return;
    }

    goto LABEL_17;
  }

  if (a2 != 31)
  {
    if (a2 == 32)
    {
      v7 = [a1 unsignedIntAtIndex_];
      a4[3] = MEMORY[0x1E69E7668];
      *a4 = v7;
      return;
    }

    goto LABEL_14;
  }

  v12 = [a1 longLongAtIndex_];
  a4[3] = MEMORY[0x1E69E76D8];
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = v12;
  }
}

uint64_t sub_1CF07F5FC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF07F640(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF07F640(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0x1Eu)
  {
    switch(a2)
    {
      case 0x1Cu:
        v2 = 0;
        return MEMORY[0x1D386A470](v2);
      case 0x1Du:
        v2 = 1;
        return MEMORY[0x1D386A470](v2);
      case 0x1Eu:
        v2 = 2;
        return MEMORY[0x1D386A470](v2);
    }
  }

  else if (a2 > 0x20u)
  {
    if (a2 == 33)
    {
      v2 = 6;
      return MEMORY[0x1D386A470](v2);
    }

    if (a2 == 34)
    {
      v2 = 7;
      return MEMORY[0x1D386A470](v2);
    }
  }

  else
  {
    if (a2 == 31)
    {
      v2 = 4;
      return MEMORY[0x1D386A470](v2);
    }

    if (a2 == 32)
    {
      v2 = 5;
      return MEMORY[0x1D386A470](v2);
    }
  }

  MEMORY[0x1D386A470](3);
  sub_1CF07FC44(a2);
  sub_1CF9E69C8();
}

void sub_1CF07F730(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
    case 3:
    case 10:
    case 11:
    case 12:
    case 17:
    case 18:
    case 21:
    case 22:
    case 27:
      v15 = [a2 BOOLAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6370];
      *a4 = v15;
      return;
    case 2:
    case 15:
      v20 = [a2 longLongAtIndex_];
      v21 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    case 4:
      v35 = [a2 intAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E75F8];
      if ((v35 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0x1CF07FBD4);
      }

      if (HIWORD(v35))
      {
        goto LABEL_37;
      }

      *a4 = v35;
      return;
    case 5:
    case 6:
    case 7:
      v17 = v12;
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v18 = [a2 dateAtIndex_];
      sub_1CF9E5CB8();

      *(a4 + 24) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      (*(v10 + 32))(boxed_opaque_existential_0, v14, v17);
      return;
    case 8:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v20 = sub_1CF1E02D0(a3);
      if (v4)
      {
        return;
      }

      v21 = &type metadata for Tags;
LABEL_22:
      *(a4 + 24) = v21;
      *a4 = v20;
      return;
    case 9:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v20 = [a2 unsignedLongLongAtIndex_];
      v21 = MEMORY[0x1E69E76D8];
      goto LABEL_22;
    case 13:
    case 16:
    case 25:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v16 = [a2 unsignedIntAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E7668];
      *a4 = v16;
      return;
    case 14:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v26 = sub_1CF1E0144(a3);
      if (!v4)
      {
        v27 = v26;
        *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
        *a4 = v27;
      }

      return;
    case 19:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v28 = [a2 stringAtIndex_];
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v30;

      v32 = &type metadata for Filename;
      goto LABEL_34;
    case 20:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v37 = [a2 dataAtIndex_];
      v29 = sub_1CF9E5B88();
      v31 = v38;

      v32 = MEMORY[0x1E6969080];
      goto LABEL_34;
    case 23:
      v36 = [a2 longLongAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E76D8];
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      *a4 = v36;
      return;
    case 24:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v22 = [a2 unsignedLongLongAtIndex_];
      v23 = v22;
      v24 = HIDWORD(v22);
      type metadata accessor for NSFileProviderTypeAndCreator(0);
      *(a4 + 24) = v25;
      *a4 = v24;
      *(a4 + 4) = v23;
      return;
    case 26:
      if ([a2 isNullAtIndex_])
      {
LABEL_31:
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        v33 = [a2 stringAtIndex_];
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v34;

        v32 = MEMORY[0x1E69E6158];
LABEL_34:
        *(a4 + 24) = v32;
        *a4 = v29;
        *(a4 + 8) = v31;
      }

      return;
    default:
      *(a4 + 24) = &type metadata for FileItemKind;
      sub_1CEFEC210(a3, a4);
      if (v4)
      {
        __swift_deallocate_boxed_opaque_existential_0(a4);
      }

      return;
  }
}

unint64_t sub_1CF07FC44(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6C617461645F7369;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x656B636F6C5F7369;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E6F697461657263;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x6573755F7473616CLL;
      break;
    case 8:
      result = 0x617461645F676174;
      break;
    case 9:
      result = 0x657469726F766166;
      break;
    case 10:
      result = 0x616B6361705F7369;
      break;
    case 11:
      result = 0x65646469685F7369;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
    case 18:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6C61636973796870;
      break;
    case 16:
      result = 0x74636976655F7369;
      break;
    case 17:
      result = 0x656E6E69705F7369;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x69746E6172617571;
      break;
    case 21:
      result = 0x72636E79735F7369;
      break;
    case 22:
      result = 0x726F6E67695F7369;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x657079745F736FLL;
      break;
    case 25:
      result = 0x756F635F6B6E696CLL;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF07FFF4(unsigned __int8 a1, char a2)
{
  if (a1 <= 0x1Eu)
  {
    if (a1 == 28)
    {
      return a2 == 28;
    }

    if (a1 == 29)
    {
      return a2 == 29;
    }

    if (a1 != 30)
    {
      goto LABEL_18;
    }

    return a2 == 30;
  }

  if (a1 <= 0x20u)
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return a2 == 32;
      }

      goto LABEL_18;
    }

    return a2 == 31;
  }

  if (a1 == 33)
  {
    return a2 == 33;
  }

  if (a1 == 34)
  {
    return a2 == 34;
  }

LABEL_18:
  if ((a2 - 28) < 7u)
  {
    return 0;
  }

  v3 = sub_1CF07FC44(a1);
  v5 = v4;
  if (v3 == sub_1CF07FC44(a2) && v5 == v6)
  {

    return 1;
  }

  else
  {
    v8 = sub_1CF9E8048();

    return v8 & 1;
  }
}

uint64_t sub_1CF08016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v123 = a1;
  v94 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v127 = AssociatedTypeWitness;
  *(&v127 + 1) = v11;
  v100 = swift_getAssociatedConformanceWitness();
  v101 = AssociatedConformanceWitness;
  *&v128 = AssociatedConformanceWitness;
  *(&v128 + 1) = v100;
  v13 = type metadata accessor for FileItemVersion();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v117 = v93 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v106 = *(v16 - 8);
  v17 = *(v106 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v104 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v107 = v93 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v110 = v93 - v22;
  v93[1] = a4;
  v95 = a2;
  v23 = swift_getAssociatedConformanceWitness();
  v112 = v16;
  v103 = v23;
  v113 = type metadata accessor for ItemStateVersion();
  v24 = *(*(v113 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v113);
  v102 = v93 - v26;
  v119 = v11;
  v114 = *(v11 - 8);
  v27 = *(v114 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v99 = v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = v93 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v109 = v93 - v33;
  v118 = AssociatedTypeWitness;
  v111 = *(AssociatedTypeWitness - 8);
  v34 = *(v111 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v98 = v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v115 = v93 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v116 = v93 - v39;
  v121 = sub_1CF080DBC();
  *&v127 = &_s9SQLFieldsON;
  v40 = a3;
  *(&v127 + 1) = a3;
  *&v128 = v121;
  *(&v128 + 1) = a5;
  v41 = type metadata accessor for SQLCodableAccessorWrapper();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = v93 - v44;
  v105 = type metadata accessor for ItemMetadata();
  v46 = *(*(v105 - 1) + 64);
  v47 = MEMORY[0x1EEE9AC00](v105);
  v49 = v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = v93 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v93 - v53;
  v120 = v40;
  sub_1CF021034(sub_1CEFED338, 0, v40, &_s9SQLFieldsON, a5, v121, v45);
  WitnessTable = swift_getWitnessTable();
  v56 = v122;
  sub_1CF080E10(v45, v41, WitnessTable, v54);
  if (v56)
  {
    return (*(v42 + 8))(v45, v41);
  }

  v93[0] = v49;
  v121 = v54;
  v122 = a5;
  v58 = v119;
  (*(v42 + 8))(v45, v41);
  v59 = v118;
  if (swift_dynamicCastMetatype())
  {
    LOBYTE(v143[0]) = 31;
    v60 = v120;
    v61 = v122;
    sub_1CF0230B4(v143, MEMORY[0x1E69E76D8], v120, MEMORY[0x1E69E76D8], v122);
    v65 = v60;
    v66 = *&v124[0];
    LOBYTE(v126[0]) = 32;
    sub_1CF0230B4(v126, MEMORY[0x1E69E7668], v65, MEMORY[0x1E69E7668], v61);
    v67 = v143[0];
    v68 = v52;
    sub_1CEFF4408(v121, v52);
    v69 = *v52;
    if (v69 == 1)
    {
      v70 = 0;
      v71 = 0;
    }

    else
    {
      v71 = 0;
      v70 = 0;
      if (v69 != 2)
      {
        v77 = v67;
        v72 = 1;
        if (!*(v68 + v105[20]))
        {
          if (*(v68 + v105[28]))
          {
            v70 = 0;
          }

          else
          {
            v72 = 0;
            v70 = *(v68 + v105[26]);
          }

          v71 = v77;
        }

        goto LABEL_9;
      }
    }

    v72 = 1;
LABEL_9:
    sub_1CF06DA00(v68);
    *&v127 = v66;
    DWORD2(v127) = v71;
    *&v128 = v70;
    BYTE8(v128) = v72;
    swift_dynamicCast();
    v64 = v111;
    v63 = v117;
    goto LABEL_10;
  }

  LOBYTE(v127) = 33;
  v62 = v115;
  sub_1CF0230B4(&v127, v59, v120, v59, v122);
  v63 = v117;
  v64 = v111;
  (*(v111 + 32))(v116, v62, v59);
LABEL_10:
  v73 = v114;
  if (swift_dynamicCastMetatype())
  {
    LOBYTE(v127) = 29;
    v74 = v120;
    v75 = v122;
    sub_1CF0230B4(&v127, v112, v120, v112, v122);
    LOBYTE(v124[0]) = 30;
    sub_1CF0230B4(v124, &type metadata for Filename, v74, &type metadata for Filename, v75);
    v115 = 0;
    v124[0] = v127;
    v78 = v112;
    ItemStateVersion.init(parentID:filename:)(v110, v124, v112, v102);
    swift_dynamicCast();
  }

  else
  {
    LOBYTE(v127) = 34;
    v76 = v108;
    sub_1CF0230B4(&v127, v58, v120, v58, v122);
    v115 = 0;
    (*(v73 + 32))(v109, v76, v58);
    v78 = v112;
    v63 = v117;
  }

  LOBYTE(v127) = 28;
  v79 = v120;
  v80 = v122;
  v81 = v115;
  sub_1CF0230B4(&v127, v78, v120, v78, v122);
  if (v81)
  {
    sub_1CF06DA00(v121);
    (*(v114 + 8))(v109, v119);
    return (*(v64 + 8))(v116, v59);
  }

  else
  {
    LOBYTE(v127) = 29;
    sub_1CF0230B4(&v127, v78, v79, v78, v80);
    v82 = v119;
    v83 = *(v64 + 16);
    v115 = 0;
    v84 = v98;
    v83(v98, v116, v59);
    v85 = v99;
    (*(v114 + 16))(v99, v109, v82);
    sub_1CF023878(v84, 0, v85, 0, 0, 0, v59, v82, v63);
    v144 = 30;
    v86 = v115;
    sub_1CF0230B4(&v144, &type metadata for Filename, v120, &type metadata for Filename, v80);
    v87 = v106;
    if (v86)
    {
      (*(v96 + 8))(v63, v97);
      v88 = *(v87 + 8);
      v89 = v112;
      v88(v104, v112);
      v88(v107, v89);
      v90 = v121;
    }

    else
    {
      v126[0] = v143[0];
      v126[1] = v143[1];
      v91 = v121;
      v92 = v93[0];
      sub_1CEFF4408(v121, v93[0]);
      sub_1CEFE528C(&v127);
      v124[12] = v139;
      v124[13] = v140;
      v124[14] = v141;
      v125 = v142;
      v124[8] = v135;
      v124[9] = v136;
      v124[10] = v137;
      v124[11] = v138;
      v124[4] = v131;
      v124[5] = v132;
      v124[6] = v133;
      v124[7] = v134;
      v124[0] = v127;
      v124[1] = v128;
      v124[2] = v129;
      v124[3] = v130;
      sub_1CF082390(v107, v104, v63, v126, v92, v124, v94);
      v90 = v91;
    }

    sub_1CF06DA00(v90);
    (*(v114 + 8))(v109, v82);
    return (*(v64 + 8))(v116, v59);
  }
}

unint64_t sub_1CF080DBC()
{
  result = qword_1EDEAE330;
  if (!qword_1EDEAE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE330);
  }

  return result;
}

uint64_t sub_1CF080E10@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v154 = a1;
  v147 = a4;
  v151 = sub_1CF9E5CF8();
  v150 = *(v151 - 8);
  v6 = *(v150 + 64);
  v7 = MEMORY[0x1EEE9AC00](v151);
  v149 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v109 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v152 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v152);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v109 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v109 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v109 - v23;
  LOBYTE(v161[0]) = 16;
  v25 = MEMORY[0x1E69E7668];
  sub_1CF0230AC(a2, MEMORY[0x1E69E7668]);
  v26 = v153;
  result = sub_1CF0230B4(v161, v25, a2, v25, a3);
  if (v26)
  {
    return result;
  }

  v145 = a2;
  v146 = a3;
  v141 = v16;
  v142 = v13;
  v143 = v19;
  v153 = v22;
  v144 = v24;
  LOWORD(a3) = v170[0];
  if (LODWORD(v170[0]) >= 0x10000)
  {
    v28 = v146;
    v29 = v145;
    if (HIBYTE(LODWORD(v170[0])))
    {
      __break(1u);
      goto LABEL_12;
    }

    ResidencyReason.init(rawValue:)(BYTE2(v170[0]));
    LOBYTE(v19) = v161[0];
  }

  else
  {
    LOBYTE(v19) = 6;
    v28 = v146;
    v29 = v145;
  }

  EvictionUrgency.init(rawValue:)(a3);
  if (LOBYTE(v161[0]) == 6)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    LOBYTE(v16) = v161[0];
  }

  LOBYTE(v170[0]) = 0;
  sub_1CF0230AC(v29, &type metadata for FileItemKind);
  sub_1CF0230B4(v170, &type metadata for FileItemKind, v29, &type metadata for FileItemKind, v28);
  v30 = v179;
  LOBYTE(v161[0]) = 2;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6530], v29, MEMORY[0x1E69E6530], v28);
  v140 = v30;
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v32 = sub_1CF9E8198();

  LOBYTE(v161[0]) = 15;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6530], v29, MEMORY[0x1E69E6530], v28);
  v139 = v32;
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v34 = sub_1CF9E8198();

  LOBYTE(v170[0]) = 13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
  sub_1CF0230AC(v29, v35);
  sub_1CF0230B4(v170, v35, v29, v35, v28);
  v136 = v35;
  v137 = v34;
  v138 = v175;
  LODWORD(v34) = v176;
  LOBYTE(v170[0]) = 4;
  v36 = MEMORY[0x1E69E75F8];
  sub_1CF0230AC(v29, MEMORY[0x1E69E75F8]);
  sub_1CF0230B4(v170, v36, v29, v36, v28);
  v134 = v34;
  v135 = v174;
  LOBYTE(v170[0]) = 5;
  v37 = v152;
  a2 = 0;
  sub_1CF0230AC(v29, v152);
  sub_1CF0230B4(v170, v37, v29, v37, v28);
  LOBYTE(v170[0]) = 6;
  sub_1CF0230B4(v170, v37, v29, v37, v28);
  LOBYTE(v170[0]) = 3;
  a3 = MEMORY[0x1E69E6370];
  sub_1CF0230AC(v29, MEMORY[0x1E69E6370]);
  sub_1CF0230B4(v170, a3, v29, a3, v28);
  LOBYTE(a3) = v178;
  LOBYTE(v170[0]) = 11;
  sub_1CF0230B4(v170, MEMORY[0x1E69E6370], v29, MEMORY[0x1E69E6370], v28);
LABEL_12:
  v38 = v135;
  v133 = v177;
  LOBYTE(v170[0]) = 12;
  sub_1CF0230B4(v170, MEMORY[0x1E69E6370], v29, MEMORY[0x1E69E6370], v28);
  if (a2)
  {
    sub_1CEFCCC44(v153, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  v132 = v173;
  LOBYTE(v170[0]) = 7;
  sub_1CF0230B4(v170, v152, v145, v152, v146);
  LOBYTE(v170[0]) = 8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
  v40 = v145;
  v41 = v146;
  sub_1CF0230AC(v145, v39);
  sub_1CF0230B4(v170, v39, v40, v39, v41);
  v152 = v172;
  LOBYTE(v170[0]) = 9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
  v43 = v145;
  v44 = v146;
  sub_1CF0230AC(v145, v42);
  sub_1CF0230B4(v170, v42, v43, v42, v44);
  v130 = v170[3];
  v131 = v171;
  LOBYTE(v170[0]) = 14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
  sub_1CF0230B4(v170, v45, v145, v45, v146);
  v129 = v170[2];
  LOBYTE(v161[0]) = 20;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  v47 = v145;
  v48 = v146;
  sub_1CF0230AC(v145, v46);
  sub_1CF0230B4(v161, v46, v47, v46, v48);
  v127 = v170[0];
  v128 = v170[1];
  LOBYTE(v161[0]) = 23;
  v49 = MEMORY[0x1E69E76D8];
  v50 = v145;
  v51 = v146;
  sub_1CF0230AC(v145, MEMORY[0x1E69E76D8]);
  sub_1CF0230B4(v161, v49, v50, v49, v51);
  v52 = v169;
  LOBYTE(v161[0]) = 21;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v126 = v168;
  LOBYTE(v161[0]) = 22;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v125 = v167;
  LOBYTE(v161[0]) = 27;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v124 = v166;
  LOBYTE(v161[0]) = 17;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v122 = v165;
  LOBYTE(v161[0]) = 18;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v121 = v164;
  LOBYTE(v161[0]) = 1;
  sub_1CF0230B4(v161, MEMORY[0x1E69E6370], v145, MEMORY[0x1E69E6370], v146);
  v123 = 0;
  v120 = v163;
  LOBYTE(v161[0]) = 10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v54 = v145;
  v55 = v146;
  sub_1CF0230AC(v145, v53);
  v56 = v123;
  sub_1CF0230B4(v161, v53, v54, v53, v55);
  v123 = v56;
  if (v56)
  {
    goto LABEL_16;
  }

  v119 = v162;
  LOBYTE(v156[0]) = 19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
  v58 = v145;
  v59 = v146;
  sub_1CF0230AC(v145, v57);
  v60 = v123;
  sub_1CF0230B4(v156, v57, v58, v57, v59);
  v123 = v60;
  if (v60)
  {
LABEL_16:

    sub_1CEFE48D8(v127, v128);
LABEL_17:
    sub_1CEFCCC44(v143, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v153, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  v117 = v161[0];
  v118 = v161[1];
  LOBYTE(v156[0]) = 24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B0, &qword_1CF9FDDB8);
  v62 = v145;
  v63 = v146;
  sub_1CF0230AC(v145, v61);
  v64 = v123;
  sub_1CF0230B4(v156, v61, v62, v61, v63);
  if (v64)
  {

    sub_1CEFE48D8(v127, v128);

    sub_1CEFCCC44(v143, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v153, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  v116 = v159;
  v115 = v160;
  LOBYTE(v156[0]) = 25;
  sub_1CF0230B4(v156, v136, v145, v136, v146);
  v123 = 0;
  LODWORD(v136) = v157;
  v114 = v158;
  v155 = 26;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  v66 = v145;
  v67 = v146;
  sub_1CF0230AC(v145, v65);
  v68 = v123;
  sub_1CF0230B4(&v155, v65, v66, v65, v67);
  v123 = v68;
  if (v68)
  {

    sub_1CEFE48D8(v127, v128);

    goto LABEL_17;
  }

  v145 = v156[0];
  v154 = v156[1];
  v69 = type metadata accessor for ItemMetadata();
  v70 = v147;
  v71 = &v147[v69[14]];
  *v71 = 0;
  v71[1] = 0;
  v112 = v71;
  v70[v69[17]] = 2;
  v113 = v69[23];
  v70[v113] = 6;
  v72 = &v70[v69[30]];
  v73 = *(v150 + 56);
  LODWORD(v146) = 1;
  v110 = v72;
  v73();
  v111 = &v70[v69[34]];
  *v111 = xmmword_1CF9F4E20;
  v74 = &v70[v69[38]];
  *v74 = 0;
  v74[1] = 0;
  v109 = v74;
  if (v140 > 1)
  {
    LODWORD(v146) = 0;
    goto LABEL_26;
  }

  if (!v140)
  {
LABEL_26:
    v75 = v119;
    goto LABEL_27;
  }

  LODWORD(v146) = 0;
  v75 = 1;
LABEL_27:
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v76 = v38 & 0x1BF | 0x40;
    if ((v75 & 1) == 0)
    {
      v76 = v38 & 0x1FF;
    }
  }

  else
  {
    v77 = v38 & 0x1FF | (v38 >> 2) & 0x40 | 0x80;
    if ((v75 & 1) == 0)
    {
      LOWORD(v77) = v38 & 0x1FF;
    }

    v76 = (4 * v77) & 0x100 | v77;
  }

  v78 = v147;
  *v147 = v140;
  v78[v69[20]] = v120;
  v79 = v119;
  v78[v69[28]] = v119 & 1;
  v78[v69[29]] = v79 & 1;
  *&v78[v69[26]] = v139;
  *&v78[v69[27]] = v137;
  v80 = *v78;
  v81 = v138;
  if (!((v80 == 1) | v79 & 1))
  {
    v81 = 0;
  }

  v82 = v134;
  *(v78 + 1) = v81;
  v78[8] = v82 & 1 | (((v80 == 1) | v79 & 1) == 0);
  v83 = &v78[v69[37]];
  v84 = (v80 != 0) | v79;
  v85 = v136;
  if (v84)
  {
    v85 = 0;
  }

  v86 = v114;
  *v83 = v85;
  v83[4] = (v84 | v86) & 1;
  *(v78 + 5) = v76;
  v87 = v141;
  sub_1CF06EAD4(v144, v141);
  v88 = *(v150 + 48);
  if (v88(v87, 1, v151) == 1)
  {
    sub_1CF9E5C88();
    if (v88(v141, 1, v151) != 1)
    {
      sub_1CEFCCC44(v141, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v150 + 32))(v148, v141, v151);
  }

  v89 = *(v150 + 32);
  v90 = &v147[v69[7]];
  v91 = v148;
  v92 = v151;
  v150 += 32;
  v148 = v89;
  (v89)(v90, v91, v151);
  v93 = v142;
  sub_1CF06EAD4(v153, v142);
  if (v88(v93, 1, v92) == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v153, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v88(v142, 1, v151) != 1)
    {
      sub_1CEFCCC44(v142, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v153, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (v148)(v149, v142, v151);
  }

  v94 = v69[31];
  v95 = v147;
  v96 = &v147[v69[32]];
  v153 = v69[33];
  v97 = &v147[v69[35]];
  (v148)(&v147[v69[8]], v149, v151);
  v95[v69[9]] = a3;
  v95[v69[10]] = v133;
  v95[v69[13]] = v132;
  *&v95[v69[19]] = v52;
  v95[v69[21]] = v16;
  v95[v69[15]] = v126;
  v95[v69[16]] = v125;
  v95[v69[11]] = v122;
  v95[v69[12]] = v121;
  v95[v69[18]] = v124;
  sub_1CEFE4804(v143, v110);
  v98 = v153;
  *&v95[v94] = v152;
  *v96 = v130;
  v96[8] = v131;
  *&v95[v98] = v129;
  v99 = v112;
  v100 = v112[1];

  v101 = v118;
  *v99 = v117;
  v99[1] = v101;
  v102 = v111;
  result = sub_1CEFE48D8(*v111, v111[1]);
  v103 = v128;
  *v102 = v127;
  v102[1] = v103;
  *v97 = v116;
  v97[8] = v115;
  v95[v69[36]] = 0;
  if (v154)
  {
    v104 = HIBYTE(v154) & 0xF;
    if ((v154 & 0x2000000000000000) == 0)
    {
      v104 = v145 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      v105 = v109;
      v106 = v154;
      *v109 = v145;
      v105[1] = v106;
    }

    else
    {
    }
  }

  v107 = v147;
  v147[v69[24]] = 0;
  v107[v69[25]] = 0;
  v107[v69[22]] = 0;
  if (v146)
  {
    v108 = v19;
  }

  else
  {
    v108 = 6;
  }

  v107[v113] = v108;
  return result;
}

FileProviderDaemon::EvictionUrgency_optional __swiftcall EvictionUrgency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t storeEnumTagSinglePayload for Fields(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

double sub_1CF082390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v45 = *a4;
  v44 = a4[1];
  v61 = a6[12];
  v62 = a6[13];
  v63 = a6[14];
  v64 = *(a6 + 30);
  v57 = a6[8];
  v58 = a6[9];
  v59 = a6[10];
  v60 = a6[11];
  v53 = a6[4];
  v54 = a6[5];
  v55 = a6[6];
  v56 = a6[7];
  v49 = *a6;
  v50 = a6[1];
  v51 = a6[2];
  v52 = a6[3];
  v9 = type metadata accessor for SnapshotItem();
  v10 = (a7 + v9[13]);
  sub_1CEFE528C(v65);
  v11 = v65[13];
  v10[12] = v65[12];
  v10[13] = v11;
  v10[14] = v65[14];
  *(v10 + 30) = v66;
  v12 = v65[9];
  v10[8] = v65[8];
  v10[9] = v12;
  v13 = v65[11];
  v10[10] = v65[10];
  v10[11] = v13;
  v14 = v65[5];
  v10[4] = v65[4];
  v10[5] = v14;
  v15 = v65[7];
  v10[6] = v65[6];
  v10[7] = v15;
  v16 = v65[1];
  *v10 = v65[0];
  v10[1] = v16;
  v17 = v65[3];
  v10[2] = v65[2];
  v10[3] = v17;
  v18 = a7 + v9[14];
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v19 = a7 + v9[15];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 16);
  v23 = a1;
  v24 = AssociatedTypeWitness;
  v42 = AssociatedTypeWitness;
  v22(a7, v23);
  (v22)(a7 + v9[9], a2, v24);
  v41 = v9[10];
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  *&v67 = v25;
  *(&v67 + 1) = v26;
  *&v68 = AssociatedConformanceWitness;
  *(&v68 + 1) = v28;
  v29 = type metadata accessor for FileItemVersion();
  v30 = *(v29 - 8);
  (*(v30 + 16))(a7 + v41, a3, v29);
  v31 = (a7 + v9[11]);
  *v31 = v45;
  v31[1] = v44;
  sub_1CEFF4408(a5, a7 + v9[12]);
  v32 = v10[13];
  v79 = v10[12];
  v80 = v32;
  v81 = v10[14];
  v82 = *(v10 + 30);
  v33 = v10[9];
  v75 = v10[8];
  v76 = v33;
  v34 = v10[11];
  v77 = v10[10];
  v78 = v34;
  v35 = v10[5];
  v71 = v10[4];
  v72 = v35;
  v36 = v10[7];
  v73 = v10[6];
  v74 = v36;
  v37 = v10[1];
  v67 = *v10;
  v68 = v37;
  v38 = v10[3];
  v69 = v10[2];
  v70 = v38;
  sub_1CF06CF28(&v67);
  v10[12] = v61;
  v10[13] = v62;
  v10[14] = v63;
  *(v10 + 30) = v64;
  v10[8] = v57;
  v10[9] = v58;
  v10[10] = v59;
  v10[11] = v60;
  v10[4] = v53;
  v10[5] = v54;
  v10[6] = v55;
  v10[7] = v56;
  *v10 = v49;
  v10[1] = v50;
  v10[2] = v51;
  v10[3] = v52;
  sub_1CF06DA00(a5);
  (*(v30 + 8))(a3, v29);
  v39 = *(v21 + 8);
  v39(a2, v42);
  v39(a1, v42);
  *(a7 + v9[16]) = 0;
  result = 0.0;
  *(a7 + v9[17]) = xmmword_1CF9FEC20;
  return result;
}

uint64_t sub_1CF082780(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6465696669726576;
  }

  else
  {
    v3 = 0x676E69646E6570;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6465696669726576;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CF9E8048();
  }

  return v7 & 1;
}

uint64_t sub_1CF082824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  result = type metadata accessor for ItemReconciliation();
  if (*(a1 + *(result + 56)) - 1 >= 4)
  {
    v20 = result;
    result = sub_1CF07CD80(result);
    if ((result & 1) == 0)
    {
      (*(v15 + 16))(v18, a1, v14);
      v21 = (*(*(AssociatedTypeWitness - 8) + 48))(v18, 1, AssociatedTypeWitness);
      result = (*(v15 + 8))(v18, v14);
      if (v21 == 1)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
        *(a1 + *(v20 + 72)) = v22;
        return result;
      }

      v23 = v27;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v25 = v24;
      result = (*(v28 + 8))(v23, v29);
      v26 = v25 * 1000000000.0;
      if (COERCE__INT64(fabs(v25 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v26 > -9.22337204e18)
      {
        if (v26 < 9.22337204e18)
        {
          v22 = v26;
          goto LABEL_9;
        }

LABEL_13:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  return result;
}

BOOL sub_1CF082AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = type metadata accessor for ItemReconciliationHalf();
  if (sub_1CF082B4C(v4))
  {
    return 1;
  }

  v6 = *(a1 + 52);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = type metadata accessor for ItemReconciliationHalf();
  return sub_1CF082B4C(v9);
}

BOOL sub_1CF082B4C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v1, v6);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v10, v6);
  return AssociatedTypeWitness != 1 && *(v1 + *(a1 + 64) + 16) == 1;
}

uint64_t sub_1CF082CB0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v94 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v78[-v8];
  (*(v6 + 16))(&v78[-v8], v1, v5);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v9, v5);
  if (v10 == 1 && (v11 = v1 + *(a1 + 52), v12 = *(a1 + 24), v13 = *(a1 + 40), v14 = v11 + *(type metadata accessor for ItemReconciliationHalf() + 64), !*(v14 + 16)) && *v14 == 2)
  {
    v84 = 0;
    v88 = 0;
    v85 = 2;
    v86 = 4;
    v87 = "🔍";
    v83 = "";
    v15 = v94;
  }

  else
  {
    v15 = v94;
    v16 = type metadata accessor for ItemReconciliationHalf();
    if ((*(v1 + *(v16 + 36)) & 0x51) != 0 && sub_1CF07CD80(a1))
    {
      v88 = 0;
      v86 = 6;
      v87 = "⬆︎";
    }

    else
    {
      v17 = *(v1 + *(v16 + 40));
      v18 = v17 == 0;
      if (v17)
      {
        v19 = "⬆︎";
      }

      else
      {
        v19 = " ";
      }

      v87 = v19;
      if (v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = 6;
      }

      v86 = v20;
      if (v18)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

      v88 = v21;
    }

    v22 = v1 + *(a1 + 52);
    v12 = *(a1 + 24);
    v13 = *(a1 + 40);
    v23 = type metadata accessor for ItemReconciliationHalf();
    if ((*(v22 + *(v23 + 36)) & 0x51) != 0 && sub_1CF07CD80(a1) || *(v22 + *(v23 + 40)))
    {
      v85 = 0;
      v83 = "⬇︎";
      v24 = 6;
    }

    else
    {
      v85 = 2;
      v83 = " ";
      v24 = 1;
    }

    v84 = v24;
  }

  v89 = a1;
  v90 = v1;
  v25 = *(v1 + *(a1 + 60));
  v97 = v25;
  v26 = swift_getAssociatedTypeWitness();
  v27 = v15;
  v28 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v99 = AssociatedTypeWitness;
  v100 = v26;
  v101 = AssociatedConformanceWitness;
  v102 = v30;
  type metadata accessor for ReconciliationID();
  v31 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1CF9E7128();
  v91 = v28;
  if (v33)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    v79 = 2;
  }

  else
  {
    v99 = 0x6973696C6C6F633CLL;
    v100 = 0xEB000000003A6E6FLL;
    v97 = v25;
    MEMORY[0x1EEE9AC00](v33);
    *&v78[-32] = v27;
    *&v78[-24] = v12;
    *&v78[-16] = v28;
    *&v78[-8] = v13;
    KeyPath = swift_getKeyPath();
    v93 = v78;
    v35 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v78[-48] = v27;
    *&v78[-40] = v12;
    *&v78[-32] = v28;
    *&v78[-24] = v13;
    *&v78[-16] = v35;

    v37 = sub_1CF054A5C(sub_1CF95E9F0, &v78[-64], v31, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v36);

    v97 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
    v38 = sub_1CF9E67D8();
    v40 = v39;

    MEMORY[0x1D3868CC0](v38, v40);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v79 = 0;
    v92 = v99;
    v93 = v100;
  }

  v42 = v89;
  v41 = v90;
  v43 = *(v90 + v89[14]);
  if (v43 == 4)
  {
    v80 = 0;
    v44 = 0xE000000000000000;
  }

  else
  {
    v99 = 32;
    v100 = 0xE100000000000000;
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v45 = 0xE700000000000000;
        v46 = 0x6B6E696C6D7973;
      }

      else
      {
        v45 = 0xE500000000000000;
        v46 = 0x7361696C61;
      }
    }

    else
    {
      v45 = 0xE300000000000000;
      if (v43)
      {
        v46 = 7498084;
      }

      else
      {
        v46 = 6516580;
      }
    }

    MEMORY[0x1D3868CC0](v46, v45);

    v44 = v100;
    v80 = v99;
  }

  v47 = *(v41 + v42[20]);
  if (v47)
  {
    v99 = 0x3A636570733C20;
    v100 = 0xE700000000000000;
    v48 = sub_1CF083800(v47);
    MEMORY[0x1D3868CC0](v48);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v49 = v100;
    v82 = v99;
  }

  else
  {
    v82 = 0;
    v49 = 0xE000000000000000;
  }

  v81 = v49;
  v99 = 0;
  v100 = 0xE000000000000000;
  v50 = *(v41 + *(type metadata accessor for ItemReconciliationHalf() + 76));
  if ((v50 & 3) != 0)
  {
    MEMORY[0x1D3868CC0](2425659376, 0xA400000000000000);
  }

  if ((v50 & 4) != 0)
  {
    MEMORY[0x1D3868CC0](9149666, 0xA300000000000000);
  }

  if ((v50 & 8) != 0)
  {
    MEMORY[0x1D3868CC0](2207555568, 0xA400000000000000);
  }

  LODWORD(v94) = sub_1CF083A1C(v42);
  LODWORD(v91) = *(v41 + v42[19]);
  v97 = sub_1CF9E7988();
  v98 = v51;
  v52 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v52);

  v53 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v53);

  MEMORY[0x1D3868CC0](v99, v100);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v55 = v97;
  v54 = v98;
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  v56 = v42[13];
  type metadata accessor for ItemReconciliationHalf();
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v80, v44);

  MEMORY[0x1D3868CC0](0x3A646568637320, 0xE700000000000000);
  v57 = (v41 + v42[16]);
  v58 = v57[1];
  v95 = sub_1CF057488(*v57);
  v96 = v59;
  MEMORY[0x1D3868CC0](35, 0xE100000000000000);
  v60 = sub_1CF9E6F58();
  MEMORY[0x1D3868CC0](v60);

  MEMORY[0x1D3868CC0](v95, v96);

  v61 = v97;
  v62 = v98;
  v97 = v55;
  v98 = v54;

  MEMORY[0x1D3868CC0](v61, v62);

  v64 = v97;
  v63 = v98;
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1CF9E7948();

  v97 = 0x733C3A6B6E617220;
  v98 = 0xE90000000000003ALL;
  v95 = *(v41 + v42[17]);
  v65 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v65);

  v66 = 0xE300000000000000;
  MEMORY[0x1D3868CC0](3826464, 0xE300000000000000);
  if (*(v41 + v42[18]) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v67 = 7889261;
  }

  else
  {
    v95 = *(v41 + v42[18]);
    v67 = sub_1CF9E7F98();
    v66 = v68;
  }

  MEMORY[0x1D3868CC0](v67, v66);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v69 = v97;
  v70 = v98;
  v97 = v64;
  v98 = v63;

  MEMORY[0x1D3868CC0](v69, v70);

  v72 = v97;
  v71 = v98;
  v97 = v82;
  v98 = v81;
  v73 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v73);

  v74 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v74);

  MEMORY[0x1D3868CC0](v92, v93);

  v75 = v97;
  v76 = v98;
  v97 = v72;
  v98 = v71;

  MEMORY[0x1D3868CC0](v75, v76);

  return v97;
}

__n128 sub_1CF0837F4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF083800(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    switch(v2)
    {
      case 4:
        v3 = 0x646E49746F4E7369;
        v4 = 0xEE00656C62617865;
        break;
      case 2:
        v3 = 0xD000000000000010;
        v4 = 0x80000001CFA5D0A0;
        break;
      case 1:
        v3 = 0xD000000000000014;
        v4 = 0x80000001CFA5D0C0;
        break;
      default:
        sub_1CF056E98();
        v5 = sub_1CF9E6B28();
        MEMORY[0x1D3868CC0](v5);

        v3 = 30768;
        v4 = 0xE200000000000000;
        break;
    }

    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

BOOL sub_1CF083A1C(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v1 + *(a1 + 52), v6);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v10, v6);
  return AssociatedTypeWitness != 1 && sub_1CF083B80(a1) != 0;
}

uint64_t sub_1CF083B80(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 40);
  v32[2] = *(a1 + 24);
  v32[3] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - v9;
  v11 = *(a1 + 32);
  v32[0] = *(a1 + 16);
  v32[1] = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - v16;
  (*(v14 + 16))(v32 - v16, v2, v13);
  LODWORD(v12) = (*(*(v12 - 8) + 48))(v17, 1, v12);
  (*(v14 + 8))(v17, v13);
  v18 = *(a1 + 52);
  if (v12 == 1)
  {
    v19 = (v2 + v18 + *(type metadata accessor for ItemReconciliationHalf() + 64));
    if (!v19[16] && (*v19 & 2) != 0)
    {
      return 0;
    }
  }

  v20 = v2 + v18;
  (*(v7 + 16))(v10, v2 + v18, v6);
  v21 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v10, v6);
  v22 = type metadata accessor for ItemReconciliationHalf();
  if (v21 == 1)
  {
    if ((*(v20 + v22[9]) & 0x10) != 0)
    {
      return 0;
    }

    v23 = v22;
    v24 = type metadata accessor for ItemReconciliationHalf();
    v22 = v23;
    if ((*(v2 + *(v24 + 36)) & 0x10) != 0)
    {
      return 0;
    }
  }

  v25 = v20 + v22[16];
  v26 = *(v25 + 16);
  if (v26 != 3 && (v26 != 4 || *v25 & 0xFFFFFFFFFFFFFFFELL | *(v25 + 8)))
  {
    return 5;
  }

  if (*(v20 + v22[10]))
  {
    return 6;
  }

  if (*(v20 + v22[9]))
  {
    return 7;
  }

  if (sub_1CF07F1A0(a1))
  {
    return 8;
  }

  v28 = type metadata accessor for ItemReconciliationHalf();
  v29 = v2 + v28[16];
  v30 = *(v29 + 16);
  if (v30 != 3 && (v30 != 4 || *v29 & 0xFFFFFFFFFFFFFFFELL | *(v29 + 8)))
  {
    return 1;
  }

  if (*(v2 + v28[10]))
  {
    return 2;
  }

  if (*(v2 + v28[9]))
  {
    return 3;
  }

  v31 = *(v2 + v28[11]);
  if (v31 == 5)
  {
    return 0;
  }

  else
  {
    return 4 * ((v31 & 0xFB) == 0);
  }
}

uint64_t sub_1CF083F70(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *&v67 = swift_getAssociatedTypeWitness();
  *(&v67 + 1) = swift_getAssociatedTypeWitness();
  *&v68 = swift_getAssociatedConformanceWitness();
  *(&v68 + 1) = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FileItemVersion();
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v58 - v11;
  v13 = *(*(v6 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v58 - v15;
  v59 = v16;
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  v17 = v1 + *(a1 + 64);
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  v61 = v18;
  v62 = v19;
  v60 = v20;
  v21 = v14;
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v19)
      {
        v24 = 548966370;
      }

      else
      {
        v24 = 548376546;
      }
    }

    else
    {
      v24 = 548638690;
    }

    v22 = 0xA400000000000000;
  }

  else
  {
    if (v20 == 2)
    {
      v22 = 0xA700000000000000;
      v23 = -273246494;
      goto LABEL_8;
    }

    if (v20 == 3)
    {
      v22 = 0xA700000000000000;
      v23 = -272858910;
LABEL_8:
      v24 = v23 | 0x208FB800000000;
      goto LABEL_19;
    }

    if (v19 | v18)
    {
      v24 = 545627362;
    }

    else
    {
      v24 = 0x208FB8EFB49CE2;
    }

    if (v19 | v18)
    {
      v22 = 0xA400000000000000;
    }

    else
    {
      v22 = 0xA700000000000000;
    }
  }

LABEL_19:
  MEMORY[0x1D3868CC0](v24, v22);

  v25 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  MEMORY[0x1EEE9AC00](v25);
  *(&v58 - 2) = v4;
  *(&v58 - 1) = v5;
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  sub_1CF06E1CC(sub_1CF08490C, (&v58 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v26, &v71);
  if (*(&v71 + 1))
  {
    v27 = v71;
  }

  else
  {
    v27 = 0x6E776F6E6B6E753CLL;
  }

  if (*(&v71 + 1))
  {
    v28 = *(&v71 + 1);
  }

  else
  {
    v28 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v27, v28);

  v71 = v67;
  v29 = *(v1 + *(a1 + 36));
  if (v29)
  {
    *&v67 = 0x3A6574656C656420;
    *(&v67 + 1) = 0xE800000000000000;
    v30 = sub_1CF7F4AF4(v29);
    MEMORY[0x1D3868CC0](v30);

    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));
  }

  v31 = *(v1 + *(a1 + 40));
  v32 = v8;
  if (v31)
  {
    *&v67 = 0x3A73646C65696620;
    *(&v67 + 1) = 0xE800000000000000;
    v33 = sub_1CF071470(v31);
    MEMORY[0x1D3868CC0](v33);

    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));
  }

  v34 = *(v1 + *(a1 + 44));
  v35 = v59;
  if (v34 != 5)
  {
    *&v67 = 32;
    *(&v67 + 1) = 0xE100000000000000;
    if (v34 <= 1)
    {
      if (v34)
      {
        v36 = 0xE500000000000000;
        v37 = 0x7463697665;
      }

      else
      {
        v36 = 0xEB00000000657A69;
        v37 = 0x6C6169726574616DLL;
      }
    }

    else if (v34 == 2)
    {
      v36 = 0x80000001CFA455D0;
      v37 = 0xD000000000000013;
    }

    else if (v34 == 3)
    {
      v36 = 0x80000001CFA455B0;
      v37 = 0xD000000000000016;
    }

    else
    {
      v36 = 0x80000001CFA45580;
      v37 = 0xD000000000000022;
    }

    MEMORY[0x1D3868CC0](v37, v36);

    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));
  }

  v38 = *(v1 + *(a1 + 52));
  if (v38 <= 1)
  {
    if (!*(v1 + *(a1 + 52)))
    {
      goto LABEL_49;
    }

    v39 = 0x746E65746E6F6320;
    v40 = 0xED000070616E733ALL;
  }

  else if (v38 == 2)
  {
    v39 = 0x746E65746E6F6320;
    v40 = 0xEE0068637461773ALL;
  }

  else if (v38 == 3)
  {
    v39 = 0x746E65746E6F6320;
    v40 = 0xEF74726F706D693ALL;
  }

  else
  {
    v40 = 0x80000001CFA45560;
    v39 = 0xD000000000000010;
  }

  MEMORY[0x1D3868CC0](v39, v40);
LABEL_49:
  v41 = *(v1 + *(a1 + 56));
  if (v41 != 6)
  {
    v42 = 0xE800000000000000;
    *&v67 = 0x3A74726F706D6920;
    *(&v67 + 1) = 0xE800000000000000;
    if (v41 > 2)
    {
      if (v41 == 3)
      {
        v42 = 0xE400000000000000;
        v43 = 1802725732;
      }

      else if (v41 == 4)
      {
        v43 = 0x72656469766F7270;
      }

      else
      {
        v42 = 0xE700000000000000;
        v43 = 0x70756E61656C63;
      }
    }

    else if (v41)
    {
      v42 = 0xE600000000000000;
      if (v41 == 1)
      {
        v43 = 0x746E65726170;
      }

      else
      {
        v43 = 0x7463656C6573;
      }
    }

    else
    {
      v42 = 0xE700000000000000;
      v43 = 0x676E69646E6570;
    }

    MEMORY[0x1D3868CC0](v43, v42);

    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));
  }

  if (*(v1 + *(a1 + 60)) == 1)
  {
    MEMORY[0x1D3868CC0](0x29736C6428, 0xE500000000000000);
  }

  (*(v32 + 16))(v12, v1 + *(a1 + 48), v21);
  if ((*(v35 + 48))(v12, 1, v6) == 1)
  {
    (*(v32 + 8))(v12, v21);
  }

  else
  {
    v44 = v58;
    (*(v35 + 32))(v58, v12, v6);
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));

    (*(v35 + 8))(v44, v6);
  }

  v45 = *(v1 + *(a1 + 72));
  if (v45)
  {
    *&v67 = 0x3A7265766D6F6420;
    *(&v67 + 1) = 0xE800000000000000;
    v46 = v45;
    v47 = [v46 description];
    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;

    MEMORY[0x1D3868CC0](v48, v50);

    MEMORY[0x1D3868CC0](v67, *(&v67 + 1));
  }

  v51 = (v2 + *(a1 + 68));
  v52 = v51[1];
  v67 = *v51;
  v68 = v52;
  v53 = v51[3];
  v69 = v51[2];
  v70 = v53;
  if (*(&v52 + 1) >> 60 != 11)
  {
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    v54 = v67;
    sub_1CEFF05F4(v68, *(&v52 + 1));
    MEMORY[0x1D3868CC0](0x6572757470616320, 0xEA00000000003A64);
    v64 = 677669222;
    v65 = 0xE400000000000000;
    v63 = v54;
    v55 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v55);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v64, v65);

    MEMORY[0x1D3868CC0](v66, *(&v66 + 1));

    sub_1CEFCCC44(&v67, &unk_1EC4BF260, &unk_1CFA01B60);
  }

  v66 = v71;
  v56 = sub_1CF0534E8(v62, v61, v60);
  MEMORY[0x1D3868CC0](v56);

  return v66;
}

uint64_t sub_1CF08490C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF08492C(a1);
}

uint64_t sub_1CF08492C@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 16);
  result = sub_1CF9E7FE8();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1CF0849E8(unsigned int a1, id a2, uint64_t a3)
{
  v5 = (a1 >> 4) & 3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return sub_1CF08692C(a1 & 1, a2, *(v3 + *(a3 + 64)), *(v3 + *(a3 + 64) + 8));
    }

    if (a1 <= 0x32u)
    {
      if (a1 == 48)
      {
        v30 = *(v3 + *(a3 + 56));
        if (v30 == 4)
        {
          v46 = 0u;
          v47 = 0u;
        }

        else
        {
          v39 = qword_1CFA03A90[v30];
          *(&v47 + 1) = MEMORY[0x1E69E6530];
          *&v46 = v39;
        }

        v40 = sub_1CEFF8EA0(&v46);
        v42 = v41;
        sub_1CEFCCC44(&v46, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v42)
        {
          return v40;
        }
      }

      else
      {
        if (a1 == 49)
        {
          v16 = *(v3 + *(a3 + 60));
          v48 = v16;
          v17 = *(a3 + 32);
          v18 = *(a3 + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v21 = *(a3 + 40);
          v22 = *(a3 + 24);
          *&v46 = AssociatedTypeWitness;
          *(&v46 + 1) = swift_getAssociatedTypeWitness();
          *&v47 = swift_getAssociatedConformanceWitness();
          *(&v47 + 1) = swift_getAssociatedConformanceWitness();
          type metadata accessor for ReconciliationID();
          v23 = sub_1CF9E6E58();
          swift_getWitnessTable();
          if (sub_1CF9E7128())
          {
            v24 = [a2 bindObjectParameter_];
            v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

            return v25;
          }

          else
          {
            *&v46 = v16;

            swift_getWitnessTable();
            WitnessTable = swift_getWitnessTable();
            v44 = sub_1CF4C0DE0(&v46, v23, WitnessTable);

            return v44;
          }
        }

        v31 = *(a3 + 16);
        v32 = *(a3 + 32);
        v33 = *(v3 + *(type metadata accessor for ItemReconciliationHalf() + 76));
        *(&v47 + 1) = MEMORY[0x1E69E6530];
        *&v46 = v33;
        v34 = sub_1CEFF8EA0(&v46);
        v36 = v35;
        sub_1CEFCCC44(&v46, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v36)
        {
          return v34;
        }
      }
    }

    else
    {
      if (a1 <= 0x34u)
      {
        if (a1 == 51)
        {
          v15 = [a2 bindLongParameter_];
        }

        else
        {
          v15 = [a2 bindBooleanParameter_];
        }

        goto LABEL_26;
      }

      if (a1 != 53)
      {
        v15 = [a2 bindLongParameter_];
LABEL_26:
        v37 = v15;
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v38;
      }

      v26 = *(v3 + *(a3 + 80));
      *(&v47 + 1) = MEMORY[0x1E69E6530];
      *&v46 = v26;
      v27 = sub_1CEFF8EA0(&v46);
      v29 = v28;
      sub_1CEFCCC44(&v46, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v29)
      {
        return v27;
      }
    }

    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (v5)
  {
    v12 = *(a3 + 52);
    v13 = *(a3 + 24);
    v14 = *(a3 + 40);
    v9 = type metadata accessor for ItemReconciliationHalf();
    v10 = a1 & 0xFFFFFFCF;
  }

  else
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 32);
    v9 = type metadata accessor for ItemReconciliationHalf();
    v10 = a1;
  }

  return sub_1CF084EE0(v10, a2, v9);
}

uint64_t sub_1CF084EE0(int a1, char *a2, uint64_t a3)
{
  v203 = a2;
  LODWORD(v188) = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v186 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v174 = sub_1CF9E75D8();
  v173 = *(v174 - 8);
  v6 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v180 = &v162 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v172 = sub_1CF9E75D8();
  v171 = *(v172 - 8);
  v9 = *(v171 + 64);
  v10 = MEMORY[0x1EEE9AC00](v172);
  v177 = &v162 - v11;
  v184 = *(AssociatedTypeWitness - 8);
  v12 = *(v184 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v166 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v167 = &v162 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v164 = &v162 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v162 - v19;
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v179 = type metadata accessor for ItemStateVersion();
  v178 = *(v179 - 8);
  v21 = *(v178 + 64);
  v22 = MEMORY[0x1EEE9AC00](v179);
  v162 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v162 - v24;
  v176 = v20;
  v181 = sub_1CF9E75D8();
  v170 = *(v181 - 8);
  v25 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v175 = &v162 - v26;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  *&v198 = v8;
  *(&v198 + 1) = AssociatedTypeWitness;
  v183 = AssociatedTypeWitness;
  v169 = v27;
  v199 = v27;
  v200 = v28;
  v168 = v28;
  v185 = type metadata accessor for FileItemVersion();
  v29 = sub_1CF9E75D8();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v162 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v162 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v162 - v44;
  v46 = *(*(v8 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v43);
  v49 = &v162 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v162 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v162 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v162 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v162 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v70 = &v162 - v69;
  if ((v188 >> 6) <= 1u)
  {
    if (v188 >> 6)
    {
      v83 = v189;
      v84 = sub_1CF086728(v188 & 0x3F, v203, *(v187 + v186[16]), *(v187 + v186[16] + 8), *(v187 + v186[16] + 16));
      if (!v83)
      {
        return v84;
      }

      return v61;
    }

    v71 = (v187 + v186[17]);
    v72 = *(v71 + 3);
    v73 = v189;
    v61 = v203;
    if (v72 >> 60 != 11)
    {
      v194 = *v71;
      *&v195 = *(v71 + 2);
      *(&v195 + 1) = v72;
      v86 = v71[3];
      v196 = v71[2];
      v197 = v86;
      v198 = v194;
      v199 = v195;
      v200 = v72;
      v201 = v196;
      v202 = v86;
      v87 = v188;
      sub_1CF1AE1DC(&v198, &v190);
      v88 = sub_1CF356DB8(v87, v61);
      if (v73)
      {
        v190 = v194;
        v191 = v195;
        v192 = v196;
        v193 = v197;
        sub_1CF1AE25C(&v190);
      }

      else
      {
        v61 = v88;
        v190 = v194;
        v191 = v195;
        v192 = v196;
        v193 = v197;
        sub_1CF1AE25C(&v190);
      }

      return v61;
    }

    v74 = [v203 bindObjectParameter_];
    goto LABEL_71;
  }

  if (v188 >> 6 == 3)
  {
    if (v188 > 0xC2u)
    {
      v75 = v185;
      v76 = v184;
      if (v188 <= 0xC4u)
      {
        if (v188 == 195)
        {
          v77 = v62;
          v78 = v67;
          v79 = v64;
          (*(v67 + 16))(v64, v187 + v186[12], v62);
          v80 = *(v75 - 8);
          if ((*(v80 + 48))(v79, 1, v75) == 1)
          {
            (*(v78 + 8))(v79, v77);
            v81 = 0;
            v82 = 0;
          }

          else
          {
            v148 = v166;
            v149 = v183;
            (*(v76 + 16))(v166, v79 + *(v75 + 56), v183);
            (*(v80 + 8))(v79, v75);
            (*(v76 + 32))(v167, v148, v149);
            v150 = v162;
            v151 = v179;
            swift_dynamicCast();
            v152 = &v150[*(v151 + 36)];
            v81 = *v152;
            v82 = v152[1];
            v153 = *(v178 + 8);

            v153(v150, v151);
          }

          v61 = sub_1CF074DF4(v81, v82);
        }

        else
        {
          v121 = v68;
          v122 = v66;
          v123 = v67;
          v124 = v63;
          v125 = v62;
          (*(v67 + 16))(v63, v187 + v186[12], v62);
          v126 = *(v75 - 8);
          v127 = 1;
          v128 = (*(v126 + 48))(v124, 1, v75);
          if (v128 == 1)
          {
            v126 = v123;
            v129 = v125;
            v130 = v177;
          }

          else
          {
            v130 = v177;
            (*(v121 + 16))(v177, v124, v122);
            v127 = 0;
            v129 = v75;
          }

          (*(v126 + 8))(v124, v129);
          (*(v121 + 56))(v130, v127, 1, v122);
          v156 = v172;
          v61 = Optional<A>.encode(_:)(v203, v172, *(v169 + 8));
          (*(v171 + 8))(v130, v156);
        }

        return v61;
      }

      v97 = v203;
      if (v188 == 197)
      {
        v98 = v186[12];
        v188 = v67;
        v99 = v62;
        (*(v67 + 16))(v33, v187 + v98);
        v100 = *(v75 - 8);
        v101 = 1;
        if ((*(v100 + 48))(v33, 1, v75) == 1)
        {
          v102 = v183;
          v100 = v188;
          v103 = v99;
          v104 = v180;
        }

        else
        {
          v104 = v180;
          v102 = v183;
          (*(v76 + 16))(v180, &v33[*(v75 + 56)], v183);
          v101 = 0;
          v103 = v75;
        }

        (*(v100 + 8))(v33, v103);
        (*(v76 + 56))(v104, v101, 1, v102);
        v154 = v97;
        v155 = v174;
        v61 = Optional<A>.encode(_:)(v154, v174, *(v168 + 8));
        (*(v173 + 8))(v104, v155);
        return v61;
      }

      v131 = *(v187 + v186[18]);
      if (v131)
      {
        v132 = [v131 version];
      }

      else
      {
        v132 = 0;
      }

      v74 = [v97 bindLongParameter_];
      goto LABEL_71;
    }

    v90 = v185;
    if (v188 == 192)
    {
      v106 = v68;
      v107 = v66;
      v108 = v62;
      v109 = v67;
      (*(v67 + 16))(v42, v187 + v186[12], v62);
      v110 = *(v90 - 8);
      if ((*(v110 + 48))(v42, 1, v90) == 1)
      {
        (*(v109 + 8))(v42, v108);
        v96 = 0;
      }

      else
      {
        (*(v106 + 16))(v55, v42, v107);
        (*(v110 + 8))(v42, v90);
        (*(v106 + 32))(v58, v55, v107);
        swift_dynamicCast();
        LODWORD(v198) = DWORD2(v198);
        v96 = sub_1CF9E8028();
      }
    }

    else
    {
      v91 = v62;
      if (v188 != 193)
      {
        v111 = v62;
        v112 = v67;
        v113 = v65;
        (*(v67 + 16))(v65, v187 + v186[12], v62);
        v114 = *(v90 - 8);
        v115 = (*(v114 + 48))(v113, 1, v90);
        v116 = v203;
        if (v115 == 1)
        {
          (*(v112 + 8))(v113, v111);
          v117 = v176;
          v118 = *(v176 - 8);
          v119 = 1;
          v120 = v175;
        }

        else
        {
          v142 = v184;
          v143 = v164;
          v144 = v183;
          (*(v184 + 16))(v164, v113 + *(v90 + 56), v183);
          (*(v114 + 8))(v113, v90);
          (*(v142 + 32))(v165, v143, v144);
          v145 = v163;
          v146 = v179;
          swift_dynamicCast();
          v117 = v176;
          v118 = *(v176 - 8);
          v120 = v175;
          (*(v118 + 16))(v175, v145, v176);
          (*(v178 + 8))(v145, v146);
          v119 = 0;
        }

        (*(v118 + 56))(v120, v119, 1, v117);
        v147 = v181;
        v61 = Optional<A>.encode(_:)(v116, v181, *(AssociatedConformanceWitness + 8));
        (*(v170 + 8))(v120, v147);
        return v61;
      }

      v92 = v68;
      v93 = v66;
      v94 = v67;
      (*(v67 + 16))(v39, v187 + v186[12], v62);
      v95 = *(v90 - 8);
      if ((*(v95 + 48))(v39, 1, v90) == 1)
      {
        (*(v94 + 8))(v39, v91);
        v96 = 0;
      }

      else
      {
        (*(v92 + 16))(v49, v39, v93);
        (*(v95 + 8))(v39, v90);
        (*(v92 + 32))(v52, v49, v93);
        swift_dynamicCast();
        if (v200)
        {
          v96 = 0;
        }

        else
        {
          v96 = sub_1CF9E81A8();
        }
      }
    }

    v159 = [v203 bindObjectParameter_];
    goto LABEL_74;
  }

  v85 = v203;
  if (v188 > 0x83u)
  {
    if (v188 > 0x85u)
    {
      if (v188 == 134)
      {
        v74 = [v203 bindBooleanParameter_];
LABEL_71:
        v160 = v74;
LABEL_75:
        v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v61;
      }

      v184 = v68;
      v188 = v66;
      v137 = v62;
      v138 = v67;
      (*(v67 + 16))(v45, v187 + v186[12], v62);
      v139 = v185;
      v140 = *(v185 - 8);
      if ((*(v140 + 48))(v45, 1, v185) == 1)
      {
        (*(v138 + 8))(v45, v137);
        v141 = 0;
      }

      else
      {
        v157 = v184;
        v158 = v188;
        (*(v184 + 16))(v61, v45, v188);
        (*(v140 + 8))(v45, v139);
        (*(v157 + 32))(v70, v61, v158);
        swift_dynamicCast();
        v141 = sub_1CF9E8028();
      }

      v159 = [v85 bindObjectParameter_];
LABEL_74:
      v160 = v159;
      swift_unknownObjectRelease();
      goto LABEL_75;
    }

    if (v188 == 132)
    {
      v89 = *(v187 + v186[13]);
LABEL_46:
      v200 = MEMORY[0x1E69E6530];
      *&v198 = v89;
      goto LABEL_52;
    }

    v133 = *(v187 + v186[14]);
    if (v133 != 6)
    {
LABEL_50:
      v134 = MEMORY[0x1E69E6530];
      goto LABEL_51;
    }
  }

  else
  {
    if (v188 <= 0x81u)
    {
      if (v188 == 128)
      {
        return Optional<A>.encode(_:)(v203, v181, *(AssociatedConformanceWitness + 8));
      }

      v105 = v186[9];
      goto LABEL_45;
    }

    if (v188 == 130)
    {
      v105 = v186[10];
LABEL_45:
      v89 = *(v187 + v105);
      goto LABEL_46;
    }

    v133 = *(v187 + v186[11]);
    if (v133 != 5)
    {
      goto LABEL_50;
    }
  }

  v133 = 0;
  v134 = 0;
  *(&v198 + 1) = 0;
  v199 = 0;
LABEL_51:
  *&v198 = v133;
  v200 = v134;
LABEL_52:
  v61 = sub_1CEFF8EA0(&v198);
  v136 = v135;
  sub_1CEFCCC44(&v198, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v136)
  {
    return v61;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t Optional<A>.encode(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    v17 = [a1 bindObjectParameter_];
    v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  }

  else
  {
    (*(v6 + 32))(v10, v14, v5);
    v18 = (*(a3 + 32))(a1, v5, a3);
    (*(v6 + 8))(v10, v5);
  }

  return v18;
}

id sub_1CF086728(char a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a2;
  if (!a1)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
        v8 = 1;
      }

      else
      {
        v8 = a5;
      }

      goto LABEL_25;
    }

    if (a5 != 2)
    {
      if (a5 == 3)
      {
        v8 = 3;
      }

      else if (a3 | a4)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }

      goto LABEL_25;
    }

LABEL_21:
    v8 = 2;
LABEL_25:
    v7 = [v6 bindLongParameter_];
    goto LABEL_26;
  }

  if (a1 != 1)
  {
    if (a5 == 2 || a5 == 1)
    {
      v9 = a3;
      if (!a3)
      {
LABEL_13:
        v7 = [a2 bindObjectParameter_];
        goto LABEL_26;
      }
    }

    else
    {
      if (a5)
      {
        goto LABEL_13;
      }

      v9 = a4;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    sub_1CF03C530(a3, a4, a5);
    v6 = sub_1CF1DF708(v9);
    sub_1CF03D7A8(a3, a4, a5);
    return v6;
  }

  if (a5)
  {
    v7 = [a2 bindLongParameter_];
LABEL_26:
    v14 = v7;
    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v6;
  }

  v18[3] = MEMORY[0x1E69E6530];
  v18[0] = a3;
  v6 = sub_1CEFF8EA0(v18);
  v13 = v12;
  sub_1CEFCCC44(v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v13)
  {
    LODWORD(v17) = 0;
    v16 = 213;
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_21;
  }

  return v6;
}

uint64_t sub_1CF08692C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v9 = MEMORY[0x1E69E6530];
    v8[0] = a4;
  }

  else
  {
    v9 = MEMORY[0x1E69E6810];
    v8[0] = a3;
  }

  v4 = sub_1CEFF8EA0(v8);
  v6 = v5;
  sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v6)
  {
    return v4;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF086A0C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ItemReconciliationHalf();
  if ((*(v1 + *(v5 + 76)) & 4) != 0)
  {
    return 2;
  }

  v6 = v5;
  v7 = v1 + *(a1 + 52);
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v10 = type metadata accessor for ItemReconciliationHalf();
  if ((*(v7 + v10[19]) & 4) != 0 || *(v1 + *(a1 + 56)) == 1)
  {
    return 2;
  }

  if ((*(v1 + v6[10]) & 8) != 0)
  {
    if (*(v1 + v6[14]))
    {
      v11 = v1 + v6[16];
      if (*(v11 + 16) || (*(v11 + 2) & 4) == 0)
      {
        if (*(v11 + 16) == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = (*(v1 + v6[9]) & 0x10) == 0;
          *(v1 + v6[9]);
        }

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  if ((*(v1 + *(a1 + 56)) - 1) < 4u || (*(v7 + v10[10]) & 8) == 0 || !*(v7 + v10[13]))
  {
    return 2;
  }

  v13 = v10;
  v14 = sub_1CF07CD80(a1);
  v15 = v7 + v13[16];
  v16 = *(v15 + 16);
  if (!v14)
  {
    if (!*(v15 + 16))
    {
      if (*v15 == 2)
      {
        return 2;
      }

      goto LABEL_21;
    }

    return 1;
  }

  if (*(v15 + 16))
  {
    return 1;
  }

LABEL_21:
  if ((*(v15 + 2) & 4) == 0)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1CF086B78(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1CF086BF8(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF086BF8(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  sub_1CEFF95C8(a1, v12);
  if (!v13)
  {
    sub_1CF0248E0(v12);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v5 = *((*v3 & *v1) + 0x60);
  v6 = *((*v11 & *v3) + 0x60);
  v7 = *(*(*(v4 + 88) + 40) + 8);
  v8 = *(v4 + 80);
  v9 = sub_1CF9E6868();

  return v9 & 1;
}

void sub_1CF086D1C(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1CF086D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v66 = a3;
  v67 = a4;
  v68 = a2;
  v65 = a1;
  v6 = *v4;
  v7 = v6[77];
  v8 = v6[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v6[78];
  v11 = v6[76];
  v71 = AssociatedTypeWitness;
  v72 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - v15;
  v63 = v8;
  v64 = v7;
  v71 = v8;
  v72 = v11;
  v17 = v11;
  AssociatedConformanceWitness = v7;
  v74 = v10;
  v18 = type metadata accessor for PersistenceTrigger.AffectedReconciliation();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  (*(v22 + 16))(&v63 - v20, v65, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v53 = (*(v13 + 32))(v16, v21, v12);
        MEMORY[0x1EEE9AC00](v53);
        v25 = &v63 - 6;
        v55 = v66;
        v54 = v67;
        *(&v63 - 4) = v5;
        *(&v63 - 3) = v55;
        v28 = v68;
        *(&v63 - 2) = v54;
        *(&v63 - 1) = v28;
        v29 = sub_1CF24CFA4;
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v34 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v35 = *v34;
      v36 = v34[1];
      v37 = (*(v13 + 32))(v16, v21, v12);
      MEMORY[0x1EEE9AC00](v37);
      v38 = &v63 - 8;
      *(&v63 - 6) = v5;
      *(&v63 - 5) = v35;
      v39 = v68;
      *(&v63 - 4) = v36;
      *(&v63 - 3) = v39;
      v40 = v67;
      *(&v63 - 2) = v66;
      *(&v63 - 1) = v40;
      v41 = sub_1CF24CFD4;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v13 + 32))(v16, v21, v12);
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1CF9E7948();
        v69 = v71;
        v70 = v72;
        MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
        MEMORY[0x1D3868CC0](*(v5 + *(*v5 + 656)), *(v5 + *(*v5 + 656) + 8));
        MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA369F0);
        AssociatedConformanceWitness = 3044466;
        v74 = 0xE300000000000000;
        v30 = v68;
        v31 = sub_1CF01DAF0(v16, v68, sub_1CF01DEA4, &v71, v63, v11, v64, v10);
        MEMORY[0x1D3868CC0](v31);

        MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
        v32 = v66(v30);
        MEMORY[0x1D3868CC0](v32);

        v33 = v69;
LABEL_20:
        (*(v13 + 8))(v16, v12);
        return v33;
      }

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v48 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v49 = *v48;
      v50 = v48[1];
      v51 = (*(v13 + 32))(v16, v21, v12);
      MEMORY[0x1EEE9AC00](v51);
      v38 = &v63 - 8;
      *(&v63 - 6) = v5;
      *(&v63 - 5) = v49;
      v39 = v68;
      *(&v63 - 4) = v50;
      *(&v63 - 3) = v39;
      v52 = v67;
      *(&v63 - 2) = v66;
      *(&v63 - 1) = v52;
      v41 = sub_1CF24CFEC;
    }

    v33 = sub_1CF01DAF0(v16, v39, v41, v38, v63, v17, v64, v10);

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v42 = (*(v13 + 32))(v16, v21, v12);
      MEMORY[0x1EEE9AC00](v42);
      v25 = &v63 - 6;
      v44 = v66;
      v43 = v67;
      *(&v63 - 4) = v5;
      *(&v63 - 3) = v44;
      v28 = v68;
      *(&v63 - 2) = v43;
      *(&v63 - 1) = v28;
      v29 = sub_1CF24CF8C;
    }

    else
    {
      v59 = (*(v13 + 32))(v16, v21, v12);
      MEMORY[0x1EEE9AC00](v59);
      v25 = &v63 - 6;
      v61 = v66;
      v60 = v67;
      *(&v63 - 4) = v5;
      *(&v63 - 3) = v61;
      v28 = v68;
      *(&v63 - 2) = v60;
      *(&v63 - 1) = v28;
      v29 = sub_1CF24CF74;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v45 = (*(v13 + 32))(v16, v21, v12);
    MEMORY[0x1EEE9AC00](v45);
    v25 = &v63 - 6;
    v47 = v66;
    v46 = v67;
    *(&v63 - 4) = v5;
    *(&v63 - 3) = v47;
    v28 = v68;
    *(&v63 - 2) = v46;
    *(&v63 - 1) = v28;
    v29 = sub_1CF24CF5C;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v24 = (*(v13 + 32))(v16, v21, v12);
    MEMORY[0x1EEE9AC00](v24);
    v25 = &v63 - 6;
    v27 = v66;
    v26 = v67;
    *(&v63 - 4) = v5;
    *(&v63 - 3) = v27;
    v28 = v68;
    *(&v63 - 2) = v26;
    *(&v63 - 1) = v28;
    v29 = sub_1CF24CF44;
LABEL_19:
    v33 = sub_1CF01DAF0(v16, v28, v29, v25, v63, v11, v64, v10);
    goto LABEL_20;
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(v5 + *(*v5 + 656)), *(v5 + *(*v5 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA36A20);
  v69 = 34;
  v56 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v56);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v69 = 2;
  v57 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v57);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v58 = v66(v68);
  MEMORY[0x1D3868CC0](v58);

  return v71;
}

uint64_t sub_1CF087658(void *a1, void *a2)
{
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E80, &qword_1CFA18038);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
    v10 = *(*(v9 - 8) + 56);
    v25 = v6;
    v10(v6, 1, 1, v9);
    v22 = v8;
    result = sub_1CF0878B4();
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (result + 40);
      while (v13 < *(v11 + 16))
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        swift_unknownObjectRetain();
        v17 = objc_autoreleasePoolPush();
        ObjectType = swift_getObjectType();
        v19 = MEMORY[0x1EEE9AC00](ObjectType);
        v21 = v23;
        v20 = v24;
        *(&v22 - 4) = v25;
        *(&v22 - 3) = v21;
        *(&v22 - 2) = v20;
        (*(v16 + 24))(sub_1CF088E5C, v19);
        if (v2)
        {

          objc_autoreleasePoolPop(v17);
          swift_unknownObjectRelease();

          return sub_1CEFCCC44(v25, &unk_1EC4C4E80, &qword_1CFA18038);
        }

        ++v13;
        objc_autoreleasePoolPop(v17);
        result = swift_unknownObjectRelease();
        v14 += 2;
        if (v12 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return sub_1CEFCCC44(v25, &unk_1EC4C4E80, &qword_1CFA18038);
    }
  }

  return result;
}

void *sub_1CF0878B4()
{
  isUniquelyReferenced_nonNull_native = objc_sync_enter(v0);
  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_22:
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v28 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *&v0[v2];
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1CEFF6FC0(*(v3 + 56) + ((v9 << 10) | (16 * v11)), v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = v31;
      isUniquelyReferenced_nonNull_native = sub_1CEFF70F4(v30);
      if (Strong)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1CF087B64(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v16 = v10[2];
    v15 = v10[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v29 = v16 + 1;
      v19 = v10;
      v20 = v16;
      isUniquelyReferenced_nonNull_native = sub_1CF087B64((v15 > 1), v16 + 1, 1, v19);
      v16 = v20;
      v17 = v29;
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v17;
    v18 = &v10[2 * v16];
    v18[4] = Strong;
    v18[5] = v13;
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v14 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_5;
    }
  }

  if (v10[2] != *(*&v0[v2] + 16))
  {
    v21 = *&v0[v2];

    v23 = sub_1CF8DF014(v22);

    v24 = *&v0[v2];
    *&v0[v2] = v23;
  }

  v25 = objc_sync_exit(v0);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v28 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v27, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v10;
}

void (*sub_1CF087B88(uint64_t (*a1)(uint64_t)))(uint64_t *, void)
{
  v158 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4860, &qword_1CFA16E18);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v152 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v156 = (&v140 - v5);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4868, &qword_1CFA16E20);
  v6 = *(*(v151 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v151);
  v146 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v140 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v11 = *(v10 - 8);
  v154 = v10;
  v155 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v147 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v149 = &v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v148 = &v140 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v153 = &v140 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v140 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v140 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v140 - v33);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v140 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v140 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v140 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v140 - v45;
  v47 = v161;
  result = v158(v44);
  if (!v47)
  {
    v140 = v37;
    v142 = v40;
    v141 = v28;
    v143 = v31;
    v158 = v34;
    v144 = v43;
    v145 = v46;
    v161 = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
    if ((*(*(v49 - 8) + 48))(v23, 1, v49) == 1)
    {
      v50 = &unk_1EC4C4870;
      v51 = &unk_1CFA18040;
      v52 = v23;
      return sub_1CEFCCC44(v52, v50, v51);
    }

    v53 = *(v49 + 48);
    v54 = v23[*(v49 + 64)];
    v55 = v145;
    sub_1CEFE55D0(v23, v145, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v56 = v144;
    sub_1CEFE55D0(&v23[v53], v144, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v57 = v156;
    v58 = v157;
    sub_1CF7AD800(v56, v156);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
    v60 = *(*(v59 - 8) + 48);
    if (v60(v57, 1, v59) == 1)
    {
      sub_1CEFCCC44(v57, &qword_1EC4C4860, &qword_1CFA16E18);
      v61 = v152;
      sub_1CF7AD800(v55, v152);
      if (v60(v61, 1, v59) == 1)
      {
        sub_1CEFCCC44(v56, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v55, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v50 = &qword_1EC4C4860;
        v51 = &qword_1CFA16E18;
        v52 = v61;
        return sub_1CEFCCC44(v52, v50, v51);
      }

      v82 = v61;
      v83 = v146;
      sub_1CEFE55D0(v82, v146, &unk_1EC4BE360, &qword_1CF9FE650);
      v84 = v149;
      sub_1CEFE55D0(v83, v149, &unk_1EC4BE360, &qword_1CF9FE650);
      v85 = v147;
      sub_1CEFCCBDC(v84, v147, &unk_1EC4BE360, &qword_1CF9FE650);
      v86 = v143;
      sub_1CEFCCBDC(v56, v143, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v87 = v58;
      v88 = sub_1CF9E6108();
      v89 = sub_1CF9E7298();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v159[0] = v157;
        *v90 = 138412802;
        *(v90 + 4) = v87;
        v156 = v91;
        *v91 = v87;
        *(v90 + 12) = 2080;
        v92 = v87;
        v93 = sub_1CF814758();
        v95 = v94;
        sub_1CEFCCC44(v85, &unk_1EC4BE360, &qword_1CF9FE650);
        v96 = sub_1CEFD0DF0(v93, v95, v159);

        *(v90 + 14) = v96;
        *(v90 + 22) = 2080;
        v97 = v141;
        sub_1CEFCCBDC(v86, v141, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v98 = v154;
        if ((*(v155 + 48))(v97, 1, v154) == 1)
        {
          v99 = 0x3E6C696E3CLL;
          sub_1CEFCCC44(v97, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v100 = 0xE500000000000000;
        }

        else
        {
          v99 = sub_1CF814758();
          v100 = v118;
          sub_1CEFCCC44(v97, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        sub_1CEFCCC44(v143, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v119 = sub_1CEFD0DF0(v99, v100, v159);

        *(v90 + 24) = v119;
        _os_log_impl(&dword_1CEFC7000, v88, v89, "📖  %@: registering item deletion %s -> %s", v90, 0x20u);
        v120 = v156;
        sub_1CEFCCC44(v156, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v120, -1, -1);
        v121 = v157;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v121, -1, -1);
        MEMORY[0x1D386CDC0](v90, -1, -1);

        v56 = v144;
        v114 = v145;
        v84 = v149;
      }

      else
      {

        sub_1CEFCCC44(v86, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v85, &unk_1EC4BE360, &qword_1CF9FE650);
        v98 = v154;
        v114 = v145;
      }

      v122 = *v84;
      v123 = *(v84 + 8);
      v124 = v158;
      (*(v155 + 56))(v158, 1, 1, v98);
      swift_beginAccess();
      sub_1CF1C9A6C(v124, v122, v123);
      swift_endAccess();
      v125 = *v84;
      v126 = *(v84 + 8);
      swift_beginAccess();
      sub_1CF6E9500(v160, v125, v126);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_1CF9E6288();
      if (*v127 != -1)
      {
        ++*v127;
        result(v159, 0);

        sub_1CEFCCC44(v84, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v56, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v52 = v114;
LABEL_30:
        v50 = &qword_1EC4C1B40;
        v51 = &unk_1CF9FCB70;
        return sub_1CEFCCC44(v52, v50, v51);
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v62 = *(v57 + *(v59 + 48));
    v64 = v150;
    v63 = v151;
    v65 = *(v151 + 48);
    sub_1CEFE55D0(v57, v150, &unk_1EC4BE360, &qword_1CF9FE650);
    *(v64 + v65) = v62;
    v66 = *(v64 + *(v63 + 48));
    v67 = v153;
    sub_1CEFE55D0(v64, v153, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v66 & v54)
    {
      v68 = v58;
      v69 = sub_1CF9E6108();
      v70 = sub_1CF9E7298();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v145;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v68;
        *v74 = v68;
        v75 = v68;
        _os_log_impl(&dword_1CEFC7000, v69, v70, "📖  %@: item get updated and we're ask to invalidate the children, reset", v73, 0xCu);
        sub_1CEFCCC44(v74, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v74, -1, -1);
        MEMORY[0x1D386CDC0](v73, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v77 = v144;
      if (Strong)
      {
        v78 = Strong;
        v79 = swift_allocObject();
        *(v79 + 16) = v68;
        v80 = v68;
        sub_1CEFD4024("reset()", 7, 2, nullsub_1, 0, sub_1CF7BA9C8, v79);
      }

      sub_1CEFCCC44(v67, &unk_1EC4BE360, &qword_1CF9FE650);
      v81 = v77;
    }

    else
    {
      v72 = v145;
      v101 = v142;
      sub_1CEFCCBDC(v145, v142, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v102 = v148;
      sub_1CEFCCBDC(v67, v148, &unk_1EC4BE360, &qword_1CF9FE650);
      v103 = v58;
      v104 = sub_1CF9E6108();
      v105 = sub_1CF9E7298();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v159[0] = v108;
        *v106 = 138412802;
        *(v106 + 4) = v103;
        *v107 = v103;
        *(v106 + 12) = 2080;
        v109 = v140;
        sub_1CEFCCBDC(v101, v140, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v110 = (*(v155 + 48))(v109, 1, v154);
        v111 = v103;
        if (v110 == 1)
        {
          v112 = 0x3E6C696E3CLL;
          sub_1CEFCCC44(v109, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v113 = 0xE500000000000000;
        }

        else
        {
          v112 = sub_1CF814758();
          v113 = v128;
          sub_1CEFCCC44(v109, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        sub_1CEFCCC44(v142, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v129 = sub_1CEFD0DF0(v112, v113, v159);

        *(v106 + 14) = v129;
        *(v106 + 22) = 2080;
        v130 = v148;
        v131 = sub_1CF814758();
        v133 = v132;
        sub_1CEFCCC44(v130, &unk_1EC4BE360, &qword_1CF9FE650);
        v134 = sub_1CEFD0DF0(v131, v133, v159);

        *(v106 + 24) = v134;
        _os_log_impl(&dword_1CEFC7000, v104, v105, "📖  %@: registering item update %s -> %s", v106, 0x20u);
        sub_1CEFCCC44(v107, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v107, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v108, -1, -1);
        MEMORY[0x1D386CDC0](v106, -1, -1);

        v117 = v144;
        v72 = v145;
        v67 = v153;
        v115 = v154;
        v116 = v158;
      }

      else
      {

        sub_1CEFCCC44(v102, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v101, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v115 = v154;
        v116 = v158;
        v117 = v144;
      }

      v135 = *v67;
      v136 = *(v67 + 8);
      sub_1CEFCCBDC(v67, v116, &unk_1EC4BE360, &qword_1CF9FE650);
      (*(v155 + 56))(v116, 0, 1, v115);
      swift_beginAccess();
      sub_1CF1C9A6C(v116, v135, v136);
      swift_endAccess();
      v137 = *v67;
      v138 = *(v67 + 8);
      swift_beginAccess();
      sub_1CF8DD3D8(v137, v138, v160);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_1CF9E6288();
      if (*v139 == -1)
      {
        goto LABEL_34;
      }

      ++*v139;
      result(v159, 0);

      sub_1CEFCCC44(v67, &unk_1EC4BE360, &qword_1CF9FE650);
      v81 = v117;
    }

    sub_1CEFCCC44(v81, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v52 = v72;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1CF088BB8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF088C14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E80, &qword_1CFA18038);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v21 = a1;
  sub_1CEFCCBDC(a1, &v21 - v13, &unk_1EC4C4E80, &qword_1CFA18038);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4870, &unk_1CFA18040);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    v18 = sub_1CEFCCC44(v14, &unk_1EC4C4E80, &qword_1CFA18038);
    result = v22(v18);
    if (v3)
    {
      return result;
    }

    (*(v16 + 56))(v11, 0, 1, v15);
    v20 = v21;
    sub_1CEFDA9E0(v11, v21, &unk_1EC4C4E80, &qword_1CFA18038);
    sub_1CEFCCBDC(v20, v8, &unk_1EC4C4E80, &qword_1CFA18038);
    result = v17(v8, 1, v15);
    v14 = v8;
    if (result == 1)
    {
      __break(1u);
      return result;
    }
  }

  return sub_1CEFE55D0(v14, v23, &unk_1EC4C4870, &unk_1CFA18040);
}

void sub_1CF088EA0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + *a2);
    v5 = Strong;
    swift_unknownObjectRetain();

    if (v4)
    {
      ObjectType = swift_getObjectType();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_7_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 34) = 0;
}

void sub_1CF088FC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 indexer];

      if (v4)
      {
        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF0892D0;
        aBlock[3] = &block_descriptor_2016;
        v5 = _Block_copy(aBlock);
        [v4 signalChangesWithCompletionHandler_];

        _Block_release(v5);
        v1 = v4;
      }
    }
  }
}

id schedulers()
{
  if (schedulers_onceToken != -1)
  {
    schedulers_cold_1();
  }

  v1 = schedulers_allSchedulers;

  return v1;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1CF0892D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1CF089324(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *a1;
  v10 = sub_1CF03D760();
  return sub_1CF03E148(v10, 0, 0, 0, a1 + *(*a1 + 576), a3, a4, a2, *(v9 + 544), *(v9 + 552), *(v8 + 560), *(v8 + 568));
}

uint64_t sub_1CF089430(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  sub_1CF9E5CC8();
  v25 = *MEMORY[0x1E6967298];
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v7 + 32))(v16 + v13, v10, v6);
  v17 = (v16 + v14);
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;
  v20 = v28;
  v19 = v29;
  *(v16 + v15) = v28;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v21 = v19;

  v22 = v20;
  sub_1CF08972C(v25, 0, sub_1CF03F710, v16);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1CF089628()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

void sub_1CF08972C(void *a1, void *a2, void (*a3)(uint64_t, id, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong session];
  }

  else
  {
    v11 = 0;
  }

  objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v12 = a2;
  v13 = a1;
  v14 = sub_1CF089C88(v13, a2, 0, 1);

  if (v11)
  {
    [v11 registerLifetimeExtensionForObject_];
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 userEnabled];

    if (v17)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
      v19 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v5 + 280) itemIdentifier:v13];
      v41 = v18;
      [v18 setEnumeratedItemID_];

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        if ([v20 userEnabled])
        {
          v22 = [v21 session];
          v23 = [objc_opt_self() defaultStore];
          if ([v23 hasUpcallExecutionTimeLimits])
          {
            goto LABEL_14;
          }

          if (qword_1EC4BCCF0 != -1)
          {
            swift_once();
          }

          v24 = -1.0;
          if (byte_1EC4BF020 == 1)
          {
LABEL_14:
            [v23 upcallExecutionTimeLimitBase];
            v24 = v25;
          }

          v26 = [v22 newFileProviderProxyWithTimeout:0 pid:v24];
          swift_unknownObjectRelease();
          goto LABEL_21;
        }
      }

      v26 = sub_1CF2F1F6C();
LABEL_21:
      v30 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31 && (v32 = v31, v33 = [v31 session], v32, v33))
      {
        v34 = v12;
        if (!a2)
        {
          v34 = [objc_opt_self() requestForSelf];
        }

        v35 = v12;
        v36 = [v34 nsfpRequestForSession:v33 isSpeculative:0];

        [v36 setDomainVersion_];
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
      }

      v37 = swift_allocObject();
      v37[2] = v11;
      v37[3] = v14;
      v37[4] = v13;
      v37[5] = a3;
      v37[6] = a4;
      aBlock[4] = sub_1CF2F66FC;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_832;
      v38 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v39 = v14;

      v40 = v13;

      [v26 fetchAndStartEnumeratingWithSettings:v41 observer:v30 request:v36 completionHandler:v38];
      _Block_release(v38);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }
  }

  v27 = sub_1CF2F20BC();
  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  *(v28 + 24) = v14;
  swift_unknownObjectRetain();
  v29 = v14;
  a3(v27, v29, sub_1CF2F6590, v28);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id sub_1CF089C88(void *a1, void *a2, uint64_t a3, char a4)
{
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = a1;
  if (a2)
  {
    v9 = a1;
    v10 = a2;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = a1;
    v10 = [v11 requestForSelf];
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v10;
  v13 = a2;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = sub_1CF089D74(a3, a4 & 1);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FPFileTreeLifetimeExtender();
  return objc_msgSendSuper2(&v15, sel_init);
}

double sub_1CF089D74(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultStore];
  if ([v4 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_5;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4BF020)
  {
LABEL_5:
    [v4 upcallExecutionTimeLimitBase];
    v6 = v5;
    if (a2)
    {
    }

    else
    {
      [v4 upcallExecutionTimeLimitPerKiloByte];
      v8 = v7;

      return v6 + a1 / 1000.0 * v8;
    }
  }

  else
  {

    return -1.0;
  }

  return v6;
}

uint64_t getEnumTagSinglePayload for Fields(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for JobSchedulingOrder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JobSchedulingOrder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

BOOL sub_1CF08A090(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

BOOL sub_1CF08A14C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1CF08A17C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1CF08A1A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1CF08A2A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CF08A2D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_1CF08A310@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CF08A3C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CF9E5B88();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CF08A4C8()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF08A500()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08A548(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A568(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1CF08A630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A650(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF08A670(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1CF08A698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1CF08A6F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_historyPurged;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1CF08A744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_previousStreamUUID;
  swift_beginAccess();
  return sub_1CF0160C0(v3 + v4, a2);
}

uint64_t sub_1CF08A7A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1CF08A7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon22FPDFSEventStreamConfig_lastPurgedEventID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1CF08A994()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF08AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CF08AF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF08B03C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  sub_1CF8E3958(v0);

  return swift_deallocObject();
}

uint64_t sub_1CF08B094()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF08B0CC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF08B1E0()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF08B294()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B360()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF08B4B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF08B500()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF08B540()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B604()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08B63C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08B6B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF08B6F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF08B738()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08B770()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF08B7A8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF08B7E0()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF08B868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_1CF08B944()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4BF1040;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1CF08B99C(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CF08B9D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF08BA54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1CF08BAD4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1CF08BB00()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08BC10()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF08BC58()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08BCA0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF08BCD8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF08BD10()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08BD48()
{
  v33 = *(v0 + 16);
  v34 = *(v0 + 40);
  v35 = type metadata accessor for ItemReconciliation();
  v31 = *(*(v35 - 8) + 64);
  v32 = *(*(v35 - 8) + 80);
  v30 = (v32 + 64) & ~v32;
  v1 = v0 + v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(v0 + v30, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v1, AssociatedTypeWitness);
  }

  v4 = type metadata accessor for ItemReconciliationHalf();
  v5 = v1 + v4[12];
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  if (!(*(*(v8 - 1) + 48))(v5, 1, v8))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
    v9 = *(v5 + v8[13]);

    (*(*(v7 - 8) + 8))(v5 + v8[14], v7);
    v10 = *(v5 + v8[15]);

    v11 = *(v5 + v8[16] + 8);
  }

  sub_1CF03D7A8(*(v1 + v4[16]), *(v1 + v4[16] + 8), *(v1 + v4[16] + 16));
  v12 = v1 + v4[17];
  v13 = *(v12 + 24);
  if (v13 >> 60 != 15 && (v13 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v12 + 16), v13);
  }

  v15 = v1 + *(v35 + 52);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = type metadata accessor for ItemReconciliationHalf();
  v19 = v15 + v18[12];
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for FileItemVersion();
  if (!(*(*(v22 - 1) + 48))(v19, 1, v22))
  {
    (*(*(v20 - 8) + 8))(v19, v20);
    v23 = *(v19 + v22[13]);

    (*(*(v21 - 8) + 8))(v19 + v22[14], v21);
    v24 = *(v19 + v22[15]);

    v25 = *(v19 + v22[16] + 8);
  }

  sub_1CF03D7A8(*(v15 + v18[16]), *(v15 + v18[16] + 8), *(v15 + v18[16] + 16));
  v26 = v15 + v18[17];
  v27 = *(v26 + 24);
  if (v27 >> 60 != 15 && (v27 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v26 + 16), v27);
  }

  v28 = *(v1 + *(v35 + 60));

  return swift_deallocObject();
}

uint64_t sub_1CF08C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 464);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  v16 = v15 <= 0;
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_1CF08C44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 464) = (a2 + 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF08C57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF08C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF08C670()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  if (*(v0 + 128))
  {
    v6 = *(v0 + 96);

    v7 = *(v0 + 128);

    v8 = *(v0 + 136);

    v9 = *(v0 + 152);
  }

  v10 = v3 & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v2;
  v12 = type metadata accessor for VFSItem(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v47 = v10;
    v13 = *(v11 + 40);

    v14 = v11 + v12[7];
    v15 = type metadata accessor for ItemMetadata();
    v16 = v15[7];
    v17 = sub_1CF9E5CF8();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(v14 + v16, v17);
    v19(v14 + v15[8], v17);
    v20 = *(v14 + v15[14] + 8);

    v21 = v15[30];
    if (!(*(v18 + 48))(v14 + v21, 1, v17))
    {
      v19(v14 + v21, v17);
    }

    v22 = *(v14 + v15[31]);

    v23 = *(v14 + v15[33]);

    v24 = (v14 + v15[34]);
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1CEFE4714(*v24, v25);
    }

    v26 = *(v14 + v15[38] + 8);

    v27 = v11 + v12[8];
    v28 = *(v27 + 16);
    v10 = v47;
    if (v28 != 1)
    {

      v29 = *(v27 + 48);

      v30 = *(v27 + 64);

      v31 = *(v27 + 88);

      v32 = *(v27 + 120);

      v33 = *(v27 + 136);

      v34 = *(v27 + 152);

      v35 = *(v27 + 168);

      v36 = *(v27 + 184);

      if (*(v27 + 192))
      {

        v37 = *(v27 + 200);
      }

      v38 = *(v27 + 224);

      v39 = *(v27 + 240);
    }

    v40 = v12[12];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v41 - 8) + 48))(v11 + v40, 1, v41))
    {
      v42 = sub_1CF9E5A58();
      v43 = *(v42 - 8);
      if (!(*(v43 + 48))(v11 + v40, 1, v42))
      {
        (*(v43 + 8))(v11 + v40, v42);
      }
    }
  }

  v44 = *(v0 + v10 + 32);
  if (v44 >> 60 != 15 && (v44 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v10 + 24), v44);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08CABC()
{
  v1 = v0[2];

  v2 = v0[9];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1CF08CB38()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v38 = (v39 + 24) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((v38 + v37) & 0xFFFFFFFFFFFFFFF8) + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08CEA4()
{
  v1 = type metadata accessor for VFSItem(0);
  v36 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v37;
  v3 = *(v0 + v37 + 40);

  v4 = v0 + v37 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = *(v0 + ((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF08D20C()
{
  sub_1CF2B0310(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF08D244()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF08D27C()
{
  v1 = v0[2];

  v2 = v0[9];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  v7 = v0[25];

  v8 = v0[29];

  v9 = v0[30];

  v10 = v0[32];

  return swift_deallocObject();
}

uint64_t sub_1CF08D2FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 192);

  v7 = *(v0 + 224);

  v8 = *(v0 + 232);

  v9 = *(v0 + 248);

  v10 = *(v0 + 264);

  return swift_deallocObject();
}

uint64_t sub_1CF08D38C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF08D480()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[18];

  v7 = v0[23];
  if (v7 >> 60 != 15 && (v7 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(v0[22], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08D51C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = (((v43 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = v0 + v2;
  v7 = *(v6 + 24);

  v8 = v6 + v1[12];
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v8 + v10, v11);
  v13(v8 + v9[8], v11);
  v14 = *(v8 + v9[14] + 8);

  v15 = v9[30];
  if (!(*(v12 + 48))(v8 + v15, 1, v11))
  {
    v13(v8 + v15, v11);
  }

  v16 = *(v8 + v9[31]);

  v17 = *(v8 + v9[33]);

  v18 = (v8 + v9[34]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v8 + v9[38] + 8);

  v22 = *(v0 + v3);

  v23 = *(v0 + v43 + 32);

  v24 = *(v0 + v43 + 64);

  v25 = *(v0 + v43 + 72);

  v26 = *(v0 + v43 + 88);

  v27 = *(v0 + v4 + 24);
  if (v27 >> 60 != 15 && (v27 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v4 + 16), v27);
  }

  v29 = v0 + v20;
  v30 = *(v0 + v20 + 16);
  if (v30 != 1)
  {

    v31 = *(v29 + 48);

    v32 = *(v29 + 64);

    v33 = *(v29 + 88);

    v34 = *(v29 + 120);

    v35 = *(v29 + 136);

    v36 = *(v29 + 152);

    v37 = *(v29 + 168);

    v38 = *(v29 + 184);

    if (*(v29 + 192))
    {

      v39 = *(v29 + 200);
    }

    v40 = *(v29 + 224);

    v41 = *(v29 + 240);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08D820()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF08D870()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (((v44 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 24);

  v6 = v4 + v1[12];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = (((v45 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v6 + v7[31]);

  v16 = *(v6 + v7[33]);

  v17 = (v6 + v7[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v6 + v7[38] + 8);

  v20 = *(v0 + v3);

  v21 = *(v0 + v42);

  v22 = *(v0 + v43 + 8);

  v23 = *(v0 + v44 + 32);

  v24 = *(v0 + v44 + 64);

  v25 = *(v0 + v44 + 72);

  v26 = *(v0 + v44 + 88);

  v27 = *(v0 + v45);

  v28 = v0 + v14;
  v29 = *(v0 + v14 + 16);
  if (v29 != 1)
  {

    v30 = *(v28 + 48);

    v31 = *(v28 + 64);

    v32 = *(v28 + 88);

    v33 = *(v28 + 120);

    v34 = *(v28 + 136);

    v35 = *(v28 + 152);

    v36 = *(v28 + 168);

    v37 = *(v28 + 184);

    if (*(v28 + 192))
    {

      v38 = *(v28 + 200);
    }

    v39 = *(v28 + 224);

    v40 = *(v28 + 240);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08DB88()
{
  v1 = v0[6];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1CF08DBD8()
{
  v1 = type metadata accessor for VFSItem(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  v42 = (v43 + 40) & ~v43;
  v4 = v0 + v42;
  v5 = *(v0 + v42 + 40);

  v6 = v0 + v42 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33))
  {
    v34 = sub_1CF9E5A58();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v4 + v32, 1, v34))
    {
      (*(v35 + 8))(v4 + v32, v34);
    }
  }

  v36 = (v41 + v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v0 + v36);

  v39 = *(v0 + v37 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF08DF60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF08DF98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v2 = (*(v1 + 80) + 112) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v114 = *(*(v5 - 8) + 80);
  v111 = (v4 + v114 + 8) & ~v114;
  v112 = (v111 + *(*(v5 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v112 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  v117 = *(v8 + 80);
  v113 = *(v8 + 64);
  v9 = v0[2];

  v10 = v0[3];

  v11 = v0[4];

  v12 = v0[7];

  v13 = v0[9];

  v14 = v0[10];

  v15 = v0[13];

  v16 = v0 + v2;
  v115 = v6;
  v116 = v7;
  if (!(*(v8 + 48))(v16, 1, v7))
  {
    v110 = v5;
    v17 = *(v16 + 5);

    v18 = &v16[*(v7 + 28)];
    v19 = type metadata accessor for ItemMetadata();
    v20 = v19[7];
    v21 = sub_1CF9E5CF8();
    v22 = *(v21 - 8);
    v23 = *(v22 + 8);
    v23(&v18[v20], v21);
    v23(&v18[v19[8]], v21);
    v24 = *&v18[v19[14] + 8];

    v25 = v19[30];
    if (!(*(v22 + 48))(&v18[v25], 1, v21))
    {
      v23(&v18[v25], v21);
    }

    v26 = *&v18[v19[31]];

    v27 = *&v18[v19[33]];

    v28 = &v18[v19[34]];
    v29 = v28[1];
    if (v29 >> 60 != 15)
    {
      sub_1CEFE4714(*v28, v29);
    }

    v30 = *&v18[v19[38] + 8];

    v6 = (v112 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = &v16[v116[8]];
    v32 = *(v31 + 2);
    v4 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
    v5 = v110;
    if (v32 != 1)
    {

      v33 = *(v31 + 6);

      v34 = *(v31 + 8);

      v35 = *(v31 + 11);

      v36 = *(v31 + 15);

      v37 = *(v31 + 17);

      v38 = *(v31 + 19);

      v39 = *(v31 + 21);

      v40 = *(v31 + 23);

      if (*(v31 + 24))
      {

        v41 = *(v31 + 25);
      }

      v42 = *(v31 + 28);

      v43 = *(v31 + 30);
    }

    v44 = v116[12];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v45 - 8) + 48))(&v16[v44], 1, v45))
    {
      v46 = sub_1CF9E5A58();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(&v16[v44], 1, v46))
      {
        (*(v47 + 8))(&v16[v44], v46);
      }
    }
  }

  v48 = v117 + v6;
  v49 = *(v0 + v3 + 24);

  v50 = *(v0 + v4);

  v51 = *(v0 + v111 + 24);

  v52 = v0 + v111 + *(v5 + 40);
  v53 = type metadata accessor for ItemMetadata();
  v54 = v53[7];
  v55 = sub_1CF9E5CF8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v57(&v52[v54], v55);
  v57(&v52[v53[8]], v55);
  v58 = *&v52[v53[14] + 8];

  v59 = v53[30];
  v60 = *(v56 + 48);
  if (!v60(&v52[v59], 1, v55))
  {
    v57(&v52[v59], v55);
  }

  v61 = v48 + 248;
  v62 = *&v52[v53[31]];

  v63 = *&v52[v53[33]];

  v64 = &v52[v53[34]];
  v65 = v64[1];
  if (v65 >> 60 != 15)
  {
    sub_1CEFE4714(*v64, v65);
  }

  v66 = v61 & ~v117;
  v67 = *&v52[v53[38] + 8];

  v68 = *(v0 + v112 + 8);

  v69 = (v0 + v115);
  v70 = *(v0 + v115 + 16);
  if (v70 != 1)
  {

    v71 = v69[6];

    v72 = v69[8];

    v73 = v69[11];

    v74 = v69[15];

    v75 = v69[17];

    v76 = v69[19];

    v77 = v69[21];

    v78 = v69[23];

    if (v69[24])
    {

      v79 = v69[25];
    }

    v80 = v69[28];

    v81 = v69[30];
  }

  v82 = v0 + v66;
  v83 = *(v0 + v66 + 40);

  v84 = v0 + v66 + v116[7];
  v57(&v84[v53[7]], v55);
  v57(&v84[v53[8]], v55);
  v85 = *&v84[v53[14] + 8];

  v86 = v53[30];
  if (!v60(&v84[v86], 1, v55))
  {
    v57(&v84[v86], v55);
  }

  v87 = *&v84[v53[31]];

  v88 = *&v84[v53[33]];

  v89 = &v84[v53[34]];
  v90 = v89[1];
  if (v90 >> 60 != 15)
  {
    sub_1CEFE4714(*v89, v90);
  }

  v91 = *&v84[v53[38] + 8];

  v92 = &v82[v116[8]];
  v93 = *(v92 + 2);
  if (v93 != 1)
  {

    v94 = *(v92 + 6);

    v95 = *(v92 + 8);

    v96 = *(v92 + 11);

    v97 = *(v92 + 15);

    v98 = *(v92 + 17);

    v99 = *(v92 + 19);

    v100 = *(v92 + 21);

    v101 = *(v92 + 23);

    if (*(v92 + 24))
    {

      v102 = *(v92 + 25);
    }

    v103 = *(v92 + 28);

    v104 = *(v92 + 30);
  }

  v105 = v116[12];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v106 - 8) + 48))(&v82[v105], 1, v106))
  {
    v107 = sub_1CF9E5A58();
    v108 = *(v107 - 8);
    if (!(*(v108 + 48))(&v82[v105], 1, v107))
    {
      (*(v108 + 8))(&v82[v105], v107);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08E878()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15 && (v1 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08E8CC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF08E91C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 24);

  v7 = v5 + v1[12];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v12(v7 + v8[8], v10);
  v13 = *(v7 + v8[14] + 8);

  v14 = v8[30];
  if (!(*(v11 + 48))(v7 + v14, 1, v10))
  {
    v12(v7 + v14, v10);
  }

  v15 = *(v7 + v8[31]);

  v16 = *(v7 + v8[33]);

  v17 = (v7 + v8[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v7 + v8[38] + 8);

  v21 = *(v0 + v3);

  v22 = *(v0 + v4 + 24);
  if (v22 >> 60 != 15 && (v22 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v4 + 16), v22);
  }

  v24 = v0 + v19;
  v25 = *(v0 + v19 + 16);
  if (v25 != 1)
  {

    v26 = *(v24 + 48);

    v27 = *(v24 + 64);

    v28 = *(v24 + 88);

    v29 = *(v24 + 120);

    v30 = *(v24 + 136);

    v31 = *(v24 + 152);

    v32 = *(v24 + 168);

    v33 = *(v24 + 184);

    if (*(v24 + 192))
    {

      v34 = *(v24 + 200);
    }

    v35 = *(v24 + 224);

    v36 = *(v24 + 240);
  }

  v37 = *(v0 + ((v19 + 255) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF08EBEC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2 + 7;
  v4 = v0[2];

  v5 = v0[4];

  v6 = v0[5];

  v7 = v0 + v2;
  v8 = *(v7 + 3);

  v9 = &v7[v1[12]];
  v10 = type metadata accessor for ItemMetadata();
  v11 = v10[7];
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(&v9[v11], v12);
  v14(&v9[v10[8]], v12);
  v15 = *&v9[v10[14] + 8];

  v16 = v10[30];
  if (!(*(v13 + 48))(&v9[v16], 1, v12))
  {
    v14(&v9[v16], v12);
  }

  v17 = v3 & 0xFFFFFFFFFFFFFFF8;
  v18 = *&v9[v10[31]];

  v19 = *&v9[v10[33]];

  v20 = &v9[v10[34]];
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_1CEFE4714(*v20, v21);
  }

  v22 = *&v9[v10[38] + 8];

  v23 = (v0 + v17);
  v24 = *(v0 + v17 + 16);
  if (v24 != 1)
  {

    v25 = v23[6];

    v26 = v23[8];

    v27 = v23[11];

    v28 = v23[15];

    v29 = v23[17];

    v30 = v23[19];

    v31 = v23[21];

    v32 = v23[23];

    if (v23[24])
    {

      v33 = v23[25];
    }

    v34 = v23[28];

    v35 = v23[30];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08EE78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF08EEC8()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = v0 + v2;
  v9 = sub_1CF9E6068();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = *(v0 + v3);

  v11 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 16);
  if (v12 != 1)
  {

    v13 = *(v11 + 48);

    v14 = *(v11 + 64);

    v15 = *(v11 + 88);

    v16 = *(v11 + 120);

    v17 = *(v11 + 136);

    v18 = *(v11 + 152);

    v19 = *(v11 + 168);

    v20 = *(v11 + 184);

    if (*(v11 + 192))
    {

      v21 = *(v11 + 200);
    }

    v22 = *(v11 + 224);

    v23 = *(v11 + 240);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F0A0()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v38 = (v39 + 16) & ~v39;
  v2 = v0 + v38;
  v3 = *(v0 + v38 + 40);

  v4 = v0 + v38 + v1[7];
  v5 = type metadata accessor for ItemMetadata();
  v6 = v5[7];
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + v5[8], v7);
  v10 = *(v4 + v5[14] + 8);

  v11 = v5[30];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v9(v4 + v11, v7);
  }

  v12 = *(v4 + v5[31]);

  v13 = *(v4 + v5[33]);

  v14 = (v4 + v5[34]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1CEFE4714(*v14, v15);
  }

  v16 = *(v4 + v5[38] + 8);

  v17 = v2 + v1[8];
  v18 = *(v17 + 16);
  if (v18 != 1)
  {

    v19 = *(v17 + 48);

    v20 = *(v17 + 64);

    v21 = *(v17 + 88);

    v22 = *(v17 + 120);

    v23 = *(v17 + 136);

    v24 = *(v17 + 152);

    v25 = *(v17 + 168);

    v26 = *(v17 + 184);

    if (*(v17 + 192))
    {

      v27 = *(v17 + 200);
    }

    v28 = *(v17 + 224);

    v29 = *(v17 + 240);
  }

  v30 = v1[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v31 - 8) + 48))(v2 + v30, 1, v31))
  {
    v32 = sub_1CF9E5A58();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v2 + v30, 1, v32))
    {
      (*(v33 + 8))(v2 + v30, v32);
    }
  }

  v34 = *(v0 + ((v38 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));

  v35 = *(v0 + ((v38 + v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF08F414()
{
  if (v0[10])
  {
    v1 = v0[6];

    v2 = v0[10];

    v3 = v0[11];

    v4 = v0[13];
  }

  v5 = v0[15];

  v6 = v0[18];

  v7 = v0[23];
  if (v7 >> 60 != 15 && (v7 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(v0[22], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF08F4B0()
{
  v1 = v0[2];

  v2 = v0[9];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[20];

  return swift_deallocObject();
}

uint64_t sub_1CF08F510()
{
  if (v0[10])
  {
    v1 = v0[6];

    v2 = v0[10];

    v3 = v0[11];

    v4 = v0[13];
  }

  v5 = v0[15];

  v6 = v0[18];

  return swift_deallocObject();
}

uint64_t sub_1CF08F578()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 24);

  v38 = (v39 + 41) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF08F8EC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF08F934()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1CF08F97C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF08F9C4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF08F9FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF08FA3C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[14])
  {
    v3 = v0[10];

    v4 = v0[14];

    v5 = v0[15];

    v6 = v0[17];
  }

  v7 = v0[19];

  return swift_deallocObject();
}

uint64_t sub_1CF08FB5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF08FB94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF08FBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FC28()
{

  return swift_deallocObject();
}

uint64_t sub_1CF08FC60()
{
  v1 = type metadata accessor for VFSItem(0);
  v46 = *(*(v1 - 8) + 80);
  v2 = (v46 + 32) & ~v46;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(v43 - 8);
  v5 = *(v4 + 80);
  v45 = *(v4 + 64);
  v6 = *(v0 + 24);

  v47 = v0;
  v7 = v0 + v2;
  v8 = *(v7 + 40);

  v44 = v1;
  v9 = v7 + *(v1 + 28);
  v10 = type metadata accessor for ItemMetadata();
  v11 = v10[7];
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v9 + v11, v12);
  v14(v9 + v10[8], v12);
  v15 = *(v9 + v10[14] + 8);

  v16 = v10[30];
  if (!(*(v13 + 48))(v9 + v16, 1, v12))
  {
    v14(v9 + v16, v12);
  }

  v17 = *(v9 + v10[31]);

  v18 = *(v9 + v10[33]);

  v19 = (v9 + v10[34]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_1CEFE4714(*v19, v20);
  }

  v21 = *(v9 + v10[38] + 8);

  v22 = v7 + *(v44 + 32);
  v23 = *(v22 + 16);
  if (v23 != 1)
  {

    v24 = *(v22 + 48);

    v25 = *(v22 + 64);

    v26 = *(v22 + 88);

    v27 = *(v22 + 120);

    v28 = *(v22 + 136);

    v29 = *(v22 + 152);

    v30 = *(v22 + 168);

    v31 = *(v22 + 184);

    if (*(v22 + 192))
    {

      v32 = *(v22 + 200);
    }

    v33 = *(v22 + 224);

    v34 = *(v22 + 240);
  }

  v35 = (v3 + v5 + 9) & ~v5;
  v36 = *(v44 + 48);
  if (!(*(v4 + 48))(v7 + v36, 1, v43))
  {
    v37 = sub_1CF9E5A58();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v7 + v36, 1, v37))
    {
      (*(v38 + 8))(v7 + v36, v37);
    }
  }

  v39 = *(v47 + v3);

  v40 = sub_1CF9E5A58();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v47 + v35, 1, v40))
  {
    (*(v41 + 8))(v47 + v35, v40);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF090090()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF09015C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1CF090238()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for VFSItem(0);
  v43 = *(*(v5 - 1) + 80);
  v42 = *(*(v5 - 1) + 64);
  v6 = *(v0 + 24);

  v40 = v2;
  v41 = v1;
  v39 = *(v2 + 8);
  v39(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = v0 + ((v4 + v43 + 8) & ~v43);
  v9 = *(v8 + 40);

  v10 = v8 + v5[7];
  v11 = type metadata accessor for ItemMetadata();
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  v16 = *(v10 + v11[14] + 8);

  v17 = v11[30];
  if (!(*(v14 + 48))(v10 + v17, 1, v13))
  {
    v15(v10 + v17, v13);
  }

  v18 = *(v10 + v11[31]);

  v19 = *(v10 + v11[33]);

  v20 = (v10 + v11[34]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_1CEFE4714(*v20, v21);
  }

  v22 = *(v10 + v11[38] + 8);

  v23 = v8 + v5[8];
  v24 = *(v23 + 16);
  if (v24 != 1)
  {

    v25 = *(v23 + 48);

    v26 = *(v23 + 64);

    v27 = *(v23 + 88);

    v28 = *(v23 + 120);

    v29 = *(v23 + 136);

    v30 = *(v23 + 152);

    v31 = *(v23 + 168);

    v32 = *(v23 + 184);

    if (*(v23 + 192))
    {

      v33 = *(v23 + 200);
    }

    v34 = *(v23 + 224);

    v35 = *(v23 + 240);
  }

  v36 = v5[12];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v37 - 8) + 48))(v8 + v36, 1, v37) && !(*(v40 + 48))(v8 + v36, 1, v41))
  {
    v39(v8 + v36, v41);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0905E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF090618()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0906DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF090714()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF09074C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF09078C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0907C4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF090894()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF090C4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF090C84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF090CBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1CF090D38()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF090D70()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090DB8()
{
  v1 = v0[2];

  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_1CEFE4714(v0[5], v2);
  }

  v3 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1CF090E10()
{
  v1 = *(v0 + 16);

  sub_1CEFE4714(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  sub_1CEFE4714(*(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_1CF090E88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090EE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF090F50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;
  v4 = v0[2];

  v5 = v0[4];

  v6 = v0[8];
  if (v6 >> 60 != 15 && (v6 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(v0[7], v6);
  }

  v8 = v3 + 7;
  v9 = v0 + v2;

  v10 = *(v9 + 2);

  v11 = &v9[*(v1 + 40)];
  v12 = type metadata accessor for ItemMetadata();
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v11[v13], v14);
  v16(&v11[v12[8]], v14);
  v17 = *&v11[v12[14] + 8];

  v18 = v12[30];
  if (!(*(v15 + 48))(&v11[v18], 1, v14))
  {
    v16(&v11[v18], v14);
  }

  v19 = v8 & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v11[v12[31]];

  v21 = *&v11[v12[33]];

  v22 = &v11[v12[34]];
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_1CEFE4714(*v22, v23);
  }

  v24 = *&v11[v12[38] + 8];

  v25 = (v0 + v19);
  v26 = *(v0 + v19 + 16);
  if (v26 != 1)
  {

    v27 = v25[6];

    v28 = v25[8];

    v29 = v25[11];

    v30 = v25[15];

    v31 = v25[17];

    v32 = v25[19];

    v33 = v25[21];

    v34 = v25[23];

    if (v25[24])
    {

      v35 = v25[25];
    }

    v36 = v25[28];

    v37 = v25[30];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0911FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF09124C()
{
  v1 = *(v0 + 2);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v36 = v1;
  v3 = (*(*v2 + 80) + 56) & ~*(*v2 + 80);
  v34 = *(*v2 + 64) + v3 + 7;
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v35 = *(v4 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = &v0[v3];

  v9 = *(v8 + 2);

  v10 = &v8[v2[12]];
  v11 = type metadata accessor for ItemMetadata();
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v10[v12], v13);
  v15(&v10[v11[8]], v13);
  v16 = *&v10[v11[14] + 8];

  v17 = v11[30];
  if (!(*(v14 + 48))(&v10[v17], 1, v13))
  {
    v15(&v10[v17], v13);
  }

  v18 = v34 & 0xFFFFFFFFFFFFFFF8;
  v19 = *&v10[v11[31]];

  v20 = *&v10[v11[33]];

  v21 = &v10[v11[34]];
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_1CEFE4714(*v21, v22);
  }

  v23 = *&v10[v11[38] + 8];

  v24 = &v0[v18];
  v25 = *&v0[v18];
  if (v25)
  {

    sub_1CEFE4714(*(v24 + 1), *(v24 + 2));
    v26 = *(v24 + 3);

    sub_1CEFE4714(*(v24 + 4), *(v24 + 5));
    v27 = *(v24 + 6);

    v28 = *(v24 + 8);
  }

  v29 = (v18 + v5 + 72) & ~v5;
  v30 = (v29 + v35) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(&v0[v29], v36);
  v32 = *&v0[v30 + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF091544()
{
  v1 = *(v0 + 16);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v26 = *(*v2 + 64);
  v27 = *(*v2 + 80);
  v29 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v28 = *(v3 + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 48);

  v25 = (v27 + 64) & ~v27;
  v7 = *(v0 + v25 + 16);

  v8 = v0 + v25 + v2[12];
  v9 = type metadata accessor for ItemMetadata();
  v10 = v9[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v8 + v10, v11);
  v13(v8 + v9[8], v11);
  v14 = *(v8 + v9[14] + 8);

  v15 = v9[30];
  if (!(*(v12 + 48))(v8 + v15, 1, v11))
  {
    v13(v8 + v15, v11);
  }

  v16 = *(v8 + v9[31]);

  v17 = *(v8 + v9[33]);

  v18 = (v8 + v9[34]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v8 + v9[38] + 8);

  v23 = *(v0 + v20);

  (*(v3 + 8))(v0 + ((v4 + v21 + 8) & ~v4), v29);

  return swift_deallocObject();
}

uint64_t sub_1CF091828()
{
  v1 = *(v0 + 56);
  if (v1 > 0xC)
  {
    if (*(v0 + 56) > 0xEu)
    {
      if (v1 != 15)
      {
        if (v1 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v1 != 13 && v1 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_17;
  }

  if (*(v0 + 56) <= 2u)
  {
    if (v1 != 1 && v1 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    v2 = *(v0 + 24);

    goto LABEL_17;
  }

  if (v1 == 3 || v1 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0918DC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ItemMetadata();
  v25 = *(*(v6 - 1) + 80);
  v22 = *(*(v6 - 1) + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  v26 = v1;
  v23 = *(v2 + 8);
  v23(v0 + v4, v1);
  v24 = (v4 + v5 + v25) & ~v25;
  v9 = v0 + v24;
  v10 = v6[7];
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v0 + v24 + v10, v11);
  v13(v0 + v24 + v6[8], v11);
  v14 = *(v0 + v24 + v6[14] + 8);

  v15 = v6[30];
  if (!(*(v12 + 48))(v0 + v24 + v15, 1, v11))
  {
    v13(v9 + v15, v11);
  }

  v16 = *(v9 + v6[31]);

  v17 = *(v9 + v6[33]);

  v18 = (v9 + v6[34]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1CEFE4714(*v18, v19);
  }

  v20 = *(v9 + v6[38] + 8);

  v23(v0 + ((v22 + v3 + v24) & ~v3), v26);

  return swift_deallocObject();
}

uint64_t sub_1CF091B70()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v31 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + v31 + 8) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for ItemMetadata();
  v29 = *(*(v9 - 1) + 64);
  v30 = *(*(v9 - 1) + 80);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v27 + 8);

  v32 = v4;
  v26 = *(v5 + 8);
  v26(v0 + v7, v4);
  v12 = *(v0 + v8);

  v28 = (v30 + v8 + 8) & ~v30;
  v13 = v0 + v28;
  v14 = v9[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v0 + v28 + v14, v15);
  v17(v0 + v28 + v9[8], v15);
  v18 = *(v0 + v28 + v9[14] + 8);

  v19 = v9[30];
  if (!(*(v16 + 48))(v0 + v28 + v19, 1, v15))
  {
    v17(v13 + v19, v15);
  }

  v20 = *(v13 + v9[31]);

  v21 = *(v13 + v9[33]);

  v22 = (v13 + v9[34]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_1CEFE4714(*v22, v23);
  }

  v24 = *(v13 + v9[38] + 8);

  v26(v0 + ((v29 + v6 + v28) & ~v6), v32);

  return swift_deallocObject();
}

uint64_t sub_1CF091F0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF091F4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF091FBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;
  v4 = v0[2];

  v5 = v0[4];

  v6 = v0[8];
  if (v6 >> 60 != 15)
  {
    sub_1CEFE4714(v0[7], v6);
  }

  v7 = v3 + 7;
  v8 = v0 + v2;

  v9 = *(v8 + 2);

  v10 = &v8[*(v1 + 40)];
  v11 = type metadata accessor for ItemMetadata();
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v10[v12], v13);
  v15(&v10[v11[8]], v13);
  v16 = *&v10[v11[14] + 8];

  v17 = v11[30];
  if (!(*(v14 + 48))(&v10[v17], 1, v13))
  {
    v15(&v10[v17], v13);
  }

  v18 = v7 & 0xFFFFFFFFFFFFFFF8;
  v19 = *&v10[v11[31]];

  v20 = *&v10[v11[33]];

  v21 = &v10[v11[34]];
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_1CEFE4714(*v21, v22);
  }

  v23 = *&v10[v11[38] + 8];

  v24 = (v0 + v18);
  v25 = *(v0 + v18 + 16);
  if (v25 != 1)
  {

    v26 = v24[6];

    v27 = v24[8];

    v28 = v24[11];

    v29 = v24[15];

    v30 = v24[17];

    v31 = v24[19];

    v32 = v24[21];

    v33 = v24[23];

    if (v24[24])
    {

      v34 = v24[25];
    }

    v35 = v24[28];

    v36 = v24[30];
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0922E4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v30 = *(*v1 + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 32);

  v5 = *(v0 + v2 + 16);

  v6 = v0 + v2 + v1[12];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = (((v30 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v6 + v7[38] + 8);

  v23 = *(v0 + v18);

  v24 = *(v0 + v19);

  sub_1CEFE4714(*(v0 + v21), *(v0 + v21 + 8));
  v25 = *(v0 + v21 + 16);

  sub_1CEFE4714(*(v0 + v21 + 24), *(v0 + v21 + 32));
  v26 = *(v0 + v21 + 40);

  v27 = *(v0 + v21 + 56);

  v28 = *(v0 + ((v21 + 71) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF092584()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v31 = *(*v1 + 64);
  v3 = v0[2];

  v4 = v0[4];

  v5 = v0[5];

  v6 = *(v0 + v2 + 16);

  v7 = v0 + v2 + v1[12];
  v8 = type metadata accessor for ItemMetadata();
  v9 = v8[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v7[v9], v10);
  v12(&v7[v8[8]], v10);
  v13 = *&v7[v8[14] + 8];

  v14 = v8[30];
  if (!(*(v11 + 48))(&v7[v14], 1, v10))
  {
    v12(&v7[v14], v10);
  }

  v15 = *&v7[v8[31]];

  v16 = *&v7[v8[33]];

  v17 = &v7[v8[34]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = (v31 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (((v21 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = *&v7[v8[38] + 8];

  v25 = *(v0 + v20);

  sub_1CEFE4714(*(v0 + v21), *(v0 + v21 + 8));
  v26 = *(v0 + v21 + 16);

  sub_1CEFE4714(*(v0 + v21 + 24), *(v0 + v21 + 32));
  v27 = *(v0 + v21 + 40);

  v28 = *(v0 + v21 + 56);

  v29 = *(v0 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF092828()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0928C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);
  if (v3 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 64), v3);
  }

  sub_1CEFE4714(*(v0 + 112), *(v0 + 120));
  v4 = *(v0 + 128);

  sub_1CEFE4714(*(v0 + 136), *(v0 + 144));
  v5 = *(v0 + 152);

  v6 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1CF092960()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);
  if (v5 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 88), v5);
  }

  sub_1CEFE4714(*(v0 + 136), *(v0 + 144));
  v6 = *(v0 + 152);

  sub_1CEFE4714(*(v0 + 160), *(v0 + 168));
  v7 = *(v0 + 176);

  v8 = *(v0 + 192);

  return swift_deallocObject();
}

uint64_t sub_1CF092A0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);
  swift_unknownObjectRelease();
  v5 = *(v0 + 120);
  if (v5 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 112), v5);
  }

  sub_1CEFE4714(*(v0 + 160), *(v0 + 168));
  v6 = *(v0 + 176);

  sub_1CEFE4714(*(v0 + 184), *(v0 + 192));
  v7 = *(v0 + 200);

  v8 = *(v0 + 216);

  return swift_deallocObject();
}

uint64_t sub_1CF092ACC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF092B68()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 64);
  if (v6 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 56), v6);
  }

  sub_1CEFE4714(*(v0 + 104), *(v0 + 112));
  v7 = *(v0 + 120);

  sub_1CEFE4714(*(v0 + 128), *(v0 + 136));
  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 184);

  (*(v2 + 8))(v0 + ((v3 + 192) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1CF092C7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF092CC4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF092DA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092E14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF092EA4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF092F70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);
  if (v2 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 40), v2);
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  sub_1CEFE4714(*(v0 + 128), *(v0 + 136));
  v5 = *(v0 + 144);

  sub_1CEFE4714(*(v0 + 152), *(v0 + 160));
  v6 = *(v0 + 168);

  v7 = *(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_1CF093000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v2 = (*(*(v1 - 8) + 80) + 88) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2;
  v4 = v0[2];

  v5 = v0[6];
  if (v5 >> 60 != 15 && (v5 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(v0[5], v5);
  }

  v7 = v3 + 7;
  v8 = v0 + v2;

  v9 = *(v8 + 2);

  v10 = &v8[*(v1 + 40)];
  v11 = type metadata accessor for ItemMetadata();
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v10[v12], v13);
  v15(&v10[v11[8]], v13);
  v16 = *&v10[v11[14] + 8];

  v17 = v11[30];
  if (!(*(v14 + 48))(&v10[v17], 1, v13))
  {
    v15(&v10[v17], v13);
  }

  v18 = v7 & 0xFFFFFFFFFFFFFFF8;
  v19 = *&v10[v11[31]];

  v20 = *&v10[v11[33]];

  v21 = &v10[v11[34]];
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_1CEFE4714(*v21, v22);
  }

  v23 = *&v10[v11[38] + 8];

  v24 = (v0 + v18);
  v25 = *(v0 + v18 + 16);
  if (v25 != 1)
  {

    v26 = v24[6];

    v27 = v24[8];

    v28 = v24[11];

    v29 = v24[15];

    v30 = v24[17];

    v31 = v24[19];

    v32 = v24[21];

    v33 = v24[23];

    if (v24[24])
    {

      v34 = v24[25];
    }

    v35 = v24[28];

    v36 = v24[30];
  }

  v37 = *(v0 + ((v18 + 255) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF0932B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1CF093338()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 72);

  return swift_deallocObject();
}